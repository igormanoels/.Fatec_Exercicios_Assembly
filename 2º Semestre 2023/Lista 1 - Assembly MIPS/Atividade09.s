.data
    msg1: .asciiz"Algoritmo: Divisão entre dois números \n"
    msg2: .asciiz"Informe o primeiro valor \n"
    msg3: .asciiz"Informe o segundo valor \n"
    msg4: .asciiz"Informe um valor diferente de zero \n"
    msg5: .asciiz"O resultado é "
    msg6: .asciiz","
.text
main:
                                    #FUNÇÃO DO ALGORITMO
    li $v0, 4
    la $a0, msg1
    syscall
                                    #ENTRADA DOS DADOS
    li $v0, 4
    la $a0, msg2
    syscall

        li $v0, 5
        syscall
        add $t1, $v0, 0

segundovalor:
    li $v0, 4
    la $a0, msg3
    syscall

        li $v0, 5
        syscall
        add $t2, $v0, 0

    beq $t2, 0, igual
    j calcular       

igual:
    li $v0, 4
    la $a0, msg4
    syscall
    j segundovalor
                                    #CÁLCULOS    
calcular:
    div $t0, $t1, $t2
    rem $t3, $t1, $t2
                                    #SAÍDA DOS DADOS
    li $v0, 4
    la $a0, msg5
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0
    
    li $v0, 4
    la $a0, msg6
    syscall

        li $v0, 5
        syscall
        add $t3, $v0, 0
        
