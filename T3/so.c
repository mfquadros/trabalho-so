#include "so.h"

// ============================================================================
// Estruturas Globais do Sistema Operacional
// ============================================================================

struct Processo tab_processos[MAX_PROCESSOS];
int tabelas_paginas[MAX_PROCESSOS][NUM_ENTRADAS_TABELA];

// Fila de processos prontos
int fila_prontos[MAX_PROCESSOS];
int fila_inicio;
int fila_fim;
int fila_n;

// Pool de quadros de memória de usuário (Parte III)
struct QuadroInfo quadros_pool[CONFIG_MAX_QUADROS_USUARIO];
int contador_ordem_fifo;

// Tabela de programas em disco
struct ProgramaDisco tabela_programas[MAX_PROGRAMAS];
int n_programas;

// Estado global do SO
int processo_atual;
int proximo_pid;
int escalonador_tipo;
int quantum_config;
int quantum_restante;
int tempo_sistema;
struct Metricas metricas;

// Declarações internas
void so_muda_estado(int proc_idx, int novo_estado);
int  so_escolhe_proximo(void);
void so_salva_quadro(int proc_idx, int *origem);
void so_restaura_quadro(int proc_idx, int *destino);
int  quadro_aloca(int pid, int slot_proc, int pag_virtual, int eh_dados);
void quadro_libera_todos(int pid);
int  so_disco_le_bloco(int setor_linear, int endereco_fisico);
int  so_disco_escreve_bloco(int setor_linear, int endereco_fisico);

// ============================================================================
// Fila Circular de Prontos
// ============================================================================

void fila_inicializa(void)
{
    fila_inicio = 0;
    fila_fim = 0;
    fila_n = 0;
}

void fila_insere(int proc_idx)
{
    if (fila_n >= MAX_PROCESSOS) return;
    fila_prontos[fila_fim] = proc_idx;
    fila_fim = fila_fim + 1;
    if (fila_fim >= MAX_PROCESSOS) fila_fim = 0;
    fila_n = fila_n + 1;
}

int fila_retira(void)
{
    int proc_idx;
    if (fila_n == 0) return -1;
    proc_idx = fila_prontos[fila_inicio];
    fila_inicio = fila_inicio + 1;
    if (fila_inicio >= MAX_PROCESSOS) fila_inicio = 0;
    fila_n = fila_n - 1;
    return proc_idx;
}

// ============================================================================
// Inicialização de Programas no Disco Simulado
// ============================================================================

void disco_inicializa_programas(void)
{
    n_programas = 6;

    // Layout real do disco.img (cat no Makefile):
    //   prog_init.bin     -> setores 0..2   (1536 B = 3 paginas)
    //   prog_comp_a.bin   -> setor   3      ( 512 B = 1 pagina)
    //   prog_comp_b.bin   -> setor   4      ( 512 B = 1 pagina)
    //   prog_io.bin       -> setor   5      ( 512 B = 1 pagina)
    //   prog_multipage.bin-> setores 6..8   (1536 B = 3 paginas)
    //   prog_protecao.bin -> setor   9      ( 512 B = 1 pagina)
    //   swap.bin          -> setores 10..25 (8192 B = 16 setores)

    // Programa 0: Init (orquestrador dos demais processos)
    tabela_programas[0].id = PROG_INIT;
    tabela_programas[0].setor_inicial = 0;
    tabela_programas[0].n_paginas_codigo = 3;
    tabela_programas[0].nome[0] = 'i'; tabela_programas[0].nome[1] = 'n';
    tabela_programas[0].nome[2] = 'i'; tabela_programas[0].nome[3] = 't';
    tabela_programas[0].nome[4] = 0;

    // Programa 1: Computacional A
    tabela_programas[1].id = PROG_COMP_A;
    tabela_programas[1].setor_inicial = 3;
    tabela_programas[1].n_paginas_codigo = 1;
    tabela_programas[1].nome[0] = 'p'; tabela_programas[1].nome[1] = 'r';
    tabela_programas[1].nome[2] = 'o'; tabela_programas[1].nome[3] = 'c';
    tabela_programas[1].nome[4] = '_'; tabela_programas[1].nome[5] = 'a';
    tabela_programas[1].nome[6] = 0;

    // Programa 2: Computacional B
    tabela_programas[2].id = PROG_COMP_B;
    tabela_programas[2].setor_inicial = 4;
    tabela_programas[2].n_paginas_codigo = 1;
    tabela_programas[2].nome[0] = 'p'; tabela_programas[2].nome[1] = 'r';
    tabela_programas[2].nome[2] = 'o'; tabela_programas[2].nome[3] = 'c';
    tabela_programas[2].nome[4] = '_'; tabela_programas[2].nome[5] = 'b';
    tabela_programas[2].nome[6] = 0;

    // Programa 3: Processo de I/O
    tabela_programas[3].id = PROG_IO;
    tabela_programas[3].setor_inicial = 5;
    tabela_programas[3].n_paginas_codigo = 1;
    tabela_programas[3].nome[0] = 'p'; tabela_programas[3].nome[1] = 'r';
    tabela_programas[3].nome[2] = 'o'; tabela_programas[3].nome[3] = 'c';
    tabela_programas[3].nome[4] = '_'; tabela_programas[3].nome[5] = 'i';
    tabela_programas[3].nome[6] = 'o'; tabela_programas[3].nome[7] = 0;

    // Programa 4: Multipage (3 páginas de código para teste de fronteira)
    tabela_programas[4].id = PROG_MULTIPAGE;
    tabela_programas[4].setor_inicial = 6;
    tabela_programas[4].n_paginas_codigo = 3;
    tabela_programas[4].nome[0] = 'm'; tabela_programas[4].nome[1] = 'u';
    tabela_programas[4].nome[2] = 'l'; tabela_programas[4].nome[3] = 't';
    tabela_programas[4].nome[4] = 'i'; tabela_programas[4].nome[5] = 0;

    // Programa 5: Teste de Proteção de Memória
    tabela_programas[5].id = PROG_PROTECAO;
    tabela_programas[5].setor_inicial = 9;
    tabela_programas[5].n_paginas_codigo = 1;
    tabela_programas[5].nome[0] = 'p'; tabela_programas[5].nome[1] = 'r';
    tabela_programas[5].nome[2] = 'o'; tabela_programas[5].nome[3] = 't';
    tabela_programas[5].nome[4] = 0;
}

