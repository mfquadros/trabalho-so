; ===== código gerado por mcc =====
.text
_f_main_init:
	push bp
	ld bp, sp
	sub sp, 14
	ld r0, 10
	push r0
	call _f_so_escreve
	add sp, 2
	call _f_print_rotulo_init
	ld r0, 73
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 78
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 73
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 67
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 73
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 79
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 10
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 1
	push r0
	call _f_so_cria_proc
	add sp, 2
	st r0, (bp+-2)
	call _f_print_rotulo_init
	ld r0, 65
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 49
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, (bp+-2)
	push r0
	call _f_print_pid
	add sp, 2
	ld r0, 10
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 1
	push r0
	call _f_so_cria_proc
	add sp, 2
	st r0, (bp+-4)
	call _f_print_rotulo_init
	ld r0, 65
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 50
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, (bp+-4)
	push r0
	call _f_print_pid
	add sp, 2
	ld r0, 10
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 2
	push r0
	call _f_so_cria_proc
	add sp, 2
	st r0, (bp+-6)
	call _f_print_rotulo_init
	ld r0, 66
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, (bp+-6)
	push r0
	call _f_print_pid
	add sp, 2
	ld r0, 10
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 3
	push r0
	call _f_so_cria_proc
	add sp, 2
	st r0, (bp+-8)
	call _f_print_rotulo_init
	ld r0, 73
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 79
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, (bp+-8)
	push r0
	call _f_print_pid
	add sp, 2
	ld r0, 10
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 4
	push r0
	call _f_so_cria_proc
	add sp, 2
	st r0, (bp+-10)
	call _f_print_rotulo_init
	ld r0, 77
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, (bp+-10)
	push r0
	call _f_print_pid
	add sp, 2
	ld r0, 10
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 5
	push r0
	call _f_so_cria_proc
	add sp, 2
	st r0, (bp+-12)
	call _f_print_rotulo_init
	ld r0, 80
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, (bp+-12)
	push r0
	call _f_print_pid
	add sp, 2
	ld r0, 10
	push r0
	call _f_so_escreve
	add sp, 2
	call _f_print_rotulo_init
	ld r0, 69
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 115
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 112
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 10
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, (bp+-2)
	push r0
	call _f_so_espera_proc
	add sp, 2
	st r0, (bp+-14)
	ld r0, (bp+-4)
	push r0
	call _f_so_espera_proc
	add sp, 2
	st r0, (bp+-14)
	ld r0, (bp+-6)
	push r0
	call _f_so_espera_proc
	add sp, 2
	st r0, (bp+-14)
	ld r0, (bp+-8)
	push r0
	call _f_so_espera_proc
	add sp, 2
	st r0, (bp+-14)
	ld r0, (bp+-10)
	push r0
	call _f_so_espera_proc
	add sp, 2
	st r0, (bp+-14)
	ld r0, (bp+-12)
	push r0
	call _f_so_espera_proc
	add sp, 2
	st r0, (bp+-14)
	ld r0, 1
	push r0
	call _f_so_espera_proc
	add sp, 2
	st r0, (bp+-14)
	ld r0, (bp+-14)
	ld r0, 99
	push r0
	call _f_so_espera_proc
	add sp, 2
	st r0, (bp+-14)
	ld r0, (bp+-14)
	call _f_print_rotulo_init
	ld r0, 70
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 73
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 77
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 10
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 0
	push r0
	call _f_so_mata_proc
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_print_rotulo_init:
	push bp
	ld bp, sp
	ld r0, 91
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 73
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 78
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 73
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 84
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 93
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 32
	push r0
	call _f_so_escreve
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_print_pid:
	push bp
	ld bp, sp
	ld r0, (bp+4)
	push r0
	ld r0, 48
	ld r1, r0
	pop r0
	add r0, r1
	push r0
	call _f_so_escreve
	add sp, 2
	ld sp, bp
	pop bp
	ret

.data

; ----- literais de string -----
