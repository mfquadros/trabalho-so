; ponte.asm -- Ponte de baixo nivel entre hardware/BIOS e kernel em C (T3)
; Gerencia inicializacao, trampolins de interrupcoes/excecoes e E/S de disco.

        .equ    TICKS_POR_CLOCK = 1000

; ================================================================= Inicialização
;
_kernel_inicio:
        ; 1. Instala o escalonador no vetor do relogio da BIOS
        ld      r0, escalonador_trampolim
        st      r0, (retomada_escalonador)

        ; 2. Instala handlers de chamadas de sistema (tabela_syscalls[1..5])
        ld      r1, syscall_trampolim
        ld      r0, tabela_syscalls
        add     r0, 2                       ; syscall 1: SO_LE
        st      r1, (r0)
        ld      r0, tabela_syscalls
        add     r0, 4                       ; syscall 2: SO_ESCREVE
        st      r1, (r0)
        ld      r0, tabela_syscalls
        add     r0, 6                       ; syscall 3: SO_CRIA_PROC
        st      r1, (r0)
        ld      r0, tabela_syscalls
        add     r0, 8                       ; syscall 4: SO_MATA_PROC
        st      r1, (r0)
        ld      r0, tabela_syscalls
        add     r0, 10                      ; syscall 5: SO_ESPERA_PROC
        st      r1, (r0)

        ; 3. Instala handler proprio de falta de pagina (Interrupcao 5 no vetor: endereco 40)
        ld      r0, meu_handler_pagina_ausente
        st      r0, (40)                    ; quadro 5, campo ip

        ; 4. Instala handler proprio de violacao de protecao (Interrupcao 1 no vetor: endereco 8)
        ld      r0, meu_handler_violacao_protecao
        st      r0, (8)                     ; quadro 1, campo ip

        ; 5. Inicializa o SO em C
        ld      r0, pilha_sistema
        add     r0, -32
        push    r0
        call    _f_so_inicializa
        add     sp, 2

        ; 6. Configura o relogio para disparar a cada TICKS_POR_CLOCK instrucoes
        ld      r0, TICKS_POR_CLOCK
        ld      r1, r0
        shr     r1, 8
        outb    r1, (0x22)                  ; PORTA_RELOGIO_LIM_ALTO
        outb    r0, (0x23)                  ; PORTA_RELOGIO_LIM_BAIXO

        ; 7. Habilita interrupcoes de console (bit 0) e relogio (bit 2) -> 1 | 4 = 5
        ld      r0, 5
        outb    r0, (0x30)                  ; PORTA_CTRL_INTERRUPCOES

        ; 8. Despacho do primeiro processo (Init) via rete
        ld      sp, pilha_sistema
        add     sp, -32
        rete

; ============================================ Handler de Falta de Página (Int 5)
;
; Chamado quando ocorre ausencia de quadro na MMU.
; Contexto de 16 palavras ja empilhado em sp = pilha_sistema - 32.
; (sp + 14) contem o IP virtual que gerou a falta.
meu_handler_pagina_ausente:
        ld      r0, (sp+14)                 ; ip_falta
        push    r0
        ld      r1, sp
        add     r1, 2                       ; compensa o push do r0 para apontar para o quadro
        push    r1
        call    _f_so_trata_pagina_ausente
        add     sp, 4

        cmp     r0, 9999                    ; TROCOU_PROCESSO
        jmpc    eq, _pa_trocou

        ; Falta de pagina atendida com sucesso sob demanda!
        ; Repete a instrucao faltosa imediatamente via rete:
        ld      sp, pilha_sistema
        add     sp, -32
        rete

_pa_trocou:
        ld      r0, (_g_processo_atual)
        cmp     r0, -1
        jmpc    eq, _ponte_vai_idle

        ld      sp, pilha_sistema
        add     sp, -32
        rete

; ============================================ Handler de Proteção de Memória (Int 1)
;
; Chamado em violacao de segmento/protecao (ex: tentativa de escrita em pagina somente leitura).
meu_handler_violacao_protecao:
        ld      r0, (sp+14)                 ; ip_falta
        push    r0
        ld      r1, sp
        add     r1, 2
        push    r1
        call    _f_so_trata_violacao_protecao
        add     sp, 4

        ld      r0, (_g_processo_atual)
        cmp     r0, -1
        jmpc    eq, _ponte_vai_idle

        ld      sp, pilha_sistema
        add     sp, -32
        rete

; ============================================ Trampolim do Relógio (Escalonador)
;
escalonador_trampolim:
        ld      r0, sp
        push    r0
        call    _f_so_tique_relogio
        add     sp, 2

        ld      r0, (_g_processo_atual)
        cmp     r0, -1
        jmpc    eq, _ponte_vai_idle

        ld      sp, pilha_sistema
        add     sp, -32
        rete

_ponte_vai_idle:
        ld      sp, pilha_nucleo
        jmp     _so_idle_loop

; ============================================ Trampolim de Chamadas de Sistema
;
syscall_trampolim:
        ld      r3, pilha_sistema
        add     r3, -32                     ; r3 = &quadro
        push    r2                          ; arg2   -> (bp+10)
        push    r1                          ; arg1   -> (bp+8)
        push    r0                          ; num    -> (bp+6)
        push    r3                          ; quadro -> (bp+4)
        call    _f_so_trata_syscall
        add     sp, 8

        cmp     r0, 9999                    ; TROCOU_PROCESSO
        jmpc    eq, _ponte_sc_trocou
        ret

_ponte_sc_trocou:
        ld      r0, (_g_processo_atual)
        cmp     r0, -1
        jmpc    eq, _ponte_vai_idle

        ld      sp, pilha_sistema
        add     sp, -32
        rete

; =================================================================== Laço Ocioso
;
_so_idle_loop:
        ei
_so_idle_laco:
        call    _f_so_trata_pendencias
        ld      r0, (_g_processo_atual)
        cmp     r0, -1
        jmpc    ne, _so_idle_sai
        jmp     _so_idle_laco

_so_idle_sai:
        ld      r0, pilha_sistema
        add     r0, -32
        push    r0
        call    _f_so_restaura_atual
        add     sp, 2
        ld      sp, pilha_sistema
        add     sp, -32
        rete

; ========================================================= Primitivas de Disco
;
; int so_disco_le_setor(int face, int trilha, int setor, int end_destino)
_f_so_disco_le_setor:
        push    bp
        ld      bp, sp
        ld      r0, (bp+4)                  ; face
        ld      r1, (bp+6)                  ; trilha
        ld      r2, (bp+8)                  ; setor
        ld      r3, (bp+10)                 ; end_destino
        call    bios_disco_le_setor
        call    bios_disco_erro
        ld      sp, bp
        pop     bp
        ret

; int so_disco_escreve_setor(int face, int trilha, int setor, int end_fonte)
_f_so_disco_escreve_setor:
        push    bp
        ld      bp, sp
        ld      r0, (bp+4)                  ; face
        ld      r1, (bp+6)                  ; trilha
        ld      r2, (bp+8)                  ; setor
        ld      r3, (bp+10)                 ; end_fonte
        call    bios_disco_escreve_setor
        call    bios_disco_erro
        ld      sp, bp
        pop     bp
        ret

; ========================================================= Primitivas de Suporte
;
_f_so_escreve_caractere:
        push    bp
        ld      bp, sp
        ld      r0, (bp+4)
        outb    r0, (1)
        ld      sp, bp
        pop     bp
        ret

_f_so_obtem_relogio_cont:
        push    bp
        ld      bp, sp
        inb     r0, (0x20)
        shl     r0, 8
        inb     r1, (0x21)
        and     r1, 255
        or      r0, r1
        ld      sp, bp
        pop     bp
        ret

_f_so_halt:
        halt
        ret

_f_bios_console_disponivel:
        push    bp
        ld      bp, sp
        call    bios_console_disponivel
        ld      sp, bp
        pop     bp
        ret

_f_bios_console_le:
        push    bp
        ld      bp, sp
        call    bios_console_le
        ld      sp, bp
        pop     bp
        ret

_f_so_print_hex:
        push    bp
        ld      bp, sp
        ld      r0, (bp+4)
        call    bios_imprime_hex
        ld      sp, bp
        pop     bp
        ret