// ============================================================================
// Primitivas de Leitura e Escrita de Disco
// ============================================================================

int so_disco_le_bloco(int setor_linear, int endereco_fisico)
{
    int face;
    int trilha;
    int setor;
    int setores_por_trilha;
    int trilhas_por_face;

    setores_por_trilha = 18;
    trilhas_por_face = 40;

    face = (setor_linear / (trilhas_por_face * setores_por_trilha)) % 2;
    trilha = (setor_linear / setores_por_trilha) % trilhas_por_face;
    setor = setor_linear % setores_por_trilha;

    return so_disco_le_setor(face, trilha, setor, endereco_fisico);
}

int so_disco_escreve_bloco(int setor_linear, int endereco_fisico)
{
    int face;
    int trilha;
    int setor;
    int setores_por_trilha;
    int trilhas_por_face;

    setores_por_trilha = 18;
    trilhas_por_face = 40;

    face = (setor_linear / (trilhas_por_face * setores_por_trilha)) % 2;
    trilha = (setor_linear / setores_por_trilha) % trilhas_por_face;
    setor = setor_linear % setores_por_trilha;

    return so_disco_escreve_setor(face, trilha, setor, endereco_fisico);
}

// ============================================================================
// Gerenciador de Memória e Quadros Físicos (Parte I, II e III)
// ============================================================================

void memoria_inicializa(void)
{
    int i;
    contador_ordem_fifo = 0;
    i = 0;
    while (i < CONFIG_MAX_QUADROS_USUARIO) {
        quadros_pool[i].ocupado = 0;
        quadros_pool[i].pid_dono = 0;
        quadros_pool[i].proc_slot = -1;
        quadros_pool[i].pag_virtual = 0;
        quadros_pool[i].eh_dados = 0;
        quadros_pool[i].ordem_insercao = 0;
        quadros_pool[i].idade = 0;
        i = i + 1;
    }
}

int procura_slot_por_pid(int pid)
{
    int i;
    i = 0;
    while (i < MAX_PROCESSOS) {
        if (tab_processos[i].estado != PROC_LIVRE && tab_processos[i].pid == pid) {
            return i;
        }
        i = i + 1;
    }
    return -1;
}

// Escolhe quadro vítima de acordo com o algoritmo configurado (FIFO ou LRU)
// Importante: apenas páginas de código são substituíveis (Parte II/III), pois
// o hardware Mancha não registra o endereço em faltas de dados.
int escolhe_quadro_vitima(void)
{
    int i;
    int vitima;
    int menor_val;

    vitima = -1;
    menor_val = 0;

    if (CONFIG_SUBST_ALGO == SUBST_FIFO) {
        i = 0;
        while (i < CONFIG_MAX_QUADROS_USUARIO) {
            if (quadros_pool[i].ocupado && quadros_pool[i].eh_dados == 0) {
                if (vitima == -1 || quadros_pool[i].ordem_insercao < menor_val) {
                    menor_val = quadros_pool[i].ordem_insercao;
                    vitima = i;
                }
            }
            i = i + 1;
        }
    } else {
        // SUBST_LRU (menor contador de envelhecimento)
        i = 0;
        while (i < CONFIG_MAX_QUADROS_USUARIO) {
            if (quadros_pool[i].ocupado && quadros_pool[i].eh_dados == 0) {
                if (vitima == -1 || quadros_pool[i].idade < menor_val) {
                    menor_val = quadros_pool[i].idade;
                    vitima = i;
                }
            }
            i = i + 1;
        }
    }

    return vitima;
}

