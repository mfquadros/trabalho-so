#include "u_lib.h"

void main_protecao(void)
{
    int *ptr_codigo;
    so_escreve('['); so_escreve('P'); so_escreve('R'); so_escreve('O'); so_escreve('T'); so_escreve(']'); so_escreve(' ');

    // Endereco virtual 0 e' codigo (somente leitura sob paginacao).
    // Escrita em modo usuario gera Interrupcao 1 (violacao de protecao).
    ptr_codigo = (int *) 0;
    *ptr_codigo = 1234;

    so_escreve('E'); so_escreve('R'); so_escreve('R'); so_escreve('\n');
    so_mata_proc(0);
}
