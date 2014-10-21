.text
.globl print_pet_info
print_pet_info:
    sub $sp,$sp,16
    sw $ra,0($sp)
    sw $a0,4($sp)
    
    jal animal_get_name
    la $a0,0($v0)
    jal puts
    
    lw $a0,4($sp)
    jal pet_get_id
    la $a0,0($v0)
    jal puts
    
    lw $a0,4($sp)
    lw $t0,0($a0)
    lw $t0,4($t0)
    jalr $t0
    
    lw $a0,4($sp)
    lw $t0,0($a0)
    lw $t0,8($t0)
    jalr $t0
    
    lw $ra,0($sp)
    lw $a0,4($sp)
    add $sp,$sp,16
	jr	$ra
