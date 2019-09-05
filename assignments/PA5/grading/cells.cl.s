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
str_const16:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	5
	.word	9
	.word	String_dispTab
	.word	int_const4
	.ascii	"CellularAutomaton"
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
	.word	int_const3
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
	.word	int_const7
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
	.word	int_const8
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	5
	.word	8
	.word	String_dispTab
	.word	int_const10
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	5
	.word	9
	.word	String_dispTab
	.word	int_const11
	.ascii	"         X         "
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"."
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"X"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"./cells.cl"
	.byte	0	
	.align	2
	.word	-1
int_const11:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	19
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
	.word	17
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
	.word	20
	.word	-1
int_const1:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	1
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
	.word	str_const15
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	CellularAutomaton_protObj
	.word	CellularAutomaton_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	Main_protObj
	.word	Main_init
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
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
IO_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
CellularAutomaton_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	CellularAutomaton.init
	.word	CellularAutomaton.print
	.word	CellularAutomaton.num_cells
	.word	CellularAutomaton.cell
	.word	CellularAutomaton.cell_left_neighbor
	.word	CellularAutomaton.cell_right_neighbor
	.word	CellularAutomaton.cell_at_next_evolution
	.word	CellularAutomaton.evolve
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
	.word	6
	.word	4
	.word	Main_dispTab
	.word	0
	.word	-1
CellularAutomaton_protObj:
	.word	2
	.word	4
	.word	CellularAutomaton_dispTab
	.word	str_const16
	.word	-1
String_protObj:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const1
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
	la	$a0 str_const4
	sw	$a0 0($sp)
	la	$a0 CellularAutomaton_protObj
	addiu	$sp $sp -4
	jal	Object.copy
	jal	CellularAutomaton_init
	addiu	$sp $sp 4
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 83
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	addiu	$sp $sp -4
	jalr		$t1
	sw	$a0 12($s0)
	lw	$a0 12($s0)
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 84
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	la	$a0 int_const2
	sw	$a0 0($sp)
label2:
	la	$a0 int_const1
	lw	$a0 12($a0)
	sw	$a0 -4($sp)
	lw	$a0 0($sp)
	lw	$a0 12($a0)
	lw	$t1 -4($sp)
	blt	$t1 $a0 label3
	la	$a0 bool_const0
	b	label4
label3:
	la	$a0 bool_const1
label4:
	lw	$a0 12($a0)
	beqz	$a0 label7
	lw	$a0 12($s0)
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 88
	jal	_dispatch_abort
