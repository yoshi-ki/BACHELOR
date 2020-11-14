#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
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
	ilw	%r0 %r26 sp_init.0
	ilw	%r0 %r27 hp_init.0
	addi	%r0 %r1 0
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.1
	jal	min_caml_create_float_array
	addi	%r0 %r28 program_end
main.0 :
tail_b.14 :
	ilw.s	%r0 %f0 l.1
	addi	%r0 %r3 0
	addi	%r0 %r1 2
	addi	%r0 %r2 3
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	make.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov	%r1 %r5
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	addi	%r0 %r1 3
	addi	%r0 %r2 2
	sw	%r26 %r4 -8
	sw	%r26 %r5 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	make.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	mov	%r1 %r6
	lw	%r26 %r4 -8
	lw	%r26 %r5 -4
	lw	%r26 %r3 0
	addi	%r0 %r1 2
	addi	%r0 %r2 2
	sw	%r26 %r4 -8
	sw	%r26 %r6 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	make.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	mov	%r1 %r3
	lw	%r26 %r4 -8
	lw	%r26 %r6 -4
	lw	%r26 %r5 0
	mov	%r5 %r1
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.2
	sw.s	%r1 %f0 0
	mov	%r5 %r1
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.3
	addi	%r1 %r1 4
	sw.s	%r1 %f0 0
	mov	%r5 %r1
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.4
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	addi	%r5 %r1 4
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.5
	sw.s	%r1 %f0 0
	addi	%r5 %r1 4
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.6
	addi	%r1 %r1 4
	sw.s	%r1 %f0 0
	addi	%r5 %r1 4
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.7
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	mov	%r6 %r1
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.8
	sw.s	%r1 %f0 0
	mov	%r6 %r1
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.9
	addi	%r1 %r1 4
	sw.s	%r1 %f0 0
	addi	%r6 %r1 4
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.10
	sw.s	%r1 %f0 0
	addi	%r6 %r1 4
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.11
	addi	%r1 %r1 4
	sw.s	%r1 %f0 0
	addi	%r6 %r1 8
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.12
	sw.s	%r1 %f0 0
	addi	%r6 %r1 8
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.13
	addi	%r1 %r1 4
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	addi	%r0 %r2 3
	addi	%r0 %r7 2
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	mov	%r5 %r4
	mov	%r6 %r5
	mov	%r3 %r6
	mov	%r7 %r3
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	mul.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	mov	%r3 %r1
	lw	%r1 %r1 0
	lw.s	%r1 %f0 0
	mfc1	%r1 %f0
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	print_int.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	print_newline.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	mov	%r3 %r1
	lw	%r1 %r1 0
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mfc1	%r1 %f0
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	print_int.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	print_newline.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	addi	%r3 %r1 4
	lw	%r1 %r1 0
	lw.s	%r1 %f0 0
	mfc1	%r1 %f0
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	print_int.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	print_newline.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	addi	%r3 %r1 4
	lw	%r1 %r1 0
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mfc1	%r1 %f0
	sw	%r26 %r4 0
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	print_int.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r4 0
	j	print_newline.0
return_point.8 :
	mov	%r4 %r1
program_end :
	add	%r0 %r0 %r0
	ret
print_int.0 :
	mov	%r1 %r6
branching_b.0 :
	addi	%r0 %r1 100
	div	%r6 %r1 %r4
	addi	%r0 %r1 100
	mul	%r4 %r1 %r1
	sub	%r6 %r1 %r2
	addi	%r0 %r1 10
	div	%r2 %r1 %r3
	addi	%r0 %r1 100
	mul	%r4 %r1 %r1
	sub	%r6 %r1 %r2
	addi	%r0 %r1 10
	mul	%r3 %r1 %r1
	sub	%r2 %r1 %r2
	addi	%r0 %r1 0
	bl	%r1 %r4 tail_b.0
	addi	%r0 %r1 0
	bl	%r1 %r3 tail_b.1
	addi	%r2 %r1 48
	out	%r1
	j	return_point.0
tail_b.1 :
	addi	%r3 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	return_point.0
tail_b.0 :
	addi	%r4 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
return_point.0 :
	mov	%r5 %r1
	retl
print_newline.0 :
tail_b.3 :
	addi	%r0 %r1 10
	out	%r1
return_point.1 :
	mov	%r2 %r1
	retl
