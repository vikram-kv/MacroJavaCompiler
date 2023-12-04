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
 	 li $t8, 8
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, t061_run
 	 sw $t7, 0($t8) 
 	 la $t7, t061_mark
 	 sw $t7, 4($t8) 
 	 sw $t8, 0($t9) 
 	 lw $t8, 0($t9)
 	 lw $t8, 0($t8)
 	 li $t7, 4
 	 move $a0, $t7
 	 jal _halloc
 	 move $t7, $v0 
 	 li $t6, 8
 	 move $a0, $t6
 	 jal _halloc
 	 move $t6, $v0 
 	 la $t5, t061_run
 	 sw $t5, 0($t6) 
 	 la $t5, t061_mark
 	 sw $t5, 4($t6) 
 	 sw $t6, 0($t7) 
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
 	 .globl 	 t061_mark
 t061_mark:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 li $t9, 1
 	 li $t8, 0
	 bne $t9, 1, L6
	 bne $t8, 1, L6
 	 li $t7, 1
	 b L7
 L6:
 	 li $t7, 0
 L7:
	 nop
 	 sne $t7, $t7, 1
	 bne $t7, 1, L3
	 bne $t9, 1, L12
	 bne $t8, 1, L12
 	 li $t7, 1
	 b L13
 L12:
 	 li $t7, 0
 L13:
	 nop
	 bne $t7, 1, L10
 	 sne $t7, $t9, 1
	 bne $t7, 1, L14
	 bne $t8, 1, L15
 L14:
 	 li $t7, 1
	 b L16
 L15:
 	 li $t7, 0
 L16:
	 nop
	 bne $t7, 1, L10
 	 li $t7, 1
	 b L11
 L10:
 	 li $t7, 0
 L11:
	 nop
	 bne $t7, 1, L8
	 bne $t9, 1, L8
 	 li $t7, 1
	 b L9
 L8:
 	 li $t7, 0
 L9:
	 nop
	 bne $t7, 1, L4
 L3:
 	 li $t7, 1
	 b L5
 L4:
 	 li $t7, 0
 L5:
	 nop
 	 sne $t7, $t7, 1
	 bne $t7, 1, L0
	 bne $t8, 1, L1
 L0:
 	 li $t7, 1
	 b L2
 L1:
 	 li $t7, 0
 L2:
	 nop
 	 sne $t6, $t7, 1
	 bne $t6, 1, L19
 	 li $t6, 0
	 b L17
 L19:
	 nop
	 bne $t7, 1, L20
	 bne $t9, 1, L20
 	 li $t7, 1
	 b L21
 L20:
 	 li $t7, 0
 L21:
	 nop
	 b L18
 L17:
	 nop
 	 sne $t8, $t8, 1
	 bne $t8, 1, L22
	 bne $t9, 1, L23
 L22:
 	 li $t9, 1
	 b L24
 L23:
 	 li $t9, 0
 L24:
	 nop
 	 move $t7, $t9
 L18:
	 nop
 	 move $v0, $t7
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 t061_run
 t061_run:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t9, $a0
 	 move $t8, $a1
 	 li $t7, 2
 	 lw $t6, 0($t8)
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
 	 move $a0, $t8
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
	 bne $t6, 1, L26
 	 lw $t6, 0($t9)
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
 	 move $a0, $t9
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
	 b L27
 L26:
	 nop
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
 	 move $t6, $t9
 L27:
	 nop
	 bne $t6, 1, L25
 	 li $t6, 4
 	 move $t7, $t6
 L25:
	 nop
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
