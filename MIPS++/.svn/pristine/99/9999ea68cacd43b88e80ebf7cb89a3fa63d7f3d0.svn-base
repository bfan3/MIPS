.data
constructor_str:
	.asciiz "Inside crazy_cat_lady constructor"

destructor_str:
	.asciiz "Inside crazy_cat_lady destructor"

# you need to complete the rest of the file

.text
.globl crazy_cat_lady_constructor
crazy_cat_lady_constructor:
    sub $sp, $sp, 16
	sw  $ra, 0($sp)
	sw  $a0, 4($sp)
	
	sw $a3,4($a0)

    
     la $a0,0($a0)
    jal cat_constructor
    
   
    la $a0,constructor_str
    jal puts
	
	
	lw  $ra,0($sp)
	lw  $a0,4($sp)
	add $sp, $sp, 16
	jr $ra
    

.globl crazy_cat_lady_destructor
crazy_cat_lady_destructor:
    sub $sp, $sp, 4
	sw  $ra, 0($sp)
	

    la $a0,destructor_str
	jal puts
	lw  $ra, 0($sp)
	add $sp, $sp, 4
	
	j cat_destructor	

.globl crazy_cat_lady_get_name
crazy_cat_lady_get_name:
	lw $v0,4($a0)   #animal_name
	jr	$ra

.globl crazy_cat_lady_pet_cat
crazy_cat_lady_pet_cat:
	# this can be done in one line, and it isn't the line below
	j cat_express_happiness

