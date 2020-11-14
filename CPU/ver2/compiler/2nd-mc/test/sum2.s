#data_section
#text_section
program_start :
	addi	%r0 %r28 return_point.0
preloop_b.0 :
	in	%r1
	in	%r3
	addi	%r0 %r2 0
	sw	%r26 %r3 0
sum.1 :
	addi	%r0 %r30 0
	sw	%r26 %r30 4
	lw	%r26 %r30 4
	ble	%r3 %r30 tail_b.0
	addi	%r0 %r30 1
	sw	%r26 %r30 8
	lw	%r26 %r30 8
	sub	%r3 %r30 %r3
	add	%r1 %r2 %r2
	j	sum.1
tail_b.0 :
	mov	%r2 %r1
postloop_b.0 :
	lw	%r26 %r3 0
tail_b.2 :
	add	%r3 %r1 %r30
	sw	%r26 %r30 4
return_point.0 :
	lw	%r26 %r1 4
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
