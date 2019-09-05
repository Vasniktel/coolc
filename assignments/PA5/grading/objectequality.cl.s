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
	.word	2
_bool_tag:
	.word	3
_string_tag:
	.word	4
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
str_const13:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"B"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"A"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"./objectequality.cl"
	.byte	0	
	.align	2
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
bool_const0:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const5
	.word	str_const6
	.word	str_const7
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	A_protObj
	.word	A_init
	.word	B_protObj
	.word	B_init
	.word	Main_protObj
	.word	Main_init
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
B_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.foo
A_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.foo
Object_dispTab:
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
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	-1
Main_protObj:
	.word	7
	.word	3
	.word	Main_dispTab
	.word	-1
B_protObj:
	.word	6
	.word	4
	.word	B_dispTab
	.word	int_const1
	.word	-1
A_protObj:
	.word	5
	.word	4
	.word	A_dispTab
	.word	int_const1
	.word	-1
String_protObj:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.word	0
	.word	-1
Bool_protObj:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	2
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
	jal	Object_init
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
	la	$a0 B_protObj
	jal	Object.copy
	jal	B_init
	sw	$a0 0($sp)
	lw	$a0 0($sp)
	sw	$a0 -4($sp)
	lw	$a0 0($sp)
	lw	$t1 -4($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label0
	la	$a1 bool_const0
	addiu	$sp $sp -4
	jal	equality_test
	addiu	$sp $sp 4
label0:
	lw	$a0 12($a0)
	beqz	$a0 label1
	la	$a0 int_const1
	b	label3
label1:
	move	$a0 $s0
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 11
	jal	_dispatch_abort
label2:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
label3:
	lw	$a0 0($sp)
	sw	$a0 -4($sp)
	la	$a0 B_protObj
	addiu	$sp $sp -8
	jal	Object.copy
	jal	B_init
	addiu	$sp $sp 8
	lw	$t1 -4($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label4
	la	$a1 bool_const0
	addiu	$sp $sp -4
	jal	equality_test
	addiu	$sp $sp 4
label4:
	lw	$a0 12($a0)
	beqz	$a0 label6
	move	$a0 $s0
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 12
	jal	_dispatch_abort
label5:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
	b	label7
label6:
	la	$a0 int_const1
label7:
	la	$a0 A_protObj
	addiu	$sp $sp -4
	jal	Object.copy
	jal	A_init
	addiu	$sp $sp 4
	sw	$a0 -4($sp)
	la	$a0 A_protObj
	addiu	$sp $sp -8
	jal	Object.copy
	jal	A_init
	addiu	$sp $sp 8
	lw	$t1 -4($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label8
	la	$a1 bool_const0
	addiu	$sp $sp -4
	jal	equality_test
	addiu	$sp $sp 4
label8:
	lw	$a0 12($a0)
	beqz	$a0 label10
	move	$a0 $s0
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 13
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
	b	label11
label10:
	la	$a0 int_const1
label11:
	lw	$a0 0($sp)
	sw	$a0 -4($sp)
	lw	$a0 -4($sp)
	sw	$a0 -8($sp)
	lw	$a0 0($sp)
	lw	$t1 -8($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label12
	la	$a1 bool_const0
	addiu	$sp $sp -8
	jal	equality_test
	addiu	$sp $sp 8
label12:
	lw	$a0 12($a0)
	beqz	$a0 label13
	la	$a0 int_const1
	b	label15
label13:
	move	$a0 $s0
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 15
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	addiu	$sp $sp -8
	jalr		$t1
	addiu	$sp $sp 8
label15:
	la	$a0 int_const2
	sw	$a0 -8($sp)
	lw	$a0 -4($sp)
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 16
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	addiu	$sp $sp -12
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 -8($sp)
	lw	$a0 0($sp)
	lw	$t1 -8($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label17
	la	$a1 bool_const0
	addiu	$sp $sp -8
	jal	equality_test
	addiu	$sp $sp 8
label17:
	lw	$a0 12($a0)
	beqz	$a0 label18
	la	$a0 int_const1
	b	label20
label18:
	move	$a0 $s0
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 16
	jal	_dispatch_abort
label19:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	addiu	$sp $sp -8
	jalr		$t1
	addiu	$sp $sp 8
label20:
	move	$a0 $zero
	sw	$a0 0($sp)
	move	$a0 $zero
	sw	$a0 -4($sp)
	lw	$a0 0($sp)
	sw	$a0 -8($sp)
	lw	$a0 -4($sp)
	lw	$t1 -8($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label21
	la	$a1 bool_const0
	addiu	$sp $sp -8
	jal	equality_test
	addiu	$sp $sp 8
label21:
	lw	$a0 12($a0)
	beqz	$a0 label22
	la	$a0 int_const1
	b	label24
label22:
	move	$a0 $s0
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 19
	jal	_dispatch_abort
label23:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	addiu	$sp $sp -8
	jalr		$t1
	addiu	$sp $sp 8
label24:
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
B_init:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	jal	A_init
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
A_init:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	jal	Object_init
	la	$a0 int_const0
	sw	$a0 12($s0)
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
A.foo:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	lw	$a0 12($sp)
	sw	$a0 12($s0)
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 12
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
