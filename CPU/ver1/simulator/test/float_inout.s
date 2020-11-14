#data_section
l.55 :	# 2.200000
	.long	0x400ccccd
#text_section
program_start :
	fin	%f0
	addi	%r0 %r1 l.55 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	mfc1	%r1 %f0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.23 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	ret
print_int.23 :
	addi	%r0 %r2 100
	div	%r1 %r2 %r2
	addi	%r0 %r3 100
	mul	%r2 %r3 %r3
	sub	%r1 %r3 %r3
	addi	%r0 %r4 10
	div	%r3 %r4 %r3
	addi	%r0 %r4 100
	mul	%r2 %r4 %r4
	sub	%r1 %r4 %r1
	addi	%r0 %r4 10
	mul	%r3 %r4 %r4
	sub	%r1 %r4 %r1
	sw	%r26 %r1 0
	sw	%r26 %r3 4
addi	%r0 %r25 0
	bg	%r2 %r25 ble_else.63 
	j	ble_cont.64 
ble_else.63 :
	addi	%r2 %r2 48
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_print_char
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
ble_cont.64 :
	lw	%r26 %r1 4
addi	%r0 %r25 0
	bg	%r1 %r25 ble_else.65 
	j	ble_cont.66 
ble_else.65 :
	addi	%r1 %r1 48
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_print_char
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
ble_cont.66 :
	lw	%r26 %r1 0
	addi	%r1 %r1 48
	j	min_caml_print_char
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
min_caml_print_char :
  out %r1
  retl

