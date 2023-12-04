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
 	 la $t7, QS_Init
 	 sw $t7, 12($t9) 
 	 la $t7, QS_Print
 	 sw $t7, 8($t9) 
 	 la $t7, QS_Sort
 	 sw $t7, 4($t9) 
 	 la $t7, QS_Start
 	 sw $t7, 0($t9) 
 	 li $t7, 4
 L0:
 	 li $t6, 11
 	 sle $t6, $t7, $t6
	 bne $t6, 1, L1
 	 add $t6, $t8, $t7
 	 li $t5, 0
 	 sw $t5, 0($t6) 
 	 li $t5, 4
 	 add $t5, $t7, $t5
 	 move $t7, $t5
	 b L0
 L1:
 	 sw $t9, 0($t8) 
 	 lw $t9, 0($t8)
 	 lw $t9, 0($t9)
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
 	 move $a0, $t8
 	 move $a1, $t7
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
 	 lw $t6, 12($t6)
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
 	 lw $t9, 4($t9)
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
 	 subu $sp, $sp, 64
 	 sw $s4, -12($fp)
 	 sw $s5, -16($fp)
 	 sw $s6, -20($fp)
 	 sw $s7, -24($fp)
 	 move $t8, $a0
 	 move $t9, $a1
 	 move $t7, $a2
 	 li $t6, 0
 	 li $t5, 1
 	 sub $t5, $t7, $t5
 	 sle $t5, $t9, $t5
	 bne $t5, 1, L2
 	 lw $t5, 4($t8)
 	 li $t4, 4
 	 mul $t4, $t7, $t4
 	 lw $t5, 4($t8)
 	 lw $t3, 0($t5)
 	 li $t2, 1
 	 sub $t2, $t3, $t2
 	 li $t3, 1
 	 sle $t2, $t4, $t2
 	 sub $t2, $t3, $t2
	 bne $t2, 1, L4
 	 la $a0, error_msg 
 	 jal _error 
 L4:
	 nop
 	 li $t2, 4
 	 add $t2, $t4, $t2
 	 add $t2, $t5, $t2
 	 lw $t2, 0($t2)
 	 li $t5, 1
 	 sub $t5, $t9, $t5
 	 move $t4, $t7
 	 li $t3, 1
 L5:
	 bne $t3, 1, L6
 	 li $t1, 1
 L7:
	 bne $t1, 1, L8
 	 li $t0, 1
 	 add $t0, $t5, $t0
 	 move $t5, $t0
 	 lw $t0, 4($t8)
 	 li $s7, 4
 	 mul $s7, $t5, $s7
 	 lw $t0, 4($t8)
 	 lw $s6, 0($t0)
 	 li $s5, 1
 	 sub $s5, $s6, $s5
 	 li $s6, 1
 	 sle $s5, $s7, $s5
 	 sub $s5, $s6, $s5
	 bne $s5, 1, L9
 	 la $a0, error_msg 
 	 jal _error 
 L9:
	 nop
 	 li $s5, 4
 	 add $s5, $s7, $s5
 	 add $s5, $t0, $s5
 	 lw $s5, 0($s5)
 	 li $t0, 1
 	 sub $t0, $t2, $t0
 	 li $s7, 1
 	 sle $t0, $s5, $t0
 	 sub $t0, $s7, $t0
	 bne $t0, 1, L10
 	 li $t0, 0
 	 move $t1, $t0
	 b L11
 L10:
 	 li $t0, 1
 	 move $t1, $t0
 L11:
	 nop
	 b L7
 L8:
	 nop
 	 li $t0, 1
 	 move $t1, $t0
 L12:
	 bne $t1, 1, L13
 	 li $t0, 1
 	 sub $t0, $t4, $t0
 	 move $t4, $t0
 	 lw $t0, 4($t8)
 	 li $s7, 4
 	 mul $s7, $t4, $s7
 	 lw $t0, 4($t8)
 	 lw $s6, 0($t0)
 	 li $s4, 1
 	 sub $s4, $s6, $s4
 	 li $s6, 1
 	 sle $s4, $s7, $s4
 	 sub $s4, $s6, $s4
	 bne $s4, 1, L14
 	 la $a0, error_msg 
 	 jal _error 
 L14:
	 nop
 	 li $s4, 4
 	 add $s4, $s7, $s4
 	 add $s4, $t0, $s4
 	 lw $s4, 0($s4)
 	 move $s5, $s4
 	 li $s4, 1
 	 sub $s4, $s5, $s4
 	 li $s5, 1
 	 sle $s4, $t2, $s4
 	 sub $s4, $s5, $s4
	 bne $s4, 1, L15
 	 li $s4, 0
 	 move $t1, $s4
	 b L16
 L15:
 	 li $s4, 1
 	 move $t1, $s4
 L16:
	 nop
	 b L12
 L13:
	 nop
 	 lw $t1, 4($t8)
 	 li $s4, 4
 	 mul $s4, $t5, $s4
 	 lw $t1, 4($t8)
 	 lw $s5, 0($t1)
 	 li $t0, 1
 	 sub $t0, $s5, $t0
 	 li $s5, 1
 	 sle $t0, $s4, $t0
 	 sub $t0, $s5, $t0
	 bne $t0, 1, L17
 	 la $a0, error_msg 
 	 jal _error 
 L17:
	 nop
 	 li $t0, 4
 	 add $t0, $s4, $t0
 	 add $t0, $t1, $t0
 	 lw $t0, 0($t0)
 	 move $t6, $t0
 	 li $t0, 1
 	 li $t1, 4
 	 mul $t1, $t0, $t1
 	 add $t0, $t8, $t1
 	 lw $t0, 0($t0)
 	 li $s4, 4
 	 mul $s4, $t5, $s4
 	 li $s5, 1
 	 li $s7, 4
 	 mul $s7, $s5, $s7
 	 move $t1, $s7
 	 add $t1, $t8, $t1
 	 lw $t0, 0($t1)
 	 lw $t1, 0($t0)
 	 li $s7, 1
 	 sub $s7, $t1, $s7
 	 li $t1, 1
 	 sle $s7, $s4, $s7
 	 sub $s7, $t1, $s7
	 bne $s7, 1, L18
 	 la $a0, error_msg 
 	 jal _error 
 L18:
	 nop
 	 li $s7, 4
 	 add $s7, $s4, $s7
 	 add $s7, $t0, $s7
 	 lw $t0, 4($t8)
 	 li $s4, 4
 	 mul $s4, $t4, $s4
 	 lw $t0, 4($t8)
 	 lw $t1, 0($t0)
 	 li $s5, 1
 	 sub $s5, $t1, $s5
 	 li $t1, 1
 	 sle $s5, $s4, $s5
 	 sub $s5, $t1, $s5
	 bne $s5, 1, L19
 	 la $a0, error_msg 
 	 jal _error 
 L19:
	 nop
 	 li $s5, 4
 	 add $s5, $s4, $s5
 	 add $s5, $t0, $s5
 	 lw $s5, 0($s5)
 	 sw $s5, 0($s7) 
 	 li $s5, 1
 	 li $s7, 4
 	 mul $s7, $s5, $s7
 	 add $s5, $t8, $s7
 	 lw $s5, 0($s5)
 	 li $t0, 4
 	 mul $t0, $t4, $t0
 	 li $s4, 1
 	 li $t1, 4
 	 mul $t1, $s4, $t1
 	 move $s7, $t1
 	 add $s7, $t8, $s7
 	 lw $s5, 0($s7)
 	 lw $s7, 0($s5)
 	 li $t1, 1
 	 sub $t1, $s7, $t1
 	 li $s7, 1
 	 sle $t1, $t0, $t1
 	 sub $t1, $s7, $t1
	 bne $t1, 1, L20
 	 la $a0, error_msg 
 	 jal _error 
 L20:
	 nop
 	 li $t1, 4
 	 add $t1, $t0, $t1
 	 add $t1, $s5, $t1
 	 sw $t6, 0($t1) 
 	 sle $t1, $t4, $t5
	 bne $t1, 1, L21
 	 li $t1, 0
 	 move $t3, $t1
	 b L22
 L21:
 	 li $t1, 1
 	 move $t3, $t1
 L22:
	 nop
	 b L5
 L6:
	 nop
 	 li $t3, 1
 	 li $t2, 4
 	 mul $t2, $t3, $t2
 	 add $t3, $t8, $t2
 	 lw $t3, 0($t3)
 	 li $t1, 4
 	 mul $t1, $t4, $t1
 	 li $t4, 1
 	 li $s5, 4
 	 mul $s5, $t4, $s5
 	 move $t2, $s5
 	 add $t2, $t8, $t2
 	 lw $t3, 0($t2)
 	 lw $t2, 0($t3)
 	 li $s5, 1
 	 sub $s5, $t2, $s5
 	 li $t2, 1
 	 sle $s5, $t1, $s5
 	 sub $s5, $t2, $s5
	 bne $s5, 1, L23
 	 la $a0, error_msg 
 	 jal _error 
 L23:
	 nop
 	 li $s5, 4
 	 add $s5, $t1, $s5
 	 add $s5, $t3, $s5
 	 lw $t3, 4($t8)
 	 li $t1, 4
 	 mul $t1, $t5, $t1
 	 lw $t3, 4($t8)
 	 lw $t2, 0($t3)
 	 li $t4, 1
 	 sub $t4, $t2, $t4
 	 li $t2, 1
 	 sle $t4, $t1, $t4
 	 sub $t4, $t2, $t4
	 bne $t4, 1, L24
 	 la $a0, error_msg 
 	 jal _error 
 L24:
	 nop
 	 li $t4, 4
 	 add $t4, $t1, $t4
 	 add $t4, $t3, $t4
 	 lw $t4, 0($t4)
 	 sw $t4, 0($s5) 
 	 li $t4, 1
 	 li $s5, 4
 	 mul $s5, $t4, $s5
 	 add $t4, $t8, $s5
 	 lw $t4, 0($t4)
 	 li $t3, 4
 	 mul $t3, $t5, $t3
 	 li $t1, 1
 	 li $t2, 4
 	 mul $t2, $t1, $t2
 	 move $s5, $t2
 	 add $s5, $t8, $s5
 	 lw $t4, 0($s5)
 	 lw $s5, 0($t4)
 	 li $t2, 1
 	 sub $t2, $s5, $t2
 	 li $s5, 1
 	 sle $t2, $t3, $t2
 	 sub $t2, $s5, $t2
	 bne $t2, 1, L25
 	 la $a0, error_msg 
 	 jal _error 
 L25:
	 nop
 	 li $t2, 4
 	 add $t2, $t3, $t2
 	 add $t2, $t4, $t2
 	 lw $t4, 4($t8)
 	 li $t3, 4
 	 mul $t3, $t7, $t3
 	 lw $t4, 4($t8)
 	 lw $s5, 0($t4)
 	 li $t1, 1
 	 sub $t1, $s5, $t1
 	 li $s5, 1
 	 sle $t1, $t3, $t1
 	 sub $t1, $s5, $t1
	 bne $t1, 1, L26
 	 la $a0, error_msg 
 	 jal _error 
 L26:
	 nop
 	 li $t1, 4
 	 add $t1, $t3, $t1
 	 add $t1, $t4, $t1
 	 lw $t1, 0($t1)
 	 sw $t1, 0($t2) 
 	 li $t1, 1
 	 li $t2, 4
 	 mul $t2, $t1, $t2
 	 add $t1, $t8, $t2
 	 lw $t1, 0($t1)
 	 li $t4, 4
 	 mul $t4, $t7, $t4
 	 li $t3, 1
 	 li $s5, 4
 	 mul $s5, $t3, $s5
 	 move $t2, $s5
 	 add $t2, $t8, $t2
 	 lw $t1, 0($t2)
 	 lw $t2, 0($t1)
 	 li $s5, 1
 	 sub $s5, $t2, $s5
 	 li $t2, 1
 	 sle $s5, $t4, $s5
 	 sub $s5, $t2, $s5
	 bne $s5, 1, L27
 	 la $a0, error_msg 
 	 jal _error 
 L27:
	 nop
 	 li $s5, 4
 	 add $s5, $t4, $s5
 	 add $s5, $t1, $s5
 	 sw $t6, 0($s5) 
 	 move $s5, $t8
 	 lw $t6, 0($s5)
 	 lw $t6, 4($t6)
 	 li $t1, 1
 	 sub $t1, $t5, $t1
 	 sw $t0, -28($fp)
 	 sw $t1, -32($fp)
 	 sw $t2, -36($fp)
 	 sw $t3, -40($fp)
 	 sw $t4, -44($fp)
 	 sw $t5, -48($fp)
 	 sw $t6, -52($fp)
 	 sw $t7, -56($fp)
 	 sw $t8, -60($fp)
 	 sw $t9, -64($fp)
 	 move $a0, $s5
 	 move $a1, $t9
 	 move $a2, $t1
 	 jalr $t6
 	 lw $t0, -28($fp)
 	 lw $t1, -32($fp)
 	 lw $t2, -36($fp)
 	 lw $t3, -40($fp)
 	 lw $t4, -44($fp)
 	 lw $t5, -48($fp)
 	 lw $t6, -52($fp)
 	 lw $t7, -56($fp)
 	 lw $t8, -60($fp)
 	 lw $t9, -64($fp)
 	 move $t1, $v0
 	 lw $t6, 0($t8)
 	 lw $t6, 4($t6)
 	 li $s5, 1
 	 add $s5, $t5, $s5
 	 sw $t0, -28($fp)
 	 sw $t1, -32($fp)
 	 sw $t2, -36($fp)
 	 sw $t3, -40($fp)
 	 sw $t4, -44($fp)
 	 sw $t5, -48($fp)
 	 sw $t6, -52($fp)
 	 sw $t7, -56($fp)
 	 sw $t8, -60($fp)
 	 sw $t9, -64($fp)
 	 move $a0, $t8
 	 move $a1, $s5
 	 move $a2, $t7
 	 jalr $t6
 	 lw $t0, -28($fp)
 	 lw $t1, -32($fp)
 	 lw $t2, -36($fp)
 	 lw $t3, -40($fp)
 	 lw $t4, -44($fp)
 	 lw $t5, -48($fp)
 	 lw $t6, -52($fp)
 	 lw $t7, -56($fp)
 	 lw $t8, -60($fp)
 	 lw $t9, -64($fp)
 	 move $s5, $v0
 	 move $t1, $s5
	 b L3
 L2:
 	 li $s5, 0
 	 move $t1, $s5
 L3:
	 nop
 	 li $t1, 0
 	 move $v0, $t1
 	 lw $s4, -12($fp)
 	 lw $s5, -16($fp)
 	 lw $s6, -20($fp)
 	 lw $s7, -24($fp)
 	 addu $sp, $sp, 64
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
 L28:
 	 lw $t7, 8($t9)
 	 li $t6, 1
 	 sub $t6, $t7, $t6
 	 sle $t6, $t8, $t6
	 bne $t6, 1, L29
 	 lw $t6, 4($t9)
 	 li $t7, 4
 	 mul $t7, $t8, $t7
 	 lw $t6, 4($t9)
 	 lw $t5, 0($t6)
 	 li $t4, 1
 	 sub $t4, $t5, $t4
 	 li $t5, 1
 	 sle $t4, $t7, $t4
 	 sub $t4, $t5, $t4
	 bne $t4, 1, L30
 	 la $a0, error_msg 
 	 jal _error 
 L30:
	 nop
 	 li $t4, 4
 	 add $t4, $t7, $t4
 	 add $t4, $t6, $t4
 	 lw $t4, 0($t4)
 	 move $a0, $t4
 	 jal _print 
 	 li $t4, 1
 	 add $t4, $t8, $t4
 	 move $t8, $t4
	 b L28
 L29:
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
 	 li $t7, 1
 	 add $t7, $t9, $t7
 	 li $t6, 4
 	 mul $t6, $t7, $t6
 	 move $a0, $t6
 	 jal _halloc
 	 move $t6, $v0 
 	 li $t7, 4
 L31:
 	 li $t5, 1
 	 add $t5, $t9, $t5
 	 li $t4, 4
 	 mul $t4, $t5, $t4
 	 li $t5, 1
 	 sub $t5, $t4, $t5
 	 sle $t5, $t7, $t5
	 bne $t5, 1, L32
 	 add $t5, $t6, $t7
 	 li $t4, 0
 	 sw $t4, 0($t5) 
 	 li $t4, 4
 	 add $t4, $t7, $t4
 	 move $t7, $t4
	 b L31
 L32:
 	 li $t7, 4
 	 mul $t7, $t9, $t7
 	 sw $t7, 0($t6) 
 	 sw $t6, 4($t8) 
 	 li $t6, 1
 	 li $t7, 4
 	 mul $t7, $t6, $t7
 	 add $t6, $t8, $t7
 	 lw $t6, 0($t6)
 	 li $t9, 0
 	 li $t4, 4
 	 mul $t4, $t9, $t4
 	 li $t9, 1
 	 li $t5, 4
 	 mul $t5, $t9, $t5
 	 move $t7, $t5
 	 add $t7, $t8, $t7
 	 lw $t6, 0($t7)
 	 lw $t7, 0($t6)
 	 li $t5, 1
 	 sub $t5, $t7, $t5
 	 li $t7, 1
 	 sle $t5, $t4, $t5
 	 sub $t5, $t7, $t5
	 bne $t5, 1, L33
 	 la $a0, error_msg 
 	 jal _error 
 L33:
	 nop
 	 li $t5, 4
 	 add $t5, $t4, $t5
 	 add $t5, $t6, $t5
 	 li $t6, 20
 	 sw $t6, 0($t5) 
 	 li $t6, 1
 	 li $t5, 4
 	 mul $t5, $t6, $t5
 	 add $t6, $t8, $t5
 	 lw $t6, 0($t6)
 	 li $t4, 1
 	 li $t7, 4
 	 mul $t7, $t4, $t7
 	 li $t4, 1
 	 li $t9, 4
 	 mul $t9, $t4, $t9
 	 move $t5, $t9
 	 add $t5, $t8, $t5
 	 lw $t6, 0($t5)
 	 lw $t5, 0($t6)
 	 li $t9, 1
 	 sub $t9, $t5, $t9
 	 li $t5, 1
 	 sle $t9, $t7, $t9
 	 sub $t9, $t5, $t9
	 bne $t9, 1, L34
 	 la $a0, error_msg 
 	 jal _error 
 L34:
	 nop
 	 li $t9, 4
 	 add $t9, $t7, $t9
 	 add $t9, $t6, $t9
 	 li $t6, 7
 	 sw $t6, 0($t9) 
 	 li $t6, 1
 	 li $t9, 4
 	 mul $t9, $t6, $t9
 	 add $t6, $t8, $t9
 	 lw $t6, 0($t6)
 	 li $t7, 2
 	 li $t5, 4
 	 mul $t5, $t7, $t5
 	 li $t7, 1
 	 li $t4, 4
 	 mul $t4, $t7, $t4
 	 move $t9, $t4
 	 add $t9, $t8, $t9
 	 lw $t6, 0($t9)
 	 lw $t9, 0($t6)
 	 li $t4, 1
 	 sub $t4, $t9, $t4
 	 li $t9, 1
 	 sle $t4, $t5, $t4
 	 sub $t4, $t9, $t4
	 bne $t4, 1, L35
 	 la $a0, error_msg 
 	 jal _error 
 L35:
	 nop
 	 li $t4, 4
 	 add $t4, $t5, $t4
 	 add $t4, $t6, $t4
 	 li $t6, 12
 	 sw $t6, 0($t4) 
 	 li $t6, 1
 	 li $t4, 4
 	 mul $t4, $t6, $t4
 	 add $t6, $t8, $t4
 	 lw $t6, 0($t6)
 	 li $t5, 3
 	 li $t9, 4
 	 mul $t9, $t5, $t9
 	 li $t5, 1
 	 li $t7, 4
 	 mul $t7, $t5, $t7
 	 move $t4, $t7
 	 add $t4, $t8, $t4
 	 lw $t6, 0($t4)
 	 lw $t4, 0($t6)
 	 li $t7, 1
 	 sub $t7, $t4, $t7
 	 li $t4, 1
 	 sle $t7, $t9, $t7
 	 sub $t7, $t4, $t7
	 bne $t7, 1, L36
 	 la $a0, error_msg 
 	 jal _error 
 L36:
	 nop
 	 li $t7, 4
 	 add $t7, $t9, $t7
 	 add $t7, $t6, $t7
 	 li $t6, 18
 	 sw $t6, 0($t7) 
 	 li $t6, 1
 	 li $t7, 4
 	 mul $t7, $t6, $t7
 	 add $t6, $t8, $t7
 	 lw $t6, 0($t6)
 	 li $t9, 4
 	 li $t4, 4
 	 mul $t4, $t9, $t4
 	 li $t9, 1
 	 li $t5, 4
 	 mul $t5, $t9, $t5
 	 move $t7, $t5
 	 add $t7, $t8, $t7
 	 lw $t6, 0($t7)
 	 lw $t7, 0($t6)
 	 li $t5, 1
 	 sub $t5, $t7, $t5
 	 li $t7, 1
 	 sle $t5, $t4, $t5
 	 sub $t5, $t7, $t5
	 bne $t5, 1, L37
 	 la $a0, error_msg 
 	 jal _error 
 L37:
	 nop
 	 li $t5, 4
 	 add $t5, $t4, $t5
 	 add $t5, $t6, $t5
 	 li $t6, 2
 	 sw $t6, 0($t5) 
 	 li $t6, 1
 	 li $t5, 4
 	 mul $t5, $t6, $t5
 	 add $t6, $t8, $t5
 	 lw $t6, 0($t6)
 	 li $t4, 5
 	 li $t7, 4
 	 mul $t7, $t4, $t7
 	 li $t4, 1
 	 li $t9, 4
 	 mul $t9, $t4, $t9
 	 move $t5, $t9
 	 add $t5, $t8, $t5
 	 lw $t6, 0($t5)
 	 lw $t5, 0($t6)
 	 li $t9, 1
 	 sub $t9, $t5, $t9
 	 li $t5, 1
 	 sle $t9, $t7, $t9
 	 sub $t9, $t5, $t9
	 bne $t9, 1, L38
 	 la $a0, error_msg 
 	 jal _error 
 L38:
	 nop
 	 li $t9, 4
 	 add $t9, $t7, $t9
 	 add $t9, $t6, $t9
 	 li $t6, 11
 	 sw $t6, 0($t9) 
 	 li $t6, 1
 	 li $t9, 4
 	 mul $t9, $t6, $t9
 	 add $t6, $t8, $t9
 	 lw $t6, 0($t6)
 	 li $t7, 6
 	 li $t5, 4
 	 mul $t5, $t7, $t5
 	 li $t7, 1
 	 li $t4, 4
 	 mul $t4, $t7, $t4
 	 move $t9, $t4
 	 add $t9, $t8, $t9
 	 lw $t6, 0($t9)
 	 lw $t9, 0($t6)
 	 li $t4, 1
 	 sub $t4, $t9, $t4
 	 li $t9, 1
 	 sle $t4, $t5, $t4
 	 sub $t4, $t9, $t4
	 bne $t4, 1, L39
 	 la $a0, error_msg 
 	 jal _error 
 L39:
	 nop
 	 li $t4, 4
 	 add $t4, $t5, $t4
 	 add $t4, $t6, $t4
 	 li $t6, 6
 	 sw $t6, 0($t4) 
 	 li $t6, 1
 	 li $t4, 4
 	 mul $t4, $t6, $t4
 	 add $t6, $t8, $t4
 	 lw $t6, 0($t6)
 	 li $t5, 7
 	 li $t9, 4
 	 mul $t9, $t5, $t9
 	 li $t5, 1
 	 li $t7, 4
 	 mul $t7, $t5, $t7
 	 move $t4, $t7
 	 add $t4, $t8, $t4
 	 lw $t6, 0($t4)
 	 lw $t4, 0($t6)
 	 li $t7, 1
 	 sub $t7, $t4, $t7
 	 li $t4, 1
 	 sle $t7, $t9, $t7
 	 sub $t7, $t4, $t7
	 bne $t7, 1, L40
 	 la $a0, error_msg 
 	 jal _error 
 L40:
	 nop
 	 li $t7, 4
 	 add $t7, $t9, $t7
 	 add $t7, $t6, $t7
 	 li $t6, 9
 	 sw $t6, 0($t7) 
 	 li $t6, 1
 	 li $t7, 4
 	 mul $t7, $t6, $t7
 	 add $t6, $t8, $t7
 	 lw $t6, 0($t6)
 	 li $t9, 8
 	 li $t4, 4
 	 mul $t4, $t9, $t4
 	 li $t9, 1
 	 li $t5, 4
 	 mul $t5, $t9, $t5
 	 move $t7, $t5
 	 add $t7, $t8, $t7
 	 lw $t6, 0($t7)
 	 lw $t7, 0($t6)
 	 li $t5, 1
 	 sub $t5, $t7, $t5
 	 li $t7, 1
 	 sle $t5, $t4, $t5
 	 sub $t5, $t7, $t5
	 bne $t5, 1, L41
 	 la $a0, error_msg 
 	 jal _error 
 L41:
	 nop
 	 li $t5, 4
 	 add $t5, $t4, $t5
 	 add $t5, $t6, $t5
 	 li $t6, 19
 	 sw $t6, 0($t5) 
 	 li $t6, 1
 	 li $t5, 4
 	 mul $t5, $t6, $t5
 	 add $t6, $t8, $t5
 	 lw $t6, 0($t6)
 	 li $t4, 9
 	 li $t7, 4
 	 mul $t7, $t4, $t7
 	 li $t4, 1
 	 li $t9, 4
 	 mul $t9, $t4, $t9
 	 move $t5, $t9
 	 add $t5, $t8, $t5
 	 lw $t6, 0($t5)
 	 lw $t5, 0($t6)
 	 li $t8, 1
 	 sub $t8, $t5, $t8
 	 li $t5, 1
 	 sle $t8, $t7, $t8
 	 sub $t8, $t5, $t8
	 bne $t8, 1, L42
 	 la $a0, error_msg 
 	 jal _error 
 L42:
	 nop
 	 li $t8, 4
 	 add $t8, $t7, $t8
 	 add $t8, $t6, $t8
 	 li $t6, 5
 	 sw $t6, 0($t8) 
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
