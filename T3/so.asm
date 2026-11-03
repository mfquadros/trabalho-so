; ===== código gerado por mcc =====
.text
_f_fila_inicializa:
	push bp
	ld bp, sp
	ld r0, 0
	st r0, (_g_fila_inicio)
	ld r0, 0
	st r0, (_g_fila_fim)
	ld r0, 0
	st r0, (_g_fila_n)
	ld sp, bp
	pop bp
	ret
_f_fila_insere:
	push bp
	ld bp, sp
	ld r0, (_g_fila_n)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _Le723f7f6_6
	ld r0, 0
	jmp _Le723f7f6_7
_Le723f7f6_6:
	ld r0, 1
_Le723f7f6_7:
	cmp r0, 0
	jmpc eq, _Le723f7f6_8
	ld sp, bp
	pop bp
	ret
_Le723f7f6_8:
	ld r0, _g_fila_prontos
	push r0
	ld r0, (_g_fila_fim)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+4)
	pop r1
	st r0, (r1)
	ld r0, (_g_fila_fim)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_fila_fim)
	ld r0, (_g_fila_fim)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _Le723f7f6_9
	ld r0, 0
	jmp _Le723f7f6_10
_Le723f7f6_9:
	ld r0, 1
_Le723f7f6_10:
	cmp r0, 0
	jmpc eq, _Le723f7f6_11
	ld r0, 0
	st r0, (_g_fila_fim)
_Le723f7f6_11:
	ld r0, (_g_fila_n)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_fila_n)
	ld sp, bp
	pop bp
	ret
_f_fila_retira:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, (_g_fila_n)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_18
	ld r0, 0
	jmp _Le723f7f6_19
_Le723f7f6_18:
	ld r0, 1
_Le723f7f6_19:
	cmp r0, 0
	jmpc eq, _Le723f7f6_20
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Le723f7f6_20:
	ld r0, _g_fila_prontos
	push r0
	ld r0, (_g_fila_inicio)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	st r0, (bp+-2)
	ld r0, (_g_fila_inicio)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_fila_inicio)
	ld r0, (_g_fila_inicio)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _Le723f7f6_21
	ld r0, 0
	jmp _Le723f7f6_22
_Le723f7f6_21:
	ld r0, 1
_Le723f7f6_22:
	cmp r0, 0
	jmpc eq, _Le723f7f6_23
	ld r0, 0
	st r0, (_g_fila_inicio)
_Le723f7f6_23:
	ld r0, (_g_fila_n)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (_g_fila_n)
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_disco_inicializa_programas:
	push bp
	ld bp, sp
	ld r0, 6
	st r0, (_g_n_programas)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 0
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 0
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+2)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 0
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 3
	pop r1
	st r0, (r1+4)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 0
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 0
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 105
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 0
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 1
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 110
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 0
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 2
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 105
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 0
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 3
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 116
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 0
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 4
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 1
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	pop r1
	st r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 1
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 3
	pop r1
	st r0, (r1+2)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 1
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	pop r1
	st r0, (r1+4)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 1
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 0
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 112
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 1
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 1
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 114
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 1
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 2
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 111
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 1
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 3
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 99
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 1
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 4
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 95
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 1
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 5
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 97
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 1
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 6
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 2
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 2
	pop r1
	st r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 2
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 4
	pop r1
	st r0, (r1+2)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 2
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	pop r1
	st r0, (r1+4)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 2
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 0
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 112
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 2
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 1
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 114
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 2
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 2
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 111
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 2
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 3
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 99
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 2
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 4
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 95
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 2
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 5
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 98
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 2
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 6
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 3
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 3
	pop r1
	st r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 3
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 5
	pop r1
	st r0, (r1+2)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 3
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	pop r1
	st r0, (r1+4)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 3
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 0
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 112
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 3
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 1
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 114
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 3
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 2
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 111
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 3
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 3
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 99
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 3
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 4
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 95
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 3
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 5
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 105
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 3
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 6
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 111
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 3
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 7
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 4
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 4
	pop r1
	st r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 4
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 6
	pop r1
	st r0, (r1+2)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 4
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 3
	pop r1
	st r0, (r1+4)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 4
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 0
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 109
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 4
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 1
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 117
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 4
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 2
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 108
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 4
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 3
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 116
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 4
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 4
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 105
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 4
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 5
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 5
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 5
	pop r1
	st r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 5
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 9
	pop r1
	st r0, (r1+2)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 5
	mul r0, 22
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	pop r1
	st r0, (r1+4)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 5
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 0
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 112
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 5
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 1
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 114
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 5
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 2
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 111
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 5
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 3
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 116
	pop r1
	stb r0, (r1)
	ld r0, _g_tabela_programas
	push r0
	ld r0, 5
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	ld r0, 4
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	stb r0, (r1)
	ld sp, bp
	pop bp
	ret
_f_so_disco_le_bloco:
	push bp
	ld bp, sp
	sub sp, 10
	ld r0, 18
	st r0, (bp+-8)
	ld r0, 40
	st r0, (bp+-10)
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-10)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	mul r0, r1
	ld r1, r0
	pop r0
	div r0, r1
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	ld r2, r0
	div r0, r1
	mul r0, r1
	sub r2, r0
	ld r0, r2
	st r0, (bp+-2)
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	div r0, r1
	push r0
	ld r0, (bp+-10)
	ld r1, r0
	pop r0
	ld r2, r0
	div r0, r1
	mul r0, r1
	sub r2, r0
	ld r0, r2
	st r0, (bp+-4)
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	ld r2, r0
	div r0, r1
	mul r0, r1
	sub r2, r0
	ld r0, r2
	st r0, (bp+-6)
	ld r0, (bp+6)
	push r0
	ld r0, (bp+-6)
	push r0
	ld r0, (bp+-4)
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_disco_le_setor
	add sp, 8
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_so_disco_escreve_bloco:
	push bp
	ld bp, sp
	sub sp, 10
	ld r0, 18
	st r0, (bp+-8)
	ld r0, 40
	st r0, (bp+-10)
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-10)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	mul r0, r1
	ld r1, r0
	pop r0
	div r0, r1
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	ld r2, r0
	div r0, r1
	mul r0, r1
	sub r2, r0
	ld r0, r2
	st r0, (bp+-2)
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	div r0, r1
	push r0
	ld r0, (bp+-10)
	ld r1, r0
	pop r0
	ld r2, r0
	div r0, r1
	mul r0, r1
	sub r2, r0
	ld r0, r2
	st r0, (bp+-4)
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	ld r2, r0
	div r0, r1
	mul r0, r1
	sub r2, r0
	ld r0, r2
	st r0, (bp+-6)
	ld r0, (bp+6)
	push r0
	ld r0, (bp+-6)
	push r0
	ld r0, (bp+-4)
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_disco_escreve_setor
	add sp, 8
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_memoria_inicializa:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (_g_contador_ordem_fifo)
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_28:
	ld r0, (bp+-2)
	push r0
	ld r0, 24
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_30
	ld r0, 0
	jmp _Le723f7f6_31
_Le723f7f6_30:
	ld r0, 1
_Le723f7f6_31:
	cmp r0, 0
	jmpc eq, _Le723f7f6_29
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+2)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	xor r0, -1
	add r0, 1
	pop r1
	st r0, (r1+4)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+6)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+8)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+10)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+12)
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_28
_Le723f7f6_29:
	ld sp, bp
	pop bp
	ret
_f_procura_slot_por_pid:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_43:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_45
	ld r0, 0
	jmp _Le723f7f6_46
_Le723f7f6_45:
	ld r0, 1
_Le723f7f6_46:
	cmp r0, 0
	jmpc eq, _Le723f7f6_44
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_49
	ld r0, 0
	jmp _Le723f7f6_50
_Le723f7f6_49:
	ld r0, 1
_Le723f7f6_50:
	cmp r0, 0
	jmpc eq, _Le723f7f6_48
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, (bp+4)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_51
	ld r0, 0
	jmp _Le723f7f6_52
_Le723f7f6_51:
	ld r0, 1
_Le723f7f6_52:
	cmp r0, 0
	jmpc eq, _Le723f7f6_48
	ld r0, 1
	jmp _Le723f7f6_47
_Le723f7f6_48:
	ld r0, 0
_Le723f7f6_47:
	cmp r0, 0
	jmpc eq, _Le723f7f6_53
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
_Le723f7f6_53:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_43
_Le723f7f6_44:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_escolhe_quadro_vitima:
	push bp
	ld bp, sp
	sub sp, 6
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-4)
	ld r0, 0
	st r0, (bp+-6)
	ld r0, 1
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_90
	ld r0, 0
	jmp _Le723f7f6_91
_Le723f7f6_90:
	ld r0, 1
_Le723f7f6_91:
	cmp r0, 0
	jmpc eq, _Le723f7f6_92
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_93:
	ld r0, (bp+-2)
	push r0
	ld r0, 24
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_95
	ld r0, 0
	jmp _Le723f7f6_96
_Le723f7f6_95:
	ld r0, 1
_Le723f7f6_96:
	cmp r0, 0
	jmpc eq, _Le723f7f6_94
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1)
	cmp r0, 0
	jmpc eq, _Le723f7f6_98
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+8)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_99
	ld r0, 0
	jmp _Le723f7f6_100
_Le723f7f6_99:
	ld r0, 1
_Le723f7f6_100:
	cmp r0, 0
	jmpc eq, _Le723f7f6_98
	ld r0, 1
	jmp _Le723f7f6_97
_Le723f7f6_98:
	ld r0, 0
_Le723f7f6_97:
	cmp r0, 0
	jmpc eq, _Le723f7f6_101
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_104
	ld r0, 0
	jmp _Le723f7f6_105
_Le723f7f6_104:
	ld r0, 1
_Le723f7f6_105:
	cmp r0, 0
	jmpc ne, _Le723f7f6_103
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+10)
	push r0
	ld r0, (bp+-6)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_106
	ld r0, 0
	jmp _Le723f7f6_107
_Le723f7f6_106:
	ld r0, 1
_Le723f7f6_107:
	cmp r0, 0
	jmpc ne, _Le723f7f6_103
	ld r0, 0
	jmp _Le723f7f6_102
_Le723f7f6_103:
	ld r0, 1
_Le723f7f6_102:
	cmp r0, 0
	jmpc eq, _Le723f7f6_108
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+10)
	st r0, (bp+-6)
	ld r0, (bp+-2)
	st r0, (bp+-4)
_Le723f7f6_108:
_Le723f7f6_101:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_93
_Le723f7f6_94:
	jmp _Le723f7f6_109
_Le723f7f6_92:
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_110:
	ld r0, (bp+-2)
	push r0
	ld r0, 24
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_112
	ld r0, 0
	jmp _Le723f7f6_113
