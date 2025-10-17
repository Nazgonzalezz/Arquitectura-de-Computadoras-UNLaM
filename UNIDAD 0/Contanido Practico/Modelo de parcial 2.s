# MODELO DE PARCIAL 2
# calcular promedio
.data
    vector: .word 1,2,3,4,5,6,7,8,9,10
    finvector:
        
.text
    li a7, 1
    la x4, vector
    la x5, finvector
    jal Sumar
    jal Dividir
    addi a0, a4, 0
    ecall
    li a7, 10
    ecall
    nop
    
Sumar:
    li a1, 0
    li a2, 0
    Loop:
        beq x4, x5, ret
        lw a3, 0(x4)
        add a1, a1, a3
        addi a2, a2, 1
        addi x4, x4, 4
        j Loop
            
Dividir:
    addi a0, a1, 0
    li a4, 0
    Loop2:
        blt a0, a2, ret
        sub a0, a0, a2
        addi a4, a4, 1
        j Loop2
    
ret:
    ret

