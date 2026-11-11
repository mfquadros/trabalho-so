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
	jmpc ge, _L28b79072_6
	ld r0, 0
	jmp _L28b79072_7
_L28b79072_6:
	ld r0, 1
_L28b79072_7:
	cmp r0, 0
	jmpc eq, _L28b79072_8
	ld sp, bp
	pop bp
	ret
_L28b79072_8:
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
	jmpc ge, _L28b79072_9
	ld r0, 0
	jmp _L28b79072_10
_L28b79072_9:
	ld r0, 1
_L28b79072_10:
	cmp r0, 0
	jmpc eq, _L28b79072_11
	ld r0, 0
	st r0, (_g_fila_fim)
_L28b79072_11:
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
	jmpc eq, _L28b79072_18
	ld r0, 0
	jmp _L28b79072_19
_L28b79072_18:
	ld r0, 1
_L28b79072_19:
	cmp r0, 0
	jmpc eq, _L28b79072_20
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L28b79072_20:
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
	jmpc ge, _L28b79072_21
	ld r0, 0
	jmp _L28b79072_22
_L28b79072_21:
	ld r0, 1
_L28b79072_22:
	cmp r0, 0
	jmpc eq, _L28b79072_23
	ld r0, 0
	st r0, (_g_fila_inicio)
_L28b79072_23:
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
_L28b79072_28:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_30
	ld r0, 0
	jmp _L28b79072_31
_L28b79072_30:
	ld r0, 1
_L28b79072_31:
	cmp r0, 0
	jmpc eq, _L28b79072_29
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
	jmp _L28b79072_28
_L28b79072_29:
	ld sp, bp
	pop bp
	ret
_f_procura_slot_por_pid:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L28b79072_43:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_45
	ld r0, 0
	jmp _L28b79072_46
_L28b79072_45:
	ld r0, 1
_L28b79072_46:
	cmp r0, 0
	jmpc eq, _L28b79072_44
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
	jmpc ne, _L28b79072_49
	ld r0, 0
	jmp _L28b79072_50
_L28b79072_49:
	ld r0, 1
_L28b79072_50:
	cmp r0, 0
	jmpc eq, _L28b79072_48
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
	jmpc eq, _L28b79072_51
	ld r0, 0
	jmp _L28b79072_52
_L28b79072_51:
	ld r0, 1
_L28b79072_52:
	cmp r0, 0
	jmpc eq, _L28b79072_48
	ld r0, 1
	jmp _L28b79072_47
_L28b79072_48:
	ld r0, 0
_L28b79072_47:
	cmp r0, 0
	jmpc eq, _L28b79072_53
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
_L28b79072_53:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L28b79072_43
_L28b79072_44:
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
	jmpc eq, _L28b79072_90
	ld r0, 0
	jmp _L28b79072_91
_L28b79072_90:
	ld r0, 1
_L28b79072_91:
	cmp r0, 0
	jmpc eq, _L28b79072_92
	ld r0, 0
	st r0, (bp+-2)
_L28b79072_93:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_95
	ld r0, 0
	jmp _L28b79072_96
_L28b79072_95:
	ld r0, 1
_L28b79072_96:
	cmp r0, 0
	jmpc eq, _L28b79072_94
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1)
	cmp r0, 0
	jmpc eq, _L28b79072_98
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
	jmpc eq, _L28b79072_99
	ld r0, 0
	jmp _L28b79072_100
_L28b79072_99:
	ld r0, 1
_L28b79072_100:
	cmp r0, 0
	jmpc eq, _L28b79072_98
	ld r0, 1
	jmp _L28b79072_97
_L28b79072_98:
	ld r0, 0
_L28b79072_97:
	cmp r0, 0
	jmpc eq, _L28b79072_101
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_104
	ld r0, 0
	jmp _L28b79072_105
_L28b79072_104:
	ld r0, 1
_L28b79072_105:
	cmp r0, 0
	jmpc ne, _L28b79072_103
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
	jmpc lt, _L28b79072_106
	ld r0, 0
	jmp _L28b79072_107
_L28b79072_106:
	ld r0, 1
_L28b79072_107:
	cmp r0, 0
	jmpc ne, _L28b79072_103
	ld r0, 0
	jmp _L28b79072_102
_L28b79072_103:
	ld r0, 1
_L28b79072_102:
	cmp r0, 0
	jmpc eq, _L28b79072_108
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
_L28b79072_108:
_L28b79072_101:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L28b79072_93
_L28b79072_94:
	jmp _L28b79072_109
_L28b79072_92:
	ld r0, 0
	st r0, (bp+-2)
_L28b79072_110:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_112
	ld r0, 0
	jmp _L28b79072_113
_L28b79072_112:
	ld r0, 1
_L28b79072_113:
	cmp r0, 0
	jmpc eq, _L28b79072_111
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1)
	cmp r0, 0
	jmpc eq, _L28b79072_115
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
	jmpc eq, _L28b79072_116
	ld r0, 0
	jmp _L28b79072_117
_L28b79072_116:
	ld r0, 1
_L28b79072_117:
	cmp r0, 0
	jmpc eq, _L28b79072_115
	ld r0, 1
	jmp _L28b79072_114
_L28b79072_115:
	ld r0, 0
_L28b79072_114:
	cmp r0, 0
	jmpc eq, _L28b79072_118
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_121
	ld r0, 0
	jmp _L28b79072_122
_L28b79072_121:
	ld r0, 1
_L28b79072_122:
	cmp r0, 0
	jmpc ne, _L28b79072_120
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
	jmpc lt, _L28b79072_123
	ld r0, 0
	jmp _L28b79072_124
_L28b79072_123:
	ld r0, 1
_L28b79072_124:
	cmp r0, 0
	jmpc ne, _L28b79072_120
	ld r0, 0
	jmp _L28b79072_119
_L28b79072_120:
	ld r0, 1
_L28b79072_119:
	cmp r0, 0
	jmpc eq, _L28b79072_125
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
_L28b79072_125:
_L28b79072_118:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L28b79072_110
_L28b79072_111:
_L28b79072_109:
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
_L28b79072_155:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_157
	ld r0, 0
	jmp _L28b79072_158
_L28b79072_157:
	ld r0, 1
_L28b79072_158:
	cmp r0, 0
	jmpc eq, _L28b79072_156
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
	jmpc eq, _L28b79072_159
	ld r0, 0
	jmp _L28b79072_160
_L28b79072_159:
	ld r0, 1
_L28b79072_160:
	cmp r0, 0
	jmpc eq, _L28b79072_161
	ld r0, (bp+-2)
	st r0, (bp+-4)
	jmp _L28b79072_156
_L28b79072_161:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L28b79072_155
_L28b79072_156:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_162
	ld r0, 0
	jmp _L28b79072_163
_L28b79072_162:
	ld r0, 1
_L28b79072_163:
	cmp r0, 0
	jmpc eq, _L28b79072_164
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
	jmpc eq, _L28b79072_165
	ld r0, 0
	jmp _L28b79072_166
_L28b79072_165:
	ld r0, 1
_L28b79072_166:
	cmp r0, 0
	jmpc eq, _L28b79072_167
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L28b79072_167:
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
	jmpc ge, _L28b79072_172
	ld r0, 0
	jmp _L28b79072_173
_L28b79072_172:
	ld r0, 1
_L28b79072_173:
	cmp r0, 0
	jmpc eq, _L28b79072_171
	ld r0, (bp+-12)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_174
	ld r0, 0
	jmp _L28b79072_175
_L28b79072_174:
	ld r0, 1
_L28b79072_175:
	cmp r0, 0
	jmpc eq, _L28b79072_171
	ld r0, 1
	jmp _L28b79072_170
_L28b79072_171:
	ld r0, 0
_L28b79072_170:
	cmp r0, 0
	jmpc eq, _L28b79072_169
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
	jmpc eq, _L28b79072_176
	ld r0, 0
	jmp _L28b79072_177
_L28b79072_176:
	ld r0, 1
_L28b79072_177:
	cmp r0, 0
	jmpc eq, _L28b79072_169
	ld r0, 1
	jmp _L28b79072_168
_L28b79072_169:
	ld r0, 0
_L28b79072_168:
	cmp r0, 0
	jmpc eq, _L28b79072_178
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-6)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+8)
	cmp r0, 0
	jmpc eq, _L28b79072_179
	ld r0, 128
	push r0
	ld r0, (bp+-10)
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-14)
	jmp _L28b79072_180
_L28b79072_179:
	ld r0, (bp+-10)
	st r0, (bp+-14)
_L28b79072_180:
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
	jmpc eq, _L28b79072_181
	ld r0, 0
	jmp _L28b79072_182
_L28b79072_181:
	ld r0, 1
_L28b79072_182:
	cmp r0, 0
	jmpc eq, _L28b79072_183
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
_L28b79072_183:
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
_L28b79072_178:
	ld r0, (_g_metricas+10)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_metricas+10)
_L28b79072_164:
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
_L28b79072_193:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_195
	ld r0, 0
	jmp _L28b79072_196
_L28b79072_195:
	ld r0, 1
_L28b79072_196:
	cmp r0, 0
	jmpc eq, _L28b79072_194
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1)
	cmp r0, 0
	jmpc eq, _L28b79072_198
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
	jmpc eq, _L28b79072_199
	ld r0, 0
	jmp _L28b79072_200
_L28b79072_199:
	ld r0, 1
_L28b79072_200:
	cmp r0, 0
	jmpc eq, _L28b79072_198
	ld r0, 1
	jmp _L28b79072_197
_L28b79072_198:
	ld r0, 0
_L28b79072_197:
	cmp r0, 0
	jmpc eq, _L28b79072_201
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
_L28b79072_201:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L28b79072_193
_L28b79072_194:
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
	jmpc lt, _L28b79072_268
	ld r0, 0
	jmp _L28b79072_269
_L28b79072_268:
	ld r0, 1
_L28b79072_269:
	cmp r0, 0
	jmpc ne, _L28b79072_267
	ld r0, (bp+4)
	push r0
	ld r0, (_g_n_programas)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L28b79072_270
	ld r0, 0
	jmp _L28b79072_271
_L28b79072_270:
	ld r0, 1
_L28b79072_271:
	cmp r0, 0
	jmpc ne, _L28b79072_267
	ld r0, 0
	jmp _L28b79072_266
_L28b79072_267:
	ld r0, 1
_L28b79072_266:
	cmp r0, 0
	jmpc eq, _L28b79072_272
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L28b79072_272:
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
_L28b79072_273:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_275
	ld r0, 0
	jmp _L28b79072_276
_L28b79072_275:
	ld r0, 1
_L28b79072_276:
	cmp r0, 0
	jmpc eq, _L28b79072_274
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
	jmpc eq, _L28b79072_277
	ld r0, 0
	jmp _L28b79072_278
_L28b79072_277:
	ld r0, 1
_L28b79072_278:
	cmp r0, 0
	jmpc eq, _L28b79072_279
	ld r0, (bp+-4)
	st r0, (bp+-2)
	jmp _L28b79072_274
_L28b79072_279:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _L28b79072_273
_L28b79072_274:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_280
	ld r0, 0
	jmp _L28b79072_281
_L28b79072_280:
	ld r0, 1
_L28b79072_281:
	cmp r0, 0
	jmpc eq, _L28b79072_282
	ld r0, 0
	st r0, (bp+-4)
_L28b79072_283:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_285
	ld r0, 0
	jmp _L28b79072_286
_L28b79072_285:
	ld r0, 1
_L28b79072_286:
	cmp r0, 0
	jmpc eq, _L28b79072_284
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
	jmpc eq, _L28b79072_287
	ld r0, 0
	jmp _L28b79072_288
_L28b79072_287:
	ld r0, 1
_L28b79072_288:
	cmp r0, 0
	jmpc eq, _L28b79072_289
	ld r0, (bp+-4)
	st r0, (bp+-2)
	jmp _L28b79072_284
_L28b79072_289:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _L28b79072_283
_L28b79072_284:
_L28b79072_282:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_290
	ld r0, 0
	jmp _L28b79072_291
_L28b79072_290:
	ld r0, 1
_L28b79072_291:
	cmp r0, 0
	jmpc eq, _L28b79072_292
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L28b79072_292:
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
_L28b79072_293:
	ld r0, (bp+-4)
	push r0
	ld r0, 256
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_295
	ld r0, 0
	jmp _L28b79072_296
_L28b79072_295:
	ld r0, 1
_L28b79072_296:
	cmp r0, 0
	jmpc eq, _L28b79072_294
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
	jmp _L28b79072_293
_L28b79072_294:
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
	jmpc eq, _L28b79072_297
	ld r0, 0
	jmp _L28b79072_298
_L28b79072_297:
	ld r0, 1
_L28b79072_298:
	cmp r0, 0
	jmpc eq, _L28b79072_299
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
_L28b79072_299:
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
	jmpc eq, _L28b79072_300
	ld r0, 0
	jmp _L28b79072_301
_L28b79072_300:
	ld r0, 1
_L28b79072_301:
	cmp r0, 0
	jmpc eq, _L28b79072_302
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
	jmp _L28b79072_303
_L28b79072_302:
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
_L28b79072_303:
	ld r0, 1
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_306
	ld r0, 0
	jmp _L28b79072_307
_L28b79072_306:
	ld r0, 1
_L28b79072_307:
	cmp r0, 0
	jmpc ne, _L28b79072_305
	ld r0, (bp+4)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_308
	ld r0, 0
	jmp _L28b79072_309
_L28b79072_308:
	ld r0, 1
_L28b79072_309:
	cmp r0, 0
	jmpc ne, _L28b79072_305
	ld r0, 0
	jmp _L28b79072_304
_L28b79072_305:
	ld r0, 1
_L28b79072_304:
	cmp r0, 0
	jmpc eq, _L28b79072_310
	ld r0, 0
	st r0, (bp+-4)
_L28b79072_311:
	ld r0, (bp+-4)
	push r0
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1+44)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_313
	ld r0, 0
	jmp _L28b79072_314
_L28b79072_313:
	ld r0, 1
_L28b79072_314:
	cmp r0, 0
	jmpc eq, _L28b79072_312
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
	jmpc eq, _L28b79072_317
	ld r0, 0
	jmp _L28b79072_318
_L28b79072_317:
	ld r0, 1
