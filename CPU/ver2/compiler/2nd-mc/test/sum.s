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
tail_b.2 :
	in	%r1
	in	%r2
	addi	%r0 %r3 0
	sw	%r26 %r2 0
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	sum.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r2 0
	add	%r2 %r1 %r1
return_point.1 :
program_end :
	add	%r0 %r0 %r0
	ret
sum.0 :
	mov	%r2 %r5
	mov	%r1 %r2
preloop_b.0 :
sum_loop.0 :
	addi	%r0 %r1 0
	ble	%r5 %r1 tail_b.0
	addi	%r5 %r4 -1
	mul	%r2 %r5 %r1
	add	%r1 %r3 %r1
	mov	%r4 %r5
	mov	%r1 %r3
	j	sum_loop.0
tail_b.0 :
	mov	%r3 %r1
postloop_b.0 :
return_point.0 :
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

