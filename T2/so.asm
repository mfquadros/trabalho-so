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
	jmpc ge, _L5713f787_6
	ld r0, 0
	jmp _L5713f787_7
_L5713f787_6:
	ld r0, 1
_L5713f787_7:
	cmp r0, 0
	jmpc eq, _L5713f787_8
	ld sp, bp
	pop bp
	ret
_L5713f787_8:
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
	jmpc ge, _L5713f787_9
	ld r0, 0
	jmp _L5713f787_10
_L5713f787_9:
	ld r0, 1
_L5713f787_10:
	cmp r0, 0
	jmpc eq, _L5713f787_11
	ld r0, 0
	st r0, (_g_fila_fim)
_L5713f787_11:
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
	jmpc eq, _L5713f787_18
	ld r0, 0
	jmp _L5713f787_19
_L5713f787_18:
	ld r0, 1
_L5713f787_19:
	cmp r0, 0
	jmpc eq, _L5713f787_20
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L5713f787_20:
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
	jmpc ge, _L5713f787_21
	ld r0, 0
	jmp _L5713f787_22
_L5713f787_21:
	ld r0, 1
_L5713f787_22:
	cmp r0, 0
	jmpc eq, _L5713f787_23
	ld r0, 0
	st r0, (_g_fila_inicio)
_L5713f787_23:
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
_f_so_cria_proc_interno:
	push bp
	ld bp, sp
	sub sp, 6
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-2)
	ld r0, 0
	st r0, (bp+-4)
_L5713f787_42:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_44
	ld r0, 0
	jmp _L5713f787_45
_L5713f787_44:
	ld r0, 1
_L5713f787_45:
	cmp r0, 0
	jmpc eq, _L5713f787_43
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-4)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_48
	ld r0, 0
	jmp _L5713f787_49
_L5713f787_48:
	ld r0, 1
_L5713f787_49:
	cmp r0, 0
	jmpc ne, _L5713f787_47
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-4)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_50
	ld r0, 0
	jmp _L5713f787_51
_L5713f787_50:
	ld r0, 1
_L5713f787_51:
	cmp r0, 0
	jmpc ne, _L5713f787_47
	ld r0, 0
	jmp _L5713f787_46
_L5713f787_47:
	ld r0, 1
_L5713f787_46:
	cmp r0, 0
	jmpc eq, _L5713f787_52
	ld r0, (bp+-4)
	st r0, (bp+-2)
	jmp _L5713f787_43
_L5713f787_52:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _L5713f787_42
_L5713f787_43:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_53
	ld r0, 0
	jmp _L5713f787_54
_L5713f787_53:
	ld r0, 1
_L5713f787_54:
	cmp r0, 0
	jmpc eq, _L5713f787_55
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L5713f787_55:
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-6)
	ld r0, (bp+-6)
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
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+6)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 500
	pop r1
	st r0, (r1+8)
	ld r0, 0
	st r0, (bp+-4)
_L5713f787_56:
	ld r0, (bp+-4)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_58
	ld r0, 0
	jmp _L5713f787_59
_L5713f787_58:
	ld r0, 1
_L5713f787_59:
	cmp r0, 0
	jmpc eq, _L5713f787_57
	ld r0, (bp+-6)
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
	jmp _L5713f787_56
_L5713f787_57:
	ld r0, (bp+-6)
	ld r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 6
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_pilhas_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 256
	pop r1
	add r1, r0
	ld r0, r1
	push r0
	ld r0, 128
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, r1
	pop r1
	st r0, (r1)
	ld r0, (bp+-6)
	ld r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 7
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+4)
	pop r1
	st r0, (r1)
	ld r0, (bp+-6)
	ld r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 8
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, (_g_tempo_sistema)
	pop r1
	st r0, (r1+42)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+44)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+46)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+48)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+50)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+52)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+54)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+56)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+58)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, (_g_tempo_sistema)
	pop r1
	st r0, (r1+60)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+62)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+64)
	ld r0, (bp+-6)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+66)
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
	ld r0, (bp+-6)
	ld r1, r0
	ld r0, (r1)
	ld sp, bp
	pop bp
	ret
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
	mul r0, 68
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
	ld r0, (r1+60)
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
	jmpc gt, _L5713f787_98
	ld r0, 0
	jmp _L5713f787_99
_L5713f787_98:
	ld r0, 1
_L5713f787_99:
	cmp r0, 0
	jmpc eq, _L5713f787_100
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_101
	ld r0, 0
	jmp _L5713f787_102
_L5713f787_101:
	ld r0, 1
_L5713f787_102:
	cmp r0, 0
	jmpc eq, _L5713f787_103
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+54)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+54)
	jmp _L5713f787_104
_L5713f787_103:
	ld r0, (bp+-6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_105
	ld r0, 0
	jmp _L5713f787_106
_L5713f787_105:
	ld r0, 1
_L5713f787_106:
	cmp r0, 0
	jmpc eq, _L5713f787_107
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+58)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+58)
	jmp _L5713f787_108
_L5713f787_107:
	ld r0, (bp+-6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_109
	ld r0, 0
	jmp _L5713f787_110
_L5713f787_109:
	ld r0, 1
_L5713f787_110:
	cmp r0, 0
	jmpc eq, _L5713f787_111
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+56)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+56)
_L5713f787_111:
_L5713f787_108:
_L5713f787_104:
_L5713f787_100:
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
	st r0, (r1+60)
	ld r0, (bp+6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_112
	ld r0, 0
	jmp _L5713f787_113
_L5713f787_112:
	ld r0, 1
_L5713f787_113:
	cmp r0, 0
	jmpc eq, _L5713f787_114
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+48)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+48)
	ld r0, (bp+-6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_115
	ld r0, 0
	jmp _L5713f787_116
_L5713f787_115:
	ld r0, 1
_L5713f787_116:
	cmp r0, 0
	jmpc eq, _L5713f787_117
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (_g_tempo_sistema)
	pop r1
	st r0, (r1+62)
_L5713f787_117:
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_118
	ld r0, 0
	jmp _L5713f787_119
_L5713f787_118:
	ld r0, 1
_L5713f787_119:
	cmp r0, 0
	jmpc eq, _L5713f787_120
	ld r0, (bp+4)
	push r0
	call _f_fila_insere
	add sp, 2
_L5713f787_120:
	jmp _L5713f787_121
_L5713f787_114:
	ld r0, (bp+6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_122
	ld r0, 0
	jmp _L5713f787_123
_L5713f787_122:
	ld r0, 1
_L5713f787_123:
	cmp r0, 0
	jmpc eq, _L5713f787_124
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
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+62)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L5713f787_125
	ld r0, 0
	jmp _L5713f787_126
_L5713f787_125:
	ld r0, 1
_L5713f787_126:
	cmp r0, 0
	jmpc eq, _L5713f787_127
	ld r0, (_g_tempo_sistema)
	push r0
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+62)
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-4)
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+64)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+64)
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+66)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+66)
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+62)
_L5713f787_127:
	jmp _L5713f787_128
_L5713f787_124:
	ld r0, (bp+6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_129
	ld r0, 0
	jmp _L5713f787_130
_L5713f787_129:
	ld r0, 1
_L5713f787_130:
	cmp r0, 0
	jmpc eq, _L5713f787_131
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (bp+-2)
	ld r1, r0
	ld r0, (r1+50)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+50)
	jmp _L5713f787_132
_L5713f787_131:
	ld r0, (bp+6)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_133
	ld r0, 0
	jmp _L5713f787_134
_L5713f787_133:
	ld r0, 1
_L5713f787_134:
	cmp r0, 0
	jmpc eq, _L5713f787_135
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (_g_tempo_sistema)
	pop r1
	st r0, (r1+44)
_L5713f787_135:
_L5713f787_132:
_L5713f787_128:
_L5713f787_121:
	ld sp, bp
	pop bp
	ret
_f_so_escolhe_proximo:
	push bp
	ld bp, sp
	sub sp, 10
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_191
	ld r0, 0
	jmp _L5713f787_192
_L5713f787_191:
	ld r0, 1
_L5713f787_192:
	cmp r0, 0
	jmpc eq, _L5713f787_193
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L5713f787_194
	ld r0, 0
	jmp _L5713f787_195
_L5713f787_194:
	ld r0, 1
_L5713f787_195:
	cmp r0, 0
	jmpc eq, _L5713f787_196
	ld r0, _g_tab_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_197
	ld r0, 0
	jmp _L5713f787_198
_L5713f787_197:
	ld r0, 1
_L5713f787_198:
	cmp r0, 0
	jmpc eq, _L5713f787_199
	ld r0, (_g_processo_atual)
	ld sp, bp
	pop bp
	ret
_L5713f787_199:
_L5713f787_196:
	ld r0, 0
	st r0, (bp+-2)
_L5713f787_200:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_202
	ld r0, 0
	jmp _L5713f787_203
_L5713f787_202:
	ld r0, 1
_L5713f787_203:
	cmp r0, 0
	jmpc eq, _L5713f787_201
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_204
	ld r0, 0
	jmp _L5713f787_205
_L5713f787_204:
	ld r0, 1
_L5713f787_205:
	cmp r0, 0
	jmpc eq, _L5713f787_206
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
_L5713f787_206:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L5713f787_200
_L5713f787_201:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
	jmp _L5713f787_207
_L5713f787_193:
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_208
	ld r0, 0
	jmp _L5713f787_209
_L5713f787_208:
	ld r0, 1
_L5713f787_209:
	cmp r0, 0
	jmpc eq, _L5713f787_210
_L5713f787_211:
	ld r0, (_g_fila_n)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L5713f787_213
	ld r0, 0
	jmp _L5713f787_214
_L5713f787_213:
	ld r0, 1
_L5713f787_214:
	cmp r0, 0
	jmpc eq, _L5713f787_212
	call _f_fila_retira
	st r0, (bp+-4)
	ld r0, (bp+-4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L5713f787_217
	ld r0, 0
	jmp _L5713f787_218
_L5713f787_217:
	ld r0, 1
_L5713f787_218:
	cmp r0, 0
	jmpc eq, _L5713f787_216
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-4)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_219
	ld r0, 0
	jmp _L5713f787_220
_L5713f787_219:
	ld r0, 1
_L5713f787_220:
	cmp r0, 0
	jmpc eq, _L5713f787_216
	ld r0, 1
	jmp _L5713f787_215
_L5713f787_216:
	ld r0, 0
_L5713f787_215:
	cmp r0, 0
	jmpc eq, _L5713f787_221
	ld r0, (bp+-4)
	ld sp, bp
	pop bp
	ret
_L5713f787_221:
	jmp _L5713f787_211
_L5713f787_212:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
	jmp _L5713f787_222
_L5713f787_210:
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_223
	ld r0, 0
	jmp _L5713f787_224
_L5713f787_223:
	ld r0, 1
_L5713f787_224:
	cmp r0, 0
	jmpc eq, _L5713f787_225
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-4)
	ld r0, 32767
	st r0, (bp+-6)
	ld r0, 0
	st r0, (bp+-8)
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-10)
	ld r0, (bp+-10)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L5713f787_228
	ld r0, 0
	jmp _L5713f787_229
_L5713f787_228:
	ld r0, 1
_L5713f787_229:
	cmp r0, 0
	jmpc ne, _L5713f787_227
	ld r0, (bp+-10)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_230
	ld r0, 0
	jmp _L5713f787_231
_L5713f787_230:
	ld r0, 1
_L5713f787_231:
	cmp r0, 0
	jmpc ne, _L5713f787_227
	ld r0, 0
	jmp _L5713f787_226
_L5713f787_227:
	ld r0, 1
_L5713f787_226:
	cmp r0, 0
	jmpc eq, _L5713f787_232
	ld r0, 0
	st r0, (bp+-10)
_L5713f787_232:
_L5713f787_233:
	ld r0, (bp+-8)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_235
	ld r0, 0
	jmp _L5713f787_236
_L5713f787_235:
	ld r0, 1
_L5713f787_236:
	cmp r0, 0
	jmpc eq, _L5713f787_234
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-10)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_237
	ld r0, 0
	jmp _L5713f787_238
_L5713f787_237:
	ld r0, 1
_L5713f787_238:
	cmp r0, 0
	jmpc eq, _L5713f787_239
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-10)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+8)
	push r0
	ld r0, (bp+-6)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_240
	ld r0, 0
	jmp _L5713f787_241
_L5713f787_240:
	ld r0, 1
_L5713f787_241:
	cmp r0, 0
	jmpc eq, _L5713f787_242
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-10)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+8)
	st r0, (bp+-6)
	ld r0, (bp+-10)
	st r0, (bp+-4)
_L5713f787_242:
_L5713f787_239:
	ld r0, (bp+-10)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-10)
	ld r0, (bp+-10)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L5713f787_243
	ld r0, 0
	jmp _L5713f787_244
_L5713f787_243:
	ld r0, 1
_L5713f787_244:
	cmp r0, 0
	jmpc eq, _L5713f787_245
	ld r0, 0
	st r0, (bp+-10)
_L5713f787_245:
	ld r0, (bp+-8)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-8)
	jmp _L5713f787_233
_L5713f787_234:
	ld r0, (bp+-4)
	ld sp, bp
	pop bp
	ret
_L5713f787_225:
_L5713f787_222:
_L5713f787_207:
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
	sub sp, 4
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+4)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-4)
	ld r0, 0
	st r0, (bp+-2)
_L5713f787_250:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_252
	ld r0, 0
	jmp _L5713f787_253
_L5713f787_252:
	ld r0, 1
_L5713f787_253:
	cmp r0, 0
	jmpc eq, _L5713f787_251
	ld r0, (bp+-4)
	ld r1, r0
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
	jmp _L5713f787_250
_L5713f787_251:
	ld sp, bp
	pop bp
	ret
_f_so_restaura_quadro:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+4)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, r1
	st r0, (bp+-4)
	ld r0, 0
	st r0, (bp+-2)
_L5713f787_258:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_260
	ld r0, 0
	jmp _L5713f787_261
_L5713f787_260:
	ld r0, 1
_L5713f787_261:
	cmp r0, 0
	jmpc eq, _L5713f787_259
	ld r0, (bp+6)
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-4)
	ld r1, r0
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
	jmp _L5713f787_258
_L5713f787_259:
	ld sp, bp
	pop bp
	ret
