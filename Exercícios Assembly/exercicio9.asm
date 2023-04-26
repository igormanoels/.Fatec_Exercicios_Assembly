.data
    texto1: .asciiz "Algortimo que faz divisao entre valores"
    texto2: .asciiz "\n Informe o Primeiro Valor  "
    texto3: .asciiz "\n Informe o Segundo Valor  "
    texto4: .asciiz "\n O resultado da divisao e =  "
    texto5: .asciiz "\n Por favor, informe um valor diferente de zero!"
.text
main:

    li $v0, 4
    la $a0, texto1
    syscall

    li $v0, 4
    la $a0, texto2
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0
    
    li $v0, 4
    la $a0, texto3
    syscall

        li $v0, 5
        syscall
        add $t1, $v0, 0

    #se valor = 0, digiar o valor novamente
    beq $t1, 0, se
    j senao

se: 
    li $v0, 4
    la $a0, texto5
    syscall

    li $v0, 4
    la $a0, texto3
    syscall

        li $v0, 5
        syscall
        add $t1, $v0, 0
        j senao

senao:
    div $t2, $t0, $t1

    li $v0, 4 
    la $a0, texto4
    syscall

        li $v0, 1
        add $a0, $t2, 0
        syscall
        j fimse

fimse: