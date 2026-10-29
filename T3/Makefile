CC        = gcc
CFLAGS    = -Wall -O2 -I../mancha-master/simulador_completo/src
MCC       = ../mancha-master/compilador_c/bin/mcc
MONTADOR  = ../mancha-master/simulador_completo/bin/montador
SIMULADOR = ../mancha-master/simulador_completo/bin/simulador
MOB2BIN   = ../mancha-master/simulador_completo/bin/mob2bin
BIOS      = bios.asm

PROGRAMAS_BIN = prog_init.bin prog_comp_a.bin prog_comp_b.bin prog_io.bin prog_multipage.bin prog_protecao.bin

all: disco.img so.mob sim_batch

# -----------------------------------------------------------------------------
# Compilação e Montagem dos Programas de Usuário (Modo Usuário com Paginação)
# -----------------------------------------------------------------------------

prog_init.asm: prog_init.c u_lib.h
	$(MCC) prog_init.c -o prog_init.asm

prog_init.mob: prog_init.asm u_lib.asm
	$(MONTADOR) prog_init.asm u_lib.asm -o $@

prog_init.bin: prog_init.mob
	$(MOB2BIN) $< 1536 $@

prog_comp_a.asm: prog_comp_a.c u_lib.h
	$(MCC) prog_comp_a.c -o prog_comp_a.asm

prog_comp_a.mob: prog_comp_a.asm u_lib.asm
	$(MONTADOR) prog_comp_a.asm u_lib.asm -o $@

prog_comp_a.bin: prog_comp_a.mob
	$(MOB2BIN) $< 512 $@

prog_comp_b.asm: prog_comp_b.c u_lib.h
	$(MCC) prog_comp_b.c -o prog_comp_b.asm

prog_comp_b.mob: prog_comp_b.asm u_lib.asm
	$(MONTADOR) prog_comp_b.asm u_lib.asm -o $@

prog_comp_b.bin: prog_comp_b.mob
	$(MOB2BIN) $< 512 $@

prog_io.asm: prog_io.c u_lib.h
	$(MCC) prog_io.c -o prog_io.asm

prog_io.mob: prog_io.asm u_lib.asm
	$(MONTADOR) prog_io.asm u_lib.asm -o $@

prog_io.bin: prog_io.mob
	$(MOB2BIN) $< 512 $@

prog_multipage.asm: prog_multipage.c u_lib.h
	$(MCC) prog_multipage.c -o prog_multipage.asm

prog_multipage.mob: prog_multipage.asm u_lib.asm
	$(MONTADOR) prog_multipage.asm u_lib.asm -o $@

prog_multipage.bin: prog_multipage.mob
	$(MOB2BIN) $< 1536 $@

prog_protecao.asm: prog_protecao.c u_lib.h
	$(MCC) prog_protecao.c -o prog_protecao.asm

prog_protecao.mob: prog_protecao.asm u_lib.asm
	$(MONTADOR) prog_protecao.asm u_lib.asm -o $@

prog_protecao.bin: prog_protecao.mob
	$(MOB2BIN) $< 512 $@

swap.bin:
	dd if=/dev/zero of=swap.bin bs=512 count=16 2>/dev/null

disco.img: $(PROGRAMAS_BIN) swap.bin
	cat prog_init.bin prog_comp_a.bin prog_comp_b.bin prog_io.bin prog_multipage.bin prog_protecao.bin swap.bin > $@

# -----------------------------------------------------------------------------
# Compilação do Núcleo do Sistema Operacional (Kernel)
# -----------------------------------------------------------------------------

so.asm: so.c so.h
	$(MCC) so.c -o so.asm

so.mob: $(BIOS) ponte.asm so.asm
	$(MONTADOR) $(BIOS) ponte.asm so.asm -o so.mob

# -----------------------------------------------------------------------------
# Runner Headless Nativo
# -----------------------------------------------------------------------------

sim_batch: sim_batch_main.c
	$(CC) $(CFLAGS) -o sim_batch \
		../mancha-master/simulador_completo/src/cpu.c \
		../mancha-master/simulador_completo/src/dispositivos.c \
		../mancha-master/simulador_completo/src/instrucao.c \
		../mancha-master/simulador_completo/src/memoria.c \
		../mancha-master/simulador_completo/src/objeto.c \
		sim_batch_main.c

# -----------------------------------------------------------------------------
# Comandos de Execução e Testes
# -----------------------------------------------------------------------------

run: so.mob disco.img
	$(SIMULADOR) so.mob -D disco.img

batch: so.mob disco.img sim_batch
	./sim_batch so.mob disco.img 15000000 "X"

report: sim_batch
	python3 gera_relatorio.py

clean:
	rm -f so.asm u_print.asm prog_init.asm prog_comp_a.asm prog_comp_b.asm prog_io.asm prog_multipage.asm prog_protecao.asm
	rm -f *.mob *.bin disco.img sim_batch swap.bin
	rm -rf *.dSYM

.PHONY: all clean run batch report
