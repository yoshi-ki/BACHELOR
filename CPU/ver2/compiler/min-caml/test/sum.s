#data_section
#text_section
program_start :
	addi	%r0 %r28 return_point.0
preloop_b.0 :
	in	%r2
	in	%r5
	addi	%r0 %r3 0
	sw	%r26 %r5 0
sum.1 :
	addi	%r0 %r1 0
	ble	%r5 %r1 tail_b.0
	addi	%r0 %r1 1
	sub	%r5 %r1 %r4
	mul	%r2 %r5 %r1
	add	%r1 %r3 %r1
	mov	%r4 %r5
	mov	%r1 %r3
	j	sum.1
tail_b.0 :
	mov	%r3 %r1
postloop_b.0 :
	lw	%r26 %r5 0
tail_b.2 :
	add	%r5 %r1 %r1
return_point.0 :
	add	%r0 %r0 %r0
	ret
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
