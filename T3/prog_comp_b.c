#include "u_lib.h"

void atraso_b(void);

void main_comp_b(void)
{
    int k;
    so_escreve('['); so_escreve('B'); so_escreve(']'); so_escreve(' ');
    k = 0;
    while (k < 5) {
        so_escreve('['); so_escreve('B'); so_escreve(':');
        so_escreve(k + '0');
        so_escreve(']'); so_escreve(' ');
        atraso_b();
        k = k + 1;
    }
    so_escreve('\n');
    so_mata_proc(0);
}

void atraso_b(void)
{
    int i;
    i = 0;
    while (i < 400) {
        i = i + 1;
    }
}
