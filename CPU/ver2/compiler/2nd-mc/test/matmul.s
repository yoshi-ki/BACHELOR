#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
l.17 :	# 12.000000
	.float	0x41400000
l.16 :	# 11.000000
	.float	0x41300000
l.15 :	# 10.000000
	.float	0x41200000
l.14 :	# 9.000000
	.float	0x41100000
l.13 :	# 8.000000
	.float	0x41000000
l.12 :	# 7.000000
	.float	0x40e00000
l.11 :	# 6.000000
	.float	0x40c00000
l.10 :	# 5.000000
	.float	0x40a00000
l.9 :	# 4.000000
	.float	0x40800000
l.8 :	# 3.000000
	.float	0x40400000
l.7 :	# 2.000000
	.float	0x40000000
l.6 :	# 1.000000
	.float	0x3f800000
l.5 :	# 0.000000
	.float	0x0
#text_section
program_start :
	ilw	%r0 %r26 sp_init.0
	ilw	%r0 %r27 hp_init.0
	addi	%r0 %r1 0
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.5
	jal	min_caml_create_float_array
	addi	%r0 %r1 0
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 8
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 20
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r28 program_end
main.0 :
branching_b.6 :
	ilw.s	%r0 %f0 l.5
	addi	%r0 %r1 1
	sw	%r26 %r3 0
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	init.3
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r3 0
	addi	%r0 %r2 2
	mov	%r27 %r29
	addi	%r27 %r27 8
	addi	%r0 %r1 init.2
	sw	%r29 %r1 0
	sw	%r29 %r2 4
	addi	%r0 %r1 2
	sw	%r26 %r3 0
	sw	%r26 %r28 -4
	lw	%r29 %r30 0
	addi	%r26 %r26 -8
	jalr	%r30
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r3 0
	addi	%r0 %r2 2
	mov	%r27 %r29
	addi	%r27 %r27 8
	addi	%r0 %r1 init.1
	sw	%r29 %r1 0
	sw	%r29 %r2 4
	addi	%r0 %r1 1
	sw	%r26 %r3 0
	sw	%r26 %r28 -4
	lw	%r29 %r30 0
	addi	%r26 %r26 -8
	jalr	%r30
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r3 0
	lw	%r0 %r1 0
	ilw.s	%r0 %f0 l.6
	sw.s	%r1 %f0 0
	lw	%r0 %r1 0
	ilw.s	%r0 %f0 l.7
	addi	%r1 %r1 4
	sw.s	%r1 %f0 0
	lw	%r0 %r1 0
	ilw.s	%r0 %f0 l.8
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	lw	%r0 %r1 4
	ilw.s	%r0 %f0 l.9
	sw.s	%r1 %f0 0
	lw	%r0 %r1 4
	ilw.s	%r0 %f0 l.10
	addi	%r1 %r1 4
	sw.s	%r1 %f0 0
	lw	%r0 %r1 4
	ilw.s	%r0 %f0 l.11
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	lw	%r0 %r1 8
	ilw.s	%r0 %f0 l.12
	sw.s	%r1 %f0 0
	lw	%r0 %r1 8
	ilw.s	%r0 %f0 l.13
	addi	%r1 %r1 4
	sw.s	%r1 %f0 0
	lw	%r0 %r1 12
	ilw.s	%r0 %f0 l.14
	sw.s	%r1 %f0 0
	lw	%r0 %r1 12
	ilw.s	%r0 %f0 l.15
	addi	%r1 %r1 4
	sw.s	%r1 %f0 0
	lw	%r0 %r1 16
	ilw.s	%r0 %f0 l.16
	sw.s	%r1 %f0 0
	lw	%r0 %r1 16
	ilw.s	%r0 %f0 l.17
	addi	%r1 %r1 4
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	sw	%r26 %r3 0
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	loop1.1
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r3 0
	lw	%r0 %r1 20
	lw.s	%r1 %f0 0
	mfc1	%r5 %f0
	addi	%r0 %r1 100
	div	%r5 %r1 %r2
	addi	%r0 %r1 100
	mul	%r2 %r1 %r1
	sub	%r5 %r1 %r1
	addi	%r0 %r4 10
	div	%r1 %r4 %r4
	addi	%r0 %r1 100
	mul	%r2 %r1 %r1
	sub	%r5 %r1 %r5
	addi	%r0 %r1 10
	mul	%r4 %r1 %r1
	sub	%r5 %r1 %r5
	addi	%r0 %r1 0
	bl	%r1 %r2 tail_b.12
	addi	%r0 %r1 0
	bl	%r1 %r4 tail_b.13
	addi	%r5 %r1 48
	out	%r1
	j	branching_b.8
