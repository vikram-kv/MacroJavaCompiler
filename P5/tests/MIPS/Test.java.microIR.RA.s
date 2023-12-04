 	 .text 
 	 .globl 	 main
 main:
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 44
 	 li $t9, 16
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 12
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, A_run
 	 sw $t7, 0($t8) 
 	 la $t7, A_set
 	 sw $t7, 4($t8) 
 	 la $t7, A_one
 	 sw $t7, 8($t8) 
 	 sw $t8, 0($t9) 
 	 lw $t8, 0($t9)
 	 lw $t8, 8($t8)
 	 li $t7, 1
 	 li $t6, 0
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
 	 move $a2, $t6
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
 	 move $t6, $v0
 	 move $a0, $t6
 	 jal _print 
 	 addu $sp, $sp, 44
 	 lw $ra, -4($fp) 
 	 jal _exitret 
 
 
 	 .text 
 	 .globl 	 A_run
 A_run:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t7, $a0
 	 move $t9, $a1
 	 move $t8, $a2
 	 li $t6, 0
 	 sle $t5, $t9, $t8
	 bne $t5, 1, L1
 	 move $t6, $t9
	 b L0
 L1:
	 nop
 	 move $t6, $t8
 L0:
	 nop
 	 li $t8, 1
	 bne $t8, 1, L7
 	 li $t8, 1
	 bne $t8, 1, L7
 	 li $t8, 1
	 b L8
 L7:
 	 li $t8, 0
 L8:
	 nop
 	 sne $t8, $t8, 1
	 bne $t8, 1, L4
 	 li $t8, 1
	 bne $t8, 1, L9
 	 li $t8, 0
	 bne $t8, 1, L9
 	 li $t8, 1
	 b L10
 L9:
 	 li $t8, 0
 L10:
	 nop
	 bne $t8, 1, L5
 L4:
 	 li $t8, 1
	 b L6
 L5:
 	 li $t8, 0
 L6:
	 nop
	 bne $t8, 1, L2
 	 li $t8, 0
	 bne $t8, 1, L2
 	 li $t8, 1
	 b L3
 L2:
 	 li $t8, 0
 L3:
	 nop
 	 sw $t8, 8($t7) 
 	 li $t8, 1
 	 li $t8, 1
	 b L12
 L13:
	 nop
 	 li $t8, 1
 	 li $t8, 0
	 b L11
 L12:
	 nop
 	 li $t8, 0
	 b L11
 	 lw $t8, 8($t7)
 	 sw $t8, 12($t7) 
 L11:
	 nop
 	 move $v0, $t6
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 A_one
 A_one:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t7, $a0
 	 move $t9, $a1
 	 move $t8, $a2
 	 sw $t9, 8($t7) 
 	 sw $t8, 12($t7) 
 	 lw $t8, 8($t7)
	 bne $t8, 1, L14
 	 lw $t8, 12($t7)
	 bne $t8, 1, L14
 	 li $t8, 999
 	 move $a0, $t8
 	 jal _print 
 L14:
	 nop
 	 lw $t8, 8($t7)
 	 sne $t8, $t8, 1
	 bne $t8, 1, L16
 	 lw $t8, 12($t7)
 	 li $t8, 888
 	 move $a0, $t8
 	 jal _print 
	 b L15
 L16:
	 nop
 	 li $t8, 333
 	 move $a0, $t8
 	 jal _print 
 L15:
	 nop
 	 lw $t8, 8($t7)
	 bne $t8, 1, L18
 	 lw $t8, 12($t7)
	 bne $t8, 1, L18
 	 lw $t8, 12($t7)
 	 sne $t8, $t8, 1
	 bne $t8, 1, L19
 	 lw $t8, 8($t7)
	 bne $t8, 1, L17
 L19:
	 nop
 L18:
	 nop
 	 li $t8, 1
 	 sw $t8, 4($t7) 
 L17:
	 nop
 	 lw $t8, 8($t7)
	 bne $t8, 1, L20
 	 lw $t8, 8($t7)
	 bne $t8, 1, L20
 	 lw $t8, 12($t7)
	 bne $t8, 1, L20
 	 li $t8, 1
 	 sw $t8, 4($t7) 
 L20:
	 nop
 	 lw $t7, 4($t7)
 	 li $t8, 11
 	 add $t8, $t7, $t8
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 A_set
 A_set:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 sw $t9, 4($t8) 
 	 li $t8, 0
 	 move $v0, $t8
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
