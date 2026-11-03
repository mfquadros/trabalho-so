; ===== código gerado por mcc =====
.text
_f_main_comp_a:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 91
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 65
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
_L134af5d8_4:
	ld r0, (bp+-2)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L134af5d8_6
	ld r0, 0
	jmp _L134af5d8_7
_L134af5d8_6:
	ld r0, 1
_L134af5d8_7:
	cmp r0, 0
	jmpc eq, _L134af5d8_5
	ld r0, 91
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 65
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, (bp+-2)
	push r0
	ld r0, 48
	ld r1, r0
	pop r0
	add r0, r1
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
	call _f_atraso_a
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L134af5d8_4
_L134af5d8_5:
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
_f_atraso_a:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L134af5d8_12:
	ld r0, (bp+-2)
	push r0
	ld r0, 800
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L134af5d8_14
	ld r0, 0
	jmp _L134af5d8_15
_L134af5d8_14:
	ld r0, 1
_L134af5d8_15:
	cmp r0, 0
	jmpc eq, _L134af5d8_13
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L134af5d8_12
_L134af5d8_13:
	ld sp, bp
	pop bp
	ret

.data

; ----- literais de string -----
