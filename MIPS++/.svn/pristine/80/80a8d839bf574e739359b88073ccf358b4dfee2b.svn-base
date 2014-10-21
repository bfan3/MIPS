.data
constructor_str:
	.asciiz "Inside pet constructor"

destructor_str:
	.asciiz "Inside pet destructor"

# you need to complete the rest of the file

pet_vtable:
.word pet_destructor
.word 0                  #entry for animal_speak
.word 0                  #express_happiness


.text

.globl pet_constructor
pet_constructor:
	# remember to set up the vtable pointer
	sub $sp, $sp, 12
	sw  $ra, 0($sp)
	sw  $a0, 4($sp)
	
	
    jal animal_constructor
    
    lw $a0, 4($sp)
    sw $a2,8($a0)
    la $t0,pet_vtable
    sw $t0,0($a0)
    
	la $a0,constructor_str
	jal puts
	
	
	lw  $ra, 0($sp)
	lw  $a0, 4($sp)
	add $sp, $sp, 12
	jr $ra

.globl pet_destructor
pet_destructor:
	# remember to call the parent class destructor
	sub $sp, $sp, 4
	sw  $ra, 0($sp)
	

    la $a0,destructor_str
	jal puts
	lw  $ra, 0($sp)
	add $sp, $sp, 4
	
	j animal_destructor

.globl pet_get_id
pet_get_id:
    lw $v0,8($a0)   #pet_id
	jr	$ra

