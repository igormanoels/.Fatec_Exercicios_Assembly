.data
    msg1: .asciiz "Algoritimo Menor e maior Altura de um grupo"
    msg2: .asciiz "\Informe a Altura:  "
    msg3: .asciiz "\n A menor altura: "
    msg4: .asciiz "\n A maior altura: "
.text
main:

    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 4
    la $a0, msg2
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0

    