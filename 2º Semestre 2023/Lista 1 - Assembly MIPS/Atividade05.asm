.data
    texto01: .asciiz"Algoritmo: Cálculo da Hipotenusa \n"
    texto02: .asciiz"Informe o valor do primeiro cateto \n"
    texto03: .asciiz"Informe o valor do segundo cateto \n"
    texto04: .asciiz"O resultado é "
.text
main:
                        #FUNÇÃO DO ALGORITMO
    li $v0, 4
    la $a0, texto01
    syscall
                        #ENTRADA DOS DADOS
    li $v0, 4
    la $a0, texto02
    syscall

    li $v0, 5
    syscall
    add $t1, $v0, 0

    li $v0, 4
    la $a0, texto03
    syscall

    li $v0, 5
    syscall
    add $t2, $v0, 0
                        #CÁLCULOS
    mul $t1, $t1, $t1
    mul $t2, $t2, $t2
    add $t0, $t1, $t2
                        #SAÍDA DOS DADOS
    li $v0, 4
    la $a0, texto04
    syscall

    li $v0, 1
    add $a0, $t0, 0
    syscall
