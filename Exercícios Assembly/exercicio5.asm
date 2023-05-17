.data
    escreva01: .asciiz "Algoritimo para calcular a Hipotenusa em Trigonometria \n"
    escreva02: .asciiz "\n Informe o valor do Primeiro cateto:  "
    escreva03: .asciiz "\n Informe o valor do Segundo cateto:  "
    escreva04: .asciiz "\n A Area da Hipotenusa e de =   "
.text
main:
 # Segundo Pitagoras ---- > Hipotenusa^2 = cateto Oposto^2 + cateto Adjacente^2 
 # Não consegui uma forma prática de elevar o produto da soma dos catetos e elevar a meio, ou simplesmente tirar a raiz dele  
    li $v0, 4
    la $a0, escreva01
    syscall

    li $v0, 4
    la $a0, escreva02
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0

    li $v0, 4
    la $a0, escreva03
    syscall

        li $v0, 5
        syscall
        add $t1, $v0, 0

    mul $t0, $t0, $t0
    mul $t1, $t1, $t1
    
    add $t2, $t0, $t1

    li $v0, 4
    la $a0, escreva04
    syscall

        li $v0, 1
        add $a0, $t2, 0
        syscall
