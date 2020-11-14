#data_section
l.216 :	# 2.100000
	.long	0x40066666
l.213 :	# 0.000000
	.long	0x0
l.211 :	# 0.001000
	.long	0x3a83126f
l.208 :	# 1.000000
	.long	0x3f800000
#text_section
program_start :
	addi	%r0 %r1 l.216 
	ilw.s	%r1 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	atan.98 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mfc1	%r1 %f0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.96 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	ret
print_int.96 :
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
	bg	%r2 %r25 ble_else.224 
	j	ble_cont.225 
ble_else.224 :
	addi	%r2 %r2 48
	out	%r2
ble_cont.225 :
addi	%r0 %r25 0
	bg	%r3 %r25 ble_else.226 
	j	ble_cont.227 
ble_else.226 :
	addi	%r3 %r2 48
	out	%r2
ble_cont.227 :
	addi	%r1 %r1 48
	out	%r1
	retl
f.163 :
	addi	%r0 %r1 l.208 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.208 
	ilw.s	%r1 %f2 0
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	div.s	%f0 %f1 %f0
	retl
euler.165 :
	add.s	%f3 %f0 %f4
	fbg	%f4 %f2 fble_else.228 
	sw.s	%r26 %f2 0
	sw.s	%r26 %f0 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f3 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	f.163 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f3 24
	mul.s	%f0 %f3 %f0
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f1
	lw.s	%r26 %f0 8
	add.s	%f3 %f0 %f0
	lw.s	%r26 %f2 0
	j	euler.165 
fble_else.228 :
	mov.s	%f1 %f0
	retl
atan.98 :
	addi	%r0 %r1 l.211 
	ilw.s	%r1 %f3 0
	addi	%r0 %r1 l.213 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.213 
	ilw.s	%r1 %f2 0
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	j	euler.165 
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
	
