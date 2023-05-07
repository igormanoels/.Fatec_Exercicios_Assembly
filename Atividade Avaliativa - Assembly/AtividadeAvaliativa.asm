.data
    leia0: .asciiz "\n Algorimo: Contador de anos bissextos"
    leia1: .asciiz "\n Informe o primeiro ano: "
    leia2: .asciiz "\n Informe o segundo ano: "
    leia3: .asciiz "\n Nao e possivel calcular uma diferanca maior de 1000 anos, afinal voce nao e um vampiro para querer saber isso! ou e?"
    leia4: .asciiz "\n Favor informar os anos com ao menos 1 ano de diferenca"
    leia5: .asciiz "\n A quantidade de anos bissextos e de:  "
    leia6: .asciiz "\n Valores abaixo de Zero nao sao aceitos! "
.text

main:
# 66. Faça um algoritmo que leia dois valores correspondentes a anos 
#e mostre quantos anos bissextos existem entre eles. 
#(A diferença entre os anos não pode ser maior que 1000)

    li $v0, 4
    la $a0, leia0
    syscall

    li $v0, 4
    la $a0, leia1
    syscall

        li $v0, 5
        syscall
        add $t0, $v0, 0
    
    li $v0, 4
    la $a0, leia2
    syscall

        li $v0, 5
        syscall
        add $t1, $v0, 0

VerificaNegativoum:
    #Se Valor Menor ou Igual a Zero, Refazer
    li $t3, 0
    blt $t0, $t3, Menorquezero
    j VerificaNegativoDois
  
VerificaNegativoDois:
    blt $t1, $t3, Menorquezero 
    j VerificaDiferenca


VerificaDiferenca:
    #Se os anos forem diferentes continua, se não fazer
    bne $t0, $t1, Diferente
    j Refazer

Diferente:   
    #Se o primeiro for maior faça
    bgt $t0, $t1, PrimeiroMaior
    #Se o segundo for maior faça
    j SegundoMaior

PrimeiroMaior:
    li $t3, 1000
    sub $t2, $t0, $t1
    # Se a difereça dos valores for maior que 1000
    bgt $t2, $t3, OutroRefazer
    j Calcular

SegundoMaior:
    li $t3, 1000
    sub $t2, $t1, $t0
    # Se a difereça dos valores for maior que 1000
    bgt $t2, $t3, OutroRefazer
    j Calcular

Calcular:
    #Calcula a quantidade de anos bissextos
    div $t4, $t2, 4

    li $v0, 4
	la $a0, leia5
	syscall
	
        li $v0, 1
        add $a0,$t4,0
        syscall
        j main   

Refazer:
    li $v0, 4
    la $a0, leia4
    syscall
    j main

OutroRefazer:
    li $v0, 4
    la $a0, leia3
    syscall
    j main

Menorquezero:
    li $v0, 4
    la $a0, leia6
    syscall
    j main