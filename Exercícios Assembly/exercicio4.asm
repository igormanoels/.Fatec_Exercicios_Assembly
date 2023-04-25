.data
    escreva01: .asciiz "Informe o valor da Maior Base:   "
    escreva02: .asciiz "Informe o valor da Menor Base:   "
    escreva03: .asciiz "Informe o valor da Altura:   "
    escreva04: .asciiz "Informe o valor da Area =   "
.text
main:

#  A = (base maior + base menor) * altura)/2

    li $v0, 4
    la $a0, escreva01
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0

    li $v0, 4 
    la $a0, escreva02
    syscall

        li $v0, 5
        syscall
        add $t1, $v0, 0

    li $v0, 4
    la $a0, escreva03
    syscall

        li $v0, 5
        syscall
        add $t2, $v0, 0

    add $t3, $t0, $t1
    mul $t4, $t3, $t2
    div $t5, $t4, 2

    li $v0, 4 
    la $a0, escreva04
    syscall

        li $v0, 1
        add $a0, $t5, 0
        syscall