_Le723f7f6_112:
	ld r0, 1
_Le723f7f6_113:
	cmp r0, 0
	jmpc eq, _Le723f7f6_111
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1)
	cmp r0, 0
	jmpc eq, _Le723f7f6_115
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+8)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_116
	ld r0, 0
	jmp _Le723f7f6_117
_Le723f7f6_116:
	ld r0, 1
_Le723f7f6_117:
	cmp r0, 0
	jmpc eq, _Le723f7f6_115
	ld r0, 1
	jmp _Le723f7f6_114
_Le723f7f6_115:
	ld r0, 0
_Le723f7f6_114:
	cmp r0, 0
	jmpc eq, _Le723f7f6_118
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_121
	ld r0, 0
	jmp _Le723f7f6_122
_Le723f7f6_121:
	ld r0, 1
_Le723f7f6_122:
	cmp r0, 0
	jmpc ne, _Le723f7f6_120
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+12)
	push r0
	ld r0, (bp+-6)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_123
	ld r0, 0
	jmp _Le723f7f6_124
_Le723f7f6_123:
	ld r0, 1
_Le723f7f6_124:
	cmp r0, 0
	jmpc ne, _Le723f7f6_120
	ld r0, 0
	jmp _Le723f7f6_119
_Le723f7f6_120:
	ld r0, 1
_Le723f7f6_119:
	cmp r0, 0
	jmpc eq, _Le723f7f6_125
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+12)
	st r0, (bp+-6)
	ld r0, (bp+-2)
	st r0, (bp+-4)
_Le723f7f6_125:
_Le723f7f6_118:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_110
_Le723f7f6_111:
_Le723f7f6_109:
	ld r0, (bp+-4)
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_quadro_aloca:
	push bp
	ld bp, sp
	sub sp, 24
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-4)
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_155:
	ld r0, (bp+-2)
	push r0
	ld r0, 24
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_157
	ld r0, 0
	jmp _Le723f7f6_158
_Le723f7f6_157:
	ld r0, 1
_Le723f7f6_158:
	cmp r0, 0
	jmpc eq, _Le723f7f6_156
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_159
	ld r0, 0
	jmp _Le723f7f6_160
_Le723f7f6_159:
	ld r0, 1
_Le723f7f6_160:
	cmp r0, 0
	jmpc eq, _Le723f7f6_161
	ld r0, (bp+-2)
	st r0, (bp+-4)
	jmp _Le723f7f6_156
_Le723f7f6_161:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_155
_Le723f7f6_156:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_162
	ld r0, 0
	jmp _Le723f7f6_163
_Le723f7f6_162:
	ld r0, 1
_Le723f7f6_163:
	cmp r0, 0
	jmpc eq, _Le723f7f6_164
	call _f_escolhe_quadro_vitima
	st r0, (bp+-6)
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_165
	ld r0, 0
	jmp _Le723f7f6_166
_Le723f7f6_165:
	ld r0, 1
_Le723f7f6_166:
	cmp r0, 0
	jmpc eq, _Le723f7f6_167
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Le723f7f6_167:
	ld r0, (bp+-6)
	st r0, (bp+-4)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-6)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+2)
	st r0, (bp+-8)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-6)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+6)
	st r0, (bp+-10)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-6)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+4)
	st r0, (bp+-12)
	ld r0, (bp+-12)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _Le723f7f6_172
	ld r0, 0
	jmp _Le723f7f6_173
_Le723f7f6_172:
	ld r0, 1
_Le723f7f6_173:
	cmp r0, 0
	jmpc eq, _Le723f7f6_171
	ld r0, (bp+-12)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_174
	ld r0, 0
	jmp _Le723f7f6_175
_Le723f7f6_174:
	ld r0, 1
_Le723f7f6_175:
	cmp r0, 0
	jmpc eq, _Le723f7f6_171
	ld r0, 1
	jmp _Le723f7f6_170
_Le723f7f6_171:
	ld r0, 0
_Le723f7f6_170:
	cmp r0, 0
	jmpc eq, _Le723f7f6_169
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-12)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_176
	ld r0, 0
	jmp _Le723f7f6_177
_Le723f7f6_176:
	ld r0, 1
_Le723f7f6_177:
	cmp r0, 0
	jmpc eq, _Le723f7f6_169
	ld r0, 1
	jmp _Le723f7f6_168
_Le723f7f6_169:
	ld r0, 0
_Le723f7f6_168:
	cmp r0, 0
	jmpc eq, _Le723f7f6_178
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-6)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+8)
	cmp r0, 0
	jmpc eq, _Le723f7f6_179
	ld r0, 128
	push r0
	ld r0, (bp+-10)
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-14)
	jmp _Le723f7f6_180
_Le723f7f6_179:
	ld r0, (bp+-10)
	st r0, (bp+-14)
_Le723f7f6_180:
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-12)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+48)
	push r0
	ld r0, (bp+-14)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	st r0, (bp+-16)
	ld r0, (bp+-16)
	push r0
	ld r0, 14
	ld r1, r0
	pop r0
	shr r0, r1
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	and r0, r1
	st r0, (bp+-18)
	ld r0, (bp+-18)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_181
	ld r0, 0
	jmp _Le723f7f6_182
_Le723f7f6_181:
	ld r0, 1
_Le723f7f6_182:
	cmp r0, 0
	jmpc eq, _Le723f7f6_183
	ld r0, 56
	push r0
	ld r0, (bp+-6)
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-20)
	ld r0, (bp+-20)
	push r0
	ld r0, 512
	ld r1, r0
	pop r0
	mul r0, r1
	st r0, (bp+-22)
	ld r0, 10
	push r0
	ld r0, (bp+-8)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	mul r0, r1
	ld r1, r0
	pop r0
	add r0, r1
	push r0
	ld r0, (bp+-10)
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-24)
	ld r0, (bp+-22)
	push r0
	ld r0, (bp+-24)
	push r0
	call _f_so_disco_escreve_bloco
	add sp, 4
	ld r0, (_g_metricas+12)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_metricas+12)
_Le723f7f6_183:
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-12)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+48)
	push r0
	ld r0, (bp+-14)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
_Le723f7f6_178:
	ld r0, (_g_metricas+10)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_metricas+10)
_Le723f7f6_164:
	ld r0, (_g_contador_ordem_fifo)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_contador_ordem_fifo)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	pop r1
	st r0, (r1)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+4)
	pop r1
	st r0, (r1+2)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+6)
	pop r1
	st r0, (r1+4)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+8)
	pop r1
	st r0, (r1+6)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+10)
	pop r1
	st r0, (r1+8)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, (_g_contador_ordem_fifo)
	pop r1
	st r0, (r1+10)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 32768
	pop r1
	st r0, (r1+12)
	ld r0, 56
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	add r0, r1
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_quadro_libera_todos:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_193:
	ld r0, (bp+-2)
	push r0
	ld r0, 24
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_195
	ld r0, 0
	jmp _Le723f7f6_196
_Le723f7f6_195:
	ld r0, 1
_Le723f7f6_196:
	cmp r0, 0
	jmpc eq, _Le723f7f6_194
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1)
	cmp r0, 0
	jmpc eq, _Le723f7f6_198
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, (bp+4)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_199
	ld r0, 0
	jmp _Le723f7f6_200
_Le723f7f6_199:
	ld r0, 1
_Le723f7f6_200:
	cmp r0, 0
	jmpc eq, _Le723f7f6_198
	ld r0, 1
	jmp _Le723f7f6_197
_Le723f7f6_198:
	ld r0, 0
_Le723f7f6_197:
	cmp r0, 0
	jmpc eq, _Le723f7f6_201
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+2)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	xor r0, -1
	add r0, 1
	pop r1
	st r0, (r1+4)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+6)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+8)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+10)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+12)
_Le723f7f6_201:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_193
_Le723f7f6_194:
	ld sp, bp
	pop bp
	ret
_f_so_cria_proc_interno:
	push bp
	ld bp, sp
	sub sp, 16
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_268
	ld r0, 0
	jmp _Le723f7f6_269
_Le723f7f6_268:
	ld r0, 1
_Le723f7f6_269:
	cmp r0, 0
	jmpc ne, _Le723f7f6_267
	ld r0, (bp+4)
	push r0
	ld r0, (_g_n_programas)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _Le723f7f6_270
	ld r0, 0
	jmp _Le723f7f6_271
_Le723f7f6_270:
	ld r0, 1
_Le723f7f6_271:
	cmp r0, 0
	jmpc ne, _Le723f7f6_267
	ld r0, 0
	jmp _Le723f7f6_266
_Le723f7f6_267:
	ld r0, 1
_Le723f7f6_266:
	cmp r0, 0
	jmpc eq, _Le723f7f6_272
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Le723f7f6_272:
	ld r0, _g_tabela_programas
	push r0
	ld r0, (bp+4)
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-16)
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-2)
	ld r0, 0
	st r0, (bp+-4)
_Le723f7f6_273:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_275
	ld r0, 0
	jmp _Le723f7f6_276
_Le723f7f6_275:
	ld r0, 1
_Le723f7f6_276:
	cmp r0, 0
	jmpc eq, _Le723f7f6_274
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-4)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_277
	ld r0, 0
	jmp _Le723f7f6_278
_Le723f7f6_277:
	ld r0, 1
_Le723f7f6_278:
	cmp r0, 0
	jmpc eq, _Le723f7f6_279
	ld r0, (bp+-4)
	st r0, (bp+-2)
	jmp _Le723f7f6_274
_Le723f7f6_279:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _Le723f7f6_273
_Le723f7f6_274:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_280
	ld r0, 0
	jmp _Le723f7f6_281
_Le723f7f6_280:
	ld r0, 1
_Le723f7f6_281:
	cmp r0, 0
	jmpc eq, _Le723f7f6_282
	ld r0, 0
	st r0, (bp+-4)
_Le723f7f6_283:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_285
	ld r0, 0
	jmp _Le723f7f6_286
_Le723f7f6_285:
	ld r0, 1
_Le723f7f6_286:
	cmp r0, 0
	jmpc eq, _Le723f7f6_284
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-4)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_287
	ld r0, 0
	jmp _Le723f7f6_288
_Le723f7f6_287:
	ld r0, 1
_Le723f7f6_288:
	cmp r0, 0
	jmpc eq, _Le723f7f6_289
	ld r0, (bp+-4)
	st r0, (bp+-2)
	jmp _Le723f7f6_284
_Le723f7f6_289:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _Le723f7f6_283
_Le723f7f6_284:
_Le723f7f6_282:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_290
	ld r0, 0
	jmp _Le723f7f6_291
_Le723f7f6_290:
	ld r0, 1
