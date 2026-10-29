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
	jmpc ge, _Lef62e4f1_6
	ld r0, 0
	jmp _Lef62e4f1_7
_Lef62e4f1_6:
	ld r0, 1
_Lef62e4f1_7:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_8
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_8:
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
	jmpc ge, _Lef62e4f1_9
	ld r0, 0
	jmp _Lef62e4f1_10
_Lef62e4f1_9:
	ld r0, 1
_Lef62e4f1_10:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_11
	ld r0, 0
	st r0, (_g_fila_fim)
_Lef62e4f1_11:
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
	jmpc eq, _Lef62e4f1_18
	ld r0, 0
	jmp _Lef62e4f1_19
_Lef62e4f1_18:
	ld r0, 1
_Lef62e4f1_19:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_20
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_20:
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
	jmpc ge, _Lef62e4f1_21
	ld r0, 0
	jmp _Lef62e4f1_22
_Lef62e4f1_21:
	ld r0, 1
_Lef62e4f1_22:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_23
	ld r0, 0
	st r0, (_g_fila_inicio)
_Lef62e4f1_23:
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
_Lef62e4f1_28:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_30
	ld r0, 0
	jmp _Lef62e4f1_31
_Lef62e4f1_30:
	ld r0, 1
_Lef62e4f1_31:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_29
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+2)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+6)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+8)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+10)
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Lef62e4f1_28
_Lef62e4f1_29:
	ld sp, bp
	pop bp
	ret
_f_procura_slot_por_pid:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_Lef62e4f1_43:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_45
	ld r0, 0
	jmp _Lef62e4f1_46
_Lef62e4f1_45:
	ld r0, 1
_Lef62e4f1_46:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_44
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
	jmpc ne, _Lef62e4f1_49
	ld r0, 0
	jmp _Lef62e4f1_50
_Lef62e4f1_49:
	ld r0, 1
_Lef62e4f1_50:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_48
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
	jmpc eq, _Lef62e4f1_51
	ld r0, 0
	jmp _Lef62e4f1_52
_Lef62e4f1_51:
	ld r0, 1
_Lef62e4f1_52:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_48
	ld r0, 1
	jmp _Lef62e4f1_47
_Lef62e4f1_48:
	ld r0, 0
_Lef62e4f1_47:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_53
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_53:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Lef62e4f1_43
_Lef62e4f1_44:
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
	ld r0, 0
	st r0, (bp+-4)
	ld r0, 1
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_72
	ld r0, 0
	jmp _Lef62e4f1_73
_Lef62e4f1_72:
	ld r0, 1
_Lef62e4f1_73:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_74
	ld r0, _g_quadros_pool
	push r0
	ld r0, 0
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+8)
	st r0, (bp+-6)
	ld r0, 1
	st r0, (bp+-2)
_Lef62e4f1_75:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_77
	ld r0, 0
	jmp _Lef62e4f1_78
_Lef62e4f1_77:
	ld r0, 1
_Lef62e4f1_78:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_76
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+8)
	push r0
	ld r0, (bp+-6)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_79
	ld r0, 0
	jmp _Lef62e4f1_80
_Lef62e4f1_79:
	ld r0, 1
_Lef62e4f1_80:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_81
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+8)
	st r0, (bp+-6)
	ld r0, (bp+-2)
	st r0, (bp+-4)
_Lef62e4f1_81:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Lef62e4f1_75
_Lef62e4f1_76:
	jmp _Lef62e4f1_82
_Lef62e4f1_74:
	ld r0, _g_quadros_pool
	push r0
	ld r0, 0
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+10)
	st r0, (bp+-6)
	ld r0, 1
	st r0, (bp+-2)
_Lef62e4f1_83:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_85
	ld r0, 0
	jmp _Lef62e4f1_86
_Lef62e4f1_85:
	ld r0, 1
_Lef62e4f1_86:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_84
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+10)
	push r0
	ld r0, (bp+-6)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_87
	ld r0, 0
	jmp _Lef62e4f1_88
_Lef62e4f1_87:
	ld r0, 1
_Lef62e4f1_88:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_89
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+10)
	st r0, (bp+-6)
	ld r0, (bp+-2)
	st r0, (bp+-4)
_Lef62e4f1_89:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Lef62e4f1_83
_Lef62e4f1_84:
_Lef62e4f1_82:
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
_Lef62e4f1_108:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_110
	ld r0, 0
	jmp _Lef62e4f1_111
_Lef62e4f1_110:
	ld r0, 1
_Lef62e4f1_111:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_109
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_112
	ld r0, 0
	jmp _Lef62e4f1_113
_Lef62e4f1_112:
	ld r0, 1
_Lef62e4f1_113:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_114
	ld r0, (bp+-2)
	st r0, (bp+-4)
	jmp _Lef62e4f1_109
_Lef62e4f1_114:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Lef62e4f1_108
_Lef62e4f1_109:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_115
	ld r0, 0
	jmp _Lef62e4f1_116
_Lef62e4f1_115:
	ld r0, 1
_Lef62e4f1_116:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_117
	call _f_escolhe_quadro_vitima
	st r0, (bp+-6)
	ld r0, (bp+-6)
	st r0, (bp+-4)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-6)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+2)
	st r0, (bp+-8)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-6)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+4)
	st r0, (bp+-10)
	ld r0, (bp+-8)
	push r0
	call _f_procura_slot_por_pid
	add sp, 2
	st r0, (bp+-12)
	ld r0, (bp+-12)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Lef62e4f1_118
	ld r0, 0
	jmp _Lef62e4f1_119
_Lef62e4f1_118:
	ld r0, 1
_Lef62e4f1_119:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_120
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-6)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+6)
	cmp r0, 0
	jmpc eq, _Lef62e4f1_121
	ld r0, 128
	push r0
	ld r0, (bp+-10)
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-14)
	jmp _Lef62e4f1_122
_Lef62e4f1_121:
	ld r0, (bp+-10)
	st r0, (bp+-14)
_Lef62e4f1_122:
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
	jmpc eq, _Lef62e4f1_123
	ld r0, 0
	jmp _Lef62e4f1_124
_Lef62e4f1_123:
	ld r0, 1
_Lef62e4f1_124:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_125
	ld r0, 160
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
_Lef62e4f1_125:
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
_Lef62e4f1_120:
	ld r0, (_g_metricas+10)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_metricas+10)
_Lef62e4f1_117:
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
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	pop r1
	st r0, (r1)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+4)
	pop r1
	st r0, (r1+2)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+6)
	pop r1
	st r0, (r1+4)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+8)
	pop r1
	st r0, (r1+6)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, (_g_contador_ordem_fifo)
	pop r1
	st r0, (r1+8)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 32768
	pop r1
	st r0, (r1+10)
	ld r0, 160
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
_Lef62e4f1_135:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_137
	ld r0, 0
	jmp _Lef62e4f1_138
