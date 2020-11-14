#data_section
l.20 :	# 3.141593
	.float	0x40490fdb
l.18 :	# 0.250000
	.float	0x3e800000
l.17 :	# 0.076923
	.float	0x3d9d89d9
l.16 :	# 0.846154
	.float	0x3f589d8a
l.15 :	# 0.153846
	.float	0x3e1d89d9
l.14 :	# 255.000000
	.float	0x437f0000
l.13 :	# 2.000000
	.float	0x40000000
l.12 :	# 4.000000
	.float	0x40800000
l.11 :	# -1.000000
	.float	0xbf800000
l.10 :	# 0.500000
	.float	0x3f000000
l.9 :	# 0.041664
	.float	0x3d2aa789
l.8 :	# 0.001370
	.float	0x3ab38106
l.7 :	# 0.166667
	.float	0x3e2aaaac
l.6 :	# 0.008333
	.float	0x3c088666
l.5 :	# 0.000196
	.float	0x394d64b6
l.4 :	# 0.785398
	.float	0x3f490fdb
l.3 :	# 1.570796
	.float	0x3fc90fdb
l.2 :	# 1.000000
	.float	0x3f800000
l.1 :	# 0.000000
	.float	0x0
l.0 :	# 6.283185
	.float	0x40c90fdb
#text_section
program_start :
	ilw.s	%r0 %f0 l.20
	mov	%r27 %r1
	addi	%r27 %r27 8
	addi	%r0 %r2 cos.0
	sw	%r1 %r2 0
	sw.s	%r1 %f0 4
	addi	%r0 %r2 60
	addi	%r0 %r3 512
	ilw.s	%r0 %f0 l.1
	ilw.s	%r0 %f1 l.1
	mov	%r27 %r4
	addi	%r27 %r27 8
	sw.s	%r4 %f1 4
	sw.s	%r4 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r3 8
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r2
	lw	%r26 %r1 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 0
	sw	%r26 %r1 12
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_array 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	mov	%r1 %r2
	lw	%r26 %r1 8
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_array 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	mov	%r1 %r2
	lw	%r26 %r1 8
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_array 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	mov	%r27 %r30
	addi	%r27 %r27 12
	addi	%r0 %r2 malloc.2
	sw	%r30 %r2 0
	lw	%r26 %r2 8
	sw	%r30 %r2 8
	lw	%r26 %r3 12
	sw	%r30 %r3 4
	mov	%r27 %r4
	addi	%r27 %r27 8
	addi	%r0 %r5 init_loop.2
	sw	%r4 %r5 0
	sw	%r4 %r3 4
	addi	%r0 %r5 0
	sw	%r26 %r1 16
	sw	%r26 %r4 20
	mov	%r5 %r1
	sw	%r26 %r28 24
	lw	%r30 %r29 0
	addi	%r26 %r26 28
	jalr	%r29
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	lw	%r26 %r3 8
	lw	%r26 %r30 20
	sw	%r26 %r28 24
	lw	%r30 %r29 0
	addi	%r26 %r26 28
	jalr	%r29
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	mov	%r27 %r30
	addi	%r27 %r27 12
	addi	%r0 %r1 malloc_2d.2
	sw	%r30 %r1 0
	lw	%r26 %r2 8
	sw	%r30 %r2 8
	lw	%r26 %r1 16
	sw	%r30 %r1 4
	addi	%r0 %r3 0
	mov	%r3 %r1
	sw	%r26 %r28 24
	lw	%r30 %r29 0
	addi	%r26 %r26 28
	jalr	%r29
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	addi	%r0 %r1 80
	out	%r1
	addi	%r0 %r1 51
	out	%r1
	addi	%r0 %r1 10
	out	%r1
	addi	%r0 %r1 53
	out	%r1
	addi	%r0 %r1 49
	out	%r1
	addi	%r0 %r1 50
	out	%r1
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 53
	out	%r1
	addi	%r0 %r1 49
	out	%r1
	addi	%r0 %r1 50
	out	%r1
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 50
	out	%r1
	addi	%r0 %r1 53
	out	%r1
	addi	%r0 %r1 53
	out	%r1
	addi	%r0 %r1 10
	out	%r1
	mov	%r27 %r30
	addi	%r27 %r27 20
	addi	%r0 %r1 compute_image_loop.2
	sw	%r30 %r1 0
	lw	%r26 %r1 4
	sw	%r30 %r1 16
	lw	%r26 %r1 16
	sw	%r30 %r1 12
	lw	%r26 %r2 0
	sw	%r30 %r2 8
	lw	%r26 %r2 12
	sw	%r30 %r2 4
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r4 8
	mov	%r2 %r1
	mov	%r3 %r2
	mov	%r4 %r3
	sw	%r26 %r28 24
	lw	%r30 %r29 0
	addi	%r26 %r26 28
	jalr	%r29
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	mov	%r27 %r30
	addi	%r27 %r27 8
	addi	%r0 %r1 print_image_loop.2
	sw	%r30 %r1 0
	lw	%r26 %r1 16
	sw	%r30 %r1 4
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	lw	%r26 %r3 8
	sw	%r26 %r28 24
	lw	%r30 %r29 0
	addi	%r26 %r26 28
	jalr	%r29
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	ret
cos.0 :
	lw.s	%r30 %f1 4
	ilw.s	%r0 %f2 l.0
	fbg	%f2 %f0 fble_else.0 
	ilw.s	%r0 %f1 l.0
	sub.s	%f1 %f0 %f0
	lw	%r30 %r29 0
	jr	%r29
