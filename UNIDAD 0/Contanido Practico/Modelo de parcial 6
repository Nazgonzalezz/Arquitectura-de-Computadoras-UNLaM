
# 3 Complete el siguiente programa en ASM de RISC-V. El programa debe contar  la 
# cantidad de elementos cuyos últimos dos bits sean 10. Imprima el valor encontrado en la 
# terminal. Salida esperada 2,2306,258,14594 
.data
    vector: .word 1,20,44,2,2306,258,259,14594
    finvector:
.text
    li a4,2
    la a1,vector
    la a2,finvector
    beq a1,a2,fin
    addi a1,a1,-4
    jal while 

while:
    li a7,1
    addi a1,a1,4
    lw a0,0(a1)
    andi a3,a0,3
    #andi es una mascara, su resultado lo guarda en a3. pongo el 3 para la mascara
    #porque en binario es 11
    beq a3,a4,mostrarNum
    j while
mostrarNum:
    ecall
    li a7,11
    li a0,32
    ecall
    j while
fin:
    ret
