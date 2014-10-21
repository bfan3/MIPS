.data
constructor_str:
	.asciiz "Inside cat constructor"

destructor_str:
	.asciiz "Inside cat destructor"

meow_str:
	.asciiz "Meow"

purr_str:
	.asciiz "Purr"

# you need to complete the rest of the file

cat_vtable:
.word cat_destructor
.word cat_speak
.word cat_express_happiness

.text

.globl cat_constructor
cat_constructor:
	# remember to set up the vtable pointer
    sub $sp, $sp, 16
	sw  $ra, 0($sp)
	sw  $a0, 4($sp)

	
	jal pet_constructor
	
	lw  $a0,4($sp)
    la $t0,cat_vtable
	sw $t0,0($a0)
	
    la $a0,constructor_str
	jal puts
	
	
	
	lw  $ra,0($sp)
	lw  $a0,4($sp)
	add $sp, $sp, 16
	jr	$ra

.globl cat_destructor
cat_destructor:
	# remember to call the parent class destructor
	sub $sp, $sp, 4
	sw  $ra, 0($sp)
	

    la $a0,destructor_str
	jal puts
	lw  $ra, 0($sp)
	add $sp, $sp, 4
	
	j pet_destructor

.globl cat_speak
cat_speak:
    la $a0,meow_str
    j puts


.globl cat_express_happiness
cat_express_happiness:
    la $a0,purr_str
    j puts