fble_else.0 :
	ilw.s	%r0 %f2 l.1
	fbge	%f0 %f2 fbl_else.0 
	ilw.s	%r0 %f1 l.0
	add.s	%f1 %f0 %f0
	lw	%r30 %r29 0
	jr	%r29
fbl_else.0 :
	fbg	%f1 %f0 fble_else.1 
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f2 l.11
	ilw.s	%r0 %f3 l.3
	fbg	%f3 %f0 fble_else.2 
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.2
	ilw.s	%r0 %f2 l.4
	fbg	%f0 %f2 fble_else.3 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.8
	ilw.s	%r0 %f3 l.9
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.10
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.2
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.3 :
	ilw.s	%r0 %f2 l.3
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.5
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.6
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.7
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.2
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.2 :
	ilw.s	%r0 %f1 l.4
	fbg	%f0 %f1 fble_else.4 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.8
	ilw.s	%r0 %f3 l.9
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.10
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.2
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.4 :
	ilw.s	%r0 %f1 l.3
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	ilw.s	%r0 %f3 l.5
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.6
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.7
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.2
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.1 :
	ilw.s	%r0 %f2 l.2
	ilw.s	%r0 %f3 l.3
	fbg	%f3 %f0 fble_else.5 
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.11
	ilw.s	%r0 %f2 l.4
	fbg	%f0 %f2 fble_else.6 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.8
	ilw.s	%r0 %f3 l.9
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.10
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.2
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.6 :
	ilw.s	%r0 %f2 l.3
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.5
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.6
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.7
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.2
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.5 :
	ilw.s	%r0 %f1 l.4
	fbg	%f0 %f1 fble_else.7 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.8
	ilw.s	%r0 %f3 l.9
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.10
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.2
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.7 :
	ilw.s	%r0 %f1 l.3
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	ilw.s	%r0 %f3 l.5
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.6
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.7
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.2
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
malloc.2 :
	lw	%r30 %r3 8
	lw	%r30 %r4 4
	bne	%r1 %r2 beq_else.0 
	retl