_f_so_restaura_atual:
	push bp
	ld bp, sp
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L5713f787_265
	ld r0, 0
	jmp _L5713f787_266
_L5713f787_265:
	ld r0, 1
_L5713f787_266:
	cmp r0, 0
	jmpc eq, _L5713f787_267
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
_L5713f787_267:
	ld sp, bp
	pop bp
	ret
_f_so_trata_pendencias:
	push bp
	ld bp, sp
	sub sp, 6
_L5713f787_292:
	call _f_bios_console_disponivel
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L5713f787_294
	ld r0, 0
	jmp _L5713f787_295
_L5713f787_294:
	ld r0, 1
_L5713f787_295:
	cmp r0, 0
	jmpc eq, _L5713f787_293
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-4)
	ld r0, 0
	st r0, (bp+-2)
_L5713f787_296:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_298
	ld r0, 0
	jmp _L5713f787_299
_L5713f787_298:
	ld r0, 1
_L5713f787_299:
	cmp r0, 0
	jmpc eq, _L5713f787_297
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_300
	ld r0, 0
	jmp _L5713f787_301
_L5713f787_300:
	ld r0, 1
_L5713f787_301:
	cmp r0, 0
	jmpc eq, _L5713f787_302
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_303
	ld r0, 0
	jmp _L5713f787_304
_L5713f787_303:
	ld r0, 1
_L5713f787_304:
	cmp r0, 0
	jmpc eq, _L5713f787_305
	ld r0, (bp+-2)
	st r0, (bp+-4)
	jmp _L5713f787_297
_L5713f787_305:
_L5713f787_302:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L5713f787_296
_L5713f787_297:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L5713f787_306
	ld r0, 0
	jmp _L5713f787_307
_L5713f787_306:
	ld r0, 1
_L5713f787_307:
	cmp r0, 0
	jmpc eq, _L5713f787_308
	call _f_bios_console_le
	st r0, (bp+-6)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-4)
	mul r0, 68
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
	ld r0, (bp+-6)
	pop r1
	st r0, (r1)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-4)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, 1
	push r0
	ld r0, (bp+-4)
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
	jmpc eq, _L5713f787_309
	ld r0, 0
	jmp _L5713f787_310
_L5713f787_309:
	ld r0, 1
_L5713f787_310:
	cmp r0, 0
	jmpc eq, _L5713f787_311
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
	jmpc ne, _L5713f787_312
	ld r0, 0
	jmp _L5713f787_313
_L5713f787_312:
	ld r0, 1
_L5713f787_313:
	cmp r0, 0
	jmpc eq, _L5713f787_314
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
_L5713f787_314:
_L5713f787_311:
	jmp _L5713f787_315
_L5713f787_308:
	jmp _L5713f787_293
_L5713f787_315:
	jmp _L5713f787_292
_L5713f787_293:
	ld sp, bp
	pop bp
	ret
_f_so_tique_relogio:
	push bp
	ld bp, sp
	sub sp, 8
	ld r0, _g_metricas+8
	push r0
	ld r0, 10
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_metricas+8
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
	ld r0, (_g_tempo_sistema)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_tempo_sistema)
	ld r0, (_g_metricas+2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_metricas+2)
	call _f_so_trata_pendencias
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_338
	ld r0, 0
	jmp _L5713f787_339
_L5713f787_338:
	ld r0, 1
_L5713f787_339:
	cmp r0, 0
	jmpc eq, _L5713f787_340
	ld r0, (_g_metricas+4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_metricas+4)
	call _f_so_escolhe_proximo
	st r0, (bp+-4)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L5713f787_341
	ld r0, 0
	jmp _L5713f787_342
_L5713f787_341:
	ld r0, 1
_L5713f787_342:
	cmp r0, 0
	jmpc eq, _L5713f787_343
	ld r0, (bp+-4)
	st r0, (_g_processo_atual)
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
_L5713f787_343:
	ld sp, bp
	pop bp
	ret
_L5713f787_340:
	ld r0, (_g_processo_atual)
	st r0, (bp+-2)
	ld r0, (_g_quantum_restante)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (_g_quantum_restante)
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_344
	ld r0, 0
	jmp _L5713f787_345
_L5713f787_344:
	ld r0, 1
_L5713f787_345:
	cmp r0, 0
	jmpc eq, _L5713f787_346
	ld sp, bp
	pop bp
	ret
_L5713f787_346:
	ld r0, (_g_quantum_restante)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc le, _L5713f787_347
	ld r0, 0
	jmp _L5713f787_348
_L5713f787_347:
	ld r0, 1
_L5713f787_348:
	cmp r0, 0
	jmpc eq, _L5713f787_349
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_350
	ld r0, 0
	jmp _L5713f787_351
_L5713f787_350:
	ld r0, 1
_L5713f787_351:
	cmp r0, 0
	jmpc eq, _L5713f787_352
	ld r0, (_g_quantum_config)
	push r0
	ld r0, (_g_quantum_restante)
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-6)
	ld r0, (bp+-6)
	push r0
	ld r0, (_g_quantum_config)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L5713f787_353
	ld r0, 0
	jmp _L5713f787_354
_L5713f787_353:
	ld r0, 1
_L5713f787_354:
	cmp r0, 0
	jmpc eq, _L5713f787_355
	ld r0, (_g_quantum_config)
	st r0, (bp+-6)
_L5713f787_355:
	ld r0, (bp+-6)
	push r0
	ld r0, 1000
	ld r1, r0
	pop r0
	mul r0, r1
	push r0
	ld r0, (_g_quantum_config)
	ld r1, r0
	pop r0
	div r0, r1
	st r0, (bp+-8)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+8)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	add r0, r1
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	div r0, r1
	pop r1
	st r0, (r1+8)
_L5713f787_352:
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_salva_quadro
	add sp, 4
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+46)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+46)
	ld r0, (_g_metricas+6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_metricas+6)
	ld r0, 1
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_muda_estado
	add sp, 4
	call _f_so_escolhe_proximo
	st r0, (bp+-4)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_356
	ld r0, 0
	jmp _L5713f787_357
_L5713f787_356:
	ld r0, 1
_L5713f787_357:
	cmp r0, 0
	jmpc eq, _L5713f787_358
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (_g_processo_atual)
	jmp _L5713f787_359
_L5713f787_358:
	ld r0, (bp+-4)
	st r0, (_g_processo_atual)
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
_L5713f787_359:
_L5713f787_349:
	ld sp, bp
	pop bp
	ret
_f_so_trata_syscall:
	push bp
	ld bp, sp
	sub sp, 16
	ld r0, _g_metricas+8
	push r0
	ld r0, 7
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_metricas+8
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
	jmpc eq, _L5713f787_483
	ld r0, 0
	jmp _L5713f787_484
_L5713f787_483:
	ld r0, 1
_L5713f787_484:
	cmp r0, 0
	jmpc eq, _L5713f787_485
	call _f_bios_console_disponivel
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L5713f787_486
	ld r0, 0
	jmp _L5713f787_487
_L5713f787_486:
	ld r0, 1
_L5713f787_487:
	cmp r0, 0
	jmpc eq, _L5713f787_488
	call _f_bios_console_le
	st r0, (bp+-16)
	ld r0, (bp+-16)
	ld sp, bp
	pop bp
	ret
_L5713f787_488:
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_salva_quadro
	add sp, 4
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	pop r1
	st r0, (r1+4)
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_489
	ld r0, 0
	jmp _L5713f787_490
_L5713f787_489:
	ld r0, 1
_L5713f787_490:
	cmp r0, 0
	jmpc eq, _L5713f787_491
	ld r0, (_g_quantum_config)
	push r0
	ld r0, (_g_quantum_restante)
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-12)
	ld r0, (bp+-12)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_492
	ld r0, 0
	jmp _L5713f787_493
_L5713f787_492:
	ld r0, 1
_L5713f787_493:
	cmp r0, 0
	jmpc eq, _L5713f787_494
	ld r0, 0
	st r0, (bp+-12)
_L5713f787_494:
	ld r0, (bp+-12)
	push r0
	ld r0, 1000
	ld r1, r0
	pop r0
	mul r0, r1
	push r0
	ld r0, (_g_quantum_config)
	ld r1, r0
	pop r0
	div r0, r1
	st r0, (bp+-14)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+8)
	push r0
	ld r0, (bp+-14)
	ld r1, r0
	pop r0
	add r0, r1
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	div r0, r1
	pop r1
	st r0, (r1+8)
_L5713f787_491:
	ld r0, 3
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_muda_estado
	add sp, 4
	call _f_so_escolhe_proximo
	st r0, (bp+-4)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_495
	ld r0, 0
	jmp _L5713f787_496
_L5713f787_495:
	ld r0, 1
_L5713f787_496:
	cmp r0, 0
	jmpc eq, _L5713f787_497
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (_g_processo_atual)
	jmp _L5713f787_498
_L5713f787_497:
	ld r0, (bp+-4)
	st r0, (_g_processo_atual)
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
_L5713f787_498:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L5713f787_485:
	ld r0, (bp+6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_499
	ld r0, 0
	jmp _L5713f787_500
_L5713f787_499:
	ld r0, 1
_L5713f787_500:
	cmp r0, 0
	jmpc eq, _L5713f787_501
	ld r0, (bp+8)
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_L5713f787_501:
	ld r0, (bp+6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_502
	ld r0, 0
	jmp _L5713f787_503
_L5713f787_502:
	ld r0, 1
_L5713f787_503:
	cmp r0, 0
	jmpc eq, _L5713f787_504
	ld r0, (bp+8)
	push r0
	call _f_so_cria_proc_interno
	add sp, 2
	ld sp, bp
	pop bp
	ret
_L5713f787_504:
	ld r0, (bp+6)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_505
	ld r0, 0
	jmp _L5713f787_506
_L5713f787_505:
	ld r0, 1
_L5713f787_506:
	cmp r0, 0
	jmpc eq, _L5713f787_507
	ld r0, (bp+8)
	st r0, (bp+-8)
	ld r0, (bp+-8)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_510
	ld r0, 0
	jmp _L5713f787_511
_L5713f787_510:
	ld r0, 1
_L5713f787_511:
	cmp r0, 0
	jmpc ne, _L5713f787_509
	ld r0, (bp+-8)
	push r0
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_512
	ld r0, 0
	jmp _L5713f787_513
_L5713f787_512:
	ld r0, 1
_L5713f787_513:
	cmp r0, 0
	jmpc ne, _L5713f787_509
	ld r0, 0
	jmp _L5713f787_508
_L5713f787_509:
	ld r0, 1
_L5713f787_508:
	cmp r0, 0
	jmpc eq, _L5713f787_514
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1)
	st r0, (bp+-8)
	ld r0, 4
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, 0
	st r0, (bp+-6)
_L5713f787_515:
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_517
	ld r0, 0
	jmp _L5713f787_518
_L5713f787_517:
	ld r0, 1
_L5713f787_518:
	cmp r0, 0
	jmpc eq, _L5713f787_516
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_519
	ld r0, 0
	jmp _L5713f787_520
_L5713f787_519:
	ld r0, 1
_L5713f787_520:
	cmp r0, 0
	jmpc eq, _L5713f787_521
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+4)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_524
	ld r0, 0
	jmp _L5713f787_525
_L5713f787_524:
	ld r0, 1
_L5713f787_525:
	cmp r0, 0
	jmpc eq, _L5713f787_523
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+6)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_526
	ld r0, 0
	jmp _L5713f787_527
_L5713f787_526:
	ld r0, 1
_L5713f787_527:
	cmp r0, 0
	jmpc eq, _L5713f787_523
	ld r0, 1
	jmp _L5713f787_522
_L5713f787_523:
	ld r0, 0
_L5713f787_522:
	cmp r0, 0
	jmpc eq, _L5713f787_528
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+6)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
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
_L5713f787_528:
_L5713f787_521:
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-6)
	jmp _L5713f787_515
_L5713f787_516:
	ld r0, (bp+-8)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_529
	ld r0, 0
	jmp _L5713f787_530
_L5713f787_529:
	ld r0, 1
_L5713f787_530:
	cmp r0, 0
	jmpc eq, _L5713f787_531
	call _f_so_imprime_relatorio
	call _f_so_halt
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_L5713f787_531:
	call _f_so_escolhe_proximo
	st r0, (bp+-4)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_532
	ld r0, 0
	jmp _L5713f787_533
_L5713f787_532:
	ld r0, 1
_L5713f787_533:
	cmp r0, 0
	jmpc eq, _L5713f787_534
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (_g_processo_atual)
	jmp _L5713f787_535
_L5713f787_534:
	ld r0, (bp+-4)
	st r0, (_g_processo_atual)
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
_L5713f787_535:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L5713f787_514:
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-10)
	ld r0, 0
	st r0, (bp+-6)
_L5713f787_536:
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_538
	ld r0, 0
	jmp _L5713f787_539
_L5713f787_538:
	ld r0, 1
_L5713f787_539:
	cmp r0, 0
	jmpc eq, _L5713f787_537
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_544
	ld r0, 0
	jmp _L5713f787_545
_L5713f787_544:
	ld r0, 1
_L5713f787_545:
	cmp r0, 0
	jmpc eq, _L5713f787_543
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L5713f787_546
	ld r0, 0
	jmp _L5713f787_547
_L5713f787_546:
	ld r0, 1
_L5713f787_547:
	cmp r0, 0
	jmpc eq, _L5713f787_543
	ld r0, 1
	jmp _L5713f787_542
_L5713f787_543:
	ld r0, 0
_L5713f787_542:
	cmp r0, 0
	jmpc eq, _L5713f787_541
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L5713f787_548
	ld r0, 0
	jmp _L5713f787_549
_L5713f787_548:
	ld r0, 1
_L5713f787_549:
	cmp r0, 0
	jmpc eq, _L5713f787_541
	ld r0, 1
	jmp _L5713f787_540
_L5713f787_541:
	ld r0, 0
_L5713f787_540:
	cmp r0, 0
	jmpc eq, _L5713f787_550
	ld r0, (bp+-6)
	st r0, (bp+-10)
	jmp _L5713f787_537
_L5713f787_550:
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-6)
	jmp _L5713f787_536
_L5713f787_537:
	ld r0, (bp+-10)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_551
	ld r0, 0
	jmp _L5713f787_552
_L5713f787_551:
	ld r0, 1
