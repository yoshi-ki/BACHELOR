#data_section
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
	addi	%r0 %r28 return_point.0
preloop_b.0 :
	ilw.s	%r0 %f5 l.0
	fin	%f1
sin.1 :
	ilw.s	%r0 %f0 l.1
	fbg	%f0 %f1 branching_b.1
	ilw.s	%r0 %f0 l.1
	sub.s	%f0 %f1 %f0
	mov.s	%f0 %f1
	j	sin.1
branching_b.1 :
	ilw.s	%r0 %f0 l.2
	fbge	%f1 %f0 branching_b.2
	ilw.s	%r0 %f0 l.1
	add.s	%f0 %f1 %f0
	mov.s	%f0 %f1
	j	sin.1
branching_b.2 :
	fbg	%f5 %f1 branching_b.6
	sub.s	%f5 %f1 %f3
	ilw.s	%r0 %f4 l.12
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f3 branching_b.5
	sub.s	%f3 %f5 %f1
	ilw.s	%r0 %f0 l.5
	fbg	%f1 %f0 tail_b.3
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.9
	mul.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.10
	mul.s	%f1 %f0 %f2
	mul.s	%f3 %f5 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.11
	mul.s	%f1 %f0 %f0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.3
	mul.s	%f1 %f2 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.0
tail_b.3 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f1 l.7
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.0
branching_b.5 :
	ilw.s	%r0 %f0 l.5
	fbg	%f3 %f0 tail_b.5
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.9
	mul.s	%f3 %f0 %f1
	ilw.s	%r0 %f0 l.10
	mul.s	%f3 %f0 %f5
	mul.s	%f2 %f1 %f0
	add.s	%f0 %f5 %f1
	ilw.s	%r0 %f0 l.11
	mul.s	%f3 %f0 %f5
	mul.s	%f2 %f1 %f0
	add.s	%f0 %f5 %f1
	ilw.s	%r0 %f0 l.3
	mul.s	%f3 %f0 %f0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.0
tail_b.5 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f3 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f1 l.7
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.3
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.0
branching_b.6 :
	ilw.s	%r0 %f2 l.3
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f1 branching_b.8
	sub.s	%f1 %f5 %f3
	ilw.s	%r0 %f0 l.5
	fbg	%f3 %f0 tail_b.7
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.9
	mul.s	%f3 %f0 %f4
	ilw.s	%r0 %f0 l.10
	mul.s	%f3 %f0 %f1
	mul.s	%f5 %f4 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.11
	mul.s	%f3 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.3
	mul.s	%f3 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.0
tail_b.7 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f3 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.6
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f3
	ilw.s	%r0 %f1 l.8
	mul.s	%f0 %f3 %f3
	add.s	%f3 %f1 %f1
	ilw.s	%r0 %f3 l.3
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.0
branching_b.8 :
	ilw.s	%r0 %f0 l.5
	fbg	%f1 %f0 tail_b.9
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.9
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f3 l.10
	mul.s	%f1 %f3 %f3
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.11
	mul.s	%f1 %f3 %f3
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.3
	mul.s	%f1 %f0 %f1
	mul.s	%f4 %f3 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.0
tail_b.9 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f1 l.7
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f0
postloop_b.0 :
return_point.0 :
	add	%r0 %r0 %r0
	ret
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
