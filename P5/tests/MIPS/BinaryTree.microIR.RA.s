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
 	 li $t8, 4
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, BT_Start
 	 sw $t7, 0($t9) 
 	 sw $t9, 0($t8) 
 	 lw $t9, 0($t8)
 	 lw $t9, 0($t9)
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
 	 move $t9, $v0
 	 move $a0, $t9
 	 jal _print 
 	 addu $sp, $sp, 44
 	 lw $ra, -4($fp) 
 	 jal _exitret 
 
 
 	 .text 
 	 .globl 	 BT_Start
 BT_Start:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 li $t9, 80
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 28
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, Tree_RecPrint
 	 sw $t7, 76($t9) 
 	 la $t7, Tree_Print
 	 sw $t7, 72($t9) 
 	 la $t7, Tree_Search
 	 sw $t7, 68($t9) 
 	 la $t7, Tree_RemoveLeft
 	 sw $t7, 64($t9) 
 	 la $t7, Tree_RemoveRight
 	 sw $t7, 60($t9) 
 	 la $t7, Tree_Remove
 	 sw $t7, 56($t9) 
 	 la $t7, Tree_Delete
 	 sw $t7, 52($t9) 
 	 la $t7, Tree_Insert
 	 sw $t7, 48($t9) 
 	 la $t7, Tree_Compare
 	 sw $t7, 44($t9) 
 	 la $t7, Tree_SetHas_Right
 	 sw $t7, 40($t9) 
 	 la $t7, Tree_SetHas_Left
 	 sw $t7, 36($t9) 
 	 la $t7, Tree_GetHas_Left
 	 sw $t7, 32($t9) 
 	 la $t7, Tree_GetHas_Right
 	 sw $t7, 28($t9) 
 	 la $t7, Tree_SetKey
 	 sw $t7, 24($t9) 
 	 la $t7, Tree_GetKey
 	 sw $t7, 20($t9) 
 	 la $t7, Tree_GetLeft
 	 sw $t7, 16($t9) 
 	 la $t7, Tree_GetRight
 	 sw $t7, 12($t9) 
 	 la $t7, Tree_SetLeft
 	 sw $t7, 8($t9) 
 	 la $t7, Tree_SetRight
 	 sw $t7, 4($t9) 
 	 la $t7, Tree_Init
 	 sw $t7, 0($t9) 
 	 li $t7, 4
 L2:
 	 li $t6, 27
 	 sle $t6, $t7, $t6
	 bne $t6, 1, L3
 	 add $t6, $t8, $t7
 	 li $t5, 0
 	 sw $t5, 0($t6) 
 	 li $t5, 4
 	 add $t5, $t7, $t5
 	 move $t7, $t5
	 b L2
 L3:
 	 sw $t9, 0($t8) 
 	 move $t9, $t8
 	 lw $t7, 0($t9)
 	 lw $t7, 0($t7)
 	 li $t5, 16
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
 	 move $a1, $t5
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
 	 move $t5, $v0
 	 move $t7, $t8
 	 lw $t9, 0($t7)
 	 lw $t9, 72($t9)
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
 	 move $t5, $t9
 	 li $t9, 100000000
 	 move $a0, $t9
 	 jal _print 
 	 move $t9, $t8
 	 lw $t7, 0($t9)
 	 lw $t7, 48($t7)
 	 li $t6, 8
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
 	 move $a1, $t6
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
 	 move $t6, $v0
 	 move $t5, $t6
 	 move $t6, $t8
 	 lw $t7, 0($t6)
 	 lw $t7, 72($t7)
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
 	 move $t5, $t7
 	 move $t7, $t8
 	 lw $t6, 0($t7)
 	 lw $t6, 48($t6)
 	 li $t9, 24
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
 	 move $t5, $t9
 	 move $t9, $t8
 	 lw $t6, 0($t9)
 	 lw $t6, 48($t6)
 	 li $t7, 4
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
 	 move $t5, $t7
 	 move $t7, $t8
 	 lw $t6, 0($t7)
 	 lw $t6, 48($t6)
 	 li $t9, 12
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
 	 move $t5, $t9
 	 move $t9, $t8
 	 lw $t6, 0($t9)
 	 lw $t6, 48($t6)
 	 li $t7, 20
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
 	 move $t5, $t7
 	 move $t7, $t8
 	 lw $t6, 0($t7)
 	 lw $t6, 48($t6)
 	 li $t9, 28
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
 	 move $t5, $t9
 	 move $t9, $t8
 	 lw $t6, 0($t9)
 	 lw $t6, 48($t6)
 	 li $t7, 14
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
 	 move $t5, $t7
 	 move $t7, $t8
 	 lw $t6, 0($t7)
 	 lw $t6, 72($t6)
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
 	 move $t5, $t6
 	 move $t6, $t8
 	 lw $t7, 0($t6)
 	 lw $t7, 68($t7)
 	 li $t9, 24
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
 	 move $a1, $t9
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
 	 move $t9, $v0
 	 move $a0, $t9
 	 jal _print 
 	 move $t9, $t8
 	 lw $t7, 0($t9)
 	 lw $t7, 68($t7)
 	 li $t6, 12
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
 	 move $a1, $t6
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
 	 move $t6, $v0
 	 move $a0, $t6
 	 jal _print 
 	 move $t6, $t8
 	 lw $t7, 0($t6)
 	 lw $t7, 68($t7)
 	 li $t9, 16
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
 	 move $a1, $t9
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
 	 move $t9, $v0
 	 move $a0, $t9
 	 jal _print 
 	 move $t9, $t8
 	 lw $t7, 0($t9)
 	 lw $t7, 68($t7)
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
 	 move $a0, $t9
 	 move $a1, $t6
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
 	 move $t6, $v0
 	 move $a0, $t6
 	 jal _print 
 	 move $t6, $t8
 	 lw $t7, 0($t6)
 	 lw $t7, 68($t7)
 	 li $t9, 12
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
 	 move $a1, $t9
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
 	 move $t9, $v0
 	 move $a0, $t9
 	 jal _print 
 	 move $t9, $t8
 	 lw $t7, 0($t9)
 	 lw $t7, 52($t7)
 	 li $t6, 12
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
 	 move $a1, $t6
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
 	 move $t6, $v0
 	 move $t5, $t6
 	 move $t6, $t8
 	 lw $t7, 0($t6)
 	 lw $t7, 72($t7)
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
 	 move $t5, $t7
 	 lw $t5, 0($t8)
 	 lw $t5, 68($t5)
 	 li $t7, 12
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
 	 move $a1, $t7
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
 	 move $t7, $v0
 	 move $a0, $t7
 	 jal _print 
 	 li $t7, 0
 	 move $v0, $t7
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_Init
 Tree_Init:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 sw $t9, 12($t8) 
 	 li $t9, 0
 	 sw $t9, 16($t8) 
 	 li $t9, 0
 	 sw $t9, 20($t8) 
 	 li $t9, 1
 	 move $v0, $t9
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_SetRight
 Tree_SetRight:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 sw $t9, 8($t8) 
 	 li $t8, 1
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_SetLeft
 Tree_SetLeft:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 sw $t9, 4($t8) 
 	 li $t8, 1
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_GetRight
 Tree_GetRight:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 lw $t9, 8($t9)
 	 move $v0, $t9
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_GetLeft
 Tree_GetLeft:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 lw $t9, 4($t9)
 	 move $v0, $t9
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_GetKey
 Tree_GetKey:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 lw $t9, 12($t9)
 	 move $v0, $t9
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_SetKey
 Tree_SetKey:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 sw $t9, 12($t8) 
 	 li $t8, 1
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_GetHas_Right
 Tree_GetHas_Right:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 lw $t9, 20($t9)
 	 move $v0, $t9
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_GetHas_Left
 Tree_GetHas_Left:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 lw $t9, 16($t9)
 	 move $v0, $t9
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_SetHas_Left
 Tree_SetHas_Left:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 sw $t9, 16($t8) 
 	 li $t8, 1
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_SetHas_Right
 Tree_SetHas_Right:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t8, $a0
 	 move $t9, $a1
 	 sw $t9, 20($t8) 
 	 li $t8, 1
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_Compare
 Tree_Compare:
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
	 bne $t5, 1, L4
 	 li $t5, 0
 	 move $t7, $t5
	 b L5
 L4:
 	 li $t5, 1
 	 sub $t5, $t6, $t5
 	 li $t6, 1
 	 sle $t5, $t8, $t5
 	 sub $t5, $t6, $t5
	 bne $t5, 1, L6
 	 li $t5, 0
 	 move $t7, $t5
	 b L7
 L6:
 	 li $t5, 1
 	 move $t7, $t5
 L7:
	 nop
 L5:
	 nop
 	 move $v0, $t7
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_Insert
 Tree_Insert:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t9, $a0
 	 move $t8, $a1
 	 li $t7, 80
 	 move $a0, $t7
 	 jal _halloc
 	 move $t7, $v0 
 	 li $t6, 28
 	 move $a0, $t6
 	 jal _halloc
 	 move $t6, $v0 
 	 la $t5, Tree_RecPrint
 	 sw $t5, 76($t7) 
 	 la $t5, Tree_Print
 	 sw $t5, 72($t7) 
 	 la $t5, Tree_Search
 	 sw $t5, 68($t7) 
 	 la $t5, Tree_RemoveLeft
 	 sw $t5, 64($t7) 
 	 la $t5, Tree_RemoveRight
 	 sw $t5, 60($t7) 
 	 la $t5, Tree_Remove
 	 sw $t5, 56($t7) 
 	 la $t5, Tree_Delete
 	 sw $t5, 52($t7) 
 	 la $t5, Tree_Insert
 	 sw $t5, 48($t7) 
 	 la $t5, Tree_Compare
 	 sw $t5, 44($t7) 
 	 la $t5, Tree_SetHas_Right
 	 sw $t5, 40($t7) 
 	 la $t5, Tree_SetHas_Left
 	 sw $t5, 36($t7) 
 	 la $t5, Tree_GetHas_Left
 	 sw $t5, 32($t7) 
 	 la $t5, Tree_GetHas_Right
 	 sw $t5, 28($t7) 
 	 la $t5, Tree_SetKey
 	 sw $t5, 24($t7) 
 	 la $t5, Tree_GetKey
 	 sw $t5, 20($t7) 
 	 la $t5, Tree_GetLeft
 	 sw $t5, 16($t7) 
 	 la $t5, Tree_GetRight
 	 sw $t5, 12($t7) 
 	 la $t5, Tree_SetLeft
 	 sw $t5, 8($t7) 
 	 la $t5, Tree_SetRight
 	 sw $t5, 4($t7) 
 	 la $t5, Tree_Init
 	 sw $t5, 0($t7) 
 	 li $t5, 4
 L8:
 	 li $t4, 27
 	 sle $t4, $t5, $t4
	 bne $t4, 1, L9
 	 add $t4, $t6, $t5
 	 li $t3, 0
 	 sw $t3, 0($t4) 
 	 li $t3, 4
 	 add $t3, $t5, $t3
 	 move $t5, $t3
	 b L8
 L9:
 	 sw $t7, 0($t6) 
 	 move $t7, $t6
 	 lw $t5, 0($t7)
 	 lw $t5, 0($t5)
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
 	 move $a1, $t8
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
 	 li $t7, 1
 L10:
	 bne $t7, 1, L11
 	 move $t3, $t9
 	 lw $t4, 0($t3)
 	 lw $t4, 20($t4)
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
 	 move $a0, $t3
 	 jalr $t4
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
 	 move $t4, $v0
 	 li $t3, 1
 	 sub $t3, $t4, $t3
 	 sle $t3, $t8, $t3
	 bne $t3, 1, L12
 	 move $t3, $t9
 	 lw $t4, 0($t3)
 	 lw $t4, 32($t4)
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
 	 move $a0, $t3
 	 jalr $t4
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
 	 move $t4, $v0
	 bne $t4, 1, L14
 	 move $t4, $t9
 	 lw $t3, 0($t4)
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
 	 move $a0, $t4
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
 	 move $t9, $t3
	 b L15
 L14:
 	 li $t3, 0
 	 move $t7, $t3
 	 move $t3, $t9
 	 lw $t4, 0($t3)
 	 lw $t4, 36($t4)
 	 li $t2, 1
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
 	 move $a0, $t3
 	 move $a1, $t2
 	 jalr $t4
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
 	 move $t5, $t2
 	 move $t2, $t9
 	 lw $t4, 0($t2)
 	 lw $t4, 8($t4)
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
 	 move $a0, $t2
 	 move $a1, $t6
 	 jalr $t4
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
 	 move $t4, $v0
 	 move $t5, $t4
 L15:
	 nop
	 b L13
 L12:
 	 move $t4, $t9
 	 lw $t2, 0($t4)
 	 lw $t2, 28($t2)
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
 	 move $a0, $t4
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
	 bne $t2, 1, L16
 	 move $t2, $t9
 	 lw $t4, 0($t2)
 	 lw $t4, 12($t4)
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
 	 move $a0, $t2
 	 jalr $t4
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
 	 move $t4, $v0
 	 move $t9, $t4
	 b L17
 L16:
 	 li $t4, 0
 	 move $t7, $t4
 	 move $t4, $t9
 	 lw $t2, 0($t4)
 	 lw $t2, 40($t2)
 	 li $t3, 1
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
 	 move $a0, $t4
 	 move $a1, $t3
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
 	 move $t3, $v0
 	 move $t5, $t3
 	 move $t3, $t9
 	 lw $t2, 0($t3)
 	 lw $t2, 4($t2)
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
 	 move $a0, $t3
 	 move $a1, $t6
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
 	 move $t5, $t2
 L17:
	 nop
 L13:
	 nop
	 b L10
 L11:
	 nop
 	 li $t7, 1
 	 move $v0, $t7
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_Delete
 Tree_Delete:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 52
 	 sw $s7, -12($fp)
 	 move $t8, $a0
 	 move $t9, $a1
 	 move $t7, $t8
 	 move $t6, $t8
 	 li $t5, 1
 	 li $t4, 0
 	 li $t3, 1
 L18:
	 bne $t5, 1, L19
 	 move $t2, $t7
 	 lw $t1, 0($t2)
 	 lw $t1, 20($t1)
 	 sw $t0, -16($fp)
 	 sw $t1, -20($fp)
 	 sw $t2, -24($fp)
 	 sw $t3, -28($fp)
 	 sw $t4, -32($fp)
 	 sw $t5, -36($fp)
 	 sw $t6, -40($fp)
 	 sw $t7, -44($fp)
 	 sw $t8, -48($fp)
 	 sw $t9, -52($fp)
 	 move $a0, $t2
 	 jalr $t1
 	 lw $t0, -16($fp)
 	 lw $t1, -20($fp)
 	 lw $t2, -24($fp)
 	 lw $t3, -28($fp)
 	 lw $t4, -32($fp)
 	 lw $t5, -36($fp)
 	 lw $t6, -40($fp)
 	 lw $t7, -44($fp)
 	 lw $t8, -48($fp)
 	 lw $t9, -52($fp)
 	 move $t1, $v0
 	 li $t2, 1
 	 sub $t2, $t1, $t2
 	 sle $t2, $t9, $t2
	 bne $t2, 1, L20
 	 move $t2, $t7
 	 lw $t0, 0($t2)
 	 lw $t0, 32($t0)
 	 sw $t0, -16($fp)
 	 sw $t1, -20($fp)
 	 sw $t2, -24($fp)
 	 sw $t3, -28($fp)
 	 sw $t4, -32($fp)
 	 sw $t5, -36($fp)
 	 sw $t6, -40($fp)
 	 sw $t7, -44($fp)
 	 sw $t8, -48($fp)
 	 sw $t9, -52($fp)
 	 move $a0, $t2
 	 jalr $t0
 	 lw $t0, -16($fp)
 	 lw $t1, -20($fp)
 	 lw $t2, -24($fp)
 	 lw $t3, -28($fp)
 	 lw $t4, -32($fp)
 	 lw $t5, -36($fp)
 	 lw $t6, -40($fp)
 	 lw $t7, -44($fp)
 	 lw $t8, -48($fp)
 	 lw $t9, -52($fp)
 	 move $t0, $v0
	 bne $t0, 1, L22
 	 move $t6, $t7
 	 move $t0, $t7
 	 lw $t2, 0($t0)
 	 lw $t2, 16($t2)
 	 sw $t0, -16($fp)
 	 sw $t1, -20($fp)
 	 sw $t2, -24($fp)
 	 sw $t3, -28($fp)
 	 sw $t4, -32($fp)
 	 sw $t5, -36($fp)
 	 sw $t6, -40($fp)
 	 sw $t7, -44($fp)
 	 sw $t8, -48($fp)
 	 sw $t9, -52($fp)
 	 move $a0, $t0
 	 jalr $t2
 	 lw $t0, -16($fp)
 	 lw $t1, -20($fp)
 	 lw $t2, -24($fp)
 	 lw $t3, -28($fp)
 	 lw $t4, -32($fp)
 	 lw $t5, -36($fp)
 	 lw $t6, -40($fp)
 	 lw $t7, -44($fp)
 	 lw $t8, -48($fp)
 	 lw $t9, -52($fp)
 	 move $t2, $v0
 	 move $t7, $t2
	 b L23
 L22:
 	 li $t2, 0
 	 move $t5, $t2
 L23:
	 nop
	 b L21
 L20:
 	 li $t2, 1
 	 sub $t2, $t9, $t2
 	 sle $t2, $t1, $t2
	 bne $t2, 1, L24
 	 move $t2, $t7
 	 lw $t1, 0($t2)
 	 lw $t1, 28($t1)
 	 sw $t0, -16($fp)
 	 sw $t1, -20($fp)
 	 sw $t2, -24($fp)
 	 sw $t3, -28($fp)
 	 sw $t4, -32($fp)
 	 sw $t5, -36($fp)
 	 sw $t6, -40($fp)
 	 sw $t7, -44($fp)
 	 sw $t8, -48($fp)
 	 sw $t9, -52($fp)
 	 move $a0, $t2
 	 jalr $t1
 	 lw $t0, -16($fp)
 	 lw $t1, -20($fp)
 	 lw $t2, -24($fp)
 	 lw $t3, -28($fp)
 	 lw $t4, -32($fp)
 	 lw $t5, -36($fp)
 	 lw $t6, -40($fp)
 	 lw $t7, -44($fp)
 	 lw $t8, -48($fp)
 	 lw $t9, -52($fp)
 	 move $t1, $v0
	 bne $t1, 1, L26
 	 move $t6, $t7
 	 move $t1, $t7
 	 lw $t2, 0($t1)
 	 lw $t2, 12($t2)
 	 sw $t0, -16($fp)
 	 sw $t1, -20($fp)
 	 sw $t2, -24($fp)
 	 sw $t3, -28($fp)
 	 sw $t4, -32($fp)
 	 sw $t5, -36($fp)
 	 sw $t6, -40($fp)
 	 sw $t7, -44($fp)
 	 sw $t8, -48($fp)
 	 sw $t9, -52($fp)
 	 move $a0, $t1
 	 jalr $t2
 	 lw $t0, -16($fp)
 	 lw $t1, -20($fp)
 	 lw $t2, -24($fp)
 	 lw $t3, -28($fp)
 	 lw $t4, -32($fp)
 	 lw $t5, -36($fp)
 	 lw $t6, -40($fp)
 	 lw $t7, -44($fp)
 	 lw $t8, -48($fp)
 	 lw $t9, -52($fp)
 	 move $t2, $v0
 	 move $t7, $t2
	 b L27
 L26:
 	 li $t2, 0
 	 move $t5, $t2
 L27:
	 nop
	 b L25
 L24:
	 bne $t3, 1, L28
 	 li $t2, 0
 	 li $t1, 1
 	 move $t0, $t7
 	 lw $s7, 0($t0)
 	 lw $s7, 28($s7)
 	 sw $t0, -16($fp)
 	 sw $t1, -20($fp)
 	 sw $t2, -24($fp)
 	 sw $t3, -28($fp)
 	 sw $t4, -32($fp)
 	 sw $t5, -36($fp)
 	 sw $t6, -40($fp)
 	 sw $t7, -44($fp)
 	 sw $t8, -48($fp)
 	 sw $t9, -52($fp)
 	 move $a0, $t0
 	 jalr $s7
 	 lw $t0, -16($fp)
 	 lw $t1, -20($fp)
 	 lw $t2, -24($fp)
 	 lw $t3, -28($fp)
 	 lw $t4, -32($fp)
 	 lw $t5, -36($fp)
 	 lw $t6, -40($fp)
 	 lw $t7, -44($fp)
 	 lw $t8, -48($fp)
 	 lw $t9, -52($fp)
 	 move $s7, $v0
 	 sub $s7, $t1, $s7
	 bne $s7, 1, L32
 	 li $s7, 1
 	 move $t1, $t7
 	 lw $t0, 0($t1)
 	 lw $t0, 32($t0)
 	 sw $t0, -16($fp)
 	 sw $t1, -20($fp)
 	 sw $t2, -24($fp)
 	 sw $t3, -28($fp)
 	 sw $t4, -32($fp)
 	 sw $t5, -36($fp)
 	 sw $t6, -40($fp)
 	 sw $t7, -44($fp)
 	 sw $t8, -48($fp)
 	 sw $t9, -52($fp)
 	 move $a0, $t1
 	 jalr $t0
 	 lw $t0, -16($fp)
 	 lw $t1, -20($fp)
 	 lw $t2, -24($fp)
 	 lw $t3, -28($fp)
 	 lw $t4, -32($fp)
 	 lw $t5, -36($fp)
 	 lw $t6, -40($fp)
 	 lw $t7, -44($fp)
 	 lw $t8, -48($fp)
 	 lw $t9, -52($fp)
 	 move $t0, $v0
 	 sub $t0, $s7, $t0
	 bne $t0, 1, L32
 	 li $t0, 1
 	 move $t2, $t0
 L32:
	 nop
	 bne $t2, 1, L30
 	 li $t2, 1
	 b L31
 L30:
 	 move $t0, $t8
 	 lw $s7, 0($t0)
 	 lw $s7, 56($s7)
 	 sw $t0, -16($fp)
 	 sw $t1, -20($fp)
 	 sw $t2, -24($fp)
 	 sw $t3, -28($fp)
 	 sw $t4, -32($fp)
 	 sw $t5, -36($fp)
 	 sw $t6, -40($fp)
 	 sw $t7, -44($fp)
 	 sw $t8, -48($fp)
 	 sw $t9, -52($fp)
 	 move $a0, $t0
 	 move $a1, $t6
 	 move $a2, $t7
 	 jalr $s7
 	 lw $t0, -16($fp)
 	 lw $t1, -20($fp)
 	 lw $t2, -24($fp)
 	 lw $t3, -28($fp)
 	 lw $t4, -32($fp)
 	 lw $t5, -36($fp)
 	 lw $t6, -40($fp)
 	 lw $t7, -44($fp)
 	 lw $t8, -48($fp)
 	 lw $t9, -52($fp)
 	 move $s7, $v0
 	 move $t2, $s7
 L31:
	 nop
	 b L29
 L28:
 	 move $s7, $t8
 	 lw $t0, 0($s7)
 	 lw $t0, 56($t0)
 	 sw $t0, -16($fp)
 	 sw $t1, -20($fp)
 	 sw $t2, -24($fp)
 	 sw $t3, -28($fp)
 	 sw $t4, -32($fp)
 	 sw $t5, -36($fp)
 	 sw $t6, -40($fp)
 	 sw $t7, -44($fp)
 	 sw $t8, -48($fp)
 	 sw $t9, -52($fp)
 	 move $a0, $s7
 	 move $a1, $t6
 	 move $a2, $t7
 	 jalr $t0
 	 lw $t0, -16($fp)
 	 lw $t1, -20($fp)
 	 lw $t2, -24($fp)
 	 lw $t3, -28($fp)
 	 lw $t4, -32($fp)
 	 lw $t5, -36($fp)
 	 lw $t6, -40($fp)
 	 lw $t7, -44($fp)
 	 lw $t8, -48($fp)
 	 lw $t9, -52($fp)
 	 move $t0, $v0
 	 move $t2, $t0
 L29:
	 nop
 	 li $t2, 1
 	 move $t4, $t2
 	 li $t2, 0
 	 move $t5, $t2
 L25:
	 nop
 L21:
	 nop
 	 li $t2, 0
 	 move $t3, $t2
	 b L18
 L19:
	 nop
 	 move $v0, $t4
 	 lw $s7, -12($fp)
 	 addu $sp, $sp, 52
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_Remove
 Tree_Remove:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t8, $a0
 	 move $t7, $a1
 	 move $t9, $a2
 	 move $t6, $t9
 	 lw $t5, 0($t6)
 	 lw $t5, 32($t5)
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
	 bne $t5, 1, L33
 	 move $t5, $t8
 	 lw $t6, 0($t5)
 	 lw $t6, 64($t6)
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
 	 move $a0, $t5
 	 move $a1, $t7
 	 move $a2, $t9
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
	 b L34
 L33:
 	 move $t5, $t9
 	 lw $t4, 0($t5)
 	 lw $t4, 28($t4)
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
 	 move $a0, $t5
 	 jalr $t4
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
 	 move $t4, $v0
	 bne $t4, 1, L35
 	 move $t4, $t8
 	 lw $t5, 0($t4)
 	 lw $t5, 60($t5)
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
 	 move $a0, $t4
 	 move $a1, $t7
 	 move $a2, $t9
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
	 b L36
 L35:
 	 lw $t5, 0($t9)
 	 lw $t5, 20($t5)
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
 	 move $t9, $t7
 	 lw $t4, 0($t9)
 	 lw $t4, 16($t4)
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
 	 jalr $t4
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
 	 move $t4, $v0
 	 lw $t9, 0($t4)
 	 lw $t9, 20($t9)
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
 	 move $a0, $t4
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
 	 move $t4, $t8
 	 lw $t3, 0($t4)
 	 lw $t3, 44($t3)
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
 	 move $a0, $t4
 	 move $a1, $t5
 	 move $a2, $t9
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
	 bne $t3, 1, L37
 	 move $t3, $t7
 	 lw $t4, 0($t3)
 	 lw $t4, 8($t4)
 	 lw $t9, 24($t8)
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
 	 move $a0, $t3
 	 move $a1, $t9
 	 jalr $t4
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
 	 move $t9, $t7
 	 lw $t4, 0($t9)
 	 lw $t4, 36($t4)
 	 li $t3, 0
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
 	 move $a1, $t3
 	 jalr $t4
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
 	 move $t6, $t3
	 b L38
 L37:
 	 move $t3, $t7
 	 lw $t4, 0($t3)
 	 lw $t4, 4($t4)
 	 lw $t8, 24($t8)
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
 	 move $a0, $t3
 	 move $a1, $t8
 	 jalr $t4
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
 	 move $t6, $t8
 	 lw $t8, 0($t7)
 	 lw $t8, 40($t8)
 	 li $t4, 0
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
 	 move $a1, $t4
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
 	 move $t4, $v0
 	 move $t6, $t4
 L38:
	 nop
 L36:
	 nop
 L34:
	 nop
 	 li $t6, 1
 	 move $v0, $t6
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_RemoveRight
 Tree_RemoveRight:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t8, $a0
 	 move $t7, $a1
 	 move $t9, $a2
 L39:
 	 move $t6, $t9
 	 lw $t5, 0($t6)
 	 lw $t5, 28($t5)
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
	 bne $t5, 1, L40
 	 move $t5, $t9
 	 lw $t6, 0($t5)
 	 lw $t6, 24($t6)
 	 move $t4, $t9
 	 lw $t3, 0($t4)
 	 lw $t3, 12($t3)
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
 	 move $a0, $t4
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
 	 lw $t4, 0($t3)
 	 lw $t4, 20($t4)
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
 	 move $a0, $t3
 	 jalr $t4
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
 	 move $t4, $v0
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
 	 move $a0, $t5
 	 move $a1, $t4
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
 	 move $t4, $v0
 	 move $t7, $t9
 	 move $t6, $t9
 	 lw $t5, 0($t6)
 	 lw $t5, 12($t5)
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
 	 move $t9, $t5
	 b L39
 L40:
	 nop
 	 move $t9, $t7
 	 lw $t5, 0($t9)
 	 lw $t5, 4($t5)
 	 lw $t8, 24($t8)
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
 	 move $a1, $t8
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
 	 move $t8, $v0
 	 move $t4, $t8
 	 lw $t8, 0($t7)
 	 lw $t8, 40($t8)
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
 	 move $t5, $v0
 	 move $t4, $t5
 	 li $t4, 1
 	 move $v0, $t4
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_RemoveLeft
 Tree_RemoveLeft:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t8, $a0
 	 move $t7, $a1
 	 move $t9, $a2
 L41:
 	 move $t6, $t9
 	 lw $t5, 0($t6)
 	 lw $t5, 32($t5)
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
	 bne $t5, 1, L42
 	 move $t5, $t9
 	 lw $t6, 0($t5)
 	 lw $t6, 24($t6)
 	 move $t4, $t9
 	 lw $t3, 0($t4)
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
 	 move $a0, $t4
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
 	 lw $t4, 0($t3)
 	 lw $t4, 20($t4)
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
 	 move $a0, $t3
 	 jalr $t4
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
 	 move $t4, $v0
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
 	 move $a0, $t5
 	 move $a1, $t4
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
 	 move $t4, $v0
 	 move $t7, $t9
 	 move $t6, $t9
 	 lw $t5, 0($t6)
 	 lw $t5, 16($t5)
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
 	 move $t9, $t5
	 b L41
 L42:
	 nop
 	 move $t9, $t7
 	 lw $t5, 0($t9)
 	 lw $t5, 8($t5)
 	 lw $t8, 24($t8)
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
 	 move $a1, $t8
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
 	 move $t8, $v0
 	 move $t4, $t8
 	 lw $t8, 0($t7)
 	 lw $t8, 36($t8)
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
 	 move $t5, $v0
 	 move $t4, $t5
 	 li $t4, 1
 	 move $v0, $t4
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_Search
 Tree_Search:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t9, $a0
 	 move $t8, $a1
 	 li $t7, 1
 	 li $t6, 0
 L43:
	 bne $t7, 1, L44
 	 move $t5, $t9
 	 lw $t4, 0($t5)
 	 lw $t4, 20($t4)
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
 	 move $a0, $t5
 	 jalr $t4
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
 	 move $t4, $v0
 	 li $t5, 1
 	 sub $t5, $t4, $t5
 	 sle $t5, $t8, $t5
	 bne $t5, 1, L45
 	 move $t5, $t9
 	 lw $t3, 0($t5)
 	 lw $t3, 32($t3)
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
 	 move $a0, $t5
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
	 bne $t3, 1, L47
 	 move $t3, $t9
 	 lw $t5, 0($t3)
 	 lw $t5, 16($t5)
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
 	 move $a0, $t3
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
 	 move $t9, $t5
	 b L48
 L47:
 	 li $t5, 0
 	 move $t7, $t5
 L48:
	 nop
	 b L46
 L45:
 	 li $t5, 1
 	 sub $t5, $t8, $t5
 	 sle $t5, $t4, $t5
	 bne $t5, 1, L49
 	 move $t5, $t9
 	 lw $t4, 0($t5)
 	 lw $t4, 28($t4)
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
 	 move $a0, $t5
 	 jalr $t4
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
 	 move $t4, $v0
	 bne $t4, 1, L51
 	 move $t4, $t9
 	 lw $t5, 0($t4)
 	 lw $t5, 12($t5)
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
 	 move $a0, $t4
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
 	 move $t9, $t5
	 b L52
 L51:
 	 li $t5, 0
 	 move $t7, $t5
 L52:
	 nop
	 b L50
 L49:
 	 li $t5, 1
 	 move $t6, $t5
 	 li $t5, 0
 	 move $t7, $t5
 L50:
	 nop
 L46:
	 nop
	 b L43
 L44:
	 nop
 	 move $v0, $t6
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_Print
 Tree_Print:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t9, $a0
 	 move $t8, $t9
 	 lw $t7, 0($t9)
 	 lw $t7, 76($t7)
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
 	 move $a1, $t8
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
 	 li $t7, 1
 	 move $v0, $t7
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Tree_RecPrint
 Tree_RecPrint:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t9, $a0
 	 move $t8, $a1
 	 move $t7, $t8
 	 lw $t6, 0($t7)
 	 lw $t6, 32($t6)
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
	 bne $t6, 1, L53
 	 move $t6, $t9
 	 lw $t7, 0($t6)
 	 lw $t7, 76($t7)
 	 move $t5, $t8
 	 lw $t4, 0($t5)
 	 lw $t4, 16($t4)
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
 	 move $a0, $t5
 	 jalr $t4
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
 	 move $t4, $v0
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
 	 move $a1, $t4
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
 	 move $t4, $v0
	 b L54
 L53:
 	 li $t7, 1
 	 move $t4, $t7
 L54:
	 nop
 	 move $t7, $t8
 	 lw $t6, 0($t7)
 	 lw $t6, 20($t6)
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
 	 move $a0, $t6
 	 jal _print 
 	 move $t6, $t8
 	 lw $t7, 0($t6)
 	 lw $t7, 28($t7)
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
	 bne $t7, 1, L55
 	 lw $t7, 0($t9)
 	 lw $t7, 76($t7)
 	 lw $t6, 0($t8)
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
 	 move $a1, $t6
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
 	 move $t6, $v0
 	 move $t4, $t6
	 b L56
 L55:
 	 li $t6, 1
 	 move $t4, $t6
 L56:
	 nop
 	 li $t4, 1
 	 move $v0, $t4
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