_Le723f7f6_291:
	cmp r0, 0
	jmpc eq, _Le723f7f6_292
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Le723f7f6_292:
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-14)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, (_g_proximo_pid)
	pop r1
	st r0, (r1)
	ld r0, (_g_proximo_pid)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_proximo_pid)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+6)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 500
	pop r1
	st r0, (r1+8)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, (bp+4)
	pop r1
	st r0, (r1+42)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, (bp+-16)
	ld r1, r0
	ld r0, (r1+4)
	pop r1
	st r0, (r1+44)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 1
	pop r1
	st r0, (r1+46)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, _g_tabelas_paginas
	push r0
	ld r0, (bp+-2)
	mul r0, 512
	pop r1
	add r1, r0
	ld r0, r1
	push r0
	ld r0, 0
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, r1
	pop r1
	st r0, (r1+48)
	ld r0, 0
	st r0, (bp+-4)
_Le723f7f6_293:
	ld r0, (bp+-4)
	push r0
	ld r0, 256
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_295
	ld r0, 0
	jmp _Le723f7f6_296
_Le723f7f6_295:
	ld r0, 1
_Le723f7f6_296:
	cmp r0, 0
	jmpc eq, _Le723f7f6_294
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1+48)
	push r0
	ld r0, (bp+-4)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _Le723f7f6_293
_Le723f7f6_294:
	ld r0, 1
	push r0
	ld r0, 0
	push r0
	ld r0, (bp+-2)
	push r0
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_quadro_aloca
	add sp, 8
	st r0, (bp+-6)
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_297
	ld r0, 0
	jmp _Le723f7f6_298
_Le723f7f6_297:
	ld r0, 1
_Le723f7f6_298:
	cmp r0, 0
	jmpc eq, _Le723f7f6_299
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+2)
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Le723f7f6_299:
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, (bp+-6)
	pop r1
	st r0, (r1+50)
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1+48)
	push r0
	ld r0, 128
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 57344
	push r0
	ld r0, (bp+-6)
	push r0
	ld r0, 8191
	ld r1, r0
	pop r0
	and r0, r1
	ld r1, r0
	pop r0
	or r0, r1
	pop r1
	st r0, (r1)
	ld r0, (bp+4)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_300
	ld r0, 0
	jmp _Le723f7f6_301
_Le723f7f6_300:
	ld r0, 1
_Le723f7f6_301:
	cmp r0, 0
	jmpc eq, _Le723f7f6_302
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1+48)
	push r0
	ld r0, 128
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 57344
	push r0
	ld r0, (bp+-6)
	push r0
	ld r0, 8191
	ld r1, r0
	pop r0
	and r0, r1
	ld r1, r0
	pop r0
	or r0, r1
	pop r1
	st r0, (r1)
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 6
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 1024
	pop r1
	st r0, (r1)
	jmp _Le723f7f6_303
_Le723f7f6_302:
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 6
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 512
	pop r1
	st r0, (r1)
_Le723f7f6_303:
	ld r0, 0
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_306
	ld r0, 0
	jmp _Le723f7f6_307
_Le723f7f6_306:
	ld r0, 1
_Le723f7f6_307:
	cmp r0, 0
	jmpc ne, _Le723f7f6_305
	ld r0, (bp+4)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_308
	ld r0, 0
	jmp _Le723f7f6_309
_Le723f7f6_308:
	ld r0, 1
_Le723f7f6_309:
	cmp r0, 0
	jmpc ne, _Le723f7f6_305
	ld r0, 0
	jmp _Le723f7f6_304
_Le723f7f6_305:
	ld r0, 1
_Le723f7f6_304:
	cmp r0, 0
	jmpc eq, _Le723f7f6_310
	ld r0, 0
	st r0, (bp+-4)
_Le723f7f6_311:
	ld r0, (bp+-4)
	push r0
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1+44)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_313
	ld r0, 0
	jmp _Le723f7f6_314
_Le723f7f6_313:
	ld r0, 1
_Le723f7f6_314:
	cmp r0, 0
	jmpc eq, _Le723f7f6_312
	ld r0, 0
	push r0
	ld r0, (bp+-4)
	push r0
	ld r0, (bp+-2)
	push r0
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_quadro_aloca
	add sp, 8
	st r0, (bp+-8)
	ld r0, (bp+-16)
	ld r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-10)
	ld r0, (bp+-8)
	push r0
	ld r0, 512
	ld r1, r0
	pop r0
	mul r0, r1
	st r0, (bp+-12)
	ld r0, (bp+-12)
	push r0
	ld r0, (bp+-10)
	push r0
	call _f_so_disco_le_bloco
	add sp, 4
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1+48)
	push r0
	ld r0, (bp+-4)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 24576
	push r0
	ld r0, (bp+-8)
	push r0
	ld r0, 8191
	ld r1, r0
	pop r0
	and r0, r1
	ld r1, r0
	pop r0
	or r0, r1
	pop r1
	st r0, (r1)
	ld r0, (bp+4)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_317
	ld r0, 0
	jmp _Le723f7f6_318
_Le723f7f6_317:
	ld r0, 1
_Le723f7f6_318:
	cmp r0, 0
	jmpc eq, _Le723f7f6_316
	ld r0, (bp+-4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_319
	ld r0, 0
	jmp _Le723f7f6_320
_Le723f7f6_319:
	ld r0, 1
_Le723f7f6_320:
	cmp r0, 0
	jmpc eq, _Le723f7f6_316
	ld r0, 1
	jmp _Le723f7f6_315
_Le723f7f6_316:
	ld r0, 0
_Le723f7f6_315:
	cmp r0, 0
	jmpc eq, _Le723f7f6_321
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1+48)
	push r0
	ld r0, 128
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 24576
	push r0
	ld r0, (bp+-8)
	push r0
	ld r0, 8191
	ld r1, r0
	pop r0
	and r0, r1
	ld r1, r0
	pop r0
	or r0, r1
	pop r1
	st r0, (r1)
_Le723f7f6_321:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _Le723f7f6_311
_Le723f7f6_312:
_Le723f7f6_310:
	ld r0, 0
	st r0, (bp+-4)
_Le723f7f6_322:
	ld r0, (bp+-4)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_324
	ld r0, 0
	jmp _Le723f7f6_325
_Le723f7f6_324:
	ld r0, 1
_Le723f7f6_325:
	cmp r0, 0
	jmpc eq, _Le723f7f6_323
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, (bp+-4)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _Le723f7f6_322
_Le723f7f6_323:
	ld r0, (bp+4)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_326
	ld r0, 0
	jmp _Le723f7f6_327
_Le723f7f6_326:
	ld r0, 1
_Le723f7f6_327:
	cmp r0, 0
	jmpc eq, _Le723f7f6_328
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 6
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 1024
	pop r1
	st r0, (r1)
	jmp _Le723f7f6_329
_Le723f7f6_328:
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 6
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 512
	pop r1
	st r0, (r1)
_Le723f7f6_329:
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 7
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 8
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 16384
	pop r1
	st r0, (r1)
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 12
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1+48)
	pop r1
	st r0, (r1)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+52)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, (_g_tempo_sistema)
	pop r1
	st r0, (r1+54)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+56)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+58)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+60)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+62)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+64)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+66)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+68)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+70)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, (_g_tempo_sistema)
	pop r1
	st r0, (r1+72)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+74)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+76)
	ld r0, (bp+-14)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+78)
	ld r0, (_g_metricas)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_metricas)
	ld r0, 1
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1)
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_so_mata_proc_interno:
	push bp
	ld bp, sp
	sub sp, 6
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+4)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-2)
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1)
	st r0, (bp+-4)
	ld r0, 4
	push r0
	ld r0, (bp+4)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (_g_tempo_sistema)
	pop r1
	st r0, (r1+56)
	ld r0, (bp+-4)
	push r0
	call _f_quadro_libera_todos
	add sp, 2
	ld r0, 0
	st r0, (bp+-6)
_Le723f7f6_352:
	ld r0, (bp+-6)
	push r0
	ld r0, 256
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_354
	ld r0, 0
	jmp _Le723f7f6_355
_Le723f7f6_354:
	ld r0, 1
_Le723f7f6_355:
	cmp r0, 0
	jmpc eq, _Le723f7f6_353
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+48)
	push r0
	ld r0, (bp+-6)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-6)
	jmp _Le723f7f6_352
_Le723f7f6_353:
	ld r0, 0
	st r0, (bp+-6)
_Le723f7f6_356:
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_358
	ld r0, 0
	jmp _Le723f7f6_359
_Le723f7f6_358:
	ld r0, 1
_Le723f7f6_359:
	cmp r0, 0
	jmpc eq, _Le723f7f6_357
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_364
	ld r0, 0
	jmp _Le723f7f6_365
_Le723f7f6_364:
	ld r0, 1
_Le723f7f6_365:
	cmp r0, 0
	jmpc eq, _Le723f7f6_363
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+4)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_366
	ld r0, 0
	jmp _Le723f7f6_367
_Le723f7f6_366:
	ld r0, 1
_Le723f7f6_367:
	cmp r0, 0
	jmpc eq, _Le723f7f6_363
	ld r0, 1
	jmp _Le723f7f6_362
_Le723f7f6_363:
	ld r0, 0
_Le723f7f6_362:
	cmp r0, 0
	jmpc eq, _Le723f7f6_361
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+6)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_368
	ld r0, 0
	jmp _Le723f7f6_369
_Le723f7f6_368:
	ld r0, 1
_Le723f7f6_369:
	cmp r0, 0
	jmpc eq, _Le723f7f6_361
	ld r0, 1
	jmp _Le723f7f6_360
_Le723f7f6_361:
	ld r0, 0
_Le723f7f6_360:
	cmp r0, 0
	jmpc eq, _Le723f7f6_370
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 80
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 80
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+6)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 0
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, 1
	push r0
	ld r0, (bp+-6)
	push r0
	call _f_so_muda_estado
	add sp, 4
_Le723f7f6_370:
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-6)
	jmp _Le723f7f6_356
_Le723f7f6_357:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_371
	ld r0, 0
	jmp _Le723f7f6_372
_Le723f7f6_371:
	ld r0, 1
_Le723f7f6_372:
	cmp r0, 0
	jmpc eq, _Le723f7f6_373
	ld r0, (_g_tempo_sistema)
	st r0, (_g_metricas+2)
	call _f_so_imprime_relatorio
	call _f_so_halt
_Le723f7f6_373:
	ld sp, bp
	pop bp
	ret
_f_so_trata_pagina_ausente:
	push bp
	ld bp, sp
	sub sp, 14
	ld r0, _g_metricas+14
	push r0
	ld r0, 5
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_metricas+14
	push r0
	ld r0, 5
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1)
	ld r0, (_g_processo_atual)
	st r0, (bp+-6)
	ld r0, (bp+-6)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_401
	ld r0, 0
	jmp _Le723f7f6_402
