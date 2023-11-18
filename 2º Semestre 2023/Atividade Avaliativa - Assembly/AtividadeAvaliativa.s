.data
    msg1: .asciiz"Algoritmo: Encontra o proximo numero primo \n"
    msg2: .asciiz"Informe um numero: "
    msg3: .asciiz"Numero invalido, favor informar um novo numero: "
    msg4: .asciiz"O numero "
    msg5: .asciiz" e primo"
.text
main:
                            #FUNÇÃO DO ALGORITMO
    li $v0, 4
    la $a0, msg1
    syscall

                            #ENTRADA DOS DADOS
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0

    j teste1

 entrada:   
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0

teste1:
# Testa se n < 1
    blt $t0, 1, entrada
    j teste2

teste2:
# Testa se n > 50000
    bgt $t0, 50000, entrada
    j verificaprimo

                            #CÁLCULOS
verificaprimo:
    add $t0, $t0, 1
    j verificaprimo2

verificaprimo2:
    beq $t0, 2, msgprimo
    j verificaprimo3

verificaprimo3:
    beq $t0, 3, msgprimo
    j verificaprimo5

verificaprimo5:
    beq $t0, 5, msgprimo
    j verificaprimo7

verificaprimo7:
    beq $t0, 7, msgprimo
    j verificadiv2

verificadiv2:
    rem $t2, $t0, 2
    beq $t2, 0, naoprimo
    j verificadiv3

verificadiv3:
    rem $t2, $t0, 3
    beq $t2, 0, naoprimo
    j verificadiv5

verificadiv5:
    rem $t2, $t0, 5
    beq $t2, 0, naoprimo
    j verificadiv7

verificadiv7:
    rem $t2, $t0, 7
    beq $t2, 0, naoprimo
    j msgprimo

naoprimo:
    j verificaprimo

                        #SAÍDA DOS DADOS
msgprimo:
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    add $a0, $t0, 0
    syscall

    li $v0, 4
    la $a0, msg5
    syscall

