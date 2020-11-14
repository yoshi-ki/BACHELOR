.section ".text"
.global min_caml_print_newline
min_caml_print_newline:
	addi	%r13 10 %r13
	sw	%r26 %r28 0
	jal	putchar
	lw	%r26 %r28 0
	retl
.global min_caml_print_int
min_caml_print_int:
	addi	%r13 format_int %r13
	mov	%r1 %r14
	sw	%r26 %r28 0
	jal	printf
	lw	%r26 %r28 0
	retl
.global min_caml_print_byte
min_caml_print_byte:
	mov	%r1 %r13
	st	%r26 %r28 0
	jal	putchar
	lw	%r26 %r28 0
	retl
.global min_caml_prerr_int
min_caml_prerr_int:
	addi	%r13 min_caml_stderr %r13
	addi	%r14 format_int %r14
	mov	%r1 %r15
	sw	%r26 %r28 0
	jal	fprintf
	lw	%r26 %r28 0
	retl
.global min_caml_prerr_byte
min_caml_prerr_byte:
	mov	%r1 %r13
	addi	%r14 min_caml_stderr %r14
	sw	%r26 %r28 0
	jal	fputc
	lw	%r26 %r28 0
	retl
.global min_caml_prerr_float
min_caml_prerr_float:
	addi	%r13 min_caml_stderr %r13
	addi	%r14 format_float %r14
	sd.s	%r26 %f0 0
	ld	%r26 %r15 0
	sw	%r26 %r28 0
	jal	fprintf
	lw	%r26 %r28 0
	retl
.global min_caml_read_int
min_caml_read_int:
	addi	%r13 format_int %r13
	sw	%r26 %r28 0
	addi	%r30 -20 %r14	
	jal	scanf 0 ! ????
	lw	%r26 %r28 0
	lw	%r30 %r1 -20
	retl
.global min_caml_read_float
min_caml_read_float:
	addi	%r13 format_float %r13
	sw	%r26 %r28 0
	addi	%r30 -24 %r14	
	jal	scanf 0	! ????
	lw	%r26 %r28 0
	ld.s	%r30 %f0 -24
	retl
.global min_caml_create_array
min_caml_create_array:
	mov	%r1 %r3
	mov	%r27 %r1
create_array_loop:
	tst	%r3
	bnz	create_array_cont
	andcc	%r27, 4, %r0
	bz	create_array_exit
	add	%r27, 4, %r27
create_array_exit:
	retl
create_array_cont:
	sw	%r27 %r2 0
	dec	%r3
	addi	%r27 4 %r27
	j	create_array_loop
.global min_caml_create_float_array
min_caml_create_float_array:
	mov	%r1 %r2
	mov	%r27 %r1
create_float_array_loop:
	tst	%r2
	bnz	create_float_array_cont
	retl
create_float_array_cont:
	sd.s	%r27 %f0 0
	dec	%r2
	addi	%r27 8 %r27
	j	create_float_array_loop
.global min_caml_abs_float
min_caml_abs_float:
	fabss	%f0 %f0
	retl
.global min_caml_sqrt
min_caml_sqrt:
	fsqrtd	%f0 %f0
	retl
.global min_caml_floor
min_caml_floor:
	sd.s	%r26 %f0 0
	ld	%r26 %r13 0
	sw	%r26 %r28 0
	jal	floor
	lw	%r26 %r28 0
	retl
.global min_caml_int_of_float
min_caml_int_of_float:
.global min_caml_truncate
min_caml_truncate:
	fdtoi	%f0 %f0
	sw.s	%r26 %f0 0
	lw	%r26 %r1 0
	retl
.global min_caml_float_of_int
min_caml_float_of_int:
	sw	%r26 %r1 0
	lw.s	%r26 %f0 0
	fitod	%f0 %f0
	retl
.global min_caml_cos
min_caml_cos:
	sd.s	%r26 %f0 0
	ld	%r26 %r13 0
	sw	%r26 %r28 0
	jal	cos
	lw	%r26 %r28 0
	retl
.global min_caml_sin
min_caml_sin:
	sd.s	%r26 %f0 0
	ld	%r26 %r13 0
	sw	%r26 %r28 0
	jal	sin
	lw	%r26 %r28 0
	retl
.global min_caml_atan
min_caml_atan:
	sd.s	%r26 %f0 0
	ld	%r26 %r13 0
	sw	%r26 %r28 0
	jal	atan
	lw	%r26 %r28 0
	retl
.section ".rodata"
format_int:
	.asciz	"%d"
format_float:
	.asciz	"%lf"
.align 8
float_0:
	.long	0x0
	.long	0x0
float_1:
	.long	0x3ff00000
	.long	0x0
