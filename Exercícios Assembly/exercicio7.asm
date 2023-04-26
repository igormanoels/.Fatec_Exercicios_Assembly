.data
    msg1: .asciiz "Algoritimo Le variavel e soma 5 quando par ou 8 quando impar"
    msg2: .asciiz "\n Informe a variavel:  "
    msg3: .asciiz "\n O resultado e igual a: "
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
    
    #Recolhe o valor informado e divide por "2"
    rem $t1, $t0, 2
    
    #Se o valor divido for = 0 depois da virgula (por isso usa-se o rem e não o div)
    beq $t1, 0, se
    j senao

se: 
    add $t1, $t0, 5

    li $v0, 4
    la $a0, msg3
    syscall

        li $v0, 1
        add $a0, $t1, 0
        syscall
        j fimse

senao: 
    add $t1, $t0, 8

    li $v0, 4
    la $a0, msg3
    syscall

        li $v0, 1
        add $a0, $t1, 0
        syscall

fimse: