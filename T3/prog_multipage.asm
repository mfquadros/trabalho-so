; ===== código gerado por mcc =====
.text
_f_main_multipage:
	push bp
	ld bp, sp
	ld r0, 91
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 77
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
	call _f_fase1
	call _f_fase2
	call _f_fase3
	call _f_fase4
	ld r0, 91
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 77
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
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
_f_fase1:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 91
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 77
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 49
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
	ld r0, 0
	st r0, (bp+-4)
_L28a59072_4:
	ld r0, (bp+-4)
	push r0
	ld r0, 10
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28a59072_6
	ld r0, 0
	jmp _L28a59072_7
_L28a59072_6:
	ld r0, 1
_L28a59072_7:
	cmp r0, 0
	jmpc eq, _L28a59072_5
	ld r0, (bp+-2)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _L28a59072_4
_L28a59072_5:
	ld sp, bp
	pop bp
	ret
_f_fase2:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 91
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 77
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 50
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
	ld r0, 1
	st r0, (bp+-2)
	ld r0, 0
	st r0, (bp+-4)
_L28a59072_12:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28a59072_14
	ld r0, 0
	jmp _L28a59072_15
_L28a59072_14:
	ld r0, 1
_L28a59072_15:
	cmp r0, 0
	jmpc eq, _L28a59072_13
	ld r0, (bp+-2)
	push r0
	ld r0, (bp+-2)
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _L28a59072_12
_L28a59072_13:
	ld sp, bp
	pop bp
	ret
_f_fase3:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 91
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 77
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 51
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
	ld r0, 0
	st r0, (bp+-4)
_L28a59072_20:
	ld r0, (bp+-4)
	push r0
	ld r0, 300
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28a59072_22
	ld r0, 0
	jmp _L28a59072_23
_L28a59072_22:
	ld r0, 1
_L28a59072_23:
	cmp r0, 0
	jmpc eq, _L28a59072_21
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _L28a59072_20
_L28a59072_21:
	ld sp, bp
	pop bp
	ret
_f_fase4:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 91
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 77
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 52
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
	ld r0, 50
	st r0, (bp+-4)
	ld r0, 0
	st r0, (bp+-2)
_L28a59072_28:
	ld r0, (bp+-2)
	push r0
	ld r0, 10
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28a59072_30
	ld r0, 0
	jmp _L28a59072_31
_L28a59072_30:
	ld r0, 1
_L28a59072_31:
	cmp r0, 0
	jmpc eq, _L28a59072_29
	ld r0, (bp+-4)
	push r0
	ld r0, (bp+-2)
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-4)
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L28a59072_28
_L28a59072_29:
	ld sp, bp
	pop bp
	ret

.data

; ----- literais de string -----
