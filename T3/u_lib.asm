; u_lib.asm -- Syscalls em assembly para programas de usuario (T3)

; int so_le(void)
_f_so_le:
        push    bp
        ld      bp, sp
        ld      r0, 1                       ; SO_LE
        trap    7
        ld      sp, bp
        pop     bp
        ret

; int so_escreve(int c)
_f_so_escreve:
        push    bp
        ld      bp, sp
        ld      r0, 2                       ; SO_ESCREVE
        ld      r1, (bp+4)
        trap    7
        ld      sp, bp
        pop     bp
        ret

; int so_cria_proc(int prog_id)
_f_so_cria_proc:
        push    bp
        ld      bp, sp
        ld      r0, 3                       ; SO_CRIA_PROC
        ld      r1, (bp+4)
        trap    7
        ld      sp, bp
        pop     bp
        ret

; int so_mata_proc(int pid)
_f_so_mata_proc:
        push    bp
        ld      bp, sp
        ld      r0, 4                       ; SO_MATA_PROC
        ld      r1, (bp+4)
        trap    7
        ld      sp, bp
        pop     bp
        ret

; int so_espera_proc(int pid)
_f_so_espera_proc:
        push    bp
        ld      bp, sp
        ld      r0, 5                       ; SO_ESPERA_PROC
        ld      r1, (bp+4)
        trap    7
        ld      sp, bp
        pop     bp
        ret

_f_putchar:
        push    bp
        ld      bp, sp
        ld      r0, 2
        ld      r1, (bp+4)
        trap    7
        ld      sp, bp
        pop     bp
        ret

_f_getchar:
        push    bp
        ld      bp, sp
        ld      r0, 1
        trap    7
        ld      sp, bp
        pop     bp
        ret