_Lef62e4f1_137:
	ld r0, 1
_Lef62e4f1_138:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_136
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1)
	cmp r0, 0
	jmpc eq, _Lef62e4f1_140
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, (bp+4)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_141
	ld r0, 0
	jmp _Lef62e4f1_142
_Lef62e4f1_141:
	ld r0, 1
_Lef62e4f1_142:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_140
	ld r0, 1
	jmp _Lef62e4f1_139
_Lef62e4f1_140:
	ld r0, 0
_Lef62e4f1_139:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_143
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+2)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+6)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+8)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-2)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+10)
_Lef62e4f1_143:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Lef62e4f1_135
_Lef62e4f1_136:
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
	jmpc lt, _Lef62e4f1_182
	ld r0, 0
	jmp _Lef62e4f1_183
_Lef62e4f1_182:
	ld r0, 1
_Lef62e4f1_183:
	cmp r0, 0
	jmpc ne, _Lef62e4f1_181
	ld r0, (bp+4)
	push r0
	ld r0, (_g_n_programas)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _Lef62e4f1_184
	ld r0, 0
	jmp _Lef62e4f1_185
_Lef62e4f1_184:
	ld r0, 1
_Lef62e4f1_185:
	cmp r0, 0
	jmpc ne, _Lef62e4f1_181
	ld r0, 0
	jmp _Lef62e4f1_180
_Lef62e4f1_181:
	ld r0, 1
_Lef62e4f1_180:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_186
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_186:
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
_Lef62e4f1_187:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_189
	ld r0, 0
	jmp _Lef62e4f1_190
_Lef62e4f1_189:
	ld r0, 1
_Lef62e4f1_190:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_188
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
	jmpc eq, _Lef62e4f1_193
	ld r0, 0
	jmp _Lef62e4f1_194
_Lef62e4f1_193:
	ld r0, 1
_Lef62e4f1_194:
	cmp r0, 0
	jmpc ne, _Lef62e4f1_192
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
	jmpc eq, _Lef62e4f1_195
	ld r0, 0
	jmp _Lef62e4f1_196
_Lef62e4f1_195:
	ld r0, 1
_Lef62e4f1_196:
	cmp r0, 0
	jmpc ne, _Lef62e4f1_192
	ld r0, 0
	jmp _Lef62e4f1_191
_Lef62e4f1_192:
	ld r0, 1
_Lef62e4f1_191:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_197
	ld r0, (bp+-4)
	st r0, (bp+-2)
	jmp _Lef62e4f1_188
_Lef62e4f1_197:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _Lef62e4f1_187
_Lef62e4f1_188:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_198
	ld r0, 0
	jmp _Lef62e4f1_199
_Lef62e4f1_198:
	ld r0, 1
_Lef62e4f1_199:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_200
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_200:
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
_Lef62e4f1_201:
	ld r0, (bp+-4)
	push r0
	ld r0, 256
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_203
	ld r0, 0
	jmp _Lef62e4f1_204
_Lef62e4f1_203:
	ld r0, 1
_Lef62e4f1_204:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_202
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
	jmp _Lef62e4f1_201
_Lef62e4f1_202:
	ld r0, 1
	push r0
	ld r0, 0
	push r0
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_quadro_aloca
	add sp, 6
	st r0, (bp+-6)
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
	ld r0, 1
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_205
	ld r0, 0
	jmp _Lef62e4f1_206
_Lef62e4f1_205:
	ld r0, 1
_Lef62e4f1_206:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_207
	ld r0, 0
	st r0, (bp+-4)
_Lef62e4f1_208:
	ld r0, (bp+-4)
	push r0
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1+44)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_210
	ld r0, 0
	jmp _Lef62e4f1_211
_Lef62e4f1_210:
	ld r0, 1
_Lef62e4f1_211:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_209
	ld r0, 0
	push r0
	ld r0, (bp+-4)
	push r0
	ld r0, (bp+-14)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_quadro_aloca
	add sp, 6
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
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _Lef62e4f1_208
_Lef62e4f1_209:
_Lef62e4f1_207:
	ld r0, 0
	st r0, (bp+-4)
_Lef62e4f1_212:
	ld r0, (bp+-4)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_214
	ld r0, 0
	jmp _Lef62e4f1_215
_Lef62e4f1_214:
	ld r0, 1
_Lef62e4f1_215:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_213
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
	jmp _Lef62e4f1_212
_Lef62e4f1_213:
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
_Lef62e4f1_238:
	ld r0, (bp+-6)
	push r0
	ld r0, 256
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_240
	ld r0, 0
	jmp _Lef62e4f1_241
_Lef62e4f1_240:
	ld r0, 1
_Lef62e4f1_241:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_239
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
	jmp _Lef62e4f1_238
_Lef62e4f1_239:
	ld r0, 0
	st r0, (bp+-6)
_Lef62e4f1_242:
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_244
	ld r0, 0
	jmp _Lef62e4f1_245
_Lef62e4f1_244:
	ld r0, 1
_Lef62e4f1_245:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_243
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
	jmpc eq, _Lef62e4f1_250
	ld r0, 0
	jmp _Lef62e4f1_251
_Lef62e4f1_250:
	ld r0, 1
_Lef62e4f1_251:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_249
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
	jmpc eq, _Lef62e4f1_252
	ld r0, 0
	jmp _Lef62e4f1_253
_Lef62e4f1_252:
	ld r0, 1
_Lef62e4f1_253:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_249
	ld r0, 1
	jmp _Lef62e4f1_248
_Lef62e4f1_249:
	ld r0, 0
_Lef62e4f1_248:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_247
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
	jmpc eq, _Lef62e4f1_254
	ld r0, 0
	jmp _Lef62e4f1_255
_Lef62e4f1_254:
	ld r0, 1
_Lef62e4f1_255:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_247
	ld r0, 1
	jmp _Lef62e4f1_246
_Lef62e4f1_247:
	ld r0, 0
_Lef62e4f1_246:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_256
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
_Lef62e4f1_256:
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-6)
	jmp _Lef62e4f1_242
_Lef62e4f1_243:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_257
	ld r0, 0
	jmp _Lef62e4f1_258
_Lef62e4f1_257:
	ld r0, 1
_Lef62e4f1_258:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_259
	ld r0, (_g_tempo_sistema)
	st r0, (_g_metricas+2)
	call _f_so_imprime_relatorio
	call _f_so_halt
