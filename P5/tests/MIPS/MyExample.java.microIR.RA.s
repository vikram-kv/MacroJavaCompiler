 	 .text 
 	 .globl 	 main
 main:
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 44
 	 li $t9, 4
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 4
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, Test_Start
 	 sw $t7, 0($t8) 
 	 sw $t8, 0($t9) 
 	 lw $t8, 0($t9)
 	 lw $t8, 0($t8)
 	 sw $t0, -8($fp)
 	 sw $t1, -12($fp)
 	 sw $t2, -16($fp)
 	 sw $t3, -20($fp)
 	 sw $t4, -24($fp)
 	 sw $t5, -28($fp)
 	 sw $t6, -32($fp)
 	 sw $t7, -36($fp)
 	 sw $t8, -40($fp)
 	 sw $t9, -44($fp)
 	 move $a0, $t9
 	 jalr $t8
 	 lw $t0, -8($fp)
 	 lw $t1, -12($fp)
 	 lw $t2, -16($fp)
 	 lw $t3, -20($fp)
 	 lw $t4, -24($fp)
 	 lw $t5, -28($fp)
 	 lw $t6, -32($fp)
 	 lw $t7, -36($fp)
 	 lw $t8, -40($fp)
 	 lw $t9, -44($fp)
 	 move $t8, $v0
 	 move $a0, $t8
 	 jal _print 
 	 addu $sp, $sp, 44
 	 lw $ra, -4($fp) 
 	 jal _exitret 
 
 
 	 .text 
 	 .globl 	 Base_set
 Base_set:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 move $t7, $t9
 	 add $t7, $t9, $t7
 	 sw $t7, 12($t8) 
 	 lw $t7, 12($t8)
 	 li $t6, 2
 	 add $t6, $t7, $t6
 	 move $t9, $t6
 	 lw $t8, 12($t8)
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Base_get
 Base_get:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 li $t8, 0
 	 sw $t8, 12($t9) 
 	 lw $t9, 12($t9)
 	 li $t8, 30
 	 add $t8, $t9, $t8
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Derived_set
 Derived_set:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 li $t7, 1
 L0:
	 nop
 	 li $t6, 3
 	 sle $t6, $t7, $t6
	 bne $t6, 1, L1
 	 move $a0, $t7
 	 jal _print 
 	 li $t6, 1
 	 add $t6, $t7, $t6
 	 move $t7, $t6
 	 li $t6, 1
 	 sub $t6, $t9, $t6
 	 move $t9, $t6
	 b L0
 L1:
	 nop
 	 move $a0, $t9
 	 jal _print 
 	 li $t7, 4
 	 mul $t7, $t9, $t7
 	 sw $t7, 12($t8) 
 	 lw $t8, 12($t8)
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Derived_shortCircuit
 Derived_shortCircuit:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t9, $a0
 	 li $t9, 20
 	 add $t8, $t9, 1
 	 mul $t8, $t8, 4
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 sw $t9, 0($t8) 
 	 li $t9, 2
 	 li $t7, 11
 	 mul $t9, $t9, 4
 	 add $t9, $t8, $t9
 	 sw $t7, 4($t9) 
 	 li $t9, 0
	 b L3
 	 lw $t7, 0($t9)
 	 lw $t7, 12($t7)
 	 li $t6, 99
 	 sw $t0, -12($fp)
 	 sw $t1, -16($fp)
 	 sw $t2, -20($fp)
 	 sw $t3, -24($fp)
 	 sw $t4, -28($fp)
 	 sw $t5, -32($fp)
 	 sw $t6, -36($fp)
 	 sw $t7, -40($fp)
 	 sw $t8, -44($fp)
 	 sw $t9, -48($fp)
 	 move $a0, $t9
 	 move $a1, $t6
 	 jalr $t7
 	 lw $t0, -12($fp)
 	 lw $t1, -16($fp)
 	 lw $t2, -20($fp)
 	 lw $t3, -24($fp)
 	 lw $t4, -28($fp)
 	 lw $t5, -32($fp)
 	 lw $t6, -36($fp)
 	 lw $t7, -40($fp)
 	 lw $t8, -44($fp)
 	 lw $t9, -48($fp)
 	 move $t6, $v0
 	 sne $t6, $t6, 1
	 bne $t6, 1, L3
 	 li $t6, 999
 	 move $a0, $t6
 	 jal _print 
	 b L2
 L3:
	 nop
 	 li $t6, 2
 	 mul $t6, $t6, 4
 	 add $t6, $t8, $t6
 	 lw $t6, 4($t6)
 	 move $a0, $t6
 	 jal _print 
 	 lw $t8, 0($t8)
 	 move $a0, $t8
 	 jal _print 
 L2:
	 nop
 	 li $t8, 1
 	 move $v0, $t8
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Derived_printInt
 Derived_printInt:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a1
 	 move $a0, $t9
 	 jal _print 
 	 li $t9, 1
 	 move $v0, $t9
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Test_Start
 Test_Start:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 li $t9, 20
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 16
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, Derived_set
 	 sw $t7, 0($t8) 
 	 la $t7, Base_get
 	 sw $t7, 4($t8) 
 	 la $t7, Derived_shortCircuit
 	 sw $t7, 8($t8) 
 	 la $t7, Derived_printInt
 	 sw $t7, 12($t8) 
 	 sw $t8, 0($t9) 
 	 move $t8, $t9
 	 lw $t7, 0($t8)
 	 lw $t7, 0($t7)
 	 li $t6, 16
 	 move $a0, $t6
 	 jal _halloc
 	 move $t6, $v0 
 	 li $t5, 8
 	 move $a0, $t5
 	 jal _halloc
 	 move $t5, $v0 
 	 la $t4, Base_get
 	 sw $t4, 4($t5) 
 	 la $t4, Base_set
 	 sw $t4, 0($t5) 
 	 sw $t5, 0($t6) 
 	 lw $t5, 0($t6)
 	 lw $t5, 4($t5)
 	 sw $t0, -12($fp)
 	 sw $t1, -16($fp)
 	 sw $t2, -20($fp)
 	 sw $t3, -24($fp)
 	 sw $t4, -28($fp)
 	 sw $t5, -32($fp)
 	 sw $t6, -36($fp)
 	 sw $t7, -40($fp)
 	 sw $t8, -44($fp)
 	 sw $t9, -48($fp)
 	 move $a0, $t6
 	 jalr $t5
 	 lw $t0, -12($fp)
 	 lw $t1, -16($fp)
 	 lw $t2, -20($fp)
 	 lw $t3, -24($fp)
 	 lw $t4, -28($fp)
 	 lw $t5, -32($fp)
 	 lw $t6, -36($fp)
 	 lw $t7, -40($fp)
 	 lw $t8, -44($fp)
 	 lw $t9, -48($fp)
 	 move $t5, $v0
 	 sw $t0, -12($fp)
 	 sw $t1, -16($fp)
 	 sw $t2, -20($fp)
 	 sw $t3, -24($fp)
 	 sw $t4, -28($fp)
 	 sw $t5, -32($fp)
 	 sw $t6, -36($fp)
 	 sw $t7, -40($fp)
 	 sw $t8, -44($fp)
 	 sw $t9, -48($fp)
 	 move $a0, $t8
 	 move $a1, $t5
 	 jalr $t7
 	 lw $t0, -12($fp)
 	 lw $t1, -16($fp)
 	 lw $t2, -20($fp)
 	 lw $t3, -24($fp)
 	 lw $t4, -28($fp)
 	 lw $t5, -32($fp)
 	 lw $t6, -36($fp)
 	 lw $t7, -40($fp)
 	 lw $t8, -44($fp)
 	 lw $t9, -48($fp)
 	 move $t5, $v0
 	 move $a0, $t5
 	 jal _print 
 	 lw $t5, 0($t9)
 	 lw $t5, 8($t5)
 	 sw $t0, -12($fp)
 	 sw $t1, -16($fp)
 	 sw $t2, -20($fp)
 	 sw $t3, -24($fp)
 	 sw $t4, -28($fp)
 	 sw $t5, -32($fp)
 	 sw $t6, -36($fp)
 	 sw $t7, -40($fp)
 	 sw $t8, -44($fp)
 	 sw $t9, -48($fp)
 	 move $a0, $t9
 	 jalr $t5
 	 lw $t0, -12($fp)
 	 lw $t1, -16($fp)
 	 lw $t2, -20($fp)
 	 lw $t3, -24($fp)
 	 lw $t4, -28($fp)
 	 lw $t5, -32($fp)
 	 lw $t6, -36($fp)
 	 lw $t7, -40($fp)
 	 lw $t8, -44($fp)
 	 lw $t9, -48($fp)
 	 move $t5, $v0
 	 li $t5, 1
 	 move $v0, $t5
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl _halloc 
 _halloc: 
 	 li $v0, 9 
 	 syscall 
 	 jr $ra 
 

 	 .text 
 	 .globl _error 
 _error: 
 	 li $v0, 4
 	 syscall
 	 li $v0, 10
 	 syscall
 

 	 .text 
 	 .globl _print 
 _print: 
 	 li $v0, 1 
 	 syscall 
 	 la $a0, newline 
 	 li $v0, 4 
 	 syscall 
 	 jr $ra 
 

 	 .text 
 	 .globl _exitret 
 _exitret: 
 	 li $v0, 10
 	 syscall 
 

 	 .data
 	 .align 0
 newline: 	.asciiz "\n"

 	 .data
 	 .align 0
 error_msg:	.asciiz " ERROR : Abnormally terminated!\n "
