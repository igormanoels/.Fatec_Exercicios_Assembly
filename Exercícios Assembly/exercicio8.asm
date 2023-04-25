.data
    msg1: .asciiz "Algoritimo Le valor, se positivo dobra, quando negativo triplica"
    msg2: .asciiz "\n Informe um valor:  "
    msg3: .asciiz "\n O Dobro do valor: "
    msg4: .asciiz "\n O Triplo do valor: "
.text
main:

    li, $v0, 4
        la, $a0, msg1
        syscall

        li, $v0, 4
        la, $a0, msg2
        syscall

            li, $v0, 5
            syscall
            add $t0, $v0, 0

    mul $t1, $t0, 2    

        #se o valor for positivo dobra
        bge $t1, 0, se
        j senao #vai ser triplicado

se:
    mul $t2, $t1, 2

    li $v0, 4
    la $a0, msg3
    syscall

        li $v0, 1
        add $a0, $t2, 0
        syscall
        j fimse

senao:
   mul $t2, $t1, 3

    li $v0, 4
    la $a0, msg4
    syscall

        li $v0, 1
        add $a0, $t2, 0
        syscall
        j fimse 

fimse: