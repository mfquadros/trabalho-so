# Trabalho 2 (T2) — Mini Sistema Operacional Mancha

Implementação de um sistema operacional multiprogramado preemptivo sobre o simulador da arquitetura **Mancha**, cobrindo os requisitos das **Partes I, II e III** da disciplina de Sistemas Operacionais.

---

## 📋 Sumário
1. [Visão Geral e Arquitetura](#-visão-geral-e-arquitetura)
2. [Estrutura de Processos e Contexto](#-estrutura-de-processos-e-contexto)
3. [Chamadas de Sistema (Syscalls)](#-chamadas-de-sistema-syscalls)
4. [Escalonadores de Processos](#-escalonadores-de-processos)
5. [Bloqueio e Tratamento de Pendências](#-bloqueio-e-tratamento-de-pendências)
6. [Métricas do Sistema](#-métricas-do-sistema)
7. [Como Compilar e Executar](#-como-compilar-e-executar)
8. [Estrutura de Arquivos](#-estrutura-de-arquivos)

---

## 🏛️ Visão Geral e Arquitetura

O sistema operacional é dividido em camadas que cooperam para fornecer multiprogramação segura com separação estrita de privilégios:

```
+-------------------------------------------------------------------+
|               Programas de Usuário (programas.c)                  |
|          Init (PID 1), Tarefa A, Tarefa B, Processo de E/S        |
|               [Modo Usuário: SR.S = 0, SR.I = 0, SR.D = 0]        |
+-------------------------------------------------------------------+
                                  |
                                  | trap 7 (Syscalls via so_*.c)
                                  v
+-------------------------------------------------------------------+
|                Camada de Ponte Assembly (ponte.asm)               |
|   syscall_trampolim, escalonador_trampolim, rotina de laço ocioso |
|              [Modo Supervisor: SR.S = 1, SR.I = 1]                |
+-------------------------------------------------------------------+
                                  |
                                  v
+-------------------------------------------------------------------+
|                     Núcleo do SO em C (so.c)                      |
|       Tabela de processos, escalonadores, filas, métricas         |
+-------------------------------------------------------------------+
                                  |
                                  v
+-------------------------------------------------------------------+
|               BIOS e Hardware do Mancha (bios.asm)                |
|       Vetor de interrupções, driver de console, relógio           |
+-------------------------------------------------------------------+
```

### Isolamento de Privilégio
- **Modo Usuário (`SR.S=0, SR.I=0`)**: Processos não podem executar instruções privilegiadas (`halt`, `ei`, `di`, `rete`) nem instruções de entrada/saída direta (`in`, `out`, `inb`, `outb`).
- Toda interação com console e criação/sincronização de tarefas é obrigatoriamente intermediada pelas **chamadas de sistema**.

---

## 🧵 Estrutura de Processos e Contexto

Cada processo é representado por um Bloco de Controle de Processo (`struct Processo` em `so.h`):

```c
struct Processo {
    int pid;                      // Identificador único (1, 2, 3...)
    int estado;                   // LIVRE, PRONTO, EXECUTANDO, BLOQUEADO, MORTO
    int bloqueado_por;            // BLOQ_CONSOLE_LE, BLOQ_ESPERA_PROC
    int esperando_pid;            // PID do processo aguardado (SO_ESPERA_PROC)
    int prioridade;               // Valor dinâmico em ponto fixo (0 a 1000)
    int quadro[16];               // Cópia dos 16 registradores da CPU
    ...                           // Contadores e métricas de desempenho
};
```

### O Quadro de 16 Palavras
Quando a CPU Mancha atende a uma interrupção ou `trap`, os 16 registradores são empilhados na ordem de hardware:
- `quadro[0..4]`: `r0` a `r4` (registradores de uso geral)
- `quadro[5]`: `bp` (base pointer)
- `quadro[6]`: `sp` (stack pointer da pilha do processo)
- `quadro[7]`: `ip` (instruction pointer / ponto de retomada)
- `quadro[8]`: `s0 (sr)` (status register: flags e modo S/I/D)
- `quadro[9..15]`: registradores de supervisor (`s1..s7`, `cs`, `ds`, etc.)

Cada processo possui uma pilha de execução dedicada de 128 palavras (`pilhas_processos[slot]`), garantindo que o espaço de variáveis locais e chamadas de funções dos processos não colidam entre si nem com a pilha do núcleo (`pilha_nucleo`) e do sistema (`pilha_sistema`).

---

## 📞 Chamadas de Sistema (Syscalls)

O sistema implementa as 5 chamadas padronizadas via `trap 7` com número em `r0` e argumentos em `r1..r2`:

| Nº | Chamada | Argumentos | Retorno | Descrição |
|---|---|---|---|---|
| 1 | `SO_LE` | nenhum | caractere lido (`r0`) | Lê um caractere do console. Se não houver caractere no buffer, bloqueia o processo até que a entrada esteja disponível. |
| 2 | `SO_ESCREVE` | `r1 = caractere` | `0` | Escreve um caractere na console do sistema em modo supervisor. |
| 3 | `SO_CRIA_PROC` | `r1 = func` | `pid` ou `-1` | Cria um novo processo com ponto de entrada em `func` e aloca uma nova entrada na tabela. |
| 4 | `SO_MATA_PROC` | `r1 = pid` | `0` ou `-1` | Encerra o processo especificado (`0` = o próprio). Desbloqueia processos que estavam aguardando o seu término. Se o processo encerrado for o `init` (PID 1), emite o relatório de métricas e encerra a máquina (`halt`). |
| 5 | `SO_ESPERA_PROC` | `r1 = pid` | `0` ou `-1` | Bloqueia o processo chamador até o término do PID indicado. Retorna erro (`-1`) caso tente esperar a si mesmo ou a um processo inexistente. |

---

## ⏱️ Escalonadores de Processos

O SO suporta 3 políticas de escalonamento selecionáveis via macro de compilação em `so.h`:

### 1. `ESC_SIMPLES` (Cooperativo — Parte I)
- O processo atual executa até terminar voluntariamente (`so_mata_proc`) ou bloquear (`so_le`, `so_espera_proc`).
- O relógio conta tiques, mas **não causa preempção**.

### 2. `ESC_CIRCULAR` (Round-Robin Preemptivo — Parte III)
- Processos prontos são enfileirados em uma fila circular FIFO (`fila_prontos`).
- O relógio dispara a cada `TICKS_POR_CLOCK` (1.000 instruções).
- A cada tique do relógio, o `quantum_restante` é decrementado.
- Quando o quantum zera, ocorre a **preempção**: o contexto é salvo, o processo volta para o fim da fila de prontos e o próximo é despachado.

### 3. `ESC_PRIORIDADE` (Prioridade Dinâmica Preemptiva — Parte III)
- Prioridade inicial de cada processo recém-criado: `0.5` (500 em ponto fixo).
- Sempre que o processo perde a CPU (por estouro de quantum ou por bloqueio), sua prioridade é recalculada:
  $$\text{prio} = \frac{\text{prio} + \frac{t_{\text{exec}}}{t_{\text{quantum}}}}{2}$$
- **Critério**: quanto **menor** o valor numérico, **maior** a prioridade. Processos I/O-bound (que bloqueiam rápido gastando pouco quantum) ganham prioridade máxima.
- **Desempate Circular**: quando dois ou mais processos têm prioridades idênticas, a busca inicia no próximo slot após o processo corrente, garantindo Round-Robin entre iguais e prevenindo inanição (*starvation*).

---

## 🛑 Bloqueio e Tratamento de Pendências

Quando um processo não pode continuar:
1. **Console Vazio em `SO_LE`**: O processo é marcado como `PROC_BLOQUEADO` com motivo `BLOQ_CONSOLE_LE`.
2. **Espera em `SO_ESPERA_PROC`**: O processo é marcado como `PROC_BLOQUEADO` com motivo `BLOQ_ESPERA_PROC` e armazena o PID aguardado.
3. **Tratamento de Pendências (`so_trata_pendencias`)**: A cada tique do relógio ou no laço ocioso, o SO verifica se chegaram caracteres na porta do console. Caso haja entrada, o caractere é gravado em `quadro[0]` do processo aguardando e ele é promovido a `PROC_PRONTO`.
4. **Laço Ocioso (`_so_idle_loop`)**: Quando todos os processos estão bloqueados, o SO chaveia para a pilha do núcleo (`pilha_nucleo`), liga interrupções externas (`ei`) e incrementa o contador `tempo_ocioso` até que um evento acorde algum processo.

---

## 📊 Métricas do Sistema

Ao término do processo `init`, o SO exibe um relatório consolidado com:
- **Tempo total de execução** e **tempo ocioso** medidos em tiques de relógio.
- **Total de processos criados** e **total de preempções globais**.
- **Contagem de interrupções por tipo**: Boot (0), Chamadas de sistema (7), Console (8), Relógio (10).
- **Tabela detalhada por processo**:
  - PID
  - Tempo de retorno (data de término - data de criação)
  - Número de preempções sofridas
  - Vezes e tempo total em cada estado: Pronto, Bloqueado e Executando
  - Tempo médio de resposta (intervalo entre desbloqueio e próximo escalonamento)

---

## 🚀 Como Compilar e Executar

### Pré-requisitos e Dependências Externas

O projeto depende das ferramentas da plataforma Mancha fornecidas pelo professor no pacote **`mancha-master/`**:
- **Compilador C (`mcc`)**: `mancha-master/compilador_c/bin/mcc`
- **Montador (`montador`)**: `mancha-master/simulador_completo/bin/montador`
- **Simulador Interativo (`simulador`)**: `mancha-master/simulador_completo/bin/simulador`

> [!NOTE]
> A pasta `mancha-master/` deve estar localizada na **raiz do repositório** (`trabalho-so/mancha-master/`).

Caso as ferramentas ainda não estejam compiladas no seu ambiente, basta executar:
```bash
# Na raiz do repositório:
cd mancha-master/compilador_c && make
cd ../simulador_completo && make
cd ../../T2
```

### Comandos Rápidos (via Makefile)

```bash
# 1. Compilar o sistema operacional e o executor batch
make

# 2. Executar no simulador visual (interface ncurses interativa)
make run

# 3. Executar em modo headless automatizado (saída direta no terminal)
make batch

# 4. Executar bateria de testes comparativa de todos os escalonadores
make report

# 5. Limpar binários e arquivos intermediários
make clean
```

### Configurando o Escalonador Manualmente
Para testar configurações específicas, basta ajustar as macros no arquivo `so.h`:

```c
#define CONFIG_ESCALONADOR  ESC_CIRCULAR   // Opções: ESC_SIMPLES, ESC_CIRCULAR, ESC_PRIORIDADE
#define CONFIG_QUANTUM      4              // Quantum em tiques de relógio (ex: 2, 4, 8)
```
Em seguida, recompile com `make clean && make`.

---

## 📁 Estrutura de Arquivos

```
T2/
├── Makefile            # Build system automatizado (so.mob, sim_batch, report)
├── README.md           # Esta documentação completa do projeto
├── RELATORIO.md        # Relatório comparativo gerado com todas as 7 configurações
├── bios.asm            # Firmware/BIOS fornecido do Mancha
├── gera_relatorio.py   # Script de automação e benchmark das configurações
├── instructions.md     # Especificação oficial do trabalho
├── ponte.asm           # Trampolins assembly (hardware <-> kernel C)
├── programas.c         # Processos de teste de usuário (Init, Computacional A/B, I/O)
├── sim_batch_main.c    # Runner nativo em C para testes headless sem ncurses
├── so.c                # Núcleo do sistema operacional em C
└── so.h                # Cabeçalhos, constantes, estruturas PCB e métricas
```
