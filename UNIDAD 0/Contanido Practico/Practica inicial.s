.text 
# El formato de ADDI es tipo I
#  Este formato soporta inmediatos de 12 bits signados, rango [-2048 : 2047]
    addi t0,x0,128
    addi t1,x0,-2047
    addi t2,x0,2047
#   addi s0,x0,2048
    addi s0,x0,0
    addi s1,x0,1 
# lui (load upper inmmediate) carga 32 bits en un registro 
    lui x10,0x12345
    lui x11,0x8765432