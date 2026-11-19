.equ pilha = 0x3F0
.org 0
.dw main, pilha, 0, 0

.org 0x80
main:
    ld r0, 255
    out r0, (0x23)   

espera:
    in r0, (2)
    and r0, 2
    cmp r0, 0
    jmpc z, espera

    in r1, (1)         
    in r0, (0x0021)   
    add r0, r1         
    and r0, 7           
    add r0, 48          
    out r0, (1)
    
    halt