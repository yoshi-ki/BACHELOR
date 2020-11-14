#data_section
l.123 :	# 30000.300000
	.long	0x46ea609a
l.121 :	# 278.900000
	.long	0x438b7333
l.119 :	# 3.140000
	.long	0x4048f5c3
l.117 :	# 24.600000
	.long	0x41c4cccd
#text_section
program_start :
	addi	%r0 %r1 l.117 
	ilw.s	%r1 %f0 0
	addi	%r0 %r1 l.119 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.121 
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.123 
	ilw.s	%r1 %f3 0
	addi	%r0 %r1 0
	sw.s	%r26 %f3 0
	sw.s	%r26 %f0 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f2 24
	mov.s	%f2 %f1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	calc.54 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 1
	lw.s	%r26 %f0 24
	lw.s	%r26 %f1 16
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	calc.54 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 2
	lw.s	%r26 %f0 8
	lw.s	%r26 %f1 16
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	calc.54 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 3
	lw.s	%r26 %f0 0
	lw.s	%r26 %f1 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	calc.54 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 15
	lw.s	%r26 %f0 24
	mov.s	%f0 %f1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	calc.54 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	ret
print_int.52 :
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
	bg	%r2 %r25 ble_else.157 
	j	ble_cont.158 
ble_else.157 :
	addi	%r2 %r2 48
	out	%r2
ble_cont.158 :
addi	%r0 %r25 0
	bg	%r3 %r25 ble_else.159 
	j	ble_cont.160 
ble_else.159 :
	addi	%r3 %r2 48
	out	%r2
ble_cont.160 :
	addi	%r1 %r1 48
	out	%r1
	retl
calc.54 :
	sw.s	%r26 %f1 0
	sw.s	%r26 %f0 8
	sw	%r26 %r1 16
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.161 
	add.s	%f0 %f1 %f2
	mfc1	%r2 %f2
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	print_int.52 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	be_cont.162 
be_else.161 :
be_cont.162 :
	lw	%r26 %r1 16
addi	%r0 %r25 1
	bne	%r1 %r25 be_else.163 
	lw.s	%r26 %f0 0
	lw.s	%r26 %f1 8
	sub.s	%f1 %f0 %f2
	mfc1	%r2 %f2
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	print_int.52 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	be_cont.164 
be_else.163 :
be_cont.164 :
	lw	%r26 %r1 16
addi	%r0 %r25 2
	bne	%r1 %r25 be_else.165 
	lw.s	%r26 %f0 0
	lw.s	%r26 %f1 8
	mul.s	%f1 %f0 %f2
	mfc1	%r2 %f2
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	print_int.52 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	be_cont.166 
be_else.165 :
be_cont.166 :
	lw	%r26 %r1 16
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.167 
	lw.s	%r26 %f0 0
	lw.s	%r26 %f1 8
	div.s	%f1 %f0 %f0
	mfc1	%r2 %f0
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	print_int.52 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	be_cont.168 
be_else.167 :
be_cont.168 :
	lw	%r26 %r1 16
addi	%r0 %r25 3
	bg	%r1 %r25 ble_else.169 
	j	ble_cont.170 
ble_else.169 :
	mtc1	%r1 %f0
	lw.s	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	mfc1	%r1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	print_int.52
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
ble_cont.170 :
	addi	%r0 %r1 0
	j	print_int.52 
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
	
