#data_section
l.3 :	# 0.000000
	.float	0x0
l.2 :	# 1000000.000000
	.float	0x49742400
l.1 :	# 4.560000
	.float	0x4091eb85
l.0 :	# 1.230000
	.float	0x3f9d70a4
#text_section
program_start :
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.0
	sw	%r26 %r28 0
	addi	%r26 %r26 4
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -4
	lw	%r26 %r28 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.1
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	ilw.s	%r0 %f0 l.2
	ilw.s	%r0 %f1 l.3
	addi	%r0 %r3 2
	lw	%r26 %r1 0
	sw.s	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	inprod.0 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	mfc1	%r1 %f0
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
	j	bl_cont.0 
bl_else.0 :
	addi	%r0 %r2 0
	bge	%r2 %r3 bl_else.1 
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bl_cont.1 
bl_else.1 :
	addi	%r1 %r1 48
	out	%r1
bl_cont.1 :
bl_cont.0 :
	ret
inprod.0 :
	addi	%r0 %r4 0
	bge	%r3 %r4 bl_else.2 
	retl
bl_else.2 :
	slli	%r3 %r4 2
	add	%r1 %r4 %r31
	lw.s	%r31 %f1 0
	slli	%r3 %r4 2
	add	%r2 %r4 %r31
	lw.s	%r31 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r4 1
	sub	%r3 %r4 %r3
	j	inprod.0
#libraries
min_caml_create_array :
	mov	%r1 %r3
	mov	%r27 %r1
create_array_loop :
	bne     %r3 %r0 create_array_cont
	retl
create_array_cont :
	sw	%r27 %r2 0
	addi 	%r3 %r3 -1
	addi	%r27 %r27 4
	j	create_array_loop
min_caml_create_float_array :
	mov	%r1 %r2
	mov	%r27 %r1
create_float_array_loop :
	bne	%r2 %r0	create_float_array_cont
	retl
create_float_array_cont :
	sw.s	%r27 %f0 0
	addi	%r2 %r2 -1
	addi	%r27 %r27 4
	j	create_float_array_loop
