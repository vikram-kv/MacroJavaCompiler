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
 	 li $t8, 24
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, BS_Div
 	 sw $t7, 20($t8) 
 	 la $t7, BS_Init
 	 sw $t7, 4($t8) 
 	 la $t7, BS_Print
 	 sw $t7, 8($t8) 
 	 la $t7, BS_Search
 	 sw $t7, 12($t8) 
 	 la $t7, BS_Compare
 	 sw $t7, 16($t8) 
 	 la $t7, BS_Start
 	 sw $t7, 0($t8) 
 	 sw $t8, 0($t9) 
 	 lw $t8, 0($t9)
 	 lw $t8, 0($t8)
 	 li $t7, 20
 	 li $t6, 0
 	 add $t6, $t7, $t6
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
 	 .globl 	 BS_Start
 BS_Start:
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
	 bne $t9, 1, L1
 	 li $t9, 1
 	 li $t6, 0
 	 add $t6, $t9, $t6
 	 move $a0, $t6
 	 jal _print 
	 b L0
 L1:
	 nop
 	 li $t6, 0
 	 li $t9, 0
 	 add $t9, $t6, $t9
 	 move $a0, $t9
 	 jal _print 
 L0:
	 nop
 	 move $t9, $t8
 	 lw $t6, 0($t9)
 	 lw $t6, 12($t6)
 	 li $t7, 19
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
	 bne $t7, 1, L3
 	 li $t7, 1
 	 li $t6, 0
 	 add $t6, $t7, $t6
 	 move $a0, $t6
 	 jal _print 
	 b L2
 L3:
	 nop
 	 li $t6, 0
 	 li $t7, 0
 	 add $t7, $t6, $t7
 	 move $a0, $t7
 	 jal _print 
 L2:
	 nop
 	 move $t7, $t8
 	 lw $t6, 0($t7)
 	 lw $t6, 12($t6)
 	 li $t9, 20
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
	 bne $t9, 1, L5
 	 li $t9, 1
 	 li $t6, 0
 	 add $t6, $t9, $t6
 	 move $a0, $t6
 	 jal _print 
	 b L4
 L5:
	 nop
 	 li $t6, 0
 	 li $t9, 0
 	 add $t9, $t6, $t9
 	 move $a0, $t9
 	 jal _print 
 L4:
	 nop
 	 move $t9, $t8
 	 lw $t6, 0($t9)
 	 lw $t6, 12($t6)
 	 li $t7, 21
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
	 bne $t7, 1, L7
 	 li $t7, 1
 	 li $t6, 0
 	 add $t6, $t7, $t6
 	 move $a0, $t6
 	 jal _print 
	 b L6
 L7:
	 nop
 	 li $t6, 0
 	 li $t7, 0
 	 add $t7, $t6, $t7
 	 move $a0, $t7
 	 jal _print 
 L6:
	 nop
 	 move $t7, $t8
 	 lw $t6, 0($t7)
 	 lw $t6, 12($t6)
 	 li $t9, 37
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
	 bne $t9, 1, L9
 	 li $t9, 1
 	 li $t6, 0
 	 add $t6, $t9, $t6
 	 move $a0, $t6
 	 jal _print 
	 b L8
 L9:
	 nop
 	 li $t6, 0
 	 li $t9, 0
 	 add $t9, $t6, $t9
 	 move $a0, $t9
 	 jal _print 
 L8:
	 nop
 	 move $t9, $t8
 	 lw $t6, 0($t9)
 	 lw $t6, 12($t6)
 	 li $t7, 38
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
	 bne $t7, 1, L11
 	 li $t7, 1
 	 li $t6, 0
 	 add $t6, $t7, $t6
 	 move $a0, $t6
 	 jal _print 
	 b L10
 L11:
	 nop
 	 li $t6, 0
 	 li $t7, 0
 	 add $t7, $t6, $t7
 	 move $a0, $t7
 	 jal _print 
 L10:
	 nop
 	 move $t7, $t8
 	 lw $t6, 0($t7)
 	 lw $t6, 12($t6)
 	 li $t9, 39
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
	 bne $t9, 1, L13
 	 li $t9, 1
 	 li $t6, 0
 	 add $t6, $t9, $t6
 	 move $a0, $t6
 	 jal _print 
	 b L12
 L13:
	 nop
 	 li $t6, 0
 	 li $t9, 0
 	 add $t9, $t6, $t9
 	 move $a0, $t9
 	 jal _print 
 L12:
	 nop
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
	 bne $t6, 1, L15
 	 li $t6, 1
 	 li $t9, 0
 	 add $t9, $t6, $t9
 	 move $a0, $t9
 	 jal _print 
	 b L14
 L15:
	 nop
 	 li $t9, 0
 	 li $t6, 0
 	 add $t6, $t9, $t6
 	 move $a0, $t6
 	 jal _print 
 L14:
	 nop
 	 li $t6, 999
 	 move $v0, $t6
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 BS_Search
 BS_Search:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t9, $a0
 	 move $t8, $a1
 	 li $t7, 0
 	 li $t6, 0
 	 lw $t5, 4($t9)
 	 lw $t5, 0($t5)
 	 li $t4, 1
 	 sub $t4, $t5, $t4
 	 move $t5, $t4
 	 li $t4, 0
 	 li $t3, 1
 L16:
	 nop
	 bne $t3, 1, L17
 	 add $t2, $t4, $t5
 	 move $t1, $t9
 	 lw $t0, 0($t1)
 	 lw $t0, 20($t0)
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
 	 move $a0, $t1
 	 move $a1, $t2
 	 jalr $t0
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
 	 move $t0, $v0
 	 move $t2, $t0
 	 lw $t0, 4($t9)
 	 mul $t1, $t2, 4
 	 add $t1, $t0, $t1
 	 lw $t1, 4($t1)
 	 move $t7, $t1
 	 li $t1, 1
 	 sub $t1, $t7, $t1
 	 sle $t1, $t8, $t1
	 bne $t1, 1, L19
 	 li $t1, 1
 	 sub $t1, $t2, $t1
 	 move $t5, $t1
	 b L18
 L19:
	 nop
 	 li $t1, 1
 	 add $t1, $t2, $t1
 	 move $t4, $t1
 L18:
	 nop
 	 move $t1, $t9
 	 lw $t2, 0($t1)
 	 lw $t2, 16($t2)
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
 	 move $a0, $t1
 	 move $a1, $t7
 	 move $a2, $t8
 	 jalr $t2
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
 	 move $t2, $v0
	 bne $t2, 1, L21
 	 li $t2, 0
 	 move $t3, $t2
	 b L20
 L21:
	 nop
 	 li $t2, 1
 	 move $t3, $t2
 L20:
	 nop
 	 li $t2, 1
 	 sub $t2, $t4, $t2
 	 sle $t2, $t5, $t2
	 bne $t2, 1, L23
 	 li $t2, 0
 	 move $t3, $t2
	 b L22
 L23:
	 nop
 	 li $t2, 0
 L22:
	 nop
	 b L16
 L17:
	 nop
 	 lw $t3, 0($t9)
 	 lw $t3, 16($t3)
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
 	 move $a2, $t8
 	 jalr $t3
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
 	 move $t3, $v0
	 bne $t3, 1, L25
 	 li $t3, 1
 	 move $t6, $t3
	 b L24
 L25:
	 nop
 	 li $t3, 0
 	 move $t6, $t3
 L24:
	 nop
 	 move $v0, $t6
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 BS_Div
 BS_Div:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a1
 	 li $t8, 0
 	 li $t7, 0
 	 li $t6, 1
 	 sub $t6, $t9, $t6
 L26:
	 nop
 	 sle $t9, $t7, $t6
	 bne $t9, 1, L27
 	 sne $t9, $t7, $t6
	 bne $t9, 1, L27
 	 li $t9, 1
 	 add $t9, $t8, $t9
 	 move $t8, $t9
 	 li $t9, 2
 	 add $t9, $t7, $t9
 	 move $t7, $t9
	 b L26
 L27:
	 nop
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 BS_Compare
 BS_Compare:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a1
 	 move $t9, $a2
 	 li $t7, 0
 	 li $t6, 1
 	 add $t6, $t9, $t6
 	 li $t5, 1
 	 sub $t5, $t9, $t5
 	 sle $t5, $t8, $t5
	 bne $t5, 1, L29
 	 li $t5, 0
 	 move $t7, $t5
	 b L28
 L29:
	 nop
 	 li $t5, 1
 	 sub $t5, $t6, $t5
 	 sle $t5, $t8, $t5
 	 sne $t5, $t5, 1
	 bne $t5, 1, L31
 	 li $t5, 0
 	 move $t7, $t5
	 b L30
 L31:
	 nop
 	 li $t5, 1
 	 move $t7, $t5
 L30:
	 nop
 L28:
	 nop
 	 move $v0, $t7
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 BS_Print
 BS_Print:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 li $t8, 1
 L32:
	 nop
 	 lw $t7, 8($t9)
 	 sle $t7, $t8, $t7
	 bne $t7, 1, L33
 	 lw $t7, 8($t9)
 	 sne $t7, $t8, $t7
	 bne $t7, 1, L33
 	 lw $t7, 4($t9)
 	 mul $t6, $t8, 4
 	 add $t6, $t7, $t6
 	 lw $t6, 4($t6)
 	 move $a0, $t6
 	 jal _print 
 	 li $t6, 1
 	 add $t6, $t8, $t6
 	 move $t8, $t6
	 b L32
 L33:
	 nop
 	 li $t8, 9999
 	 li $t9, 0
 	 add $t9, $t8, $t9
 	 move $a0, $t9
 	 jal _print 
 	 li $t9, 0
 	 move $v0, $t9
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 BS_Init
 BS_Init:
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
 	 li $t9, 0
 	 lw $t6, 4($t8)
 	 mul $t7, $t7, 4
 	 add $t7, $t6, $t7
 	 sw $t9, 4($t7) 
 	 li $t7, 1
 	 lw $t9, 8($t8)
 	 li $t6, 1
 	 add $t6, $t9, $t6
 L34:
	 nop
 	 lw $t9, 8($t8)
 	 li $t5, 1
 	 sub $t5, $t9, $t5
 	 sle $t5, $t7, $t5
	 bne $t5, 1, L35
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
	 b L34
 L35:
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
