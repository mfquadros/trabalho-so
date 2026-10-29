#include "u_lib.h"

void so_print_str(char *s)
{
    while (*s != 0) {
        so_escreve(*s);
        s = s + 1;
    }
}

void so_puts(char *s)
{
    so_print_str(s);
    so_escreve(10);
}

void so_nova_linha(void)
{
    so_escreve(10);
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
    if (neg) {
        so_escreve('-');
    }
    while (i > 0) {
        i = i - 1;
        so_escreve(buf[i]);
    }
}