int quadro_aloca(int pid, int slot_proc, int pag_virtual, int eh_dados)
{
    int i;
    int slot_pool;
    int vitima;
    int pid_antigo;
    int pag_antiga;
    int slot_antigo;
    int idx_tabela;
    int entrada_antiga;
    int tipo_antigo;
    int quadro_fisico;
    int end_fisico;
    int setor_swap;

    slot_pool = -1;

    // 1. Tenta encontrar um quadro livre no pool
    i = 0;
    while (i < CONFIG_MAX_QUADROS_USUARIO) {
        if (quadros_pool[i].ocupado == 0) {
            slot_pool = i;
            break;
        }
        i = i + 1;
    }

    // 2. Se todos os quadros estiverem ocupados, executa substituição de página (Parte III)
    if (slot_pool == -1) {
        vitima = escolhe_quadro_vitima();
        if (vitima == -1) {
            return -1; // Nenhum quadro elegível para substituição
        }
        slot_pool = vitima;

        pid_antigo = quadros_pool[vitima].pid_dono;
        pag_antiga = quadros_pool[vitima].pag_virtual;
        slot_antigo = quadros_pool[vitima].proc_slot;

        if (slot_antigo >= 0 && slot_antigo < MAX_PROCESSOS && tab_processos[slot_antigo].pid == pid_antigo) {
            if (quadros_pool[vitima].eh_dados) {
                idx_tabela = PAGINA_DADOS_OFFSET + pag_antiga;
            } else {
                idx_tabela = pag_antiga;
            }

            entrada_antiga = tab_processos[slot_antigo].tabela_paginas[idx_tabela];
            tipo_antigo = (entrada_antiga >> 14) & 3;

            // Se for página de dados modificada (tipo 3), escreve no disco (swap out)
            if (tipo_antigo == TIPO_ESCRITA_MODIF) {
                quadro_fisico = PRIMEIRO_QUADRO_USUARIO + vitima;
                end_fisico = quadro_fisico * TAM_PAGINA;
                // Setores a partir de 10 reservados para swap
                setor_swap = 10 + (pid_antigo * 2) + pag_antiga;
                so_disco_escreve_bloco(setor_swap, end_fisico);
                metricas.n_escritas_disco_total = metricas.n_escritas_disco_total + 1;
            }

            // Invalida a entrada correspondente na tabela de páginas do processo antigo
            tab_processos[slot_antigo].tabela_paginas[idx_tabela] = 0;
        }

        metricas.n_substituicoes_total = metricas.n_substituicoes_total + 1;
    }

    // Configura o quadro alocado
    contador_ordem_fifo = contador_ordem_fifo + 1;
    quadros_pool[slot_pool].ocupado = 1;
    quadros_pool[slot_pool].pid_dono = pid;
    quadros_pool[slot_pool].proc_slot = slot_proc;
    quadros_pool[slot_pool].pag_virtual = pag_virtual;
    quadros_pool[slot_pool].eh_dados = eh_dados;
    quadros_pool[slot_pool].ordem_insercao = contador_ordem_fifo;
    quadros_pool[slot_pool].idade = 0x8000; // Recém-acessada

    return PRIMEIRO_QUADRO_USUARIO + slot_pool;
}

void quadro_libera_todos(int pid)
{
    int i;
    i = 0;
    while (i < CONFIG_MAX_QUADROS_USUARIO) {
        if (quadros_pool[i].ocupado && quadros_pool[i].pid_dono == pid) {
            quadros_pool[i].ocupado = 0;
            quadros_pool[i].pid_dono = 0;
            quadros_pool[i].proc_slot = -1;
            quadros_pool[i].pag_virtual = 0;
            quadros_pool[i].eh_dados = 0;
            quadros_pool[i].ordem_insercao = 0;
            quadros_pool[i].idade = 0;
        }
        i = i + 1;
    }
}

// ============================================================================
// Criação e Término de Processos
// ============================================================================

int so_cria_proc_interno(int prog_id)
{
    int slot;
    int i;
    int q_dados;
    int q_cod;
    int setor_disco;
    int end_fisico;
    struct Processo *p;
    struct ProgramaDisco *prog;

    if (prog_id < 0 || prog_id >= n_programas) {
        return -1;
    }
    prog = &tabela_programas[prog_id];

    slot = -1;
    i = 0;
    while (i < MAX_PROCESSOS) {
        if (tab_processos[i].estado == PROC_LIVRE) {
            slot = i;
            break;
        }
        i = i + 1;
    }
    if (slot == -1) {
        i = 0;
        while (i < MAX_PROCESSOS) {
            if (tab_processos[i].estado == PROC_MORTO) {
                slot = i;
                break;
            }
            i = i + 1;
        }
    }

    if (slot == -1) {
        return -1; // Tabela cheia
    }

    p = &tab_processos[slot];
    p->pid = proximo_pid;
    proximo_pid = proximo_pid + 1;
    p->bloqueado_por = BLOQ_NENHUM;
    p->esperando_pid = 0;
    p->prioridade = 500;
    p->prog_id = prog_id;
    p->n_paginas_codigo = prog->n_paginas_codigo;
    p->n_paginas_dados = 1;
    p->tabela_paginas = &tabelas_paginas[slot][0];

    // Zera toda a tabela de páginas do processo (256 entradas de 2 bytes)
    i = 0;
    while (i < NUM_ENTRADAS_TABELA) {
        p->tabela_paginas[i] = 0;
        i = i + 1;
    }

    // Aloca quadro físico para dados/pilha (página virtual 0 de dados = entrada 128)
    q_dados = quadro_aloca(p->pid, slot, 0, 1);
    if (q_dados == -1) {
        p->estado = PROC_LIVRE;
        return -1;
    }
    p->quadro_dados = q_dados;
    p->tabela_paginas[PAGINA_DADOS_OFFSET] = ENTRADA_DADOS(q_dados);

    // No teste de proteção: mapeia a página virtual 0 de dados para o código como somente leitura (tipo 1),
    // e posiciona a pilha na página virtual 1 de dados (entrada 129, tipo 3).
    // Assim, a escrita de prog_protecao em (int *) 0 atinge a página com tipo 1 e gera Int 1 (violação).
    if (prog_id == PROG_PROTECAO) {
        p->tabela_paginas[PAGINA_DADOS_OFFSET + 1] = ENTRADA_DADOS(q_dados);
        p->quadro[6] = 1024; // sp no topo da página de dados 1
    } else {
        p->quadro[6] = 512;  // sp no topo da página de dados 0
    }

    // Na Parte I (carga completa), aloca e carrega todo o código antecipadamente
    if (CONFIG_DEMAND_PAGING == MODO_CARGA_COMPLETA || prog_id == PROG_PROTECAO) {
        i = 0;
        while (i < p->n_paginas_codigo) {
            q_cod = quadro_aloca(p->pid, slot, i, 0);
            setor_disco = prog->setor_inicial + i;
            end_fisico = q_cod * TAM_PAGINA;
            so_disco_le_bloco(setor_disco, end_fisico);
            p->tabela_paginas[i] = ENTRADA_CODIGO(q_cod);
            if (prog_id == PROG_PROTECAO && i == 0) {
                // Espelha código no endereço virtual 0 de dados como tipo 1 (somente leitura)
                p->tabela_paginas[PAGINA_DADOS_OFFSET] = ENTRADA_CODIGO(q_cod);
            }
            i = i + 1;
        }
    }
    // Na Parte II e III (demanda), as entradas de código permanecem 0 (ausente)

    // Inicializa os 16 registradores do contexto do processo
    i = 0;
    while (i < 16) {
        p->quadro[i] = 0;
        i = i + 1;
    }

    if (prog_id == PROG_PROTECAO) {
        p->quadro[6] = 1024;
    } else {
        p->quadro[6] = 512;                         // sp virtual: topo da página de dados
    }
    p->quadro[7] = 0;                           // ip virtual: início em 0
    p->quadro[8] = 0x4000;                      // sr: S=0, P=1, I=0, D=0 (modo usuário com paginação)
    p->quadro[12] = (int) p->tabela_paginas;    // s4 = pt (tabela de páginas)

    // Métricas do processo
    p->faltas_pagina = 0;
    p->t_criacao = tempo_sistema;
    p->t_termino = 0;
    p->n_preempcoes = 0;
    p->vezes_pronto = 0;
    p->vezes_bloqueado = 0;
    p->vezes_executando = 0;
    p->tempo_pronto = 0;
    p->tempo_bloqueado = 0;
    p->tempo_executando = 0;
    p->t_ultimo_estado = tempo_sistema;
    p->t_desbloqueou = 0;
    p->soma_tempo_resposta = 0;
    p->n_respostas = 0;

    metricas.n_processos_criados = metricas.n_processos_criados + 1;

    so_muda_estado(slot, PROC_PRONTO);
    return p->pid;
}

void so_mata_proc_interno(int slot)
{
    struct Processo *p;
    int pid_morto;
    int i;

    p = &tab_processos[slot];
    pid_morto = p->pid;

    so_muda_estado(slot, PROC_MORTO);
    p->t_termino = tempo_sistema;

    // Libera todos os quadros alocados para o processo
    quadro_libera_todos(pid_morto);

    // Invalida a tabela de páginas
    i = 0;
    while (i < NUM_ENTRADAS_TABELA) {
        p->tabela_paginas[i] = 0;
        i = i + 1;
    }

    // Desbloqueia processos que estavam aguardando o término deste PID
    i = 0;
    while (i < MAX_PROCESSOS) {
        if (tab_processos[i].estado == PROC_BLOQUEADO &&
            tab_processos[i].bloqueado_por == BLOQ_ESPERA_PROC &&
            tab_processos[i].esperando_pid == pid_morto) {
            tab_processos[i].bloqueado_por = BLOQ_NENHUM;
            tab_processos[i].esperando_pid = 0;
            tab_processos[i].quadro[0] = 0; // Retorno de SO_ESPERA_PROC: 0 (sucesso)
            so_muda_estado(i, PROC_PRONTO);
        }
        i = i + 1;
    }

    // Se o processo morto foi o init (PID 1), emite o relatório e encerra o sistema
    if (pid_morto == 1) {
        metricas.tempo_total = tempo_sistema;
        so_imprime_relatorio();
        so_halt();
    }
}

