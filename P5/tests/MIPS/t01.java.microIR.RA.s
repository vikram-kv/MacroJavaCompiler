 	 .text 
 	 .globl 	 main
 main:
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 44
 	 li $t9, 32
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 4
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, t012_run
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
 	 .globl 	 t011_run
 t011_run:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 li $t8, 2
 	 sw $t8, 8($t9) 
 	 li $t8, 3
 	 sw $t8, 12($t9) 
 	 li $t8, 4
 	 sw $t8, 16($t9) 
 	 lw $t8, 8($t9)
 	 lw $t7, 12($t9)
 	 add $t7, $t8, $t7
 	 lw $t9, 16($t9)
 	 mul $t9, $t7, $t9
 	 move $v0, $t9
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 t012_run
 t012_run:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 li $t9, 20
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 4
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, t011_run
 	 sw $t7, 0($t8) 
 	 sw $t8, 0($t9) 
 	 lw $t8, 0($t9)
 	 lw $t8, 0($t8)
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
 	 move $t8, $v0
 	 li $t9, 5
 	 add $t9, $t8, $t9
 	 move $v0, $t9
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
