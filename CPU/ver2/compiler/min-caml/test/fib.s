#data_section
#text_section
program_start :
	addi	%r0 %r1 10
	sw	%r26 %r28 0
	addi	%r26 %r26 4
	jal	fib.0 
	addi	%r26 %r26 -4
	lw	%r26 %r28 0
	ret
fib.0 :
	addi	%r0 %r2 1
	bg	%r1 %r2 ble_else.0 
	retl
ble_else.0 :
	addi	%r0 %r2 1
	sub	%r1 %r2 %r2
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	fib.0 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r2 2
	lw	%r26 %r3 0
	sub	%r3 %r2 %r2
	sw	%r26 %r1 4
	mov	%r2 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	fib.0 
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	lw	%r26 %r2 4
	add	%r2 %r1 %r1
	retl
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
