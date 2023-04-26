.data
    escreva1: .asciiz "Algoritimo que separa as casas em centena, dezena e unidade"
    escreva2: .asciiz "\n Informe um valor entre 100 e 999 = "
    escreva3: .asciiz "\n Valor invalido \n"
    escreva4: .asciiz "\n Centena = "
    escreva5: .asciiz " Dezena = "
    escreva6: .asciiz " Unidade = "
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
        add $t0, $v0, 0
    
    #valor < 999 logo aceita e segue
    ble $t0, 100, se
    j senao

se:
    bge $t0, 100, entao
    j senao

entao:
   # ESCREVER A FUNCAO PARA QUE ELE IDENFIQUE E SEPARE CADA UNIDADE DO VALOR APRESENTADO












senao:
    li $v0, 4
    la $a0, escreva3
    syscall
    j main

fimse: