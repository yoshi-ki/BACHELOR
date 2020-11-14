#data_section
l.13 :	# 12.000000
	.float	0x41400000
l.12 :	# 11.000000
	.float	0x41300000
l.11 :	# 10.000000
	.float	0x41200000
l.10 :	# 9.000000
	.float	0x41100000
l.9 :	# 8.000000
	.float	0x41000000
l.8 :	# 7.000000
	.float	0x40e00000
l.7 :	# 6.000000
	.float	0x40c00000
l.6 :	# 5.000000
	.float	0x40a00000
l.5 :	# 4.000000
	.float	0x40800000
l.4 :	# 3.000000
	.float	0x40400000
l.3 :	# 2.000000
	.float	0x40000000
l.2 :	# 1.000000
	.float	0x3f800000
l.1 :	# 0.000000
	.float	0x0
#text_section
program_start :
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.1
	sw	%r26 %r28 0
	addi	%r26 %r26 4
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -4
	lw	%r26 %r28 0
	mov	%r1 %r3
	addi	%r0 %r1 2
	addi	%r0 %r2 3
	sw	%r26 %r3 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	make.0 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r2 3
	addi	%r0 %r3 2
	lw	%r26 %r4 0
	sw	%r26 %r1 4
	mov	%r2 %r1
	mov	%r3 %r2
	mov	%r4 %r3
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	make.0 
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	addi	%r0 %r2 2
	addi	%r0 %r3 2
	lw	%r26 %r4 0
	sw	%r26 %r1 8
	mov	%r2 %r1
	mov	%r3 %r2
	mov	%r4 %r3
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	make.0 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r6
	lw	%r26 %r4 4
	lw	%r4 %r1 0
	ilw.s	%r0 %f0 l.2
	sw.s	%r1 %f0 0
	lw	%r4 %r1 0
	ilw.s	%r0 %f0 l.3
	sw.s	%r1 %f0 4
	lw	%r4 %r1 0
	ilw.s	%r0 %f0 l.4
	sw.s	%r1 %f0 8
	lw	%r4 %r1 4
	ilw.s	%r0 %f0 l.5
	sw.s	%r1 %f0 0
	lw	%r4 %r1 4
	ilw.s	%r0 %f0 l.6
	sw.s	%r1 %f0 4
	lw	%r4 %r1 4
	ilw.s	%r0 %f0 l.7
	sw.s	%r1 %f0 8
	lw	%r26 %r5 8
	lw	%r5 %r1 0
	ilw.s	%r0 %f0 l.8
	sw.s	%r1 %f0 0
	lw	%r5 %r1 0
	ilw.s	%r0 %f0 l.9
	sw.s	%r1 %f0 4
	lw	%r5 %r1 4
	ilw.s	%r0 %f0 l.10
	sw.s	%r1 %f0 0
	lw	%r5 %r1 4
	ilw.s	%r0 %f0 l.11
	sw.s	%r1 %f0 4
	lw	%r5 %r1 8
	ilw.s	%r0 %f0 l.12
	sw.s	%r1 %f0 0
	lw	%r5 %r1 8
	ilw.s	%r0 %f0 l.13
	sw.s	%r1 %f0 4
	addi	%r0 %r1 2
	addi	%r0 %r2 3
	addi	%r0 %r3 2
	sw	%r26 %r6 12
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	mul.0 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r1 12
	lw	%r1 %r2 0
	lw.s	%r2 %f0 0
	mfc1	%r2 %f0
	mov	%r2 %r1
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	print_int.0 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	print_newline.0 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r1 12
	lw	%r1 %r2 0
	lw.s	%r2 %f0 4
	mfc1	%r2 %f0
	mov	%r2 %r1
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	print_int.0 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	print_newline.0 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r1 12
	lw	%r1 %r2 4
	lw.s	%r2 %f0 0
	mfc1	%r2 %f0
	mov	%r2 %r1
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	print_int.0 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	print_newline.0 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r1 12
	lw	%r1 %r1 4
	lw.s	%r1 %f0 4
	mfc1	%r1 %f0
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	print_int.0 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	print_newline.0 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
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
print_newline.0 :
	addi	%r0 %r1 10
	out	%r1
	retl
loop3.0 :
	addi	%r0 %r7 0
	bge	%r2 %r7 bl_else.2 
	retl
bl_else.2 :
	slli	%r1 %r7 2
	add	%r6 %r7 %r31
	lw	%r31 %r7 0
	slli	%r1 %r8 2
	add	%r6 %r8 %r31
	lw	%r31 %r8 0
	slli	%r3 %r9 2
	add	%r8 %r9 %r31
	lw.s	%r31 %f0 0
	slli	%r1 %r8 2
	add	%r4 %r8 %r31
	lw	%r31 %r8 0
	slli	%r2 %r9 2
	add	%r8 %r9 %r31
	lw.s	%r31 %f1 0
	slli	%r2 %r8 2
	add	%r5 %r8 %r31
	lw	%r31 %r8 0
	slli	%r3 %r9 2
	add	%r8 %r9 %r31
	lw.s	%r31 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r3 %r8 2
	add	%r7 %r8 %r31
	sw.s	%r31 %f0 0
	addi	%r0 %r7 1
	sub	%r2 %r7 %r2
	j	loop3.0
loop2.0 :
	addi	%r0 %r7 0
	bge	%r3 %r7 bl_else.3 
	retl
bl_else.3 :
	addi	%r0 %r7 1
	sub	%r2 %r7 %r7
	sw	%r26 %r6 0
	sw	%r26 %r5 4
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	sw	%r26 %r1 16
	sw	%r26 %r3 20
	mov	%r7 %r2
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	loop3.0 
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	addi	%r0 %r1 1
	lw	%r26 %r2 20
	sub	%r2 %r1 %r3
	lw	%r26 %r1 16
	lw	%r26 %r2 12
	lw	%r26 %r4 8
	lw	%r26 %r5 4
	lw	%r26 %r6 0
	j	loop2.0
loop1.0 :
	addi	%r0 %r7 0
	bge	%r1 %r7 bl_else.4 
	retl
bl_else.4 :
	addi	%r0 %r7 1
	sub	%r3 %r7 %r7
	sw	%r26 %r6 0
	sw	%r26 %r5 4
	sw	%r26 %r4 8
	sw	%r26 %r3 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	mov	%r7 %r3
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	loop2.0 
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	addi	%r0 %r1 1
	lw	%r26 %r2 20
	sub	%r2 %r1 %r1
	lw	%r26 %r2 16
	lw	%r26 %r3 12
	lw	%r26 %r4 8
	lw	%r26 %r5 4
	lw	%r26 %r6 0
	j	loop1.0
mul.0 :
	addi	%r0 %r7 1
	sub	%r1 %r7 %r1
	j	loop1.0
init.0 :
	addi	%r0 %r4 0
	bge	%r1 %r4 bl_else.5 
	retl
bl_else.5 :
	ilw.s	%r0 %f0 l.1
	sw	%r26 %r2 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 8
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	lw	%r26 %r2 0
	mov	%r4 %r3
	j	init.0
make.0 :
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r2
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	min_caml_create_array 
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	mov	%r1 %r3
	addi	%r0 %r1 1
	lw	%r26 %r2 4
	sub	%r2 %r1 %r1
	lw	%r26 %r2 0
	sw	%r26 %r3 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	init.0 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	retl
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
