#data_section
l.39:	# 48.300300
	.long	0x42413382
l.37:	# 4.500000
	.long	0x40900000
l.35:	# -12.300000
	.long	0xc144cccd
#text_section
program_start:
	addi	%r0 %r1 l.35
	ilw.s	%r1 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_abs_float
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_sqrt
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_cos
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_sin
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r0 %r1 l.37
	ilw.s	%r1 %f2 0
	add.s	%f0 %f2 %f0
	addi	%r0 %r1 l.39
	ilw.s	%r1 %f2 0
	sub.s	%f0 %f2 %f0
	addi	%r0 %r1 1000000
	sw	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_float_of_int
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %f2 0
	mul.s	%f2 %f0 %f0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_int_of_float
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_print_int
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	ret
