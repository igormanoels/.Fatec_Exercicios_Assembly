.data
    escreva01: .asciiz "Algoritimo - Empresa ABC LTDA, Salario Novo"
    escreva02: .asciiz "\n Informe o valor do Salario Atual:  "
    escreva03: .asciiz "\n O valor do Salario de Fulano Atualizado e de:  "
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
    
    mul $t1, $t0, 25
    div $t2, $t1, 100
    add $t3, $t2, $t0

    li $v0, 4
    la $a0, escreva03
    syscall

        li $v0, 1
        add $a0, $t3, 0
        syscall
 