_L28b79072_318:
	cmp r0, 0
	jmpc eq, _L28b79072_316
	ld r0, (bp+-4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_319
	ld r0, 0
	jmp _L28b79072_320
_L28b79072_319:
	ld r0, 1
_L28b79072_320:
	cmp r0, 0
	jmpc eq, _L28b79072_316
	ld r0, 1
	jmp _L28b79072_315
_L28b79072_316:
	ld r0, 0
_L28b79072_315:
	cmp r0, 0
	jmpc eq, _L28b79072_321
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
_L28b79072_321:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _L28b79072_311
_L28b79072_312:
_L28b79072_310:
	ld r0, 0
	st r0, (bp+-4)
_L28b79072_322:
	ld r0, (bp+-4)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_324
	ld r0, 0
	jmp _L28b79072_325
_L28b79072_324:
	ld r0, 1
_L28b79072_325:
	cmp r0, 0
	jmpc eq, _L28b79072_323
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
	jmp _L28b79072_322
_L28b79072_323:
	ld r0, (bp+4)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_326
	ld r0, 0
	jmp _L28b79072_327
_L28b79072_326:
	ld r0, 1
_L28b79072_327:
	cmp r0, 0
	jmpc eq, _L28b79072_328
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
	jmp _L28b79072_329
_L28b79072_328:
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
_L28b79072_329:
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
_L28b79072_352:
	ld r0, (bp+-6)
	push r0
	ld r0, 256
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_354
	ld r0, 0
	jmp _L28b79072_355
_L28b79072_354:
	ld r0, 1
_L28b79072_355:
	cmp r0, 0
	jmpc eq, _L28b79072_353
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
	jmp _L28b79072_352
_L28b79072_353:
	ld r0, 0
	st r0, (bp+-6)
_L28b79072_356:
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_358
	ld r0, 0
	jmp _L28b79072_359
_L28b79072_358:
	ld r0, 1
_L28b79072_359:
	cmp r0, 0
	jmpc eq, _L28b79072_357
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
	jmpc eq, _L28b79072_364
	ld r0, 0
	jmp _L28b79072_365
_L28b79072_364:
	ld r0, 1
_L28b79072_365:
	cmp r0, 0
	jmpc eq, _L28b79072_363
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
	jmpc eq, _L28b79072_366
	ld r0, 0
	jmp _L28b79072_367
_L28b79072_366:
	ld r0, 1
_L28b79072_367:
	cmp r0, 0
	jmpc eq, _L28b79072_363
	ld r0, 1
	jmp _L28b79072_362
_L28b79072_363:
	ld r0, 0
_L28b79072_362:
	cmp r0, 0
	jmpc eq, _L28b79072_361
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
	jmpc eq, _L28b79072_368
	ld r0, 0
	jmp _L28b79072_369
_L28b79072_368:
	ld r0, 1
_L28b79072_369:
	cmp r0, 0
	jmpc eq, _L28b79072_361
	ld r0, 1
	jmp _L28b79072_360
_L28b79072_361:
	ld r0, 0
_L28b79072_360:
	cmp r0, 0
	jmpc eq, _L28b79072_370
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
_L28b79072_370:
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-6)
	jmp _L28b79072_356
_L28b79072_357:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_371
	ld r0, 0
	jmp _L28b79072_372
_L28b79072_371:
	ld r0, 1
_L28b79072_372:
	cmp r0, 0
	jmpc eq, _L28b79072_373
	ld r0, (_g_tempo_sistema)
	st r0, (_g_metricas+2)
	call _f_so_imprime_relatorio
	call _f_so_halt
_L28b79072_373:
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
	jmpc lt, _L28b79072_401
	ld r0, 0
	jmp _L28b79072_402
_L28b79072_401:
	ld r0, 1
_L28b79072_402:
	cmp r0, 0
	jmpc ne, _L28b79072_400
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L28b79072_403
	ld r0, 0
	jmp _L28b79072_404
_L28b79072_403:
	ld r0, 1
_L28b79072_404:
	cmp r0, 0
	jmpc ne, _L28b79072_400
	ld r0, 0
	jmp _L28b79072_399
_L28b79072_400:
	ld r0, 1
_L28b79072_399:
	cmp r0, 0
	jmpc eq, _L28b79072_405
	ld r0, _str28b79072_10
	push r0
	call _f_so_puts
	add sp, 2
	call _f_so_halt
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L28b79072_405:
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
	jmpc ge, _L28b79072_406
	ld r0, 0
	jmp _L28b79072_407
_L28b79072_406:
	ld r0, 1
_L28b79072_407:
	cmp r0, 0
	jmpc eq, _L28b79072_408
	ld r0, _str28b79072_11
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_12
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_13
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str28b79072_14
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+6)
	push r0
	call _f_so_print_hex
	add sp, 2
	ld r0, _str28b79072_15
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-8)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _str28b79072_16
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_17
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
	jmpc ne, _L28b79072_409
	ld r0, 0
	jmp _L28b79072_410
_L28b79072_409:
	ld r0, 1
_L28b79072_410:
	cmp r0, 0
	jmpc eq, _L28b79072_411
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
_L28b79072_411:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L28b79072_408:
	ld r0, 1
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_412
	ld r0, 0
	jmp _L28b79072_413
_L28b79072_412:
	ld r0, 1
_L28b79072_413:
	cmp r0, 0
	jmpc eq, _L28b79072_414
	ld r0, _str28b79072_18
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
	jmpc ne, _L28b79072_415
	ld r0, 0
	jmp _L28b79072_416
_L28b79072_415:
	ld r0, 1
_L28b79072_416:
	cmp r0, 0
	jmpc eq, _L28b79072_417
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
_L28b79072_417:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L28b79072_414:
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
	jmpc eq, _L28b79072_418
	ld r0, 0
	jmp _L28b79072_419
_L28b79072_418:
	ld r0, 1
_L28b79072_419:
	cmp r0, 0
	jmpc eq, _L28b79072_420
	ld r0, _str28b79072_19
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
	jmpc ne, _L28b79072_421
	ld r0, 0
	jmp _L28b79072_422
_L28b79072_421:
	ld r0, 1
_L28b79072_422:
	cmp r0, 0
	jmpc eq, _L28b79072_423
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
_L28b79072_423:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L28b79072_420:
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
	jmpc ge, _L28b79072_436
	ld r0, 0
	jmp _L28b79072_437
_L28b79072_436:
	ld r0, 1
_L28b79072_437:
	cmp r0, 0
	jmpc eq, _L28b79072_435
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_438
	ld r0, 0
	jmp _L28b79072_439
_L28b79072_438:
	ld r0, 1
_L28b79072_439:
	cmp r0, 0
	jmpc eq, _L28b79072_435
	ld r0, 1
	jmp _L28b79072_434
_L28b79072_435:
	ld r0, 0
_L28b79072_434:
	cmp r0, 0
	jmpc eq, _L28b79072_440
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-4)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-2)
	ld r0, _str28b79072_27
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_28
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_29
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str28b79072_30
	push r0
	call _f_so_print_str
	add sp, 2
	call _f_so_nova_linha
	ld r0, _str28b79072_31
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+6)
	push r0
	call _f_so_print_hex
	add sp, 2
	call _f_so_nova_linha
	ld r0, _str28b79072_32
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_33
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
	jmpc ne, _L28b79072_441
	ld r0, 0
	jmp _L28b79072_442
_L28b79072_441:
	ld r0, 1
_L28b79072_442:
	cmp r0, 0
	jmpc eq, _L28b79072_443
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
_L28b79072_443:
_L28b79072_440:
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
	jmpc gt, _L28b79072_472
	ld r0, 0
	jmp _L28b79072_473
_L28b79072_472:
	ld r0, 1
