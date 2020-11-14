#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
l.0 :	# 167680
	.int	0x28f00
#text_section
program_start :
	ilw	%r0 %r26 sp_init.0
	ilw	%r0 %r27 hp_init.0
	addi	%r0 %r28 program_end
main.0 :
branching_b.0 :
	addi	%r0 %r1 255
	ilw	%r0 %r2 l.0
	slli	%r2 %r4 -16
	addi	%r0 %r2 100
	mul	%r4 %r2 %r2
	sub	%r1 %r2 %r2
	addi	%r2 %r3 1
	addi	%r0 %r2 6553
	mul	%r3 %r2 %r2
	slli	%r2 %r3 -16
	addi	%r0 %r2 100
	mul	%r4 %r2 %r2
	sub	%r1 %r2 %r2
	addi	%r0 %r1 10
	mul	%r3 %r1 %r1
	sub	%r2 %r1 %r2
	addi	%r0 %r1 0
	bl	%r1 %r4 tail_b.0
branching_b.1 :
	addi	%r0 %r1 0
	bl	%r1 %r3 tail_b.1
tail_b.2 :
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
	addi	%r4 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
return_point.0 :
program_end :
	add	%r0 %r0 %r0
	ret
#libraries
min_caml_create_array :
	bl	%r1 %r0 program_end
	mov	%r1 %r30
	mov	%r1 %r31
	mov	%r27 %r1
create_array_loop :
	beq     %r31 %r0 create_array_ret
	sw	%r27 %r2 0
	addi 	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_array_loop
create_array_ret :
	retl
min_caml_create_float_array :
	bl	%r1 %r0 program_end
	mov	%r1 %r30
	mov	%r1 %r31
	mov	%r27 %r1
create_float_array_loop :
	beq	%r31 %r0 create_float_array_ret
	sw.s	%r27 %f0 0
	addi	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_float_array_loop
create_float_array_ret :
	retl
