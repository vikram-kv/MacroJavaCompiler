 	 .text 
 	 .globl 	 main
 main:
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 44
 	 li $t9, 0
 	 li $t8, 0
 	 li $t7, 0
 	 li $t6, 0
 	 li $t5, 0
 	 li $t4, 0
 	 li $t3, 0
 	 li $t2, 0
 	 li $t1, 0
 	 la $t0, Test
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
 	 move $a1, $t8
 	 move $a2, $t7
 	 move $a3, $t6
 	 sw $t5, -12($sp)
 	 sw $t4, -16($sp)
 	 sw $t3, -20($sp)
 	 sw $t2, -24($sp)
 	 sw $t1, -28($sp)
 	 jalr $t0
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
 	 move $t0, $v0
 	 move $a0, $t0
 	 jal _print 
 	 addu $sp, $sp, 44
 	 lw $ra, -4($fp) 
 	 jal _exitret 
 
 
 	 .text 
 	 .globl 	 Test
 Test:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 28
 	 lw $t9, -16($fp)
 	 lw $t8, -20($fp)
 	 lw $t7, -24($fp)
 	 li $t9, 0
 	 li $t8, 1
 	 move $a0, $t9
 	 jal _print 
 	 li $t7, 2
 	 move $a0, $t8
 	 jal _print 
 	 li $t9, 3
 	 move $a0, $t7
 	 jal _print 
 	 move $a0, $t9
 	 jal _print 
 	 li $v0, 1
 	 addu $sp, $sp, 28
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
