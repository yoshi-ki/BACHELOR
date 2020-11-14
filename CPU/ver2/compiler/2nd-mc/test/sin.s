#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
l.12 :	# 0.166667
	.float	0x3e2aaaac
l.11 :	# 0.008333
	.float	0x3c088666
l.10 :	# 0.000196
	.float	0x394d64b6
l.9 :	# 0.500000
	.float	0x3f000000
l.8 :	# 0.041664
	.float	0x3d2aa789
l.7 :	# 0.001370
	.float	0x3ab38106
l.6 :	# 0.785398
	.float	0x3f490fdb
l.5 :	# -1.000000
	.float	0xbf800000
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
	ilw	%r0 %r26 sp_init.0
	ilw	%r0 %r27 hp_init.0
	addi	%r0 %r28 program_end
main.0 :
tail_b.20 :
	fin	%f0
	fin	%f1
	fin	%f5
	fin	%f2
	fin	%f4
	fin	%f3
	sw.s	%r26 %f3 -16
	sw.s	%r26 %f4 -12
	sw.s	%r26 %f2 -8
	sw.s	%r26 %f5 -4
	sw.s	%r26 %f1 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	sin.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw.s	%r26 %f3 -16
	lw.s	%r26 %f4 -12
	lw.s	%r26 %f2 -8
	lw.s	%r26 %f5 -4
	lw.s	%r26 %f1 0
	sw.s	%r26 %f0 -16
	sw.s	%r26 %f3 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f2 -4
	sw.s	%r26 %f5 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	cos.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	mov.s	%f0 %f1
	lw.s	%r26 %f0 -16
	lw.s	%r26 %f3 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f2 -4
	lw.s	%r26 %f5 0
	add.s	%f1 %f0 %f1
	sw.s	%r26 %f1 -12
	sw.s	%r26 %f3 -8
	sw.s	%r26 %f4 -4
	sw.s	%r26 %f5 0
	mov.s	%f2 %f0
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	cos.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw.s	%r26 %f1 -12
	lw.s	%r26 %f3 -8
	lw.s	%r26 %f4 -4
	lw.s	%r26 %f5 0
	add.s	%f0 %f1 %f1
	sw.s	%r26 %f3 -8
	sw.s	%r26 %f5 -4
	sw.s	%r26 %f1 0
	mov.s	%f4 %f0
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	sin.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw.s	%r26 %f3 -8
	lw.s	%r26 %f5 -4
	lw.s	%r26 %f1 0
	mul.s	%f0 %f1 %f0
	sw.s	%r26 %f5 -4
	sw.s	%r26 %f0 0
	mov.s	%f3 %f0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	cos.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov.s	%f0 %f1
	lw.s	%r26 %f5 -4
	lw.s	%r26 %f0 0
	add.s	%f1 %f0 %f0
	sw.s	%r26 %f0 0
	mov.s	%f5 %f0
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	sin.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	mov.s	%f0 %f1
	lw.s	%r26 %f0 0
	add.s	%f1 %f0 %f0
return_point.2 :
program_end :
	add	%r0 %r0 %r0
	ret
sin.0 :
	mov.s	%f0 %f2
preloop_b.0 :
sin_loop.0 :
	ilw.s	%r0 %f4 l.0
	ilw.s	%r0 %f0 l.1
	fbg	%f0 %f2 branching_b.1
tail_b.0 :
	ilw.s	%r0 %f0 l.1
	sub.s	%f0 %f2 %f0
	mov.s	%f0 %f2
	j	sin_loop.0
branching_b.1 :
	ilw.s	%r0 %f0 l.2
	fbge	%f2 %f0 branching_b.2
tail_b.1 :
	ilw.s	%r0 %f0 l.1
	add.s	%f0 %f2 %f0
	mov.s	%f0 %f2
	j	sin_loop.0
branching_b.2 :
	fbg	%f4 %f2 branching_b.6
branching_b.3 :
	sub.s	%f4 %f2 %f1
	ilw.s	%r0 %f3 l.5
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f1 branching_b.5
branching_b.4 :
	sub.s	%f1 %f4 %f1
	ilw.s	%r0 %f0 l.6
	fbg	%f1 %f0 tail_b.3
tail_b.2 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.10
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f2 l.11
	mul.s	%f1 %f2 %f2
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.12
	mul.s	%f1 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.3
	mul.s	%f1 %f0 %f0
	mul.s	%f4 %f2 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.3 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f2 l.7
	ilw.s	%r0 %f0 l.8
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.9
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.3
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
branching_b.5 :
	ilw.s	%r0 %f0 l.6
	fbg	%f1 %f0 tail_b.5
tail_b.4 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.10
	mul.s	%f1 %f2 %f4
	ilw.s	%r0 %f2 l.11
	mul.s	%f1 %f2 %f5
	mul.s	%f0 %f4 %f2
	add.s	%f2 %f5 %f4
	ilw.s	%r0 %f2 l.12
	mul.s	%f1 %f2 %f5
	mul.s	%f0 %f4 %f2
	add.s	%f2 %f5 %f4
	ilw.s	%r0 %f2 l.3
	mul.s	%f1 %f2 %f1
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.5 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.7
	ilw.s	%r0 %f1 l.8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.9
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
branching_b.6 :
	ilw.s	%r0 %f1 l.3
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f2 branching_b.8
branching_b.7 :
	sub.s	%f2 %f4 %f2
	ilw.s	%r0 %f0 l.6
	fbg	%f2 %f0 tail_b.7
tail_b.6 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.10
	mul.s	%f2 %f0 %f5
	ilw.s	%r0 %f0 l.11
	mul.s	%f2 %f0 %f3
	mul.s	%f4 %f5 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.12
	mul.s	%f2 %f3 %f3
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.3
	mul.s	%f2 %f3 %f2
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.0
tail_b.7 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.7
	ilw.s	%r0 %f3 l.8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.9
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.3
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.0
branching_b.8 :
	ilw.s	%r0 %f0 l.6
	fbg	%f2 %f0 tail_b.9
tail_b.8 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.10
	mul.s	%f2 %f0 %f4
	ilw.s	%r0 %f0 l.11
	mul.s	%f2 %f0 %f3
	mul.s	%f5 %f4 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.12
	mul.s	%f2 %f3 %f3
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.3
	mul.s	%f2 %f3 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.0
tail_b.9 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.7
	ilw.s	%r0 %f3 l.8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.9
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.3
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
postloop_b.0 :
return_point.0 :
	retl
cos.0 :
	mov.s	%f0 %f1
preloop_b.1 :
cos_loop.0 :
	ilw.s	%r0 %f3 l.0
	ilw.s	%r0 %f0 l.1
	fbg	%f0 %f1 branching_b.10
tail_b.10 :
	ilw.s	%r0 %f0 l.1
	sub.s	%f0 %f1 %f0
	mov.s	%f0 %f1
	j	cos_loop.0
branching_b.10 :
	ilw.s	%r0 %f0 l.2
	fbge	%f1 %f0 branching_b.11
tail_b.11 :
	ilw.s	%r0 %f0 l.1
	add.s	%f0 %f1 %f0
	mov.s	%f0 %f1
	j	cos_loop.0
branching_b.11 :
	fbg	%f3 %f1 branching_b.15
branching_b.12 :
	sub.s	%f3 %f1 %f1
	ilw.s	%r0 %f4 l.5
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f1 branching_b.14
branching_b.13 :
	sub.s	%f1 %f3 %f1
	ilw.s	%r0 %f4 l.3
	ilw.s	%r0 %f0 l.6
	fbg	%f1 %f0 tail_b.13
tail_b.12 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.7
	ilw.s	%r0 %f2 l.8
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.9
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f2 %f2
	ilw.s	%r0 %f1 l.3
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.1
tail_b.13 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f2
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.10
	mul.s	%f2 %f0 %f1
	ilw.s	%r0 %f0 l.11
	mul.s	%f2 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.12
	mul.s	%f2 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f2 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.1
branching_b.14 :
	ilw.s	%r0 %f0 l.6
	fbg	%f1 %f0 tail_b.15
tail_b.14 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.7
	ilw.s	%r0 %f1 l.8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.9
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.1
tail_b.15 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f2
	ilw.s	%r0 %f1 l.10
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f3 l.11
	mul.s	%f0 %f3 %f3
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f3 %f3
	ilw.s	%r0 %f1 l.12
	mul.s	%f0 %f1 %f1
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f1 %f3
	ilw.s	%r0 %f1 l.3
	mul.s	%f0 %f1 %f1
	mul.s	%f2 %f3 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.1
branching_b.15 :
	ilw.s	%r0 %f2 l.3
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f1 branching_b.17
branching_b.16 :
	sub.s	%f1 %f3 %f1
	ilw.s	%r0 %f4 l.5
	ilw.s	%r0 %f0 l.6
	fbg	%f1 %f0 tail_b.17
tail_b.16 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.7
	ilw.s	%r0 %f1 l.8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.9
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.1
tail_b.17 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f1
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.10
	mul.s	%f1 %f0 %f2
	ilw.s	%r0 %f0 l.11
	mul.s	%f1 %f0 %f5
	mul.s	%f3 %f2 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f2 l.12
	mul.s	%f1 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.3
	mul.s	%f1 %f0 %f1
	mul.s	%f3 %f2 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.1
branching_b.17 :
	ilw.s	%r0 %f0 l.6
	fbg	%f1 %f0 tail_b.19
tail_b.18 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.7
	ilw.s	%r0 %f3 l.8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.9
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.1
tail_b.19 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f3
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.10
	mul.s	%f3 %f0 %f0
	ilw.s	%r0 %f1 l.11
	mul.s	%f3 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.12
	mul.s	%f3 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f3 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f0
postloop_b.1 :
return_point.1 :
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

