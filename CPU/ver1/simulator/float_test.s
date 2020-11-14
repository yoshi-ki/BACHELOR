#data_section
l.39 :	# 77.244000
	.long	0x429a7cee
l.37 :	# 275.760000
	.long	0x4389e148
l.35 :	# 1219.524390
	.long	0x449870c8
l.33 :	# 303.500000
	.long	0x4397c000
l.31 :	# 278.900000
	.long	0x438b7333
#text_section
program_start :
	addi	%r0 %r1 l.31 
	ilw.s	%r1 %f0 0
	addi	%r0 %r1 15
	addi	%r0 %r2 l.33 
	ilw.s	%r2 %f1 0
	mfc1	%r2 %f1
	addi	%r0 %r3 l.35 
	ilw.s	%r3 %f1 0
	mfc1	%r3 %f1
	addi	%r0 %r4 l.37 
	ilw.s	%r4 %f1 0
	mfc1	%r4 %f1
	addi	%r0 %r5 l.39 
	ilw.s	%r5 %f1 0
	mfc1	%r5 %f1
	mtc1	%r1 %f1
	mul.s	%f1 %f0 %f0
	mfc1	%r1 %f0
	sw	%r26 %r1 0
	sw	%r26 %r5 4
	sw	%r26 %r4 8
	sw	%r26 %r3 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_print_int
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_print_int
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_print_int
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_print_int
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_print_int
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
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
	
