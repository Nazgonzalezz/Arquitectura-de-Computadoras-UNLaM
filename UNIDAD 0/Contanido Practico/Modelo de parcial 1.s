# MODELO DE EXAMEN - Ejercicio 1
# Complete el siguiente programa en ASM de RISC-V. El programa debe imprimir por la
# terminal el contenido de las posiciones de memoria pares cuyo contenido sea un número
# par. Salida esperada: 0x02

.data
    vector: .word  0,8,10,11,3,32,2
    finvector:
.text
    li a7,1
    la x4,vector
    la x5,finvector 
    addi x5,x5,4
    li x6,0
    addi x4,x4,-8
    jal while
    li a7,10 
    ecall 
    nop
    
while:
    addi x4,x4,8
    beq x4,x5,ret
    lw a0,0(x4)
    verSiEsPar: 
        addi a0,a0,-2
        beq a0,x6,MostrarNum
        blt a0,x6,while
        j verSiEsPar
    j while 
    
ret:
    ret
    
MostrarNum:
    lw a0,0(x4)
    ecall
    j while
    
