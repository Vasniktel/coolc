# start of generated code
	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
_int_tag:
	.word	3
_bool_tag:
	.word	4
_string_tag:
	.word	5
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const15:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	5
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"continue"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"halt"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	" is prime.\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	5
	.word	10
	.word	String_dispTab
	.word	int_const12
	.ascii	"2 is trivially prime.\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	"./primes.cl"
	.byte	0	
	.align	2
	.word	-1
int_const12:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	22
	.word	-1
int_const11:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const10:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const9:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const8:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const7:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const6:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const5:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const3:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const2:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	500
	.word	-1
int_const1:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const0:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
bool_const0:
	.word	4
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	4
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const9
	.word	str_const10
	.word	str_const14
	.word	str_const11
	.word	str_const12
	.word	str_const13
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Main_protObj
	.word	Main_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
IO_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.main
	.word	-1
Main_protObj:
	.word	2
	.word	8
	.word	Main_dispTab
	.word	int_const0
	.word	int_const0
	.word	int_const0
	.word	int_const0
	.word	0
	.word	-1
String_protObj:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.word	0
	.word	-1
Bool_protObj:
	.word	4
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
IO_protObj:
	.word	1
	.word	3
	.word	IO_dispTab
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
Main_init:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	jal	IO_init
	la	$a0 str_const1
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 35
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	addiu	$sp $sp -4
	jalr		$t1
	la	$a0 int_const1
	sw	$a0 12($s0)
	lw	$a0 12($s0)
	sw	$a0 16($s0)
	la	$a0 int_const2
	sw	$a0 24($s0)
label1:
	la	$a0 bool_const1
	lw	$a0 12($a0)
	beqz	$a0 label23
	lw	$a0 16($s0)
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	la	$a0 int_const3
	lw	$a0 12($a0)
	sw	$a0 -4($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -8
	jal	Object.copy
	addiu	$sp $sp 8
	lw	$t2 -4($sp)
	lw	$t1 0($sp)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 16($s0)
	la	$a0 int_const1
	sw	$a0 20($s0)
label2:
	lw	$a0 16($s0)
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	lw	$a0 20($s0)
	lw	$a0 12($a0)
	sw	$a0 -4($sp)
	lw	$a0 20($s0)
	lw	$a0 12($a0)
	sw	$a0 -8($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -12
	jal	Object.copy
	addiu	$sp $sp 12
	lw	$t2 -8($sp)
	lw	$t1 -4($sp)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$a0 12($a0)
	lw	$t1 0($sp)
	blt	$t1 $a0 label3
	la	$a0 bool_const0
	b	label4
label3:
	la	$a0 bool_const1
label4:
	lw	$a0 12($a0)
	beqz	$a0 label5
	la	$a0 bool_const0
	b	label10
label5:
	lw	$a0 16($s0)
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	lw	$a0 20($s0)
	lw	$a0 12($a0)
	sw	$a0 -4($sp)
	lw	$a0 16($s0)
	lw	$a0 12($a0)
	sw	$a0 -8($sp)
	lw	$a0 20($s0)
	lw	$t1 12($a0)
	bne	$t1 $zero label6
	jal	Object.abort
label6:
	sw	$t1 -12($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -16
	jal	Object.copy
	addiu	$sp $sp 16
	lw	$t2 -12($sp)
	lw	$t1 -8($sp)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$a0 12($a0)
	sw	$a0 -8($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -12
	jal	Object.copy
	addiu	$sp $sp 12
	lw	$t2 -8($sp)
	lw	$t1 -4($sp)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$a0 12($a0)
	sw	$a0 -4($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -8
	jal	Object.copy
	addiu	$sp $sp 8
	lw	$t2 -4($sp)
	lw	$t1 0($sp)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 0($sp)
	la	$a0 int_const0
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label7
	la	$a1 bool_const0
	jal	equality_test
label7:
	lw	$a0 12($a0)
	beqz	$a0 label8
	la	$a0 bool_const0
	b	label9
label8:
	la	$a0 bool_const1
label9:
label10:
	lw	$a0 12($a0)
	beqz	$a0 label11
	lw	$a0 20($s0)
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	la	$a0 int_const3
	lw	$a0 12($a0)
	sw	$a0 -4($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -8
	jal	Object.copy
	addiu	$sp $sp 8
	lw	$t2 -4($sp)
	lw	$t1 0($sp)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 20($s0)
	b	label2
label11:
	move	$a0 $zero
	lw	$a0 16($s0)
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	lw	$a0 20($s0)
	lw	$a0 12($a0)
	sw	$a0 -4($sp)
	lw	$a0 20($s0)
	lw	$a0 12($a0)
	sw	$a0 -8($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -12
	jal	Object.copy
	addiu	$sp $sp 12
	lw	$t2 -8($sp)
	lw	$t1 -4($sp)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$a0 12($a0)
	lw	$t1 0($sp)
	blt	$t1 $a0 label12
	la	$a0 bool_const0
	b	label13
label12:
	la	$a0 bool_const1
label13:
	lw	$a0 12($a0)
	beqz	$a0 label16
	lw	$a0 16($s0)
	sw	$a0 12($s0)
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 67
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	addiu	$sp $sp -4
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 68
	jal	_dispatch_abort
label15:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	addiu	$sp $sp -4
	jalr		$t1
	b	label17
label16:
	la	$a0 int_const0
label17:
	lw	$a0 24($s0)
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	lw	$a0 16($s0)
	lw	$a0 12($a0)
	lw	$t1 0($sp)
	ble	$t1 $a0 label18
	la	$a0 bool_const0
	b	label19
label18:
	la	$a0 bool_const1
label19:
	lw	$a0 12($a0)
	beqz	$a0 label21
	la	$a0 str_const3
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 75
	jal	_dispatch_abort
label20:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	b	label22
label21:
	la	$a0 str_const4
label22:
	b	label1
label23:
	move	$a0 $zero
	sw	$a0 28($s0)
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
Main.main:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	la	$a0 int_const0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
String_init:
	jr	$ra	
Bool_init:
	jr	$ra	
Int_init:
	jr	$ra	
IO_init:
	jr	$ra	
Object_init:
	jr	$ra	

# end of generated code
