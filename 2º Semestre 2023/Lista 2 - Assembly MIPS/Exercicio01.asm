.data
    escreva01: .asciiz"Algoritmo - Conversor de Dolar para Real"
    escreva02: .asciiz"\n Informe o valor em dolar:  "
    escreva03: .asciiz"\n O valor convertido para reais é de:  "
    escreva04: .asciiz",00
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
    mul $t1, $t0, 5
                                    #SAÍDA DOS DADOS
    li $v0, 4
    la $a0, escreva03
    syscall

        li $v0, 1
        add $a0, $t1, 0
        syscall
    
    li $v0, 4
    la $a0, escreva04
    syscall