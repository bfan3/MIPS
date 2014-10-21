.data
constructor_str:
	.asciiz "Inside animal constructor"

destructor_str:
	.asciiz "Inside animal destructor"

# you need to complete the rest of the file

animal_vtable: 
.word animal_destructor
.word 0                  #entry for speak


.text
.globl animal_constructor
animal_constructor:
	# remember to set up the vtable pointer
	# you can use a tail call here
	sw $a1,4($a0)
	
	la $t0,animal_vtable 
	sw $t0,0($a0)            #set up vtable
	
	
	la $a0,constructor_str
	j puts
	

.globl animal_destructor
animal_destructor:
	# and here
	la $a0,destructor_str
	j puts
	
	
.globl animal_get_name
animal_get_name:
    lw $v0,4($a0)   #animal_name
	jr	$ra
