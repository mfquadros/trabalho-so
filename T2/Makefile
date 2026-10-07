MCC      = ../mancha-master/compilador_c/bin/mcc
MONTADOR = ../mancha-master/simulador_completo/bin/montador
BIOS     = bios.asm

all: so.mob

so.asm: so.c so.h
	$(MCC) so.c -o so.asm

programas.asm: programas.c so.h
	$(MCC) programas.c -o programas.asm

so.mob: $(BIOS) ponte.asm so.asm programas.asm
	$(MONTADOR) $(BIOS) ponte.asm so.asm programas.asm -o so.mob

clean:
	rm -f so.asm programas.asm so.mob

.PHONY: all clean
