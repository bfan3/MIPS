# syscall constants
PRINT_STR = 4
PRINT_CHAR = 11

.text
.globl puts
puts:
	li	$v0, PRINT_STR
	syscall
	li	$v0, PRINT_CHAR
	li	$a0, '\n'
	syscall
	jr	$ra
