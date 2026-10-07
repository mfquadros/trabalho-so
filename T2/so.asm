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
	jmpc ge, _L115e85fc_6
	ld r0, 0
	jmp _L115e85fc_7
_L115e85fc_6:
	ld r0, 1
_L115e85fc_7:
	cmp r0, 0
	jmpc eq, _L115e85fc_8
	ld sp, bp
	pop bp
	ret
_L115e85fc_8:
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
	jmpc ge, _L115e85fc_9
	ld r0, 0
	jmp _L115e85fc_10
_L115e85fc_9:
	ld r0, 1
_L115e85fc_10:
	cmp r0, 0
	jmpc eq, _L115e85fc_11
	ld r0, 0
	st r0, (_g_fila_fim)
_L115e85fc_11:
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
	jmpc eq, _L115e85fc_18
	ld r0, 0
	jmp _L115e85fc_19
_L115e85fc_18:
	ld r0, 1
_L115e85fc_19:
	cmp r0, 0
	jmpc eq, _L115e85fc_20
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L115e85fc_20:
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
	jmpc ge, _L115e85fc_21
	ld r0, 0
	jmp _L115e85fc_22
_L115e85fc_21:
	ld r0, 1
_L115e85fc_22:
	cmp r0, 0
	jmpc eq, _L115e85fc_23
	ld r0, 0
	st r0, (_g_fila_inicio)
_L115e85fc_23:
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
_L115e85fc_42:
	ld r0, (bp+-4)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_44
	ld r0, 0
	jmp _L115e85fc_45
_L115e85fc_44:
	ld r0, 1
_L115e85fc_45:
	cmp r0, 0
	jmpc eq, _L115e85fc_43
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
	jmpc eq, _L115e85fc_48
	ld r0, 0
	jmp _L115e85fc_49
_L115e85fc_48:
	ld r0, 1
_L115e85fc_49:
	cmp r0, 0
	jmpc ne, _L115e85fc_47
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
	jmpc eq, _L115e85fc_50
	ld r0, 0
	jmp _L115e85fc_51
_L115e85fc_50:
	ld r0, 1
_L115e85fc_51:
	cmp r0, 0
	jmpc ne, _L115e85fc_47
	ld r0, 0
	jmp _L115e85fc_46
_L115e85fc_47:
	ld r0, 1
_L115e85fc_46:
	cmp r0, 0
	jmpc eq, _L115e85fc_52
	ld r0, (bp+-4)
	st r0, (bp+-2)
	jmp _L115e85fc_43
_L115e85fc_52:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _L115e85fc_42
_L115e85fc_43:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_53
	ld r0, 0
	jmp _L115e85fc_54
_L115e85fc_53:
	ld r0, 1
_L115e85fc_54:
	cmp r0, 0
	jmpc eq, _L115e85fc_55
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L115e85fc_55:
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
_L115e85fc_56:
	ld r0, (bp+-4)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_58
	ld r0, 0
	jmp _L115e85fc_59
_L115e85fc_58:
	ld r0, 1
_L115e85fc_59:
	cmp r0, 0
	jmpc eq, _L115e85fc_57
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
	jmp _L115e85fc_56
_L115e85fc_57:
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
	jmpc gt, _L115e85fc_98
	ld r0, 0
	jmp _L115e85fc_99
_L115e85fc_98:
	ld r0, 1
_L115e85fc_99:
	cmp r0, 0
	jmpc eq, _L115e85fc_100
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_101
	ld r0, 0
	jmp _L115e85fc_102
_L115e85fc_101:
	ld r0, 1
_L115e85fc_102:
	cmp r0, 0
	jmpc eq, _L115e85fc_103
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
	jmp _L115e85fc_104
