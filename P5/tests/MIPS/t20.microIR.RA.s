 	 .text 
 	 .globl 	 main
 main:
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 44
 	 li $t9, 8
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 4
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, MT4_Change
 	 sw $t7, 4($t9) 
 	 la $t7, MT4_Start
 	 sw $t7, 0($t9) 
 	 sw $t9, 0($t8) 
 	 lw $t9, 0($t8)
 	 lw $t9, 0($t9)
 	 li $t7, 1
 	 li $t6, 2
 	 li $t5, 3
 	 li $t4, 4
 	 li $t3, 5
 	 li $t2, 6
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
 	 move $a0, $t8
 	 move $a1, $t7
 	 move $a2, $t6
 	 move $a3, $t5
 	 sw $t4, -12($sp)
 	 sw $t3, -16($sp)
 	 sw $t2, -20($sp)
 	 jalr $t9
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
 	 .globl 	 MT4_Start
 MT4_Start:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 60
 	 move $t9, $a0
 	 move $t6, $a1
 	 move $t7, $a2
 	 move $t8, $a3
 	 lw $t3, -12($fp)
 	 lw $t4, -16($fp)
 	 lw $t5, -20($fp)
 	 move $a0, $t6
 	 jal _print 
 	 move $a0, $t7
 	 jal _print 
 	 move $a0, $t8
 	 jal _print 
 	 move $a0, $t3
 	 jal _print 
 	 move $a0, $t4
 	 jal _print 
 	 move $a0, $t5
 	 jal _print 
 	 lw $t2, 0($t9)
 	 lw $t2, 4($t2)
 	 sw $t0, -24($fp)
 	 sw $t1, -28($fp)
 	 sw $t2, -32($fp)
 	 sw $t3, -36($fp)
 	 sw $t4, -40($fp)
 	 sw $t5, -44($fp)
 	 sw $t6, -48($fp)
 	 sw $t7, -52($fp)
 	 sw $t8, -56($fp)
 	 sw $t9, -60($fp)
 	 move $a0, $t9
 	 move $a1, $t5
 	 move $a2, $t4
 	 move $a3, $t3
 	 sw $t8, -12($sp)
 	 sw $t7, -16($sp)
 	 sw $t6, -20($sp)
 	 jalr $t2
 	 lw $t0, -24($fp)
 	 lw $t1, -28($fp)
 	 lw $t2, -32($fp)
 	 lw $t3, -36($fp)
 	 lw $t4, -40($fp)
 	 lw $t5, -44($fp)
 	 lw $t6, -48($fp)
 	 lw $t7, -52($fp)
 	 lw $t8, -56($fp)
 	 lw $t9, -60($fp)
 	 move $t2, $v0
 	 move $v0, $t2
 	 addu $sp, $sp, 60
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 MT4_Change
 MT4_Change:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 76
 	 sw $s0, -24($fp)
 	 sw $s1, -28($fp)
 	 sw $s2, -32($fp)
 	 sw $s3, -36($fp)
 	 sw $s4, -40($fp)
 	 sw $s5, -44($fp)
 	 sw $s6, -48($fp)
 	 sw $s7, -52($fp)
 	 move $t9, $a1
 	 move $t8, $a2
 	 move $t7, $a3
 	 lw $t4, -12($fp)
 	 lw $t6, -16($fp)
 	 lw $t5, -20($fp)
 	 move $a0, $t9
 	 jal _print 
 	 move $a0, $t8
 	 jal _print 
 	 move $a0, $t7
 	 jal _print 
 	 li $t7, 0
 	 li $t8, 0
 	 li $t9, 0
 	 li $t3, 0
 	 li $t2, 0
 	 li $t1, 0
 	 li $t0, 0
 	 li $s7, 0
 	 li $s6, 0
 	 li $s5, 0
 	 li $s4, 0
 	 li $s3, 0
 	 li $s2, 0
 	 li $s1, 0
 	 li $s0, 0
 	 li $v1, 0
 	 sw $v1, -76($fp)
 	 li $v1, 0
 	 sw $v1, -72($fp)
 	 li $v1, 0
 	 sw $v1, -68($fp)
 	 li $v1, 0
 	 sw $v1, -64($fp)
 	 li $v1, 0
 	 sw $v1, -60($fp)
 	 move $a0, $t4
 	 jal _print 
 	 move $a0, $t6
 	 jal _print 
 	 move $a0, $t5
 	 jal _print 
	 b L2
 L1:
	 nop
 	 lw $v0, -56($fp)
 	 lw $v1, -60($fp)
 	 add $t4, $v0, $v1
 	 add $t6, $t4, $t5
	 b L3
 L2:
 	 li $v1, 12
 	 sw $v1, -56($fp)
	 b L1
 L3:
	 nop
 	 move $a0, $t4
 	 jal _print 
 	 move $a0, $t7
 	 jal _print 
 	 move $a0, $t8
 	 jal _print 
 	 move $a0, $t9
 	 jal _print 
 	 move $a0, $t3
 	 jal _print 
 	 move $a0, $t2
 	 jal _print 
 	 move $a0, $t1
 	 jal _print 
 	 move $a0, $t0
 	 jal _print 
 	 move $a0, $s7
 	 jal _print 
 	 move $a0, $s6
 	 jal _print 
 	 move $a0, $s5
 	 jal _print 
 	 move $a0, $s4
 	 jal _print 
 	 move $a0, $s3
 	 jal _print 
 	 move $a0, $s2
 	 jal _print 
 	 move $a0, $s1
 	 jal _print 
 	 move $a0, $s0
 	 jal _print 
 	 lw $v0, -76($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -72($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -68($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -64($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -60($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -56($fp)
 	 move $a0, $v0
 	 jal _print 
 	 move $v0, $t4
 	 lw $s0, -24($fp)
 	 lw $s1, -28($fp)
 	 lw $s2, -32($fp)
 	 lw $s3, -36($fp)
 	 lw $s4, -40($fp)
 	 lw $s5, -44($fp)
 	 lw $s6, -48($fp)
 	 lw $s7, -52($fp)
 	 addu $sp, $sp, 76
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