_Le723f7f6_401:
	ld r0, 1
_Le723f7f6_402:
	cmp r0, 0
	jmpc ne, _Le723f7f6_400
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _Le723f7f6_403
	ld r0, 0
	jmp _Le723f7f6_404
_Le723f7f6_403:
	ld r0, 1
_Le723f7f6_404:
	cmp r0, 0
	jmpc ne, _Le723f7f6_400
	ld r0, 0
	jmp _Le723f7f6_399
_Le723f7f6_400:
	ld r0, 1
_Le723f7f6_399:
	cmp r0, 0
	jmpc eq, _Le723f7f6_405
	ld r0, _stre723f7f6_10
	push r0
	call _f_so_puts
	add sp, 2
	call _f_so_halt
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Le723f7f6_405:
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-2)
	ld r0, _g_tabela_programas
	push r0
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+42)
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-4)
	ld r0, (bp+6)
	push r0
	ld r0, 9
	ld r1, r0
	pop r0
	shr r0, r1
	push r0
	ld r0, 127
	ld r1, r0
	pop r0
	and r0, r1
	st r0, (bp+-8)
	ld r0, (bp+-8)
	push r0
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+44)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _Le723f7f6_406
	ld r0, 0
	jmp _Le723f7f6_407
_Le723f7f6_406:
	ld r0, 1
_Le723f7f6_407:
	cmp r0, 0
	jmpc eq, _Le723f7f6_408
	ld r0, _stre723f7f6_11
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_12
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_13
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stre723f7f6_14
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+6)
	push r0
	call _f_so_print_hex
	add sp, 2
	ld r0, _stre723f7f6_15
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-8)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_16
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_17
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-6)
	push r0
	call _f_so_salva_quadro
	add sp, 4
	ld r0, (bp+-6)
	push r0
	call _f_so_mata_proc_interno
	add sp, 2
	call _f_so_escolhe_proximo
	st r0, (_g_processo_atual)
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_409
	ld r0, 0
	jmp _Le723f7f6_410
_Le723f7f6_409:
	ld r0, 1
_Le723f7f6_410:
	cmp r0, 0
	jmpc eq, _Le723f7f6_411
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
_Le723f7f6_411:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Le723f7f6_408:
	ld r0, 0
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_412
	ld r0, 0
	jmp _Le723f7f6_413
_Le723f7f6_412:
	ld r0, 1
_Le723f7f6_413:
	cmp r0, 0
	jmpc eq, _Le723f7f6_414
	ld r0, _stre723f7f6_18
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-6)
	push r0
	call _f_so_salva_quadro
	add sp, 4
	ld r0, (bp+-6)
	push r0
	call _f_so_mata_proc_interno
	add sp, 2
	call _f_so_escolhe_proximo
	st r0, (_g_processo_atual)
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_415
	ld r0, 0
	jmp _Le723f7f6_416
_Le723f7f6_415:
	ld r0, 1
_Le723f7f6_416:
	cmp r0, 0
	jmpc eq, _Le723f7f6_417
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
_Le723f7f6_417:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Le723f7f6_414:
	ld r0, (_g_metricas+8)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_metricas+8)
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+52)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+52)
	ld r0, 0
	push r0
	ld r0, (bp+-8)
	push r0
	ld r0, (bp+-6)
	push r0
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_quadro_aloca
	add sp, 8
	st r0, (bp+-10)
	ld r0, (bp+-10)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_418
	ld r0, 0
	jmp _Le723f7f6_419
_Le723f7f6_418:
	ld r0, 1
_Le723f7f6_419:
	cmp r0, 0
	jmpc eq, _Le723f7f6_420
	ld r0, _stre723f7f6_19
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-6)
	push r0
	call _f_so_salva_quadro
	add sp, 4
	ld r0, (bp+-6)
	push r0
	call _f_so_mata_proc_interno
	add sp, 2
	call _f_so_escolhe_proximo
	st r0, (_g_processo_atual)
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_421
	ld r0, 0
	jmp _Le723f7f6_422
_Le723f7f6_421:
	ld r0, 1
_Le723f7f6_422:
	cmp r0, 0
	jmpc eq, _Le723f7f6_423
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
_Le723f7f6_423:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Le723f7f6_420:
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-14)
	ld r0, (bp+-10)
	push r0
	ld r0, 512
	ld r1, r0
	pop r0
	mul r0, r1
	st r0, (bp+-12)
	ld r0, (bp+-12)
	push r0
	ld r0, (bp+-14)
	push r0
	call _f_so_disco_le_bloco
	add sp, 4
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+48)
	push r0
	ld r0, (bp+-8)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 24576
	push r0
	ld r0, (bp+-10)
	push r0
	ld r0, 8191
	ld r1, r0
	pop r0
	and r0, r1
	ld r1, r0
	pop r0
	or r0, r1
	pop r1
	st r0, (r1)
	ld r0, 0
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_so_trata_violacao_protecao:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, _g_metricas+14
	push r0
	ld r0, 1
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_metricas+14
	push r0
	ld r0, 1
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1)
	ld r0, (_g_processo_atual)
	st r0, (bp+-4)
	ld r0, (bp+-4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _Le723f7f6_436
	ld r0, 0
	jmp _Le723f7f6_437
_Le723f7f6_436:
	ld r0, 1
_Le723f7f6_437:
	cmp r0, 0
	jmpc eq, _Le723f7f6_435
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_438
	ld r0, 0
	jmp _Le723f7f6_439
_Le723f7f6_438:
	ld r0, 1
_Le723f7f6_439:
	cmp r0, 0
	jmpc eq, _Le723f7f6_435
	ld r0, 1
	jmp _Le723f7f6_434
_Le723f7f6_435:
	ld r0, 0
_Le723f7f6_434:
	cmp r0, 0
	jmpc eq, _Le723f7f6_440
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-4)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-2)
	ld r0, _stre723f7f6_27
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_28
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_29
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stre723f7f6_30
	push r0
	call _f_so_print_str
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_31
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+6)
	push r0
	call _f_so_print_hex
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_32
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_33
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-4)
	push r0
	call _f_so_salva_quadro
	add sp, 4
	ld r0, (bp+-4)
	push r0
	call _f_so_mata_proc_interno
	add sp, 2
	call _f_so_escolhe_proximo
	st r0, (_g_processo_atual)
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_441
	ld r0, 0
	jmp _Le723f7f6_442
_Le723f7f6_441:
	ld r0, 1
_Le723f7f6_442:
	cmp r0, 0
	jmpc eq, _Le723f7f6_443
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
_Le723f7f6_443:
_Le723f7f6_440:
	ld sp, bp
	pop bp
	ret
_f_so_muda_estado:
	push bp
	ld bp, sp
	sub sp, 6
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+4)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-2)
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+2)
	st r0, (bp+-6)
	ld r0, (_g_tempo_sistema)
	push r0
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+72)
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-4)
	ld r0, (bp+-4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _Le723f7f6_472
	ld r0, 0
	jmp _Le723f7f6_473
_Le723f7f6_472:
	ld r0, 1
_Le723f7f6_473:
	cmp r0, 0
	jmpc eq, _Le723f7f6_474
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_475
	ld r0, 0
	jmp _Le723f7f6_476
_Le723f7f6_475:
	ld r0, 1
_Le723f7f6_476:
	cmp r0, 0
	jmpc eq, _Le723f7f6_477
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+66)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+66)
	jmp _Le723f7f6_478
_Le723f7f6_477:
	ld r0, (bp+-6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_479
	ld r0, 0
	jmp _Le723f7f6_480
_Le723f7f6_479:
	ld r0, 1
_Le723f7f6_480:
	cmp r0, 0
	jmpc eq, _Le723f7f6_481
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+70)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+70)
	jmp _Le723f7f6_482
_Le723f7f6_481:
	ld r0, (bp+-6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_483
	ld r0, 0
	jmp _Le723f7f6_484
_Le723f7f6_483:
	ld r0, 1
_Le723f7f6_484:
	cmp r0, 0
	jmpc eq, _Le723f7f6_485
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+68)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+68)
_Le723f7f6_485:
_Le723f7f6_482:
_Le723f7f6_478:
_Le723f7f6_474:
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+6)
	pop r1
	st r0, (r1+2)
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (_g_tempo_sistema)
	pop r1
	st r0, (r1+72)
	ld r0, (bp+6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_486
	ld r0, 0
	jmp _Le723f7f6_487
_Le723f7f6_486:
	ld r0, 1
_Le723f7f6_487:
	cmp r0, 0
	jmpc eq, _Le723f7f6_488
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+60)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+60)
	ld r0, (bp+4)
	push r0
	call _f_fila_insere
	add sp, 2
	jmp _Le723f7f6_489
_Le723f7f6_488:
	ld r0, (bp+6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_490
	ld r0, 0
	jmp _Le723f7f6_491
_Le723f7f6_490:
	ld r0, 1
_Le723f7f6_491:
	cmp r0, 0
	jmpc eq, _Le723f7f6_492
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+64)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+64)
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+74)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _Le723f7f6_493
	ld r0, 0
	jmp _Le723f7f6_494
_Le723f7f6_493:
	ld r0, 1
_Le723f7f6_494:
	cmp r0, 0
	jmpc eq, _Le723f7f6_495
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+76)
	push r0
	ld r0, (_g_tempo_sistema)
	push r0
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+74)
	ld r1, r0
	pop r0
	sub r0, r1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+76)
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+78)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+78)
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+74)
_Le723f7f6_495:
	jmp _Le723f7f6_496
_Le723f7f6_492:
	ld r0, (bp+6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_497
	ld r0, 0
	jmp _Le723f7f6_498
_Le723f7f6_497:
	ld r0, 1
_Le723f7f6_498:
	cmp r0, 0
	jmpc eq, _Le723f7f6_499
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+62)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+62)
_Le723f7f6_499:
_Le723f7f6_496:
_Le723f7f6_489:
	ld sp, bp
	pop bp
	ret
_f_so_escolhe_proximo:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 0
	st r0, (bp+-4)
_Le723f7f6_510:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_512
	ld r0, 0
	jmp _Le723f7f6_513
_Le723f7f6_512:
	ld r0, 1
_Le723f7f6_513:
	cmp r0, 0
	jmpc eq, _Le723f7f6_511
	call _f_fila_retira
	st r0, (bp+-2)
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_514
	ld r0, 0
	jmp _Le723f7f6_515
_Le723f7f6_514:
	ld r0, 1
_Le723f7f6_515:
	cmp r0, 0
	jmpc eq, _Le723f7f6_516
	jmp _Le723f7f6_511