_L115e85fc_103:
	ld r0, (bp+-6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_105
	ld r0, 0
	jmp _L115e85fc_106
_L115e85fc_105:
	ld r0, 1
_L115e85fc_106:
	cmp r0, 0
	jmpc eq, _L115e85fc_107
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
	jmp _L115e85fc_108
_L115e85fc_107:
	ld r0, (bp+-6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_109
	ld r0, 0
	jmp _L115e85fc_110
_L115e85fc_109:
	ld r0, 1
_L115e85fc_110:
	cmp r0, 0
	jmpc eq, _L115e85fc_111
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
_L115e85fc_111:
_L115e85fc_108:
_L115e85fc_104:
_L115e85fc_100:
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
	jmpc eq, _L115e85fc_112
	ld r0, 0
	jmp _L115e85fc_113
_L115e85fc_112:
	ld r0, 1
_L115e85fc_113:
	cmp r0, 0
	jmpc eq, _L115e85fc_114
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
	jmpc eq, _L115e85fc_115
	ld r0, 0
	jmp _L115e85fc_116
_L115e85fc_115:
	ld r0, 1
_L115e85fc_116:
	cmp r0, 0
	jmpc eq, _L115e85fc_117
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (_g_tempo_sistema)
	pop r1
	st r0, (r1+62)
_L115e85fc_117:
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_118
	ld r0, 0
	jmp _L115e85fc_119
_L115e85fc_118:
	ld r0, 1
_L115e85fc_119:
	cmp r0, 0
	jmpc eq, _L115e85fc_120
	ld r0, (bp+4)
	push r0
	call _f_fila_insere
	add sp, 2
_L115e85fc_120:
	jmp _L115e85fc_121
_L115e85fc_114:
	ld r0, (bp+6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_122
	ld r0, 0
	jmp _L115e85fc_123
_L115e85fc_122:
	ld r0, 1
_L115e85fc_123:
	cmp r0, 0
	jmpc eq, _L115e85fc_124
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
	jmpc gt, _L115e85fc_125
	ld r0, 0
	jmp _L115e85fc_126
_L115e85fc_125:
	ld r0, 1
_L115e85fc_126:
	cmp r0, 0
	jmpc eq, _L115e85fc_127
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
_L115e85fc_127:
	jmp _L115e85fc_128
_L115e85fc_124:
	ld r0, (bp+6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_129
	ld r0, 0
	jmp _L115e85fc_130
_L115e85fc_129:
	ld r0, 1
_L115e85fc_130:
	cmp r0, 0
	jmpc eq, _L115e85fc_131
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
	jmp _L115e85fc_132
_L115e85fc_131:
	ld r0, (bp+6)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_133
	ld r0, 0
	jmp _L115e85fc_134
_L115e85fc_133:
	ld r0, 1
_L115e85fc_134:
	cmp r0, 0
	jmpc eq, _L115e85fc_135
	ld r0, (bp+-2)
	ld r1, r0
	push r1
	ld r0, (_g_tempo_sistema)
	pop r1
	st r0, (r1+44)
_L115e85fc_135:
_L115e85fc_132:
_L115e85fc_128:
_L115e85fc_121:
	ld sp, bp
	pop bp
	ret
_f_so_escolhe_proximo:
	push bp
	ld bp, sp
	sub sp, 6
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_181
	ld r0, 0
	jmp _L115e85fc_182
_L115e85fc_181:
	ld r0, 1
_L115e85fc_182:
	cmp r0, 0
	jmpc eq, _L115e85fc_183
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L115e85fc_184
	ld r0, 0
	jmp _L115e85fc_185
_L115e85fc_184:
	ld r0, 1
_L115e85fc_185:
	cmp r0, 0
	jmpc eq, _L115e85fc_186
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
	jmpc eq, _L115e85fc_187
	ld r0, 0
	jmp _L115e85fc_188
_L115e85fc_187:
	ld r0, 1
_L115e85fc_188:
	cmp r0, 0
	jmpc eq, _L115e85fc_189
	ld r0, (_g_processo_atual)
	ld sp, bp
	pop bp
	ret
_L115e85fc_189:
_L115e85fc_186:
	ld r0, 0
	st r0, (bp+-2)
_L115e85fc_190:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_192
	ld r0, 0
	jmp _L115e85fc_193
_L115e85fc_192:
	ld r0, 1
_L115e85fc_193:
	cmp r0, 0
	jmpc eq, _L115e85fc_191
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
	jmpc eq, _L115e85fc_194
	ld r0, 0
	jmp _L115e85fc_195
_L115e85fc_194:
	ld r0, 1
_L115e85fc_195:
	cmp r0, 0
	jmpc eq, _L115e85fc_196
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
_L115e85fc_196:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L115e85fc_190
_L115e85fc_191:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
	jmp _L115e85fc_197
_L115e85fc_183:
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_198
	ld r0, 0
	jmp _L115e85fc_199
_L115e85fc_198:
	ld r0, 1
_L115e85fc_199:
	cmp r0, 0
	jmpc eq, _L115e85fc_200
_L115e85fc_201:
	ld r0, (_g_fila_n)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L115e85fc_203
	ld r0, 0
	jmp _L115e85fc_204
_L115e85fc_203:
	ld r0, 1
_L115e85fc_204:
	cmp r0, 0
	jmpc eq, _L115e85fc_202
	call _f_fila_retira
	st r0, (bp+-4)
	ld r0, (bp+-4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L115e85fc_207
	ld r0, 0
	jmp _L115e85fc_208
_L115e85fc_207:
	ld r0, 1
_L115e85fc_208:
	cmp r0, 0
	jmpc eq, _L115e85fc_206
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
	jmpc eq, _L115e85fc_209
	ld r0, 0
	jmp _L115e85fc_210
_L115e85fc_209:
	ld r0, 1
_L115e85fc_210:
	cmp r0, 0
	jmpc eq, _L115e85fc_206
	ld r0, 1
	jmp _L115e85fc_205
_L115e85fc_206:
	ld r0, 0
_L115e85fc_205:
	cmp r0, 0
	jmpc eq, _L115e85fc_211
	ld r0, (bp+-4)
	ld sp, bp
	pop bp
	ret
_L115e85fc_211:
	jmp _L115e85fc_201
_L115e85fc_202:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
	jmp _L115e85fc_212
_L115e85fc_200:
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_213
	ld r0, 0
	jmp _L115e85fc_214
_L115e85fc_213:
	ld r0, 1
_L115e85fc_214:
	cmp r0, 0
	jmpc eq, _L115e85fc_215
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-4)
	ld r0, 32767
	st r0, (bp+-6)
	ld r0, 0
	st r0, (bp+-2)
_L115e85fc_216:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_218
	ld r0, 0
	jmp _L115e85fc_219
_L115e85fc_218:
	ld r0, 1
_L115e85fc_219:
	cmp r0, 0
	jmpc eq, _L115e85fc_217
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
	jmpc eq, _L115e85fc_220
	ld r0, 0
	jmp _L115e85fc_221
_L115e85fc_220:
	ld r0, 1
_L115e85fc_221:
	cmp r0, 0
	jmpc eq, _L115e85fc_222
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+8)
	push r0
	ld r0, (bp+-6)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_223
	ld r0, 0
	jmp _L115e85fc_224
_L115e85fc_223:
	ld r0, 1
_L115e85fc_224:
	cmp r0, 0
	jmpc eq, _L115e85fc_225
	ld r0, _g_tab_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 68
	pop r1
	add r1, r0
	ld r0, (r1+8)
	st r0, (bp+-6)
	ld r0, (bp+-2)
	st r0, (bp+-4)
_L115e85fc_225:
_L115e85fc_222:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L115e85fc_216
_L115e85fc_217:
	ld r0, (bp+-4)
	ld sp, bp
	pop bp
	ret
_L115e85fc_215:
_L115e85fc_212:
_L115e85fc_197:
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
_L115e85fc_230:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_232
	ld r0, 0
	jmp _L115e85fc_233
_L115e85fc_232:
	ld r0, 1
_L115e85fc_233:
	cmp r0, 0
	jmpc eq, _L115e85fc_231
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
	jmp _L115e85fc_230
_L115e85fc_231:
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
_L115e85fc_238:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_240
	ld r0, 0
	jmp _L115e85fc_241
_L115e85fc_240:
	ld r0, 1
_L115e85fc_241:
	cmp r0, 0
	jmpc eq, _L115e85fc_239
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
	jmp _L115e85fc_238
_L115e85fc_239:
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
	jmpc ge, _L115e85fc_245
	ld r0, 0
	jmp _L115e85fc_246
_L115e85fc_245:
	ld r0, 1
_L115e85fc_246:
	cmp r0, 0
	jmpc eq, _L115e85fc_247
	ld r0, (bp+4)
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_so_restaura_quadro
	add sp, 4
_L115e85fc_247:
	ld sp, bp
	pop bp
	ret
_f_so_trata_pendencias:
	push bp
	ld bp, sp
	sub sp, 6
_L115e85fc_266:
	call _f_bios_console_disponivel
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L115e85fc_268
	ld r0, 0
	jmp _L115e85fc_269
_L115e85fc_268:
	ld r0, 1
_L115e85fc_269:
	cmp r0, 0
	jmpc eq, _L115e85fc_267
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-4)
	ld r0, 0
	st r0, (bp+-2)
_L115e85fc_270:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_272
	ld r0, 0
	jmp _L115e85fc_273
_L115e85fc_272:
	ld r0, 1
_L115e85fc_273:
	cmp r0, 0
	jmpc eq, _L115e85fc_271
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
	jmpc eq, _L115e85fc_274
	ld r0, 0
	jmp _L115e85fc_275
_L115e85fc_274:
	ld r0, 1
_L115e85fc_275:
	cmp r0, 0
	jmpc eq, _L115e85fc_276
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
	jmpc eq, _L115e85fc_277
	ld r0, 0
	jmp _L115e85fc_278
_L115e85fc_277:
	ld r0, 1
_L115e85fc_278:
	cmp r0, 0
	jmpc eq, _L115e85fc_279
	ld r0, (bp+-2)
	st r0, (bp+-4)
	jmp _L115e85fc_271
_L115e85fc_279:
_L115e85fc_276:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L115e85fc_270
_L115e85fc_271:
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L115e85fc_280
	ld r0, 0
	jmp _L115e85fc_281
_L115e85fc_280:
	ld r0, 1
_L115e85fc_281:
	cmp r0, 0
	jmpc eq, _L115e85fc_282
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
	jmp _L115e85fc_283
_L115e85fc_282:
	jmp _L115e85fc_267
_L115e85fc_283:
	jmp _L115e85fc_266
_L115e85fc_267:
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
	jmpc eq, _L115e85fc_306
	ld r0, 0
	jmp _L115e85fc_307
_L115e85fc_306:
	ld r0, 1
_L115e85fc_307:
	cmp r0, 0
	jmpc eq, _L115e85fc_308
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
	jmpc ne, _L115e85fc_309
	ld r0, 0
	jmp _L115e85fc_310
_L115e85fc_309:
	ld r0, 1
_L115e85fc_310:
	cmp r0, 0
	jmpc eq, _L115e85fc_311
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
_L115e85fc_311:
	ld sp, bp
	pop bp
	ret
_L115e85fc_308:
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
	jmpc eq, _L115e85fc_312
	ld r0, 0
	jmp _L115e85fc_313
_L115e85fc_312:
	ld r0, 1
_L115e85fc_313:
	cmp r0, 0
	jmpc eq, _L115e85fc_314
	ld sp, bp
	pop bp
	ret
_L115e85fc_314:
	ld r0, (_g_quantum_restante)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc le, _L115e85fc_315
	ld r0, 0
	jmp _L115e85fc_316
_L115e85fc_315:
	ld r0, 1
_L115e85fc_316:
	cmp r0, 0
	jmpc eq, _L115e85fc_317
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_318
	ld r0, 0
	jmp _L115e85fc_319
_L115e85fc_318:
	ld r0, 1
_L115e85fc_319:
	cmp r0, 0
	jmpc eq, _L115e85fc_320
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
	jmpc gt, _L115e85fc_321
	ld r0, 0
	jmp _L115e85fc_322
_L115e85fc_321:
	ld r0, 1
_L115e85fc_322:
	cmp r0, 0
	jmpc eq, _L115e85fc_323
	ld r0, (_g_quantum_config)
	st r0, (bp+-6)
_L115e85fc_323:
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
_L115e85fc_320:
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
	jmpc eq, _L115e85fc_324
	ld r0, 0
	jmp _L115e85fc_325
_L115e85fc_324:
	ld r0, 1
_L115e85fc_325:
	cmp r0, 0
	jmpc eq, _L115e85fc_326
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (_g_processo_atual)
	jmp _L115e85fc_327
_L115e85fc_326:
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
_L115e85fc_327:
_L115e85fc_317:
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
	jmpc eq, _L115e85fc_451
	ld r0, 0
	jmp _L115e85fc_452
_L115e85fc_451:
	ld r0, 1
_L115e85fc_452:
	cmp r0, 0
	jmpc eq, _L115e85fc_453
	call _f_bios_console_disponivel
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L115e85fc_454
	ld r0, 0
	jmp _L115e85fc_455
_L115e85fc_454:
	ld r0, 1
_L115e85fc_455:
	cmp r0, 0
	jmpc eq, _L115e85fc_456
	call _f_bios_console_le
	st r0, (bp+-16)
	ld r0, (bp+-16)
	ld sp, bp
	pop bp
	ret
_L115e85fc_456:
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
	jmpc eq, _L115e85fc_457
	ld r0, 0
	jmp _L115e85fc_458
_L115e85fc_457:
	ld r0, 1
_L115e85fc_458:
	cmp r0, 0
	jmpc eq, _L115e85fc_459
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
	jmpc lt, _L115e85fc_460
	ld r0, 0
	jmp _L115e85fc_461
_L115e85fc_460:
	ld r0, 1
_L115e85fc_461:
	cmp r0, 0
	jmpc eq, _L115e85fc_462
	ld r0, 0
	st r0, (bp+-12)
_L115e85fc_462:
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
_L115e85fc_459:
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
	jmpc eq, _L115e85fc_463
	ld r0, 0
	jmp _L115e85fc_464
_L115e85fc_463:
	ld r0, 1
_L115e85fc_464:
	cmp r0, 0
	jmpc eq, _L115e85fc_465
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (_g_processo_atual)
	jmp _L115e85fc_466
_L115e85fc_465:
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
_L115e85fc_466:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L115e85fc_453:
	ld r0, (bp+6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_467
	ld r0, 0
	jmp _L115e85fc_468
_L115e85fc_467:
	ld r0, 1
_L115e85fc_468:
	cmp r0, 0
	jmpc eq, _L115e85fc_469
	ld r0, (bp+8)
	push r0
	call _f_so_escreve_caractere
	add sp, 2
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_L115e85fc_469:
	ld r0, (bp+6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_470
	ld r0, 0
	jmp _L115e85fc_471
_L115e85fc_470:
	ld r0, 1
_L115e85fc_471:
	cmp r0, 0
	jmpc eq, _L115e85fc_472
	ld r0, (bp+8)
	push r0
	call _f_so_cria_proc_interno
	add sp, 2
	ld sp, bp
	pop bp
	ret
_L115e85fc_472:
	ld r0, (bp+6)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_473
	ld r0, 0
	jmp _L115e85fc_474
_L115e85fc_473:
	ld r0, 1
_L115e85fc_474:
	cmp r0, 0
	jmpc eq, _L115e85fc_475
	ld r0, (bp+8)
	st r0, (bp+-8)
	ld r0, (bp+-8)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_478
	ld r0, 0
	jmp _L115e85fc_479
_L115e85fc_478:
	ld r0, 1
_L115e85fc_479:
	cmp r0, 0
	jmpc ne, _L115e85fc_477
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
	jmpc eq, _L115e85fc_480
	ld r0, 0
	jmp _L115e85fc_481
_L115e85fc_480:
	ld r0, 1
_L115e85fc_481:
	cmp r0, 0
	jmpc ne, _L115e85fc_477
	ld r0, 0
	jmp _L115e85fc_476
_L115e85fc_477:
	ld r0, 1
_L115e85fc_476:
	cmp r0, 0
	jmpc eq, _L115e85fc_482
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
_L115e85fc_483:
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_485
	ld r0, 0
	jmp _L115e85fc_486
_L115e85fc_485:
	ld r0, 1
_L115e85fc_486:
	cmp r0, 0
	jmpc eq, _L115e85fc_484
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
	jmpc eq, _L115e85fc_487
	ld r0, 0
	jmp _L115e85fc_488
_L115e85fc_487:
	ld r0, 1
_L115e85fc_488:
	cmp r0, 0
	jmpc eq, _L115e85fc_489
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
	jmpc eq, _L115e85fc_492
	ld r0, 0
	jmp _L115e85fc_493
_L115e85fc_492:
	ld r0, 1
_L115e85fc_493:
	cmp r0, 0
	jmpc eq, _L115e85fc_491
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
	jmpc eq, _L115e85fc_494
	ld r0, 0
	jmp _L115e85fc_495
_L115e85fc_494:
	ld r0, 1
_L115e85fc_495:
	cmp r0, 0
	jmpc eq, _L115e85fc_491
	ld r0, 1
	jmp _L115e85fc_490
_L115e85fc_491:
	ld r0, 0
_L115e85fc_490:
	cmp r0, 0
	jmpc eq, _L115e85fc_496
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
_L115e85fc_496:
_L115e85fc_489:
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-6)
	jmp _L115e85fc_483
_L115e85fc_484:
	ld r0, (bp+-8)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_497
	ld r0, 0
	jmp _L115e85fc_498
_L115e85fc_497:
	ld r0, 1
_L115e85fc_498:
	cmp r0, 0
	jmpc eq, _L115e85fc_499
	call _f_so_imprime_relatorio
	call _f_so_halt
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_L115e85fc_499:
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
	jmpc eq, _L115e85fc_500
	ld r0, 0
	jmp _L115e85fc_501
_L115e85fc_500:
	ld r0, 1
_L115e85fc_501:
	cmp r0, 0
	jmpc eq, _L115e85fc_502
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (_g_processo_atual)
	jmp _L115e85fc_503
_L115e85fc_502:
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
_L115e85fc_503:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L115e85fc_482:
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-10)
	ld r0, 0
	st r0, (bp+-6)
_L115e85fc_504:
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_506
	ld r0, 0
	jmp _L115e85fc_507
_L115e85fc_506:
	ld r0, 1
_L115e85fc_507:
	cmp r0, 0
	jmpc eq, _L115e85fc_505
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
	jmpc eq, _L115e85fc_512
	ld r0, 0
	jmp _L115e85fc_513
_L115e85fc_512:
	ld r0, 1
_L115e85fc_513:
	cmp r0, 0
	jmpc eq, _L115e85fc_511
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
	jmpc ne, _L115e85fc_514
	ld r0, 0
	jmp _L115e85fc_515
_L115e85fc_514:
	ld r0, 1
_L115e85fc_515:
	cmp r0, 0
	jmpc eq, _L115e85fc_511
	ld r0, 1
	jmp _L115e85fc_510
_L115e85fc_511:
	ld r0, 0
_L115e85fc_510:
	cmp r0, 0
	jmpc eq, _L115e85fc_509
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
	jmpc ne, _L115e85fc_516
	ld r0, 0
	jmp _L115e85fc_517
_L115e85fc_516:
	ld r0, 1
_L115e85fc_517:
	cmp r0, 0
	jmpc eq, _L115e85fc_509
	ld r0, 1
	jmp _L115e85fc_508
_L115e85fc_509:
	ld r0, 0
_L115e85fc_508:
	cmp r0, 0
	jmpc eq, _L115e85fc_518
	ld r0, (bp+-6)
	st r0, (bp+-10)
	jmp _L115e85fc_505
_L115e85fc_518:
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-6)
	jmp _L115e85fc_504
_L115e85fc_505:
	ld r0, (bp+-10)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_519
	ld r0, 0
	jmp _L115e85fc_520
_L115e85fc_519:
	ld r0, 1
_L115e85fc_520:
	cmp r0, 0
	jmpc eq, _L115e85fc_521
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L115e85fc_521:
	ld r0, 4
	push r0
	ld r0, (bp+-10)
	push r0
	call _f_so_muda_estado
	add sp, 4
	ld r0, 0
	st r0, (bp+-6)
_L115e85fc_522:
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_524
	ld r0, 0
	jmp _L115e85fc_525
_L115e85fc_524:
	ld r0, 1
_L115e85fc_525:
	cmp r0, 0
	jmpc eq, _L115e85fc_523
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
	jmpc eq, _L115e85fc_526
	ld r0, 0
	jmp _L115e85fc_527
_L115e85fc_526:
	ld r0, 1
_L115e85fc_527:
	cmp r0, 0
	jmpc eq, _L115e85fc_528
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
	jmpc eq, _L115e85fc_531
	ld r0, 0
	jmp _L115e85fc_532
_L115e85fc_531:
	ld r0, 1
_L115e85fc_532:
	cmp r0, 0
	jmpc eq, _L115e85fc_530
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
	jmpc eq, _L115e85fc_533
	ld r0, 0
	jmp _L115e85fc_534
_L115e85fc_533:
	ld r0, 1
_L115e85fc_534:
	cmp r0, 0
	jmpc eq, _L115e85fc_530
	ld r0, 1
	jmp _L115e85fc_529
_L115e85fc_530:
	ld r0, 0
_L115e85fc_529:
	cmp r0, 0
	jmpc eq, _L115e85fc_535
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
_L115e85fc_535:
_L115e85fc_528:
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-6)
	jmp _L115e85fc_522
