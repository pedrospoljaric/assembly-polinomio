.data
	prompt: .asciiz "Entre com o valor de x: "
	result: .asciiz " O resultado é: "
.text
	li $v0, 4
	la $a0, prompt
	syscall
	li $v0, 5
	syscall
	move $s0, $v0
	mul $t0, $s0, $s0
	mul $t0, $t0, 5
	mul $t1, $s0, 2
	add $t0, $t0, $t1
	addi $t0, $t0, 3
	li $v0, 4
	la $a0, result
	syscall
	li $v0, 1
	move $a0, $t0
	syscall