.data
    escreva01: .asciiz "Algoritimo - Conversor de Dolar para Real"
    escreva02: .asciiz "\n Informe o valor em dolar:  "
    escreva03: .asciiz "\n O valor em reaias e de:  "
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

    mul $t1, $t0, 5

    li $v0, 4
    la $a0, escreva03
    syscall

    li $v0, 1
    add $a0, $t1, 0
    syscall

 