.data
    escreva01: .asciiz "Algoritimo para calcular a Hipotenusa  \n"
    escreva02: .asciiz "\n Valor do cateto 1:  "
    escreva03: .asciiz "\n Valor do cateto 2:  "
    escreva04: .asciiz "\n Hipotenusa =   "
.text
main:

    li $v0, 4
    la $a0, escreva01
    syscall

    li $v0, 4
    la $a0, escreva02
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0

    li $v0, 4
    la $a0, escreva03
    syscall

        li $v0, 5
        syscall
        add $t1, $v0, 0

    mul $t2, $t0, $t0
    mul $t3, $t1, $t1
    add $t4, $t2, $t3

    li $v0, 4
    la $a0, escreva04
    syscall

        li $v0, 1
        add $a0, $t4, 0
        syscall