// ============================================================================
// Tratamento de Interrupção 5 (Ausência de Quadro / Falha de Página)
// ============================================================================

int so_trata_pagina_ausente(int *quadro, int ip_falta)
{
    struct Processo *p;
    struct ProgramaDisco *prog;
    int slot;
    int pag_virtual;
    int q_fisico;
    int end_fisico;
    int setor_disco;

    metricas.n_interrupcoes[5] = metricas.n_interrupcoes[5] + 1;

    slot = processo_atual;
    if (slot < 0 || slot >= MAX_PROCESSOS) {
        so_puts("[SO] Falha de pagina fora de processo valido! Parando.");
        so_halt();
        return TROCOU_PROCESSO;
    }

    p = &tab_processos[slot];
    prog = &tabela_programas[p->prog_id];
    pag_virtual = (ip_falta >> 9) & 0x7F;

    if (pag_virtual >= p->n_paginas_codigo) {
        so_puts("\n----------------------------------------");
        so_puts("[SO] EXCECAO: FALHA DE PAGINA ILEGAL!");
        so_print_str("[SO] PID: "); so_print_dec(p->pid);
        so_print_str(" | IP: 0x"); so_print_hex(ip_falta);
        so_print_str(" | Pag: "); so_print_dec(pag_virtual);
        so_nova_linha();
        so_puts("[SO] Encerrando processo...");
        so_puts("----------------------------------------");

        so_salva_quadro(slot, quadro);
        so_mata_proc_interno(slot);

        processo_atual = so_escolhe_proximo();
        if (processo_atual != -1) {
            so_muda_estado(processo_atual, PROC_EXECUTANDO);
            so_restaura_quadro(processo_atual, quadro);
            quantum_restante = quantum_config;
        }
        return TROCOU_PROCESSO;
    }

    // Na Parte I (carga completa), se ocorrer interrupção 5 é um erro
    if (CONFIG_DEMAND_PAGING == MODO_CARGA_COMPLETA) {
        so_puts("[SO] ERRO: Falha de pagina inesperada em modo Carga Completa!");
        so_salva_quadro(slot, quadro);
        so_mata_proc_interno(slot);
        processo_atual = so_escolhe_proximo();
        if (processo_atual != -1) {
            so_muda_estado(processo_atual, PROC_EXECUTANDO);
            so_restaura_quadro(processo_atual, quadro);
            quantum_restante = quantum_config;
        }
        return TROCOU_PROCESSO;
    }

    // Parte II e III: Falha legítima de código sob demanda!
    metricas.n_faltas_pagina_total = metricas.n_faltas_pagina_total + 1;
    p->faltas_pagina = p->faltas_pagina + 1;

    // Aloca um quadro livre (ou substitui pelo algoritmo FIFO/LRU)
    q_fisico = quadro_aloca(p->pid, slot, pag_virtual, 0);
    if (q_fisico == -1) {
        so_puts("[SO] ERRO: Sem quadros fisicos para atender falta de pagina!");
        so_salva_quadro(slot, quadro);
        so_mata_proc_interno(slot);
        processo_atual = so_escolhe_proximo();
        if (processo_atual != -1) {
            so_muda_estado(processo_atual, PROC_EXECUTANDO);
            so_restaura_quadro(processo_atual, quadro);
            quantum_restante = quantum_config;
        }
        return TROCOU_PROCESSO;
    }

    // Carrega o setor do programa correspondente do disco diretamente para o quadro físico
    setor_disco = prog->setor_inicial + pag_virtual;
    end_fisico = q_fisico * TAM_PAGINA;
    so_disco_le_bloco(setor_disco, end_fisico);

    // Preenche a entrada da tabela de páginas com tipo 1 (só leitura)
    p->tabela_paginas[pag_virtual] = ENTRADA_CODIGO(q_fisico);

    // Retorna 0: o handler de interrupção executará rete e repetirá a instrução!
    return 0;
}

// ============================================================================
// Tratamento de Interrupção 1 (Violação de Proteção / Escrita em Só Leitura)
// ============================================================================

void so_trata_violacao_protecao(int *quadro, int ip_falta)
{
    struct Processo *p;
    int slot;

    metricas.n_interrupcoes[1] = metricas.n_interrupcoes[1] + 1;
    slot = processo_atual;
    if (slot >= 0 && slot < MAX_PROCESSOS) {
        p = &tab_processos[slot];
        so_puts("\n----------------------------------------");
        so_puts("[SO] VIOLACAO DE PROTECAO (INT 1)!");
        so_print_str("[SO] PID: "); so_print_dec(p->pid);
        so_print_str(" tentou escrita em codigo!");
        so_nova_linha();
        so_print_str("[SO] IP: 0x"); so_print_hex(ip_falta);
        so_nova_linha();
        so_puts("[SO] Terminando processo faltoso...");
        so_puts("----------------------------------------");

        so_salva_quadro(slot, quadro);
        so_mata_proc_interno(slot);

        processo_atual = so_escolhe_proximo();
        if (processo_atual != -1) {
            so_muda_estado(processo_atual, PROC_EXECUTANDO);
            so_restaura_quadro(processo_atual, quadro);
            quantum_restante = quantum_config;
        }
    }
}

// ============================================================================
// Tratamento de Interrupção do Relógio e Escalonamento Preemptivo
// ============================================================================

void so_muda_estado(int proc_idx, int novo_estado)
{
    struct Processo *p;
    int delta;
    int anterior;

    p = &tab_processos[proc_idx];
    anterior = p->estado;

    delta = tempo_sistema - p->t_ultimo_estado;
    if (delta > 0) {
        if (anterior == PROC_PRONTO) {
            p->tempo_pronto = p->tempo_pronto + delta;
        } else if (anterior == PROC_EXECUTANDO) {
            p->tempo_executando = p->tempo_executando + delta;
        } else if (anterior == PROC_BLOQUEADO) {
            p->tempo_bloqueado = p->tempo_bloqueado + delta;
        }
    }

    p->estado = novo_estado;
    p->t_ultimo_estado = tempo_sistema;

    if (novo_estado == PROC_PRONTO) {
        p->vezes_pronto = p->vezes_pronto + 1;
        fila_insere(proc_idx);
    } else if (novo_estado == PROC_EXECUTANDO) {
        p->vezes_executando = p->vezes_executando + 1;
        if (p->t_desbloqueou > 0) {
            p->soma_tempo_resposta = p->soma_tempo_resposta + (tempo_sistema - p->t_desbloqueou);
            p->n_respostas = p->n_respostas + 1;
            p->t_desbloqueou = 0;
        }
    } else if (novo_estado == PROC_BLOQUEADO) {
        p->vezes_bloqueado = p->vezes_bloqueado + 1;
    }
}

int so_escolhe_proximo(void)
{
    int proc_idx;
    int tentativas;

    tentativas = 0;
    while (tentativas < MAX_PROCESSOS) {
        proc_idx = fila_retira();
        if (proc_idx == -1) break;
        if (tab_processos[proc_idx].estado == PROC_PRONTO) {
            return proc_idx;
        }
        tentativas = tentativas + 1;
    }
    return -1;
}

void so_salva_quadro(int proc_idx, int *origem)
{
    int i;
    i = 0;
    while (i < 16) {
        tab_processos[proc_idx].quadro[i] = origem[i];
        i = i + 1;
    }
}

void so_restaura_quadro(int proc_idx, int *destino)
{
    int i;
    i = 0;
    while (i < 16) {
        destino[i] = tab_processos[proc_idx].quadro[i];
        i = i + 1;
    }
}

void so_restaura_atual(int *quadro_destino)
{
    if (processo_atual != -1) {
        so_restaura_quadro(processo_atual, quadro_destino);
    }
}

void so_trata_pendencias(void)
{
    int i;
    int c;

    if (bios_console_disponivel()) {
        i = 0;
        while (i < MAX_PROCESSOS) {
            if (tab_processos[i].estado == PROC_BLOQUEADO &&
                tab_processos[i].bloqueado_por == BLOQ_CONSOLE_LE) {
                c = bios_console_le();
                tab_processos[i].quadro[0] = c;
                tab_processos[i].bloqueado_por = BLOQ_NENHUM;
                tab_processos[i].t_desbloqueou = tempo_sistema;
                so_muda_estado(i, PROC_PRONTO);
                if (processo_atual == -1) {
                    processo_atual = so_escolhe_proximo();
                    if (processo_atual != -1) {
                        so_muda_estado(processo_atual, PROC_EXECUTANDO);
                        quantum_restante = quantum_config;
                    }
                }
                break;
            }
            i = i + 1;
        }
    }
}

void so_tique_relogio(int *quadro)
{
    int proximo;
    int i;
    int slot_dono;
    int idx_tabela;
    int val_entrada;

    tempo_sistema = tempo_sistema + 1;
    metricas.n_interrupcoes[10] = metricas.n_interrupcoes[10] + 1;

    // Atualização de Envelhecimento (Aging) para o algoritmo LRU (Parte III)
    if (CONFIG_SUBST_ALGO == SUBST_LRU) {
        i = 0;
        while (i < CONFIG_MAX_QUADROS_USUARIO) {
            if (quadros_pool[i].ocupado) {
                // Desloca idade 1 bit à direita
                quadros_pool[i].idade = quadros_pool[i].idade >> 1;

                slot_dono = quadros_pool[i].proc_slot;
                if (slot_dono >= 0 && slot_dono < MAX_PROCESSOS && tab_processos[slot_dono].estado != PROC_LIVRE) {
                    if (quadros_pool[i].eh_dados) {
                        idx_tabela = PAGINA_DADOS_OFFSET + quadros_pool[i].pag_virtual;
                    } else {
                        idx_tabela = quadros_pool[i].pag_virtual;
                    }
                    val_entrada = tab_processos[slot_dono].tabela_paginas[idx_tabela];

                    // Verifica se a CPU ligou o bit de acesso (bit 13)
                    if (val_entrada & MASK_ACESSO) {
                        quadros_pool[i].idade = quadros_pool[i].idade | 0x8000;
                        // Zera o bit de acesso na entrada da tabela
                        tab_processos[slot_dono].tabela_paginas[idx_tabela] = val_entrada & ~MASK_ACESSO;
                    }
                }
            }
            i = i + 1;
        }
    }

    so_trata_pendencias();

    if (processo_atual == -1) {
        metricas.tempo_ocioso = metricas.tempo_ocioso + 1;
        return;
    }

    quantum_restante = quantum_restante - 1;
    if (quantum_restante <= 0) {
        metricas.n_preempcoes_total = metricas.n_preempcoes_total + 1;
        tab_processos[processo_atual].n_preempcoes = tab_processos[processo_atual].n_preempcoes + 1;

        so_salva_quadro(processo_atual, quadro);
        so_muda_estado(processo_atual, PROC_PRONTO);

        proximo = so_escolhe_proximo();
        if (proximo == -1) {
            proximo = processo_atual;
        }

        processo_atual = proximo;
        so_muda_estado(processo_atual, PROC_EXECUTANDO);
        so_restaura_quadro(processo_atual, quadro);
        quantum_restante = quantum_config;
    }
}

