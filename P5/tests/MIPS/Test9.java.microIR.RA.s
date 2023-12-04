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
 	 .globl 	 ArrayTest_test
 ArrayTest_test:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 add $t7, $t9, 1
 	 mul $t7, $t7, 4
 	 move $a0, $t7
 	 jal _halloc
 	 move $t7, $v0 
 	 sw $t9, 0($t7) 
 	 li $t9, 0
 	 sw $t9, 4($t8) 
 	 lw $t8, 4($t8)
 	 move $a0, $t8
 	 jal _print 
 	 lw $t8, 0($t7)
 	 move $a0, $t8
 	 jal _print 
 	 li $t8, 0
 	 li $t9, 111
 	 move $a0, $t9
 	 jal _print 
 L0:
	 nop
 	 lw $t9, 0($t7)
 	 li $t6, 1
 	 sub $t6, $t9, $t6
 	 sle $t6, $t8, $t6
	 bne $t6, 1, L1
 	 li $t6, 1
 	 add $t6, $t8, $t6
 	 move $a0, $t6
 	 jal _print 
 	 li $t6, 1
 	 add $t6, $t8, $t6
 	 mul $t9, $t8, 4
 	 add $t9, $t7, $t9
 	 sw $t6, 4($t9) 
 	 li $t9, 1
 	 add $t9, $t8, $t9
 	 move $t8, $t9
	 b L0
 L1:
	 nop
 	 li $t9, 222
 	 move $a0, $t9
 	 jal _print 
 	 li $t9, 0
 	 move $t8, $t9
 L2:
	 nop
 	 lw $t9, 0($t7)
 	 li $t6, 1
 	 sub $t6, $t9, $t6
 	 sle $t6, $t8, $t6
	 bne $t6, 1, L3
 	 mul $t6, $t8, 4
 	 add $t6, $t7, $t6
 	 lw $t6, 4($t6)
 	 move $a0, $t6
 	 jal _print 
 	 li $t6, 1
 	 add $t6, $t8, $t6
 	 move $t8, $t6
	 b L2
 L3:
	 nop
 	 li $t8, 333
 	 move $a0, $t8
 	 jal _print 
 	 lw $t7, 0($t7)
 	 move $v0, $t7
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 B_test
 B_test:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 add $t7, $t9, 1
 	 mul $t7, $t7, 4
 	 move $a0, $t7
 	 jal _halloc
 	 move $t7, $v0 
 	 sw $t9, 0($t7) 
 	 li $t9, 12
 	 sw $t9, 16($t8) 
 	 lw $t8, 16($t8)
 	 move $a0, $t8
 	 jal _print 
 	 lw $t8, 0($t7)
 	 move $a0, $t8
 	 jal _print 
 	 li $t8, 0
 	 li $t9, 111
 	 move $a0, $t9
 	 jal _print 
 L4:
	 nop
 	 lw $t9, 0($t7)
 	 li $t6, 1
 	 sub $t6, $t9, $t6
 	 sle $t6, $t8, $t6
	 bne $t6, 1, L5
 	 li $t6, 1
 	 add $t6, $t8, $t6
 	 move $a0, $t6
 	 jal _print 
 	 li $t6, 1
 	 add $t6, $t8, $t6
 	 mul $t9, $t8, 4
 	 add $t9, $t7, $t9
 	 sw $t6, 4($t9) 
 	 li $t9, 1
 	 add $t9, $t8, $t9
 	 move $t8, $t9
	 b L4
 L5:
	 nop
 	 li $t9, 222
 	 move $a0, $t9
 	 jal _print 
 	 li $t9, 0
 	 move $t8, $t9
 L6:
	 nop
 	 lw $t9, 0($t7)
 	 li $t6, 1
 	 sub $t6, $t9, $t6
 	 sle $t6, $t8, $t6
	 bne $t6, 1, L7
 	 mul $t6, $t8, 4
 	 add $t6, $t7, $t6
 	 lw $t6, 4($t6)
 	 move $a0, $t6
 	 jal _print 
 	 li $t6, 1
 	 add $t6, $t8, $t6
 	 move $t8, $t6
	 b L6
 L7:
	 nop
 	 li $t8, 333
 	 move $a0, $t8
 	 jal _print 
 	 lw $t7, 0($t7)
 	 move $v0, $t7
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
 	 li $t9, 16
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 4
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, ArrayTest_test
 	 sw $t7, 0($t8) 
 	 sw $t8, 0($t9) 
 	 lw $t8, 0($t9)
 	 lw $t8, 0($t8)
 	 li $t7, 3
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
 	 move $a1, $t7
 	 jalr $t8
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
 	 move $t7, $v0
 	 move $a0, $t7
 	 jal _print 
 	 li $t7, 0
 	 move $v0, $t7
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
