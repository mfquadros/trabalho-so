#ifndef U_LIB_H
#define U_LIB_H

// IDs dos programas no disco simulado
#define PROG_INIT        0
#define PROG_COMP_A      1
#define PROG_COMP_B      2
#define PROG_IO          3
#define PROG_MULTIPAGE   4
#define PROG_PROTECAO    5

// Chamadas de sistema (Syscalls)
int  so_le(void);
int  so_escreve(int c);
int  so_cria_proc(int prog_id);
int  so_mata_proc(int pid);
int  so_espera_proc(int pid);

int  putchar(int c);
int  getchar(void);

#endif // U_LIB_H
