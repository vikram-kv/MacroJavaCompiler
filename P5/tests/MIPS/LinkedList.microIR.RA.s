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
 	 la $t7, LL_Start
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
 	 .globl 	 Element_Init
 Element_Init:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t6, $a0
 	 move $t9, $a1
 	 move $t8, $a2
 	 move $t7, $a3
 	 sw $t9, 4($t6) 
 	 sw $t8, 8($t6) 
 	 sw $t7, 12($t6) 
 	 li $t6, 1
 	 move $v0, $t6
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Element_GetAge
 Element_GetAge:
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
 	 .globl 	 Element_GetSalary
 Element_GetSalary:
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
 	 .globl 	 Element_GetMarried
 Element_GetMarried:
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
 	 .globl 	 Element_Equal
 Element_Equal:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t9, $a0
 	 move $t8, $a1
 	 li $t7, 1
 	 move $t6, $t8
 	 lw $t5, 0($t6)
 	 lw $t5, 4($t5)
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
 	 li $t6, 1
 	 move $t4, $t9
 	 lw $t3, 0($t4)
 	 lw $t3, 20($t3)
 	 lw $t2, 4($t9)
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
 	 move $a2, $t2
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
 	 move $t2, $v0
 	 sub $t2, $t6, $t2
	 bne $t2, 1, L2
 	 li $t2, 0
 	 move $t7, $t2
	 b L3
 L2:
 	 move $t2, $t8
 	 lw $t6, 0($t2)
 	 lw $t6, 8($t6)
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
 	 li $t2, 1
 	 move $t3, $t9
 	 lw $t4, 0($t3)
 	 lw $t4, 20($t4)
 	 lw $t5, 8($t9)
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
 	 move $a2, $t5
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
 	 move $t5, $v0
 	 sub $t5, $t2, $t5
	 bne $t5, 1, L4
 	 li $t5, 0
 	 move $t7, $t5
	 b L5
 L4:
 	 lw $t9, 12($t9)
	 bne $t9, 1, L6
 	 li $t9, 1
 	 move $t5, $t8
 	 lw $t2, 0($t5)
 	 lw $t2, 12($t2)
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
 	 sub $t2, $t9, $t2
	 bne $t2, 1, L8
 	 li $t2, 0
 	 move $t7, $t2
	 b L9
 L8:
 	 li $t2, 0
 L9:
	 nop
	 b L7
 L6:
 	 lw $t9, 0($t8)
 	 lw $t9, 12($t9)
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
	 bne $t9, 1, L10
 	 li $t9, 0
 	 move $t7, $t9
	 b L11
 L10:
 	 li $t9, 0
 	 move $t2, $t9
 L11:
	 nop
 L7:
	 nop
 L5:
	 nop
 L3:
	 nop
 	 move $v0, $t7
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 Element_Compare
 Element_Compare:
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
	 bne $t5, 1, L12
 	 li $t5, 0
 	 move $t7, $t5
	 b L13
 L12:
 	 li $t5, 1
 	 li $t9, 1
 	 sub $t9, $t6, $t9
 	 sle $t9, $t8, $t9
 	 sub $t9, $t5, $t9
	 bne $t9, 1, L14
 	 li $t9, 0
 	 move $t7, $t9
	 b L15
 L14:
 	 li $t9, 1
 	 move $t7, $t9
 L15:
	 nop
 L13:
	 nop
 	 move $v0, $t7
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 List_Init
 List_Init:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t9, $a0
 	 li $t8, 1
 	 sw $t8, 12($t9) 
 	 li $t8, 1
 	 move $v0, $t8
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 List_InitNew
 List_InitNew:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 8
 	 move $t6, $a0
 	 move $t8, $a1
 	 move $t7, $a2
 	 move $t9, $a3
 	 sw $t9, 12($t6) 
 	 sw $t8, 4($t6) 
 	 sw $t7, 8($t6) 
 	 li $t6, 1
 	 move $v0, $t6
 	 addu $sp, $sp, 8
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 List_Insert
 List_Insert:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t9, $a0
 	 move $t8, $a1
 	 li $t7, 40
 	 move $a0, $t7
 	 jal _halloc
 	 move $t7, $v0 
 	 li $t6, 16
 	 move $a0, $t6
 	 jal _halloc
 	 move $t6, $v0 
 	 la $t5, List_Print
 	 sw $t5, 36($t7) 
 	 la $t5, List_GetNext
 	 sw $t5, 32($t7) 
 	 la $t5, List_GetElem
 	 sw $t5, 28($t7) 
 	 la $t5, List_GetEnd
 	 sw $t5, 24($t7) 
 	 la $t5, List_Search
 	 sw $t5, 20($t7) 
 	 la $t5, List_Delete
 	 sw $t5, 16($t7) 
 	 la $t5, List_SetNext
 	 sw $t5, 12($t7) 
 	 la $t5, List_Insert
 	 sw $t5, 8($t7) 
 	 la $t5, List_InitNew
 	 sw $t5, 4($t7) 
 	 la $t5, List_Init
 	 sw $t5, 0($t7) 
 	 li $t5, 4
 L16:
 	 li $t4, 15
 	 sle $t4, $t5, $t4
	 bne $t4, 1, L17
 	 add $t4, $t6, $t5
 	 li $t3, 0
 	 sw $t3, 0($t4) 
 	 li $t3, 4
 	 add $t3, $t5, $t3
 	 move $t5, $t3
	 b L16
 L17:
 	 sw $t7, 0($t6) 
 	 move $t7, $t6
 	 lw $t5, 0($t7)
 	 lw $t5, 4($t5)
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
 	 move $a0, $t7
 	 move $a1, $t8
 	 move $a2, $t9
 	 move $a3, $t3
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
 	 move $t3, $v0
 	 move $v0, $t6
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 List_SetNext
 List_SetNext:
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
 	 .globl 	 List_Delete
 List_Delete:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 56
 	 sw $s6, -12($fp)
 	 sw $s7, -16($fp)
 	 move $t9, $a0
 	 move $t8, $a1
 	 move $t7, $t9
 	 li $t6, 0
 	 li $t5, 0
 	 li $t4, 1
 	 sub $t4, $t5, $t4
 	 move $t5, $t9
 	 move $t3, $t9
 	 lw $t2, 12($t9)
 	 lw $t9, 4($t9)
 L18:
 	 li $t1, 0
 	 li $t0, 1
 	 sub $t0, $t0, $t2
	 bne $t0, 1, L20
 	 li $t0, 1
 	 sub $t0, $t0, $t6
	 bne $t0, 1, L20
 	 li $t0, 1
 	 move $t1, $t0
 L20:
	 nop
	 bne $t1, 1, L19
 	 move $t1, $t8
 	 lw $t0, 0($t1)
 	 lw $t0, 16($t0)
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
 	 move $a0, $t1
 	 move $a1, $t9
 	 jalr $t0
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
 	 move $t0, $v0
	 bne $t0, 1, L21
 	 li $t0, 1
 	 move $t6, $t0
 	 li $t0, 0
 	 li $t1, 1
 	 sub $t1, $t0, $t1
 	 sle $t1, $t4, $t1
	 bne $t1, 1, L23
 	 move $t1, $t5
 	 lw $t0, 0($t1)
 	 lw $t0, 32($t0)
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
 	 move $a0, $t1
 	 jalr $t0
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
 	 move $t0, $v0
 	 move $t7, $t0
	 b L24
 L23:
 	 li $t0, 0
 	 li $t1, 555
 	 sub $t1, $t0, $t1
 	 move $a0, $t1
 	 jal _print 
 	 move $t1, $t3
 	 lw $t0, 0($t1)
 	 lw $t0, 12($t0)
 	 move $s7, $t5
 	 lw $s6, 0($s7)
 	 lw $s6, 32($s6)
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
 	 move $a0, $s7
 	 jalr $s6
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
 	 move $s6, $v0
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
 	 move $a0, $t1
 	 move $a1, $s6
 	 jalr $t0
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
 	 move $s6, $v0
 	 li $s6, 0
 	 li $t0, 555
 	 sub $t0, $s6, $t0
 	 move $a0, $t0
 	 jal _print 
 L24:
	 nop
	 b L22
 L21:
 	 li $t0, 0
 L22:
	 nop
 	 li $s6, 1
 	 sub $s6, $s6, $t6
	 bne $s6, 1, L25
 	 move $t3, $t5
 	 move $s6, $t5
 	 lw $t1, 0($s6)
 	 lw $t1, 32($t1)
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
 	 move $a0, $s6
 	 jalr $t1
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
 	 move $t1, $v0
 	 move $t5, $t1
 	 move $t1, $t5
 	 lw $s6, 0($t1)
 	 lw $s6, 24($s6)
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
 	 move $a0, $t1
 	 jalr $s6
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
 	 move $s6, $v0
 	 move $t2, $s6
 	 move $s6, $t5
 	 lw $t1, 0($s6)
 	 lw $t1, 28($t1)
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
 	 move $a0, $s6
 	 jalr $t1
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
 	 move $t1, $v0
 	 move $t9, $t1
 	 li $t1, 1
 	 move $t4, $t1
	 b L26
 L25:
 	 li $t1, 0
 	 move $t0, $t1
 L26:
	 nop
	 b L18
 L19:
	 nop
 	 move $v0, $t7
 	 lw $s6, -12($fp)
 	 lw $s7, -16($fp)
 	 addu $sp, $sp, 56
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 List_Search
 List_Search:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t9, $a0
 	 move $t8, $a1
 	 li $t7, 0
 	 move $t6, $t9
 	 lw $t5, 12($t9)
 	 lw $t9, 4($t9)
 L27:
 	 li $t4, 1
 	 sub $t4, $t4, $t5
	 bne $t4, 1, L28
 	 move $t4, $t8
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
 	 move $a1, $t9
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
	 bne $t3, 1, L29
 	 li $t3, 1
 	 move $t7, $t3
	 b L30
 L29:
 	 li $t3, 0
 L30:
	 nop
 	 move $t3, $t6
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
 	 move $t6, $t4
 	 move $t4, $t6
 	 lw $t3, 0($t4)
 	 lw $t3, 24($t3)
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
 	 move $t5, $t3
 	 move $t3, $t6
 	 lw $t4, 0($t3)
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
 	 move $t9, $t4
	 b L27
 L28:
	 nop
 	 move $v0, $t7
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 List_GetEnd
 List_GetEnd:
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
 	 .globl 	 List_GetElem
 List_GetElem:
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
 	 .globl 	 List_GetNext
 List_GetNext:
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
 	 .globl 	 List_Print
 List_Print:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 move $t9, $a0
 	 move $t8, $t9
 	 lw $t7, 12($t9)
 	 lw $t9, 4($t9)
 L31:
 	 li $t6, 1
 	 sub $t6, $t6, $t7
	 bne $t6, 1, L32
 	 move $t6, $t9
 	 lw $t5, 0($t6)
 	 lw $t5, 4($t5)
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
 	 move $a0, $t5
 	 jal _print 
 	 move $t5, $t8
 	 lw $t6, 0($t5)
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
 	 move $a0, $t5
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
 	 move $t8, $t6
 	 move $t6, $t8
 	 lw $t5, 0($t6)
 	 lw $t5, 24($t5)
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
 	 move $t7, $t5
 	 move $t5, $t8
 	 lw $t6, 0($t5)
 	 lw $t6, 28($t6)
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
 	 move $t9, $t6
	 b L31
 L32:
	 nop
 	 li $t9, 1
 	 move $v0, $t9
 	 addu $sp, $sp, 48
 	 lw $ra, -4($fp) 
 	 lw $fp, -8($fp) 
 	 jr $ra 

 
 	 .text 
 	 .globl 	 LL_Start
 LL_Start:
 	 sw $fp, -8($sp) 
 	 move $fp, $sp 
 	 sw $ra, -4($sp) 
 	 subu $sp, $sp, 48
 	 li $t9, 40
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t8, 16
 	 move $a0, $t8
 	 jal _halloc
 	 move $t8, $v0 
 	 la $t7, List_Print
 	 sw $t7, 36($t9) 
 	 la $t7, List_GetNext
 	 sw $t7, 32($t9) 
 	 la $t7, List_GetElem
 	 sw $t7, 28($t9) 
 	 la $t7, List_GetEnd
 	 sw $t7, 24($t9) 
 	 la $t7, List_Search
 	 sw $t7, 20($t9) 
 	 la $t7, List_Delete
 	 sw $t7, 16($t9) 
 	 la $t7, List_SetNext
 	 sw $t7, 12($t9) 
 	 la $t7, List_Insert
 	 sw $t7, 8($t9) 
 	 la $t7, List_InitNew
 	 sw $t7, 4($t9) 
 	 la $t7, List_Init
 	 sw $t7, 0($t9) 
 	 li $t7, 4
 L33:
 	 li $t6, 15
 	 sle $t6, $t7, $t6
	 bne $t6, 1, L34
 	 add $t6, $t8, $t7
 	 li $t5, 0
 	 sw $t5, 0($t6) 
 	 li $t5, 4
 	 add $t5, $t7, $t5
 	 move $t7, $t5
	 b L33
 L34:
 	 sw $t9, 0($t8) 
 	 move $t9, $t8
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
 	 move $t9, $t8
 	 lw $t5, 0($t9)
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
 	 move $t7, $t5
 	 move $t5, $t8
 	 lw $t9, 0($t5)
 	 lw $t9, 36($t9)
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
 	 move $t7, $t9
 	 li $t9, 24
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t5, 16
 	 move $a0, $t5
 	 jal _halloc
 	 move $t5, $v0 
 	 la $t6, Element_Compare
 	 sw $t6, 20($t9) 
 	 la $t6, Element_Equal
 	 sw $t6, 16($t9) 
 	 la $t6, Element_GetMarried
 	 sw $t6, 12($t9) 
 	 la $t6, Element_GetSalary
 	 sw $t6, 8($t9) 
 	 la $t6, Element_GetAge
 	 sw $t6, 4($t9) 
 	 la $t6, Element_Init
 	 sw $t6, 0($t9) 
 	 li $t6, 4
 L35:
 	 li $t4, 15
 	 sle $t4, $t6, $t4
	 bne $t4, 1, L36
 	 add $t4, $t5, $t6
 	 li $t3, 0
 	 sw $t3, 0($t4) 
 	 li $t3, 4
 	 add $t3, $t6, $t3
 	 move $t6, $t3
	 b L35
 L36:
 	 sw $t9, 0($t5) 
 	 move $t9, $t5
 	 lw $t6, 0($t9)
 	 lw $t6, 0($t6)
 	 li $t3, 25
 	 li $t4, 37000
 	 li $t2, 0
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
 	 move $a2, $t4
 	 move $a3, $t2
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
 	 move $t2, $v0
 	 move $t7, $t2
 	 move $t2, $t8
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
 	 move $a1, $t5
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
 	 move $t8, $t4
 	 move $t4, $t8
 	 lw $t2, 0($t4)
 	 lw $t2, 36($t2)
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
 	 move $t7, $t2
 	 li $t2, 10000000
 	 move $a0, $t2
 	 jal _print 
 	 li $t2, 24
 	 move $a0, $t2
 	 jal _halloc
 	 move $t2, $v0 
 	 li $t4, 16
 	 move $a0, $t4
 	 jal _halloc
 	 move $t4, $v0 
 	 la $t3, Element_Compare
 	 sw $t3, 20($t2) 
 	 la $t3, Element_Equal
 	 sw $t3, 16($t2) 
 	 la $t3, Element_GetMarried
 	 sw $t3, 12($t2) 
 	 la $t3, Element_GetSalary
 	 sw $t3, 8($t2) 
 	 la $t3, Element_GetAge
 	 sw $t3, 4($t2) 
 	 la $t3, Element_Init
 	 sw $t3, 0($t2) 
 	 li $t3, 4
 L37:
 	 li $t6, 15
 	 sle $t6, $t3, $t6
	 bne $t6, 1, L38
 	 add $t6, $t4, $t3
 	 li $t9, 0
 	 sw $t9, 0($t6) 
 	 li $t9, 4
 	 add $t9, $t3, $t9
 	 move $t3, $t9
	 b L37
 L38:
 	 sw $t2, 0($t4) 
 	 move $t5, $t4
 	 move $t4, $t5
 	 lw $t2, 0($t4)
 	 lw $t2, 0($t2)
 	 li $t3, 39
 	 li $t9, 42000
 	 li $t6, 1
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
 	 move $a2, $t9
 	 move $a3, $t6
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
 	 move $t6, $v0
 	 move $t7, $t6
 	 move $t6, $t5
 	 move $t9, $t8
 	 lw $t3, 0($t9)
 	 lw $t3, 8($t3)
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
 	 move $t8, $t3
 	 move $t3, $t8
 	 lw $t9, 0($t3)
 	 lw $t9, 36($t9)
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
 	 move $t7, $t9
 	 li $t9, 10000000
 	 move $a0, $t9
 	 jal _print 
 	 li $t9, 24
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 li $t3, 16
 	 move $a0, $t3
 	 jal _halloc
 	 move $t3, $v0 
 	 la $t2, Element_Compare
 	 sw $t2, 20($t9) 
 	 la $t2, Element_Equal
 	 sw $t2, 16($t9) 
 	 la $t2, Element_GetMarried
 	 sw $t2, 12($t9) 
 	 la $t2, Element_GetSalary
 	 sw $t2, 8($t9) 
 	 la $t2, Element_GetAge
 	 sw $t2, 4($t9) 
 	 la $t2, Element_Init
 	 sw $t2, 0($t9) 
 	 li $t2, 4
 L39:
 	 li $t4, 15
 	 sle $t4, $t2, $t4
	 bne $t4, 1, L40
 	 add $t4, $t3, $t2
 	 li $t1, 0
 	 sw $t1, 0($t4) 
 	 li $t1, 4
 	 add $t1, $t2, $t1
 	 move $t2, $t1
	 b L39
 L40:
 	 sw $t9, 0($t3) 
 	 move $t5, $t3
 	 move $t3, $t5
 	 lw $t9, 0($t3)
 	 lw $t9, 0($t9)
 	 li $t2, 22
 	 li $t1, 34000
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
 	 move $a0, $t3
 	 move $a1, $t2
 	 move $a2, $t1
 	 move $a3, $t4
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
 	 move $t4, $v0
 	 move $t7, $t4
 	 move $t4, $t8
 	 lw $t1, 0($t4)
 	 lw $t1, 8($t1)
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
 	 jalr $t1
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
 	 move $t1, $v0
 	 move $t8, $t1
 	 move $t1, $t8
 	 lw $t4, 0($t1)
 	 lw $t4, 36($t4)
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
 	 move $t7, $t4
 	 li $t4, 24
 	 move $a0, $t4
 	 jal _halloc
 	 move $t4, $v0 
 	 li $t1, 16
 	 move $a0, $t1
 	 jal _halloc
 	 move $t1, $v0 
 	 la $t2, Element_Compare
 	 sw $t2, 20($t4) 
 	 la $t2, Element_Equal
 	 sw $t2, 16($t4) 
 	 la $t2, Element_GetMarried
 	 sw $t2, 12($t4) 
 	 la $t2, Element_GetSalary
 	 sw $t2, 8($t4) 
 	 la $t2, Element_GetAge
 	 sw $t2, 4($t4) 
 	 la $t2, Element_Init
 	 sw $t2, 0($t4) 
 	 li $t2, 4
 L41:
 	 li $t9, 15
 	 sle $t9, $t2, $t9
	 bne $t9, 1, L42
 	 add $t9, $t1, $t2
 	 li $t3, 0
 	 sw $t3, 0($t9) 
 	 li $t3, 4
 	 add $t3, $t2, $t3
 	 move $t2, $t3
	 b L41
 L42:
 	 sw $t4, 0($t1) 
 	 move $t4, $t1
 	 lw $t2, 0($t4)
 	 lw $t2, 0($t2)
 	 li $t3, 27
 	 li $t9, 34000
 	 li $t0, 0
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
 	 move $a2, $t9
 	 move $a3, $t0
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
 	 move $t0, $v0
 	 move $t7, $t0
 	 move $t0, $t8
 	 lw $t9, 0($t0)
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
 	 move $a0, $t0
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
 	 move $t9, $v0
 	 move $a0, $t9
 	 jal _print 
 	 move $t9, $t8
 	 lw $t0, 0($t9)
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
 	 move $a0, $t9
 	 move $a1, $t1
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
 	 move $a0, $t0
 	 jal _print 
 	 li $t0, 10000000
 	 move $a0, $t0
 	 jal _print 
 	 li $t0, 24
 	 move $a0, $t0
 	 jal _halloc
 	 move $t0, $v0 
 	 li $t9, 16
 	 move $a0, $t9
 	 jal _halloc
 	 move $t9, $v0 
 	 la $t1, Element_Compare
 	 sw $t1, 20($t0) 
 	 la $t1, Element_Equal
 	 sw $t1, 16($t0) 
 	 la $t1, Element_GetMarried
 	 sw $t1, 12($t0) 
 	 la $t1, Element_GetSalary
 	 sw $t1, 8($t0) 
 	 la $t1, Element_GetAge
 	 sw $t1, 4($t0) 
 	 la $t1, Element_Init
 	 sw $t1, 0($t0) 
 	 li $t1, 4
 L43:
 	 li $t3, 15
 	 sle $t3, $t1, $t3
	 bne $t3, 1, L44
 	 add $t3, $t9, $t1
 	 li $t2, 0
 	 sw $t2, 0($t3) 
 	 li $t2, 4
 	 add $t2, $t1, $t2
 	 move $t1, $t2
	 b L43
 L44:
 	 sw $t0, 0($t9) 
 	 move $t5, $t9
 	 move $t9, $t5
 	 lw $t0, 0($t9)
 	 lw $t0, 0($t0)
 	 li $t1, 28
 	 li $t2, 35000
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
 	 move $a1, $t1
 	 move $a2, $t2
 	 move $a3, $t3
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
 	 move $t3, $v0
 	 move $t7, $t3
 	 move $t3, $t8
 	 lw $t2, 0($t3)
 	 lw $t2, 8($t2)
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
 	 move $a1, $t5
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
 	 move $t8, $t2
 	 move $t2, $t8
 	 lw $t3, 0($t2)
 	 lw $t3, 36($t3)
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
 	 move $t7, $t3
 	 li $t3, 2220000
 	 move $a0, $t3
 	 jal _print 
 	 move $t3, $t8
 	 lw $t2, 0($t3)
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
 	 move $t8, $t2
 	 move $t2, $t8
 	 lw $t3, 0($t2)
 	 lw $t3, 36($t3)
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
 	 move $t7, $t3
 	 li $t3, 33300000
 	 move $a0, $t3
 	 jal _print 
 	 move $t3, $t8
 	 lw $t2, 0($t3)
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
 	 move $a0, $t3
 	 move $a1, $t5
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
 	 move $t8, $t2
 	 lw $t2, 0($t8)
 	 lw $t2, 36($t2)
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
 	 move $t7, $t2
 	 li $t7, 44440000
 	 move $a0, $t7
 	 jal _print 
 	 li $t7, 0
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