_Le723f7f6_516:
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_517
	ld r0, 0
	jmp _Le723f7f6_518
_Le723f7f6_517:
	ld r0, 1
_Le723f7f6_518:
	cmp r0, 0
	jmpc eq, _Le723f7f6_519
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
_Le723f7f6_519:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _Le723f7f6_510
_Le723f7f6_511:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_so_salva_quadro:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_524:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_526
	ld r0, 0
	jmp _Le723f7f6_527
_Le723f7f6_526:
	ld r0, 1
_Le723f7f6_527:
	cmp r0, 0
	jmpc eq, _Le723f7f6_525
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+4)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+6)
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	pop r1
	st r0, (r1)
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_524
_Le723f7f6_525:
	ld sp, bp
	pop bp
	ret
_f_so_restaura_quadro:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_532:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_534
	ld r0, 0
	jmp _Le723f7f6_535
_Le723f7f6_534:
	ld r0, 1
_Le723f7f6_535:
	cmp r0, 0
	jmpc eq, _Le723f7f6_533
	ld r0, (bp+6)
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+4)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	pop r1
	st r0, (r1)
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_532
_Le723f7f6_533:
	ld sp, bp
	pop bp
	ret
_f_so_restaura_atual:
	push bp
	ld bp, sp
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_539
	ld r0, 0
	jmp _Le723f7f6_540
_Le723f7f6_539:
	ld r0, 1
_Le723f7f6_540:
	cmp r0, 0
	jmpc eq, _Le723f7f6_541
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
_Le723f7f6_541:
	ld sp, bp
	pop bp
	ret
_f_so_trata_pendencias:
	push bp
	ld bp, sp
	sub sp, 4
	call _f_bios_console_disponivel
	cmp r0, 0
	jmpc eq, _Le723f7f6_560
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_561:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_563
	ld r0, 0
	jmp _Le723f7f6_564
_Le723f7f6_563:
	ld r0, 1
_Le723f7f6_564:
	cmp r0, 0
	jmpc eq, _Le723f7f6_562
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_567
	ld r0, 0
	jmp _Le723f7f6_568
_Le723f7f6_567:
	ld r0, 1
_Le723f7f6_568:
	cmp r0, 0
	jmpc eq, _Le723f7f6_566
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_569
	ld r0, 0
	jmp _Le723f7f6_570
_Le723f7f6_569:
	ld r0, 1
_Le723f7f6_570:
	cmp r0, 0
	jmpc eq, _Le723f7f6_566
	ld r0, 1
	jmp _Le723f7f6_565
_Le723f7f6_566:
	ld r0, 0
_Le723f7f6_565:
	cmp r0, 0
	jmpc eq, _Le723f7f6_571
	call _f_bios_console_le
	st r0, (bp+-4)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 0
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-4)
	pop r1
	st r0, (r1)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	push r1
	ld r0, (_g_tempo_sistema)
	pop r1
	st r0, (r1+74)
	ld r0, 1
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_572
	ld r0, 0
	jmp _Le723f7f6_573
_Le723f7f6_572:
	ld r0, 1
_Le723f7f6_573:
	cmp r0, 0
	jmpc eq, _Le723f7f6_574
	call _f_so_escolhe_proximo
	st r0, (_g_processo_atual)
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_575
	ld r0, 0
	jmp _Le723f7f6_576
_Le723f7f6_575:
	ld r0, 1
_Le723f7f6_576:
	cmp r0, 0
	jmpc eq, _Le723f7f6_577
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
_Le723f7f6_577:
_Le723f7f6_574:
	jmp _Le723f7f6_562
_Le723f7f6_571:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_561
_Le723f7f6_562:
_Le723f7f6_560:
	ld sp, bp
	pop bp
	ret
_f_so_tique_relogio:
	push bp
	ld bp, sp
	sub sp, 10
	ld r0, (_g_tempo_sistema)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_tempo_sistema)
	ld r0, _g_metricas+14
	push r0
	ld r0, 10
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_metricas+14
	push r0
	ld r0, 10
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1)
	ld r0, 1
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_609
	ld r0, 0
	jmp _Le723f7f6_610
_Le723f7f6_609:
	ld r0, 1
_Le723f7f6_610:
	cmp r0, 0
	jmpc eq, _Le723f7f6_611
	ld r0, 0
	st r0, (bp+-4)
_Le723f7f6_612:
	ld r0, (bp+-4)
	push r0
	ld r0, 24
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_614
	ld r0, 0
	jmp _Le723f7f6_615
_Le723f7f6_614:
	ld r0, 1
_Le723f7f6_615:
	cmp r0, 0
	jmpc eq, _Le723f7f6_613
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1)
	cmp r0, 0
	jmpc eq, _Le723f7f6_616
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+12)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	shr r0, r1
	pop r1
	st r0, (r1+12)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+4)
	st r0, (bp+-6)
	ld r0, (bp+-6)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _Le723f7f6_621
	ld r0, 0
	jmp _Le723f7f6_622
_Le723f7f6_621:
	ld r0, 1
_Le723f7f6_622:
	cmp r0, 0
	jmpc eq, _Le723f7f6_620
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_623
	ld r0, 0
	jmp _Le723f7f6_624
_Le723f7f6_623:
	ld r0, 1
_Le723f7f6_624:
	cmp r0, 0
	jmpc eq, _Le723f7f6_620
	ld r0, 1
	jmp _Le723f7f6_619
_Le723f7f6_620:
	ld r0, 0
_Le723f7f6_619:
	cmp r0, 0
	jmpc eq, _Le723f7f6_618
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_625
	ld r0, 0
	jmp _Le723f7f6_626
_Le723f7f6_625:
	ld r0, 1
_Le723f7f6_626:
	cmp r0, 0
	jmpc eq, _Le723f7f6_618
	ld r0, 1
	jmp _Le723f7f6_617
_Le723f7f6_618:
	ld r0, 0
_Le723f7f6_617:
	cmp r0, 0
	jmpc eq, _Le723f7f6_627
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+8)
	cmp r0, 0
	jmpc eq, _Le723f7f6_628
	ld r0, 128
	push r0
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+6)
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-8)
	jmp _Le723f7f6_629
_Le723f7f6_628:
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+6)
	st r0, (bp+-8)
_Le723f7f6_629:
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+48)
	push r0
	ld r0, (bp+-8)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	st r0, (bp+-10)
	ld r0, (bp+-10)
	push r0
	ld r0, 8192
	ld r1, r0
	pop r0
	and r0, r1
	cmp r0, 0
	jmpc eq, _Le723f7f6_630
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	push r1
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+12)
	push r0
	ld r0, 32768
	ld r1, r0
	pop r0
	or r0, r1
	pop r1
	st r0, (r1+12)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+48)
	push r0
	ld r0, (bp+-8)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-10)
	push r0
	ld r0, 8192
	xor r0, -1
	ld r1, r0
	pop r0
	and r0, r1
	pop r1
	st r0, (r1)
_Le723f7f6_630:
_Le723f7f6_627:
_Le723f7f6_616:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _Le723f7f6_612
_Le723f7f6_613:
_Le723f7f6_611:
	call _f_so_trata_pendencias
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_631
	ld r0, 0
	jmp _Le723f7f6_632
_Le723f7f6_631:
	ld r0, 1
_Le723f7f6_632:
	cmp r0, 0
	jmpc eq, _Le723f7f6_633
	ld r0, (_g_metricas+4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_metricas+4)
	ld sp, bp
	pop bp
	ret
_Le723f7f6_633:
	ld r0, (_g_quantum_restante)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (_g_quantum_restante)
	ld r0, (_g_quantum_restante)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc le, _Le723f7f6_634
	ld r0, 0
	jmp _Le723f7f6_635
_Le723f7f6_634:
	ld r0, 1
_Le723f7f6_635:
	cmp r0, 0
	jmpc eq, _Le723f7f6_636
	ld r0, (_g_metricas+6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_metricas+6)
	ld r0, _g_tab_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 80
	pop r1
	add r1, r0
	push r1
	ld r0, _g_tab_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+58)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+58)
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_salva_quadro
	add sp, 4
	ld r0, 1
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	call _f_so_escolhe_proximo
	st r0, (bp+-2)
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_637
	ld r0, 0
	jmp _Le723f7f6_638
_Le723f7f6_637:
	ld r0, 1
_Le723f7f6_638:
	cmp r0, 0
	jmpc eq, _Le723f7f6_639
	ld r0, (_g_processo_atual)
	st r0, (bp+-2)
_Le723f7f6_639:
	ld r0, (bp+-2)
	st r0, (_g_processo_atual)
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
_Le723f7f6_636:
	ld sp, bp
	pop bp
	ret
_f_so_trata_syscall:
	push bp
	ld bp, sp
	sub sp, 10
	ld r0, _g_metricas+14
	push r0
	ld r0, 7
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_metricas+14
	push r0
	ld r0, 7
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1)
	ld r0, (_g_processo_atual)
	st r0, (bp+-2)
	ld r0, (bp+6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_686
	ld r0, 0
	jmp _Le723f7f6_687
_Le723f7f6_686:
	ld r0, 1
_Le723f7f6_687:
	cmp r0, 0
	jmpc eq, _Le723f7f6_688
	call _f_bios_console_disponivel
	cmp r0, 0
	jmpc eq, _Le723f7f6_689
	call _f_bios_console_le
	st r0, (bp+-6)
	ld r0, (bp+-6)
	ld sp, bp
	pop bp
	ret
_Le723f7f6_689:
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_salva_quadro
	add sp, 4
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	pop r1
	st r0, (r1+4)
	ld r0, 3
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_muda_estado
	add sp, 4
	call _f_so_escolhe_proximo
	st r0, (bp+-4)
	ld r0, (bp+-4)
	st r0, (_g_processo_atual)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_690
	ld r0, 0
	jmp _Le723f7f6_691
_Le723f7f6_690:
	ld r0, 1
_Le723f7f6_691:
	cmp r0, 0
	jmpc eq, _Le723f7f6_692
	ld r0, 2
	push r0
	ld r0, (bp+-4)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-4)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