_Lef62e4f1_259:
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
	jmpc lt, _Lef62e4f1_281
	ld r0, 0
	jmp _Lef62e4f1_282
_Lef62e4f1_281:
	ld r0, 1
_Lef62e4f1_282:
	cmp r0, 0
	jmpc ne, _Lef62e4f1_280
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _Lef62e4f1_283
	ld r0, 0
	jmp _Lef62e4f1_284
_Lef62e4f1_283:
	ld r0, 1
_Lef62e4f1_284:
	cmp r0, 0
	jmpc ne, _Lef62e4f1_280
	ld r0, 0
	jmp _Lef62e4f1_279
_Lef62e4f1_280:
	ld r0, 1
_Lef62e4f1_279:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_285
	ld r0, _stref62e4f1_13
	push r0
	call _f_so_puts
	add sp, 2
	call _f_so_halt
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_285:
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
	ld r0, _stref62e4f1_14
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_15
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+6)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_16
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-8)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_17
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+44)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, (bp+-8)
	push r0
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+44)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _Lef62e4f1_286
	ld r0, 0
	jmp _Lef62e4f1_287
_Lef62e4f1_286:
	ld r0, 1
_Lef62e4f1_287:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_288
	ld r0, _stref62e4f1_18
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_19
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_20
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_21
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+6)
	push r0
	call _f_so_print_hex
	add sp, 2
	ld r0, _stref62e4f1_22
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-8)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stref62e4f1_23
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_24
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
	jmpc ne, _Lef62e4f1_289
	ld r0, 0
	jmp _Lef62e4f1_290
_Lef62e4f1_289:
	ld r0, 1
_Lef62e4f1_290:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_291
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
_Lef62e4f1_291:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_288:
	ld r0, 1
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_292
	ld r0, 0
	jmp _Lef62e4f1_293
_Lef62e4f1_292:
	ld r0, 1
_Lef62e4f1_293:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_294
	ld r0, _stref62e4f1_25
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
	jmpc ne, _Lef62e4f1_295
	ld r0, 0
	jmp _Lef62e4f1_296
_Lef62e4f1_295:
	ld r0, 1
_Lef62e4f1_296:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_297
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
_Lef62e4f1_297:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_294:
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
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_quadro_aloca
	add sp, 6
	st r0, (bp+-10)
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
	jmpc ge, _Lef62e4f1_310
	ld r0, 0
	jmp _Lef62e4f1_311
_Lef62e4f1_310:
	ld r0, 1
_Lef62e4f1_311:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_309
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_312
	ld r0, 0
	jmp _Lef62e4f1_313
_Lef62e4f1_312:
	ld r0, 1
_Lef62e4f1_313:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_309
	ld r0, 1
	jmp _Lef62e4f1_308
_Lef62e4f1_309:
	ld r0, 0
_Lef62e4f1_308:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_314
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-4)
	mul r0, 80
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-2)
	ld r0, _stref62e4f1_33
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_34
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_35
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_36
	push r0
	call _f_so_print_str
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stref62e4f1_37
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+6)
	push r0
	call _f_so_print_hex
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stref62e4f1_38
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_39
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
	jmpc ne, _Lef62e4f1_315
	ld r0, 0
	jmp _Lef62e4f1_316
_Lef62e4f1_315:
	ld r0, 1
_Lef62e4f1_316:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_317
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
_Lef62e4f1_317:
_Lef62e4f1_314:
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
	jmpc gt, _Lef62e4f1_346
	ld r0, 0
	jmp _Lef62e4f1_347
_Lef62e4f1_346:
	ld r0, 1
_Lef62e4f1_347:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_348
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_349
	ld r0, 0
	jmp _Lef62e4f1_350
_Lef62e4f1_349:
	ld r0, 1
_Lef62e4f1_350:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_351
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
	jmp _Lef62e4f1_352