_L115e85fc_523:
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_L115e85fc_475:
	ld r0, (bp+6)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_536
	ld r0, 0
	jmp _L115e85fc_537
_L115e85fc_536:
	ld r0, 1
_L115e85fc_537:
	cmp r0, 0
	jmpc eq, _L115e85fc_538
	ld r0, (bp+8)
	st r0, (bp+-8)
	ld r0, (bp+-8)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc le, _L115e85fc_541
	ld r0, 0
	jmp _L115e85fc_542
_L115e85fc_541:
	ld r0, 1
_L115e85fc_542:
	cmp r0, 0
	jmpc ne, _L115e85fc_540
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
	jmpc eq, _L115e85fc_543
	ld r0, 0
	jmp _L115e85fc_544
_L115e85fc_543:
	ld r0, 1
_L115e85fc_544:
	cmp r0, 0
	jmpc ne, _L115e85fc_540
	ld r0, 0
	jmp _L115e85fc_539
_L115e85fc_540:
	ld r0, 1
_L115e85fc_539:
	cmp r0, 0
	jmpc eq, _L115e85fc_545
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L115e85fc_545:
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-10)
	ld r0, 0
	st r0, (bp+-6)
_L115e85fc_546:
	ld r0, (bp+-6)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_548
	ld r0, 0
	jmp _L115e85fc_549
