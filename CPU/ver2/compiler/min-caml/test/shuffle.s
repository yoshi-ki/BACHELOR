#data_section
#text_section
program_start :
	addi	%r0 %r28 return_point.3
tail_b.5 :
	in	%r1
	in	%r30
	sw	%r26 %r30 0
	in	%r3
	in	%r5
	in	%r2
	in	%r2
	in	%r30
	sw	%r26 %r30 4
	in	%r2
	addi	%r0 %r2 1
	addi	%r0 %r30 2
	sw	%r26 %r30 8
	addi	%r0 %r7 3
	addi	%r0 %r4 4
	addi	%r0 %r30 5
	sw	%r26 %r30 12
	addi	%r0 %r6 6
	sw	%r26 %r5 28
	sw	%r26 %r3 24
	sw	%r26 %r1 20
	mov	%r7 %r3
	mov	%r2 %r1
	lw	%r26 %r5 12
	lw	%r26 %r2 8
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	bar.0
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	sw	%r26 %r1 16
	lw	%r26 %r5 28
	lw	%r26 %r3 24
	lw	%r26 %r1 20
	lw	%r26 %r30 0
	add	%r1 %r30 %r1
	add	%r1 %r3 %r1
	add	%r1 %r5 %r1
return_point.3 :
	add	%r0 %r0 %r0
	ret
print_int.0 :
	mov	%r1 %r2
branching_b.0 :
	addi	%r0 %r1 100
	div	%r2 %r1 %r5
	addi	%r0 %r1 100
	mul	%r5 %r1 %r1
	sub	%r2 %r1 %r4
	addi	%r0 %r1 10
	div	%r4 %r1 %r4
	addi	%r0 %r1 100
	mul	%r5 %r1 %r1
	sub	%r2 %r1 %r2
	addi	%r0 %r1 10
	mul	%r4 %r1 %r1
	sub	%r2 %r1 %r2
	addi	%r0 %r1 0
	bl	%r1 %r5 tail_b.0
	addi	%r0 %r1 0
	bl	%r1 %r4 tail_b.1
	addi	%r2 %r1 48
	out	%r1
	j	return_point.0
tail_b.1 :
	addi	%r4 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	return_point.0
tail_b.0 :
	addi	%r5 %r1 48
	out	%r1
	addi	%r4 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
return_point.0 :
	mov	%r3 %r1
	retl
foo.0 :
	sw	%r26 %r5 0
	mov	%r3 %r5
tail_b.3 :
	sw	%r26 %r3 20
	sw	%r26 %r6 16
	sw	%r26 %r4 12
	sw	%r26 %r5 8
	sw	%r26 %r2 4
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	print_int.0
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	lw	%r26 %r3 20
	lw	%r26 %r6 16
	lw	%r26 %r4 12
	lw	%r26 %r5 8
	lw	%r26 %r2 4
	sw	%r26 %r3 16
	sw	%r26 %r6 12
	sw	%r26 %r4 8
	sw	%r26 %r5 4
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	print_int.0
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r3 16
	lw	%r26 %r6 12
	lw	%r26 %r4 8
	lw	%r26 %r5 4
	sw	%r26 %r3 12
	sw	%r26 %r6 8
	sw	%r26 %r4 4
	mov	%r5 %r1
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	print_int.0
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r3 12
	lw	%r26 %r6 8
	lw	%r26 %r4 4
	sw	%r26 %r3 8
	sw	%r26 %r6 4
	mov	%r4 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	print_int.0
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r3 8
	lw	%r26 %r6 4
	sw	%r26 %r3 8
	sw	%r26 %r6 4
	lw	%r26 %r1 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	print_int.0
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r3 8
	lw	%r26 %r6 4
	mov	%r6 %r1
	j	print_int.0
bar.0 :
	sw	%r26 %r1 0
tail_b.4 :
	mov	%r2 %r1
	mov	%r6 %r31
	mov	%r3 %r6
	mov	%r4 %r3
	mov	%r5 %r4
	mov	%r31 %r5
	lw	%r26 %r2 0
	j	foo.0
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