_Lef62e4f1_351:
	ld r0, (bp+-6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_353
	ld r0, 0
	jmp _Lef62e4f1_354
_Lef62e4f1_353:
	ld r0, 1
_Lef62e4f1_354:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_355
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
	jmp _Lef62e4f1_356
_Lef62e4f1_355:
	ld r0, (bp+-6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_357
	ld r0, 0
	jmp _Lef62e4f1_358
_Lef62e4f1_357:
	ld r0, 1
_Lef62e4f1_358:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_359
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
_Lef62e4f1_359:
_Lef62e4f1_356:
_Lef62e4f1_352:
_Lef62e4f1_348:
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
	jmpc eq, _Lef62e4f1_360
	ld r0, 0
	jmp _Lef62e4f1_361
_Lef62e4f1_360:
	ld r0, 1
_Lef62e4f1_361:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_362
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
	jmp _Lef62e4f1_363
_Lef62e4f1_362:
	ld r0, (bp+6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_364
	ld r0, 0
	jmp _Lef62e4f1_365
_Lef62e4f1_364:
	ld r0, 1
_Lef62e4f1_365:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_366
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
	jmpc gt, _Lef62e4f1_367
	ld r0, 0
	jmp _Lef62e4f1_368
_Lef62e4f1_367:
	ld r0, 1
_Lef62e4f1_368:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_369
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
_Lef62e4f1_369:
	jmp _Lef62e4f1_370
_Lef62e4f1_366:
	ld r0, (bp+6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_371
	ld r0, 0
	jmp _Lef62e4f1_372
_Lef62e4f1_371:
	ld r0, 1
_Lef62e4f1_372:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_373
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
_Lef62e4f1_373:
_Lef62e4f1_370:
_Lef62e4f1_363:
	ld sp, bp
	pop bp
	ret
_f_so_escolhe_proximo:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 0
	st r0, (bp+-4)
_Lef62e4f1_384:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_386
	ld r0, 0
	jmp _Lef62e4f1_387
_Lef62e4f1_386:
	ld r0, 1
_Lef62e4f1_387:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_385
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
	jmpc eq, _Lef62e4f1_388
	ld r0, 0
	jmp _Lef62e4f1_389
_Lef62e4f1_388:
	ld r0, 1
_Lef62e4f1_389:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_390
	jmp _Lef62e4f1_385
_Lef62e4f1_390:
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
	jmpc eq, _Lef62e4f1_391
	ld r0, 0
	jmp _Lef62e4f1_392
_Lef62e4f1_391:
	ld r0, 1
_Lef62e4f1_392:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_393
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_393:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _Lef62e4f1_384
_Lef62e4f1_385:
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
_Lef62e4f1_398:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_400
	ld r0, 0
	jmp _Lef62e4f1_401
_Lef62e4f1_400:
	ld r0, 1
_Lef62e4f1_401:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_399
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
	jmp _Lef62e4f1_398
_Lef62e4f1_399:
	ld sp, bp
	pop bp
	ret
_f_so_restaura_quadro:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_Lef62e4f1_406:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_408
	ld r0, 0
	jmp _Lef62e4f1_409
_Lef62e4f1_408:
	ld r0, 1
_Lef62e4f1_409:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_407
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
	jmp _Lef62e4f1_406
_Lef62e4f1_407:
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
	jmpc ne, _Lef62e4f1_413
	ld r0, 0
	jmp _Lef62e4f1_414
_Lef62e4f1_413:
	ld r0, 1
_Lef62e4f1_414:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_415
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
_Lef62e4f1_415:
	ld sp, bp
	pop bp
	ret
_f_so_trata_pendencias:
	push bp
	ld bp, sp
	sub sp, 4
	call _f_bios_console_disponivel
	cmp r0, 0
	jmpc eq, _Lef62e4f1_434
	ld r0, 0
	st r0, (bp+-2)
_Lef62e4f1_435:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_437
	ld r0, 0
	jmp _Lef62e4f1_438
_Lef62e4f1_437:
	ld r0, 1
_Lef62e4f1_438:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_436
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
	jmpc eq, _Lef62e4f1_441
	ld r0, 0
	jmp _Lef62e4f1_442
_Lef62e4f1_441:
	ld r0, 1
_Lef62e4f1_442:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_440
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
	jmpc eq, _Lef62e4f1_443
	ld r0, 0
	jmp _Lef62e4f1_444
_Lef62e4f1_443:
	ld r0, 1
_Lef62e4f1_444:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_440
	ld r0, 1
	jmp _Lef62e4f1_439
_Lef62e4f1_440:
	ld r0, 0
_Lef62e4f1_439:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_445
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
	jmpc eq, _Lef62e4f1_446
	ld r0, 0
	jmp _Lef62e4f1_447
_Lef62e4f1_446:
	ld r0, 1
_Lef62e4f1_447:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_448
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
	jmpc ne, _Lef62e4f1_449
	ld r0, 0
	jmp _Lef62e4f1_450
_Lef62e4f1_449:
	ld r0, 1
_Lef62e4f1_450:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_451
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
_Lef62e4f1_451:
_Lef62e4f1_448:
	jmp _Lef62e4f1_436
_Lef62e4f1_445:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Lef62e4f1_435
_Lef62e4f1_436:
_Lef62e4f1_434:
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
	ld r0, 0
	st r0, (bp+-4)
_Lef62e4f1_472:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_474
	ld r0, 0
	jmp _Lef62e4f1_475
_Lef62e4f1_474:
	ld r0, 1
_Lef62e4f1_475:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_473
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1)
	cmp r0, 0
	jmpc eq, _Lef62e4f1_476
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+10)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	shr r0, r1
	pop r1
	st r0, (r1+10)
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	call _f_procura_slot_por_pid
	add sp, 2
	st r0, (bp+-6)
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Lef62e4f1_477
	ld r0, 0
	jmp _Lef62e4f1_478
_Lef62e4f1_477:
	ld r0, 1
_Lef62e4f1_478:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_479
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+6)
	cmp r0, 0
	jmpc eq, _Lef62e4f1_480
	ld r0, 128
	push r0
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+4)
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-8)
	jmp _Lef62e4f1_481
_Lef62e4f1_480:
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+4)
	st r0, (bp+-8)
_Lef62e4f1_481:
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
	jmpc eq, _Lef62e4f1_482
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	push r1
	ld r0, _g_quadros_pool
	push r0
	ld r0, (bp+-4)
	mul r0, 12
	pop r1
	add r1, r0
	ld r0, (r1+10)
	push r0
	ld r0, 32768
	ld r1, r0
	pop r0
	or r0, r1
	pop r1
	st r0, (r1+10)
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
_Lef62e4f1_482:
_Lef62e4f1_479:
_Lef62e4f1_476:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _Lef62e4f1_472
_Lef62e4f1_473:
	call _f_so_trata_pendencias
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_483
	ld r0, 0
	jmp _Lef62e4f1_484
_Lef62e4f1_483:
	ld r0, 1
_Lef62e4f1_484:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_485
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
_Lef62e4f1_485:
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
	jmpc le, _Lef62e4f1_486
	ld r0, 0
	jmp _Lef62e4f1_487
_Lef62e4f1_486:
	ld r0, 1
_Lef62e4f1_487:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_488
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
	jmpc eq, _Lef62e4f1_489
	ld r0, 0
	jmp _Lef62e4f1_490
_Lef62e4f1_489:
	ld r0, 1
_Lef62e4f1_490:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_491
	ld r0, (_g_processo_atual)
	st r0, (bp+-2)
_Lef62e4f1_491:
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
_Lef62e4f1_488:
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
	jmpc eq, _Lef62e4f1_538
	ld r0, 0
	jmp _Lef62e4f1_539
_Lef62e4f1_538:
	ld r0, 1
_Lef62e4f1_539:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_540
	call _f_bios_console_disponivel
	cmp r0, 0
	jmpc eq, _Lef62e4f1_541
	call _f_bios_console_le
	st r0, (bp+-6)
	ld r0, (bp+-6)
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_541:
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
	jmpc ne, _Lef62e4f1_542
	ld r0, 0
	jmp _Lef62e4f1_543
_Lef62e4f1_542:
	ld r0, 1
