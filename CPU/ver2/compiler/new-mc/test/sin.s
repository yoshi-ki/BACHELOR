#data_section
stack_init.0 :
	.int	0xffffff0
l.12 :	# -1.000000
	.float	0xbf800000
l.11 :	# 0.166667
	.float	0x3e2aaaac
l.10 :	# 0.008333
	.float	0x3c088666
l.9 :	# 0.000196
	.float	0x394d64b6
l.8 :	# 0.500000
	.float	0x3f000000
l.7 :	# 0.041664
	.float	0x3d2aa789
l.6 :	# 0.001370
	.float	0x3ab38106
l.5 :	# 0.785398
	.float	0x3f490fdb
l.4 :	# 1.570796
	.float	0x3fc90fdb
l.3 :	# 1.000000
	.float	0x3f800000
l.2 :	# 0.000000
	.float	0x0
l.1 :	# 6.283185
	.float	0x40c90fdb
l.0 :	# 3.141593
	.float	0x40490fdb
#text_section
program_start :
	ilw	%r0 %r26 stack_init.0
	fin	%f0
	fin	%f1
	fin	%f2
	fin	%f3
	fin	%f4
	fin	%f5
	sw.s	%r26 %f2 -0
	sw.s	%r26 %f5 -8
	sw.s	%r26 %f4 -16
	sw.s	%r26 %f3 -24
	sw.s	%r26 %f1 -32
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	sin.0 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw.s	%r26 %f1 -32
	sw.s	%r26 %f0 -40
	mov.s	%f1 %f0
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	cos.0 
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw.s	%r26 %f1 -40
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 -24
	sw.s	%r26 %f0 -48
	mov.s	%f1 %f0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	cos.0 
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw.s	%r26 %f1 -48
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 -16
	sw.s	%r26 %f0 -56
	mov.s	%f1 %f0
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	sin.0 
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw.s	%r26 %f1 -56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 -8
	sw.s	%r26 %f0 -64
	mov.s	%f1 %f0
	sw	%r26 %r28 -72
	addi	%r26 %r26 -76
	jal	cos.0 
	addi	%r26 %r26 76
	lw	%r26 %r28 -72
	lw.s	%r26 %f1 -64
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 -0
	sw.s	%r26 %f0 -72
	mov.s	%f1 %f0
	sw	%r26 %r28 -80
	addi	%r26 %r26 -84
	jal	sin.0 
	addi	%r26 %r26 84
	lw	%r26 %r28 -80
	lw.s	%r26 %f1 -72
	add.s	%f0 %f1 %f0
	mov.s	%f0 %r1
program_end :
	add	%r0 %r0 %r0
	ret
sin.0 :
	ilw.s	%r0 %f1 l.0
	ilw.s	%r0 %f2 l.1
	fbg	%f2 %f0 fble_else.0 
	ilw.s	%r0 %f1 l.1
	sub.s	%f1 %f0 %f0
	j	sin.0
fble_else.0 :
	ilw.s	%r0 %f2 l.2
	fbge	%f0 %f2 fbl_else.0 
	ilw.s	%r0 %f1 l.1
	add.s	%f1 %f0 %f0
	j	sin.0
fbl_else.0 :
	fbg	%f1 %f0 fble_else.1 
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.12
	ilw.s	%r0 %f2 l.0
	ilw.s	%r0 %f3 l.4
	fbg	%f3 %f0 fble_else.2 
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.5
	fbg	%f0 %f2 fble_else.3 
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.9
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.10
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.11
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.3
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.3 :
	ilw.s	%r0 %f2 l.4
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.6
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.3
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.2 :
	ilw.s	%r0 %f2 l.5
	fbg	%f0 %f2 fble_else.4 
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.9
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.10
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.11
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.3
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.4 :
	ilw.s	%r0 %f2 l.4
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.6
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.3
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.1 :
	ilw.s	%r0 %f1 l.3
	ilw.s	%r0 %f2 l.0
	ilw.s	%r0 %f3 l.4
	fbg	%f3 %f0 fble_else.5 
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.5
	fbg	%f0 %f2 fble_else.6 
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.9
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.10
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.11
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.3
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.6 :
	ilw.s	%r0 %f2 l.4
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.6
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.3
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.5 :
	ilw.s	%r0 %f2 l.5
	fbg	%f0 %f2 fble_else.7 
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.9
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.10
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.11
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.3
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.7 :
	ilw.s	%r0 %f2 l.4
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.6
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.3
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
cos.0 :
	ilw.s	%r0 %f1 l.0
	ilw.s	%r0 %f2 l.1
	fbg	%f2 %f0 fble_else.8 
	ilw.s	%r0 %f1 l.1
	sub.s	%f1 %f0 %f0
	j	cos.0
fble_else.8 :
	ilw.s	%r0 %f2 l.2
	fbge	%f0 %f2 fbl_else.1 
	ilw.s	%r0 %f1 l.1
	add.s	%f1 %f0 %f0
	j	cos.0
fbl_else.1 :
	fbg	%f1 %f0 fble_else.9 
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.12
	ilw.s	%r0 %f2 l.0
	ilw.s	%r0 %f3 l.4
	fbg	%f3 %f0 fble_else.10 
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f1 l.3
	ilw.s	%r0 %f2 l.5
	fbg	%f0 %f2 fble_else.11 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.6
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.3
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.11 :
	ilw.s	%r0 %f2 l.4
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.9
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.10
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.11
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.3
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.10 :
	ilw.s	%r0 %f2 l.5
	fbg	%f0 %f2 fble_else.12 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.6
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.3
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.12 :
	ilw.s	%r0 %f2 l.4
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.9
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.10
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.11
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.3
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.9 :
	ilw.s	%r0 %f1 l.3
	ilw.s	%r0 %f2 l.0
	ilw.s	%r0 %f3 l.4
	fbg	%f3 %f0 fble_else.13 
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f1 l.12
	ilw.s	%r0 %f2 l.5
	fbg	%f0 %f2 fble_else.14 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.6
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.3
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.14 :
	ilw.s	%r0 %f2 l.4
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.9
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.10
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.11
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.3
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.13 :
	ilw.s	%r0 %f2 l.5
	fbg	%f0 %f2 fble_else.15 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.6
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.3
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.15 :
	ilw.s	%r0 %f2 l.4
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.9
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.10
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.11
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.3
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
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