label5:
	lw	$t1 8($a0)
	lw	$t1 56($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
	lw	$a0 12($s0)
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 89
	jal	_dispatch_abort
label6:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
	lw	$a0 0($sp)
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
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 0($sp)
	b	label2
label7:
	move	$a0 $zero
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
CellularAutomaton_init:
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
CellularAutomaton.init:
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
CellularAutomaton.print:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	la	$a0 str_const1
	sw	$a0 0($sp)
	lw	$a0 12($s0)
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 17
	jal	_dispatch_abort
label8:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	addiu	$sp $sp -4
	jalr		$t1
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 17
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	addiu	$sp $sp -4
	jalr		$t1
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
CellularAutomaton.num_cells:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	lw	$a0 12($s0)
	bne	$a0 $zero label10
	la	$a0 str_const0
	li	$t1 23
	jal	_dispatch_abort
label10:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 8
	jr	$ra	
CellularAutomaton.cell:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	lw	$a0 12($sp)
	sw	$a0 0($sp)
	la	$a0 int_const0
	sw	$a0 -4($sp)
	lw	$a0 12($s0)
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 27
	jal	_dispatch_abort
label11:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	addiu	$sp $sp -8
	jalr		$t1
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 12
	jr	$ra	
CellularAutomaton.cell_left_neighbor:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	lw	$a0 12($sp)
	sw	$a0 0($sp)
	la	$a0 int_const1
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label12
	la	$a1 bool_const0
	jal	equality_test
label12:
	lw	$a0 12($a0)
	beqz	$a0 label15
	move	$a0 $s0
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 32
	jal	_dispatch_abort
label13:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	la	$a0 int_const0
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
	move	$a0 $s0
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 32
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	addiu	$sp $sp -4
	jalr		$t1
	b	label17
label15:
	lw	$a0 12($sp)
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	la	$a0 int_const0
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
	move	$a0 $s0
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 34
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	addiu	$sp $sp -4
	jalr		$t1
label17:
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 12
	jr	$ra	
CellularAutomaton.cell_right_neighbor:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	lw	$a0 12($sp)
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label18
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
label18:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
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
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label19
	la	$a1 bool_const0
	jal	equality_test
label19:
	lw	$a0 12($a0)
	beqz	$a0 label21
	la	$a0 int_const1
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 40
	jal	_dispatch_abort
label20:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	addiu	$sp $sp -4
	jalr		$t1
	b	label23
label21:
	lw	$a0 12($sp)
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	la	$a0 int_const0
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
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 42
	jal	_dispatch_abort
label22:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	addiu	$sp $sp -4
	jalr		$t1
label23:
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 12
	jr	$ra	
CellularAutomaton.cell_at_next_evolution:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	lw	$a0 12($sp)
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 49
	jal	_dispatch_abort
label24:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	addiu	$sp $sp -4
	jalr		$t1
	sw	$a0 0($sp)
	la	$a0 str_const2
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label25
	la	$a1 bool_const0
	jal	equality_test
label25:
	lw	$a0 12($a0)
	beqz	$a0 label26
	la	$a0 int_const0
	b	label27
label26:
	la	$a0 int_const1
label27:
	lw	$a0 12($a0)
	sw	$a0 0($sp)
	lw	$a0 12($sp)
	sw	$a0 -4($sp)
	move	$a0 $s0
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 50
	jal	_dispatch_abort
label28:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	addiu	$sp $sp -8
	jalr		$t1
	addiu	$sp $sp 4
	sw	$a0 -4($sp)
	la	$a0 str_const2
	lw	$t1 -4($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label29
	la	$a1 bool_const0
	addiu	$sp $sp -4
	jal	equality_test
	addiu	$sp $sp 4
label29:
	lw	$a0 12($a0)
	beqz	$a0 label30
	la	$a0 int_const0
	b	label31
label30:
	la	$a0 int_const1
label31:
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
	lw	$a0 12($sp)
	sw	$a0 -4($sp)
	move	$a0 $s0
	bne	$a0 $zero label32
	la	$a0 str_const0
	li	$t1 51
	jal	_dispatch_abort
label32:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	addiu	$sp $sp -8
	jalr		$t1
	addiu	$sp $sp 4
	sw	$a0 -4($sp)
	la	$a0 str_const2
	lw	$t1 -4($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label33
	la	$a1 bool_const0
	addiu	$sp $sp -4
	jal	equality_test
	addiu	$sp $sp 4
label33:
	lw	$a0 12($a0)
	beqz	$a0 label34
	la	$a0 int_const0
	b	label35
label34:
	la	$a0 int_const1
label35:
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
	sw	$a0 0($sp)
	la	$a0 int_const0
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label36
	la	$a1 bool_const0
	jal	equality_test
label36:
	lw	$a0 12($a0)
	beqz	$a0 label37
	la	$a0 str_const2
	b	label38
label37:
	la	$a0 str_const3
label38:
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 12
	jr	$ra	
CellularAutomaton.evolve:
	sw	$ra 0($sp)
	sw	$s0 -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	la	$a0 int_const1
	sw	$a0 0($sp)
	move	$a0 $s0
	bne	$a0 $zero label39
	la	$a0 str_const0
	li	$t1 62
	jal	_dispatch_abort
label39:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	addiu	$sp $sp -4
	jalr		$t1
	addiu	$sp $sp 4
	sw	$a0 -4($sp)
	la	$a0 str_const16
	sw	$a0 -8($sp)
label40:
	lw	$a0 0($sp)
	lw	$a0 12($a0)
	sw	$a0 -12($sp)
	lw	$a0 -4($sp)
	lw	$a0 12($a0)
	lw	$t1 -12($sp)
	blt	$t1 $a0 label41
	la	$a0 bool_const0
	b	label42
label41:
	la	$a0 bool_const1
label42:
	lw	$a0 12($a0)
	beqz	$a0 label45
	lw	$a0 0($sp)
	sw	$a0 -12($sp)
	move	$a0 $s0
	bne	$a0 $zero label43
	la	$a0 str_const0
	li	$t1 67
	jal	_dispatch_abort
label43:
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	addiu	$sp $sp -16
	jalr		$t1
	addiu	$sp $sp 12
	sw	$a0 -12($sp)
	lw	$a0 -8($sp)
	bne	$a0 $zero label44
	la	$a0 str_const0
	li	$t1 67
	jal	_dispatch_abort
label44:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	addiu	$sp $sp -16
	jalr		$t1
	addiu	$sp $sp 12
	sw	$a0 -8($sp)
	lw	$a0 0($sp)
	lw	$a0 12($a0)
	sw	$a0 -12($sp)
	la	$a0 int_const0
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
	sw	$a0 0($sp)
	b	label40
label45:
	move	$a0 $zero
	lw	$a0 -8($sp)
	sw	$a0 12($s0)
	move	$a0 $s0
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
