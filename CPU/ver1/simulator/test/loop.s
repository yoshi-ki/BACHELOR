#data_section
l.97 :	# 6.000000
	.long	0x40c00000
l.95 :	# 0.100000
	.long	0x3dcccccd
#text_section
program_start :
	addi	%r0 %r1 300
	addi	%r0 %r2 l.97 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_loop.46 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	ret
print_int.42 :
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
	addi	%r0 %r25 0
	bg	%r2 %r25 ble_else.105 
	addi	%r0 %r25 0
	bg	%r3 %r25 ble_else.106 
	addi	%r1 %r1 48
	out	%r1
	retl
ble_else.106 :
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	retl
ble_else.105 :
	addi	%r2 %r2 48
	out	%r2
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	retl
write_rgb_element.44 :
	mfc1	%r1 %f0
addi	%r0 %r25 255
	bg	%r1 %r25 ble_else.107 
	j	ble_cont.108 
ble_else.107 :
	addi	%r0 %r1 255
ble_cont.108 :
	j	print_int.42 
write_loop.46 :
	addi	%r0 %r25 -100
	bl	%r1 %r25 bge_else.109 
	mtc1	%r1 %f1
	addi	%r0 %r2 l.95 
	ilw.s	%r2 %f2 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r26 %f0 0
	sw	%r26 %r1 8
	mov.s	%f1 %f0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	write_rgb_element.44 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 10
	out	%r1
	lw	%r26 %r1 8
	addi	%r1 %r1 -1
	lw.s	%r26 %f0 0
	j	write_loop.46 
bge_else.109 :
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
