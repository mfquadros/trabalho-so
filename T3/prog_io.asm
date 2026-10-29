; ===== código gerado por mcc =====
.text
_f_main_io:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 91
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
	ld r0, 93
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 32
	push r0
	call _f_so_escreve
	add sp, 2
	call _f_so_le
	st r0, (bp+-2)
	ld r0, 91
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
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, (bp+-2)
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 93
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