_L115e85fc_548:
	ld r0, 1
_L115e85fc_549:
	cmp r0, 0
	jmpc eq, _L115e85fc_547
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
	jmpc eq, _L115e85fc_554
	ld r0, 0
	jmp _L115e85fc_555
_L115e85fc_554:
	ld r0, 1
_L115e85fc_555:
	cmp r0, 0
	jmpc eq, _L115e85fc_553
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
	jmpc ne, _L115e85fc_556
	ld r0, 0
	jmp _L115e85fc_557
_L115e85fc_556:
	ld r0, 1
_L115e85fc_557:
	cmp r0, 0
	jmpc eq, _L115e85fc_553
	ld r0, 1
	jmp _L115e85fc_552
_L115e85fc_553:
	ld r0, 0
_L115e85fc_552:
	cmp r0, 0
	jmpc eq, _L115e85fc_551
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
	jmpc ne, _L115e85fc_558
	ld r0, 0
	jmp _L115e85fc_559
_L115e85fc_558:
	ld r0, 1
_L115e85fc_559:
	cmp r0, 0
	jmpc eq, _L115e85fc_551
	ld r0, 1
	jmp _L115e85fc_550
_L115e85fc_551:
	ld r0, 0
_L115e85fc_550:
	cmp r0, 0
	jmpc eq, _L115e85fc_560
	ld r0, (bp+-6)
	st r0, (bp+-10)
	jmp _L115e85fc_547
