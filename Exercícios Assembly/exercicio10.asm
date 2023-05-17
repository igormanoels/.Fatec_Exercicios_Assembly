.data
    escreva1: .asciiz " Algoritimo que separa as casas em centena, dezena e unidade "
    escreva2: .asciiz "\n Informe um valor entre 100 e 999 = "
    escreva3: .asciiz " Valor invalido \n \n "
    escreva4: .asciiz " Centena = "
    escreva5: .asciiz ", Dezena = "
    escreva6: .asciiz ", Unidade = "
.text
main:
    li $v0, 4
    la $a0, escreva1
    syscall

    li $v0, 4
    la $a0, escreva2
    syscall

        li $v0, 5
        syscall
        add $t1, $v0, 0

#Looping para que o valor informado seja >= 100
Menorque100:
# se valor menor que 100 rejeita
    li $t0, 100
    bge $t1, $t0, Menorque999
    j Rejeitar

Rejeitar:
    li $v0, 4
    la $a0, escreva3
    syscall
    j main

#Looping para que o valor informado seja <= 999
Menorque999:
# se valor menor que 100 rejeita
    li $t0, 999
    ble $t1, $t0, Calcular
    j Rejeitar2

Rejeitar2:
    li $v0, 4
    la $a0, escreva3
    syscall
    j main

Calcular:
# Separa a Centena
    li $t0, 100
    div $t2, $t1, $t0 
    rem $t3, $t1, $t0
# separa a Dezena e a Unidade
    li $t0, 10
    div $t4, $t3, $t0
    rem $t5, $t3, $t0

#Escreve os valores
    li $v0, 4
    la $a0, escreva4
    syscall 
        li $v0, 1
        add $a0, $t2, 0
        syscall
    
    li $v0, 4
    la $a0, escreva5
    syscall 
        li $v0, 1
        add $a0, $t4, 0
        syscall
    
    li $v0, 4
    la $a0, escreva6
    syscall 
        li $v0, 1
        add $a0, $t5, 0
        syscall
        