_Lef62e4f1_543:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_544
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
_Lef62e4f1_544:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_540:
	ld r0, (bp+6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_545
	ld r0, 0
	jmp _Lef62e4f1_546
_Lef62e4f1_545:
	ld r0, 1
_Lef62e4f1_546:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_547
	ld r0, (bp+8)
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_547:
	ld r0, (bp+6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_548
	ld r0, 0
	jmp _Lef62e4f1_549
_Lef62e4f1_548:
	ld r0, 1
_Lef62e4f1_549:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_550
	ld r0, (bp+8)
	push r0
	call _f_so_cria_proc_interno
	add sp, 2
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_550:
	ld r0, (bp+6)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_551
	ld r0, 0
	jmp _Lef62e4f1_552
_Lef62e4f1_551:
	ld r0, 1
_Lef62e4f1_552:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_553
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
	jmpc eq, _Lef62e4f1_556
	ld r0, 0
	jmp _Lef62e4f1_557
_Lef62e4f1_556:
	ld r0, 1
_Lef62e4f1_557:
	cmp r0, 0
	jmpc ne, _Lef62e4f1_555
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
	jmpc eq, _Lef62e4f1_558
	ld r0, 0
	jmp _Lef62e4f1_559
_Lef62e4f1_558:
	ld r0, 1
_Lef62e4f1_559:
	cmp r0, 0
	jmpc ne, _Lef62e4f1_555
	ld r0, 0
	jmp _Lef62e4f1_554
_Lef62e4f1_555:
	ld r0, 1
_Lef62e4f1_554:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_560
	ld r0, (bp+-2)
	push r0
	call _f_so_mata_proc_interno
	add sp, 2
	jmp _Lef62e4f1_561
_Lef62e4f1_560:
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
	jmpc ne, _Lef62e4f1_562
	ld r0, 0
	jmp _Lef62e4f1_563
_Lef62e4f1_562:
	ld r0, 1
_Lef62e4f1_563:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_564
	ld r0, (bp+-8)
	push r0
	call _f_so_mata_proc_interno
	add sp, 2
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_564:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_561:
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
	jmpc ne, _Lef62e4f1_565
	ld r0, 0
	jmp _Lef62e4f1_566
_Lef62e4f1_565:
	ld r0, 1
_Lef62e4f1_566:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_567
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
_Lef62e4f1_567:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_553:
	ld r0, (bp+6)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_568
	ld r0, 0
	jmp _Lef62e4f1_569
_Lef62e4f1_568:
	ld r0, 1
_Lef62e4f1_569:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_570
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
	jmpc eq, _Lef62e4f1_571
	ld r0, 0
	jmp _Lef62e4f1_572
_Lef62e4f1_571:
	ld r0, 1
_Lef62e4f1_572:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_573
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_573:
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
	jmpc eq, _Lef62e4f1_576
	ld r0, 0
	jmp _Lef62e4f1_577
_Lef62e4f1_576:
	ld r0, 1
_Lef62e4f1_577:
	cmp r0, 0
	jmpc ne, _Lef62e4f1_575
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
	jmpc eq, _Lef62e4f1_578
	ld r0, 0
	jmp _Lef62e4f1_579
_Lef62e4f1_578:
	ld r0, 1
_Lef62e4f1_579:
	cmp r0, 0
	jmpc ne, _Lef62e4f1_575
	ld r0, 0
	jmp _Lef62e4f1_574
_Lef62e4f1_575:
	ld r0, 1
_Lef62e4f1_574:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_580
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_580:
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
	jmpc ne, _Lef62e4f1_581
	ld r0, 0
	jmp _Lef62e4f1_582
_Lef62e4f1_581:
	ld r0, 1
_Lef62e4f1_582:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_583
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
_Lef62e4f1_583:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_Lef62e4f1_570:
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
_Lef62e4f1_596:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_598
	ld r0, 0
	jmp _Lef62e4f1_599
_Lef62e4f1_598:
	ld r0, 1
_Lef62e4f1_599:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_597
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
	jmp _Lef62e4f1_596
_Lef62e4f1_597:
	ld r0, 0
	st r0, (bp+-2)
_Lef62e4f1_600:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_602
	ld r0, 0
	jmp _Lef62e4f1_603
_Lef62e4f1_602:
	ld r0, 1
_Lef62e4f1_603:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_601
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
	jmp _Lef62e4f1_600
_Lef62e4f1_601:
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
_Lef62e4f1_604:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_606
	ld r0, 0
	jmp _Lef62e4f1_607
_Lef62e4f1_606:
	ld r0, 1
_Lef62e4f1_607:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_605
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
	jmp _Lef62e4f1_604
_Lef62e4f1_605:
	ld sp, bp
	pop bp
	ret
_f_so_print_str:
	push bp
	ld bp, sp
_Lef62e4f1_612:
	ld r0, (bp+4)
	ld r1, r0
	ldb r0, (r1)
	and r0, 255
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _Lef62e4f1_614
	ld r0, 0
	jmp _Lef62e4f1_615
_Lef62e4f1_614:
	ld r0, 1
_Lef62e4f1_615:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_613
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
	jmp _Lef62e4f1_612
_Lef62e4f1_613:
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
	jmpc lt, _Lef62e4f1_631
	ld r0, 0
	jmp _Lef62e4f1_632
_Lef62e4f1_631:
	ld r0, 1
_Lef62e4f1_632:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_633
	ld r0, 1
	st r0, (bp+-12)
	ld r0, (bp+4)
	xor r0, -1
	add r0, 1
	st r0, (bp+4)
_Lef62e4f1_633:
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_634
	ld r0, 0
	jmp _Lef62e4f1_635
_Lef62e4f1_634:
	ld r0, 1
_Lef62e4f1_635:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_636
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
_Lef62e4f1_636:
_Lef62e4f1_637:
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _Lef62e4f1_639
	ld r0, 0
	jmp _Lef62e4f1_640
_Lef62e4f1_639:
	ld r0, 1
_Lef62e4f1_640:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_638
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
	jmp _Lef62e4f1_637
_Lef62e4f1_638:
	ld r0, (bp+-12)
	cmp r0, 0
	jmpc eq, _Lef62e4f1_641
	ld r0, 45
	push r0
	call _f_so_escreve_caractere
	add sp, 2
_Lef62e4f1_641:
_Lef62e4f1_642:
	ld r0, (bp+-10)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _Lef62e4f1_644
	ld r0, 0
	jmp _Lef62e4f1_645
_Lef62e4f1_644:
	ld r0, 1
_Lef62e4f1_645:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_643
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
	jmp _Lef62e4f1_642
_Lef62e4f1_643:
	ld sp, bp
	pop bp
	ret
_f_so_imprime_relatorio:
	push bp
	ld bp, sp
	sub sp, 4
	call _f_so_nova_linha
	ld r0, _stref62e4f1_80
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_81
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_82
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_83
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 1
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_661
	ld r0, 0
	jmp _Lef62e4f1_662
_Lef62e4f1_661:
	ld r0, 1
_Lef62e4f1_662:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_663
	ld r0, _stref62e4f1_84
	push r0
	call _f_so_puts
	add sp, 2
	jmp _Lef62e4f1_664
_Lef62e4f1_663:
	ld r0, _stref62e4f1_85
	push r0
	call _f_so_puts
	add sp, 2
_Lef62e4f1_664:
	ld r0, _stref62e4f1_86
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 1
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _Lef62e4f1_665
	ld r0, 0
	jmp _Lef62e4f1_666
_Lef62e4f1_665:
	ld r0, 1
_Lef62e4f1_666:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_667
	ld r0, _stref62e4f1_87
	push r0
	call _f_so_puts
	add sp, 2
	jmp _Lef62e4f1_668
_Lef62e4f1_667:
	ld r0, _stref62e4f1_88
	push r0
	call _f_so_puts
	add sp, 2
_Lef62e4f1_668:
	ld r0, _stref62e4f1_89
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 8
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_90
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_91
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 4
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_92
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_93
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+2)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_94
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_95
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+4)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_96
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_97
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stref62e4f1_98
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+6)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stref62e4f1_99
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+8)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stref62e4f1_100
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+10)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stref62e4f1_101
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+12)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _stref62e4f1_102
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_103
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_104
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
	ld r0, _stref62e4f1_105
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
	ld r0, _stref62e4f1_106
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
	ld r0, _stref62e4f1_107
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
	ld r0, _stref62e4f1_108
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
	ld r0, _stref62e4f1_109
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_110
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_111
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _stref62e4f1_112
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, 0
	st r0, (bp+-2)