tail_b.13 :
	addi	%r4 %r1 48
	out	%r1
	addi	%r5 %r1 48
	out	%r1
	j	branching_b.8
tail_b.12 :
	addi	%r2 %r1 48
	out	%r1
	addi	%r4 %r1 48
	out	%r1
	addi	%r5 %r1 48
	out	%r1
branching_b.8 :
	addi	%r0 %r1 10
	out	%r1
	lw	%r0 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mfc1	%r4 %f0
	addi	%r0 %r1 100
	div	%r4 %r1 %r5
	addi	%r0 %r1 100
	mul	%r5 %r1 %r1
	sub	%r4 %r1 %r1
	addi	%r0 %r2 10
	div	%r1 %r2 %r2
	addi	%r0 %r1 100
	mul	%r5 %r1 %r1
	sub	%r4 %r1 %r4
	addi	%r0 %r1 10
	mul	%r2 %r1 %r1
	sub	%r4 %r1 %r4
	addi	%r0 %r1 0
	bl	%r1 %r5 tail_b.15
	addi	%r0 %r1 0
	bl	%r1 %r2 tail_b.16
	addi	%r4 %r1 48
	out	%r1
	j	branching_b.10
tail_b.16 :
	addi	%r2 %r1 48
	out	%r1
	addi	%r4 %r1 48
	out	%r1
	j	branching_b.10
tail_b.15 :
	addi	%r5 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	addi	%r4 %r1 48
	out	%r1
branching_b.10 :
	addi	%r0 %r1 10
	out	%r1
	lw	%r0 %r1 24
	lw.s	%r1 %f0 0
	mfc1	%r4 %f0
	addi	%r0 %r1 100
	div	%r4 %r1 %r5
	addi	%r0 %r1 100
	mul	%r5 %r1 %r1
	sub	%r4 %r1 %r1
	addi	%r0 %r2 10
	div	%r1 %r2 %r2
	addi	%r0 %r1 100
	mul	%r5 %r1 %r1
	sub	%r4 %r1 %r4
	addi	%r0 %r1 10
	mul	%r2 %r1 %r1
	sub	%r4 %r1 %r1
	addi	%r0 %r4 0
	bl	%r4 %r5 tail_b.18
	addi	%r0 %r4 0
	bl	%r4 %r2 tail_b.19
	addi	%r1 %r1 48
	out	%r1
	j	branching_b.12
tail_b.19 :
	addi	%r2 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	branching_b.12
tail_b.18 :
	addi	%r5 %r4 48
	out	%r4
	addi	%r2 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
branching_b.12 :
	addi	%r0 %r1 10
	out	%r1
	lw	%r0 %r1 24
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mfc1	%r6 %f0
	addi	%r0 %r1 100
	div	%r6 %r1 %r2
	addi	%r0 %r1 100
	mul	%r2 %r1 %r1
	sub	%r6 %r1 %r4
	addi	%r0 %r1 10
	div	%r4 %r1 %r5
	addi	%r0 %r1 100
	mul	%r2 %r1 %r1
	sub	%r6 %r1 %r1
	addi	%r0 %r4 10
	mul	%r5 %r4 %r4
	sub	%r1 %r4 %r4
	addi	%r0 %r1 0
	bl	%r1 %r2 tail_b.21
	addi	%r0 %r1 0
	bl	%r1 %r5 tail_b.22
	addi	%r4 %r1 48
	out	%r1
	j	tail_b.24
tail_b.22 :
	addi	%r5 %r1 48
	out	%r1
	addi	%r4 %r1 48
	out	%r1
	j	tail_b.24
tail_b.21 :
	addi	%r2 %r1 48
	out	%r1
	addi	%r5 %r1 48
	out	%r1
	addi	%r4 %r1 48
	out	%r1
tail_b.24 :
	addi	%r0 %r1 10
	out	%r1
return_point.6 :
	mov	%r3 %r1
program_end :
	add	%r0 %r0 %r0
	ret
init.3 :
preloop_b.0 :
init_loop.0 :
	addi	%r0 %r3 3
	addi	%r0 %r4 0
	bl	%r1 %r4 tail_b.0
	ilw.s	%r0 %f0 l.5
	sw	%r26 %r2 -4
	sw	%r26 %r1 0
	mov	%r3 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	min_caml_create_float_array
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov	%r1 %r3
	lw	%r26 %r2 -4
	lw	%r26 %r1 0
	slli	%r1 %r4 2
	sw	%r4 %r3 0
	addi	%r1 %r1 -1
	j	init_loop.0
tail_b.0 :
postloop_b.0 :
return_point.0 :
	mov	%r2 %r1
	retl
