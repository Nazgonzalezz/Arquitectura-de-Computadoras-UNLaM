# Ejercicio 1 

.data 
    info: .word 0x4f525041,0x4f444142
    fin_info: 

.text
    la a0, info
    la a1, fin_info
    jal imprimir_vector
fin:
    beq x0,x0,fin

imprimir_vector:
    li a7,11
    addi x4,a0,0  
     imprimir_vector2:
        beq x4,a1,fin
        lbu a0,0(x4)
        ecall 
        addi x4,x4,1
        j imprimir_vector2
