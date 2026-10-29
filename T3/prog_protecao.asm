; ===== código gerado por mcc =====
.text
_f_main_protecao:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 91
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 80
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 82
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 79
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
	ld r0, 0
	st r0, (bp+-2)
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, 1234
	pop r1
	st r0, (r1)
	ld r0, 69
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 82
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 82
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

.data

; ----- literais de string -----
