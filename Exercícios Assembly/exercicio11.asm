.data
    msg1: .asciiz "Algoritimo Identifica qual o intervalo de um valor"
    msg2: .asciiz "\n Informe um valor:  "
    msg3: .asciiz "\n O valor esta entre [0-25]: "
    msg4: .asciiz "\n O valor esta entre [26-50]: "
    msg5: .asciiz "\n O valor esta entre [51-75]: "
    msg6: .asciiz "\n O valor esta entre [76-100]: "
    msg7: .asciiz "\n O valor informado e invalido! "
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

    ble $t0, 25, se
    j senao

se:
    li $v0, 4
    la $a0, msg3
    syscall

        li $v0, 1
        add $a0, $t0, 0
        syscall
        j fimse

senao:
    ble $t0, 50, senao1
    j senao2

senao1:
    li $v0, 4
    la $a0, msg4
    syscall

        li $v0, 1
        add $a0, $t0, 0
        syscall
        j fimse

senao2:
    ble $t0, 75, senao3
    j senao4

senao3: 
    li $v0, 4
    la $a0, msg5
    syscall

        li $v0, 1
        add $a0, $t0, 0
        syscall
        j fimse

senao4:
    ble $t0, 101, senao5
    j senao6

senao5:
    li $v0, 4
    la $a0, msg6
    syscall

        li $v0, 1
        add $a0, $t0, 0
        syscall
        j fimse

senao6:
    # AJUSTAR O CÓDIGO PARA INICIAR DO -1 E IR SUBINDO ATÉ O 100, QUANDO FOR >= Q 101 TAMBEM RETORNA INVÁLIDO
    ble $t0, 0 , senao7
    j senao8

senao7:
    li $v0, 4
    la $a0, msg7
    syscall
    j fimse

senao8:
    li $v0, 4
    la $a0, msg7
    syscall
    j fimse

fimse:



