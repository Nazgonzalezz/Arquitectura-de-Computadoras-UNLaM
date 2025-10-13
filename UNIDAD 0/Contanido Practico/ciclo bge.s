.data
    vector: .word 100,200,300,-10,400
.text
    # LA  Load Address : es una pseudoinstrucción que carga la dirección de una etiqueta o variable en un registro.
    la x5,vector
    li a7,1
    
loop:
    lw a0,0(x5)
    ecall
    # ADDI suma un número inmediato (constante) a un registro fuente, y guarda el resultado en un registro destino.
    # le sumo 4 porque el tipo word utiliza 4 bits
    addi x5,x5,4
    # Branch if Greater Than or Equal :Salta si rs = rt (mayor o igual)
    # realiza un salto si el valor almacenado en a0 es mayor o igual al valor de x0
    bge a0,x0,loop
    nop
    
    
#rs = contiene la dirección a la que se quiere saltar (como una función o subrutina).
# rd = (opcional) registro donde se guardará la dirección de retorno