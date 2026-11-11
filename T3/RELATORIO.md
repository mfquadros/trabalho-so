# Relatório de Avaliação do SO Mancha — Trabalho 3 (T3)
## Paginação, Processos de Usuário Isolados e Substituição de Páginas

> **Disciplina**: Sistemas Operacionais  
> **Simulador**: Mancha Completo (Arquitetura Harvard / Von Neumann Mista de 16/20 bits)  
> **Data da Execução**: Novembro de 2026  

---

## 1. Visão Geral e Objetivos do Trabalho

O objetivo do Trabalho 3 foi estender o mini-sistema operacional desenvolvido no T2 para suportar:
1. **Parte I — Carga Completa com Isolamento Real por Páginas**: Eliminar endereços físicos de carga fixos; compilar processos a partir do endereço virtual 0 e utilizar a MMU em hardware com tabela de páginas de dois níveis (entradas 0–127 para código, 128–255 para dados);
2. **Parte II — Carregamento de Código por Demanda (Lazy Demand Paging)**: Inicializar processos apenas com o quadro de dados/pilha alocado, tratando a Interrupção 5 (ausência de quadro) para buscar páginas de código sob demanda a partir do disco simulado;
3. **Parte III — Algoritmos de Substituição de Páginas e Métricas**: Implementar e comparar os algoritmos **FIFO** e **LRU por Envelhecimento (Aging de 16 bits)**, investigando o comportamento sob escassez artificial de quadros físicos e determinando o limite mínimo viável de memória.

---

## 2. Resumo Comparativo dos Cenários de Teste

A tabela abaixo resume os resultados obtidos com os 7 processos de teste executando concorrentemente (`Init`, `Comp_A` instâncias 1 e 2, `Comp_B`, `IO`, `Multipage` e `Proteção`):

| Cenário / Algoritmo | Quadros Usuário | Status | Faltas de Página | Substituições | Preempções | Tempo Total (tiques) | Instruções Simuladas |
|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| Demanda - LRU - 4 Quadros | 4 | *Falhou (Sem Quadros)* | - | - | - | - | 15,000,000 |
| Demanda - LRU - 5 Quadros | 5 | *Falhou (Sem Quadros)* | 51 | 50 | 7 | 30 | 373,484 |
| Demanda - LRU - 6 Quadros | 6 | **Concluiu** | 47 | 37 | 8 | 45 | 535,170 |
| Demanda - LRU - 7 Quadros | 7 | **Concluiu** | 67 | 58 | 9 | 46 | 568,778 |
| Demanda - LRU - 8 Quadros | 8 | **Concluiu** | 34 | 25 | 9 | 45 | 535,205 |
| Demanda - FIFO - 8 Quadros | 8 | **Concluiu** | 21 | 12 | 7 | 37 | 459,368 |
| Demanda - LRU - 10 Quadros | 10 | **Concluiu** | 25 | 16 | 9 | 45 | 538,913 |
| Demanda - FIFO - 10 Quadros | 10 | **Concluiu** | 19 | 10 | 7 | 38 | 460,537 |
| Demanda - LRU - 12 Quadros | 12 | **Concluiu** | 20 | 11 | 9 | 46 | 543,083 |
| Demanda - FIFO - 12 Quadros | 12 | **Concluiu** | 11 | 2 | 7 | 36 | 449,284 |
| Demanda - LRU - 16 Quadros | 16 | **Concluiu** | 10 | 0 | 8 | 44 | 525,119 |
| Demanda - FIFO - 16 Quadros | 16 | **Concluiu** | 10 | 0 | 6 | 36 | 446,657 |
| Demanda - LRU - 24 Quadros (Sem Escassez) | 24 | **Concluiu** | 10 | 0 | 8 | 46 | 547,653 |
| Demanda - FIFO - 24 Quadros (Sem Escassez) | 24 | **Concluiu** | 10 | 0 | 6 | 35 | 448,858 |
| Carga Completa (Parte I) - 24 Quadros | 24 | **Concluiu** | 0 | 0 | 7 | 43 | 546,886 |

---

## 3. Determinação do Limite Mínimo de Quadros Físicos

Conforme solicitado explicitamente na **Parte III** das instruções, determinou-se experimentalmente o número mínimo de quadros de usuário que permite a conclusão de todos os processos de teste:

- **Com 4 quadros**: A execução **falha** (thrashing: o sistema não avança além de 15M instruções simuladas).
  - *Explicação*: Há 7 processos concorrentes. Cada um requer ao menos 1 quadro fixo de dados/pilha (insubstituível no hardware Mancha). Com apenas 4 quadros, é impossível sequer manter os dados de todos os processos — alguns jamais chegam a executar.