_L28b79072_473:
	cmp r0, 0
	jmpc eq, _L28b79072_474
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_475
	ld r0, 0
	jmp _L28b79072_476
_L28b79072_475:
	ld r0, 1
_L28b79072_476:
	cmp r0, 0
	jmpc eq, _L28b79072_477
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
	jmp _L28b79072_478
_L28b79072_477:
	ld r0, (bp+-6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_479
	ld r0, 0
	jmp _L28b79072_480
_L28b79072_479:
	ld r0, 1
_L28b79072_480:
	cmp r0, 0
	jmpc eq, _L28b79072_481
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
	jmp _L28b79072_482
_L28b79072_481:
	ld r0, (bp+-6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_483
	ld r0, 0
	jmp _L28b79072_484
_L28b79072_483:
	ld r0, 1
_L28b79072_484:
	cmp r0, 0
	jmpc eq, _L28b79072_485
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
_L28b79072_485:
_L28b79072_482:
_L28b79072_478:
_L28b79072_474:
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
	jmpc eq, _L28b79072_486
	ld r0, 0
	jmp _L28b79072_487
_L28b79072_486:
	ld r0, 1
_L28b79072_487:
	cmp r0, 0
	jmpc eq, _L28b79072_488
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
	jmp _L28b79072_489
_L28b79072_488:
	ld r0, (bp+6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_490
	ld r0, 0
	jmp _L28b79072_491
_L28b79072_490:
	ld r0, 1
_L28b79072_491:
	cmp r0, 0
	jmpc eq, _L28b79072_492
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
	jmpc gt, _L28b79072_493
	ld r0, 0
	jmp _L28b79072_494
_L28b79072_493:
	ld r0, 1
_L28b79072_494:
	cmp r0, 0
	jmpc eq, _L28b79072_495
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
_L28b79072_495:
	jmp _L28b79072_496
_L28b79072_492:
	ld r0, (bp+6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_497
	ld r0, 0
	jmp _L28b79072_498
_L28b79072_497:
	ld r0, 1
_L28b79072_498:
	cmp r0, 0
	jmpc eq, _L28b79072_499
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
_L28b79072_499:
_L28b79072_496:
_L28b79072_489:
	ld sp, bp
	pop bp
	ret
_f_so_escolhe_proximo:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 0
	st r0, (bp+-4)
_L28b79072_510:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_512
	ld r0, 0
	jmp _L28b79072_513
_L28b79072_512:
	ld r0, 1
_L28b79072_513:
	cmp r0, 0
	jmpc eq, _L28b79072_511
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
	jmpc eq, _L28b79072_514
	ld r0, 0
	jmp _L28b79072_515
_L28b79072_514:
	ld r0, 1
_L28b79072_515:
	cmp r0, 0
	jmpc eq, _L28b79072_516
	jmp _L28b79072_511
_L28b79072_516:
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
	jmpc eq, _L28b79072_517
	ld r0, 0
	jmp _L28b79072_518
_L28b79072_517:
	ld r0, 1
_L28b79072_518:
	cmp r0, 0
	jmpc eq, _L28b79072_519
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
_L28b79072_519:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _L28b79072_510
_L28b79072_511:
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
_L28b79072_524:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_526
	ld r0, 0
	jmp _L28b79072_527
_L28b79072_526:
	ld r0, 1
_L28b79072_527:
	cmp r0, 0
	jmpc eq, _L28b79072_525
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
	jmp _L28b79072_524
_L28b79072_525:
	ld sp, bp
	pop bp
	ret
_f_so_restaura_quadro:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L28b79072_532:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_534
	ld r0, 0
	jmp _L28b79072_535
_L28b79072_534:
	ld r0, 1
_L28b79072_535:
	cmp r0, 0
	jmpc eq, _L28b79072_533
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
	jmp _L28b79072_532
_L28b79072_533:
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
	jmpc ne, _L28b79072_539
	ld r0, 0
	jmp _L28b79072_540
_L28b79072_539:
	ld r0, 1
_L28b79072_540:
	cmp r0, 0
	jmpc eq, _L28b79072_541
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
_L28b79072_541:
	ld sp, bp
	pop bp
	ret
_f_so_trata_pendencias:
	push bp
	ld bp, sp
	sub sp, 4
	call _f_bios_console_disponivel
	cmp r0, 0
	jmpc eq, _L28b79072_560
	ld r0, 0
	st r0, (bp+-2)
_L28b79072_561:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_563
	ld r0, 0
	jmp _L28b79072_564
_L28b79072_563:
	ld r0, 1
_L28b79072_564:
	cmp r0, 0
	jmpc eq, _L28b79072_562
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
	jmpc eq, _L28b79072_567
	ld r0, 0
	jmp _L28b79072_568
_L28b79072_567:
	ld r0, 1
_L28b79072_568:
	cmp r0, 0
	jmpc eq, _L28b79072_566
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
	jmpc eq, _L28b79072_569
	ld r0, 0
	jmp _L28b79072_570
_L28b79072_569:
	ld r0, 1
_L28b79072_570:
	cmp r0, 0
	jmpc eq, _L28b79072_566
	ld r0, 1
	jmp _L28b79072_565
_L28b79072_566:
	ld r0, 0
_L28b79072_565:
	cmp r0, 0
	jmpc eq, _L28b79072_571
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
	jmpc eq, _L28b79072_572
	ld r0, 0
	jmp _L28b79072_573
_L28b79072_572:
	ld r0, 1
_L28b79072_573:
	cmp r0, 0
	jmpc eq, _L28b79072_574
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
	jmpc ne, _L28b79072_575
	ld r0, 0
	jmp _L28b79072_576
_L28b79072_575:
	ld r0, 1
_L28b79072_576:
	cmp r0, 0
	jmpc eq, _L28b79072_577
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
_L28b79072_577:
_L28b79072_574:
	jmp _L28b79072_562
_L28b79072_571:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L28b79072_561
_L28b79072_562:
_L28b79072_560:
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
	jmpc eq, _L28b79072_609
	ld r0, 0
	jmp _L28b79072_610
_L28b79072_609:
	ld r0, 1
_L28b79072_610:
	cmp r0, 0
	jmpc eq, _L28b79072_611
	ld r0, 0
	st r0, (bp+-4)
_L28b79072_612:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_614
	ld r0, 0
	jmp _L28b79072_615
_L28b79072_614:
	ld r0, 1
_L28b79072_615:
	cmp r0, 0
	jmpc eq, _L28b79072_613
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1)
	cmp r0, 0
	jmpc eq, _L28b79072_616
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
	jmpc ge, _L28b79072_621
	ld r0, 0
	jmp _L28b79072_622
_L28b79072_621:
	ld r0, 1
_L28b79072_622:
	cmp r0, 0
	jmpc eq, _L28b79072_620
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_623
	ld r0, 0
	jmp _L28b79072_624
_L28b79072_623:
	ld r0, 1
_L28b79072_624:
	cmp r0, 0
	jmpc eq, _L28b79072_620
	ld r0, 1
	jmp _L28b79072_619
_L28b79072_620:
	ld r0, 0
_L28b79072_619:
	cmp r0, 0
	jmpc eq, _L28b79072_618
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
	jmpc ne, _L28b79072_625
	ld r0, 0
	jmp _L28b79072_626
_L28b79072_625:
	ld r0, 1
_L28b79072_626:
	cmp r0, 0
	jmpc eq, _L28b79072_618
	ld r0, 1
	jmp _L28b79072_617
_L28b79072_618:
	ld r0, 0
_L28b79072_617:
	cmp r0, 0
	jmpc eq, _L28b79072_627
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+8)
	cmp r0, 0
	jmpc eq, _L28b79072_628
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
	jmp _L28b79072_629
_L28b79072_628:
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 14
	pop r1
	add r1, r0
	ld r0, (r1+6)
	st r0, (bp+-8)
_L28b79072_629:
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
	jmpc eq, _L28b79072_630
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
_L28b79072_630:
_L28b79072_627:
_L28b79072_616:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _L28b79072_612
_L28b79072_613:
_L28b79072_611:
	call _f_so_trata_pendencias
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_631
	ld r0, 0
	jmp _L28b79072_632
_L28b79072_631:
	ld r0, 1
_L28b79072_632:
	cmp r0, 0
	jmpc eq, _L28b79072_633
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
_L28b79072_633:
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
	jmpc le, _L28b79072_634
	ld r0, 0
	jmp _L28b79072_635
_L28b79072_634:
	ld r0, 1
_L28b79072_635:
	cmp r0, 0
	jmpc eq, _L28b79072_636
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
	jmpc eq, _L28b79072_637
	ld r0, 0
	jmp _L28b79072_638
_L28b79072_637:
	ld r0, 1
_L28b79072_638:
	cmp r0, 0
	jmpc eq, _L28b79072_639
	ld r0, (_g_processo_atual)
	st r0, (bp+-2)
_L28b79072_639:
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
_L28b79072_636:
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
	jmpc eq, _L28b79072_686
	ld r0, 0
	jmp _L28b79072_687
_L28b79072_686:
	ld r0, 1
_L28b79072_687:
	cmp r0, 0
	jmpc eq, _L28b79072_688
	call _f_bios_console_disponivel
	cmp r0, 0
	jmpc eq, _L28b79072_689
	call _f_bios_console_le
	st r0, (bp+-6)
	ld r0, (bp+-6)
	ld sp, bp
	pop bp
	ret
_L28b79072_689:
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
	jmpc ne, _L28b79072_690
	ld r0, 0
	jmp _L28b79072_691
_L28b79072_690:
	ld r0, 1
_L28b79072_691:
	cmp r0, 0
	jmpc eq, _L28b79072_692
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
_L28b79072_692:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L28b79072_688:
	ld r0, (bp+6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_693
	ld r0, 0
	jmp _L28b79072_694
_L28b79072_693:
	ld r0, 1
_L28b79072_694:
	cmp r0, 0
	jmpc eq, _L28b79072_695
	ld r0, (bp+8)
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_L28b79072_695:
	ld r0, (bp+6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_696
	ld r0, 0
	jmp _L28b79072_697
_L28b79072_696:
	ld r0, 1
_L28b79072_697:
	cmp r0, 0
	jmpc eq, _L28b79072_698
	ld r0, (bp+8)
	push r0
	call _f_so_cria_proc_interno
	add sp, 2
	ld sp, bp
	pop bp
	ret
_L28b79072_698:
	ld r0, (bp+6)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_699
	ld r0, 0
	jmp _L28b79072_700
_L28b79072_699:
	ld r0, 1
_L28b79072_700:
	cmp r0, 0
	jmpc eq, _L28b79072_701
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
	jmpc eq, _L28b79072_704
	ld r0, 0
	jmp _L28b79072_705
_L28b79072_704:
	ld r0, 1
_L28b79072_705:
	cmp r0, 0
	jmpc ne, _L28b79072_703
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
	jmpc eq, _L28b79072_706
	ld r0, 0
	jmp _L28b79072_707
_L28b79072_706:
	ld r0, 1
_L28b79072_707:
	cmp r0, 0
	jmpc ne, _L28b79072_703
	ld r0, 0
	jmp _L28b79072_702
_L28b79072_703:
	ld r0, 1
_L28b79072_702:
	cmp r0, 0
	jmpc eq, _L28b79072_708
	ld r0, (bp+-2)
	push r0
	call _f_so_mata_proc_interno
	add sp, 2
	jmp _L28b79072_709
_L28b79072_708:
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
	jmpc ne, _L28b79072_710
	ld r0, 0
	jmp _L28b79072_711
_L28b79072_710:
	ld r0, 1
_L28b79072_711:
	cmp r0, 0
	jmpc eq, _L28b79072_712
	ld r0, (bp+-8)
	push r0
	call _f_so_mata_proc_interno
	add sp, 2
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_L28b79072_712:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L28b79072_709:
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
	jmpc ne, _L28b79072_713
	ld r0, 0
	jmp _L28b79072_714
_L28b79072_713:
	ld r0, 1
_L28b79072_714:
	cmp r0, 0
	jmpc eq, _L28b79072_715
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
_L28b79072_715:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L28b79072_701:
	ld r0, (bp+6)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_716
	ld r0, 0
	jmp _L28b79072_717
_L28b79072_716:
	ld r0, 1
_L28b79072_717:
	cmp r0, 0
	jmpc eq, _L28b79072_718
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
	jmpc eq, _L28b79072_719
	ld r0, 0
	jmp _L28b79072_720
_L28b79072_719:
	ld r0, 1
_L28b79072_720:
	cmp r0, 0
	jmpc eq, _L28b79072_721
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L28b79072_721:
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
	jmpc eq, _L28b79072_724
	ld r0, 0
	jmp _L28b79072_725
_L28b79072_724:
	ld r0, 1
_L28b79072_725:
	cmp r0, 0
	jmpc ne, _L28b79072_723
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
	jmpc eq, _L28b79072_726
	ld r0, 0
	jmp _L28b79072_727
_L28b79072_726:
	ld r0, 1
_L28b79072_727:
	cmp r0, 0
	jmpc ne, _L28b79072_723
	ld r0, 0
	jmp _L28b79072_722
_L28b79072_723:
	ld r0, 1
_L28b79072_722:
	cmp r0, 0
	jmpc eq, _L28b79072_728
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L28b79072_728:
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
	jmpc ne, _L28b79072_729
	ld r0, 0
	jmp _L28b79072_730
_L28b79072_729:
	ld r0, 1
_L28b79072_730:
	cmp r0, 0
	jmpc eq, _L28b79072_731
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
_L28b79072_731:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L28b79072_718:
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
_L28b79072_744:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_746
	ld r0, 0
	jmp _L28b79072_747
_L28b79072_746:
	ld r0, 1
_L28b79072_747:
	cmp r0, 0
	jmpc eq, _L28b79072_745
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
	jmp _L28b79072_744
_L28b79072_745:
	ld r0, 0
	st r0, (bp+-2)
_L28b79072_748:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_750
	ld r0, 0
	jmp _L28b79072_751
_L28b79072_750:
	ld r0, 1
_L28b79072_751:
	cmp r0, 0
	jmpc eq, _L28b79072_749
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
	jmp _L28b79072_748
_L28b79072_749:
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
_L28b79072_752:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_754
	ld r0, 0
	jmp _L28b79072_755
_L28b79072_754:
	ld r0, 1
_L28b79072_755:
	cmp r0, 0
	jmpc eq, _L28b79072_753
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
	jmp _L28b79072_752
_L28b79072_753:
	ld sp, bp
	pop bp
	ret
_f_so_print_str:
	push bp
	ld bp, sp
_L28b79072_760:
	ld r0, (bp+4)
	ld r1, r0
	ldb r0, (r1)
	and r0, 255
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L28b79072_762
	ld r0, 0
	jmp _L28b79072_763
_L28b79072_762:
	ld r0, 1
_L28b79072_763:
	cmp r0, 0
	jmpc eq, _L28b79072_761
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
	jmp _L28b79072_760
_L28b79072_761:
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
	jmpc lt, _L28b79072_779
	ld r0, 0
	jmp _L28b79072_780
_L28b79072_779:
	ld r0, 1
_L28b79072_780:
	cmp r0, 0
	jmpc eq, _L28b79072_781
	ld r0, 1
	st r0, (bp+-12)
	ld r0, (bp+4)
	xor r0, -1
	add r0, 1
	st r0, (bp+4)
_L28b79072_781:
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_782
	ld r0, 0
	jmp _L28b79072_783
_L28b79072_782:
	ld r0, 1
_L28b79072_783:
	cmp r0, 0
	jmpc eq, _L28b79072_784
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
_L28b79072_784:
_L28b79072_785:
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L28b79072_787
	ld r0, 0
	jmp _L28b79072_788
_L28b79072_787:
	ld r0, 1
_L28b79072_788:
	cmp r0, 0
	jmpc eq, _L28b79072_786
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
	jmp _L28b79072_785
_L28b79072_786:
	ld r0, (bp+-12)
	cmp r0, 0
	jmpc eq, _L28b79072_789
	ld r0, 45
	push r0
	call _f_so_escreve_caractere
	add sp, 2
_L28b79072_789:
_L28b79072_790:
	ld r0, (bp+-10)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L28b79072_792
	ld r0, 0
	jmp _L28b79072_793
_L28b79072_792:
	ld r0, 1
_L28b79072_793:
	cmp r0, 0
	jmpc eq, _L28b79072_791
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
	jmp _L28b79072_790
_L28b79072_791:
	ld sp, bp
	pop bp
	ret
_f_so_imprime_relatorio:
	push bp
	ld bp, sp
	sub sp, 4
	call _f_so_nova_linha
	ld r0, _str28b79072_74
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_75
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_76
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_77
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 1
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_809
	ld r0, 0
	jmp _L28b79072_810
_L28b79072_809:
	ld r0, 1
_L28b79072_810:
	cmp r0, 0
	jmpc eq, _L28b79072_811
	ld r0, _str28b79072_78
	push r0
	call _f_so_puts
	add sp, 2
	jmp _L28b79072_812
_L28b79072_811:
	ld r0, _str28b79072_79
	push r0
	call _f_so_puts
	add sp, 2
_L28b79072_812:
	ld r0, _str28b79072_80
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 1
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L28b79072_813
	ld r0, 0
	jmp _L28b79072_814
_L28b79072_813:
	ld r0, 1
_L28b79072_814:
	cmp r0, 0
	jmpc eq, _L28b79072_815
	ld r0, _str28b79072_81
	push r0
	call _f_so_puts
	add sp, 2
	jmp _L28b79072_816
_L28b79072_815:
	ld r0, _str28b79072_82
	push r0
	call _f_so_puts
	add sp, 2
_L28b79072_816:
	ld r0, _str28b79072_83
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 8
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str28b79072_84
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_85
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 4
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str28b79072_86
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_87
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+2)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str28b79072_88
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_89
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+4)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str28b79072_90
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_91
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _str28b79072_92
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+6)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _str28b79072_93
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+8)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _str28b79072_94
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+10)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _str28b79072_95
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+12)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _str28b79072_96
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_97
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_98
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
	ld r0, _str28b79072_99
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
	ld r0, _str28b79072_100
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
	ld r0, _str28b79072_101
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
	ld r0, _str28b79072_102
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
	ld r0, _str28b79072_103
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_104
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_105
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str28b79072_106
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L28b79072_817:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L28b79072_819
	ld r0, 0
	jmp _L28b79072_820
_L28b79072_819:
	ld r0, 1
_L28b79072_820:
	cmp r0, 0
	jmpc eq, _L28b79072_818
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
	jmpc gt, _L28b79072_821
	ld r0, 0
	jmp _L28b79072_822
_L28b79072_821:
	ld r0, 1
_L28b79072_822:
	cmp r0, 0
	jmpc eq, _L28b79072_823
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str28b79072_107
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
	ld r0, _str28b79072_108
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
	ld r0, _str28b79072_109
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+58)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str28b79072_110
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+52)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str28b79072_111
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+66)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str28b79072_112
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
_L28b79072_823:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L28b79072_817
_L28b79072_818:
	ld r0, _str28b79072_113
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
_str28b79072_0:
	.db 91, 83, 79, 93, 32, 70, 97, 108, 104, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 32, 102, 111, 114, 97, 32, 100, 101, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 118, 97, 108, 105, 100, 111, 33, 32, 80, 97, 114, 97, 110, 100, 111, 46, 0
_str28b79072_1:
	.db 10, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str28b79072_2:
	.db 91, 83, 79, 93, 32, 69, 88, 67, 69, 67, 65, 79, 58, 32, 70, 65, 76, 72, 65, 32, 68, 69, 32, 80, 65, 71, 73, 78, 65, 32, 73, 76, 69, 71, 65, 76, 33, 0
