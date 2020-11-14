#data_section
stack_init.0 :
	.int	0xffffff0
l.12 :	# 0.785398
	.float	0x3f490fdb
l.11 :	# -1.000000
	.float	0xbf800000
l.10 :	# 0.333333
	.float	0x3eaaaaaa
l.9 :	# 0.200000
	.float	0x3e4ccccd
l.8 :	# 0.142857
	.float	0x3e124925
l.7 :	# 0.111111
	.float	0x3de38e38
l.6 :	# 0.089764
	.float	0x3db7d66e
l.5 :	# 0.060035
	.float	0x3d75e7c5
l.4 :	# -1.570796
	.float	0xbfc90fdb
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
	ilw	%r0 %r26 stack_init.0
	fin	%f0
	fin	%f0
	ilw.s	%r0 %f1 l.0
	fbg	%f1 %f0 fble_else.0 
	ilw.s	%r0 %f1 l.1
	fbge	%f0 %f1 fbl_else.0 
	ilw.s	%r0 %f1 l.3
	ilw.s	%r0 %f2 l.0
	neg.s	%f0 %f3
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.5
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.6
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.7
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.8
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.9
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.10
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.0 
fbl_else.0 :
	ilw.s	%r0 %f1 l.2
	fbge	%f0 %f1 fbl_else.1 
	ilw.s	%r0 %f1 l.3
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f2 l.3
	add.s	%f2 %f0 %f0
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	ilw.s	%r0 %f2 l.12
	neg.s	%f0 %f3
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.5
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.6
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.7
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.8
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.9
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.10
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.1 
fbl_else.1 :
	ilw.s	%r0 %f1 l.3
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.11
	ilw.s	%r0 %f2 l.4
	neg.s	%f0 %f3
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.5
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.6
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.7
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.8
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.9
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.10
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.1 :
fbl_cont.0 :
	j	fble_cont.0 
fble_else.0 :
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.1
	fbge	%f0 %f1 fbl_else.2 
	ilw.s	%r0 %f1 l.11
	ilw.s	%r0 %f2 l.0
	neg.s	%f0 %f3
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.5
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.6
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.7
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.8
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.9
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.10
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.2 
fbl_else.2 :
	ilw.s	%r0 %f1 l.2
	fbge	%f0 %f1 fbl_else.3 
	ilw.s	%r0 %f1 l.3
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f2 l.3
	add.s	%f2 %f0 %f0
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.11
	ilw.s	%r0 %f2 l.12
	neg.s	%f0 %f3
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.5
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.6
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.7
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.8
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.9
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.10
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.3 
fbl_else.3 :
	ilw.s	%r0 %f1 l.3
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	ilw.s	%r0 %f2 l.4
	neg.s	%f0 %f3
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.5
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.6
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.7
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.8
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.9
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.10
	mul.s	%f0 %f5 %f5
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f5 %f4
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.3 :
fbl_cont.2 :
fble_cont.0 :
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

