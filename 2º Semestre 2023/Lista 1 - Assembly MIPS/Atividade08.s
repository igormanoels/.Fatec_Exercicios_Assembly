.data
    escreva1: .asciiz"Algoritmo: Dobra valores positivos e triplica negativos \n"
    escreva2: .asciiz"Informe um valor \n"
    escreva3: .asciiz"O valor é positivo, portando o dobro é "
    escreva4: .asciiz"O valor é negatiivo, portando o triplo é "
    escreva5: .asciiz"Informe um valor diferente de zero \n"
.text
main:
                                #FUNÇÃO DO ALGORITMO
    li $v0, 4
    la $a0, escreva1
    syscall
                                #ENTRADA DOS DADOS
    li $v0, 4
    la $a0, escreva2
    syscall

inicio:
    li $v0, 5
    syscall
    add $t0, $v0, 0

    beq $t0, 0, igual
    j calcular

igual:
    li $v0, 4
    la $a0, escreva5
    syscall
    j inicio
                                #CÁLCULOS
calcular:
    bge $t0, 0, se
    j senao

se:
    mul $t1, $t0, 2
    j dobro

senao:
    mul $t1, $t0, 3
    j triplo
                                #SAÍDA DOS DADOS
dobro:
    li $v0, 4
    la $a0, escreva3
    syscall

    li $v0, 1
    add $a0, $t1, 0 
    syscall
    j fimse

triplo:
    li $v0, 4
    la $a0, escreva4
    syscall

    li $v0, 1
    add $a0, $t1, 0 
    syscall
    j fimse

fimse: