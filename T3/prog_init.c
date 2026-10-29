#include "u_lib.h"

void print_rotulo_init(void);
void print_pid(int val);

// A funcao principal DEVE ser a primeira funcao implementada no arquivo
// para que o mcc a posicione no endereco virtual 0.
void main_init(void)
{
    int pid_a1;
    int pid_a2;
    int pid_b;
    int pid_io;
    int pid_multi;
    int pid_prot;
    int res;

    so_escreve('\n');
    print_rotulo_init();
    so_escreve('I'); so_escreve('N'); so_escreve('I'); so_escreve('C'); so_escreve('I'); so_escreve('O'); so_escreve('\n');

    // 1. Cria Processo A1
    pid_a1 = so_cria_proc(PROG_COMP_A);
    print_rotulo_init();
    so_escreve('A'); so_escreve('1'); so_escreve(':'); print_pid(pid_a1); so_escreve('\n');

    // 2. Cria Processo A2 a partir do MESMO binario
    pid_a2 = so_cria_proc(PROG_COMP_A);
    print_rotulo_init();
    so_escreve('A'); so_escreve('2'); so_escreve(':'); print_pid(pid_a2); so_escreve('\n');

    // 3. Cria Processo B
    pid_b = so_cria_proc(PROG_COMP_B);
    print_rotulo_init();
    so_escreve('B'); so_escreve(':'); print_pid(pid_b); so_escreve('\n');

    // 4. Cria Processo IO
    pid_io = so_cria_proc(PROG_IO);
    print_rotulo_init();
    so_escreve('I'); so_escreve('O'); so_escreve(':'); print_pid(pid_io); so_escreve('\n');

    // 5. Cria Processo Multipage
    pid_multi = so_cria_proc(PROG_MULTIPAGE);
    print_rotulo_init();
    so_escreve('M'); so_escreve(':'); print_pid(pid_multi); so_escreve('\n');

    // 6. Cria Processo de Protecao
    pid_prot = so_cria_proc(PROG_PROTECAO);
    print_rotulo_init();
    so_escreve('P'); so_escreve(':'); print_pid(pid_prot); so_escreve('\n');

    // Espera filhos
    print_rotulo_init(); so_escreve('E'); so_escreve('s'); so_escreve('p'); so_escreve('\n');

    res = so_espera_proc(pid_a1);
    res = so_espera_proc(pid_a2);
    res = so_espera_proc(pid_b);
    res = so_espera_proc(pid_io);
    res = so_espera_proc(pid_multi);
    res = so_espera_proc(pid_prot);

    // Testes de validacao de erro
    res = so_espera_proc(1);
    (void) res;
    res = so_espera_proc(99);
    (void) res;

    print_rotulo_init(); so_escreve('F'); so_escreve('I'); so_escreve('M'); so_escreve('\n');
    so_mata_proc(0);
}

void print_rotulo_init(void)
{
    so_escreve('['); so_escreve('I'); so_escreve('N'); so_escreve('I'); so_escreve('T'); so_escreve(']'); so_escreve(' ');
}

void print_pid(int val)
{
    so_escreve(val + '0');
}