loop3.0 :
	mov	%r6 %r7
	mov	%r5 %r9
	mov	%r1 %r8
	mov	%r2 %r5
preloop_b.0 :
loop3_loop.0 :
	addi	%r0 %r1 0
	bl	%r5 %r1 tail_b.4
	slli	%r8 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r6 0
	slli	%r8 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r2 0
	slli	%r3 %r1 2
	add	%r2 %r1 %r1
	lw.s	%r1 %f0 0
	slli	%r8 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	slli	%r5 %r2 2
	add	%r1 %r2 %r1
	lw.s	%r1 %f2 0
	slli	%r5 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r2 0
	slli	%r3 %r1 2
	add	%r2 %r1 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	slli	%r3 %r1 2
	add	%r6 %r1 %r1
	sw.s	%r1 %f0 0
	addi	%r5 %r1 -1
	mov	%r1 %r5
	j	loop3_loop.0
tail_b.4 :
postloop_b.0 :
return_point.2 :
	mov	%r10 %r1
	retl
loop2.0 :
	mov	%r1 %r7
preloop_b.1 :
loop2_loop.0 :
	addi	%r0 %r1 0
	bl	%r3 %r1 tail_b.6
	addi	%r2 %r1 -1
	sw	%r26 %r8 -24
	sw	%r26 %r3 -20
	sw	%r26 %r6 -16
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw	%r26 %r2 -4
	sw	%r26 %r7 0
	mov	%r1 %r2
	mov	%r7 %r1
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	loop3.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw	%r26 %r8 -24
	lw	%r26 %r3 -20
	lw	%r26 %r6 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw	%r26 %r2 -4
	lw	%r26 %r7 0
	addi	%r3 %r1 -1
	mov	%r1 %r3
	j	loop2_loop.0
tail_b.6 :
postloop_b.1 :
return_point.3 :
	mov	%r8 %r1
	retl
loop1.0 :
	mov	%r6 %r7
	mov	%r1 %r8
	mov	%r2 %r6
preloop_b.2 :
loop1_loop.0 :
	addi	%r0 %r2 0
	bl	%r8 %r2 tail_b.8
	addi	%r3 %r2 -1
	sw	%r26 %r1 -24
	sw	%r26 %r8 -20
	sw	%r26 %r7 -16
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	mov	%r2 %r3
	mov	%r8 %r1
	mov	%r6 %r2
	mov	%r7 %r6
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	loop2.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	mov	%r1 %r2
	lw	%r26 %r1 -24
	lw	%r26 %r8 -20
	lw	%r26 %r7 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	addi	%r8 %r2 -1
	mov	%r2 %r8
	j	loop1_loop.0
tail_b.8 :
postloop_b.2 :
return_point.4 :
	retl
mul.0 :
	mov	%r3 %r7
	mov	%r1 %r3
tail_b.10 :
	addi	%r3 %r3 -1
	mov	%r3 %r1
	mov	%r7 %r3
	j	loop1.0
init.0 :
	mov	%r3 %r4
	mov	%r1 %r5
preloop_b.3 :
init_loop.0 :
	addi	%r0 %r1 0
	bl	%r5 %r1 tail_b.11
	ilw.s	%r0 %f0 l.1
	sw	%r26 %r3 -12
	sw	%r26 %r5 -8
	sw	%r26 %r4 -4
	sw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	min_caml_create_float_array
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	mov	%r1 %r6
	lw	%r26 %r3 -12
	lw	%r26 %r5 -8
	lw	%r26 %r4 -4
	lw	%r26 %r2 0
	slli	%r5 %r1 2
	add	%r4 %r1 %r1
	sw	%r1 %r6 0
	addi	%r5 %r1 -1
	mov	%r1 %r5
	j	init_loop.0
tail_b.11 :
postloop_b.3 :
return_point.6 :
	mov	%r3 %r1
	retl
make.0 :
	mov	%r2 %r31
	mov	%r3 %r2
	mov	%r31 %r3
tail_b.13 :
	sw	%r26 %r3 -4
	sw	%r26 %r1 0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	min_caml_create_array
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov	%r1 %r2
	lw	%r26 %r3 -4
	lw	%r26 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r2 0
	mov	%r3 %r31
	mov	%r2 %r3
	mov	%r31 %r2
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	init.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r2 0
	mov	%r2 %r1
return_point.7 :
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

