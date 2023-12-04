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
 	 la $t7, QS_Sort
 	 sw $t7, 12($t8) 
 	 la $t7, QS_Start
 	 sw $t7, 0($t8) 
 	 la $t7, QS_Init
 	 sw $t7, 4($t8) 
 	 la $t7, QS_Print
 	 sw $t7, 8($t8) 
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
 	 .globl 	 QS_Start
 QS_Start:
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
 	 move $t7, $t8
 	 lw $t9, 0($t7)
 	 lw $t9, 8($t9)
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
 	 li $t9, 9999
 	 move $a0, $t9
 	 jal _print 
 	 lw $t9, 8($t8)
 	 li $t7, 1
 	 sub $t7, $t9, $t7
 	 move $t6, $t7
 	 move $t7, $t8
 	 lw $t9, 0($t7)
 	 lw $t9, 12($t9)
 	 li $t5, 0
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
 	 move $a1, $t5
 	 move $a2, $t6
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
 	 move $t5, $v0
 	 move $t6, $t5
 	 lw $t5, 0($t8)
 	 lw $t5, 8($t5)
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
 	 jalr $t5
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
 	 move $t5, $v0
 	 move $t6, $t5
 	 li $t6, 0
 	 move $v0, $t6
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 QS_Sort
 QS_Sort:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 56
 	 sw $s6, -12($fp)
 	 sw $s7, -16($fp)
 	 move $t8, $a0
 	 move $t9, $a1
 	 move $t7, $a2
 	 li $t6, 0
 	 sle $t5, $t9, $t7
	 bne $t5, 1, L1
 	 sne $t5, $t9, $t7
	 bne $t5, 1, L1
 	 lw $t5, 4($t8)
 	 mul $t4, $t7, 4
 	 add $t4, $t5, $t4
 	 lw $t4, 4($t4)
 	 li $t5, 1
 	 sub $t5, $t9, $t5
 	 move $t3, $t7
 	 li $t2, 1
 L2:
	 nop
	 bne $t2, 1, L3
 	 li $t1, 1
 L4:
	 nop
	 bne $t1, 1, L5
 	 li $t0, 1
 	 add $t0, $t5, $t0
 	 move $t5, $t0
 	 lw $t0, 4($t8)
 	 mul $s7, $t5, 4
 	 add $s7, $t0, $s7
 	 lw $s7, 4($s7)
 	 li $t0, 1
 	 sub $t0, $t4, $t0
 	 sle $t0, $s7, $t0
 	 sne $t0, $t0, 1
	 bne $t0, 1, L7
 	 li $t0, 0
 	 move $t1, $t0
	 b L6
 L7:
	 nop
 	 li $t0, 1
 	 move $t1, $t0
 L6:
	 nop
	 b L4
 L5:
	 nop
 	 li $t0, 1
 	 move $t1, $t0
 L8:
	 nop
	 bne $t1, 1, L9
 	 li $t0, 1
 	 sub $t0, $t3, $t0
 	 move $t3, $t0
 	 lw $t0, 4($t8)
 	 mul $s6, $t3, 4
 	 add $s6, $t0, $s6
 	 lw $s6, 4($s6)
 	 move $s7, $s6
 	 li $s6, 1
 	 sub $s6, $s7, $s6
 	 sle $s6, $t4, $s6
 	 sne $s6, $s6, 1
	 bne $s6, 1, L11
 	 li $s6, 0
 	 move $t1, $s6
	 b L10
 L11:
	 nop
 	 li $s6, 1
 	 move $t1, $s6
 L10:
	 nop
	 b L8
 L9:
	 nop
 	 lw $t1, 4($t8)
 	 mul $s6, $t5, 4
 	 add $s6, $t1, $s6
 	 lw $s6, 4($s6)
 	 move $t6, $s6
 	 lw $s6, 4($t8)
 	 mul $t1, $t3, 4
 	 add $t1, $s6, $t1
 	 lw $t1, 4($t1)
 	 lw $s6, 4($t8)
 	 mul $s7, $t5, 4
 	 add $s7, $s6, $s7
 	 sw $t1, 4($s7) 
 	 lw $s7, 4($t8)
 	 mul $t1, $t3, 4
 	 add $t1, $s7, $t1
 	 sw $t6, 4($t1) 
 	 sle $t1, $t3, $t5
	 bne $t1, 1, L13
 	 li $t1, 0
 	 move $t2, $t1
	 b L12
 L13:
	 nop
 	 li $t1, 1
 	 move $t2, $t1
 L12:
	 nop
	 b L2
 L3:
	 nop
 	 lw $t2, 4($t8)
 	 mul $t4, $t5, 4
 	 add $t4, $t2, $t4
 	 lw $t4, 4($t4)
 	 lw $t2, 4($t8)
 	 mul $t3, $t3, 4
 	 add $t3, $t2, $t3
 	 sw $t4, 4($t3) 
 	 lw $t3, 4($t8)
 	 mul $t4, $t7, 4
 	 add $t4, $t3, $t4
 	 lw $t4, 4($t4)
 	 lw $t3, 4($t8)
 	 mul $t2, $t5, 4
 	 add $t2, $t3, $t2
 	 sw $t4, 4($t2) 
 	 lw $t2, 4($t8)
 	 mul $t4, $t7, 4
 	 add $t4, $t2, $t4
 	 sw $t6, 4($t4) 
 	 move $t4, $t8
 	 lw $t6, 0($t4)
 	 lw $t6, 12($t6)
 	 li $t2, 1
 	 sub $t2, $t5, $t2
 	 sw $t0, -20($fp)
 	 sw $t1, -24($fp)
 	 sw $t2, -28($fp)
 	 sw $t3, -32($fp)
 	 sw $t4, -36($fp)
 	 sw $t5, -40($fp)
 	 sw $t6, -44($fp)
 	 sw $t7, -48($fp)
 	 sw $t8, -52($fp)
 	 sw $t9, -56($fp)
 	 move $a0, $t4
 	 move $a1, $t9
 	 move $a2, $t2
 	 jalr $t6
 	 lw $t0, -20($fp)
 	 lw $t1, -24($fp)
 	 lw $t2, -28($fp)
 	 lw $t3, -32($fp)
 	 lw $t4, -36($fp)
 	 lw $t5, -40($fp)
 	 lw $t6, -44($fp)
 	 lw $t7, -48($fp)
 	 lw $t8, -52($fp)
 	 lw $t9, -56($fp)
 	 move $t2, $v0
 	 lw $t6, 0($t8)
 	 lw $t6, 12($t6)
 	 li $t4, 1
 	 add $t4, $t5, $t4
 	 sw $t0, -20($fp)
 	 sw $t1, -24($fp)
 	 sw $t2, -28($fp)
 	 sw $t3, -32($fp)
 	 sw $t4, -36($fp)
 	 sw $t5, -40($fp)
 	 sw $t6, -44($fp)
 	 sw $t7, -48($fp)
 	 sw $t8, -52($fp)
 	 sw $t9, -56($fp)
 	 move $a0, $t8
 	 move $a1, $t4
 	 move $a2, $t7
 	 jalr $t6
 	 lw $t0, -20($fp)
 	 lw $t1, -24($fp)
 	 lw $t2, -28($fp)
 	 lw $t3, -32($fp)
 	 lw $t4, -36($fp)
 	 lw $t5, -40($fp)
 	 lw $t6, -44($fp)
 	 lw $t7, -48($fp)
 	 lw $t8, -52($fp)
 	 lw $t9, -56($fp)
 	 move $t4, $v0
 	 move $t2, $t4
	 b L0
 L1:
	 nop
 	 li $t4, 0
 	 move $t2, $t4
 L0:
	 nop
 	 li $t2, 0
 	 move $v0, $t2
 	 lw $s6, -12($fp)
 	 lw $s7, -16($fp)
 	 addu $sp, $sp, 56
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 QS_Print
 QS_Print:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 li $t8, 0
 L14:
	 nop
 	 lw $t7, 8($t9)
 	 li $t6, 1
 	 sub $t6, $t7, $t6
 	 sle $t6, $t8, $t6
	 bne $t6, 1, L15
 	 lw $t6, 4($t9)
 	 mul $t7, $t8, 4
 	 add $t7, $t6, $t7
 	 lw $t7, 4($t7)
 	 move $a0, $t7
 	 jal _print 
 	 li $t7, 1
 	 add $t7, $t8, $t7
 	 move $t8, $t7
	 b L14
 L15:
	 nop
 	 li $t8, 0
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 QS_Init
 QS_Init:
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
 	 li $t7, 0
 	 li $t9, 20
 	 lw $t6, 4($t8)
 	 mul $t7, $t7, 4
 	 add $t7, $t6, $t7
 	 sw $t9, 4($t7) 
 	 li $t7, 1
 	 li $t9, 7
 	 lw $t6, 4($t8)
 	 mul $t7, $t7, 4
 	 add $t7, $t6, $t7
 	 sw $t9, 4($t7) 
 	 li $t7, 2
 	 li $t9, 12
 	 lw $t6, 4($t8)
 	 mul $t7, $t7, 4
 	 add $t7, $t6, $t7
 	 sw $t9, 4($t7) 
 	 li $t7, 3
 	 li $t9, 18
 	 lw $t6, 4($t8)
 	 mul $t7, $t7, 4
 	 add $t7, $t6, $t7
 	 sw $t9, 4($t7) 
 	 li $t7, 4
 	 li $t9, 2
 	 lw $t6, 4($t8)
 	 mul $t7, $t7, 4
 	 add $t7, $t6, $t7
 	 sw $t9, 4($t7) 
 	 li $t7, 5
 	 li $t9, 11
 	 lw $t6, 4($t8)
 	 mul $t7, $t7, 4
 	 add $t7, $t6, $t7
 	 sw $t9, 4($t7) 
 	 li $t7, 6
 	 li $t9, 6
 	 lw $t6, 4($t8)
 	 mul $t7, $t7, 4
 	 add $t7, $t6, $t7
 	 sw $t9, 4($t7) 
 	 li $t7, 7
 	 li $t9, 9
 	 lw $t6, 4($t8)
 	 mul $t7, $t7, 4
 	 add $t7, $t6, $t7
 	 sw $t9, 4($t7) 
 	 li $t7, 8
 	 li $t9, 19
 	 lw $t6, 4($t8)
 	 mul $t7, $t7, 4
 	 add $t7, $t6, $t7
 	 sw $t9, 4($t7) 
 	 li $t7, 9
 	 li $t9, 5
 	 lw $t8, 4($t8)
 	 mul $t7, $t7, 4
 	 add $t7, $t8, $t7
 	 sw $t9, 4($t7) 
 	 li $t7, 0
 	 move $v0, $t7
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
