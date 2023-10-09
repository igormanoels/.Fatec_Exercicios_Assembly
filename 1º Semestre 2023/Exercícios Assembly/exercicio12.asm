.data
    msg1: .asciiz " Algoritimo Menor e maior Altura de um grupo \n"
    msg2: .asciiz " Informe a Altura:  "
    msg3: .asciiz "\n A menor altura: "
    msg4: .asciiz "\n A maior altura: "
.text
main:

    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 4
    la $a0, msg2
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0

    li $v0, 4
    la $a0, msg2
    syscall

        li $v0, 5
        syscall
        add $t1, $v0, 0

#Se for Igual
    beq $t0, $t1, ValoresIguais
    j QualoMaior

ValoresIguais:
    add $t2, $t0, 0
    j Entradas

#Verificar quem é maior
QualoMaior:
    bgt $t0, $t1, PrimeiroMaior 
    j SegundoMaior

#Primeiro valor Maior
PrimeiroMaior: 
    add $t2, $t1, 0
    add $t1, $t0, 0
    j Entradas

#Segundo Valor Maior
SegundoMaior:
    add $t2, $t0, 0
    j Entradas

# Ajustar o direcionamento dos valores  
Entradas:
    li $v0, 4
    la $a0, msg2
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0
    
    ble $t1, $t0, NovaEntradaMaior
    add $t2, $t0, 0
    j Entradas1 

NovaEntradaMaior:
    add $t1, $t0, 0
    j Entradas
    








#Final:
#    li $v0, 4
#    la $a0, msg6
#    syscall
#
#        li $v0, 1
#        add $a0, $t0, 0
#        syscall
#        j main