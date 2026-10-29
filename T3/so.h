#ifndef SO_H
#define SO_H

// ============================================================================
// Constantes Globais do Sistema Operacional (T3)
// ============================================================================

#define MAX_PROCESSOS               8
#define MAX_PROGRAMAS               8

#define TAM_PAGINA                  512     // 512 bytes por página/quadro (fixo em hardware)
#define NUM_ENTRADAS_TABELA         256     // 256 entradas de 2 bytes = 512 bytes
#define PAGINA_DADOS_OFFSET         128     // Acessos a dados usam entradas 128..255

// Tipos de entradas da tabela de páginas (bits 15:14)
#define TIPO_AUSENTE                0       // Ausente (gera Interrupção 5)
#define TIPO_LEITURA                1       // Somente leitura (código)
#define TIPO_ESCRITA_LIMPA          2       // Leitura/Escrita limpa
#define TIPO_ESCRITA_MODIF          3       // Leitura/Escrita modificada (dirty)

#define MASK_TIPO                   0xC000  // Bits 15:14
#define MASK_ACESSO                 0x2000  // Bit 13
#define MASK_QUADRO                 0x1FFF  // Bits 12:0

#define ENTRADA_CODIGO(q)           (0x6000 | ((q) & MASK_QUADRO))  // Tipo 1, Acesso 1
#define ENTRADA_DADOS(q)            (0xE000 | ((q) & MASK_QUADRO))  // Tipo 3, Acesso 1

// Configurações de Escalonamento
#define ESC_SIMPLES                 0       // Cooperativo
#define ESC_CIRCULAR                1       // Round-Robin circular preemptivo
#define ESC_PRIORIDADE              2       // Prioridade dinâmica preemptiva

#ifndef CONFIG_ESCALONADOR
#define CONFIG_ESCALONADOR          ESC_CIRCULAR
#endif

#define TICKS_POR_CLOCK             1000    // Instruções por tique do relógio
#define QUANTUM_PADRAO              4       // Quantum = 4 tiques

#ifndef CONFIG_QUANTUM
#define CONFIG_QUANTUM              QUANTUM_PADRAO
#endif

// Modos de Carregamento de Código
#define MODO_CARGA_COMPLETA         0       // Parte I: código carregado no SO_CRIA_PROC
#define MODO_POR_DEMANDA            1       // Parte II e III: carregamento sob demanda

#ifndef CONFIG_DEMAND_PAGING
#define CONFIG_DEMAND_PAGING        MODO_POR_DEMANDA
#endif

// Algoritmos de Substituição de Páginas (Parte III)
#define SUBST_FIFO                  0       // Primeiro a entrar, primeiro a sair
#define SUBST_LRU                   1       // Menos recentemente usado (aging)

#ifndef CONFIG_SUBST_ALGO
#define CONFIG_SUBST_ALGO           SUBST_LRU
#endif

// Limite de Quadros Físicos Disponíveis para Processos de Usuário
// Permite simular escassez de memória para forçar substituições
#ifndef CONFIG_MAX_QUADROS_USUARIO
#define CONFIG_MAX_QUADROS_USUARIO  8       // Padrão: 8 quadros
#endif

#define PRIMEIRO_QUADRO_USUARIO     160     // Quadros 0..159 reservados para SO e BIOS

// Estados do Processo
#define PROC_LIVRE                  0
#define PROC_PRONTO                 1
#define PROC_EXECUTANDO             2
#define PROC_BLOQUEADO              3
#define PROC_MORTO                  4

// Motivos de Bloqueio
#define BLOQ_NENHUM                 0
#define BLOQ_CONSOLE_LE             1
#define BLOQ_ESPERA_PROC            2

// Chamadas de Sistema (Syscalls)
#define SO_LE                       1
#define SO_ESCREVE                  2
#define SO_CRIA_PROC                3
#define SO_MATA_PROC                4
#define SO_ESPERA_PROC              5

#define TROCOU_PROCESSO             9999

// IDs dos Programas Armazenados no Disco Simulado
#define PROG_INIT                   0
#define PROG_COMP_A                 1
#define PROG_COMP_B                 2
#define PROG_IO                     3
#define PROG_MULTIPAGE              4
#define PROG_PROTECAO               5

// ============================================================================
// Estruturas de Dados
// ============================================================================

// Metadados de programas armazenados no disco simulado
struct ProgramaDisco {
    int id;
    int setor_inicial;
    int n_paginas_codigo;
    char nome[16];
};

// Informações de controle de cada quadro físico alocado
struct QuadroInfo {
    int ocupado;                    // 1 se em uso, 0 se livre
    int pid_dono;                   // PID do processo detentor
    int pag_virtual;                // Página virtual associada
    int eh_dados;                   // 1 se página de dados, 0 se código
    int ordem_insercao;             // Sequencial para FIFO
    int idade;                      // Contador de envelhecimento para LRU (aging)
};

// Estrutura de Métricas Globais
struct Metricas {
    int n_processos_criados;
    int tempo_total;
    int tempo_ocioso;
    int n_preempcoes_total;
    int n_faltas_pagina_total;
    int n_substituicoes_total;
    int n_escritas_disco_total;
    int n_interrupcoes[16];
};

// Bloco de Controle de Processo (PCB)
struct Processo {
    int pid;
    int estado;
    int bloqueado_por;
    int esperando_pid;
    int prioridade;
    int quadro[16];                 // Contexto de registradores salvo

    int prog_id;                    // Programa do disco em execução
    int n_paginas_codigo;           // Total de páginas virtuais de código
    int n_paginas_dados;            // Total de páginas virtuais de dados (padrão: 1)
    int *tabela_paginas;            // Endereço da tabela de páginas (256 entradas)
    int quadro_dados;               // Quadro físico fixo para dados/pilha

    // Métricas específicas do processo
    int faltas_pagina;              // Faltas de página atendidas
    int t_criacao;
    int t_termino;
    int n_preempcoes;
    int vezes_pronto;
    int vezes_bloqueado;
    int vezes_executando;
    int tempo_pronto;
    int tempo_bloqueado;
    int tempo_executando;
    int t_ultimo_estado;
    int t_desbloqueou;
    int soma_tempo_resposta;
    int n_respostas;
};

// ============================================================================
// Declarações de Funções do Núcleo do SO
// ============================================================================

void so_inicializa(int *quadro_boot);
void so_trata_pendencias(void);
void so_tique_relogio(int *quadro);
int  so_trata_syscall(int *quadro, int num, int arg1, int arg2);
int  so_trata_pagina_ausente(int *quadro, int ip_falta);
void so_trata_violacao_protecao(int *quadro, int ip_falta);
void so_restaura_atual(int *quadro_destino);
void so_imprime_relatorio(void);

// Primitivas de I/O e hardware fornecidas por ponte.asm / bios.asm
int  so_obtem_relogio_cont(void);
void so_escreve_caractere(int c);
void so_halt(void);
int  bios_console_disponivel(void);
int  bios_console_le(void);
int  so_disco_le_setor(int face, int trilha, int setor, int end_destino);
int  so_disco_escreve_setor(int face, int trilha, int setor, int end_fonte);

// Funções de formatação e saída do kernel
void so_puts(char *s);
void so_nova_linha(void);
void so_print_str(char *s);
void so_print_dec(int v);
void so_print_hex(int v);

#endif // SO_H