_str28b79072_3:
	.db 91, 83, 79, 93, 32, 80, 73, 68, 58, 32, 0
_str28b79072_4:
	.db 32, 124, 32, 73, 80, 58, 32, 48, 120, 0
_str28b79072_5:
	.db 32, 124, 32, 80, 97, 103, 58, 32, 0
_str28b79072_6:
	.db 91, 83, 79, 93, 32, 69, 110, 99, 101, 114, 114, 97, 110, 100, 111, 32, 112, 114, 111, 99, 101, 115, 115, 111, 46, 46, 46, 0
_str28b79072_7:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str28b79072_8:
	.db 91, 83, 79, 93, 32, 69, 82, 82, 79, 58, 32, 70, 97, 108, 104, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 32, 105, 110, 101, 115, 112, 101, 114, 97, 100, 97, 32, 101, 109, 32, 109, 111, 100, 111, 32, 67, 97, 114, 103, 97, 32, 67, 111, 109, 112, 108, 101, 116, 97, 33, 0
_str28b79072_9:
	.db 91, 83, 79, 93, 32, 69, 82, 82, 79, 58, 32, 83, 101, 109, 32, 113, 117, 97, 100, 114, 111, 115, 32, 102, 105, 115, 105, 99, 111, 115, 32, 112, 97, 114, 97, 32, 97, 116, 101, 110, 100, 101, 114, 32, 102, 97, 108, 116, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 33, 0
_str28b79072_10:
	.db 91, 83, 79, 93, 32, 70, 97, 108, 104, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 32, 102, 111, 114, 97, 32, 100, 101, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 118, 97, 108, 105, 100, 111, 33, 32, 80, 97, 114, 97, 110, 100, 111, 46, 0
_str28b79072_11:
	.db 10, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str28b79072_12:
	.db 91, 83, 79, 93, 32, 69, 88, 67, 69, 67, 65, 79, 58, 32, 70, 65, 76, 72, 65, 32, 68, 69, 32, 80, 65, 71, 73, 78, 65, 32, 73, 76, 69, 71, 65, 76, 33, 0
_str28b79072_13:
	.db 91, 83, 79, 93, 32, 80, 73, 68, 58, 32, 0
_str28b79072_14:
	.db 32, 124, 32, 73, 80, 58, 32, 48, 120, 0
_str28b79072_15:
	.db 32, 124, 32, 80, 97, 103, 58, 32, 0
_str28b79072_16:
	.db 91, 83, 79, 93, 32, 69, 110, 99, 101, 114, 114, 97, 110, 100, 111, 32, 112, 114, 111, 99, 101, 115, 115, 111, 46, 46, 46, 0
_str28b79072_17:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str28b79072_18:
	.db 91, 83, 79, 93, 32, 69, 82, 82, 79, 58, 32, 70, 97, 108, 104, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 32, 105, 110, 101, 115, 112, 101, 114, 97, 100, 97, 32, 101, 109, 32, 109, 111, 100, 111, 32, 67, 97, 114, 103, 97, 32, 67, 111, 109, 112, 108, 101, 116, 97, 33, 0
_str28b79072_19:
	.db 91, 83, 79, 93, 32, 69, 82, 82, 79, 58, 32, 83, 101, 109, 32, 113, 117, 97, 100, 114, 111, 115, 32, 102, 105, 115, 105, 99, 111, 115, 32, 112, 97, 114, 97, 32, 97, 116, 101, 110, 100, 101, 114, 32, 102, 97, 108, 116, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 33, 0
_str28b79072_20:
	.db 10, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str28b79072_21:
	.db 91, 83, 79, 93, 32, 86, 73, 79, 76, 65, 67, 65, 79, 32, 68, 69, 32, 80, 82, 79, 84, 69, 67, 65, 79, 32, 40, 73, 78, 84, 32, 49, 41, 33, 0
_str28b79072_22:
	.db 91, 83, 79, 93, 32, 80, 73, 68, 58, 32, 0
_str28b79072_23:
	.db 32, 116, 101, 110, 116, 111, 117, 32, 101, 115, 99, 114, 105, 116, 97, 32, 101, 109, 32, 99, 111, 100, 105, 103, 111, 33, 0
_str28b79072_24:
	.db 91, 83, 79, 93, 32, 73, 80, 58, 32, 48, 120, 0
_str28b79072_25:
	.db 91, 83, 79, 93, 32, 84, 101, 114, 109, 105, 110, 97, 110, 100, 111, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 102, 97, 108, 116, 111, 115, 111, 46, 46, 46, 0
_str28b79072_26:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str28b79072_27:
	.db 10, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str28b79072_28:
	.db 91, 83, 79, 93, 32, 86, 73, 79, 76, 65, 67, 65, 79, 32, 68, 69, 32, 80, 82, 79, 84, 69, 67, 65, 79, 32, 40, 73, 78, 84, 32, 49, 41, 33, 0
_str28b79072_29:
	.db 91, 83, 79, 93, 32, 80, 73, 68, 58, 32, 0
_str28b79072_30:
	.db 32, 116, 101, 110, 116, 111, 117, 32, 101, 115, 99, 114, 105, 116, 97, 32, 101, 109, 32, 99, 111, 100, 105, 103, 111, 33, 0
_str28b79072_31:
	.db 91, 83, 79, 93, 32, 73, 80, 58, 32, 48, 120, 0
_str28b79072_32:
	.db 91, 83, 79, 93, 32, 84, 101, 114, 109, 105, 110, 97, 110, 100, 111, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 102, 97, 108, 116, 111, 115, 111, 46, 46, 46, 0
_str28b79072_33:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str28b79072_34:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_str28b79072_35:
	.db 32, 32, 82, 69, 76, 65, 84, 79, 82, 73, 79, 32, 68, 69, 32, 69, 88, 69, 67, 85, 67, 65, 79, 32, 68, 79, 32, 83, 79, 32, 77, 65, 78, 67, 72, 65, 32, 40, 84, 51, 41, 0
_str28b79072_36:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_str28b79072_37:
	.db 77, 111, 100, 111, 32, 80, 97, 103, 58, 32, 0
_str28b79072_38:
	.db 80, 111, 114, 32, 68, 101, 109, 97, 110, 100, 97, 32, 40, 80, 97, 114, 116, 101, 115, 32, 73, 73, 47, 73, 73, 73, 41, 0
_str28b79072_39:
	.db 67, 97, 114, 103, 97, 32, 67, 111, 109, 112, 108, 101, 116, 97, 32, 40, 80, 97, 114, 116, 101, 32, 73, 41, 0
_str28b79072_40:
	.db 65, 108, 103, 111, 114, 105, 116, 109, 111, 32, 83, 117, 98, 115, 116, 58, 32, 0
_str28b79072_41:
	.db 76, 82, 85, 32, 40, 69, 110, 118, 101, 108, 104, 101, 99, 105, 109, 101, 110, 116, 111, 41, 0
_str28b79072_42:
	.db 70, 73, 70, 79, 0
_str28b79072_43:
	.db 76, 105, 109, 105, 116, 101, 32, 81, 117, 97, 100, 114, 111, 115, 58, 32, 0
_str28b79072_44:
	.db 32, 113, 117, 97, 100, 114, 111, 115, 0
_str28b79072_45:
	.db 81, 117, 97, 110, 116, 117, 109, 58, 32, 0
_str28b79072_46:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_str28b79072_47:
	.db 84, 101, 109, 112, 111, 32, 116, 111, 116, 97, 108, 32, 101, 120, 101, 99, 58, 32, 0
_str28b79072_48:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_str28b79072_49:
	.db 84, 101, 109, 112, 111, 32, 111, 99, 105, 111, 115, 111, 58, 32, 32, 32, 32, 32, 0
_str28b79072_50:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_str28b79072_51:
	.db 80, 114, 111, 99, 101, 115, 115, 111, 115, 32, 99, 114, 105, 97, 100, 111, 115, 58, 0
_str28b79072_52:
	.db 84, 111, 116, 97, 108, 32, 112, 114, 101, 101, 109, 112, 99, 111, 101, 115, 58, 32, 0
_str28b79072_53:
	.db 70, 97, 108, 116, 97, 115, 32, 100, 101, 32, 80, 97, 103, 105, 110, 97, 58, 32, 0
_str28b79072_54:
	.db 83, 117, 98, 115, 116, 105, 116, 117, 105, 99, 111, 101, 115, 58, 32, 32, 32, 32, 0
_str28b79072_55:
	.db 69, 115, 99, 114, 105, 116, 97, 115, 32, 68, 105, 115, 99, 111, 58, 32, 32, 32, 0
_str28b79072_56:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str28b79072_57:
	.db 67, 111, 110, 116, 97, 103, 101, 109, 32, 100, 101, 32, 73, 110, 116, 101, 114, 114, 117, 112, 99, 111, 101, 115, 32, 112, 111, 114, 32, 84, 105, 112, 111, 58, 0
_str28b79072_58:
	.db 32, 32, 91, 49, 93, 32, 80, 114, 111, 116, 101, 99, 97, 111, 32, 83, 101, 103, 58, 32, 32, 0
_str28b79072_59:
	.db 32, 32, 91, 53, 93, 32, 70, 97, 108, 116, 97, 32, 80, 97, 103, 105, 110, 97, 58, 32, 32, 0
_str28b79072_60:
	.db 32, 32, 91, 55, 93, 32, 83, 121, 115, 99, 97, 108, 108, 115, 58, 32, 32, 32, 32, 32, 32, 0
