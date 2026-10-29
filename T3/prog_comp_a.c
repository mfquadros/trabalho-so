#include "u_lib.h"

void atraso_a(void);

// A funcao principal DEVE ser a primeira funcao implementada no modulo,
// posicionando o ponto de entrada no endereco virtual 0 sob paginacao.
void main_comp_a(void)
{
    int k;
    so_escreve('['); so_escreve('A'); so_escreve(']'); so_escreve(' ');
    k = 0;
    while (k < 5) {
        so_escreve('['); so_escreve('A'); so_escreve(':');
        so_escreve(k + '0');
        so_escreve(']'); so_escreve(' ');
        atraso_a();
        k = k + 1;
    }
    so_escreve('\n');
    so_mata_proc(0);
}

void atraso_a(void)
{
    int i;
    i = 0;
    while (i < 800) {
        i = i + 1;
    }
}