_L5713f787_552:
	cmp r0, 0
	jmpc eq, _L5713f787_553
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L5713f787_553:
	ld r0, 4
	push r0
	ld r0, (bp+-10)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, 0
	st r0, (bp+-6)
_L5713f787_554:
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_556
	ld r0, 0
	jmp _L5713f787_557
_L5713f787_556:
	ld r0, 1
_L5713f787_557:
	cmp r0, 0
	jmpc eq, _L5713f787_555
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_558
	ld r0, 0
	jmp _L5713f787_559
_L5713f787_558:
	ld r0, 1
_L5713f787_559:
	cmp r0, 0
	jmpc eq, _L5713f787_560
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+4)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_563
	ld r0, 0
	jmp _L5713f787_564
_L5713f787_563:
	ld r0, 1
_L5713f787_564:
	cmp r0, 0
	jmpc eq, _L5713f787_562
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+6)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_565
	ld r0, 0
	jmp _L5713f787_566
_L5713f787_565:
	ld r0, 1
_L5713f787_566:
	cmp r0, 0
	jmpc eq, _L5713f787_562
	ld r0, 1
	jmp _L5713f787_561
_L5713f787_562:
	ld r0, 0
_L5713f787_561:
	cmp r0, 0
	jmpc eq, _L5713f787_567
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+6)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
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
_L5713f787_567:
_L5713f787_560:
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-6)
	jmp _L5713f787_554
_L5713f787_555:
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_L5713f787_507:
	ld r0, (bp+6)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_568
	ld r0, 0
	jmp _L5713f787_569
_L5713f787_568:
	ld r0, 1
_L5713f787_569:
	cmp r0, 0
	jmpc eq, _L5713f787_570
	ld r0, (bp+8)
	st r0, (bp+-8)
	ld r0, (bp+-8)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc le, _L5713f787_573
	ld r0, 0
	jmp _L5713f787_574
_L5713f787_573:
	ld r0, 1
_L5713f787_574:
	cmp r0, 0
	jmpc ne, _L5713f787_572
	ld r0, (bp+-8)
	push r0
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_575
	ld r0, 0
	jmp _L5713f787_576
_L5713f787_575:
	ld r0, 1
_L5713f787_576:
	cmp r0, 0
	jmpc ne, _L5713f787_572
	ld r0, 0
	jmp _L5713f787_571
_L5713f787_572:
	ld r0, 1
_L5713f787_571:
	cmp r0, 0
	jmpc eq, _L5713f787_577
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L5713f787_577:
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-10)
	ld r0, 0
	st r0, (bp+-6)
_L5713f787_578:
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_580
	ld r0, 0
	jmp _L5713f787_581
_L5713f787_580:
	ld r0, 1
_L5713f787_581:
	cmp r0, 0
	jmpc eq, _L5713f787_579
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, (bp+-8)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_586
	ld r0, 0
	jmp _L5713f787_587
_L5713f787_586:
	ld r0, 1
_L5713f787_587:
	cmp r0, 0
	jmpc eq, _L5713f787_585
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L5713f787_588
	ld r0, 0
	jmp _L5713f787_589
_L5713f787_588:
	ld r0, 1
_L5713f787_589:
	cmp r0, 0
	jmpc eq, _L5713f787_585
	ld r0, 1
	jmp _L5713f787_584
_L5713f787_585:
	ld r0, 0
_L5713f787_584:
	cmp r0, 0
	jmpc eq, _L5713f787_583
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L5713f787_590
	ld r0, 0
	jmp _L5713f787_591
_L5713f787_590:
	ld r0, 1
_L5713f787_591:
	cmp r0, 0
	jmpc eq, _L5713f787_583
	ld r0, 1
	jmp _L5713f787_582
_L5713f787_583:
	ld r0, 0
_L5713f787_582:
	cmp r0, 0
	jmpc eq, _L5713f787_592
	ld r0, (bp+-6)
	st r0, (bp+-10)
	jmp _L5713f787_579
_L5713f787_592:
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-6)
	jmp _L5713f787_578
_L5713f787_579:
	ld r0, (bp+-10)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_593
	ld r0, 0
	jmp _L5713f787_594
_L5713f787_593:
	ld r0, 1
_L5713f787_594:
	cmp r0, 0
	jmpc eq, _L5713f787_595
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L5713f787_595:
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_salva_quadro
	add sp, 4
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, 2
	pop r1
	st r0, (r1+4)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-8)
	pop r1
	st r0, (r1+6)
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_596
	ld r0, 0
	jmp _L5713f787_597
_L5713f787_596:
	ld r0, 1
_L5713f787_597:
	cmp r0, 0
	jmpc eq, _L5713f787_598
	ld r0, (_g_quantum_config)
	push r0
	ld r0, (_g_quantum_restante)
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-12)
	ld r0, (bp+-12)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_599
	ld r0, 0
	jmp _L5713f787_600
_L5713f787_599:
	ld r0, 1
_L5713f787_600:
	cmp r0, 0
	jmpc eq, _L5713f787_601
	ld r0, 0
	st r0, (bp+-12)
_L5713f787_601:
	ld r0, (bp+-12)
	push r0
	ld r0, 1000
	ld r1, r0
	pop r0
	mul r0, r1
	push r0
	ld r0, (_g_quantum_config)
	ld r1, r0
	pop r0
	div r0, r1
	st r0, (bp+-14)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+8)
	push r0
	ld r0, (bp+-14)
	ld r1, r0
	pop r0
	add r0, r1
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	div r0, r1
	pop r1
	st r0, (r1+8)
_L5713f787_598:
	ld r0, 3
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_muda_estado
	add sp, 4
	call _f_so_escolhe_proximo
	st r0, (bp+-4)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_602
	ld r0, 0
	jmp _L5713f787_603
_L5713f787_602:
	ld r0, 1
_L5713f787_603:
	cmp r0, 0
	jmpc eq, _L5713f787_604
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (_g_processo_atual)
	jmp _L5713f787_605
_L5713f787_604:
	ld r0, (bp+-4)
	st r0, (_g_processo_atual)
	ld r0, 2
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
_L5713f787_605:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L5713f787_570:
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
	sub sp, 6
	call _f_fila_inicializa
	ld r0, 0
	st r0, (bp+-2)
_L5713f787_614:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_616
	ld r0, 0
	jmp _L5713f787_617
_L5713f787_616:
	ld r0, 1
_L5713f787_617:
	cmp r0, 0
	jmpc eq, _L5713f787_615
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+2)
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
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
	jmp _L5713f787_614
_L5713f787_615:
	ld r0, 0
	st r0, (bp+-2)
_L5713f787_618:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_620
	ld r0, 0
	jmp _L5713f787_621
_L5713f787_620:
	ld r0, 1
_L5713f787_621:
	cmp r0, 0
	jmpc eq, _L5713f787_619
	ld r0, _g_metricas+8
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
	jmp _L5713f787_618
_L5713f787_619:
	ld r0, 0
	st r0, (_g_metricas)
	ld r0, 0
	st r0, (_g_metricas+2)
	ld r0, 0
	st r0, (_g_metricas+4)
	ld r0, 0
	st r0, (_g_metricas+6)
	ld r0, _g_metricas+8
	push r0
	ld r0, 0
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	pop r1
	st r0, (r1)
	ld r0, 1
	st r0, (_g_proximo_pid)
	ld r0, 0
	st r0, (_g_tempo_sistema)
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (_g_processo_atual)
	ld r0, 1
	st r0, (_g_escalonador_tipo)
	ld r0, 4
	st r0, (_g_quantum_config)
	ld r0, (_g_quantum_config)
	st r0, (_g_quantum_restante)
	ld r0, _f_proc_init
	push r0
	call _f_so_cria_proc_interno
	add sp, 2
	st r0, (bp+-4)
	call _f_so_escolhe_proximo
	st r0, (bp+-6)
	ld r0, (bp+-6)
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
	ld sp, bp
	pop bp
	ret
_f_k_print_str:
	push bp
	ld bp, sp
_L5713f787_626:
	ld r0, (bp+4)
	ld r1, r0
	ldb r0, (r1)
	and r0, 255
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L5713f787_628
	ld r0, 0
	jmp _L5713f787_629
_L5713f787_628:
	ld r0, 1
_L5713f787_629:
	cmp r0, 0
	jmpc eq, _L5713f787_627
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
	jmp _L5713f787_626
_L5713f787_627:
	ld sp, bp
	pop bp
	ret
_f_k_puts:
	push bp
	ld bp, sp
	ld r0, (bp+4)
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, 10
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_k_nova_linha:
	push bp
	ld bp, sp
	ld r0, 10
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_k_linha_igual:
	push bp
	ld bp, sp
	ld r0, _str5713f787_1
	push r0
	call _f_k_puts
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_k_linha_traco:
	push bp
	ld bp, sp
	ld r0, _str5713f787_3
	push r0
	call _f_k_puts
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_k_print_dec:
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
	jmpc lt, _L5713f787_645
	ld r0, 0
	jmp _L5713f787_646
_L5713f787_645:
	ld r0, 1
_L5713f787_646:
	cmp r0, 0
	jmpc eq, _L5713f787_647
	ld r0, 1
	st r0, (bp+-12)
	ld r0, (bp+4)
	xor r0, -1
	add r0, 1
	st r0, (bp+4)
_L5713f787_647:
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_648
	ld r0, 0
	jmp _L5713f787_649
_L5713f787_648:
	ld r0, 1
_L5713f787_649:
	cmp r0, 0
	jmpc eq, _L5713f787_650
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
_L5713f787_650:
_L5713f787_651:
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L5713f787_653
	ld r0, 0
	jmp _L5713f787_654
_L5713f787_653:
	ld r0, 1
_L5713f787_654:
	cmp r0, 0
	jmpc eq, _L5713f787_652
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
	jmp _L5713f787_651
_L5713f787_652:
	ld r0, (bp+-12)
	cmp r0, 0
	jmpc eq, _L5713f787_655
	ld r0, 45
	push r0
	call _f_so_escreve_caractere
	add sp, 2
_L5713f787_655:
_L5713f787_656:
	ld r0, (bp+-10)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L5713f787_658
	ld r0, 0
	jmp _L5713f787_659
_L5713f787_658:
	ld r0, 1
_L5713f787_659:
	cmp r0, 0
	jmpc eq, _L5713f787_657
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
	jmp _L5713f787_656
_L5713f787_657:
	ld sp, bp
	pop bp
	ret
_f_k_print_campo:
	push bp
	ld bp, sp
	sub sp, 6
	ld r0, (bp+4)
	st r0, (bp+-2)
	ld r0, 0
	st r0, (bp+-4)
	ld r0, (bp+-2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc le, _L5713f787_674
	ld r0, 0
	jmp _L5713f787_675
_L5713f787_674:
	ld r0, 1
_L5713f787_675:
	cmp r0, 0
	jmpc eq, _L5713f787_676
	ld r0, 1
	st r0, (bp+-4)
	ld r0, (bp+-2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_677
	ld r0, 0
	jmp _L5713f787_678
_L5713f787_677:
	ld r0, 1
_L5713f787_678:
	cmp r0, 0
	jmpc eq, _L5713f787_679
	ld r0, (bp+-2)
	xor r0, -1
	add r0, 1
	st r0, (bp+-2)
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
_L5713f787_679:
_L5713f787_676:
_L5713f787_680:
	ld r0, (bp+-2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L5713f787_682
	ld r0, 0
	jmp _L5713f787_683
_L5713f787_682:
	ld r0, 1
_L5713f787_683:
	cmp r0, 0
	jmpc eq, _L5713f787_681
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	ld r0, (bp+-2)
	push r0
	ld r0, 10
	ld r1, r0
	pop r0
	div r0, r1
	st r0, (bp+-2)
	jmp _L5713f787_680
_L5713f787_681:
	ld r0, (bp+6)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-6)
_L5713f787_684:
	ld r0, (bp+-6)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L5713f787_686
	ld r0, 0
	jmp _L5713f787_687
_L5713f787_686:
	ld r0, 1
_L5713f787_687:
	cmp r0, 0
	jmpc eq, _L5713f787_685
	ld r0, 32
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-6)
	jmp _L5713f787_684
_L5713f787_685:
	ld r0, (bp+4)
	push r0
	call _f_k_print_dec
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_so_imprime_relatorio:
	push bp
	ld bp, sp
	sub sp, 8
	call _f_k_nova_linha
	call _f_k_linha_igual
	ld r0, _str5713f787_35
	push r0
	call _f_k_puts
	add sp, 2
	call _f_k_linha_igual
	ld r0, _str5713f787_36
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_712
	ld r0, 0
	jmp _L5713f787_713
_L5713f787_712:
	ld r0, 1
_L5713f787_713:
	cmp r0, 0
	jmpc eq, _L5713f787_714
	ld r0, _str5713f787_37
	push r0
	call _f_k_puts
	add sp, 2
	jmp _L5713f787_715
_L5713f787_714:
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_716
	ld r0, 0
	jmp _L5713f787_717
_L5713f787_716:
	ld r0, 1
_L5713f787_717:
	cmp r0, 0
	jmpc eq, _L5713f787_718
	ld r0, _str5713f787_38
	push r0
	call _f_k_puts
	add sp, 2
	jmp _L5713f787_719
_L5713f787_718:
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L5713f787_720
	ld r0, 0
	jmp _L5713f787_721
_L5713f787_720:
	ld r0, 1
_L5713f787_721:
	cmp r0, 0
	jmpc eq, _L5713f787_722
	ld r0, _str5713f787_39
	push r0
	call _f_k_puts
	add sp, 2
_L5713f787_722:
_L5713f787_719:
_L5713f787_715:
	ld r0, _str5713f787_40
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, (_g_quantum_config)
	push r0
	call _f_k_print_dec
	add sp, 2
	ld r0, _str5713f787_41
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, (_g_quantum_config)
	push r0
	ld r0, 1000
	ld r1, r0
	pop r0
	mul r0, r1
	push r0
	call _f_k_print_dec
	add sp, 2
	ld r0, _str5713f787_42
	push r0
	call _f_k_puts
	add sp, 2
	call _f_k_linha_traco
	ld r0, _str5713f787_43
	push r0
	call _f_k_puts
	add sp, 2
	ld r0, _str5713f787_44
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, (_g_metricas)
	push r0
	call _f_k_print_dec
	add sp, 2
	call _f_k_nova_linha
	ld r0, _str5713f787_45
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, (_g_metricas+2)
	push r0
	call _f_k_print_dec
	add sp, 2
	ld r0, _str5713f787_46
	push r0
	call _f_k_puts
	add sp, 2
	ld r0, _str5713f787_47
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, (_g_metricas+4)
	push r0
	call _f_k_print_dec
	add sp, 2
	ld r0, _str5713f787_48
	push r0
	call _f_k_puts
	add sp, 2
	ld r0, _str5713f787_49
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, (_g_metricas+6)
	push r0
	call _f_k_print_dec
	add sp, 2
	call _f_k_nova_linha
	call _f_k_linha_traco
	ld r0, _str5713f787_50
	push r0
	call _f_k_puts
	add sp, 2
	ld r0, _str5713f787_51
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, _g_metricas+8
	push r0
	ld r0, 0
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_k_print_dec
	add sp, 2
	call _f_k_nova_linha
	ld r0, _str5713f787_52
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, _g_metricas+8
	push r0
	ld r0, 7
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_k_print_dec
	add sp, 2
	call _f_k_nova_linha
	ld r0, _str5713f787_53
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, _g_metricas+8
	push r0
	ld r0, 8
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_k_print_dec
	add sp, 2
	call _f_k_nova_linha
	ld r0, _str5713f787_54
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, _g_metricas+8
	push r0
	ld r0, 10
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_k_print_dec
	add sp, 2
	call _f_k_nova_linha
	call _f_k_linha_traco
	ld r0, _str5713f787_55
	push r0
	call _f_k_puts
	add sp, 2
	ld r0, _str5713f787_56
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, _str5713f787_57
	push r0
	call _f_k_puts
	add sp, 2
	ld r0, _str5713f787_58
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, _str5713f787_59
	push r0
	call _f_k_puts
	add sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L5713f787_723:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_725
	ld r0, 0
	jmp _L5713f787_726
_L5713f787_725:
	ld r0, 1
_L5713f787_726:
	cmp r0, 0
	jmpc eq, _L5713f787_724
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
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
	jmpc gt, _L5713f787_727
	ld r0, 0
	jmp _L5713f787_728
_L5713f787_727:
	ld r0, 1
_L5713f787_728:
	cmp r0, 0
	jmpc eq, _L5713f787_729
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+44)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+42)
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-6)
	ld r0, (bp+-6)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L5713f787_730
	ld r0, 0
	jmp _L5713f787_731
_L5713f787_730:
	ld r0, 1
_L5713f787_731:
	cmp r0, 0
	jmpc eq, _L5713f787_732
	ld r0, (_g_tempo_sistema)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+42)
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-6)
_L5713f787_732:
	ld r0, 0
	st r0, (bp+-8)
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+66)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L5713f787_733
	ld r0, 0
	jmp _L5713f787_734
_L5713f787_733:
	ld r0, 1
_L5713f787_734:
	cmp r0, 0
	jmpc eq, _L5713f787_735
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+64)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+66)
	ld r1, r0
	pop r0
	div r0, r1
	st r0, (bp+-8)
_L5713f787_735:
	ld r0, 32
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld r0, 2
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1)
	push r0
	call _f_k_print_campo
	add sp, 4
	ld r0, _str5713f787_60
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, 7
	push r0
	ld r0, (bp+-6)
	push r0
	call _f_k_print_campo
	add sp, 4
	ld r0, _str5713f787_61
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, 6
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+46)
	push r0
	call _f_k_print_campo
	add sp, 4
	ld r0, _str5713f787_62
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, 4
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+48)
	push r0
	call _f_k_print_campo
	add sp, 4
	ld r0, 47
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld r0, 7
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+54)
	push r0
	call _f_k_print_campo
	add sp, 4
	ld r0, _str5713f787_63
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, 3
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+50)
	push r0
	call _f_k_print_campo
	add sp, 4
	ld r0, 47
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld r0, 7
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+56)
	push r0
	call _f_k_print_campo
	add sp, 4
	ld r0, _str5713f787_64
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, 3
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+52)
	push r0
	call _f_k_print_campo
	add sp, 4
	ld r0, 47
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld r0, 7
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+58)
	push r0
	call _f_k_print_campo
	add sp, 4
	ld r0, _str5713f787_65
	push r0
	call _f_k_print_str
	add sp, 2
	ld r0, 7
	push r0
	ld r0, (bp+-8)
	push r0
	call _f_k_print_campo
	add sp, 4
	call _f_k_nova_linha
_L5713f787_729:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L5713f787_723
_L5713f787_724:
	call _f_k_linha_igual
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
_g_pilhas_processos:
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
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

; ----- literais de string -----
_str5713f787_0:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_str5713f787_1:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_str5713f787_2:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str5713f787_3:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str5713f787_4:
	.db 32, 32, 82, 69, 76, 65, 84, 79, 82, 73, 79, 32, 68, 69, 32, 69, 88, 69, 67, 85, 67, 65, 79, 32, 68, 79, 32, 83, 79, 0
_str5713f787_5:
	.db 69, 115, 99, 97, 108, 111, 110, 97, 100, 111, 114, 58, 32, 0
_str5713f787_6:
	.db 83, 73, 77, 80, 76, 69, 83, 32, 40, 67, 111, 111, 112, 101, 114, 97, 116, 105, 118, 111, 41, 0
_str5713f787_7:
	.db 67, 73, 82, 67, 85, 76, 65, 82, 32, 40, 82, 111, 117, 110, 100, 45, 82, 111, 98, 105, 110, 41, 0
_str5713f787_8:
	.db 80, 82, 73, 79, 82, 73, 68, 65, 68, 69, 32, 68, 73, 78, 65, 77, 73, 67, 65, 0
_str5713f787_9:
	.db 81, 117, 97, 110, 116, 117, 109, 58, 32, 0
_str5713f787_10:
	.db 32, 116, 105, 113, 117, 101, 115, 32, 40, 0
_str5713f787_11:
	.db 32, 105, 110, 115, 116, 41, 0
_str5713f787_12:
	.db 77, 69, 84, 82, 73, 67, 65, 83, 32, 71, 69, 82, 65, 73, 83, 32, 68, 79, 32, 83, 73, 83, 84, 69, 77, 65, 58, 0
_str5713f787_13:
	.db 32, 32, 84, 111, 116, 97, 108, 32, 112, 114, 111, 99, 32, 99, 114, 105, 97, 100, 111, 115, 58, 32, 0
_str5713f787_14:
	.db 32, 32, 84, 101, 109, 112, 111, 32, 116, 111, 116, 97, 108, 32, 101, 120, 101, 99, 58, 32, 32, 32, 0
_str5713f787_15:
	.db 32, 116, 105, 113, 117, 101, 115, 32, 100, 101, 32, 114, 101, 108, 111, 103, 105, 111, 0
_str5713f787_16:
	.db 32, 32, 84, 101, 109, 112, 111, 32, 111, 99, 105, 111, 115, 111, 58, 32, 32, 32, 32, 32, 32, 32, 0
_str5713f787_17:
	.db 32, 116, 105, 113, 117, 101, 115, 32, 100, 101, 32, 114, 101, 108, 111, 103, 105, 111, 0
