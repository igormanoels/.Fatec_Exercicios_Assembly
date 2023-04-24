.data
	escreva01: .asciiz "Digite a Largura = \n"
	escreva02: .asciiz "Digite a Profundidade = \n"
	escreva03: .asciiz "Area do terreno = \n"
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
	
	mul $t2, $t0, $t1 #multiplica as entradas
	
	li $v0, 4
	la $a0, escreva03
	syscall
	
	li $v0, 1
	add $a0,$t2,0
	syscall