_Le723f7f6_692:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Le723f7f6_688:
	ld r0, (bp+6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_693
	ld r0, 0
	jmp _Le723f7f6_694
_Le723f7f6_693:
	ld r0, 1
_Le723f7f6_694:
	cmp r0, 0
	jmpc eq, _Le723f7f6_695
	ld r0, (bp+8)
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_Le723f7f6_695:
	ld r0, (bp+6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_696
	ld r0, 0
	jmp _Le723f7f6_697
_Le723f7f6_696:
	ld r0, 1
_Le723f7f6_697:
	cmp r0, 0
	jmpc eq, _Le723f7f6_698
	ld r0, (bp+8)
	push r0
	call _f_so_cria_proc_interno
	add sp, 2
	ld sp, bp
	pop bp
	ret
_Le723f7f6_698:
	ld r0, (bp+6)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_699
	ld r0, 0
	jmp _Le723f7f6_700
_Le723f7f6_699:
	ld r0, 1
_Le723f7f6_700:
	cmp r0, 0
	jmpc eq, _Le723f7f6_701
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_salva_quadro
	add sp, 4
	ld r0, (bp+8)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_704
	ld r0, 0
	jmp _Le723f7f6_705
_Le723f7f6_704:
	ld r0, 1
_Le723f7f6_705:
	cmp r0, 0
	jmpc ne, _Le723f7f6_703
	ld r0, (bp+8)
	push r0
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_706
	ld r0, 0
	jmp _Le723f7f6_707
_Le723f7f6_706:
	ld r0, 1
_Le723f7f6_707:
	cmp r0, 0
	jmpc ne, _Le723f7f6_703
	ld r0, 0
	jmp _Le723f7f6_702
_Le723f7f6_703:
	ld r0, 1
_Le723f7f6_702:
	cmp r0, 0
	jmpc eq, _Le723f7f6_708
	ld r0, (bp+-2)
	push r0
	call _f_so_mata_proc_interno
	add sp, 2
	jmp _Le723f7f6_709
_Le723f7f6_708:
	ld r0, (bp+8)
	push r0
	call _f_procura_slot_por_pid
	add sp, 2
	st r0, (bp+-8)
	ld r0, (bp+-8)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_710
	ld r0, 0
	jmp _Le723f7f6_711
_Le723f7f6_710:
	ld r0, 1
_Le723f7f6_711:
	cmp r0, 0
	jmpc eq, _Le723f7f6_712
	ld r0, (bp+-8)
	push r0
	call _f_so_mata_proc_interno
	add sp, 2
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_Le723f7f6_712:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Le723f7f6_709:
	call _f_so_escolhe_proximo
	st r0, (bp+-4)
	ld r0, (bp+-4)
	st r0, (_g_processo_atual)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_713
	ld r0, 0
	jmp _Le723f7f6_714
_Le723f7f6_713:
	ld r0, 1
_Le723f7f6_714:
	cmp r0, 0
	jmpc eq, _Le723f7f6_715
	ld r0, 2
	push r0
	ld r0, (bp+-4)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-4)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
_Le723f7f6_715:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Le723f7f6_701:
	ld r0, (bp+6)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_716
	ld r0, 0
	jmp _Le723f7f6_717
_Le723f7f6_716:
	ld r0, 1
_Le723f7f6_717:
	cmp r0, 0
	jmpc eq, _Le723f7f6_718
	ld r0, (bp+8)
	push r0
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_719
	ld r0, 0
	jmp _Le723f7f6_720
_Le723f7f6_719:
	ld r0, 1
_Le723f7f6_720:
	cmp r0, 0
	jmpc eq, _Le723f7f6_721
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Le723f7f6_721:
	ld r0, (bp+8)
	push r0
	call _f_procura_slot_por_pid
	add sp, 2
	st r0, (bp+-10)
	ld r0, (bp+-10)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_724
	ld r0, 0
	jmp _Le723f7f6_725
_Le723f7f6_724:
	ld r0, 1
_Le723f7f6_725:
	cmp r0, 0
	jmpc ne, _Le723f7f6_723
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-10)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_726
	ld r0, 0
	jmp _Le723f7f6_727
_Le723f7f6_726:
	ld r0, 1
_Le723f7f6_727:
	cmp r0, 0
	jmpc ne, _Le723f7f6_723
	ld r0, 0
	jmp _Le723f7f6_722
_Le723f7f6_723:
	ld r0, 1
_Le723f7f6_722:
	cmp r0, 0
	jmpc eq, _Le723f7f6_728
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Le723f7f6_728:
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_salva_quadro
	add sp, 4
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	push r1
	ld r0, 2
	pop r1
	st r0, (r1+4)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+8)
	pop r1
	st r0, (r1+6)
	ld r0, 3
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_muda_estado
	add sp, 4
	call _f_so_escolhe_proximo
	st r0, (bp+-4)
	ld r0, (bp+-4)
	st r0, (_g_processo_atual)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_729
	ld r0, 0
	jmp _Le723f7f6_730
_Le723f7f6_729:
	ld r0, 1
_Le723f7f6_730:
	cmp r0, 0
	jmpc eq, _Le723f7f6_731
	ld r0, 2
	push r0
	ld r0, (bp+-4)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-4)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
_Le723f7f6_731:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Le723f7f6_718:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_so_inicializa:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 0
	st r0, (_g_tempo_sistema)
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (_g_processo_atual)
	ld r0, 1
	st r0, (_g_proximo_pid)
	ld r0, 1
	st r0, (_g_escalonador_tipo)
	ld r0, 4
	st r0, (_g_quantum_config)
	ld r0, 4
	st r0, (_g_quantum_restante)
	ld r0, 0
	st r0, (_g_metricas)
	ld r0, 0
	st r0, (_g_metricas+2)
	ld r0, 0
	st r0, (_g_metricas+4)
	ld r0, 0
	st r0, (_g_metricas+6)
	ld r0, 0
	st r0, (_g_metricas+8)
	ld r0, 0
	st r0, (_g_metricas+10)
	ld r0, 0
	st r0, (_g_metricas+12)
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_744:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_746
	ld r0, 0
	jmp _Le723f7f6_747
_Le723f7f6_746:
	ld r0, 1
_Le723f7f6_747:
	cmp r0, 0
	jmpc eq, _Le723f7f6_745
	ld r0, _g_metricas+14
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_744
_Le723f7f6_745:
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_748:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_750
	ld r0, 0
	jmp _Le723f7f6_751
_Le723f7f6_750:
	ld r0, 1
_Le723f7f6_751:
	cmp r0, 0
	jmpc eq, _Le723f7f6_749
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+2)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_748
_Le723f7f6_749:
	call _f_fila_inicializa
	call _f_memoria_inicializa
	call _f_disco_inicializa_programas
	ld r0, 0
	push r0
	call _f_so_cria_proc_interno
	add sp, 2
	st r0, (bp+-4)
	ld r0, (bp+-4)
	call _f_so_escolhe_proximo
	st r0, (_g_processo_atual)
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_752:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_754
	ld r0, 0
	jmp _Le723f7f6_755
_Le723f7f6_754:
	ld r0, 1
_Le723f7f6_755:
	cmp r0, 0
	jmpc eq, _Le723f7f6_753
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_tab_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	pop r1
	st r0, (r1)
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_752
_Le723f7f6_753:
	ld sp, bp
	pop bp
	ret
_f_so_print_str:
	push bp
	ld bp, sp
_Le723f7f6_760:
	ld r0, (bp+4)
	ld r1, r0
	ldb r0, (r1)
	and r0, 255
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Le723f7f6_762
	ld r0, 0
	jmp _Le723f7f6_763
_Le723f7f6_762:
	ld r0, 1
_Le723f7f6_763:
	cmp r0, 0
	jmpc eq, _Le723f7f6_761
	ld r0, (bp+4)
	ld r1, r0
	ldb r0, (r1)
	and r0, 255
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld r0, (bp+4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+4)
	jmp _Le723f7f6_760
_Le723f7f6_761:
	ld sp, bp
	pop bp
	ret
_f_so_puts:
	push bp
	ld bp, sp
	ld r0, (bp+4)
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 10
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_so_nova_linha:
	push bp
	ld bp, sp
	ld r0, 10
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_so_print_dec:
	push bp
	ld bp, sp
	sub sp, 12
	ld r0, 0
	st r0, (bp+-10)
	ld r0, 0
	st r0, (bp+-12)
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_779
	ld r0, 0
	jmp _Le723f7f6_780
_Le723f7f6_779:
	ld r0, 1
_Le723f7f6_780:
	cmp r0, 0
	jmpc eq, _Le723f7f6_781
	ld r0, 1
	st r0, (bp+-12)
	ld r0, (bp+4)
	xor r0, -1
	add r0, 1
	st r0, (bp+4)
_Le723f7f6_781:
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_782
	ld r0, 0
	jmp _Le723f7f6_783
_Le723f7f6_782:
	ld r0, 1
_Le723f7f6_783:
	cmp r0, 0
	jmpc eq, _Le723f7f6_784
	ld r0, bp
	add r0, -8
	push r0
	ld r0, 0
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, 48
	pop r1
	stb r0, (r1)
	ld r0, 1
	st r0, (bp+-10)
_Le723f7f6_784:
_Le723f7f6_785:
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _Le723f7f6_787
	ld r0, 0
	jmp _Le723f7f6_788
_Le723f7f6_787:
	ld r0, 1
_Le723f7f6_788:
	cmp r0, 0
	jmpc eq, _Le723f7f6_786
	ld r0, bp
	add r0, -8
	push r0
	ld r0, (bp+-10)
	mul r0, 1
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+4)
	push r0
	ld r0, 10
	ld r1, r0
	pop r0
	ld r2, r0
	div r0, r1
	mul r0, r1
	sub r2, r0
	ld r0, r2
	push r0
	ld r0, 48
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	stb r0, (r1)
	ld r0, (bp+-10)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-10)
	ld r0, (bp+4)
	push r0
	ld r0, 10
	ld r1, r0
	pop r0
	div r0, r1
	st r0, (bp+4)
	jmp _Le723f7f6_785
_Le723f7f6_786:
	ld r0, (bp+-12)
	cmp r0, 0
	jmpc eq, _Le723f7f6_789
	ld r0, 45
	push r0
	call _f_so_escreve_caractere
	add sp, 2
_Le723f7f6_789:
_Le723f7f6_790:
	ld r0, (bp+-10)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _Le723f7f6_792
	ld r0, 0
	jmp _Le723f7f6_793
_Le723f7f6_792:
	ld r0, 1
_Le723f7f6_793:
	cmp r0, 0
	jmpc eq, _Le723f7f6_791
	ld r0, (bp+-10)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-10)
	ld r0, bp
	add r0, -8
	push r0
	ld r0, (bp+-10)
	mul r0, 1
	pop r1
	add r1, r0
	ldb r0, (r1)
	and r0, 255
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	jmp _Le723f7f6_790
_Le723f7f6_791:
	ld sp, bp
	pop bp
	ret
_f_so_imprime_relatorio:
	push bp
	ld bp, sp
	sub sp, 4
	call _f_so_nova_linha
	ld r0, _stre723f7f6_74
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_75
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_76
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_77
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 0
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_809
	ld r0, 0
	jmp _Le723f7f6_810
_Le723f7f6_809:
	ld r0, 1
