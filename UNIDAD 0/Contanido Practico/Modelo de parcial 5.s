# Ejercicio 3

.data 
    vector: .word 0x11304350,0x24561234,0x45678743,0x22244567,0x00005558
    fin_vector: 

.text
    la a0, vector
    la a1, fin_vector
    jal x1,halfsPares
    li a7,10
    ecall
fin:
    ret

halfsPares:
    addi x4,a0,0  
    while: 
        beq x4,a1,fin
        lh a0,0(x4)
        andi x3,a0,1     
        beq x3,x0,MostrarNum
        addi x4,x4,2
        j while
    
MostrarNum:
    lhu a0,0(x4)
    li a7,34
    ecall
    li a7,11
    li a0,20
    ecall
    addi x4,x4,2
    j while
    
