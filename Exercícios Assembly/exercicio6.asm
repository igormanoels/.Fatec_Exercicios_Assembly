.data
    escreva01: .asciiz "Algoritimo que compara A e B"
    escreva02: .asciiz "\n Informe o Valor A:  "
    escreva03: .asciiz "\n Informe o Valor B:  "
    escreva04: .asciiz "\n O valor de C e igual a soma de A e B -->  "
    escreva05: .asciiz "\n O valor de C e igual a multiplicacao de A e B -->  "
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
    
    #se os valores forem iguais
    beq $t0, $t1, se
    j senao

se:
    add $t2, $t0, $t1

    li $v0, 4 
    la $a0, escreva04
    syscall

        li $v0, 1
        add $a0, $t2, 0
        syscall
        j fimse

senao:
    mul $t2, $t0, $t1
    
    li $v0, 4 
    la $a0, escreva05
    syscall

        li $v0, 1
        add $a0, $t2, 0
        syscall

fimse:

    
