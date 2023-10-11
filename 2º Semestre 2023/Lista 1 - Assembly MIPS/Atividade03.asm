.data
    texto1: .asciiz"Algoritmo: Cálcula o Salário Bruto e Líquido \n"
    texto2: .asciiz"Insira a quantidade de horas trabalhadas \n"
    texto3: .asciiz"insira a quantidade de horas extras realizadas \n"
    texto4: .asciiz"Insira o valor do desconto \n"
    texto5: .asciiz"O salário bruto é: R$ "
    texto6: .asciiz",00 \n"
    texto7: .asciiz"O salário líquido é: R$ "
    texto8: .asciiz","
.text
main:
                                    #FUNÇÃO DO ALGORITMO
    li $v0, 4                       
    la $a0, texto1
    syscall
                                    #ENTRADA DOS DADOS
    li $v0, 4                       
    la $a0, texto2
    syscall

    li $v0, 5
    syscall
    add $t1, $v0, 0

    li $v0, 4
    la $a0, texto3
    syscall

    li $v0, 5
    syscall
    add $t2, $v0, 0

    li $v0, 4
    la $a0, texto4
    syscall

    li $v0, 5
    syscall
    add $t3, $v0, 0
                                    #CÁLCULOS
    mul $t4, $t1, 10    # SalB = horasTrab * 10
    mul $t5, $t2, 15    # HorasEx = horasExTrab * 15
    
    add $t6, $t4, $t5   # SalB = SalB + HorasEx
    mul $t7, $t6, $t3   # SalLiq = SalB - ((SalB * 10)/100)
    div $t7, $t7, 100
    rem $t8, $t7, 100   #rem não está retornando o valor após a vírgula

    beq $t8, 0, casoredondo
    j casocomcentavos
    
casoredondo:
    j mostra

casocomcentavos:
    sub $t7, $t6, $t7
    sub $t7, $t7, 1
    j mostra

                                   #SAÍDA DOS DADOS
mostra:
    li $v0, 4
    la $a0, texto5
    syscall

    li $v0, 1
    add $a0, $t6, 0
    syscall

    li $v0, 4
    la $a0, texto6
    syscall
    
    li $v0, 4
    la $a0, texto7
    syscall

    li $v0, 1
    add $a0, $t7, 0
    syscall

    li $v0, 4
    la $a0, texto8
    syscall

    li $v0, 1
    add $a0, $t8, 0
    syscall