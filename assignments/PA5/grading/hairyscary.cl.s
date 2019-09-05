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
	.word	6
_bool_tag:
	.word	7
_string_tag:
	.word	8
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
str_const16:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const2
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bazz"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Razz"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bar"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Foo"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	8
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	8
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	8
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	8
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	8
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"do nothing"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	8
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"./hairyscary.cl"
	.byte	0	
	.align	2
	.word	-1
int_const9:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	15
	.word	-1
int_const8:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const7:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const6:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const5:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const3:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const1:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const0:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
bool_const0:
	.word	7
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	7
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const6
	.word	str_const7
	.word	str_const14
	.word	str_const11
	.word	str_const13
	.word	str_const12
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const15
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Bazz_protObj
	.word	Bazz_init
	.word	Foo_protObj
	.word	Foo_init
	.word	Razz_protObj
	.word	Razz_init
	.word	Bar_protObj
	.word	Bar_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	Main_protObj
	.word	Main_init
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
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
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
Bazz_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Bazz.doh
Bar_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
Foo_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
Razz_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
	.word	-1
Main_protObj:
	.word	9
	.word	7
	.word	Main_dispTab
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
Bazz_protObj:
	.word	2
	.word	6
	.word	Bazz_dispTab
	.word	int_const2
	.word	0
	.word	0
	.word	-1
Razz_protObj:
	.word	4
	.word	10
	.word	Razz_dispTab
	.word	int_const2
	.word	0
	.word	0
	.word	0
	.word	int_const2
	.word	0
	.word	int_const2
	.word	-1
Bar_protObj:
	.word	5
	.word	12
	.word	Bar_dispTab
	.word	int_const2
	.word	0
	.word	0
	.word	0
	.word	int_const2
	.word	0
	.word	int_const2
	.word	int_const2
	.word	0
	.word	-1
Foo_protObj:
	.word	3
	.word	8
	.word	Foo_dispTab
	.word	int_const2
	.word	0
	.word	0
	.word	0
	.word	int_const2
	.word	-1
String_protObj:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const2
	.word	0
	.word	-1
Bool_protObj:
	.word	7
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	6
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
	la	$a0 Bazz_protObj
	jal	Object.copy
	jal	Bazz_init
	sw	$a0 12($s0)
	la	$a0 Foo_protObj
	jal	Object.copy
	jal	Foo_init
	sw	$a0 16($s0)
	la	$a0 Razz_protObj
	jal	Object.copy
	jal	Razz_init
	sw	$a0 20($s0)
	la	$a0 Bar_protObj
	jal	Object.copy
	jal	Bar_init
	sw	$a0 24($s0)
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
	la	$a0 str_const1
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
Bazz_init:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	jal	IO_init
	la	$a0 int_const1
	sw	$a0 12($s0)
	move	$a0 $s0
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 39
	jal	_case_abort2
label0:
	lw	$t1 0($a0)
	blt	$t1 5 label1
	bgt	$t1 5 label1
	sw	$a0 0($sp)
	lw	$a0 0($sp)
	b	label5
label1:
	blt	$t1 4 label2
	bgt	$t1 5 label2
	sw	$a0 0($sp)
	la	$a0 Bar_protObj
	addiu	$sp $sp -4
	jal	Object.copy
	jal	Bar_init
	addiu	$sp $sp 4
	b	label5
label2:
	blt	$t1 3 label3
	bgt	$t1 5 label3
	sw	$a0 0($sp)
	la	$a0 Razz_protObj
	addiu	$sp $sp -4
	jal	Object.copy
	jal	Razz_init
	addiu	$sp $sp 4
	b	label5
label3:
	blt	$t1 2 label4
	bgt	$t1 5 label4
	sw	$a0 0($sp)
	la	$a0 Foo_protObj
	addiu	$sp $sp -4
	jal	Object.copy
	jal	Foo_init
	addiu	$sp $sp 4
	b	label5
label4:
	jal	_case_abort
label5:
	sw	$a0 16($s0)
	move	$a0 $s0
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 46
	jal	_dispatch_abort
label6:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
	sw	$a0 20($s0)
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
Bazz.printh:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 48
	jal	_dispatch_abort
label7:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	addiu	$sp $sp -4
	jalr		$t1
	la	$a0 int_const2
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
Bazz.doh:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	lw	$a0 12($s0)
	lw	$a0 12($a0)
	sw	$a0 -4($sp)
	la	$a0 int_const1
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
	sw	$a0 12($s0)
	lw	$a0 0($sp)
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
Razz_init:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	jal	Foo_init
	move	$a0 $s0
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 26
	jal	_case_abort2
label8:
	lw	$t1 0($a0)
	blt	$t1 5 label9
	bgt	$t1 5 label9
	sw	$a0 0($sp)
	lw	$a0 0($sp)
	b	label11
label9:
	blt	$t1 4 label10
	bgt	$t1 5 label10
	sw	$a0 0($sp)
	la	$a0 Bar_protObj
	addiu	$sp $sp -4
	jal	Object.copy
	jal	Bar_init
	addiu	$sp $sp 4
	b	label11
label10:
	jal	_case_abort
label11:
	sw	$a0 32($s0)
	lw	$a0 24($s0)
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label12:
	la	$t1 Bazz_dispTab
	lw	$t1 32($t1)
	jalr		$t1
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	lw	$a0 16($s0)
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label13:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
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
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	lw	$a0 32($s0)
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
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
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label15:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
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
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
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
	sw	$a0 36($s0)
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
Bar_init:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	jal	Razz_init
	move	$a0 $s0
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 18
	jal	_dispatch_abort
label17:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	sw	$a0 40($s0)
	move	$a0 $s0
	bne	$a0 $zero label18
	la	$a0 str_const0
	li	$t1 20
	jal	_dispatch_abort
label18:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
	sw	$a0 44($s0)
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
Foo_init:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	jal	Bazz_init
	move	$a0 $s0
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 4
	jal	_case_abort2
label19:
	lw	$t1 0($a0)
	blt	$t1 5 label20
	bgt	$t1 5 label20
	sw	$a0 0($sp)
	lw	$a0 0($sp)
	b	label23
label20:
	blt	$t1 4 label21
	bgt	$t1 5 label21
	sw	$a0 0($sp)
	la	$a0 Bar_protObj
	addiu	$sp $sp -4
	jal	Object.copy
	jal	Bar_init
	addiu	$sp $sp 4
	b	label23
label21:
	blt	$t1 3 label22
	bgt	$t1 5 label22
	sw	$a0 0($sp)
	la	$a0 Razz_protObj
	addiu	$sp $sp -4
	jal	Object.copy
	jal	Razz_init
	addiu	$sp $sp 4
	b	label23
label22:
	jal	_case_abort
label23:
	sw	$a0 24($s0)
	lw	$a0 24($s0)
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
label24:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	lw	$a0 16($s0)
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
label25:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
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
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
label26:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
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
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label27
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
label27:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
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
	sw	$a0 28($s0)
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
Foo.doh:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	lw	$a0 12($s0)
	lw	$a0 12($a0)
	sw	$a0 -4($sp)
	la	$a0 int_const0
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
	sw	$a0 12($s0)
	lw	$a0 0($sp)
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
