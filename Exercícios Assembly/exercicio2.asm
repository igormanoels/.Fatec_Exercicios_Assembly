.data
	escreva01: .asciiz "\n Qual a quantidade de roupas P =  "
	escreva02: .asciiz "\n Qual a quantidade de roupas M =  "
	escreva03: .asciiz "\n Qual a quantidade de roupas G =  "
	escreva04: .asciiz "\n Valor Arrecadado na Venda =  "
.text
main:
	li $v0, 4
	la $a0, escreva01
	syscall
	
		li $v0, 5
		syscall
		add $t0, $v0, 0

	li $v0, 4
	la $a0, escreva02
	syscall

		li $v0, 5
		syscall						
		add $t1, $v0, 0
	
	li $v0, 4
	la $a0, escreva03
	syscall

		li $v0, 5
		syscall
		add $t2, $v0, 0
		

	mul $t3, $t0, 10 			# quant * preço P
	mul $t4, $t1, 12 			# quant * preço M
	mul $t5, $t2, 15 			# quant * preço G
	
	add $t6,$t3,$t4
	add $t7,$t6,$t5
	
	li $v0, 4
	la $a0, escreva04
	syscall
	
		li $v0, 1
		add $a0,$t7,0
		syscall