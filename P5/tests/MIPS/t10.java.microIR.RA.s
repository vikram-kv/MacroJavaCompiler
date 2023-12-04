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
 	 li $t8, 8
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, t101_go
 	 sw $t7, 4($t8) 
 	 la $t7, t101_run
 	 sw $t7, 0($t8) 
 	 sw $t8, 0($t9) 
 	 lw $t8, 0($t9)
 	 lw $t8, 4($t8)
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
 	 .globl 	 t101_run
 t101_run:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 li $t8, 2
 	 sw $t8, 4($t9) 
 	 lw $t8, 4($t9)
 	 move $a0, $t8
 	 jal _print 
 	 lw $t9, 4($t9)
 	 move $v0, $t9
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 t101_go
 t101_go:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 li $t9, 8
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 8
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, t101_go
 	 sw $t7, 4($t8) 
 	 la $t7, t101_run
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
 	 li $t7, 12
 	 move $a0, $t7
 	 jal _halloc
 	 move $t7, $v0 
 	 li $t6, 12
 	 move $a0, $t6
 	 jal _halloc
 	 move $t6, $v0 
 	 la $t5, t102_run
 	 sw $t5, 8($t6) 
 	 la $t5, t102_go
 	 sw $t5, 4($t6) 
 	 la $t5, t101_run
 	 sw $t5, 0($t6) 
 	 sw $t6, 0($t7) 
 	 move $t9, $t7
 	 lw $t7, 0($t9)
 	 lw $t7, 0($t7)
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
 	 move $t8, $t7
 	 li $t7, 12
 	 move $a0, $t7
 	 jal _halloc
 	 move $t7, $v0 
 	 li $t9, 12
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 la $t6, t102_run
 	 sw $t6, 8($t9) 
 	 la $t6, t102_go
 	 sw $t6, 4($t9) 
 	 la $t6, t101_run
 	 sw $t6, 0($t9) 
 	 sw $t9, 0($t7) 
 	 move $v0, $t8
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 t102_go
 t102_go:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 li $t9, 12
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 12
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, t102_run
 	 sw $t7, 8($t8) 
 	 la $t7, t102_go
 	 sw $t7, 4($t8) 
 	 la $t7, t101_run
 	 sw $t7, 0($t8) 
 	 sw $t8, 0($t9) 
 	 lw $t8, 0($t9)
 	 lw $t8, 8($t8)
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
 	 li $t8, 8
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 li $t9, 8
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 la $t7, t101_go
 	 sw $t7, 4($t9) 
 	 la $t7, t101_run
 	 sw $t7, 0($t9) 
 	 sw $t9, 0($t8) 
 	 lw $t9, 0($t8)
 	 lw $t9, 4($t9)
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
 	 move $t9, $v0
 	 move $v0, $t9
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 t102_run
 t102_run:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 li $t8, 9
 	 sw $t8, 8($t9) 
 	 lw $t8, 8($t9)
 	 move $a0, $t8
 	 jal _print 
 	 lw $t9, 8($t9)
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
