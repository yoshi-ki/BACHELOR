#data_section
l.302 :	# 0.000000
	.long	0x0
l.296 :	# 4.000000
	.long	0x40800000
l.290 :	# 100.000000
	.long	0x42c80000
l.288 :	# 2.000000
	.long	0x40000000
#text_section
program_start :
	addi	%r0 %r1 128
	addi	%r0 %r2 3
	addi	%r0 %r3 255
	sw	%r26 %r1 0
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r27 %r2
	addi	%r27 %r27 8
	addi	%r0 %r3 setup_vec.135 
	sw	%r2 %r3 0
	lw	%r26 %r3 0
	sw	%r2 %r3 4
	mov	%r27 %r24
	addi	%r27 %r27 16
	addi	%r0 %r4 setup_array.138 
	sw	%r24 %r4 0
	sw	%r24 %r2 8
	sw	%r24 %r3 4
	addi	%r0 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r27 %r24
	addi	%r27 %r27 8
	addi	%r0 %r1 loop0.142 
	sw	%r24 %r1 0
	lw	%r26 %r1 0
	sw	%r24 %r1 4
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r4 4
	mov	%r4 %r1
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r27 %r24
	addi	%r27 %r27 8
	addi	%r0 %r1 loop1.147 
	sw	%r24 %r1 0
	lw	%r26 %r1 0
	sw	%r24 %r1 4
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r4 4
	mov	%r4 %r1
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r27 %r24
	addi	%r27 %r27 8
	addi	%r0 %r1 loop2.154 
	sw	%r24 %r1 0
	lw	%r26 %r1 0
	sw	%r24 %r1 4
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r1 4
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	ret
print_int.123 :
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
	bg	%r2 %r25 ble_else.370 
	j	ble_cont.371 
ble_else.370 :
	addi	%r2 %r2 48
	out	%r2
ble_cont.371 :
addi	%r0 %r25 0
	bg	%r3 %r25 ble_else.372 
	j	ble_cont.373 
ble_else.372 :
	addi	%r3 %r2 48
	out	%r2
ble_cont.373 :
	addi	%r1 %r1 48
	out	%r1
	retl
diverge.125 :
	mul.s	%f0 %f0 %f4
	mul.s	%f1 %f1 %f5
	sub.s	%f5 %f4 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r3 l.288 
	ilw.s	%r3 %f5 0
	mul.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f3 %f0 %f1
	mul.s	%f4 %f4 %f0
	mul.s	%f1 %f1 %f5
	add.s	%f5 %f0 %f0
	addi	%r0 %r3 l.290 
	ilw.s	%r3 %f5 0
	fbg	%f0 %f5 fble_else.374 
	bg	%r2 %r1 ble_else.375 
	addi	%r0 %r1 0
	retl
ble_else.375 :
	addi	%r1 %r1 1
	mov.s	%f4 %f0
	j	diverge.125 
fble_else.374 :
	addi	%r0 %r1 1
	retl
setup_vec.135 :
	lw	%r24 %r3 4
	bg	%r3 %r2 ble_else.376 
	retl
ble_else.376 :
	addi	%r0 %r3 3
	addi	%r0 %r4 255
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw	%r26 %r2 8
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 4
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r2 %r2 1
	lw	%r26 %r24 0
	mov	%r4 %r1
	lw	%r24 %r23 0
	jr	%r23
setup_array.138 :
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	bg	%r4 %r2 ble_else.377 
	retl
ble_else.377 :
	addi	%r0 %r5 3
	addi	%r0 %r6 255
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw	%r26 %r2 8
	sw	%r26 %r3 12
	sw	%r26 %r4 16
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 0
	lw	%r26 %r24 12
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 4
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r2 %r2 1
	lw	%r26 %r24 0
	mov	%r4 %r1
	lw	%r24 %r23 0
	jr	%r23
loop0.142 :
	lw	%r24 %r4 4
	bg	%r4 %r2 ble_else.379 
	retl
ble_else.379 :
	bg	%r4 %r3 ble_else.381 
	addi	%r2 %r2 1
	addi	%r0 %r3 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.381 :
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	add	%r1 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 3
	addi	%r0 %r6 255
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r24 8
	sw	%r26 %r4 12
	sw	%r26 %r3 16
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 16
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 12
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r2 %r3 1
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
loop1.147 :
	lw	%r24 %r4 4
	bg	%r4 %r2 ble_else.382 
	retl
ble_else.382 :
	bg	%r4 %r3 ble_else.384 
	addi	%r2 %r2 1
	addi	%r0 %r3 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.384 :
	addi	%r0 %r5 l.296 
	ilw.s	%r5 %f0 0
	mtc1	%r4 %f1
	div.s	%f1 %f0 %f0
	mtc1	%r2 %f1
	mul.s	%f1 %f0 %f0
	addi	%r0 %r5 l.288 
	ilw.s	%r5 %f1 0
	sub.s	%f1 %f0 %f2
	addi	%r0 %r5 l.296 
	ilw.s	%r5 %f0 0
	mtc1	%r4 %f1
	div.s	%f1 %f0 %f0
	mtc1	%r3 %f1
	mul.s	%f1 %f0 %f0
	addi	%r0 %r4 l.288 
	ilw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f3
	addi	%r0 %r4 100
	addi	%r0 %r25 2
	sll	%r2 %r5 %r25
	add	%r1 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r6 l.302 
	ilw.s	%r6 %f0 0
	addi	%r0 %r6 l.302 
	ilw.s	%r6 %f1 0
	addi	%r0 %r6 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r24 8
	sw	%r26 %r5 12
	sw	%r26 %r3 16
	mov	%r4 %r2
	mov	%r6 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	diverge.125 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.385 
	j	be_cont.386 
be_else.385 :
	lw	%r26 %r1 16
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 0
	sw	%r2 %r3 0
	addi	%r0 %r3 0
	sw	%r2 %r3 4
	addi	%r0 %r3 0
	sw	%r2 %r3 8
be_cont.386 :
	lw	%r26 %r1 16
	addi	%r1 %r3 1
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
write_rgb.152 :
	lw	%r1 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.123 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw	%r1 %r2 4
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.123 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw	%r1 %r1 8
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.123 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 10
	out	%r1
	retl
loop2.154 :
	lw	%r24 %r4 4
	bg	%r4 %r2 ble_else.387 
	retl
ble_else.387 :
	bg	%r4 %r3 ble_else.389 
	addi	%r2 %r2 1
	addi	%r0 %r3 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.389 :
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	add	%r1 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r25 2
	sll	%r3 %r5 %r25
	add	%r4 %r5 %r25
	lw	%r25 %r4 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r24 8
	sw	%r26 %r3 12
	mov	%r4 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	write_rgb.152 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r1 %r3 1
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
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
	