init.2 :
	mov	%r1 %r4
preloop_b.1 :
	lw	%r29 %r2 4
init_loop.1 :
	addi	%r0 %r1 0
	bl	%r4 %r1 tail_b.2
	ilw.s	%r0 %f0 l.5
	sw	%r26 %r3 -8
	sw	%r26 %r4 -4
	sw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	min_caml_create_float_array
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r3 -8
	lw	%r26 %r4 -4
	lw	%r26 %r2 0
	slli	%r4 %r5 2
	addi	%r5 %r5 8
	sw	%r5 %r1 0
	addi	%r4 %r1 -1
	mov	%r1 %r4
	j	init_loop.1
tail_b.2 :
postloop_b.1 :
return_point.1 :
	mov	%r3 %r1
	retl
init.1 :
	mov	%r1 %r3
preloop_b.2 :
	lw	%r29 %r1 4
init_loop.2 :
	addi	%r0 %r2 0
	bl	%r3 %r2 tail_b.4
	ilw.s	%r0 %f0 l.5
	sw	%r26 %r4 -8
	sw	%r26 %r3 -4
	sw	%r26 %r1 0
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	min_caml_create_float_array
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	mov	%r1 %r5
	lw	%r26 %r4 -8
	lw	%r26 %r3 -4
	lw	%r26 %r1 0
	slli	%r3 %r2 2
	addi	%r2 %r2 20
	sw	%r2 %r5 0
	addi	%r3 %r2 -1
	mov	%r2 %r3
	j	init_loop.2
tail_b.4 :
postloop_b.2 :
return_point.2 :
	mov	%r4 %r1
	retl
loop3.3 :
	mov	%r1 %r6
preloop_b.3 :
	lw	%r29 %r3 8
	lw	%r29 %r4 4
loop3_loop.2 :
	addi	%r0 %r1 0
	bl	%r6 %r1 tail_b.6
	slli	%r4 %r1 2
	addi	%r1 %r1 20
	lw	%r1 %r7 0
	slli	%r4 %r1 2
	addi	%r1 %r1 20
	lw	%r1 %r5 0
	slli	%r3 %r1 2
	add	%r5 %r1 %r1
	lw.s	%r1 %f2 0
	slli	%r4 %r1 2
	lw	%r1 %r1 0
	slli	%r6 %r5 2
	add	%r1 %r5 %r1
	lw.s	%r1 %f0 0
	slli	%r6 %r1 2
	addi	%r1 %r1 8
	lw	%r1 %r5 0
	slli	%r3 %r1 2
	add	%r5 %r1 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	slli	%r3 %r1 2
	add	%r7 %r1 %r1
	sw.s	%r1 %f0 0
	addi	%r6 %r1 -1
	mov	%r1 %r6
	j	loop3_loop.2
tail_b.6 :
postloop_b.3 :
return_point.3 :
	mov	%r2 %r1
	retl
loop2.2 :
	mov	%r1 %r2
preloop_b.4 :
	lw	%r29 %r4 4
loop2_loop.1 :
	addi	%r0 %r1 0
	bl	%r2 %r1 tail_b.8
	mov	%r27 %r29
	addi	%r27 %r27 12
	addi	%r0 %r1 loop3.3
	sw	%r29 %r1 0
	sw	%r29 %r2 8
	sw	%r29 %r4 4
	addi	%r0 %r1 2
	sw	%r26 %r3 -8
	sw	%r26 %r2 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -12
	lw	%r29 %r30 0
	addi	%r26 %r26 -16
	jalr	%r30
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r3 -8
	lw	%r26 %r2 -4
	lw	%r26 %r4 0
	addi	%r2 %r1 -1
	mov	%r1 %r2
	j	loop2_loop.1
tail_b.8 :
postloop_b.4 :
return_point.4 :
	mov	%r3 %r1
	retl
loop1.1 :
preloop_b.5 :
loop1_loop.0 :
	addi	%r0 %r2 0
	bl	%r1 %r2 tail_b.10
	mov	%r27 %r29
	addi	%r27 %r27 8
	addi	%r0 %r2 loop2.2
	sw	%r29 %r2 0
	sw	%r29 %r1 4
	addi	%r0 %r2 1
	sw	%r26 %r3 -4
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -8
	lw	%r29 %r30 0
	addi	%r26 %r26 -12
	jalr	%r30
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov	%r1 %r2
	lw	%r26 %r3 -4
	lw	%r26 %r1 0
	addi	%r1 %r1 -1
	j	loop1_loop.0
tail_b.10 :
postloop_b.5 :
return_point.5 :
	mov	%r3 %r1
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