_L115e85fc_560:
	ld r0, (bp+-6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-6)
	jmp _L115e85fc_546
_L115e85fc_547:
	ld r0, (bp+-10)
	push r0
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_561
	ld r0, 0
	jmp _L115e85fc_562
_L115e85fc_561:
	ld r0, 1
_L115e85fc_562:
	cmp r0, 0
	jmpc eq, _L115e85fc_563
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L115e85fc_563:
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
	jmpc eq, _L115e85fc_564
	ld r0, 0
	jmp _L115e85fc_565
_L115e85fc_564:
	ld r0, 1
_L115e85fc_565:
	cmp r0, 0
	jmpc eq, _L115e85fc_566
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
	jmpc lt, _L115e85fc_567
	ld r0, 0
	jmp _L115e85fc_568
_L115e85fc_567:
	ld r0, 1
_L115e85fc_568:
	cmp r0, 0
	jmpc eq, _L115e85fc_569
	ld r0, 0
	st r0, (bp+-12)
_L115e85fc_569:
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
_L115e85fc_566:
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
	jmpc eq, _L115e85fc_570
	ld r0, 0
	jmp _L115e85fc_571
_L115e85fc_570:
	ld r0, 1
_L115e85fc_571:
	cmp r0, 0
	jmpc eq, _L115e85fc_572
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (_g_processo_atual)
	jmp _L115e85fc_573
_L115e85fc_572:
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
_L115e85fc_573:
	ld r0, 9999
	ld sp, bp
	pop bp
	ret
_L115e85fc_538:
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
_L115e85fc_582:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_584
	ld r0, 0
	jmp _L115e85fc_585
_L115e85fc_584:
	ld r0, 1
_L115e85fc_585:
	cmp r0, 0
	jmpc eq, _L115e85fc_583
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
	jmp _L115e85fc_582
_L115e85fc_583:
	ld r0, 0
	st r0, (bp+-2)
_L115e85fc_586:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_588
	ld r0, 0
	jmp _L115e85fc_589
_L115e85fc_588:
	ld r0, 1
_L115e85fc_589:
	cmp r0, 0
	jmpc eq, _L115e85fc_587
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
	jmp _L115e85fc_586
_L115e85fc_587:
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
_f_so_print_str:
	push bp
	ld bp, sp
_L115e85fc_594:
	ld r0, (bp+4)
	ld r1, r0
	ldb r0, (r1)
	and r0, 255
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L115e85fc_596
	ld r0, 0
	jmp _L115e85fc_597
_L115e85fc_596:
	ld r0, 1
_L115e85fc_597:
	cmp r0, 0
	jmpc eq, _L115e85fc_595
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
	jmp _L115e85fc_594
_L115e85fc_595:
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
_f_so_linha_igual:
	push bp
	ld bp, sp
	ld r0, _str115e85fc_1
	push r0
	call _f_so_puts
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_so_linha_traco:
	push bp
	ld bp, sp
	ld r0, _str115e85fc_3
	push r0
	call _f_so_puts
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
	jmpc lt, _L115e85fc_613
	ld r0, 0
	jmp _L115e85fc_614
