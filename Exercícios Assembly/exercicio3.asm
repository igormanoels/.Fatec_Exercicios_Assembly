.data
    escreva01: .asciiz "Informe o nome do funcionario: \n"
    escreva02: .asciiz "Digite quantas horas foram trabalhadas durante a semana: \n"
    escreva03: .asciiz "Digite quantas horas extras foram trabalhas durante a semana: \n"
    escreva04: .asciiz "\n O valor das Horas Trabalhadas e de:   "
    escreva05: .asciiz "\n O valor das Horas Extras e de:   "
    escreva06: .asciiz "\n O valor do Salario Bruto e de:   "
    escreva07: .asciiz "\n O valor total dos Encargos e de:   "
    escreva08: .asciiz "\n O valor do Salario Liquido e de:   "
.text
main:

    ### adcionar campo para entrada do nome do funcionário

    #Recebe o valor das horas tabalhadas
    li $v0, 4
    la $a0, escreva02
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0
    
    #Recebe o valor das horas extras tabalhadas
    li $v0, 4
    la $a0, escreva03
    syscall 

        li $v0, 5
        syscall
        add $t1, $v0, 0

    #Mostra o valor das horas tabalhadas e multiplica pelo valor R$15,00 por hora 
    li $v0, 4 
    la $a0, escreva04
    syscall

        li $v0, 1
        mul $t2, $t0, 10
        add $a0, $t2, 0 
        syscall

    #Mostra o valor das horas extras tabalhadas e multiplica pelo valor R$15,00 por hora
    li $v0, 4 
    la $a0, escreva05
    syscall

        li $v0, 1
        mul $t3, $t1, 15
        add $a0, $t3, 0  
        syscall

    #Mostra o valor do salário bruto
    li $v0, 4
    la $a0, escreva06
    syscall

        li $v0, 1
        add $t4, $t2, $t3
        add $a0, $t4, 0  
        syscall
        

    #Mostra o valor dos encargos, considerando uma alíquota de 13%
    li $v0, 4
    la $a0, escreva07
    syscall

        li $v0, 1
        mul $t5, $t4, 13
        div $t6, $t5, 100
        add $a0, $t6, 0  
        syscall
       

    #Mostra o valor do salário líquido, considerando uma aliquota de 13,5%
    li $v0, 4
    la $a0, escreva08
    syscall

        li $v0, 1
        sub $t7, $t4, $t6
        add $a0, $t7, 0   
        syscall
     
 