beq_else.0 :
	ilw.s	%r0 %f0 l.1
	ilw.s	%r0 %f1 l.1
	mov	%r27 %r5
	addi	%r27 %r27 8
	sw.s	%r5 %f1 4
	sw.s	%r5 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r30 4
	sw	%r26 %r4 8
	sw	%r26 %r1 12
	mov	%r5 %r2
	mov	%r3 %r1
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_array 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	addi	%r2 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r30 4
	lw	%r30 %r29 0
	jr	%r29
init_loop.2 :
	lw	%r30 %r4 4
	mtc1	%r1 %f0
	addi	%r0 %r5 1
	sub	%r3 %r5 %r5
	mtc1	%r5 %f1
	div.s	%f1 %f0 %f0
	mtc1	%r2 %f1
	addi	%r0 %r5 1
	sub	%r3 %r5 %r5
	mtc1	%r5 %f2
	div.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.12
	mul.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.13
	sub.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.12
	mul.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.13
	sub.s	%f2 %f1 %f1
	bne	%r1 %r3 beq_else.1 
	retl
beq_else.1 :
	bne	%r2 %r3 beq_else.2 
	addi	%r1 %r1 1
	addi	%r0 %r2 0
	lw	%r30 %r29 0
	jr	%r29
beq_else.2 :
	slli	%r1 %r5 2
	add	%r4 %r5 %r31
	lw	%r31 %r4 0
	mov	%r27 %r5
	addi	%r27 %r27 8
	sw.s	%r5 %f1 4
	sw.s	%r5 %f0 0
	slli	%r2 %r6 2
	add	%r4 %r6 %r31
	sw	%r31 %r5 0
	addi	%r2 %r2 1
	lw	%r30 %r29 0
	jr	%r29
malloc_1d.2 :
	bne	%r1 %r2 beq_else.3 
	retl
beq_else.3 :
	addi	%r0 %r4 3
	addi	%r0 %r5 0
	sw	%r26 %r2 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	mov	%r5 %r2
	mov	%r4 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 8
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	addi	%r2 %r1 1
	lw	%r26 %r2 0
	mov	%r4 %r3
	j	malloc_1d.2
malloc_2d.2 :
	lw	%r30 %r3 8
	lw	%r30 %r4 4
	bne	%r1 %r2 beq_else.4 
	retl
beq_else.4 :
	addi	%r0 %r5 3
	addi	%r0 %r6 0
	sw	%r26 %r2 0
	sw	%r26 %r30 4
	sw	%r26 %r4 8
	sw	%r26 %r1 12
	sw	%r26 %r3 16
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r3
	addi	%r0 %r1 0
	lw	%r26 %r2 16
	sw	%r26 %r3 20
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	malloc_1d.2 
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	lw	%r26 %r1 12
	slli	%r1 %r2 2
	lw	%r26 %r3 8
	lw	%r26 %r4 20
	add	%r3 %r2 %r31
	sw	%r31 %r4 0
	addi	%r1 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r30 4
	lw	%r30 %r29 0
	jr	%r29
compute_pixel_loop.2 :
	lw	%r30 %r4 8
	lw	%r30 %r5 4
	addi	%r0 %r6 0
	bne	%r1 %r6 beq_else.5 
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	mov	%r27 %r4
	addi	%r27 %r27 12
	sw	%r4 %r3 8
	sw	%r4 %r2 4
	sw	%r4 %r1 0
	mov	%r4 %r1
	retl
beq_else.5 :
	lw.s	%r2 %f0 4
	lw.s	%r2 %f1 0
	mul.s	%f1 %f1 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.12
	fbg	%f1 %f0 fble_else.8 
	mtc1	%r1 %f0
	mtc1	%r4 %f1
	div.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f2 l.14
	ilw.s	%r0 %f3 l.15
	ilw.s	%r0 %f4 l.16
	sw.s	%r26 %f0 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f3 16
	sw.s	%r26 %f4 24
	mov	%r5 %r30
	mov.s	%f1 %f0
	sw	%r26 %r28 32
	lw	%r30 %r29 0
	addi	%r26 %r26 36
	jalr	%r29
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.14
	ilw.s	%r0 %f2 l.17
	ilw.s	%r0 %f3 l.18
	lw.s	%r26 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f2 %f2
	mul.s	%f2 %f1 %f1
	mfc1	%r1 %f0
	addi	%r0 %r2 30
	mfc1	%r3 %f1
	mov	%r27 %r4
	addi	%r27 %r27 12
	sw	%r4 %r3 8
	sw	%r4 %r2 4
	sw	%r4 %r1 0
	mov	%r4 %r1
	retl
fble_else.8 :
	lw.s	%r2 %f0 4
	lw.s	%r2 %f1 0
	lw.s	%r2 %f2 4
	lw.s	%r2 %f3 0
	mul.s	%f3 %f1 %f4
	mul.s	%f2 %f0 %f5
	sub.s	%f5 %f4 %f4
	mul.s	%f2 %f1 %f1
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f0
	lw.s	%r3 %f1 4
	lw.s	%r3 %f2 0
	add.s	%f2 %f4 %f2
	add.s	%f1 %f0 %f0
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw.s	%r2 %f0 4
	sw.s	%r2 %f2 0
	addi	%r0 %r4 1
	sub	%r1 %r4 %r1
	lw	%r30 %r29 0
	jr	%r29
compute_image_loop.2 :
	lw	%r30 %r4 16
	lw	%r30 %r5 12
	lw	%r30 %r6 8
	lw	%r30 %r7 4
	bne	%r1 %r3 beq_else.6 
	retl
beq_else.6 :
	bne	%r2 %r3 beq_else.7 
	addi	%r1 %r1 1
	addi	%r0 %r2 0
	lw	%r30 %r29 0
	jr	%r29
beq_else.7 :
	slli	%r1 %r8 2
	add	%r7 %r8 %r31
	lw	%r31 %r7 0
	slli	%r2 %r8 2
	add	%r7 %r8 %r31
	lw	%r31 %r7 0
	mov	%r27 %r8
	addi	%r27 %r27 12
	addi	%r0 %r9 compute_pixel_loop.2
	sw	%r8 %r9 0
	sw	%r8 %r4 8
	sw	%r8 %r6 4
	ilw.s	%r0 %f0 l.1
	ilw.s	%r0 %f1 l.1
	mov	%r27 %r6
	addi	%r27 %r27 8
	sw.s	%r6 %f1 4
	sw.s	%r6 %f0 0
	sw	%r26 %r3 0
	sw	%r26 %r30 4
	sw	%r26 %r2 8
	sw	%r26 %r5 12
	sw	%r26 %r1 16
	mov	%r7 %r3
	mov	%r6 %r2
	mov	%r4 %r1
	mov	%r8 %r30
	sw	%r26 %r28 20
	lw	%r30 %r29 0
	addi	%r26 %r26 24
	jalr	%r29
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r1 %r2 8
	lw	%r1 %r3 4
	lw	%r1 %r1 0
	lw	%r26 %r4 16
	slli	%r4 %r5 2
	lw	%r26 %r6 12
	add	%r6 %r5 %r31
	lw	%r31 %r5 0
	lw	%r26 %r6 8
	slli	%r6 %r7 2
	add	%r5 %r7 %r31
	lw	%r31 %r5 0
	sw	%r5 %r1 0
	sw	%r5 %r3 4
	sw	%r5 %r2 8
	addi	%r6 %r2 1
	lw	%r26 %r3 0
	lw	%r26 %r30 4
	mov	%r4 %r1
	lw	%r30 %r29 0
	jr	%r29
print_image_loop.2 :
	lw	%r30 %r4 4
	bne	%r1 %r3 beq_else.8 
	retl
beq_else.8 :
	bne	%r2 %r3 beq_else.9 
	addi	%r1 %r1 1
	addi	%r0 %r2 0
	lw	%r30 %r29 0
	jr	%r29
beq_else.9 :
	slli	%r1 %r5 2
	add	%r4 %r5 %r31
	lw	%r31 %r4 0
	slli	%r2 %r5 2
	add	%r4 %r5 %r31
	lw	%r31 %r4 0
	lw	%r4 %r5 0
	addi	%r0 %r6 100
	div	%r5 %r6 %r6
	addi	%r0 %r7 100
	mul	%r6 %r7 %r7
	sub	%r5 %r7 %r7
	addi	%r0 %r8 10
	div	%r7 %r8 %r7
	addi	%r0 %r8 100
	mul	%r6 %r8 %r8
	sub	%r5 %r8 %r5
	addi	%r0 %r8 10
	mul	%r7 %r8 %r8
	sub	%r5 %r8 %r5
	addi	%r0 %r8 0
	bge	%r8 %r6 bl_else.0 
	addi	%r6 %r6 48
	out	%r6
	addi	%r7 %r6 48
	out	%r6
	addi	%r5 %r5 48
	out	%r5
	j	bl_cont.0 
bl_else.0 :
	addi	%r0 %r6 0
	bge	%r6 %r7 bl_else.1 
	addi	%r7 %r6 48
	out	%r6
	addi	%r5 %r5 48
	out	%r5
	j	bl_cont.1 
bl_else.1 :
	addi	%r5 %r5 48
	out	%r5
bl_cont.1 :
bl_cont.0 :
	addi	%r0 %r5 32
	out	%r5
	lw	%r4 %r5 4
	addi	%r0 %r6 100
	div	%r5 %r6 %r6
	addi	%r0 %r7 100
	mul	%r6 %r7 %r7
	sub	%r5 %r7 %r7
	addi	%r0 %r8 10
	div	%r7 %r8 %r7
	addi	%r0 %r8 100
	mul	%r6 %r8 %r8
	sub	%r5 %r8 %r5
	addi	%r0 %r8 10
	mul	%r7 %r8 %r8
	sub	%r5 %r8 %r5
	addi	%r0 %r8 0
	bge	%r8 %r6 bl_else.2 
	addi	%r6 %r6 48
	out	%r6
	addi	%r7 %r6 48
	out	%r6
	addi	%r5 %r5 48
	out	%r5
	j	bl_cont.2 
bl_else.2 :
	addi	%r0 %r6 0
	bge	%r6 %r7 bl_else.3 
	addi	%r7 %r6 48
	out	%r6
	addi	%r5 %r5 48
	out	%r5
	j	bl_cont.3 
bl_else.3 :
	addi	%r5 %r5 48
	out	%r5
bl_cont.3 :
bl_cont.2 :
	addi	%r0 %r5 32
	out	%r5
	lw	%r4 %r4 8
	addi	%r0 %r5 100
	div	%r4 %r5 %r5
	addi	%r0 %r6 100
	mul	%r5 %r6 %r6
	sub	%r4 %r6 %r6
	addi	%r0 %r7 10
	div	%r6 %r7 %r6
	addi	%r0 %r7 100
	mul	%r5 %r7 %r7
	sub	%r4 %r7 %r4
	addi	%r0 %r7 10
	mul	%r6 %r7 %r7
	sub	%r4 %r7 %r4
	addi	%r0 %r7 0
	bge	%r7 %r5 bl_else.4 
	addi	%r5 %r5 48
	out	%r5
	addi	%r6 %r5 48
	out	%r5
	addi	%r4 %r4 48
	out	%r4
	j	bl_cont.4 
bl_else.4 :
	addi	%r0 %r5 0
	bge	%r5 %r6 bl_else.5 
	addi	%r6 %r5 48
	out	%r5
	addi	%r4 %r4 48
	out	%r4
	j	bl_cont.5 
bl_else.5 :
	addi	%r4 %r4 48
	out	%r4
bl_cont.5 :
bl_cont.4 :
	addi	%r0 %r4 10
	out	%r4
	addi	%r2 %r2 1
	lw	%r30 %r29 0
	jr	%r29
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
