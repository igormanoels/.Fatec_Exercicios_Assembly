.data
    escreva01: .asciiz"Algoritmo - Empresa ABC LTDA, Salario Novo"
    escreva02: .asciiz"\nInforme o valor do Salario Atual:  "
    escreva03: .asciiz"\nO valor do Salario de Fulano Atualizado e de: R$ "
    escreva04: .asciiz",00 \n"
.text
main:
                                    #FUNÇÃO DO ALGORITMO
    li $v0, 4
    la $a0, escreva01
    syscall
                                    #ENTRADA DOS DADOS
    li $v0, 4
    la $a0, escreva02
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0
                                        #CÁLCULOS
    mul $t1, $t0, 25
    div $t2, $t1, 100
    add $t3, $t2, $t0

    li $v0, 4
    la $a0, escreva03
    syscall
                                    #SAÍDA DOS DADOS
        li $v0, 1
        add $a0, $t3, 0
        syscall
    
    li $v0, 4
    la $a0, escreva04
    syscall
