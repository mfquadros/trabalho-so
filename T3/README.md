# Trabalho 3 (T3) — Paginação e Processos de Usuário Isolados

Extensão do SO Mancha do T2 com **memória virtual paginada**, **proteção por hardware**, **carregamento de código por demanda** e **substituição de páginas** (FIFO / LRU por envelhecimento), cobrindo os requisitos das **Partes I, II e III** do enunciado.

---

## 📋 Sumário
1. [Visão Geral e Arquitetura](#-visão-geral-e-arquitetura)
2. [Mecanismo de Paginação do Mancha](#-mecanismo-de-paginação-do-mancha)
3. [Parte I — Carga Completa com Isolamento por Páginas](#-parte-i--carga-completa-com-isolamento-por-páginas)
4. [Parte II — Carregamento de Código por Demanda](#-parte-ii--carregamento-de-código-por-demanda)
5. [Parte III — Substituição de Páginas e Métricas](#-parte-iii--substituição-de-páginas-e-métricas)
6. [Estrutura de Processos e Tabela de Páginas](#-estrutura-de-processos-e-tabela-de-páginas)
7. [Programas de Usuário e Disco Simulado](#-programas-de-usuário-e-disco-simulado)
8. [Chamadas de Sistema (Syscalls)](#-chamadas-de-sistema-syscalls)
9. [Como Compilar e Executar](#-como-compilar-e-executar)
10. [Estrutura de Arquivos](#-estrutura-de-arquivos)

---

## 🏛️ Visão Geral e Arquitetura

O T3 elimina duas limitações fundamentais do T2:
- **Endereço de carga fixo**: no T2, cada programa precisava ser montado para um endereço físico diferente. Agora, todos os programas são compilados a partir do **endereço virtual 0** e podem ser executados em múltiplas instâncias simultâneas.
- **Ausência de proteção de memória**: no T2, um processo podia acessar qualquer região da memória (incluindo o SO). Agora, a **MMU do Mancha** garante que cada processo só acesse as páginas mapeadas em sua tabela de páginas.

```
+-------------------------------------------------------------------+
|          Programas de Usuário (.c → .bin, endereço virtual 0)      |
|   Init, Comp_A×2, Comp_B, IO, Multipage, Proteção                 |
|         [Modo Usuário: SR.S=0, SR.P=1, SR.I=0]                    |
+-------------------------------------------------------------------+
                         |
                         | trap 7 (Syscalls)   /   Int 5 (Page Fault)
                         |                     /   Int 1 (Proteção)
                         v
+-------------------------------------------------------------------+
|             Camada de Ponte Assembly (ponte.asm)                   |
|   syscall_trampolim, escalonador_trampolim,                        |
|   meu_handler_pagina_ausente, meu_handler_violacao_protecao        |
|         [Modo Supervisor: SR.S=1, SR.P=0, SR.I=1]                 |
+-------------------------------------------------------------------+
                         |
                         v
+-------------------------------------------------------------------+
|                   Núcleo do SO em C (so.c)                        |
|  Tabela de processos, tabela de páginas por processo,              |
|  gerenciador de quadros, substituição (FIFO/LRU), escalonador,     |
|  tratamento de faltas de página, métricas                          |
+-------------------------------------------------------------------+
                         |
                         v
+-------------------------------------------------------------------+
|     BIOS e Hardware do Mancha (bios.asm + simulador_completo)      |
|   Vetor de interrupções, MMU (cpu.c → traduz), disco simulado      |
+-------------------------------------------------------------------+
```

---

## 🔧 Mecanismo de Paginação do Mancha

A MMU está implementada diretamente na CPU (`simulador_completo/src/cpu.c`, função `traduz`) e é ativada quando o bit **P** do Status Register está ligado (`SR.P = 1`).

### Endereçamento Virtual
O endereço virtual de 16 bits é dividido em:
- **Página** (7 bits superiores): identifica a página virtual (0–127)
- **Deslocamento** (9 bits inferiores): posição dentro da página

Cada página tem **512 bytes** (fixo em hardware).

### Tabela de Páginas
Cada processo possui uma tabela de **256 entradas de 2 bytes** (512 bytes no total):
- Entradas **0–127**: espaço de **código** (buscas de instrução)
- Entradas **128–255**: espaço de **dados** (operandos de load/store)

Cada entrada tem o seguinte formato de 16 bits:

```
Bits  15:14   13        12:0
      tipo    acesso    quadro_fisico
```

| Tipo | Significado | Comportamento |
|------|------------|---------------|
| `0` | Ausente | Gera Interrupção 5 (page fault) |
| `1` | Somente leitura | Escrita em modo usuário gera Interrupção 1 |
| `2` | Leitura/escrita limpa | Página acessível para leitura e escrita |
| `3` | Leitura/escrita modificada (dirty) | Página escrita — requer write-back antes da substituição |

O **bit de acesso** (bit 13) é automaticamente ligado pela CPU a cada acesso e deve ser zerado periodicamente pelo SO para implementar o algoritmo LRU.

### Registrador `s4` (pt)
O registrador de supervisor `s4` aponta para a tabela de páginas ativa. Como ele faz parte do quadro de 16 palavras, a troca de tabela de páginas ocorre **automaticamente** nas trocas de contexto — sem alteração no escalonador.

---

## 📦 Parte I — Carga Completa com Isolamento por Páginas

**Objetivo**: Substituir o mecanismo de isolamento do T2 (limites de segmento) por **paginação**, carregando o programa inteiro na criação do processo.

### O que foi implementado

1. **Programas isolados**: Cada programa é compilado separadamente pelo `mcc`, sem `.org`, assumindo endereço virtual 0. O `mob2bin` converte o `.mob` em binário achatado, e os binários são concatenados na imagem de disco (`disco.img`).

2. **`SO_CRIA_PROC` com tabela de páginas** (`so_cria_proc_interno` em `so.c`):
   - Cria uma tabela de páginas zerada (256 entradas) usando um array pré-alocado por slot
   - Aloca quadros físicos para **código** (tipo 1, somente leitura) e **dados/pilha** (tipo 3, leitura/escrita)
   - Carrega os setores do programa do disco diretamente para os quadros via `bios_disco_le_setor`
   - Inicializa o contexto: `ip=0`, `sp=512` (topo da página de dados), `sr` com `S=0, P=1` e `s4 = &tabela_paginas`

3. **Gerenciador de quadros físicos** (`quadros_pool` em `so.c`):
   - Pool de quadros indexados a partir de `PRIMEIRO_QUADRO_USUARIO` (quadro 160)
   - Bitmap/lista controlada por `struct QuadroInfo` com metadados de proprietário, página virtual e flags
   - `quadro_aloca()`: procura slot livre ou aciona substituição
   - `quadro_libera_todos()`: libera todos os quadros de um processo morto

4. **`SO_MATA_PROC`**: Libera todos os quadros e zera a tabela de páginas do processo.

5. **Handler de Interrupção 5 (falta de página)**: Em modo carga completa, toda falta de página é tratada como **erro** e o processo é terminado.

6. **Handler de Interrupção 1 (violação de proteção)**: Escrita em página de código (tipo 1) termina o processo com diagnóstico.

7. **Verificação do mesmo binário em múltiplos processos**: O `prog_init.c` cria duas instâncias de `PROG_COMP_A` (A1 e A2) a partir do mesmo binário, cada uma com sua tabela de páginas e quadros independentes.

> Para ativar o modo Carga Completa, defina em `so.h`:
> ```c
> #define CONFIG_DEMAND_PAGING  MODO_CARGA_COMPLETA
> ```

---

## 📄 Parte II — Carregamento de Código por Demanda

**Objetivo**: O código do programa não é carregado na criação; as páginas de código são trazidas do disco apenas quando acessadas pela primeira vez (lazy loading).

### O que foi implementado

1. **Criação sem carga de código**: Na criação do processo, apenas a página de **dados/pilha** é alocada. As entradas de código na tabela de páginas permanecem com tipo 0 (ausente). A primeira instrução (`ip=0`) já provoca a primeira falta.

2. **Handler inteligente de Interrupção 5** (`so_trata_pagina_ausente`):
   - Extrai a página virtual do `ip_falta`: `pag_virtual = (ip_falta >> 9) & 0x7F`
   - **Distingue falta legítima de ilegítima**: se `pag_virtual >= n_paginas_codigo`, é acesso fora dos limites do programa → processo terminado
   - **Falta legítima de código**: aloca um quadro, lê o setor correspondente do disco, preenche a entrada com tipo 1 (somente leitura) e retorna para que `rete` repita a instrução

3. **Limitação do Mancha**: Em faltas de **dados**, o `ip` salvo aponta para a instrução seguinte (não para o operando que causou a falta), impossibilitando o carregamento por demanda de dados. Portanto, **apenas código é carregado sob demanda**; dados são sempre pré-alocados.

> Modo ativo por padrão: `CONFIG_DEMAND_PAGING = MODO_POR_DEMANDA`

---

## 🔄 Parte III — Substituição de Páginas e Métricas

**Objetivo**: Quando os quadros livres se esgotam, liberar um quadro em uso via algoritmo de substituição (FIFO ou LRU) e coletar métricas comparativas.

### Algoritmos Implementados

#### FIFO (First-In, First-Out)
- Cada quadro registra um `ordem_insercao` crescente no momento da alocação
- A vítima é o quadro com **menor** `ordem_insercao` (mais antigo)

#### LRU por Envelhecimento (Aging)
- Cada quadro mantém um contador `idade` (unsigned 16 bits)
- A cada interrupção de relógio (`so_tique_relogio`):
  1. Desloca `idade` um bit à direita
  2. Se o bit de acesso (bit 13) da entrada da tabela de páginas estiver ligado, soma `0x8000` (bit mais significativo) à idade
  3. Zera o bit de acesso na entrada
- A vítima é o quadro com **menor** `idade` (menos recentemente usado)

### Substituição de Página (`quadro_aloca`)
Quando não há quadro livre:
1. `escolhe_quadro_vitima()` seleciona o quadro a substituir
2. Se a entrada da vítima for **tipo 3 (modificada)**: escreve o quadro de volta no disco (swap out) via `bios_disco_escreve_setor`
3. Se for tipo 1 ou 2: descarte direto (conteúdo íntegro no disco original)
4. Invalida a entrada na tabela de páginas do processo antigo
5. Atualiza contadores de métricas

### Métricas Coletadas

**Globais** (`struct Metricas`):
- Tempo total de execução e tempo ocioso
- Total de processos criados e preempções
- Total de faltas de página atendidas
- Total de substituições de quadros
- Total de escritas de volta ao disco (dirty pages)
- Contagem de interrupções por tipo

**Por processo** (`struct Processo`):
- Faltas de página individuais
- Tempo de retorno, preempções, tempo em cada estado (pronto, executando, bloqueado)

> Para alternar entre algoritmos:
> ```c
> #define CONFIG_SUBST_ALGO   SUBST_FIFO   // ou SUBST_LRU
> ```
> Para variar o limite de quadros disponíveis:
> ```c
> #define CONFIG_MAX_QUADROS_USUARIO  8     // Reduzir para forçar substituições
> ```

---

## 🧵 Estrutura de Processos e Tabela de Páginas

```c
struct Processo {
    int pid;
    int estado;                    // LIVRE, PRONTO, EXECUTANDO, BLOQUEADO, MORTO
    int bloqueado_por;             // BLOQ_CONSOLE_LE, BLOQ_ESPERA_PROC
    int esperando_pid;             // PID do processo aguardado
    int prioridade;                // Prioridade dinâmica (Round-Robin)
    int quadro[16];                // Contexto de 16 registradores

    int prog_id;                   // ID do programa no disco
    int n_paginas_codigo;          // Total de páginas de código
    int n_paginas_dados;           // Total de páginas de dados (padrão: 1)
    int *tabela_paginas;           // 256 entradas: 0..127 código, 128..255 dados
    int quadro_dados;              // Quadro físico fixo de dados/pilha

    int faltas_pagina;             // Faltas de página atendidas
    // ... demais métricas de tempo e contadores
};
```

### O Quadro de 16 Palavras
Mesma convenção do T2, com a adição crucial:
- `quadro[8]` (sr): agora inclui **P=1** (paginação ativa) com `S=0` (modo usuário)
- `quadro[12]` (s4/pt): aponta para a **tabela de páginas** do processo

A troca de contexto restaura `s4` automaticamente via `rete`, ativando a tabela de páginas do novo processo.

---

## 💾 Programas de Usuário e Disco Simulado

### Fluxo de Compilação
```
  prog_X.c  →  mcc  →  prog_X.asm  →  montador  →  prog_X.mob  →  mob2bin  →  prog_X.bin
```
Cada programa é compilado **sem `.org`**, assumindo endereço virtual 0. O `mob2bin` gera um binário achatado de tamanho fixo (múltiplo de 512 bytes = 1 página).

### Layout do Disco Simulado (`disco.img`)

| Setor | Programa | Páginas | Descrição |
|-------|----------|---------|-----------|
| 0 | `prog_init` | 3 (1536 B) | Orquestrador: cria e aguarda todos os filhos |
| 3 | `prog_comp_a` | 1 (512 B) | Loop computacional com atraso (instanciado 2×) |
| 4 | `prog_comp_b` | 1 (512 B) | Loop computacional menor |
| 5 | `prog_io` | 1 (512 B) | Leitura de console e escrita |
| 6–7 | `prog_multipage` | 2 (1024 B) | Teste com múltiplas páginas de código |
| 8 | `prog_protecao` | 1 (512 B) | Teste de violação: escrita em página de código |
| 9–24 | swap | 16 setores | Área de swap para write-back de páginas sujas |

> **Nota**: Os setores iniciais de cada programa são registrados em `tabela_programas[]` dentro de `disco_inicializa_programas()`.

### Cenários de Teste Cobertos

| Programa | Testa |
|----------|-------|
| `prog_comp_a` (×2) | Mesmo binário em dois processos simultâneos, isolamento de dados |
| `prog_comp_b` | Execução concorrente com quantum diferente |
| `prog_io` | Bloqueio por I/O de console, desbloqueio por pendência |
| `prog_multipage` | Código em 2 páginas, falta de página na fronteira de página |
| `prog_protecao` | Escrita em endereço virtual 0 (código) → Interrupção 1, processo terminado |

---

## 📞 Chamadas de Sistema (Syscalls)

Mesma interface do T2, agora com `SO_CRIA_PROC` recebendo um **ID de programa no disco** em vez de endereço de função:

| Nº | Chamada | Argumentos | Retorno | Descrição |
|---|---|---|---|---|
| 1 | `SO_LE` | nenhum | caractere lido | Lê do console; bloqueia se vazio |
| 2 | `SO_ESCREVE` | `r1 = caractere` | `0` | Escreve no console |
| 3 | `SO_CRIA_PROC` | `r1 = prog_id` | `pid` ou `-1` | Cria processo a partir do disco simulado |
| 4 | `SO_MATA_PROC` | `r1 = pid` | `0` ou `-1` | Termina processo, libera quadros |
| 5 | `SO_ESPERA_PROC` | `r1 = pid` | `0` ou `-1` | Bloqueia até término do PID |

---

## 🚀 Como Compilar e Executar

### Pré-requisitos

As ferramentas Mancha devem estar compiladas em `mancha-master/`:
```bash
# Se necessário, na raiz do repositório:
cd mancha-master/compilador_c && make
cd ../simulador_completo && make
cd ../../T3
```

### Comandos Rápidos (via Makefile)

```bash
# 1. Compilar tudo: programas de usuário, disco simulado, kernel e runner batch
make

# 2. Executar no simulador visual (interface ncurses)
make run

# 3. Executar em modo headless automatizado
make batch

# 4. Gerar relatório comparativo (requer gera_relatorio.py)
make report

# 5. Limpar binários e intermediários
make clean
```

### Configurações Ajustáveis (`so.h`)

```c
// Modo de carregamento de código
#define CONFIG_DEMAND_PAGING    MODO_POR_DEMANDA     // ou MODO_CARGA_COMPLETA

// Algoritmo de substituição de páginas
#define CONFIG_SUBST_ALGO       SUBST_LRU            // ou SUBST_FIFO

// Limite de quadros para processos de usuário (reduzir para forçar substituição)
#define CONFIG_MAX_QUADROS_USUARIO  8

// Escalonador e quantum (herdados do T2)
#define CONFIG_ESCALONADOR      ESC_CIRCULAR
#define CONFIG_QUANTUM          4
```

Após alterações, recompile com `make clean && make`.

---

## 📁 Estrutura de Arquivos

```
T3/
├── Makefile              # Build system: programas, disco, kernel, sim_batch
├── README.md             # Esta documentação completa
├── Instructions.md       # Especificação oficial do trabalho
│
├── so.c                  # Núcleo do SO: paginação, gerenciamento de quadros,
│                         #   substituição FIFO/LRU, escalonamento, métricas
├── so.h                  # Constantes, macros, estruturas PCB e QuadroInfo
├── ponte.asm             # Trampolins assembly: syscalls, page fault handler,
│                         #   violação de proteção, escalonador, I/O de disco
├── bios.asm              # BIOS/firmware do Mancha (fornecido)
│
├── prog_init.c           # Init (PID 1): cria A1, A2, B, IO, Multi, Prot e espera
├── prog_comp_a.c         # Computacional A: loop com atraso (duplicável)
├── prog_comp_b.c         # Computacional B: loop menor
├── prog_io.c             # Teste de I/O: leitura de console
├── prog_multipage.c      # Teste multipágina: 4 fases em 2 páginas de código
├── prog_protecao.c       # Teste de proteção: escrita em código (provoca Int 1)
│
├── u_lib.h               # Header da biblioteca de syscalls (modo usuário)
├── u_lib.asm             # Implementação assembly das syscalls (trap 7)
├── u_print.c             # Funções de impressão auxiliares (modo usuário)
│
├── sim_batch_main.c      # Runner headless nativo com suporte a disco
├── disco.img             # Imagem de disco concatenada (programas + swap)
├── swap.bin              # Área de swap (16 setores zerados)
│
├── *.asm                 # Arquivos .asm gerados pelo mcc (intermediários)
├── *.mob                 # Módulos objeto Mancha (intermediários)
└── *.bin                 # Binários achatados dos programas (intermediários)
```

---

## ⚠️ O que falta / Pontos de atenção

1. **Script `gera_relatorio.py`**: O `Makefile` referencia `make report` que invoca `python3 gera_relatorio.py`, mas o script **ainda não existe** no diretório T3. É necessário criar um script que execute múltiplas configurações (FIFO × LRU, vários limites de quadros) e compare as métricas.

2. **Relatório `RELATORIO.md`**: Não foi gerado ainda. As instruções (Parte III) exigem um relatório comparando:
   - FIFO vs LRU sob diferentes limites de quadros
   - Número de faltas de página vs tempo de execução
   - Determinação do limite mínimo de quadros que permite conclusão

3. **Depuração do batch**: A execução com `make batch` (modo demanda, 8 quadros, LRU) não completa dentro do limite de 15M instruções. Possíveis causas:
   - O limite de 8 quadros pode ser insuficiente para 7 processos simultâneos (init + 6 filhos, cada um com pelo menos 1 quadro de dados + 1 de código)
   - Pode haver thrashing severo — aumentar `CONFIG_MAX_QUADROS_USUARIO` ou testar em modo carga completa primeiro
   - Verificar se os setores iniciais em `disco_inicializa_programas()` estão corretos em relação ao layout real de `disco.img`

4. **Validação de setores do disco**: O `prog_init` tem 3 páginas de código (1536 B) ocupando setores 0–2. Verificar se os setores de `prog_comp_a` (setor 1 no código) não colidem — a tabela `tabela_programas[]` deve ser validada contra o layout real do `disco.img`.

5. **Remoção de debug**: O `so_trata_pagina_ausente` e o `sim_batch_main.c` contêm prints de debug (`[DEBUG]`) que devem ser removidos na versão final.