// ============================================================================
// Tratamento de Chamadas de Sistema (Syscalls via trap 7)
// ============================================================================

int so_trata_syscall(int *quadro, int num, int arg1, int arg2)
{
    int slot;
    int proximo;
    int c;

    metricas.n_interrupcoes[7] = metricas.n_interrupcoes[7] + 1;
    slot = processo_atual;

    if (num == SO_LE) {
        if (bios_console_disponivel()) {
            c = bios_console_le();
            return c;
        }
        so_salva_quadro(slot, quadro);
        tab_processos[slot].bloqueado_por = BLOQ_CONSOLE_LE;
        so_muda_estado(slot, PROC_BLOQUEADO);

        proximo = so_escolhe_proximo();
        processo_atual = proximo;
        if (proximo != -1) {
            so_muda_estado(proximo, PROC_EXECUTANDO);
            so_restaura_quadro(proximo, quadro);
            quantum_restante = quantum_config;
        }
        return TROCOU_PROCESSO;
    }

    if (num == SO_ESCREVE) {
        so_escreve_caractere(arg1);
        return 0;
    }

    if (num == SO_CRIA_PROC) {
        // arg1 é o ID do programa no disco simulado
        return so_cria_proc_interno(arg1);
    }

    if (num == SO_MATA_PROC) {
        so_salva_quadro(slot, quadro);
        if (arg1 == 0 || arg1 == tab_processos[slot].pid) {
            so_mata_proc_interno(slot);
        } else {
            int alvo = procura_slot_por_pid(arg1);
            if (alvo != -1) {
                so_mata_proc_interno(alvo);
                return 0;
            }
            return -1;
        }

        proximo = so_escolhe_proximo();
        processo_atual = proximo;
        if (proximo != -1) {
            so_muda_estado(proximo, PROC_EXECUTANDO);
            so_restaura_quadro(proximo, quadro);
            quantum_restante = quantum_config;
        }
        return TROCOU_PROCESSO;
    }

    if (num == SO_ESPERA_PROC) {
        if (arg1 == tab_processos[slot].pid) return -1;
        int alvo = procura_slot_por_pid(arg1);
        if (alvo == -1 || tab_processos[alvo].estado == PROC_MORTO) return -1;

        so_salva_quadro(slot, quadro);
        tab_processos[slot].bloqueado_por = BLOQ_ESPERA_PROC;
        tab_processos[slot].esperando_pid = arg1;
        so_muda_estado(slot, PROC_BLOQUEADO);

        proximo = so_escolhe_proximo();
        processo_atual = proximo;
        if (proximo != -1) {
            so_muda_estado(proximo, PROC_EXECUTANDO);
            so_restaura_quadro(proximo, quadro);
            quantum_restante = quantum_config;
        }
        return TROCOU_PROCESSO;
    }

    return -1;
}

// ============================================================================
// Inicialização do Sistema Operacional
// ============================================================================

void so_inicializa(int *quadro_boot)
{
    int i;
    int pid_init;

    tempo_sistema = 0;
    processo_atual = -1;
    proximo_pid = 1;
    escalonador_tipo = CONFIG_ESCALONADOR;
    quantum_config = CONFIG_QUANTUM;
    quantum_restante = CONFIG_QUANTUM;

    metricas.n_processos_criados = 0;
    metricas.tempo_total = 0;
    metricas.tempo_ocioso = 0;
    metricas.n_preempcoes_total = 0;
    metricas.n_faltas_pagina_total = 0;
    metricas.n_substituicoes_total = 0;
    metricas.n_escritas_disco_total = 0;
    i = 0;
    while (i < 16) {
        metricas.n_interrupcoes[i] = 0;
        i = i + 1;
    }

    i = 0;
    while (i < MAX_PROCESSOS) {
        tab_processos[i].estado = PROC_LIVRE;
        tab_processos[i].pid = 0;
        i = i + 1;
    }

    fila_inicializa();
    memoria_inicializa();
    disco_inicializa_programas();

    // Cria o processo Init (PID 1) a partir do programa 0 do disco
    pid_init = so_cria_proc_interno(PROG_INIT);
    (void) pid_init;

    processo_atual = so_escolhe_proximo();
    so_muda_estado(processo_atual, PROC_EXECUTANDO);

    // Preenche o quadro de boot para o primeiro rete
    i = 0;
    while (i < 16) {
        quadro_boot[i] = tab_processos[processo_atual].quadro[i];
        i = i + 1;
    }
}

