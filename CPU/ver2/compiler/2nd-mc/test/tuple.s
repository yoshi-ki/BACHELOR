#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
l.1 :	# 22.000000
	.float	0x41b00000
l.0 :	# 33.000000
	.float	0x42040000
#text_section
program_start :
	ilw	%r0 %r26 sp_init.0
	ilw	%r0 %r27 hp_init.0
	addi	%r0 %r1 0
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	sw	%r27 %r1 0
	ilw.s	%r0 %f0 l.0
	sw.s	%r27 %f0 4
	addi	%r0 %r1 19
	sw	%r27 %r1 8
	ilw.s	%r0 %f0 l.1
	sw.s	%r27 %f0 12
	addi	%r27 %r27 16
	addi	%r0 %r28 program_end
main.0 :
tail_b.3 :
	ilw.s	%r0 %f0 l.0
	ilw.s	%r0 %f0 l.1
	lw.s	%r0 %f1 12
	lw	%r0 %r3 8
	lw.s	%r0 %f0 4
	lw	%r0 %r1 0
	sw.s	%r26 %f0 -12
	sw	%r26 %r3 -8
	sw.s	%r26 %f1 -4
	sw	%r26 %r2 0
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	print_int.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw.s	%r26 %f0 -12
	lw	%r26 %r3 -8
	lw.s	%r26 %f1 -4
	lw	%r26 %r2 0
	addi	%r0 %r1 10
	out	%r1
	mfc1	%r1 %f0
	sw	%r26 %r3 -8
	sw.s	%r26 %f1 -4
	sw	%r26 %r2 0
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	print_int.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r3 -8
	lw.s	%r26 %f1 -4
	lw	%r26 %r2 0
	addi	%r0 %r1 10
	out	%r1
	sw.s	%r26 %f1 -4
	sw	%r26 %r2 0
	mov	%r3 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	print_int.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw.s	%r26 %f1 -4
	lw	%r26 %r2 0
	addi	%r0 %r1 10
	out	%r1
	mfc1	%r1 %f1
	sw	%r26 %r2 0
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	print_int.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r2 0
	addi	%r0 %r1 10
	out	%r1
return_point.1 :
	mov	%r2 %r1
program_end :
	add	%r0 %r0 %r0
	ret
print_int.0 :
	mov	%r1 %r2
branching_b.0 :
	addi	%r0 %r1 100
	div	%r2 %r1 %r4
	addi	%r0 %r1 100
	mul	%r4 %r1 %r1
	sub	%r2 %r1 %r1
	addi	%r0 %r5 10
	div	%r1 %r5 %r5
	addi	%r0 %r1 100
	mul	%r4 %r1 %r1
	sub	%r2 %r1 %r2
	addi	%r0 %r1 10
	mul	%r5 %r1 %r1
	sub	%r2 %r1 %r2
	addi	%r0 %r1 0
	bl	%r1 %r4 tail_b.0
	addi	%r0 %r1 0
	bl	%r1 %r5 tail_b.1
	addi	%r2 %r1 48
	out	%r1
	j	return_point.0
tail_b.1 :
	addi	%r5 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	return_point.0
tail_b.0 :
	addi	%r4 %r1 48
	out	%r1
	addi	%r5 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
return_point.0 :
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

