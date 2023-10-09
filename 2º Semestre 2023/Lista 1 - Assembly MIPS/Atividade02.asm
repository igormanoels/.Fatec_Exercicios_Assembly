.data
    escreva01: .asciiz"Algoritmo: Cálcula o valor arrecadado para vendas \n"
    escreva02: .asciiz"Informe a quantidade de vendas das camisas P \n"
    escreva03: .asciiz"Informe a quantidade de vendas das camisas M \n"
    escreva04: .asciiz"Informe a quantidade de vendas das camisas G \n"
    escreva05: .asciiz"O valor total das vendas é de R$ "
    escreva06: .asciiz",00"
.text
main:
                                    #FUNÇÃO DO ALGORITMO            
    li $v0, 4
    la $a0, escreva01
    syscall

                                    #ENTRADA DOS DADOS
    li $v0, 4       #Recebe valor de P
    la $a0, escreva02
    syscall

    li $v0, 5
    syscall
    add $t1, $v0, 0

    li $v0, 4       #Recebe valor de M
    la $a0, escreva03
    syscall

    li $v0, 5
    syscall
    add $t2, $v0, 0

    li $v0, 4       #Recebe valor de G
    la $a0, escreva04
    syscall

    li $v0, 5
    syscall
    add $t3, $v0, 0

                                    #CÁLCULOS    
    mul $t1, $t1, 10    #valor de P
    mul $t2, $t2, 12    #valor de M
    mul $t3, $t3, 15    #valor de G

    add $t0, $t1, $t2   #soma total dos valores
    add $t0, $t0, $t3

                                    #SAÍDA DOS DADOS
    li $v0, 4               
    la $a0, escreva05
    syscall

    li $v0, 1
    add $a0, $t0, 0
    syscall

    li $v0, 4               
    la $a0, escreva06
    syscall