_L115e85fc_613:
	ld r0, 1
_L115e85fc_614:
	cmp r0, 0
	jmpc eq, _L115e85fc_615
	ld r0, 1
	st r0, (bp+-12)
	ld r0, (bp+4)
	xor r0, -1
	add r0, 1
	st r0, (bp+4)
_L115e85fc_615:
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_616
	ld r0, 0
	jmp _L115e85fc_617
_L115e85fc_616:
	ld r0, 1
_L115e85fc_617:
	cmp r0, 0
	jmpc eq, _L115e85fc_618
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
_L115e85fc_618:
_L115e85fc_619:
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L115e85fc_621
	ld r0, 0
	jmp _L115e85fc_622
_L115e85fc_621:
	ld r0, 1
_L115e85fc_622:
	cmp r0, 0
	jmpc eq, _L115e85fc_620
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
	jmp _L115e85fc_619
_L115e85fc_620:
	ld r0, (bp+-12)
	cmp r0, 0
	jmpc eq, _L115e85fc_623
	ld r0, 45
	push r0
	call _f_so_escreve_caractere
	add sp, 2
_L115e85fc_623:
_L115e85fc_624:
	ld r0, (bp+-10)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L115e85fc_626
	ld r0, 0
	jmp _L115e85fc_627
_L115e85fc_626:
	ld r0, 1
_L115e85fc_627:
	cmp r0, 0
	jmpc eq, _L115e85fc_625
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
	jmp _L115e85fc_624
_L115e85fc_625:
	ld sp, bp
	pop bp
	ret
_f_so_print_campo:
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
	jmpc le, _L115e85fc_642
	ld r0, 0
	jmp _L115e85fc_643
_L115e85fc_642:
	ld r0, 1
_L115e85fc_643:
	cmp r0, 0
	jmpc eq, _L115e85fc_644
	ld r0, 1
	st r0, (bp+-4)
	ld r0, (bp+-2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_645
	ld r0, 0
	jmp _L115e85fc_646
_L115e85fc_645:
	ld r0, 1
_L115e85fc_646:
	cmp r0, 0
	jmpc eq, _L115e85fc_647
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
_L115e85fc_647:
_L115e85fc_644:
_L115e85fc_648:
	ld r0, (bp+-2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L115e85fc_650
	ld r0, 0
	jmp _L115e85fc_651
_L115e85fc_650:
	ld r0, 1
_L115e85fc_651:
	cmp r0, 0
	jmpc eq, _L115e85fc_649
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
	jmp _L115e85fc_648
_L115e85fc_649:
	ld r0, (bp+6)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-6)
_L115e85fc_652:
	ld r0, (bp+-6)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L115e85fc_654
	ld r0, 0
	jmp _L115e85fc_655
_L115e85fc_654:
	ld r0, 1
_L115e85fc_655:
	cmp r0, 0
	jmpc eq, _L115e85fc_653
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
	jmp _L115e85fc_652
_L115e85fc_653:
	ld r0, (bp+4)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_so_imprime_relatorio:
	push bp
	ld bp, sp
	sub sp, 8
	call _f_so_nova_linha
	call _f_so_linha_igual
	ld r0, _str115e85fc_37
	push r0
	call _f_so_puts
	add sp, 2
	call _f_so_linha_igual
	ld r0, _str115e85fc_38
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_680
	ld r0, 0
	jmp _L115e85fc_681
_L115e85fc_680:
	ld r0, 1
_L115e85fc_681:
	cmp r0, 0
	jmpc eq, _L115e85fc_682
	ld r0, _str115e85fc_39
	push r0
	call _f_so_puts
	add sp, 2
	jmp _L115e85fc_683
_L115e85fc_682:
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_684
	ld r0, 0
	jmp _L115e85fc_685
_L115e85fc_684:
	ld r0, 1
_L115e85fc_685:
	cmp r0, 0
	jmpc eq, _L115e85fc_686
	ld r0, _str115e85fc_40
	push r0
	call _f_so_puts
	add sp, 2
	jmp _L115e85fc_687
_L115e85fc_686:
	ld r0, (_g_escalonador_tipo)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L115e85fc_688
	ld r0, 0
	jmp _L115e85fc_689
_L115e85fc_688:
	ld r0, 1
_L115e85fc_689:
	cmp r0, 0
	jmpc eq, _L115e85fc_690
	ld r0, _str115e85fc_41
	push r0
	call _f_so_puts
	add sp, 2
_L115e85fc_690:
_L115e85fc_687:
_L115e85fc_683:
	ld r0, _str115e85fc_42
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_quantum_config)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str115e85fc_43
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_quantum_config)
	push r0
	ld r0, 1000
	ld r1, r0
	pop r0
	mul r0, r1
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str115e85fc_44
	push r0
	call _f_so_puts
	add sp, 2
	call _f_so_linha_traco
	ld r0, _str115e85fc_45
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str115e85fc_46
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _str115e85fc_47
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+2)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str115e85fc_48
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+2)
	push r0
	ld r0, 1000
	ld r1, r0
	pop r0
	mul r0, r1
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str115e85fc_49
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str115e85fc_50
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+4)
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str115e85fc_51
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+4)
	push r0
	ld r0, 1000
	ld r1, r0
	pop r0
	mul r0, r1
	push r0
	call _f_so_print_dec
	add sp, 2
	ld r0, _str115e85fc_52
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str115e85fc_53
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, (_g_metricas+6)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	call _f_so_linha_traco
	ld r0, _str115e85fc_54
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str115e85fc_55
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _g_metricas+8
	push r0
	ld r0, 0
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_so_print_dec
	add sp, 2
	call _f_so_nova_linha
	ld r0, _str115e85fc_56
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _g_metricas+8
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
	ld r0, _str115e85fc_57
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _g_metricas+8
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
	ld r0, _str115e85fc_58
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _g_metricas+8
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
	call _f_so_linha_traco
	ld r0, _str115e85fc_59
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str115e85fc_60
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _str115e85fc_61
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, _str115e85fc_62
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, _str115e85fc_63
	push r0
	call _f_so_puts
	add sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L115e85fc_691:
	ld r0, (bp+-2)
	push r0
	ld r0, 8
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L115e85fc_693
	ld r0, 0
	jmp _L115e85fc_694