_str28b79072_61:
	.db 32, 32, 91, 56, 93, 32, 67, 111, 110, 115, 111, 108, 101, 58, 32, 32, 32, 32, 32, 32, 32, 0
_str28b79072_62:
	.db 32, 32, 91, 49, 48, 93, 32, 82, 101, 108, 111, 103, 105, 111, 58, 32, 32, 32, 32, 32, 32, 0
_str28b79072_63:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str28b79072_64:
	.db 77, 101, 116, 114, 105, 99, 97, 115, 32, 73, 110, 100, 105, 118, 105, 100, 117, 97, 105, 115, 32, 112, 111, 114, 32, 80, 114, 111, 99, 101, 115, 115, 111, 58, 0
_str28b79072_65:
	.db 80, 73, 68, 32, 80, 114, 111, 103, 32, 32, 32, 82, 101, 116, 32, 32, 80, 114, 101, 101, 109, 112, 32, 70, 97, 108, 116, 97, 115, 32, 84, 46, 80, 114, 111, 110, 116, 111, 32, 84, 46, 69, 120, 101, 99, 0
_str28b79072_66:
	.db 45, 45, 45, 32, 45, 45, 45, 45, 32, 32, 32, 45, 45, 45, 32, 32, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 0
_str28b79072_67:
	.db 32, 32, 32, 0
_str28b79072_68:
	.db 32, 32, 32, 32, 0
_str28b79072_69:
	.db 32, 32, 32, 32, 0
_str28b79072_70:
	.db 32, 32, 32, 32, 32, 32, 0
_str28b79072_71:
	.db 32, 32, 32, 32, 32, 32, 0
_str28b79072_72:
	.db 32, 32, 32, 32, 32, 32, 0
_str28b79072_73:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_str28b79072_74:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_str28b79072_75:
	.db 32, 32, 82, 69, 76, 65, 84, 79, 82, 73, 79, 32, 68, 69, 32, 69, 88, 69, 67, 85, 67, 65, 79, 32, 68, 79, 32, 83, 79, 32, 77, 65, 78, 67, 72, 65, 32, 40, 84, 51, 41, 0
_str28b79072_76:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_str28b79072_77:
	.db 77, 111, 100, 111, 32, 80, 97, 103, 58, 32, 0
_str28b79072_78:
	.db 80, 111, 114, 32, 68, 101, 109, 97, 110, 100, 97, 32, 40, 80, 97, 114, 116, 101, 115, 32, 73, 73, 47, 73, 73, 73, 41, 0
_str28b79072_79:
	.db 67, 97, 114, 103, 97, 32, 67, 111, 109, 112, 108, 101, 116, 97, 32, 40, 80, 97, 114, 116, 101, 32, 73, 41, 0
_str28b79072_80:
	.db 65, 108, 103, 111, 114, 105, 116, 109, 111, 32, 83, 117, 98, 115, 116, 58, 32, 0
_str28b79072_81:
	.db 76, 82, 85, 32, 40, 69, 110, 118, 101, 108, 104, 101, 99, 105, 109, 101, 110, 116, 111, 41, 0
_str28b79072_82:
	.db 70, 73, 70, 79, 0
_str28b79072_83:
	.db 76, 105, 109, 105, 116, 101, 32, 81, 117, 97, 100, 114, 111, 115, 58, 32, 0
_str28b79072_84:
	.db 32, 113, 117, 97, 100, 114, 111, 115, 0
_str28b79072_85:
	.db 81, 117, 97, 110, 116, 117, 109, 58, 32, 0
_str28b79072_86:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_str28b79072_87:
	.db 84, 101, 109, 112, 111, 32, 116, 111, 116, 97, 108, 32, 101, 120, 101, 99, 58, 32, 0
_str28b79072_88:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_str28b79072_89:
	.db 84, 101, 109, 112, 111, 32, 111, 99, 105, 111, 115, 111, 58, 32, 32, 32, 32, 32, 0
_str28b79072_90:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_str28b79072_91:
	.db 80, 114, 111, 99, 101, 115, 115, 111, 115, 32, 99, 114, 105, 97, 100, 111, 115, 58, 0
_str28b79072_92:
	.db 84, 111, 116, 97, 108, 32, 112, 114, 101, 101, 109, 112, 99, 111, 101, 115, 58, 32, 0
_str28b79072_93:
	.db 70, 97, 108, 116, 97, 115, 32, 100, 101, 32, 80, 97, 103, 105, 110, 97, 58, 32, 0
_str28b79072_94:
	.db 83, 117, 98, 115, 116, 105, 116, 117, 105, 99, 111, 101, 115, 58, 32, 32, 32, 32, 0
_str28b79072_95:
	.db 69, 115, 99, 114, 105, 116, 97, 115, 32, 68, 105, 115, 99, 111, 58, 32, 32, 32, 0
_str28b79072_96:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str28b79072_97:
	.db 67, 111, 110, 116, 97, 103, 101, 109, 32, 100, 101, 32, 73, 110, 116, 101, 114, 114, 117, 112, 99, 111, 101, 115, 32, 112, 111, 114, 32, 84, 105, 112, 111, 58, 0
_str28b79072_98:
	.db 32, 32, 91, 49, 93, 32, 80, 114, 111, 116, 101, 99, 97, 111, 32, 83, 101, 103, 58, 32, 32, 0
_str28b79072_99:
	.db 32, 32, 91, 53, 93, 32, 70, 97, 108, 116, 97, 32, 80, 97, 103, 105, 110, 97, 58, 32, 32, 0
_str28b79072_100:
	.db 32, 32, 91, 55, 93, 32, 83, 121, 115, 99, 97, 108, 108, 115, 58, 32, 32, 32, 32, 32, 32, 0
_str28b79072_101:
	.db 32, 32, 91, 56, 93, 32, 67, 111, 110, 115, 111, 108, 101, 58, 32, 32, 32, 32, 32, 32, 32, 0
_str28b79072_102:
	.db 32, 32, 91, 49, 48, 93, 32, 82, 101, 108, 111, 103, 105, 111, 58, 32, 32, 32, 32, 32, 32, 0
_str28b79072_103:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str28b79072_104:
	.db 77, 101, 116, 114, 105, 99, 97, 115, 32, 73, 110, 100, 105, 118, 105, 100, 117, 97, 105, 115, 32, 112, 111, 114, 32, 80, 114, 111, 99, 101, 115, 115, 111, 58, 0
_str28b79072_105:
	.db 80, 73, 68, 32, 80, 114, 111, 103, 32, 32, 32, 82, 101, 116, 32, 32, 80, 114, 101, 101, 109, 112, 32, 70, 97, 108, 116, 97, 115, 32, 84, 46, 80, 114, 111, 110, 116, 111, 32, 84, 46, 69, 120, 101, 99, 0
_str28b79072_106:
	.db 45, 45, 45, 32, 45, 45, 45, 45, 32, 32, 32, 45, 45, 45, 32, 32, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 0
_str28b79072_107:
	.db 32, 32, 32, 0
_str28b79072_108:
	.db 32, 32, 32, 32, 0
_str28b79072_109:
	.db 32, 32, 32, 32, 0
_str28b79072_110:
	.db 32, 32, 32, 32, 32, 32, 0
_str28b79072_111:
	.db 32, 32, 32, 32, 32, 32, 0
_str28b79072_112:
	.db 32, 32, 32, 32, 32, 32, 0
_str28b79072_113:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
