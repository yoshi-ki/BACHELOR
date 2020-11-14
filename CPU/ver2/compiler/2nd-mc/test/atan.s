#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
l.12 :	# 0.785398
	.float	0x3f490fdb
l.11 :	# -1.570796
	.float	0xbfc90fdb
l.10 :	# -1.000000
	.float	0xbf800000
l.9 :	# 0.333333
	.float	0x3eaaaaaa
l.8 :	# 0.200000
	.float	0x3e4ccccd
l.7 :	# 0.142857
	.float	0x3e124925
l.6 :	# 0.111111
	.float	0x3de38e38
l.5 :	# 0.089764
	.float	0x3db7d66e
l.4 :	# 0.060035
	.float	0x3d75e7c5
l.3 :	# 1.000000
	.float	0x3f800000
l.2 :	# 2.437500
	.float	0x401c0000
l.1 :	# 0.437500
	.float	0x3ee00000
l.0 :	# 0.000000
	.float	0x0
#text_section
program_start :
	ilw	%r0 %r26 sp_init.0
	ilw	%r0 %r27 hp_init.0
	addi	%r0 %r28 program_end
main.0 :
branching_b.0 :
	fin	%f0
	fin	%f2
	ilw.s	%r0 %f0 l.0
	fbg	%f0 %f2 branching_b.3
branching_b.1 :
	ilw.s	%r0 %f0 l.1
	fbge	%f2 %f0 branching_b.2
tail_b.0 :
	ilw.s	%r0 %f5 l.3
	ilw.s	%r0 %f3 l.0
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f4
	ilw.s	%r0 %f0 l.4
	mul.s	%f2 %f0 %f1
	ilw.s	%r0 %f0 l.5
	mul.s	%f2 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f6
	ilw.s	%r0 %f0 l.6
	mul.s	%f2 %f0 %f1
	mul.s	%f4 %f6 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.7
	mul.s	%f2 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f2 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.9
	mul.s	%f2 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f5 %f0 %f0
	j	return_point.0
branching_b.2 :
	ilw.s	%r0 %f0 l.2
	fbge	%f2 %f0 tail_b.2
tail_b.1 :
	ilw.s	%r0 %f0 l.3
	sub.s	%f0 %f2 %f1
	ilw.s	%r0 %f0 l.3
	add.s	%f0 %f2 %f0
	div.s	%f0 %f1 %f2
	ilw.s	%r0 %f5 l.3
	ilw.s	%r0 %f4 l.12
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f1 l.4
	mul.s	%f2 %f1 %f1
	ilw.s	%r0 %f3 l.5
	mul.s	%f2 %f3 %f3
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f3
	ilw.s	%r0 %f1 l.6
	mul.s	%f2 %f1 %f6
	mul.s	%f0 %f3 %f1
	add.s	%f1 %f6 %f3
	ilw.s	%r0 %f1 l.7
	mul.s	%f2 %f1 %f1
	mul.s	%f0 %f3 %f3
	add.s	%f3 %f1 %f3
	ilw.s	%r0 %f1 l.8
	mul.s	%f2 %f1 %f6
	mul.s	%f0 %f3 %f1
	add.s	%f1 %f6 %f3
	ilw.s	%r0 %f1 l.9
	mul.s	%f2 %f1 %f1
	mul.s	%f0 %f3 %f3
	add.s	%f3 %f1 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f5 %f0 %f0
	j	return_point.0
tail_b.2 :
	ilw.s	%r0 %f0 l.3
	div.s	%f2 %f0 %f3
	ilw.s	%r0 %f5 l.10
	ilw.s	%r0 %f6 l.11
	neg.s	%f3 %f0
	mul.s	%f3 %f0 %f2
	ilw.s	%r0 %f0 l.4
	mul.s	%f3 %f0 %f1
	ilw.s	%r0 %f0 l.5
	mul.s	%f3 %f0 %f0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f4
	ilw.s	%r0 %f0 l.6
	mul.s	%f3 %f0 %f1
	mul.s	%f2 %f4 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.7
	mul.s	%f3 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f3 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.9
	mul.s	%f3 %f0 %f4
	mul.s	%f2 %f1 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f5 %f0 %f0
	j	return_point.0
branching_b.3 :
	neg.s	%f2 %f4
	ilw.s	%r0 %f0 l.1
	fbge	%f4 %f0 branching_b.4
tail_b.3 :
	ilw.s	%r0 %f2 l.10
	ilw.s	%r0 %f3 l.0
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f5
	ilw.s	%r0 %f0 l.4
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.5
	mul.s	%f4 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.6
	mul.s	%f4 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.7
	mul.s	%f4 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.8
	mul.s	%f4 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.9
	mul.s	%f4 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	j	return_point.0
branching_b.4 :
	ilw.s	%r0 %f0 l.2
	fbge	%f4 %f0 tail_b.5
tail_b.4 :
	ilw.s	%r0 %f0 l.3
	sub.s	%f0 %f4 %f1
	ilw.s	%r0 %f0 l.3
	add.s	%f0 %f4 %f0
	div.s	%f0 %f1 %f1
	ilw.s	%r0 %f4 l.10
	ilw.s	%r0 %f5 l.12
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f3
	ilw.s	%r0 %f0 l.4
	mul.s	%f1 %f0 %f6
	ilw.s	%r0 %f0 l.5
	mul.s	%f1 %f0 %f2
	mul.s	%f3 %f6 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.6
	mul.s	%f1 %f0 %f0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.7
	mul.s	%f1 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.8
	mul.s	%f1 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.9
	mul.s	%f1 %f0 %f0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f4 %f0 %f0
	j	return_point.0
tail_b.5 :
	ilw.s	%r0 %f0 l.3
	div.s	%f4 %f0 %f0
	ilw.s	%r0 %f2 l.3
	ilw.s	%r0 %f3 l.11
	neg.s	%f0 %f1
	mul.s	%f0 %f1 %f5
	ilw.s	%r0 %f1 l.4
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f4 l.5
	mul.s	%f0 %f4 %f4
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.6
	mul.s	%f0 %f1 %f1
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f1 %f4
	ilw.s	%r0 %f1 l.7
	mul.s	%f0 %f1 %f1
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f1 %f4
	ilw.s	%r0 %f1 l.8
	mul.s	%f0 %f1 %f1
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f1 %f4
	ilw.s	%r0 %f1 l.9
	mul.s	%f0 %f1 %f1
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f1 %f1
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
return_point.0 :
program_end :
	add	%r0 %r0 %r0
	ret
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

