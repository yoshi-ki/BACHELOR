#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
#text_section
program_start :
	ilw	%r0 %r26 sp_init.0
	ilw	%r0 %r27 hp_init.0
	addi	%r0 %r28 program_end
main.0 :
tail_b.5 :
	in	%r1
	in	%r2
	in	%r9
	in	%r7
	in	%r3
	in	%r3
	in	%r3
	in	%r3
	addi	%r0 %r6 1
	addi	%r0 %r3 2
	addi	%r0 %r10 3
	addi	%r0 %r4 4
	addi	%r0 %r5 5
	addi	%r0 %r8 6
	sw	%r26 %r7 -12
	sw	%r26 %r9 -8
	sw	%r26 %r2 -4
	sw	%r26 %r1 0
	mov	%r3 %r2
	mov	%r6 %r1
	mov	%r8 %r6
	mov	%r10 %r3
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	bar.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	mov	%r1 %r3
	lw	%r26 %r7 -12
	lw	%r26 %r9 -8
	lw	%r26 %r2 -4
	lw	%r26 %r1 0
	add	%r1 %r2 %r1
	add	%r1 %r9 %r1
	add	%r1 %r7 %r1
return_point.3 :
program_end :
	add	%r0 %r0 %r0
	ret
print_int.0 :
	mov	%r1 %r2
branching_b.0 :
	addi	%r0 %r1 100
	div	%r2 %r1 %r5
	addi	%r0 %r1 100
	mul	%r5 %r1 %r1
	sub	%r2 %r1 %r3
	addi	%r0 %r1 10
	div	%r3 %r1 %r3
	addi	%r0 %r1 100
	mul	%r5 %r1 %r1
	sub	%r2 %r1 %r2
	addi	%r0 %r1 10
	mul	%r3 %r1 %r1
	sub	%r2 %r1 %r2
	addi	%r0 %r1 0
	bl	%r1 %r5 tail_b.0
	addi	%r0 %r1 0
	bl	%r1 %r3 tail_b.1
	addi	%r2 %r1 48
	out	%r1
	j	return_point.0
tail_b.1 :
	addi	%r3 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	return_point.0
tail_b.0 :
	addi	%r5 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
return_point.0 :
	mov	%r4 %r1
	retl
foo.0 :
	mov	%r5 %r7
tail_b.3 :
	sw	%r26 %r5 -20
	sw	%r26 %r6 -16
	sw	%r26 %r7 -12
	sw	%r26 %r4 -8
	sw	%r26 %r3 -4
	sw	%r26 %r2 0
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	print_int.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r5 -20
	lw	%r26 %r6 -16
	lw	%r26 %r7 -12
	lw	%r26 %r4 -8
	lw	%r26 %r3 -4
	lw	%r26 %r2 0
	sw	%r26 %r5 -16
	sw	%r26 %r6 -12
	sw	%r26 %r7 -8
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	mov	%r2 %r1
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	print_int.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r5 -16
	lw	%r26 %r6 -12
	lw	%r26 %r7 -8
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	sw	%r26 %r5 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r3 %r1
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	print_int.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r5 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
	sw	%r26 %r5 -8
	sw	%r26 %r6 -4
	sw	%r26 %r7 0
	mov	%r4 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	print_int.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r5 -8
	lw	%r26 %r6 -4
	lw	%r26 %r7 0
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r7 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	print_int.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
	mov	%r6 %r1
	j	print_int.0
bar.0 :
	mov	%r1 %r7
tail_b.4 :
	mov	%r2 %r1
	mov	%r7 %r2
	mov	%r6 %r31
	mov	%r3 %r6
	mov	%r4 %r3
	mov	%r5 %r4
	mov	%r31 %r5
	j	foo.0
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

