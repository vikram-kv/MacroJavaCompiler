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
 	 la $t7, BBS_Init
 	 sw $t7, 12($t9) 
 	 la $t7, BBS_Print
 	 sw $t7, 8($t9) 
 	 la $t7, BBS_Sort
 	 sw $t7, 4($t9) 
 	 la $t7, BBS_Start
 	 sw $t7, 0($t9) 
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
 	 .globl 	 BBS_Start
 BBS_Start:
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
 	 li $t9, 99999
 	 move $a0, $t9
 	 jal _print 
 	 move $t9, $t8
 	 lw $t7, 0($t9)
 	 lw $t7, 4($t7)
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
 	 move $t6, $t7
 	 lw $t7, 0($t8)
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
 	 move $a0, $t8
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
 	 move $t6, $t7
 	 li $t6, 0
 	 move $v0, $t6
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 BBS_Sort
 BBS_Sort:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 12
 	 sw $s7, -12($fp)
 	 move $t9, $a0
 	 lw $t8, 8($t9)
 	 li $t7, 1
 	 sub $t7, $t8, $t7
 	 li $t8, 0
 	 li $t6, 1
 	 sub $t6, $t8, $t6
 L2:
 	 li $t8, 1
 	 sub $t8, $t7, $t8
 	 sle $t8, $t6, $t8
	 bne $t8, 1, L3
 	 li $t8, 1
 L4:
 	 sle $t5, $t8, $t7
	 bne $t5, 1, L5
 	 li $t5, 1
 	 sub $t5, $t8, $t5
 	 lw $t4, 4($t9)
 	 li $t3, 4
 	 mul $t3, $t5, $t3
 	 lw $t4, 4($t9)
 	 lw $t5, 0($t4)
 	 li $t2, 1
 	 li $t1, 1
 	 sub $t1, $t5, $t1
 	 sle $t1, $t3, $t1
 	 sub $t1, $t2, $t1
	 bne $t1, 1, L6
 	 la $a0, error_msg 
 	 jal _error 
 L6:
	 nop
 	 li $t1, 4
 	 add $t1, $t3, $t1
 	 add $t1, $t4, $t1
 	 lw $t1, 0($t1)
 	 lw $t4, 4($t9)
 	 li $t3, 4
 	 mul $t3, $t8, $t3
 	 lw $t4, 4($t9)
 	 lw $t2, 0($t4)
 	 li $t5, 1
 	 li $t0, 1
 	 sub $t0, $t2, $t0
 	 sle $t0, $t3, $t0
 	 sub $t0, $t5, $t0
	 bne $t0, 1, L7
 	 la $a0, error_msg 
 	 jal _error 
 L7:
	 nop
 	 li $t0, 4
 	 add $t0, $t3, $t0
 	 add $t0, $t4, $t0
 	 lw $t0, 0($t0)
 	 li $t4, 1
 	 sub $t4, $t1, $t4
 	 sle $t4, $t0, $t4
	 bne $t4, 1, L8
 	 li $t4, 1
 	 sub $t4, $t8, $t4
 	 lw $t0, 4($t9)
 	 li $t1, 4
 	 mul $t1, $t4, $t1
 	 lw $t0, 4($t9)
 	 lw $t3, 0($t0)
 	 li $t5, 1
 	 li $t2, 1
 	 sub $t2, $t3, $t2
 	 sle $t2, $t1, $t2
 	 sub $t2, $t5, $t2
	 bne $t2, 1, L10
 	 la $a0, error_msg 
 	 jal _error 
 L10:
	 nop
 	 li $t2, 4
 	 add $t2, $t1, $t2
 	 add $t2, $t0, $t2
 	 lw $t2, 0($t2)
 	 li $t0, 1
 	 li $t1, 4
 	 mul $t1, $t0, $t1
 	 add $t0, $t9, $t1
 	 lw $t0, 0($t0)
 	 li $t5, 4
 	 mul $t5, $t4, $t5
 	 li $t4, 1
 	 li $t3, 4
 	 mul $t3, $t4, $t3
 	 move $t1, $t3
 	 add $t1, $t9, $t1
 	 lw $t0, 0($t1)
 	 lw $t1, 0($t0)
 	 li $t3, 1
 	 li $t4, 1
 	 sub $t4, $t1, $t4
 	 sle $t4, $t5, $t4
 	 sub $t4, $t3, $t4
	 bne $t4, 1, L11
 	 la $a0, error_msg 
 	 jal _error 
 L11:
	 nop
 	 li $t4, 4
 	 add $t4, $t5, $t4
 	 add $t4, $t0, $t4
 	 lw $t0, 4($t9)
 	 li $t5, 4
 	 mul $t5, $t8, $t5
 	 lw $t0, 4($t9)
 	 lw $t3, 0($t0)
 	 li $t1, 1
 	 li $s7, 1
 	 sub $s7, $t3, $s7
 	 sle $s7, $t5, $s7
 	 sub $s7, $t1, $s7
	 bne $s7, 1, L12
 	 la $a0, error_msg 
 	 jal _error 
 L12:
	 nop
 	 li $s7, 4
 	 add $s7, $t5, $s7
 	 add $s7, $t0, $s7
 	 lw $s7, 0($s7)
 	 sw $s7, 0($t4) 
 	 li $s7, 1
 	 li $t4, 4
 	 mul $t4, $s7, $t4
 	 add $s7, $t9, $t4
 	 lw $s7, 0($s7)
 	 li $t0, 4
 	 mul $t0, $t8, $t0
 	 li $t5, 1
 	 li $t1, 4
 	 mul $t1, $t5, $t1
 	 move $t4, $t1
 	 add $t4, $t9, $t4
 	 lw $s7, 0($t4)
 	 lw $t4, 0($s7)
 	 li $t1, 1
 	 li $t5, 1
 	 sub $t5, $t4, $t5
 	 sle $t5, $t0, $t5
 	 sub $t5, $t1, $t5
	 bne $t5, 1, L13
 	 la $a0, error_msg 
 	 jal _error 
 L13:
	 nop
 	 li $t5, 4
 	 add $t5, $t0, $t5
 	 add $t5, $s7, $t5
 	 sw $t2, 0($t5) 
	 b L9
 L8:
 	 li $t5, 0
 L9:
	 nop
 	 li $t5, 1
 	 add $t5, $t8, $t5
 	 move $t8, $t5
	 b L4
 L5:
	 nop
 	 li $t8, 1
 	 sub $t8, $t7, $t8
 	 move $t7, $t8
	 b L2
 L3:
	 nop
 	 li $t6, 0
 	 move $v0, $t6
 	 lw $s7, -12($fp)
 	 addu $sp, $sp, 12
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 BBS_Print
 BBS_Print:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 li $t8, 0
 L14:
 	 lw $t7, 8($t9)
 	 li $t6, 1
 	 sub $t6, $t7, $t6
 	 sle $t6, $t8, $t6
	 bne $t6, 1, L15
 	 lw $t6, 4($t9)
 	 li $t7, 4
 	 mul $t7, $t8, $t7
 	 lw $t6, 4($t9)
 	 lw $t5, 0($t6)
 	 li $t4, 1
 	 li $t3, 1
 	 sub $t3, $t5, $t3
 	 sle $t3, $t7, $t3
 	 sub $t3, $t4, $t3
	 bne $t3, 1, L16
 	 la $a0, error_msg 
 	 jal _error 
 L16:
	 nop
 	 li $t3, 4
 	 add $t3, $t7, $t3
 	 add $t3, $t6, $t3
 	 lw $t3, 0($t3)
 	 move $a0, $t3
 	 jal _print 
 	 li $t3, 1
 	 add $t3, $t8, $t3
 	 move $t8, $t3
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
 	 .globl 	 BBS_Init
 BBS_Init:
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
 L17:
 	 li $t5, 1
 	 add $t5, $t9, $t5
 	 li $t4, 4
 	 mul $t4, $t5, $t4
 	 li $t5, 1
 	 sub $t5, $t4, $t5
 	 sle $t5, $t7, $t5
	 bne $t5, 1, L18
 	 add $t5, $t6, $t7
 	 li $t4, 0
 	 sw $t4, 0($t5) 
 	 li $t4, 4
 	 add $t4, $t7, $t4
 	 move $t7, $t4
	 b L17
 L18:
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
 	 li $t9, 1
 	 sub $t9, $t7, $t9
 	 sle $t9, $t4, $t9
 	 sub $t9, $t5, $t9
	 bne $t9, 1, L19
 	 la $a0, error_msg 
 	 jal _error 
 L19:
	 nop
 	 li $t9, 4
 	 add $t9, $t4, $t9
 	 add $t9, $t6, $t9
 	 li $t6, 20
 	 sw $t6, 0($t9) 
 	 li $t6, 1
 	 li $t9, 4
 	 mul $t9, $t6, $t9
 	 add $t6, $t8, $t9
 	 lw $t6, 0($t6)
 	 li $t4, 1
 	 li $t5, 4
 	 mul $t5, $t4, $t5
 	 li $t4, 1
 	 li $t7, 4
 	 mul $t7, $t4, $t7
 	 move $t9, $t7
 	 add $t9, $t8, $t9
 	 lw $t6, 0($t9)
 	 lw $t9, 0($t6)
 	 li $t7, 1
 	 li $t4, 1
 	 sub $t4, $t9, $t4
 	 sle $t4, $t5, $t4
 	 sub $t4, $t7, $t4
	 bne $t4, 1, L20
 	 la $a0, error_msg 
 	 jal _error 
 L20:
	 nop
 	 li $t4, 4
 	 add $t4, $t5, $t4
 	 add $t4, $t6, $t4
 	 li $t6, 7
 	 sw $t6, 0($t4) 
 	 li $t6, 1
 	 li $t4, 4
 	 mul $t4, $t6, $t4
 	 add $t6, $t8, $t4
 	 lw $t6, 0($t6)
 	 li $t5, 2
 	 li $t7, 4
 	 mul $t7, $t5, $t7
 	 li $t5, 1
 	 li $t9, 4
 	 mul $t9, $t5, $t9
 	 move $t4, $t9
 	 add $t4, $t8, $t4
 	 lw $t6, 0($t4)
 	 lw $t4, 0($t6)
 	 li $t9, 1
 	 li $t5, 1
 	 sub $t5, $t4, $t5
 	 sle $t5, $t7, $t5
 	 sub $t5, $t9, $t5
	 bne $t5, 1, L21
 	 la $a0, error_msg 
 	 jal _error 
 L21:
	 nop
 	 li $t5, 4
 	 add $t5, $t7, $t5
 	 add $t5, $t6, $t5
 	 li $t6, 12
 	 sw $t6, 0($t5) 
 	 li $t6, 1
 	 li $t5, 4
 	 mul $t5, $t6, $t5
 	 add $t6, $t8, $t5
 	 lw $t6, 0($t6)
 	 li $t7, 3
 	 li $t9, 4
 	 mul $t9, $t7, $t9
 	 li $t7, 1
 	 li $t4, 4
 	 mul $t4, $t7, $t4
 	 move $t5, $t4
 	 add $t5, $t8, $t5
 	 lw $t6, 0($t5)
 	 lw $t5, 0($t6)
 	 li $t4, 1
 	 li $t7, 1
 	 sub $t7, $t5, $t7
 	 sle $t7, $t9, $t7
 	 sub $t7, $t4, $t7
	 bne $t7, 1, L22
 	 la $a0, error_msg 
 	 jal _error 
 L22:
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
 	 li $t9, 1
 	 sub $t9, $t7, $t9
 	 sle $t9, $t4, $t9
 	 sub $t9, $t5, $t9
	 bne $t9, 1, L23
 	 la $a0, error_msg 
 	 jal _error 
 L23:
	 nop
 	 li $t9, 4
 	 add $t9, $t4, $t9
 	 add $t9, $t6, $t9
 	 li $t6, 2
 	 sw $t6, 0($t9) 
 	 li $t6, 1
 	 li $t9, 4
 	 mul $t9, $t6, $t9
 	 add $t6, $t8, $t9
 	 lw $t6, 0($t6)
 	 li $t4, 5
 	 li $t5, 4
 	 mul $t5, $t4, $t5
 	 li $t4, 1
 	 li $t7, 4
 	 mul $t7, $t4, $t7
 	 move $t9, $t7
 	 add $t9, $t8, $t9
 	 lw $t6, 0($t9)
 	 lw $t9, 0($t6)
 	 li $t7, 1
 	 li $t4, 1
 	 sub $t4, $t9, $t4
 	 sle $t4, $t5, $t4
 	 sub $t4, $t7, $t4
	 bne $t4, 1, L24
 	 la $a0, error_msg 
 	 jal _error 
 L24:
	 nop
 	 li $t4, 4
 	 add $t4, $t5, $t4
 	 add $t4, $t6, $t4
 	 li $t6, 11
 	 sw $t6, 0($t4) 
 	 li $t6, 1
 	 li $t4, 4
 	 mul $t4, $t6, $t4
 	 add $t6, $t8, $t4
 	 lw $t6, 0($t6)
 	 li $t5, 6
 	 li $t7, 4
 	 mul $t7, $t5, $t7
 	 li $t5, 1
 	 li $t9, 4
 	 mul $t9, $t5, $t9
 	 move $t4, $t9
 	 add $t4, $t8, $t4
 	 lw $t6, 0($t4)
 	 lw $t4, 0($t6)
 	 li $t9, 1
 	 li $t5, 1
 	 sub $t5, $t4, $t5
 	 sle $t5, $t7, $t5
 	 sub $t5, $t9, $t5
	 bne $t5, 1, L25
 	 la $a0, error_msg 
 	 jal _error 
 L25:
	 nop
 	 li $t5, 4
 	 add $t5, $t7, $t5
 	 add $t5, $t6, $t5
 	 li $t6, 6
 	 sw $t6, 0($t5) 
 	 li $t6, 1
 	 li $t5, 4
 	 mul $t5, $t6, $t5
 	 add $t6, $t8, $t5
 	 lw $t6, 0($t6)
 	 li $t7, 7
 	 li $t9, 4
 	 mul $t9, $t7, $t9
 	 li $t7, 1
 	 li $t4, 4
 	 mul $t4, $t7, $t4
 	 move $t5, $t4
 	 add $t5, $t8, $t5
 	 lw $t6, 0($t5)
 	 lw $t5, 0($t6)
 	 li $t4, 1
 	 li $t7, 1
 	 sub $t7, $t5, $t7
 	 sle $t7, $t9, $t7
 	 sub $t7, $t4, $t7
	 bne $t7, 1, L26
 	 la $a0, error_msg 
 	 jal _error 
 L26:
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
 	 li $t9, 1
 	 sub $t9, $t7, $t9
 	 sle $t9, $t4, $t9
 	 sub $t9, $t5, $t9
	 bne $t9, 1, L27
 	 la $a0, error_msg 
 	 jal _error 
 L27:
	 nop
 	 li $t9, 4
 	 add $t9, $t4, $t9
 	 add $t9, $t6, $t9
 	 li $t6, 19
 	 sw $t6, 0($t9) 
 	 li $t6, 1
 	 li $t9, 4
 	 mul $t9, $t6, $t9
 	 add $t6, $t8, $t9
 	 lw $t6, 0($t6)
 	 li $t4, 9
 	 li $t5, 4
 	 mul $t5, $t4, $t5
 	 li $t4, 1
 	 li $t7, 4
 	 mul $t7, $t4, $t7
 	 move $t9, $t7
 	 add $t9, $t8, $t9
 	 lw $t6, 0($t9)
 	 lw $t9, 0($t6)
 	 li $t8, 1
 	 li $t7, 1
 	 sub $t7, $t9, $t7
 	 sle $t7, $t5, $t7
 	 sub $t7, $t8, $t7
	 bne $t7, 1, L28
 	 la $a0, error_msg 
 	 jal _error 
 L28:
	 nop
 	 li $t7, 4
 	 add $t7, $t5, $t7
 	 add $t7, $t6, $t7
 	 li $t6, 5
 	 sw $t6, 0($t7) 
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
