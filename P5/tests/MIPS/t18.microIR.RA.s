 	 .text 
 	 .globl 	 main
 main:
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 44
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
 	 jal Test35
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
 	 move $t9, $v0
 	 move $a0, $t9
 	 jal _print 
 	 addu $sp, $sp, 44
 	 lw $ra, -4($fp) 
 	 jal _exitret 
 
 
 	 .text 
 	 .globl 	 Test35
 Test35:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 108
 	 sw $s0, -12($fp)
 	 sw $s1, -16($fp)
 	 sw $s2, -20($fp)
 	 sw $s3, -24($fp)
 	 sw $s4, -28($fp)
 	 sw $s5, -32($fp)
 	 sw $s6, -36($fp)
 	 sw $s7, -40($fp)
 	 li $v1, 0
 	 sw $v1, -108($fp)
 	 li $v1, 1
 	 sw $v1, -68($fp)
 	 li $v1, 2
 	 sw $v1, -72($fp)
 	 li $v1, 3
 	 sw $v1, -76($fp)
 	 li $v1, 4
 	 sw $v1, -80($fp)
 	 li $v1, 5
 	 sw $v1, -84($fp)
 	 li $v1, 6
 	 sw $v1, -88($fp)
 	 li $v1, 7
 	 sw $v1, -92($fp)
 	 li $v1, 8
 	 sw $v1, -96($fp)
 	 li $v1, 9
 	 sw $v1, -100($fp)
	 b L2
 L1:
 	 lw $v0, -104($fp)
 	 move $v1, $v0
 	 sw $v1, -64($fp)
 	 li $v1, 11
 	 sw $v1, -60($fp)
 	 li $v1, 12
 	 sw $v1, -56($fp)
 	 li $v1, 13
 	 sw $v1, -52($fp)
 	 li $v1, 14
 	 sw $v1, -48($fp)
 	 li $v1, 15
 	 sw $v1, -44($fp)
 	 li $s0, 16
 	 li $t9, 17
 	 li $s7, 18
 	 li $t0, 19
 	 li $t1, 20
 	 li $t2, 21
 	 li $t3, 22
 	 li $t4, 23
 	 li $t5, 24
 	 li $t6, 25
 	 li $t7, 26
 	 li $t8, 27
 	 li $s6, 28
 	 li $s5, 29
 	 li $s4, 30
 	 li $s3, 31
 	 li $s2, 32
 	 li $s1, 33
 	 move $a0, $s1
 	 jal _print 
 	 move $a0, $s2
 	 jal _print 
 	 move $a0, $s3
 	 jal _print 
 	 move $a0, $s4
 	 jal _print 
 	 move $a0, $s5
 	 jal _print 
 	 move $a0, $s6
 	 jal _print 
 	 move $a0, $t8
 	 jal _print 
 	 move $a0, $t7
 	 jal _print 
 	 move $a0, $t6
 	 jal _print 
 	 move $a0, $t5
 	 jal _print 
 	 move $a0, $t4
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
 	 move $a0, $t9
 	 jal _print 
 	 move $a0, $s0
 	 jal _print 
 	 lw $v0, -44($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -48($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -52($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -56($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -60($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -64($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -100($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -96($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -92($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -88($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -84($fp)
 	 move $a0, $v0
 	 jal _print 
 	 lw $v0, -80($fp)
 	 move $a0, $v0
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
 	 lw $v0, -108($fp)
 	 move $a0, $v0
 	 jal _print 
	 b L3
 L2:
 	 lw $v0, -108($fp)
 	 move $v1, $v0
 	 sw $v1, -104($fp)
	 b L1
 L3:
	 nop
 	 lw $v1, -108($fp)
 	 move $v0, $v1
 	 lw $s0, -12($fp)
 	 lw $s1, -16($fp)
 	 lw $s2, -20($fp)
 	 lw $s3, -24($fp)
 	 lw $s4, -28($fp)
 	 lw $s5, -32($fp)
 	 lw $s6, -36($fp)
 	 lw $s7, -40($fp)
 	 addu $sp, $sp, 108
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
