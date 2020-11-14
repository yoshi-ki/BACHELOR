#data_section
stack_init.0 :
	.int	0xffffff0
#text_section
program_start :
	ilw	%r0 %r26 stack_init.0
	mov	%r27 %r1
	addi	%r27 %r27 4
	addi	%r0 %r2 g.0
	sw	%r1 %r2 0
	mov	%r1 %r30
	addi	%r0 %r1 5
	sw	%r26 %r28 -0
	lw	%r30 %r29 0
	addi	%r26 %r26 -4
	jalr	%r29
	addi	%r26 %r26 4
	lw	%r26 %r28 -0
program_end :
	add	%r0 %r0 %r0
	ret
g.0 :
	addi	%r1 %r1 10
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