_Lef62e4f1_669:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _Lef62e4f1_671
	ld r0, 0
	jmp _Lef62e4f1_672
_Lef62e4f1_671:
	ld r0, 1
_Lef62e4f1_672:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_670
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
	jmpc gt, _Lef62e4f1_673
	ld r0, 0
	jmp _Lef62e4f1_674
_Lef62e4f1_673:
	ld r0, 1
_Lef62e4f1_674:
	cmp r0, 0
	jmpc eq, _Lef62e4f1_675
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_113
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
	ld r0, _stref62e4f1_114
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
	ld r0, _stref62e4f1_115
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+58)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_116
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+52)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_117
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+66)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _stref62e4f1_118
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
_Lef62e4f1_675:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _Lef62e4f1_669
_Lef62e4f1_670:
	ld r0, _stref62e4f1_119
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
_stref62e4f1_0:
	.db 91, 83, 79, 93, 32, 70, 97, 108, 104, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 32, 102, 111, 114, 97, 32, 100, 101, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 118, 97, 108, 105, 100, 111, 33, 32, 80, 97, 114, 97, 110, 100, 111, 46, 0
_stref62e4f1_1:
	.db 91, 68, 69, 66, 85, 71, 93, 32, 70, 97, 108, 104, 97, 58, 32, 112, 105, 100, 61, 0
_stref62e4f1_2:
	.db 32, 105, 112, 61, 0
_stref62e4f1_3:
	.db 32, 112, 97, 103, 61, 0
_stref62e4f1_4:
	.db 32, 110, 95, 112, 97, 103, 61, 0
_stref62e4f1_5:
	.db 10, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_6:
	.db 91, 83, 79, 93, 32, 69, 88, 67, 69, 67, 65, 79, 58, 32, 70, 65, 76, 72, 65, 32, 68, 69, 32, 80, 65, 71, 73, 78, 65, 32, 73, 76, 69, 71, 65, 76, 33, 0
_stref62e4f1_7:
	.db 91, 83, 79, 93, 32, 80, 73, 68, 58, 32, 0
_stref62e4f1_8:
	.db 32, 124, 32, 73, 80, 58, 32, 48, 120, 0
_stref62e4f1_9:
	.db 32, 124, 32, 80, 97, 103, 58, 32, 0
_stref62e4f1_10:
	.db 91, 83, 79, 93, 32, 69, 110, 99, 101, 114, 114, 97, 110, 100, 111, 32, 112, 114, 111, 99, 101, 115, 115, 111, 46, 46, 46, 0
_stref62e4f1_11:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_12:
	.db 91, 83, 79, 93, 32, 69, 82, 82, 79, 58, 32, 70, 97, 108, 104, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 32, 105, 110, 101, 115, 112, 101, 114, 97, 100, 97, 32, 101, 109, 32, 109, 111, 100, 111, 32, 67, 97, 114, 103, 97, 32, 67, 111, 109, 112, 108, 101, 116, 97, 33, 0
_stref62e4f1_13:
	.db 91, 83, 79, 93, 32, 70, 97, 108, 104, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 32, 102, 111, 114, 97, 32, 100, 101, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 118, 97, 108, 105, 100, 111, 33, 32, 80, 97, 114, 97, 110, 100, 111, 46, 0
_stref62e4f1_14:
	.db 91, 68, 69, 66, 85, 71, 93, 32, 70, 97, 108, 104, 97, 58, 32, 112, 105, 100, 61, 0
_stref62e4f1_15:
	.db 32, 105, 112, 61, 0
_stref62e4f1_16:
	.db 32, 112, 97, 103, 61, 0
_stref62e4f1_17:
	.db 32, 110, 95, 112, 97, 103, 61, 0
_stref62e4f1_18:
	.db 10, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_19:
	.db 91, 83, 79, 93, 32, 69, 88, 67, 69, 67, 65, 79, 58, 32, 70, 65, 76, 72, 65, 32, 68, 69, 32, 80, 65, 71, 73, 78, 65, 32, 73, 76, 69, 71, 65, 76, 33, 0
_stref62e4f1_20:
	.db 91, 83, 79, 93, 32, 80, 73, 68, 58, 32, 0
_stref62e4f1_21:
	.db 32, 124, 32, 73, 80, 58, 32, 48, 120, 0
_stref62e4f1_22:
	.db 32, 124, 32, 80, 97, 103, 58, 32, 0
_stref62e4f1_23:
	.db 91, 83, 79, 93, 32, 69, 110, 99, 101, 114, 114, 97, 110, 100, 111, 32, 112, 114, 111, 99, 101, 115, 115, 111, 46, 46, 46, 0
_stref62e4f1_24:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_25:
	.db 91, 83, 79, 93, 32, 69, 82, 82, 79, 58, 32, 70, 97, 108, 104, 97, 32, 100, 101, 32, 112, 97, 103, 105, 110, 97, 32, 105, 110, 101, 115, 112, 101, 114, 97, 100, 97, 32, 101, 109, 32, 109, 111, 100, 111, 32, 67, 97, 114, 103, 97, 32, 67, 111, 109, 112, 108, 101, 116, 97, 33, 0
_stref62e4f1_26:
	.db 10, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_27:
	.db 91, 83, 79, 93, 32, 86, 73, 79, 76, 65, 67, 65, 79, 32, 68, 69, 32, 80, 82, 79, 84, 69, 67, 65, 79, 32, 40, 73, 78, 84, 32, 49, 41, 33, 0
_stref62e4f1_28:
	.db 91, 83, 79, 93, 32, 80, 73, 68, 58, 32, 0
_stref62e4f1_29:
	.db 32, 116, 101, 110, 116, 111, 117, 32, 101, 115, 99, 114, 105, 116, 97, 32, 101, 109, 32, 99, 111, 100, 105, 103, 111, 33, 0
_stref62e4f1_30:
	.db 91, 83, 79, 93, 32, 73, 80, 58, 32, 48, 120, 0
_stref62e4f1_31:
	.db 91, 83, 79, 93, 32, 84, 101, 114, 109, 105, 110, 97, 110, 100, 111, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 102, 97, 108, 116, 111, 115, 111, 46, 46, 46, 0
_stref62e4f1_32:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_33:
	.db 10, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_34:
	.db 91, 83, 79, 93, 32, 86, 73, 79, 76, 65, 67, 65, 79, 32, 68, 69, 32, 80, 82, 79, 84, 69, 67, 65, 79, 32, 40, 73, 78, 84, 32, 49, 41, 33, 0
_stref62e4f1_35:
	.db 91, 83, 79, 93, 32, 80, 73, 68, 58, 32, 0
_stref62e4f1_36:
	.db 32, 116, 101, 110, 116, 111, 117, 32, 101, 115, 99, 114, 105, 116, 97, 32, 101, 109, 32, 99, 111, 100, 105, 103, 111, 33, 0
_stref62e4f1_37:
	.db 91, 83, 79, 93, 32, 73, 80, 58, 32, 48, 120, 0
_stref62e4f1_38:
	.db 91, 83, 79, 93, 32, 84, 101, 114, 109, 105, 110, 97, 110, 100, 111, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 102, 97, 108, 116, 111, 115, 111, 46, 46, 46, 0
_stref62e4f1_39:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_40:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_stref62e4f1_41:
	.db 32, 32, 82, 69, 76, 65, 84, 79, 82, 73, 79, 32, 68, 69, 32, 69, 88, 69, 67, 85, 67, 65, 79, 32, 68, 79, 32, 83, 79, 32, 77, 65, 78, 67, 72, 65, 32, 40, 84, 51, 41, 0
_stref62e4f1_42:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_stref62e4f1_43:
	.db 77, 111, 100, 111, 32, 80, 97, 103, 58, 32, 0
_stref62e4f1_44:
	.db 80, 111, 114, 32, 68, 101, 109, 97, 110, 100, 97, 32, 40, 80, 97, 114, 116, 101, 115, 32, 73, 73, 47, 73, 73, 73, 41, 0
_stref62e4f1_45:
	.db 67, 97, 114, 103, 97, 32, 67, 111, 109, 112, 108, 101, 116, 97, 32, 40, 80, 97, 114, 116, 101, 32, 73, 41, 0
_stref62e4f1_46:
	.db 65, 108, 103, 111, 114, 105, 116, 109, 111, 32, 83, 117, 98, 115, 116, 58, 32, 0
_stref62e4f1_47:
	.db 76, 82, 85, 32, 40, 69, 110, 118, 101, 108, 104, 101, 99, 105, 109, 101, 110, 116, 111, 41, 0
_stref62e4f1_48:
	.db 70, 73, 70, 79, 0
_stref62e4f1_49:
	.db 76, 105, 109, 105, 116, 101, 32, 81, 117, 97, 100, 114, 111, 115, 58, 32, 0
_stref62e4f1_50:
	.db 32, 113, 117, 97, 100, 114, 111, 115, 0
_stref62e4f1_51:
	.db 81, 117, 97, 110, 116, 117, 109, 58, 32, 0
_stref62e4f1_52:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_stref62e4f1_53:
	.db 84, 101, 109, 112, 111, 32, 116, 111, 116, 97, 108, 32, 101, 120, 101, 99, 58, 32, 0
_stref62e4f1_54:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_stref62e4f1_55:
	.db 84, 101, 109, 112, 111, 32, 111, 99, 105, 111, 115, 111, 58, 32, 32, 32, 32, 32, 0
_stref62e4f1_56:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_stref62e4f1_57:
	.db 80, 114, 111, 99, 101, 115, 115, 111, 115, 32, 99, 114, 105, 97, 100, 111, 115, 58, 0
_stref62e4f1_58:
	.db 84, 111, 116, 97, 108, 32, 112, 114, 101, 101, 109, 112, 99, 111, 101, 115, 58, 32, 0
_stref62e4f1_59:
	.db 70, 97, 108, 116, 97, 115, 32, 100, 101, 32, 80, 97, 103, 105, 110, 97, 58, 32, 0
_stref62e4f1_60:
	.db 83, 117, 98, 115, 116, 105, 116, 117, 105, 99, 111, 101, 115, 58, 32, 32, 32, 32, 0
_stref62e4f1_61:
	.db 69, 115, 99, 114, 105, 116, 97, 115, 32, 68, 105, 115, 99, 111, 58, 32, 32, 32, 0
_stref62e4f1_62:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_63:
	.db 67, 111, 110, 116, 97, 103, 101, 109, 32, 100, 101, 32, 73, 110, 116, 101, 114, 114, 117, 112, 99, 111, 101, 115, 32, 112, 111, 114, 32, 84, 105, 112, 111, 58, 0
_stref62e4f1_64:
	.db 32, 32, 91, 49, 93, 32, 80, 114, 111, 116, 101, 99, 97, 111, 32, 83, 101, 103, 58, 32, 32, 0
_stref62e4f1_65:
	.db 32, 32, 91, 53, 93, 32, 70, 97, 108, 116, 97, 32, 80, 97, 103, 105, 110, 97, 58, 32, 32, 0
_stref62e4f1_66:
	.db 32, 32, 91, 55, 93, 32, 83, 121, 115, 99, 97, 108, 108, 115, 58, 32, 32, 32, 32, 32, 32, 0
_stref62e4f1_67:
	.db 32, 32, 91, 56, 93, 32, 67, 111, 110, 115, 111, 108, 101, 58, 32, 32, 32, 32, 32, 32, 32, 0
_stref62e4f1_68:
	.db 32, 32, 91, 49, 48, 93, 32, 82, 101, 108, 111, 103, 105, 111, 58, 32, 32, 32, 32, 32, 32, 0
_stref62e4f1_69:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_70:
	.db 77, 101, 116, 114, 105, 99, 97, 115, 32, 73, 110, 100, 105, 118, 105, 100, 117, 97, 105, 115, 32, 112, 111, 114, 32, 80, 114, 111, 99, 101, 115, 115, 111, 58, 0
_stref62e4f1_71:
	.db 80, 73, 68, 32, 80, 114, 111, 103, 32, 32, 32, 82, 101, 116, 32, 32, 80, 114, 101, 101, 109, 112, 32, 70, 97, 108, 116, 97, 115, 32, 84, 46, 80, 114, 111, 110, 116, 111, 32, 84, 46, 69, 120, 101, 99, 0
_stref62e4f1_72:
	.db 45, 45, 45, 32, 45, 45, 45, 45, 32, 32, 32, 45, 45, 45, 32, 32, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_73:
	.db 32, 32, 32, 0
_stref62e4f1_74:
	.db 32, 32, 32, 32, 0
_stref62e4f1_75:
	.db 32, 32, 32, 32, 0
_stref62e4f1_76:
	.db 32, 32, 32, 32, 32, 32, 0
_stref62e4f1_77:
	.db 32, 32, 32, 32, 32, 32, 0
_stref62e4f1_78:
	.db 32, 32, 32, 32, 32, 32, 0
_stref62e4f1_79:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_stref62e4f1_80:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_stref62e4f1_81:
	.db 32, 32, 82, 69, 76, 65, 84, 79, 82, 73, 79, 32, 68, 69, 32, 69, 88, 69, 67, 85, 67, 65, 79, 32, 68, 79, 32, 83, 79, 32, 77, 65, 78, 67, 72, 65, 32, 40, 84, 51, 41, 0
_stref62e4f1_82:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_stref62e4f1_83:
	.db 77, 111, 100, 111, 32, 80, 97, 103, 58, 32, 0
_stref62e4f1_84:
	.db 80, 111, 114, 32, 68, 101, 109, 97, 110, 100, 97, 32, 40, 80, 97, 114, 116, 101, 115, 32, 73, 73, 47, 73, 73, 73, 41, 0
_stref62e4f1_85:
	.db 67, 97, 114, 103, 97, 32, 67, 111, 109, 112, 108, 101, 116, 97, 32, 40, 80, 97, 114, 116, 101, 32, 73, 41, 0
_stref62e4f1_86:
	.db 65, 108, 103, 111, 114, 105, 116, 109, 111, 32, 83, 117, 98, 115, 116, 58, 32, 0
_stref62e4f1_87:
	.db 76, 82, 85, 32, 40, 69, 110, 118, 101, 108, 104, 101, 99, 105, 109, 101, 110, 116, 111, 41, 0
_stref62e4f1_88:
	.db 70, 73, 70, 79, 0
_stref62e4f1_89:
	.db 76, 105, 109, 105, 116, 101, 32, 81, 117, 97, 100, 114, 111, 115, 58, 32, 0
_stref62e4f1_90:
	.db 32, 113, 117, 97, 100, 114, 111, 115, 0
_stref62e4f1_91:
	.db 81, 117, 97, 110, 116, 117, 109, 58, 32, 0
_stref62e4f1_92:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_stref62e4f1_93:
	.db 84, 101, 109, 112, 111, 32, 116, 111, 116, 97, 108, 32, 101, 120, 101, 99, 58, 32, 0
_stref62e4f1_94:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_stref62e4f1_95:
	.db 84, 101, 109, 112, 111, 32, 111, 99, 105, 111, 115, 111, 58, 32, 32, 32, 32, 32, 0
_stref62e4f1_96:
	.db 32, 116, 105, 113, 117, 101, 115, 0
_stref62e4f1_97:
	.db 80, 114, 111, 99, 101, 115, 115, 111, 115, 32, 99, 114, 105, 97, 100, 111, 115, 58, 0
_stref62e4f1_98:
	.db 84, 111, 116, 97, 108, 32, 112, 114, 101, 101, 109, 112, 99, 111, 101, 115, 58, 32, 0
_stref62e4f1_99:
	.db 70, 97, 108, 116, 97, 115, 32, 100, 101, 32, 80, 97, 103, 105, 110, 97, 58, 32, 0
_stref62e4f1_100:
	.db 83, 117, 98, 115, 116, 105, 116, 117, 105, 99, 111, 101, 115, 58, 32, 32, 32, 32, 0
_stref62e4f1_101:
	.db 69, 115, 99, 114, 105, 116, 97, 115, 32, 68, 105, 115, 99, 111, 58, 32, 32, 32, 0
_stref62e4f1_102:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_103:
	.db 67, 111, 110, 116, 97, 103, 101, 109, 32, 100, 101, 32, 73, 110, 116, 101, 114, 114, 117, 112, 99, 111, 101, 115, 32, 112, 111, 114, 32, 84, 105, 112, 111, 58, 0
_stref62e4f1_104:
	.db 32, 32, 91, 49, 93, 32, 80, 114, 111, 116, 101, 99, 97, 111, 32, 83, 101, 103, 58, 32, 32, 0
_stref62e4f1_105:
	.db 32, 32, 91, 53, 93, 32, 70, 97, 108, 116, 97, 32, 80, 97, 103, 105, 110, 97, 58, 32, 32, 0
_stref62e4f1_106:
	.db 32, 32, 91, 55, 93, 32, 83, 121, 115, 99, 97, 108, 108, 115, 58, 32, 32, 32, 32, 32, 32, 0
_stref62e4f1_107:
	.db 32, 32, 91, 56, 93, 32, 67, 111, 110, 115, 111, 108, 101, 58, 32, 32, 32, 32, 32, 32, 32, 0
_stref62e4f1_108:
	.db 32, 32, 91, 49, 48, 93, 32, 82, 101, 108, 111, 103, 105, 111, 58, 32, 32, 32, 32, 32, 32, 0
_stref62e4f1_109:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_110:
	.db 77, 101, 116, 114, 105, 99, 97, 115, 32, 73, 110, 100, 105, 118, 105, 100, 117, 97, 105, 115, 32, 112, 111, 114, 32, 80, 114, 111, 99, 101, 115, 115, 111, 58, 0
_stref62e4f1_111:
	.db 80, 73, 68, 32, 80, 114, 111, 103, 32, 32, 32, 82, 101, 116, 32, 32, 80, 114, 101, 101, 109, 112, 32, 70, 97, 108, 116, 97, 115, 32, 84, 46, 80, 114, 111, 110, 116, 111, 32, 84, 46, 69, 120, 101, 99, 0
_stref62e4f1_112:
	.db 45, 45, 45, 32, 45, 45, 45, 45, 32, 32, 32, 45, 45, 45, 32, 32, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 45, 45, 32, 45, 45, 45, 45, 45, 45, 0
_stref62e4f1_113:
	.db 32, 32, 32, 0
_stref62e4f1_114:
	.db 32, 32, 32, 32, 0
_stref62e4f1_115:
	.db 32, 32, 32, 32, 0
_stref62e4f1_116:
	.db 32, 32, 32, 32, 32, 32, 0
_stref62e4f1_117:
	.db 32, 32, 32, 32, 32, 32, 0
_stref62e4f1_118:
	.db 32, 32, 32, 32, 32, 32, 0
_stref62e4f1_119:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
