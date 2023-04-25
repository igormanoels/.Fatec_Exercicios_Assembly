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

    # Valor do Primeiro Cateto²    
    add $t2, $t0, 0
    mul $t3, $t0, $t2
    
    # Valor do Segundo Cateto²    
    add $t4, $t1, 0
    mul $t5, $t4, $t1
    
    #Soma dos catetos
    add $t6, $t3, $t5

    li $v0, 4
    la $a0, escreva04
    syscall

        li $v0, 1
        add $a0, $t6, 0
        syscall
