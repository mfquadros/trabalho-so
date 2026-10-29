#include "u_lib.h"

void main_io(void)
{
    int c;
    so_escreve('['); so_escreve('I'); so_escreve('O'); so_escreve(']'); so_escreve(' ');
    c = so_le();
    so_escreve('['); so_escreve('I'); so_escreve('O'); so_escreve(':');
    so_escreve(c);
    so_escreve(']'); so_escreve('\n');
    so_mata_proc(0);
}
