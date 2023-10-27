.data
    escreva01: .asciiz "Algoritmo - Troca de Registradores"
    escreva02: .asciiz "\n Informe o valor 1:  "
    escreva03: .asciiz "\n Informe o valor 2:  "
    escreva04: .asciiz "\n Novo valor 1:  "
    escreva05: .asciiz "\n Novo valor 2:  "
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

    li $v0, 4
    la $a0, escreva03
    syscall

        li $v0, 5
        syscall
        add $t1, $v0, 0
                                    #CÁLCULOS    
    add $t3, $t0, 0
    add $t0, $t1, 0
    add $t1, $t3, 0
                                    #SAÍDA DOS DADOS

    li $v0, 4
    la $a0, escreva04
    syscall

        li $v0, 1
        add $a0, $t0, 0
        syscall   

    li $v0, 4
    la $a0, escreva05
    syscall

        li $v0, 1
        add $a0, $t1, 0
        syscall
