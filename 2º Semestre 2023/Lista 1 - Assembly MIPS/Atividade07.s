.data
    msg0: .asciiz"Algoritmo: Soma 5 a números pares, e 8 para impares \n"
    msg1: .asciiz"Informe um valor \n"
    msg2: .asciiz"O valor é par, portanto o resultado é "
    msg3: .asciiz"O valor é impar, portanto o resultado é "
.text
main:
                                #FUNÇÃO DO ALGORITMO
    li $v0, 4
    la $a0, msg0
    syscall
                                #ENTRADA DOS DADOS
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0
                                #CÁLCULOS
    rem $t1, $t0, 2
    beq $t1, 0, se
    j senao

se: 
    add $t2, $t0, 5
    j fim1

senao:
    add $t2, $t0, 8
    j fim2
                                #SAÍDA DOS DADOS
fim1:
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    add $a0, $t2, 0
    syscall
    j fimse
    
fim2:
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    add $a0, $t2, 0
    syscall
    j fimse

fimse:
 