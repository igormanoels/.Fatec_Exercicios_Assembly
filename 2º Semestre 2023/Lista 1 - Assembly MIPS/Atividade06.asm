.data
    msg0: .asciiz"Algoritmo: Cálcula soma para igual multiplica quando diferente \n"
    msg1: .asciiz"Informe o primeiro valor \n"
    msg2: .asciiz"Informe o segundo valor \n"
    msg3: .asciiz"Os valores são iguais, portanto a soma deles é \n"
    msg4: .asciiz"Os valores são diferentes, portando a multiplicação é \n"
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
    add $t1, $v0, 0

    li $v0, 4
    la $a0, msg2
    syscall
    
    li $v0, 5
    syscall
    add $t2, $v0, 0
                                #CÁLCULOS
    beq $t1, $t2, se
    j senao

se:
    add $t0, $t1, $t2
    j fim1

senao:
    mul $t0, $t1, $t2
    j fim2
                                #SAÍDA DOS DADOS
fim1:
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    add $a0, $t0, 0
    syscall
    j fimse

fim2:
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    add $a0, $t0, 0
    syscall
    j fimse

fimse:

