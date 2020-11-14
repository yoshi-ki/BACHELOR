#data_section
stack_init.0 :
	.int	0xffffff0
l.3 :	# 2.000000
	.float	0x40000000
l.2 :	# -1.000000
	.float	0xbf800000
l.1 :	# 1.000000
	.float	0x3f800000
l.0 :	# 0.000000
	.float	0x0
#text_section
program_start :
	ilw	%r0 %r26 stack_init.0
	ilw.s	%r0 %f0 l.3
	sw	%r26 %r28 -0
	addi	%r26 %r26 -4
	jal	sgn.0 
	addi	%r26 %r26 4
	lw	%r26 %r28 -0
program_end :
	add	%r0 %r0 %r0
	ret
sgn.0 :
	sw.s	%r26 %f0 -0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	min_caml_fiszero 
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.0 
	lw.s	%r26 %f0 -0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	min_caml_fispos 
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.1 
	ilw.s	%r0 %f0 l.2
	retl
beq_else.1 :
	ilw.s	%r0 %f0 l.1
	retl
beq_else.0 :
	ilw.s	%r0 %f0 l.0
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

