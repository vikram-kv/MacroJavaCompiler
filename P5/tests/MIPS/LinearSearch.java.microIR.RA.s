 	 .text 
 	 .globl 	 main
 main:
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 44
 	 li $t9, 12
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 16
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, LS_Print
 	 sw $t7, 8($t8) 
 	 la $t7, LS_Start
 	 sw $t7, 0($t8) 
 	 la $t7, LS_Init
 	 sw $t7, 4($t8) 
 	 la $t7, LS_Search
 	 sw $t7, 12($t8) 
 	 sw $t8, 0($t9) 
 	 lw $t8, 0($t9)
 	 lw $t8, 0($t8)
 	 li $t7, 10
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
 	 move $a1, $t7
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
 	 move $t7, $v0
 	 move $a0, $t7
 	 jal _print 
 	 addu $sp, $sp, 44
 	 lw $ra, -4($fp) 
 	 jal _exitret 
 
 
 	 .text 
 	 .globl 	 LS_Start
 LS_Start:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t8, $a0
 	 move $t9, $a1
 	 move $t7, $t8
 	 lw $t6, 0($t7)
 	 lw $t6, 4($t6)
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
 	 move $a0, $t7
 	 move $a1, $t9
 	 jalr $t6
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
 	 move $t6, $t8
 	 lw $t7, 0($t6)
 	 lw $t7, 8($t7)
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
 	 move $t7, $v0
 	 li $t7, 9999
 	 move $a0, $t7
 	 jal _print 
 	 move $t7, $t8
 	 lw $t6, 0($t7)
 	 lw $t6, 12($t6)
 	 li $t9, 8
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
 	 move $a0, $t7
 	 move $a1, $t9
 	 jalr $t6
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
 	 move $t9, $v0
 	 move $a0, $t9
 	 jal _print 
 	 move $t9, $t8
 	 lw $t6, 0($t9)
 	 lw $t6, 12($t6)
 	 li $t7, 12
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
 	 jalr $t6
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
 	 move $t7, $t8
 	 lw $t6, 0($t7)
 	 lw $t6, 12($t6)
 	 li $t9, 17
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
 	 move $a0, $t7
 	 move $a1, $t9
 	 jalr $t6
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
 	 move $t9, $v0
 	 move $a0, $t9
 	 jal _print 
 	 lw $t9, 0($t8)
 	 lw $t9, 12($t9)
 	 li $t6, 50
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
 	 move $a1, $t6
 	 jalr $t9
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
 	 move $a0, $t6
 	 jal _print 
 	 li $t6, 55
 	 move $v0, $t6
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 LS_Print
 LS_Print:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 li $t8, 1
 L0:
	 nop
 	 lw $t7, 8($t9)
 	 li $t6, 1
 	 sub $t6, $t7, $t6
 	 sle $t6, $t8, $t6
	 bne $t6, 1, L1
 	 lw $t6, 4($t9)
 	 mul $t7, $t8, 4
 	 add $t7, $t6, $t7
 	 lw $t7, 4($t7)
 	 move $a0, $t7
 	 jal _print 
 	 li $t7, 1
 	 add $t7, $t8, $t7
 	 move $t8, $t7
	 b L0
 L1:
	 nop
 	 li $t8, 0
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 LS_Search
 LS_Search:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 li $t7, 1
 	 li $t6, 0
 	 li $t5, 0
 L2:
	 nop
 	 lw $t4, 8($t8)
 	 li $t3, 1
 	 sub $t3, $t4, $t3
 	 sle $t3, $t7, $t3
	 bne $t3, 1, L3
 	 lw $t3, 4($t8)
 	 mul $t4, $t7, 4
 	 add $t4, $t3, $t4
 	 lw $t4, 4($t4)
 	 li $t3, 1
 	 add $t3, $t9, $t3
 	 sle $t2, $t4, $t9
	 bne $t2, 1, L5
 	 sne $t2, $t4, $t9
	 bne $t2, 1, L5
 	 li $t2, 0
	 b L4
 L5:
	 nop
 	 li $t1, 1
 	 sub $t1, $t3, $t1
 	 sle $t1, $t4, $t1
 	 sne $t1, $t1, 1
	 bne $t1, 1, L7
 	 li $t1, 0
 	 move $t2, $t1
	 b L6
 L7:
	 nop
 	 li $t2, 1
 	 move $t6, $t2
 	 li $t6, 1
 	 move $t5, $t6
 	 lw $t6, 8($t8)
 	 move $t7, $t6
 L6:
	 nop
 L4:
	 nop
 	 li $t6, 1
 	 add $t6, $t7, $t6
 	 move $t7, $t6
	 b L2
 L3:
	 nop
 	 move $v0, $t5
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 LS_Init
 LS_Init:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 sw $t9, 8($t8) 
 	 add $t7, $t9, 1
 	 mul $t7, $t7, 4
 	 move $a0, $t7
 	 jal _halloc
 	 move $t7, $v0 
 	 sw $t9, 0($t7) 
 	 sw $t7, 4($t8) 
 	 li $t7, 1
 	 lw $t9, 8($t8)
 	 li $t6, 1
 	 add $t6, $t9, $t6
 L8:
	 nop
 	 lw $t9, 8($t8)
 	 li $t5, 1
 	 sub $t5, $t9, $t5
 	 sle $t5, $t7, $t5
	 bne $t5, 1, L9
 	 li $t5, 2
 	 mul $t5, $t5, $t7
 	 li $t9, 3
 	 sub $t9, $t6, $t9
 	 add $t9, $t5, $t9
 	 lw $t5, 4($t8)
 	 mul $t4, $t7, 4
 	 add $t4, $t5, $t4
 	 sw $t9, 4($t4) 
 	 li $t4, 1
 	 add $t4, $t7, $t4
 	 move $t7, $t4
 	 li $t4, 1
 	 sub $t4, $t6, $t4
 	 move $t6, $t4
	 b L8
 L9:
	 nop
 	 li $t6, 0
 	 move $v0, $t6
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
