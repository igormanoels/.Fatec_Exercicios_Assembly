.data
    msg01: .asciiz"Algoritmo: Terrenos Retangulares - Imobiliária Imóbilis\n"
    msg02: .asciiz"Qual a largura? \n"
    msg03: .asciiz"Qual a profundidade? \n"
    msg04: .asciiz"A área do terreno é: "
    msg05: .asciiz"m² \n"
.text
main:
    li $v0, 4                   #FUNÇÃO DO ALGORITMO
    la $a0, msg01
    syscall

    li $v0, 4                   #ENTRADA DOS DADOS
    la $a0, msg02
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0

    li $v0, 4
    la $a0, msg03
    syscall

    li $v0, 5
    syscall
    add $t1, $v0, 0

    mul $t2, $t0, $t1           #CÁLCULOS
    
    li $v0, 4                   #SAÍDA DE DADOS
    la $a0, msg04
    syscall

    li $v0, 1                   
    add $a0, $t2, 0
    syscall

    li $v0, 4
    la $a0, msg05
    syscall