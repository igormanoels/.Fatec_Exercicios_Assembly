.data
    msg00: .asciiz"Algoritmo: cálcula área de um trapézio \n"
    msg01: .asciiz"informe o valor da primeira base \n"
    msg02: .asciiz"informe o valor da segunda base \n"
    msg03: .asciiz"informe o valor da altura \n"
    msg04: .asciiz"O resultado é "
    msg05: .asciiz","
.text
main:
                        #FUNÇÃO DO ALGORITMO
    li $v0, 4
    la $a0, msg00
    syscall
                        #ENTRADA DOS DADOS
    li $v0, 4
    la $a0, msg01
    syscall

    li $v0, 5
    syscall
    add $t1, $v0, 0

    li $v0, 4
    la $a0, msg02
    syscall

    li $v0, 5
    syscall
    add $t2, $v0, 0

    li $v0, 4
    la $a0, msg03
    syscall

    li $v0, 5
    syscall
    add $t3, $v0, 0
                        #CÁLCULOS
    add $t0, $t1, $t2    #res = ((base maior + base menor) * altura)/2
    mul $t0, $t0, $t3
    div $t4, $t0, 2
    rem $t0, $t0, 2

                        #SAÍDA DOS DADOS
    li $v0, 4
    la $a0, msg04
    syscall

    li $v0, 1
    add $a0, $t4, 0
    syscall

    li $v0, 4
    la $a0, msg05
    syscall

    li $v0, 1
    add $a0, $t0, 0
    syscall