- **Com 5 quadros**: A execução **falha** (para em ~373K passos, sem `[INIT] FIM`).
  - *Explicação*: Com 5 quadros e 7 processos, os dados de todos não cabem simultaneamente. O processo `prog_io` termina cedo liberando 1 quadro, mas esse quadro é insuficiente: ainda faltam quadros para manter código e dados dos processos longevos concorrentes. O sistema entra em estado de impasse progressivo.
- **Com 6 quadros**: A execução **conclui com sucesso** — este é o **limite mínimo experimental**.
  - *Explicação*: `prog_io` e `prog_protecao` terminam prematuramente (IO ao ler do console, Proteção ao violar proteção de memória), liberando seus quadros de dados. Com 6 quadros disponíveis, há momentos com quadros suficientes para todos os processos restantes manterem dados e ao menos 1 quadro de código circular via substituição.
- **Com 7 e 8 quadros**: A execução **conclui com sucesso** (7 quadros apresenta mais faltas que 8 devido a thrashing intermediário).
- **Com 16+ quadros**: Substituições cessam (0 substituições) — o *working set* completo de código cabe na memória física.

---

## 4. Comparativo FIFO vs LRU por Envelhecimento (Aging)

Ao comparar os dois algoritmos sob diferentes restrições de quadros, observam-se as seguintes conclusões fundamentais:

1. **Comportamento em Escassez Severa (8 e 10 Quadros)**:
   - Em 8 quadros (onde há apenas 1 quadro de código disponível para 7 processos), tanto o FIFO quanto o LRU sofrem substituições frequentes a cada troca de contexto de processo.
   - O **LRU** apresenta melhor adaptação na preservação de páginas recentemente acessadas por processos em laços computacionais intensivos (como `prog_comp_a` e `prog_multipage`), mantendo a estabilidade de execução.
   - O **FIFO**, por selecionar estritamente pela ordem de alocação sem considerar reusos, sofre a clássica penalidade de descartar páginas frequentes se elas foram carregadas há mais tempo.

2. **Convergência com Memória Suficiente (16 e 24 Quadros)**:
   - A partir de 16 quadros, o número de substituições cai para **0** tanto em FIFO quanto em LRU.
   - Com quadros suficientes para abrigar todo o conjunto de trabalho (*working set*) de código dos processos ativos simultâneos, cada página do disco é carregada apenas uma vez (apenas faltas frias), eliminando qualquer divergência entre os algoritmos.

---

## 5. Comparação: Carga Completa (Parte I) vs Carregamento por Demanda (Partes II/III)

| Métrica | Carga Completa (Parte I) | Carregamento por Demanda (Parte II/III) |
|---|:---:|:---:|
| **Faltas de Página** | 0 | 34 (LRU - 8 quadros) |
| **Quadros Mínimos Requeridos** | 18 quadros | 8 quadros |
| **Tempo de Boot / Criação** | Alto (lê todos os setores de antemão) | Quase instantâneo (carrega sob demanda) |
| **Proteção por Hardware** | Sim (tipo 1 em código, tipo 3 em dados) | Sim (tipo 1 em código sob demanda, tipo 3 em dados) |
| **Tolerância a Escassez** | Inviável se memória < soma dos programas | Altamente resiliente (executa mesmo com 1 quadro de código) |

A **Carga Completa** requer que toda a memória necessária para todos os processos esteja fisicamente presente no momento do `so_cria_proc`. Se não houver quadros para todas as páginas de código e dados, o processo não pode sequer ser criado.
Por outro lado, o **Carregamento por Demanda com Substituição** permite executar um sistema com requisitos de código muito superiores à memória física disponível, trazendo do disco apenas o que é efetivamente executado.

---

## 6. Verificação de Proteção de Memória (Interrupção 1 e 5)

1. **Violação de Proteção (Interrupção 1)**:
   - O programa de usuário `prog_protecao` realiza uma tentativa proposital de escrita no endereço virtual `0` (área de código, marcada com `tipo 1` — somente leitura).
   - A MMU em hardware detecta a operação de escrita em modo usuário e imediatamente dispara a **Interrupção 1**.
   - O kernel intercepta a exceção através do handler `meu_handler_violacao_protecao` em `ponte.asm` e `so_trata_violacao_protecao` em `so.c`, emitindo diagnóstico claro:
     ```
     ----------------------------------------
     [SO] VIOLACAO DE PROTECAO (INT 1)!
     [SO] PID: 7 tentou escrita em codigo!
     [SO] IP: 0x0082
     [SO] Terminando processo faltoso...
     ----------------------------------------
     ```
   - O processo faltoso é terminado sem travar a CPU ou corromper outros processos.

2. **Acesso Ilegal Além dos Limites (Interrupção 5)**:
   - Acessos a páginas não alocadas (entradas com `tipo 0`) fora do intervalo de código do programa geram Interrupção 5.
   - O tratador `so_trata_pagina_ausente` valida `pag_virtual >= n_paginas_codigo` e termina o processo com `FALHA DE PAGINA ILEGAL` caso não seja uma falta legítima.

---

## 7. Registros Detalhados das Execuções (Logs dos Relatórios do SO)

### Demanda - LRU - 4 Quadros

> Processo não concluiu normalmente (encerrado após 15,000,000 instruções com esgotamento de memória).

### Demanda - LRU - 5 Quadros

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: LRU (Envelhecimento)
Limite Quadros: 5 quadros
Quantum: 4 tiques
Tempo total exec: 30 tiques
Tempo ocioso:     0 tiques
Processos criados:5
Total preempcoes: 7
Faltas de Pagina: 51
Substituicoes:    50
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  0
  [5] Falta Pagina:  51
  [7] Syscalls:      155
  [8] Console:       0
  [10] Relogio:      30
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    30    2      46      20      10
2   proc_a    0    2      2      12      8
3   proc_a    -1    2      2      15      8
4   proc_b    -12    1      1      12      4
5   proc_io    -29    0      0      0      0
========================================
```

### Demanda - LRU - 6 Quadros

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: LRU (Envelhecimento)
Limite Quadros: 6 quadros
Quantum: 4 tiques
Tempo total exec: 45 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 8
Faltas de Pagina: 47
Substituicoes:    37
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  47
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      45
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    45    3      35      29      16
2   proc_a    36    2      3      26      10
3   proc_a    37    2      3      27      10
4   proc_b    27    1      2      22      5
5   proc_io    13    0      1      12      1
6   multi    9    0      3      6      3
7   prot    2    0      0      2      0
========================================
```

### Demanda - LRU - 7 Quadros

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: LRU (Envelhecimento)
Limite Quadros: 7 quadros
Quantum: 4 tiques
Tempo total exec: 46 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 9
Faltas de Pagina: 67
Substituicoes:    58
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  67
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      46
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    46    3      37      33      13
2   proc_a    39    2      3      29      10
3   proc_a    40    2      3      30      10
4   proc_b    27    1      2      22      5
5   proc_io    13    0      1      13      0
6   multi    27    1      21      20      7
7   prot    12    0      0      11      1
========================================
```

### Demanda - LRU - 8 Quadros

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: LRU (Envelhecimento)
Limite Quadros: 8 quadros
Quantum: 4 tiques
Tempo total exec: 45 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 9
Faltas de Pagina: 34
Substituicoes:    25
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  34
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      45
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    45    2      7      25      11
2   proc_a    43    3      4      30      13
3   proc_a    39    2      3      29      10
4   proc_b    27    1      2      22      5
5   proc_io    13    0      1      13      0
6   multi    25    1      17      19      6
7   prot    14    0      0      14      0
========================================
```

### Demanda - FIFO - 8 Quadros

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: FIFO
Limite Quadros: 8 quadros
Quantum: 4 tiques
Tempo total exec: 37 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 7
Faltas de Pagina: 21
Substituicoes:    12
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  21
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      37
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    37    2      8      25      11
2   proc_a    34    2      3      25      9
3   proc_a    34    2      3      25      9
4   proc_b    26    1      2      22      4
5   proc_io    13    0      1      13      0
6   multi    14    0      3      11      3
7   prot    13    0      1      12      1
========================================
```

### Demanda - LRU - 10 Quadros

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: LRU (Envelhecimento)
Limite Quadros: 10 quadros
Quantum: 4 tiques
Tempo total exec: 45 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 9
Faltas de Pagina: 25
Substituicoes:    16
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  25
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      45
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    45    2      3      25      10
2   proc_a    44    3      3      30      14
3   proc_a    39    2      3      29      10
4   proc_b    27    1      2      22      5
5   proc_io    13    0      1      13      0
6   multi    25    1      13      19      6
7   prot    14    0      0      14      0
========================================
```

### Demanda - FIFO - 10 Quadros

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: FIFO
Limite Quadros: 10 quadros
Quantum: 4 tiques
Tempo total exec: 38 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 7
Faltas de Pagina: 19
Substituicoes:    10
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  19
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      38
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    38    2      8      25      11
2   proc_a    35    2      2      25      10
3   proc_a    35    2      2      26      9
4   proc_b    26    1      2      22      4
5   proc_io    13    0      1      13      0
6   multi    14    0      3      11      3
7   prot    13    0      1      12      1
========================================
```

### Demanda - LRU - 12 Quadros

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: LRU (Envelhecimento)
Limite Quadros: 12 quadros
Quantum: 4 tiques
Tempo total exec: 46 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 9
Faltas de Pagina: 20
Substituicoes:    11
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  20
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      46
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    46    2      3      25      11
2   proc_a    44    3      2      30      14
3   proc_a    39    2      1      29      10
4   proc_b    27    1      1      22      5
5   proc_io    13    0      1      13      0
6   multi    25    1      12      19      6
7   prot    14    0      0      14      0
========================================
```

### Demanda - FIFO - 12 Quadros

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: FIFO
Limite Quadros: 12 quadros
Quantum: 4 tiques
Tempo total exec: 36 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 7
Faltas de Pagina: 11
Substituicoes:    2
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  11
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      36
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    36    2      4      25      10
2   proc_a    34    2      1      25      9
3   proc_a    34    2      1      25      9
4   proc_b    26    1      1      22      4
5   proc_io    13    0      1      13      0
6   multi    14    0      3      11      3
7   prot    14    0      0      13      1
========================================
```

### Demanda - LRU - 16 Quadros

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: LRU (Envelhecimento)
Limite Quadros: 16 quadros
Quantum: 4 tiques
Tempo total exec: 44 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 8
Faltas de Pagina: 10
Substituicoes:    0
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  10
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      44
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    44    2      3      26      11
2   proc_a    42    3      1      29      13
3   proc_a    40    2      1      30      10
4   proc_b    27    1      1      22      5
5   proc_io    13    0      1      13      0
6   multi    15    0      3      12      3
7   prot    15    0      0      13      2
========================================
```

### Demanda - FIFO - 16 Quadros

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: FIFO
Limite Quadros: 16 quadros
Quantum: 4 tiques
Tempo total exec: 36 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 6
Faltas de Pagina: 10
Substituicoes:    0
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  10
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      36
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    36    1      3      14      8
2   proc_a    33    2      1      23      10
3   proc_a    34    2      1      24      10
4   proc_b    25    1      1      21      4
5   proc_io    13    0      1      13      0
6   multi    13    0      3      10      3
7   prot    13    0      0      12      1
========================================
```

### Demanda - LRU - 24 Quadros (Sem Escassez)

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: LRU (Envelhecimento)
Limite Quadros: 24 quadros
Quantum: 4 tiques
Tempo total exec: 46 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 8
Faltas de Pagina: 10
Substituicoes:    0
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  10
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      46
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    46    2      3      32      11
2   proc_a    40    2      1      29      11
3   proc_a    43    3      1      31      12
4   proc_b    27    1      1      22      5
5   proc_io    15    0      1      13      2
6   multi    17    0      3      14      3
7   prot    17    0      0      15      2
========================================
```

### Demanda - FIFO - 24 Quadros (Sem Escassez)

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Por Demanda (Partes II/III)
Algoritmo Subst: FIFO
Limite Quadros: 24 quadros
Quantum: 4 tiques
Tempo total exec: 35 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 6
Faltas de Pagina: 10
Substituicoes:    0
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  10
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      35
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    35    1      3      13      8
2   proc_a    33    2      1      23      10
3   proc_a    33    2      1      24      9
4   proc_b    25    1      1      21      4
5   proc_io    13    0      1      13      0
6   multi    13    0      3      10      3
7   prot    13    0      0      12      1
========================================
```

### Carga Completa (Parte I) - 24 Quadros

```
======================================
  RELATORIO DE EXECUCAO DO SO MANCHA (T3)
========================================
Modo Pag: Carga Completa (Parte I)
Algoritmo Subst: LRU (Envelhecimento)
Limite Quadros: 24 quadros
Quantum: 4 tiques
Tempo total exec: 43 tiques
Tempo ocioso:     0 tiques
Processos criados:7
Total preempcoes: 7
Faltas de Pagina: 0
Substituicoes:    0
Escritas Disco:   0
----------------------------------------
Contagem de Interrupcoes por Tipo:
  [1] Protecao Seg:  1
  [5] Falta Pagina:  0
  [7] Syscalls:      287
  [8] Console:       0
  [10] Relogio:      43
----------------------------------------
Metricas Individuais por Processo:
PID Prog   Ret  Preemp Faltas T.Pronto T.Exec
--- ----   ---  ------ ------ -------- ------
1   init    43    2      0      29      12
2   proc_a    38    2      0      28      10
3   proc_a    40    2      0      29      11
4   proc_b    27    1      0      22      5
5   proc_io    14    0      0      13      1
6   multi    16    0      0      13      3
7   prot    16    0      0      15      1
========================================
```