_Le723f7f6_810:
	cmp r0, 0
	jmpc eq, _Le723f7f6_811
	ld r0, _stre723f7f6_78
	push r0
	call _f_so_puts
	add sp, 2
	jmp _Le723f7f6_812
_Le723f7f6_811:
	ld r0, _stre723f7f6_79
	push r0
	call _f_so_puts
	add sp, 2
_Le723f7f6_812:
	ld r0, _stre723f7f6_80
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 1
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Le723f7f6_813
	ld r0, 0
	jmp _Le723f7f6_814
_Le723f7f6_813:
	ld r0, 1
_Le723f7f6_814:
	cmp r0, 0
	jmpc eq, _Le723f7f6_815
	ld r0, _stre723f7f6_81
	push r0
	call _f_so_puts
	add sp, 2
	jmp _Le723f7f6_816
_Le723f7f6_815:
	ld r0, _stre723f7f6_82
	push r0
	call _f_so_puts
	add sp, 2
_Le723f7f6_816:
	ld r0, _stre723f7f6_83
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 24
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stre723f7f6_84
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_85
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 4
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stre723f7f6_86
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_87
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+2)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stre723f7f6_88
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_89
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+4)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stre723f7f6_90
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_91
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_92
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+6)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_93
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+8)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_94
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+10)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_95
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+12)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_96
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_97
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_98
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _g_metricas+14
	push r0
	ld r0, 1
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_99
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _g_metricas+14
	push r0
	ld r0, 5
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_100
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _g_metricas+14
	push r0
	ld r0, 7
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_101
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _g_metricas+14
	push r0
	ld r0, 8
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_102
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _g_metricas+14
	push r0
	ld r0, 10
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stre723f7f6_103
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_104
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_105
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stre723f7f6_106
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, 0
	st r0, (bp+-2)
_Le723f7f6_817:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Le723f7f6_819
	ld r0, 0
	jmp _Le723f7f6_820
_Le723f7f6_819:
	ld r0, 1
_Le723f7f6_820:
	cmp r0, 0
	jmpc eq, _Le723f7f6_818
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-4)
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _Le723f7f6_821
	ld r0, 0
	jmp _Le723f7f6_822
_Le723f7f6_821:
	ld r0, 1
_Le723f7f6_822:
	cmp r0, 0
	jmpc eq, _Le723f7f6_823
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stre723f7f6_107
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _g_tabela_programas
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+42)
	mul r0, 22
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 6
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _stre723f7f6_108
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+56)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+54)
	ld r1, r0
	pop r0
	sub r0, r1
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stre723f7f6_109
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+58)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stre723f7f6_110
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+52)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stre723f7f6_111
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+66)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stre723f7f6_112
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+70)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
_Le723f7f6_823:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Le723f7f6_817
_Le723f7f6_818:
	ld r0, _stre723f7f6_113
	push r0
	call _f_so_puts
	add sp, 2
	ld sp, bp
	pop bp
	ret

.data
_g_tab_processos:
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
_g_tabelas_paginas:
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
_g_fila_prontos:
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
_g_fila_inicio:
	.db 0
	.db 0
_g_fila_fim:
	.db 0
	.db 0
_g_fila_n:
	.db 0
	.db 0
_g_quadros_pool:
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
_g_contador_ordem_fifo:
	.db 0
	.db 0
_g_tabela_programas:
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
_g_n_programas:
	.db 0
	.db 0
_g_processo_atual:
	.db 0
	.db 0
_g_proximo_pid:
	.db 0
	.db 0
_g_escalonador_tipo:
	.db 0
	.db 0
_g_quantum_config:
	.db 0
	.db 0
_g_quantum_restante:
	.db 0
	.db 0
_g_tempo_sistema:
	.db 0
	.db 0
_g_metricas:
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0

; ----- literais de string -----
_stre723f7f6_0:
	.db 91, 83, 79, 93, 32, 70, 97, 108, 104, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 32, 102, 111, 114, 97, 32, 100, 101, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 118, 97, 108, 105, 100, 111, 33, 32, 80, 97, 114, 97, 110, 100, 111, 46, 0
_stre723f7f6_1:
	.db 10, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_2:
	.db 91, 83, 79, 93, 32, 69, 88, 67, 69, 67, 65, 79, 58, 32, 70, 65, 76, 72, 65, 32, 68, 69, 32, 80, 65, 71, 73, 78, 65, 32, 73, 76, 69, 71, 65, 76, 33, 0
_stre723f7f6_3:
	.db 91, 83, 79, 93, 32, 80, 73, 68, 58, 32, 0
_stre723f7f6_4:
	.db 32, 124, 32, 73, 80, 58, 32, 48, 120, 0
_stre723f7f6_5:
	.db 32, 124, 32, 80, 97, 103, 58, 32, 0
_stre723f7f6_6:
	.db 91, 83, 79, 93, 32, 69, 110, 99, 101, 114, 114, 97, 110, 100, 111, 32, 112, 114, 111, 99, 101, 115, 115, 111, 46, 46, 46, 0
_stre723f7f6_7:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_8:
	.db 91, 83, 79, 93, 32, 69, 82, 82, 79, 58, 32, 70, 97, 108, 104, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 32, 105, 110, 101, 115, 112, 101, 114, 97, 100, 97, 32, 101, 109, 32, 109, 111, 100, 111, 32, 67, 97, 114, 103, 97, 32, 67, 111, 109, 112, 108, 101, 116, 97, 33, 0
_stre723f7f6_9:
	.db 91, 83, 79, 93, 32, 69, 82, 82, 79, 58, 32, 83, 101, 109, 32, 113, 117, 97, 100, 114, 111, 115, 32, 102, 105, 115, 105, 99, 111, 115, 32, 112, 97, 114, 97, 32, 97, 116, 101, 110, 100, 101, 114, 32, 102, 97, 108, 116, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 33, 0
_stre723f7f6_10:
	.db 91, 83, 79, 93, 32, 70, 97, 108, 104, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 32, 102, 111, 114, 97, 32, 100, 101, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 118, 97, 108, 105, 100, 111, 33, 32, 80, 97, 114, 97, 110, 100, 111, 46, 0
_stre723f7f6_11:
	.db 10, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_12:
	.db 91, 83, 79, 93, 32, 69, 88, 67, 69, 67, 65, 79, 58, 32, 70, 65, 76, 72, 65, 32, 68, 69, 32, 80, 65, 71, 73, 78, 65, 32, 73, 76, 69, 71, 65, 76, 33, 0
_stre723f7f6_13:
	.db 91, 83, 79, 93, 32, 80, 73, 68, 58, 32, 0
_stre723f7f6_14:
	.db 32, 124, 32, 73, 80, 58, 32, 48, 120, 0
_stre723f7f6_15:
	.db 32, 124, 32, 80, 97, 103, 58, 32, 0
_stre723f7f6_16:
	.db 91, 83, 79, 93, 32, 69, 110, 99, 101, 114, 114, 97, 110, 100, 111, 32, 112, 114, 111, 99, 101, 115, 115, 111, 46, 46, 46, 0
_stre723f7f6_17:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_18:
	.db 91, 83, 79, 93, 32, 69, 82, 82, 79, 58, 32, 70, 97, 108, 104, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 32, 105, 110, 101, 115, 112, 101, 114, 97, 100, 97, 32, 101, 109, 32, 109, 111, 100, 111, 32, 67, 97, 114, 103, 97, 32, 67, 111, 109, 112, 108, 101, 116, 97, 33, 0
_stre723f7f6_19:
	.db 91, 83, 79, 93, 32, 69, 82, 82, 79, 58, 32, 83, 101, 109, 32, 113, 117, 97, 100, 114, 111, 115, 32, 102, 105, 115, 105, 99, 111, 115, 32, 112, 97, 114, 97, 32, 97, 116, 101, 110, 100, 101, 114, 32, 102, 97, 108, 116, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 33, 0
_stre723f7f6_20:
	.db 10, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_21:
	.db 91, 83, 79, 93, 32, 86, 73, 79, 76, 65, 67, 65, 79, 32, 68, 69, 32, 80, 82, 79, 84, 69, 67, 65, 79, 32, 40, 73, 78, 84, 32, 49, 41, 33, 0
_stre723f7f6_22:
	.db 91, 83, 79, 93, 32, 80, 73, 68, 58, 32, 0
_stre723f7f6_23:
	.db 32, 116, 101, 110, 116, 111, 117, 32, 101, 115, 99, 114, 105, 116, 97, 32, 101, 109, 32, 99, 111, 100, 105, 103, 111, 33, 0
_stre723f7f6_24:
	.db 91, 83, 79, 93, 32, 73, 80, 58, 32, 48, 120, 0
_stre723f7f6_25:
	.db 91, 83, 79, 93, 32, 84, 101, 114, 109, 105, 110, 97, 110, 100, 111, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 102, 97, 108, 116, 111, 115, 111, 46, 46, 46, 0
_stre723f7f6_26:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_27:
	.db 10, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_28:
	.db 91, 83, 79, 93, 32, 86, 73, 79, 76, 65, 67, 65, 79, 32, 68, 69, 32, 80, 82, 79, 84, 69, 67, 65, 79, 32, 40, 73, 78, 84, 32, 49, 41, 33, 0
_stre723f7f6_29:
	.db 91, 83, 79, 93, 32, 80, 73, 68, 58, 32, 0
_stre723f7f6_30:
	.db 32, 116, 101, 110, 116, 111, 117, 32, 101, 115, 99, 114, 105, 116, 97, 32, 101, 109, 32, 99, 111, 100, 105, 103, 111, 33, 0
_stre723f7f6_31:
	.db 91, 83, 79, 93, 32, 73, 80, 58, 32, 48, 120, 0
_stre723f7f6_32:
	.db 91, 83, 79, 93, 32, 84, 101, 114, 109, 105, 110, 97, 110, 100, 111, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 102, 97, 108, 116, 111, 115, 111, 46, 46, 46, 0
_stre723f7f6_33:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_34:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_stre723f7f6_35:
	.db 32, 32, 82, 69, 76, 65, 84, 79, 82, 73, 79, 32, 68, 69, 32, 69, 88, 69, 67, 85, 67, 65, 79, 32, 68, 79, 32, 83, 79, 32, 77, 65, 78, 67, 72, 65, 32, 40, 84, 51, 41, 0
_stre723f7f6_36:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_stre723f7f6_37:
	.db 77, 111, 100, 111, 32, 80, 97, 103, 58, 32, 0
_stre723f7f6_38:
	.db 80, 111, 114, 32, 68, 101, 109, 97, 110, 100, 97, 32, 40, 80, 97, 114, 116, 101, 115, 32, 73, 73, 47, 73, 73, 73, 41, 0
