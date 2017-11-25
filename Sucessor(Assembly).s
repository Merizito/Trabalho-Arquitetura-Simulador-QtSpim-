		.data

mensagem:	.asciiz "Digite um numero: "
mensagem2:	.asciiz "Seu sucessor: "
numero:		.word 1
sucessor:	.word 1

		.text
		#Imprime Mensagem1.
main:	li $v0, 4
		la $a0, mensagem
		syscall
		
		#Lê um inteiro
		li $v0, 5
		syscall

		addi $s0, $v0, 0
		sw $s0, numero
		
		#Calcula Sucessor e salva na memória.		
		addi $s1, $v0, 1
		sw $s1, sucessor
	
		#Imprime mensagem2.
		li $v0, 4
		la $a0, mensagem2
		syscall

		#Imprime um inteiro(Sucessor)
		li $v0, 1
		move $a0, $s1
		syscall

		jr $ra