// ============================================================================
// Relatório Final e Estatísticas do SO
// ============================================================================

void so_print_str(char *s)
{
    while (*s != 0) {
        so_escreve_caractere(*s);
        s = s + 1;
    }
}

void so_puts(char *s)
{
    so_print_str(s);
    so_escreve_caractere(10);
}

void so_nova_linha(void)
{
    so_escreve_caractere(10);
}

void so_print_dec(int v)
{
    char buf[8];
    int i;
    int neg;

    i = 0;
    neg = 0;
    if (v < 0) {
        neg = 1;
        v = -v;
    }
    if (v == 0) {
        buf[0] = '0';
        i = 1;
    }
    while (v > 0) {
        buf[i] = (v % 10) + '0';
        i = i + 1;
        v = v / 10;
    }
    if (neg) so_escreve_caractere('-');
    while (i > 0) {
        i = i - 1;
        so_escreve_caractere(buf[i]);
    }
}


void so_imprime_relatorio(void)
{
    int i;
    struct Processo *p;

    so_nova_linha();
    so_puts("========================================");
    so_puts("  RELATORIO DE EXECUCAO DO SO MANCHA (T3)");
    so_puts("========================================");

    so_print_str("Modo Pag: ");
    if (CONFIG_DEMAND_PAGING == MODO_POR_DEMANDA) {
        so_puts("Por Demanda (Partes II/III)");
    } else {
        so_puts("Carga Completa (Parte I)");
    }

    so_print_str("Algoritmo Subst: ");
    if (CONFIG_SUBST_ALGO == SUBST_LRU) {
        so_puts("LRU (Envelhecimento)");
    } else {
        so_puts("FIFO");
    }

    so_print_str("Limite Quadros: ");
    so_print_dec(CONFIG_MAX_QUADROS_USUARIO);
    so_puts(" quadros");

    so_print_str("Quantum: "); so_print_dec(CONFIG_QUANTUM); so_puts(" tiques");
    so_print_str("Tempo total exec: "); so_print_dec(metricas.tempo_total); so_puts(" tiques");
    so_print_str("Tempo ocioso:     "); so_print_dec(metricas.tempo_ocioso); so_puts(" tiques");
    so_print_str("Processos criados:"); so_print_dec(metricas.n_processos_criados); so_nova_linha();
    so_print_str("Total preempcoes: "); so_print_dec(metricas.n_preempcoes_total); so_nova_linha();
    so_print_str("Faltas de Pagina: "); so_print_dec(metricas.n_faltas_pagina_total); so_nova_linha();
    so_print_str("Substituicoes:    "); so_print_dec(metricas.n_substituicoes_total); so_nova_linha();
    so_print_str("Escritas Disco:   "); so_print_dec(metricas.n_escritas_disco_total); so_nova_linha();

    so_puts("----------------------------------------");
    so_puts("Contagem de Interrupcoes por Tipo:");
    so_print_str("  [1] Protecao Seg:  "); so_print_dec(metricas.n_interrupcoes[1]); so_nova_linha();
    so_print_str("  [5] Falta Pagina:  "); so_print_dec(metricas.n_interrupcoes[5]); so_nova_linha();
    so_print_str("  [7] Syscalls:      "); so_print_dec(metricas.n_interrupcoes[7]); so_nova_linha();
    so_print_str("  [8] Console:       "); so_print_dec(metricas.n_interrupcoes[8]); so_nova_linha();
    so_print_str("  [10] Relogio:      "); so_print_dec(metricas.n_interrupcoes[10]); so_nova_linha();

    so_puts("----------------------------------------");
    so_puts("Metricas Individuais por Processo:");
    so_puts("PID Prog   Ret  Preemp Faltas T.Pronto T.Exec");
    so_puts("--- ----   ---  ------ ------ -------- ------");

    i = 0;
    while (i < MAX_PROCESSOS) {
        p = &tab_processos[i];
        if (p->pid > 0) {
            so_print_dec(p->pid);
            so_print_str("   ");
            so_print_str(tabela_programas[p->prog_id].nome);
            so_print_str("    ");
            so_print_dec(p->t_termino - p->t_criacao);
            so_print_str("    ");
            so_print_dec(p->n_preempcoes);
            so_print_str("      ");
            so_print_dec(p->faltas_pagina);
            so_print_str("      ");
            so_print_dec(p->tempo_pronto);
            so_print_str("      ");
            so_print_dec(p->tempo_executando);
            so_nova_linha();
        }
        i = i + 1;
    }
    so_puts("========================================");
}