_L115e85fc_693:
	ld r0, 1
_L115e85fc_694:
	cmp r0, 0
	jmpc eq, _L115e85fc_692
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
	jmpc gt, _L115e85fc_695
	ld r0, 0
	jmp _L115e85fc_696
_L115e85fc_695:
	ld r0, 1
_L115e85fc_696:
	cmp r0, 0
	jmpc eq, _L115e85fc_697
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
	jmpc lt, _L115e85fc_698
	ld r0, 0
	jmp _L115e85fc_699
_L115e85fc_698:
	ld r0, 1
_L115e85fc_699:
	cmp r0, 0
	jmpc eq, _L115e85fc_700
	ld r0, (_g_tempo_sistema)
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+42)
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-6)
_L115e85fc_700:
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
	jmpc gt, _L115e85fc_701
	ld r0, 0
	jmp _L115e85fc_702
_L115e85fc_701:
	ld r0, 1
_L115e85fc_702:
	cmp r0, 0
	jmpc eq, _L115e85fc_703
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
_L115e85fc_703:
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
	call _f_so_print_campo
	add sp, 4
	ld r0, _str115e85fc_64
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 7
	push r0
	ld r0, (bp+-6)
	push r0
	call _f_so_print_campo
	add sp, 4
	ld r0, _str115e85fc_65
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 6
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+46)
	push r0
	call _f_so_print_campo
	add sp, 4
	ld r0, _str115e85fc_66
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 4
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+48)
	push r0
	call _f_so_print_campo
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
	call _f_so_print_campo
	add sp, 4
	ld r0, _str115e85fc_67
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 3
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+50)
	push r0
	call _f_so_print_campo
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
	call _f_so_print_campo
	add sp, 4
	ld r0, _str115e85fc_68
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 3
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	ld r0, (r1+52)
	push r0
	call _f_so_print_campo
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
	call _f_so_print_campo
	add sp, 4
	ld r0, _str115e85fc_69
	push r0
	call _f_so_print_str
	add sp, 2
	ld r0, 7
	push r0
	ld r0, (bp+-8)
	push r0
	call _f_so_print_campo
	add sp, 4
	call _f_so_nova_linha
_L115e85fc_697:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L115e85fc_691
_L115e85fc_692:
	call _f_so_linha_igual
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
_str115e85fc_0:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_str115e85fc_1:
	.db 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 0
_str115e85fc_2:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str115e85fc_3:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str115e85fc_4:
	.db 32, 32, 82, 69, 76, 65, 84, 79, 82, 73, 79, 32, 68, 69, 32, 69, 88, 69, 67, 85, 67, 65, 79, 32, 68, 79, 32, 83, 79, 0
_str115e85fc_5:
	.db 69, 115, 99, 97, 108, 111, 110, 97, 100, 111, 114, 58, 32, 0
_str115e85fc_6:
	.db 83, 73, 77, 80, 76, 69, 83, 32, 40, 67, 111, 111, 112, 101, 114, 97, 116, 105, 118, 111, 41, 0
_str115e85fc_7:
	.db 67, 73, 82, 67, 85, 76, 65, 82, 32, 40, 82, 111, 117, 110, 100, 45, 82, 111, 98, 105, 110, 41, 0
_str115e85fc_8:
	.db 80, 82, 73, 79, 82, 73, 68, 65, 68, 69, 32, 68, 73, 78, 65, 77, 73, 67, 65, 0
_str115e85fc_9:
	.db 81, 117, 97, 110, 116, 117, 109, 58, 32, 0
_str115e85fc_10:
	.db 32, 116, 105, 113, 117, 101, 115, 32, 40, 0
_str115e85fc_11:
	.db 32, 105, 110, 115, 116, 41, 0
_str115e85fc_12:
	.db 77, 69, 84, 82, 73, 67, 65, 83, 32, 71, 69, 82, 65, 73, 83, 32, 68, 79, 32, 83, 73, 83, 84, 69, 77, 65, 58, 0
_str115e85fc_13:
	.db 32, 32, 84, 111, 116, 97, 108, 32, 112, 114, 111, 99, 32, 99, 114, 105, 97, 100, 111, 115, 58, 32, 0
_str115e85fc_14:
	.db 32, 32, 84, 101, 109, 112, 111, 32, 116, 111, 116, 97, 108, 32, 101, 120, 101, 99, 58, 32, 32, 32, 0
_str115e85fc_15:
	.db 32, 116, 105, 113, 117, 101, 115, 32, 40, 126, 0
_str115e85fc_16:
	.db 32, 105, 110, 115, 116, 41, 0
_str115e85fc_17:
	.db 32, 32, 84, 101, 109, 112, 111, 32, 111, 99, 105, 111, 115, 111, 58, 32, 32, 32, 32, 32, 32, 32, 0
_str115e85fc_18:
	.db 32, 116, 105, 113, 117, 101, 115, 32, 40, 126, 0
_str115e85fc_19:
	.db 32, 105, 110, 115, 116, 41, 0
_str115e85fc_20:
	.db 32, 32, 84, 111, 116, 97, 108, 32, 112, 114, 101, 101, 109, 112, 99, 111, 101, 115, 58, 32, 32, 32, 0
_str115e85fc_21:
	.db 73, 78, 84, 69, 82, 82, 85, 80, 67, 79, 69, 83, 32, 82, 69, 67, 69, 66, 73, 68, 65, 83, 58, 0
_str115e85fc_22:
	.db 32, 32, 91, 48, 93, 32, 32, 66, 111, 111, 116, 58, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0
_str115e85fc_23:
	.db 32, 32, 91, 55, 93, 32, 32, 83, 121, 115, 99, 97, 108, 108, 115, 58, 32, 32, 32, 32, 32, 0
_str115e85fc_24:
	.db 32, 32, 91, 56, 93, 32, 32, 67, 111, 110, 115, 111, 108, 101, 58, 32, 32, 32, 32, 32, 32, 0
_str115e85fc_25:
	.db 32, 32, 91, 49, 48, 93, 32, 82, 101, 108, 111, 103, 105, 111, 58, 32, 32, 32, 32, 32, 32, 0
_str115e85fc_26:
	.db 77, 69, 84, 82, 73, 67, 65, 83, 32, 80, 79, 82, 32, 80, 82, 79, 67, 69, 83, 83, 79, 58, 0
_str115e85fc_27:
	.db 80, 73, 68, 32, 124, 32, 82, 101, 116, 111, 114, 110, 111, 32, 124, 32, 80, 114, 101, 101, 109, 112, 32, 124, 32, 80, 114, 111, 110, 116, 111, 40, 118, 47, 116, 41, 32, 124, 32, 0
_str115e85fc_28:
	.db 66, 108, 111, 113, 40, 118, 47, 116, 41, 32, 124, 32, 69, 120, 101, 99, 40, 118, 47, 116, 41, 32, 124, 32, 82, 101, 115, 112, 46, 77, 101, 100, 0
_str115e85fc_29:
	.db 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 0
_str115e85fc_30:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str115e85fc_31:
	.db 32, 124, 32, 0
_str115e85fc_32:
	.db 32, 124, 32, 0
_str115e85fc_33:
	.db 32, 124, 32, 0
_str115e85fc_34:
	.db 32, 124, 32, 0
_str115e85fc_35:
	.db 32, 124, 32, 0
_str115e85fc_36:
	.db 32, 124, 32, 0
_str115e85fc_37:
	.db 32, 32, 82, 69, 76, 65, 84, 79, 82, 73, 79, 32, 68, 69, 32, 69, 88, 69, 67, 85, 67, 65, 79, 32, 68, 79, 32, 83, 79, 0
_str115e85fc_38:
	.db 69, 115, 99, 97, 108, 111, 110, 97, 100, 111, 114, 58, 32, 0
_str115e85fc_39:
	.db 83, 73, 77, 80, 76, 69, 83, 32, 40, 67, 111, 111, 112, 101, 114, 97, 116, 105, 118, 111, 41, 0
_str115e85fc_40:
	.db 67, 73, 82, 67, 85, 76, 65, 82, 32, 40, 82, 111, 117, 110, 100, 45, 82, 111, 98, 105, 110, 41, 0
_str115e85fc_41:
	.db 80, 82, 73, 79, 82, 73, 68, 65, 68, 69, 32, 68, 73, 78, 65, 77, 73, 67, 65, 0
_str115e85fc_42:
	.db 81, 117, 97, 110, 116, 117, 109, 58, 32, 0
_str115e85fc_43:
	.db 32, 116, 105, 113, 117, 101, 115, 32, 40, 0
_str115e85fc_44:
	.db 32, 105, 110, 115, 116, 41, 0
_str115e85fc_45:
	.db 77, 69, 84, 82, 73, 67, 65, 83, 32, 71, 69, 82, 65, 73, 83, 32, 68, 79, 32, 83, 73, 83, 84, 69, 77, 65, 58, 0
_str115e85fc_46:
	.db 32, 32, 84, 111, 116, 97, 108, 32, 112, 114, 111, 99, 32, 99, 114, 105, 97, 100, 111, 115, 58, 32, 0
_str115e85fc_47:
	.db 32, 32, 84, 101, 109, 112, 111, 32, 116, 111, 116, 97, 108, 32, 101, 120, 101, 99, 58, 32, 32, 32, 0
_str115e85fc_48:
	.db 32, 116, 105, 113, 117, 101, 115, 32, 40, 126, 0
_str115e85fc_49:
	.db 32, 105, 110, 115, 116, 41, 0
_str115e85fc_50:
	.db 32, 32, 84, 101, 109, 112, 111, 32, 111, 99, 105, 111, 115, 111, 58, 32, 32, 32, 32, 32, 32, 32, 0
_str115e85fc_51:
	.db 32, 116, 105, 113, 117, 101, 115, 32, 40, 126, 0
_str115e85fc_52:
	.db 32, 105, 110, 115, 116, 41, 0
_str115e85fc_53:
	.db 32, 32, 84, 111, 116, 97, 108, 32, 112, 114, 101, 101, 109, 112, 99, 111, 101, 115, 58, 32, 32, 32, 0
_str115e85fc_54:
	.db 73, 78, 84, 69, 82, 82, 85, 80, 67, 79, 69, 83, 32, 82, 69, 67, 69, 66, 73, 68, 65, 83, 58, 0
_str115e85fc_55:
	.db 32, 32, 91, 48, 93, 32, 32, 66, 111, 111, 116, 58, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0
_str115e85fc_56:
	.db 32, 32, 91, 55, 93, 32, 32, 83, 121, 115, 99, 97, 108, 108, 115, 58, 32, 32, 32, 32, 32, 0
_str115e85fc_57:
	.db 32, 32, 91, 56, 93, 32, 32, 67, 111, 110, 115, 111, 108, 101, 58, 32, 32, 32, 32, 32, 32, 0
_str115e85fc_58:
	.db 32, 32, 91, 49, 48, 93, 32, 82, 101, 108, 111, 103, 105, 111, 58, 32, 32, 32, 32, 32, 32, 0
_str115e85fc_59:
	.db 77, 69, 84, 82, 73, 67, 65, 83, 32, 80, 79, 82, 32, 80, 82, 79, 67, 69, 83, 83, 79, 58, 0
_str115e85fc_60:
	.db 80, 73, 68, 32, 124, 32, 82, 101, 116, 111, 114, 110, 111, 32, 124, 32, 80, 114, 101, 101, 109, 112, 32, 124, 32, 80, 114, 111, 110, 116, 111, 40, 118, 47, 116, 41, 32, 124, 32, 0
_str115e85fc_61:
	.db 66, 108, 111, 113, 40, 118, 47, 116, 41, 32, 124, 32, 69, 120, 101, 99, 40, 118, 47, 116, 41, 32, 124, 32, 82, 101, 115, 112, 46, 77, 101, 100, 0
_str115e85fc_62:
	.db 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 0
_str115e85fc_63:
	.db 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 43, 45, 45, 45, 45, 45, 45, 45, 45, 45, 0
_str115e85fc_64:
	.db 32, 124, 32, 0
_str115e85fc_65:
	.db 32, 124, 32, 0
_str115e85fc_66:
	.db 32, 124, 32, 0
_str115e85fc_67:
	.db 32, 124, 32, 0
_str115e85fc_68:
	.db 32, 124, 32, 0
_str115e85fc_69:
	.db 32, 124, 32, 0
