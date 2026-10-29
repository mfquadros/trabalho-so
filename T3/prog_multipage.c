#include "u_lib.h"

void fase1(void);
void fase2(void);
void fase3(void);
void fase4(void);

void main_multipage(void)
{
    so_escreve('['); so_escreve('M'); so_escreve(']'); so_escreve(' ');
    fase1();
    fase2();
    fase3();
    fase4();
    so_escreve('['); so_escreve('M'); so_escreve(':'); so_escreve('F'); so_escreve('I'); so_escreve('M'); so_escreve(']'); so_escreve('\n');
    so_mata_proc(0);
}

void fase1(void)
{
    int s;
    int i;
    so_escreve('['); so_escreve('M'); so_escreve(':'); so_escreve('1'); so_escreve(']'); so_escreve(' ');
    s = 0;
    i = 0;
    while (i < 10) {
        s = s + i;
        i = i + 1;
    }
}

void fase2(void)
{
    int p;
    int i;
    so_escreve('['); so_escreve('M'); so_escreve(':'); so_escreve('2'); so_escreve(']'); so_escreve(' ');
    p = 1;
    i = 0;
    while (i < 8) {
        p = p + p;
        i = i + 1;
    }
}

void fase3(void)
{
    int k;
    int i;
    so_escreve('['); so_escreve('M'); so_escreve(':'); so_escreve('3'); so_escreve(']'); so_escreve(' ');
    k = 0;
    i = 0;
    while (i < 300) {
        k = k + 1;
        i = i + 1;
    }
}

void fase4(void)
{
    int j;
    int acc;
    so_escreve('['); so_escreve('M'); so_escreve(':'); so_escreve('4'); so_escreve(']'); so_escreve(' ');
    acc = 50;
    j = 0;
    while (j < 10) {
        acc = acc - j;
        j = j + 1;
    }
}
