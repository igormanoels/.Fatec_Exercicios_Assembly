.data
    texto01: .asciiz"Algoritmo para soma de valores \n"
    texto02: .asciiz"Informe o primeiro valor \n"
    texto03: .asciiz"Informe o segundo valor \n"
    texto04: .asciiz"O resultado é = "
.text
main:
    # PRIMEIRA MENSAGEM DO ALGORITMO
    li $v0, 4
    la $a0, texto01
    syscall

    # SEGUNDA MENSAGEM DO ALGORITMO
    li $v0, 4
    la $a0, texto02
    syscall

    # RECEBE O PRIMEIRO VALOR DO USUÁRIO
    li $v0,5
    syscall
    add $t0, $v0, 0

    # TERCEIRA MENSAGEM DO ALGORITMO
    li $v0, 4
    la $a0, texto03
    syscall

    # RECEBE O SEGUNDO VALOR DO USUÁRIO
    li $v0,5
    syscall
    add $t1, $v0, 0

    # OPERAÇÃO DE SOMA ENTRE OS VALORES INFORMADOS
    add $t2, $t0, $t1

    # QUARTA MENSAGEM DO ALGORITMO
    li $v0, 4
    la $a0, texto04
    syscall

    # RETORNO VALOR PARA USUÁRIO
    li $v0, 1
    add $a0, $t2, 0
    syscall