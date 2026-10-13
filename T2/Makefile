CC        = gcc
CFLAGS    = -Wall -O2 -I../mancha-master/simulador_completo/src
MCC       = ../mancha-master/compilador_c/bin/mcc
MONTADOR  = ../mancha-master/simulador_completo/bin/montador
SIMULADOR = ../mancha-master/simulador_completo/bin/simulador
BIOS      = bios.asm

all: so.mob sim_batch

so.asm: so.c so.h
	$(MCC) so.c -o so.asm

programas.asm: programas.c so.h
	$(MCC) programas.c -o programas.asm

so.mob: $(BIOS) ponte.asm so.asm programas.asm
	$(MONTADOR) $(BIOS) ponte.asm so.asm programas.asm -o so.mob

sim_batch: sim_batch_main.c
	$(CC) $(CFLAGS) -o sim_batch \
		../mancha-master/simulador_completo/src/cpu.c \
		../mancha-master/simulador_completo/src/dispositivos.c \
		../mancha-master/simulador_completo/src/instrucao.c \
		../mancha-master/simulador_completo/src/memoria.c \
		../mancha-master/simulador_completo/src/objeto.c \
		sim_batch_main.c

run: so.mob
	$(SIMULADOR) so.mob

batch: so.mob sim_batch
	./sim_batch so.mob 1000000 "X"

report: so.mob sim_batch
	python3 gera_relatorio.py

clean:
	rm -rf so.asm programas.asm so.mob sim_batch *.dSYM

.PHONY: all clean run batch report
