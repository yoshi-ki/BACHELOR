#data_section
stack_init.0 :
	.int	0xffffff0
l.1 :	# 22.000000
	.float	0x41b00000
l.0 :	# 33.000000
	.float	0x42040000
#text_section
program_start :
	ilw	%r0 %r26 stack_init.0
	addi	%r0 %r1 0
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	sw	%r27 %r1 0
	ilw.s	%r0 %f0 l.0
	sw.s	%r27 %f0 4
	addi	%r0 %r1 19
	sw	%r27 %r1 8
	ilw.s	%r0 %f0 l.1
	sw.s	%r27 %f0 12
	addi	%r27 %r27 16
	ilw.s	%r0 %f0 l.0
	ilw.s	%r0 %f0 l.1
	addi	%r0 %r1 0
	lw.s	%r1 %f0 12
	lw	%r0 %r2 8
	lw.s	%r1 %f1 4
	lw	%r0 %r1 0
	sw.s	%r26 %f0 -0
	sw	%r26 %r2 -8
	sw.s	%r26 %f1 -16
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	print_int.0 
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	addi	%r0 %r1 10
	out	%r1
	lw.s	%r26 %f0 -16
	mfc1	%r1 %f0
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	print_int.0 
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	addi	%r0 %r1 10
	out	%r1
	lw	%r26 %r1 -8
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	print_int.0 
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	addi	%r0 %r1 10
	out	%r1
	lw.s	%r26 %f0 -0
	mfc1	%r1 %f0
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	print_int.0 
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	addi	%r0 %r1 10
	out	%r1
program_end :
	add	%r0 %r0 %r0
	ret
print_int.0 :
	addi	%r0 %r2 100
	div	%r1 %r2 %r2
	addi	%r0 %r3 100
	mul	%r2 %r3 %r3
	sub	%r1 %r3 %r3
	addi	%r0 %r4 10
	div	%r3 %r4 %r3
	addi	%r0 %r4 100
	mul	%r2 %r4 %r4
	sub	%r1 %r4 %r1
	addi	%r0 %r4 10
	mul	%r3 %r4 %r4
	sub	%r1 %r4 %r1
	addi	%r0 %r4 0
	bge	%r4 %r2 bl_else.0 
	addi	%r2 %r2 48
	out	%r2
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	retl
bl_else.0 :
	addi	%r0 %r2 0
	bge	%r2 %r3 bl_else.1 
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	retl
bl_else.1 :
	addi	%r1 %r1 48
	out	%r1
	retl
#libraries
min_caml_create_array :
	bl	%r1 %r0 program_end
	mov	%r1 %r31
	mov	%r27 %r1
create_array_loop :
	bne     %r31 %r0 create_array_cont
	retl
create_array_cont :
	sw	%r27 %r2 0
	addi 	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_array_loop
min_caml_create_float_array :
	bl	%r1 %r0 program_end	
	mov	%r1 %r31
	mov	%r27 %r1
create_float_array_loop :
	bne	%r31 %r0 create_float_array_cont
	retl
create_float_array_cont :
	sw.s	%r27 %f0 0
	addi	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_float_array_loop

