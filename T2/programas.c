#include "so.h"

// Funções de atraso para simular processamento e gastar instruções
void atraso_curto(void)
{
    int i;
    i = 0;
    while (i < 300) {
        i = i + 1;
    }
}

void atraso_medio(void)
{
    int i;
    i = 0;
    while (i < 800) {
        i = i + 1;
    }
}

// Processo 2: Computacional A
void proc_computacao_a(void)
{
    int k;
    so_puts("[PROC A] Iniciado (tarefa computacional)");
    k = 0;
    while (k < 5) {
        so_print_str("[A:");
        so_print_dec(k);
        so_print_str("] ");
        atraso_medio();
        k = k + 1;
    }
    so_nova_linha();
    so_puts("[PROC A] Concluido com sucesso");
    so_mata_proc(0);
}

// Processo 3: Computacional B
void proc_computacao_b(void)
{
    int k;
    so_puts("[PROC B] Iniciado (tarefa mista)");
    k = 0;
    while (k < 5) {
        so_print_str("[B:");
        so_print_dec(k);
        so_print_str("] ");
        atraso_curto();
        k = k + 1;
    }
    so_nova_linha();
    so_puts("[PROC B] Concluido com sucesso");
    so_mata_proc(0);
}

// Processo 4: Processo de E/S que lê e ecoa caracteres
void proc_io(void)
{
    int c;
    so_puts("[PROC IO] Iniciado (SO_LE)");
    c = so_le();
    so_print_str("[PROC IO] Caractere: '");
    so_escreve(c);
    so_puts("'");
    so_mata_proc(0);
}

// Processo Init (PID 1)
void proc_init(void)
{
    int pid_a;
    int pid_b;
    int pid_io;
    int res;

    so_nova_linha();
    so_puts("----------------------------------------");
    so_puts("[INIT] Inicializando SO Mancha");
    so_puts("[INIT] Modo usuario (S=0, I=0)");
    so_puts("----------------------------------------");

    // Cria processo A
    so_puts("[INIT] Criando Processo A...");
    pid_a = so_cria_proc(proc_computacao_a);
    so_print_str("[INIT] Processo A PID: ");
    so_print_dec(pid_a);
    so_nova_linha();

    // Cria processo B
    so_puts("[INIT] Criando Processo B...");
    pid_b = so_cria_proc(proc_computacao_b);
    so_print_str("[INIT] Processo B PID: ");
    so_print_dec(pid_b);
    so_nova_linha();

    // Espera pelo processo A
    so_print_str("[INIT] Esperando PID ");
    so_print_dec(pid_a);
    so_puts("...");
    res = so_espera_proc(pid_a);
    so_print_str("[INIT] Retomado! PID ");
    so_print_dec(pid_a);
    so_puts(" acabou.");

    // Espera pelo processo B
    so_print_str("[INIT] Esperando PID ");
    so_print_dec(pid_b);
    so_puts("...");
    res = so_espera_proc(pid_b);
    so_print_str("[INIT] Retomado! PID ");
    so_print_dec(pid_b);
    so_puts(" acabou.");

    // Teste de chamada com erro: tentar esperar por si mesmo
    res = so_espera_proc(1);
    if (res == -1) {
        so_puts("[INIT] Espera self: erro -1 (OK)");
    }

    // Teste de chamada com erro: tentar esperar por processo inexistente
    res = so_espera_proc(99);
    if (res == -1) {
        so_puts("[INIT] Espera inexist: erro -1 (OK)");
    }

    so_puts("[INIT] Filhos concluidos.");
    so_puts("[INIT] Finalizando init...");
    so_mata_proc(0);
}
