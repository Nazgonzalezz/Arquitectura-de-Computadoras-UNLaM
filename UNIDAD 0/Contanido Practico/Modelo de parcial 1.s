.text 
    li a0,100
    li a1,50 
    # Jump and link : Salta a una dirección (una etiqueta o función).  y Guarda la dirección de retorno (la instrucción siguiente)
    jal x1,MIN
    nop
fin: 
    # bucle infinito 
    beq x0,x0,fin
    
MIN:
    # Branch if Less Than (“salta si es menor que”)
    # blt rs1, rs2, etiqueta
    # if (rs1 < rs2) goto etiqueta;
    blt a0,a1,volver
    addi a0,a1,0
    
volver:
    # Jump and link to register: Guarda la dirección de retorno (la siguiente instrucción) en un registro (rd). Salta a una dirección contenida en otro registro (rs1), más un offset
    # jalr rd, offset(rs1)
    # rd: registro donde se guarda la dirección de retorno (típicamente ra o x1)
    # rs1: contiene la dirección base a la que se quiere saltar
    # offset: desplazamiento (inmediato) sumado a rs1 (típicamente 0)
    jalr x0,x1,0
      