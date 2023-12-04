 	 .text 
 	 .globl 	 main
 main:
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 44
 	 li $t9, 28
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 4
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, A_function
 	 sw $t7, 0($t8) 
 	 sw $t8, 0($t9) 
 	 lw $t8, 0($t9)
 	 lw $t8, 0($t8)
 	 li $t7, 2
 	 li $t6, 3
 	 add $t6, $t7, $t6
 	 li $t7, 28
 	 move $a0, $t7
 	 jal _halloc
 	 move $t7, $v0 
 	 li $t5, 4
 	 move $a0, $t5
 	 jal _halloc
 	 move $t5, $v0 
 	 la $t4, A_function
 	 sw $t4, 0($t5) 
 	 sw $t5, 0($t7) 
 	 lw $t5, 0($t7)
 	 lw $t5, 0($t5)
 	 li $t4, 1
 	 li $t3, 4
 	 li $t2, 0
 	 sne $t2, $t2, 1
	 bne $t2, 1, L0
 	 li $t2, 0
	 bne $t2, 1, L1
 L0:
 	 li $t2, 1
	 b L2
 L1:
 	 li $t2, 0
 L2:
	 nop
 	 li $t1, 5
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
 	 move $a0, $t7
 	 move $a1, $t4
 	 move $a2, $t3
 	 move $a3, $t2
 	 sw $t1, -12($sp)
 	 jalr $t5
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
 	 move $t1, $v0
 	 li $t2, 12
 	 move $a0, $t2
 	 jal _halloc
 	 move $t2, $v0 
 	 li $t3, 4
 	 move $a0, $t3
 	 jal _halloc
 	 move $t3, $v0 
 	 la $t4, B_function2
 	 sw $t4, 0($t3) 
 	 sw $t3, 0($t2) 
 	 lw $t3, 0($t2)
 	 lw $t3, 0($t3)
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
 	 move $a0, $t2
 	 jalr $t3
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
 	 move $t3, $v0
 	 li $t2, 10
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
 	 move $a1, $t6
 	 move $a2, $t1
 	 move $a3, $t3
 	 sw $t2, -12($sp)
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
 	 move $t2, $v0
 	 move $a0, $t2
 	 jal _print 
 	 addu $sp, $sp, 44
 	 lw $ra, -4($fp) 
 	 jal _exitret 
 
 
 	 .text 
 	 .globl 	 A_function
 A_function:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 12
 	 move $t7, $a0
 	 move $t8, $a1
 	 move $t9, $a2
 	 move $t5, $a3
 	 lw $t6, -12($fp)
 	 add $t4, $t6, 1
 	 mul $t4, $t4, 4
 	 move $a0, $t4
 	 jal _halloc
 	 move $t4, $v0 
 	 sw $t6, 0($t4) 
 	 sw $t4, 12($t7) 
 	 add $t4, $t6, 1
 	 mul $t4, $t4, 4
 	 move $a0, $t4
 	 jal _halloc
 	 move $t4, $v0 
 	 sw $t6, 0($t4) 
 	 sw $t4, 16($t7) 
 	 li $t4, 0
 	 li $t3, 0
 	 li $t2, 1
 	 sub $t2, $t6, $t2
 	 move $t6, $t2
 L3:
	 nop
 	 sle $t2, $t4, $t6
	 bne $t2, 1, L4
 	 lw $t2, 12($t7)
 	 mul $t1, $t4, 4
 	 add $t1, $t2, $t1
 	 sw $t8, 4($t1) 
 	 lw $t1, 16($t7)
 	 mul $t2, $t4, 4
 	 add $t2, $t1, $t2
 	 sw $t9, 4($t2) 
 	 lw $t2, 12($t7)
 	 mul $t1, $t4, 4
 	 add $t1, $t2, $t1
 	 lw $t1, 4($t1)
 	 lw $t2, 16($t7)
 	 mul $t0, $t4, 4
 	 add $t0, $t2, $t0
 	 lw $t0, 4($t0)
 	 add $t0, $t1, $t0
 	 lw $t1, 12($t7)
 	 mul $t2, $t4, 4
 	 add $t2, $t1, $t2
 	 sw $t0, 4($t2) 
 	 lw $t2, 12($t7)
 	 mul $t0, $t4, 4
 	 add $t0, $t2, $t0
 	 lw $t0, 4($t0)
 	 move $a0, $t0
 	 jal _print 
 	 lw $t0, 12($t7)
 	 mul $t2, $t4, 4
 	 add $t2, $t0, $t2
 	 lw $t2, 4($t2)
 	 add $t2, $t3, $t2
 	 move $t3, $t2
 	 li $t2, 1
 	 add $t2, $t4, $t2
 	 move $t4, $t2
	 b L3
 L4:
	 nop
	 bne $t5, 1, L5
	 b L6
 L5:
	 nop
 	 li $t5, 0
 	 move $t3, $t5
 L6:
	 nop
 	 move $v0, $t3
 	 addu $sp, $sp, 12
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 B_function2
 B_function2:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 li $t8, 1
 	 sw $t8, 4($t9) 
 	 li $t8, 1
 	 sw $t8, 8($t9) 
 	 lw $t8, 4($t9)
	 bne $t8, 1, L10
 	 lw $t8, 8($t9)
	 bne $t8, 1, L10
 	 li $t8, 1
	 b L11
 L10:
 	 li $t8, 0
 L11:
	 nop
 	 sne $t8, $t8, 1
	 bne $t8, 1, L7
 	 lw $t8, 4($t9)
 	 sne $t8, $t8, 1
	 bne $t8, 1, L12
 	 lw $t9, 8($t9)
	 bne $t9, 1, L13
 L12:
 	 li $t9, 1
	 b L14
 L13:
 	 li $t9, 0
 L14:
	 nop
	 bne $t9, 1, L8
 L7:
 	 li $t9, 1
	 b L9
 L8:
 	 li $t9, 0
 L9:
	 nop
 	 sne $t9, $t9, 1
 	 move $v0, $t9
 	 addu $sp, $sp, 8
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
