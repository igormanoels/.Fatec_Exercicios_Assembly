.data
    escreva01: .asciiz "Algoritimo - Mostra tempo de vida em Meses"
    escreva02: .asciiz "\n Informe o mes de Nascimento:  "
    escreva03: .asciiz "\n Informe o ano de Nascimento:  "
    escreva04: .asciiz "\n Informe o mes Atual:  "
    escreva05: .asciiz "\n Informe o ano Atual:  "
    escreva06: .asciiz "\n O seu tempo de vida em meses:  " 
.text
main:
                                    #FUNÇÃO DO ALGORITMO            
    li $v0, 4
    la $a0, escreva01
    syscall
                                    #ENTRADA DOS DADOS
    li $v0, 4
    la $a0, escreva02 # REFERENTE A MES NASC
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0

    li $v0, 4
    la $a0, escreva03  # REFERENTE A ANO NASC
    syscall

        li $v0, 5
        syscall
        add $t1, $v0, 0

    li $v0, 4
    la $a0, escreva04 # REFERENTE A MES ATUAL
    syscall

        li $v0, 5
        syscall
        add $t2, $v0, 0
        
    li $v0, 4
    la $a0, escreva05 # REFERENTE A ANO ATUAL
    syscall

        li $v0, 5
        syscall
        add $t3, $v0, 0
                                    #CÁLCULOS    
    beq $t0, $t2, mesigual
    j mesdiferente

mesigual:
    sub $t4, $t3, $t1
    mul $t4, $t4, 12
    add $t5, $t5, $t4
    j fim

#AJUSTAR CASO O MES SEJA DIFERENTE
mesdiferente:
    mul $t4, $t4, 12
    
    
                                    #SAÍDA DOS DADOS
fim:
    li $v0, 4
    la $a0, escreva06
    syscall 

        li $v0, 1
        add $a0, $t5, 0
        syscall