_str5713f787_18:
	.db 32, 32, 84, 111, 116, 97, 108, 32, 112, 114, 101, 101, 109, 112, 99, 111, 101, 115, 58, 32, 32, 32, 0
_str5713f787_19:
	.db 73, 78, 84, 69, 82, 82, 85, 80, 67, 79, 69, 83, 32, 82, 69, 67, 69, 66, 73, 68, 65, 83, 58, 0
_str5713f787_20:
	.db 32, 32, 91, 48, 93, 32, 32, 66, 111, 111, 116, 58, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0
_str5713f787_21:
	.db 32, 32, 91, 55, 93, 32, 32, 83, 121, 115, 99, 97, 108, 108, 115, 58, 32, 32, 32, 32, 32, 0
_str5713f787_22:
	.db 32, 32, 91, 56, 93, 32, 32, 67, 111, 110, 115, 111, 108, 101, 58, 32, 32, 32, 32, 32, 32, 0
_str5713f787_23:
	.db 32, 32, 91, 49, 48, 93, 32, 82, 101, 108, 111, 103, 105, 111, 58, 32, 32, 32, 32, 32, 32, 0
_str5713f787_24:
	.db 77, 69, 84, 82, 73, 67, 65, 83, 32, 80, 79, 82, 32, 80, 82, 79, 67, 69, 83, 83, 79, 58, 0
_str5713f787_25:
	.db 80, 73, 68, 32, 124, 32, 82, 101, 116, 111, 114, 110, 111, 32, 124, 32, 80, 114, 101, 101, 109, 112, 32, 124, 32, 80, 114, 111, 110, 116, 111, 40, 118, 47, 116, 41, 32, 124, 32, 0
_str5713f787_26:
	.db 66, 108, 111, 113, 40, 118, 47, 116, 41, 32, 124, 32, 69, 120, 101, 99, 40, 118, 47, 116, 41, 32, 124, 32, 82, 101, 115, 112, 46, 77, 101, 100, 0
_str5713f787_27:
	.db 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 0
_str5713f787_28:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str5713f787_29:
	.db 32, 124, 32, 0
_str5713f787_30:
	.db 32, 124, 32, 0
_str5713f787_31:
	.db 32, 124, 32, 0
_str5713f787_32:
	.db 32, 124, 32, 0
_str5713f787_33:
	.db 32, 124, 32, 0
_str5713f787_34:
	.db 32, 124, 32, 0
_str5713f787_35:
	.db 32, 32, 82, 69, 76, 65, 84, 79, 82, 73, 79, 32, 68, 69, 32, 69, 88, 69, 67, 85, 67, 65, 79, 32, 68, 79, 32, 83, 79, 0
_str5713f787_36:
	.db 69, 115, 99, 97, 108, 111, 110, 97, 100, 111, 114, 58, 32, 0
_str5713f787_37:
	.db 83, 73, 77, 80, 76, 69, 83, 32, 40, 67, 111, 111, 112, 101, 114, 97, 116, 105, 118, 111, 41, 0
_str5713f787_38:
	.db 67, 73, 82, 67, 85, 76, 65, 82, 32, 40, 82, 111, 117, 110, 100, 45, 82, 111, 98, 105, 110, 41, 0
_str5713f787_39:
	.db 80, 82, 73, 79, 82, 73, 68, 65, 68, 69, 32, 68, 73, 78, 65, 77, 73, 67, 65, 0
_str5713f787_40:
	.db 81, 117, 97, 110, 116, 117, 109, 58, 32, 0
_str5713f787_41:
	.db 32, 116, 105, 113, 117, 101, 115, 32, 40, 0
_str5713f787_42:
	.db 32, 105, 110, 115, 116, 41, 0
_str5713f787_43:
	.db 77, 69, 84, 82, 73, 67, 65, 83, 32, 71, 69, 82, 65, 73, 83, 32, 68, 79, 32, 83, 73, 83, 84, 69, 77, 65, 58, 0
_str5713f787_44:
	.db 32, 32, 84, 111, 116, 97, 108, 32, 112, 114, 111, 99, 32, 99, 114, 105, 97, 100, 111, 115, 58, 32, 0
_str5713f787_45:
	.db 32, 32, 84, 101, 109, 112, 111, 32, 116, 111, 116, 97, 108, 32, 101, 120, 101, 99, 58, 32, 32, 32, 0
_str5713f787_46:
	.db 32, 116, 105, 113, 117, 101, 115, 32, 100, 101, 32, 114, 101, 108, 111, 103, 105, 111, 0
_str5713f787_47:
	.db 32, 32, 84, 101, 109, 112, 111, 32, 111, 99, 105, 111, 115, 111, 58, 32, 32, 32, 32, 32, 32, 32, 0
_str5713f787_48:
	.db 32, 116, 105, 113, 117, 101, 115, 32, 100, 101, 32, 114, 101, 108, 111, 103, 105, 111, 0
_str5713f787_49:
	.db 32, 32, 84, 111, 116, 97, 108, 32, 112, 114, 101, 101, 109, 112, 99, 111, 101, 115, 58, 32, 32, 32, 0
_str5713f787_50:
	.db 73, 78, 84, 69, 82, 82, 85, 80, 67, 79, 69, 83, 32, 82, 69, 67, 69, 66, 73, 68, 65, 83, 58, 0
_str5713f787_51:
	.db 32, 32, 91, 48, 93, 32, 32, 66, 111, 111, 116, 58, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0
_str5713f787_52:
	.db 32, 32, 91, 55, 93, 32, 32, 83, 121, 115, 99, 97, 108, 108, 115, 58, 32, 32, 32, 32, 32, 0
_str5713f787_53:
	.db 32, 32, 91, 56, 93, 32, 32, 67, 111, 110, 115, 111, 108, 101, 58, 32, 32, 32, 32, 32, 32, 0
_str5713f787_54:
	.db 32, 32, 91, 49, 48, 93, 32, 82, 101, 108, 111, 103, 105, 111, 58, 32, 32, 32, 32, 32, 32, 0
_str5713f787_55:
	.db 77, 69, 84, 82, 73, 67, 65, 83, 32, 80, 79, 82, 32, 80, 82, 79, 67, 69, 83, 83, 79, 58, 0
_str5713f787_56:
	.db 80, 73, 68, 32, 124, 32, 82, 101, 116, 111, 114, 110, 111, 32, 124, 32, 80, 114, 101, 101, 109, 112, 32, 124, 32, 80, 114, 111, 110, 116, 111, 40, 118, 47, 116, 41, 32, 124, 32, 0
_str5713f787_57:
	.db 66, 108, 111, 113, 40, 118, 47, 116, 41, 32, 124, 32, 69, 120, 101, 99, 40, 118, 47, 116, 41, 32, 124, 32, 82, 101, 115, 112, 46, 77, 101, 100, 0
_str5713f787_58:
	.db 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 0
_str5713f787_59:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str5713f787_60:
	.db 32, 124, 32, 0
_str5713f787_61:
	.db 32, 124, 32, 0
_str5713f787_62:
	.db 32, 124, 32, 0
_str5713f787_63:
	.db 32, 124, 32, 0
_str5713f787_64:
	.db 32, 124, 32, 0
_str5713f787_65:
	.db 32, 124, 32, 0
