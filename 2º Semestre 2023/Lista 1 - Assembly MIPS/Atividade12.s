.data
    msg1: .asciiz " Algoritmo: Menor e Maior Altura de um grupo de 15 alunos \n"
    msg2: .asciiz " Informe a Altura:  "
    msg3: .asciiz "\n A menor altura: "
    msg4: .asciiz "\n A maior altura: "
.text
main:
                                    #FUNÇÃO DO ALGORITMO            
    li $v0, 4
    la $a0, msg1
    syscall
                                    #ENTRADA DOS DADOS
inicio:
    li $v0, 4
    la $a0, msg2
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0
    j teste1

contador:
    add $t9, $t9, 1
    beq $t9, 15, fim #enquanto contador menor q 15 continua a coletar os valores
    j inicio
                                    #CÁLCULOS    
teste1:
    bge $t0, $t2, maiorvalor
    j teste2

maiorvalor:
    add $t2, $t0, 0 #move o valor de $t0, quando maior q o valor atual
    j contador

teste2: 
    add $t1, $t0, 0
    ble $t1, $t1, menorvalor
    j contador

menorvalor:
    add $t1, $t0, 0 #move o valor de $t0, quando menor que o valor atual
    j contador
                                    #SAÍDA DOS DADOS
fim:
    li $v0, 4
    la $a0, msg3
    syscall

        li $v0, 1
        add $a0, $t1, 0
        syscall

    li $v0, 4
    la $a0, msg4
    syscall

        li $v0, 1
        add $a0, $t2, 0
        syscall
