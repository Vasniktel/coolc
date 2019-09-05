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
str_const11:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const6
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const7
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	5
	.word	8
	.word	String_dispTab
	.word	int_const10
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	5
	.word	8
	.word	String_dispTab
	.word	int_const11
	.ascii	"./bigexpr.cl"
	.byte	0	
	.align	2
	.word	-1
int_const11:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	12
	.word	-1
int_const10:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const9:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const8:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const7:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const6:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const5:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const4:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const3:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const1:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const0:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	5
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
	.word	str_const5
	.word	str_const6
	.word	str_const10
	.word	str_const7
	.word	str_const8
	.word	str_const9
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
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.main
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	-1
Main_protObj:
	.word	2
	.word	3
	.word	Main_dispTab
	.word	-1
String_protObj:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const6
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
	sw	$a0 0($sp)
	la	$a0 int_const1
	sw	$a0 0($sp)
	lw	$a0 12($a0)
	sw	$a0 -4($sp)
	lw	$a0 0($sp)
	lw	$a0 12($a0)
	sw	$a0 -8($sp)
	la	$a0 int_const1
	lw	$a0 12($a0)
	sw	$a0 -12($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -16
	jal	Object.copy
	addiu	$sp $sp 16
	lw	$t2 -12($sp)
	lw	$t1 -8($sp)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 0($sp)
	lw	$a0 12($a0)
	sw	$a0 -8($sp)
	la	$a0 int_const2
	lw	$a0 12($a0)
	sw	$a0 -12($sp)
	la	$a0 int_const3
	lw	$a0 12($a0)
	sw	$a0 -16($sp)
	la	$a0 int_const0
	lw	$a0 12($a0)
	sw	$a0 -20($sp)
	la	$a0 int_const4
	lw	$a0 12($a0)
	sw	$a0 -24($sp)
	la	$a0 int_const5
	lw	$a0 12($a0)
	sw	$a0 -28($sp)
	lw	$a0 0($sp)
	lw	$a0 12($a0)
	sw	$a0 -32($sp)
	la	$a0 int_const4
	lw	$a0 12($a0)
	sw	$a0 -36($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -40
	jal	Object.copy
	addiu	$sp $sp 40
	lw	$t2 -36($sp)
	lw	$t1 -32($sp)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$a0 12($a0)
	sw	$a0 -32($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -36
	jal	Object.copy
	addiu	$sp $sp 36
	lw	$t2 -32($sp)
	lw	$t1 -28($sp)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$a0 12($a0)
	sw	$a0 -28($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -32
	jal	Object.copy
	addiu	$sp $sp 32
	lw	$t2 -28($sp)
	lw	$t1 -24($sp)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$a0 12($a0)
	sw	$a0 -24($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -28
	jal	Object.copy
	addiu	$sp $sp 28
	lw	$t2 -24($sp)
	lw	$t1 -20($sp)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$a0 12($a0)
	sw	$a0 -20($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -24
	jal	Object.copy
	addiu	$sp $sp 24
	lw	$t2 -20($sp)
	lw	$t1 -16($sp)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$a0 12($a0)
	sw	$a0 -16($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -20
	jal	Object.copy
	addiu	$sp $sp 20
	lw	$t2 -16($sp)
	lw	$t1 -12($sp)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$a0 12($a0)
	sw	$a0 -12($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -16
	jal	Object.copy
	addiu	$sp $sp 16
	lw	$t2 -12($sp)
	lw	$t1 -8($sp)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$a0 12($a0)
	sw	$a0 -8($sp)
	la	$a0 Int_protObj
	addiu	$sp $sp -12
	jal	Object.copy
	addiu	$sp $sp 12
	lw	$t2 -8($sp)
	lw	$t1 -4($sp)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 -4($sp)
	move	$a0 $s0
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 4
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	addiu	$sp $sp -8
	jalr		$t1
	addiu	$sp $sp 4
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
