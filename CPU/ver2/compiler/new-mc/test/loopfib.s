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
tail_b.3 :
	addi	%r0 %r1 20
	j	fib.0
return_point.2 :
program_end :
	add	%r0 %r0 %r0
	ret
loop.0 :
	mov	%r3 %r4
	mov	%r2 %r3
	mov	%r1 %r2
branching_b.0 :
	addi	%r0 %r1 0
	ble	%r2 %r1 tail_b.0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	add	%r3 %r4 %r3
	mov	%r4 %r2
	j	loop.0
tail_b.0 :
	mov	%r3 %r1
return_point.0 :
	retl
fib.0 :
tail_b.2 :
	addi	%r0 %r2 0
	addi	%r0 %r3 1
	j	loop.0
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