_stre723f7f6_39:
	.db 67, 97, 114, 103, 97, 32, 67, 111, 109, 112, 108, 101, 116, 97, 32, 40, 80, 97, 114, 116, 101, 32, 73, 41, 0
_stre723f7f6_40:
	.db 65, 108, 103, 111, 114, 105, 116, 109, 111, 32, 83, 117, 98, 115, 116, 58, 32, 0
_stre723f7f6_41:
	.db 76, 82, 85, 32, 40, 69, 110, 118, 101, 108, 104, 101, 99, 105, 109, 101, 110, 116, 111, 41, 0
_stre723f7f6_42:
	.db 70, 73, 70, 79, 0
_stre723f7f6_43:
	.db 76, 105, 109, 105, 116, 101, 32, 81, 117, 97, 100, 114, 111, 115, 58, 32, 0
_stre723f7f6_44:
	.db 32, 113, 117, 97, 100, 114, 111, 115, 0
_stre723f7f6_45:
	.db 81, 117, 97, 110, 116, 117, 109, 58, 32, 0
_stre723f7f6_46:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_stre723f7f6_47:
	.db 84, 101, 109, 112, 111, 32, 116, 111, 116, 97, 108, 32, 101, 120, 101, 99, 58, 32, 0
_stre723f7f6_48:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_stre723f7f6_49:
	.db 84, 101, 109, 112, 111, 32, 111, 99, 105, 111, 115, 111, 58, 32, 32, 32, 32, 32, 0
_stre723f7f6_50:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_stre723f7f6_51:
	.db 80, 114, 111, 99, 101, 115, 115, 111, 115, 32, 99, 114, 105, 97, 100, 111, 115, 58, 0
_stre723f7f6_52:
	.db 84, 111, 116, 97, 108, 32, 112, 114, 101, 101, 109, 112, 99, 111, 101, 115, 58, 32, 0
_stre723f7f6_53:
	.db 70, 97, 108, 116, 97, 115, 32, 100, 101, 32, 80, 97, 103, 105, 110, 97, 58, 32, 0
_stre723f7f6_54:
	.db 83, 117, 98, 115, 116, 105, 116, 117, 105, 99, 111, 101, 115, 58, 32, 32, 32, 32, 0
_stre723f7f6_55:
	.db 69, 115, 99, 114, 105, 116, 97, 115, 32, 68, 105, 115, 99, 111, 58, 32, 32, 32, 0
_stre723f7f6_56:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_57:
	.db 67, 111, 110, 116, 97, 103, 101, 109, 32, 100, 101, 32, 73, 110, 116, 101, 114, 114, 117, 112, 99, 111, 101, 115, 32, 112, 111, 114, 32, 84, 105, 112, 111, 58, 0
_stre723f7f6_58:
	.db 32, 32, 91, 49, 93, 32, 80, 114, 111, 116, 101, 99, 97, 111, 32, 83, 101, 103, 58, 32, 32, 0
_stre723f7f6_59:
	.db 32, 32, 91, 53, 93, 32, 70, 97, 108, 116, 97, 32, 80, 97, 103, 105, 110, 97, 58, 32, 32, 0
_stre723f7f6_60:
	.db 32, 32, 91, 55, 93, 32, 83, 121, 115, 99, 97, 108, 108, 115, 58, 32, 32, 32, 32, 32, 32, 0
_stre723f7f6_61:
	.db 32, 32, 91, 56, 93, 32, 67, 111, 110, 115, 111, 108, 101, 58, 32, 32, 32, 32, 32, 32, 32, 0
_stre723f7f6_62:
	.db 32, 32, 91, 49, 48, 93, 32, 82, 101, 108, 111, 103, 105, 111, 58, 32, 32, 32, 32, 32, 32, 0
_stre723f7f6_63:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_64:
	.db 77, 101, 116, 114, 105, 99, 97, 115, 32, 73, 110, 100, 105, 118, 105, 100, 117, 97, 105, 115, 32, 112, 111, 114, 32, 80, 114, 111, 99, 101, 115, 115, 111, 58, 0
_stre723f7f6_65:
	.db 80, 73, 68, 32, 80, 114, 111, 103, 32, 32, 32, 82, 101, 116, 32, 32, 80, 114, 101, 101, 109, 112, 32, 70, 97, 108, 116, 97, 115, 32, 84, 46, 80, 114, 111, 110, 116, 111, 32, 84, 46, 69, 120, 101, 99, 0
_stre723f7f6_66:
	.db 45, 45, 45, 32, 45, 45, 45, 45, 32, 32, 32, 45, 45, 45, 32, 32, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_67:
	.db 32, 32, 32, 0
_stre723f7f6_68:
	.db 32, 32, 32, 32, 0
_stre723f7f6_69:
	.db 32, 32, 32, 32, 0
_stre723f7f6_70:
	.db 32, 32, 32, 32, 32, 32, 0
_stre723f7f6_71:
	.db 32, 32, 32, 32, 32, 32, 0
_stre723f7f6_72:
	.db 32, 32, 32, 32, 32, 32, 0
_stre723f7f6_73:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_stre723f7f6_74:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_stre723f7f6_75:
	.db 32, 32, 82, 69, 76, 65, 84, 79, 82, 73, 79, 32, 68, 69, 32, 69, 88, 69, 67, 85, 67, 65, 79, 32, 68, 79, 32, 83, 79, 32, 77, 65, 78, 67, 72, 65, 32, 40, 84, 51, 41, 0
_stre723f7f6_76:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_stre723f7f6_77:
	.db 77, 111, 100, 111, 32, 80, 97, 103, 58, 32, 0
_stre723f7f6_78:
	.db 80, 111, 114, 32, 68, 101, 109, 97, 110, 100, 97, 32, 40, 80, 97, 114, 116, 101, 115, 32, 73, 73, 47, 73, 73, 73, 41, 0
_stre723f7f6_79:
	.db 67, 97, 114, 103, 97, 32, 67, 111, 109, 112, 108, 101, 116, 97, 32, 40, 80, 97, 114, 116, 101, 32, 73, 41, 0
_stre723f7f6_80:
	.db 65, 108, 103, 111, 114, 105, 116, 109, 111, 32, 83, 117, 98, 115, 116, 58, 32, 0
_stre723f7f6_81:
	.db 76, 82, 85, 32, 40, 69, 110, 118, 101, 108, 104, 101, 99, 105, 109, 101, 110, 116, 111, 41, 0
_stre723f7f6_82:
	.db 70, 73, 70, 79, 0
_stre723f7f6_83:
	.db 76, 105, 109, 105, 116, 101, 32, 81, 117, 97, 100, 114, 111, 115, 58, 32, 0
_stre723f7f6_84:
	.db 32, 113, 117, 97, 100, 114, 111, 115, 0
_stre723f7f6_85:
	.db 81, 117, 97, 110, 116, 117, 109, 58, 32, 0
_stre723f7f6_86:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_stre723f7f6_87:
	.db 84, 101, 109, 112, 111, 32, 116, 111, 116, 97, 108, 32, 101, 120, 101, 99, 58, 32, 0
_stre723f7f6_88:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_stre723f7f6_89:
	.db 84, 101, 109, 112, 111, 32, 111, 99, 105, 111, 115, 111, 58, 32, 32, 32, 32, 32, 0
_stre723f7f6_90:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_stre723f7f6_91:
	.db 80, 114, 111, 99, 101, 115, 115, 111, 115, 32, 99, 114, 105, 97, 100, 111, 115, 58, 0
_stre723f7f6_92:
	.db 84, 111, 116, 97, 108, 32, 112, 114, 101, 101, 109, 112, 99, 111, 101, 115, 58, 32, 0
_stre723f7f6_93:
	.db 70, 97, 108, 116, 97, 115, 32, 100, 101, 32, 80, 97, 103, 105, 110, 97, 58, 32, 0
_stre723f7f6_94:
	.db 83, 117, 98, 115, 116, 105, 116, 117, 105, 99, 111, 101, 115, 58, 32, 32, 32, 32, 0
_stre723f7f6_95:
	.db 69, 115, 99, 114, 105, 116, 97, 115, 32, 68, 105, 115, 99, 111, 58, 32, 32, 32, 0
_stre723f7f6_96:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_97:
	.db 67, 111, 110, 116, 97, 103, 101, 109, 32, 100, 101, 32, 73, 110, 116, 101, 114, 114, 117, 112, 99, 111, 101, 115, 32, 112, 111, 114, 32, 84, 105, 112, 111, 58, 0
_stre723f7f6_98:
	.db 32, 32, 91, 49, 93, 32, 80, 114, 111, 116, 101, 99, 97, 111, 32, 83, 101, 103, 58, 32, 32, 0
_stre723f7f6_99:
	.db 32, 32, 91, 53, 93, 32, 70, 97, 108, 116, 97, 32, 80, 97, 103, 105, 110, 97, 58, 32, 32, 0
_stre723f7f6_100:
	.db 32, 32, 91, 55, 93, 32, 83, 121, 115, 99, 97, 108, 108, 115, 58, 32, 32, 32, 32, 32, 32, 0
_stre723f7f6_101:
	.db 32, 32, 91, 56, 93, 32, 67, 111, 110, 115, 111, 108, 101, 58, 32, 32, 32, 32, 32, 32, 32, 0
_stre723f7f6_102:
	.db 32, 32, 91, 49, 48, 93, 32, 82, 101, 108, 111, 103, 105, 111, 58, 32, 32, 32, 32, 32, 32, 0
_stre723f7f6_103:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_104:
	.db 77, 101, 116, 114, 105, 99, 97, 115, 32, 73, 110, 100, 105, 118, 105, 100, 117, 97, 105, 115, 32, 112, 111, 114, 32, 80, 114, 111, 99, 101, 115, 115, 111, 58, 0
_stre723f7f6_105:
	.db 80, 73, 68, 32, 80, 114, 111, 103, 32, 32, 32, 82, 101, 116, 32, 32, 80, 114, 101, 101, 109, 112, 32, 70, 97, 108, 116, 97, 115, 32, 84, 46, 80, 114, 111, 110, 116, 111, 32, 84, 46, 69, 120, 101, 99, 0
_stre723f7f6_106:
	.db 45, 45, 45, 32, 45, 45, 45, 45, 32, 32, 32, 45, 45, 45, 32, 32, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 0
_stre723f7f6_107:
	.db 32, 32, 32, 0
_stre723f7f6_108:
	.db 32, 32, 32, 32, 0
_stre723f7f6_109:
	.db 32, 32, 32, 32, 0
_stre723f7f6_110:
	.db 32, 32, 32, 32, 32, 32, 0
_stre723f7f6_111:
	.db 32, 32, 32, 32, 32, 32, 0
_stre723f7f6_112:
	.db 32, 32, 32, 32, 32, 32, 0
_stre723f7f6_113:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
