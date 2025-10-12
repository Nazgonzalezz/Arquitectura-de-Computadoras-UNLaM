# Los compiladores / ensamblarores definen diferentes areas en la memoria. Esto sirve para
# diferencias las diferentes operaciones de un programa:
# --> .text
#      seccion que almacena instrucciones     
# --> . data
#      seccion que almacena datos inicializados 
# --> .bss
#      seccion que almacena datos no inicializados 
# --> . stack 
#      seccion donde se almacenan datos temporales, y se recuperan en orden
# --> . heap
#   seccion donde se utiliza la memoria dinamica

.text
    # --> LI (Load Immediate) Pseudoinstrucción | Carga un valor inmediato
    # Carga el número 1023 en el registro x5
    li x5,1023
    # --> LO Load Word: cargar palabra
    # lw rd, offset(rs)
    # lw lo que hace es acceder al area de memoria de x5 con un un desplazamiento (en este caso ningun desplazamiento) y copia su contenido a a0
    lw a0,0(x5)
    li a7,1
    # --> ecall Environment Call (llamada al sistema): es una instrucción que solicita un servicio del sistema operativo o del entorno de ejecución
    ecall 


# rd: registro destino, donde se almacenará el dato cargado.
# rs: registro que contiene la dirección base en memoria.
# offset: desplazamiento (inmediato) respecto a la base, en bytes.

