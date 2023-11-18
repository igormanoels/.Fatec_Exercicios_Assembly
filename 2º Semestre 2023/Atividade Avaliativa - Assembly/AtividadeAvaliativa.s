.data
    msg1: .asciiz"Algoritmo: Encontra o próximo número primo \n"
.text
main:
                            #FUNÇÃO DO ALGORITMO
    li $v0, 4
    la $a0, msg1
    syscall

                            #ENTRADA DOS DADOS
    