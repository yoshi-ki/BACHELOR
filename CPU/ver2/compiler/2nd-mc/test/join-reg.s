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
branching_b.2 :
	sw	%r26 %r5 0
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	f.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r5 0
	sw	%r26 %r5 -4
	sw	%r26 %r1 0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	g.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov	%r1 %r2
	lw	%r26 %r5 -4
	lw	%r26 %r1 0
	sw	%r26 %r5 -8
	sw	%r26 %r2 -4
	sw	%r26 %r1 0
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	h.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	mov	%r1 %r4
	lw	%r26 %r5 -8
	lw	%r26 %r2 -4
	lw	%r26 %r1 0
	addi	%r0 %r3 0
	beq	%r4 %r3 tail_b.6
	sub	%r2 %r1 %r3
	j	tail_b.8
tail_b.6 :
	sub	%r1 %r2 %r3
tail_b.8 :
	add	%r3 %r1 %r1
	add	%r1 %r2 %r1
	j	print_int.0
return_point.4 :
	mov	%r5 %r1
program_end :
	add	%r0 %r0 %r0
	ret
print_int.0 :
	mov	%r1 %r5
branching_b.0 :
	addi	%r0 %r1 100
	div	%r5 %r1 %r1
	addi	%r0 %r2 100
	mul	%r1 %r2 %r2
	sub	%r5 %r2 %r3
	addi	%r0 %r2 10
	div	%r3 %r2 %r2
	addi	%r0 %r3 100
	mul	%r1 %r3 %r3
	sub	%r5 %r3 %r5
	addi	%r0 %r3 10
	mul	%r2 %r3 %r3
	sub	%r5 %r3 %r5
	addi	%r0 %r3 0
	bl	%r3 %r1 tail_b.0
	addi	%r0 %r1 0
	bl	%r1 %r2 tail_b.1
	addi	%r5 %r1 48
	out	%r1
	j	return_point.0
tail_b.1 :
	addi	%r2 %r1 48
	out	%r1
	addi	%r5 %r1 48
	out	%r1
	j	return_point.0
tail_b.0 :
	addi	%r1 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	addi	%r5 %r1 48
	out	%r1
return_point.0 :
	mov	%r4 %r1
	retl
f.0 :
tail_b.3 :
	addi	%r0 %r1 123
return_point.1 :
	retl
g.0 :
tail_b.4 :
	addi	%r0 %r1 456
return_point.2 :
	retl
h.0 :
tail_b.5 :
	addi	%r0 %r1 789
return_point.3 :
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

