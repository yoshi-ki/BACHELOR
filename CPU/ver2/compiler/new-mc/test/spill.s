#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
#text_section
program_start :
	ilw	%r0 %r26 sp_init.0
	ilw	%r0 %r27 hp_init.0
	ilw	%r0 %r28 program_end
main.0 :
tail_b.1 :
	addi	%r0 %r1 1
	addi	%r0 %r2 2
	addi	%r0 %r3 3
	addi	%r0 %r4 4
	sw	%r26 %r28 0
	addi	%r26 %r26 -4
	jal	f.0
	addi	%r26 %r26 4
	lw	%r26 %r28 0
	sub	%r0 %r1 %r1
return_point.1 :
program_end :
	add	%r0 %r0 %r0
	ret
f.0 :
	sw	%r26 %r4 -12
	sw	%r26 %r3 -8
	sw	%r26 %r2 -4
	sw	%r26 %r1 0
tail_b.0 :
	lw	%r26 %r30 0
	lw	%r26 %r31 -4
	add	%r30 %r31 %r3
	lw	%r26 %r30 0
	lw	%r26 %r31 -8
	add	%r30 %r31 %r30
	sw	%r26 %r30 -16
	lw	%r26 %r30 0
	lw	%r26 %r31 -12
	add	%r30 %r31 %r30
	sw	%r26 %r30 -20
	lw	%r26 %r30 -4
	lw	%r26 %r31 -8
	add	%r30 %r31 %r30
	sw	%r26 %r30 -24
	lw	%r26 %r30 -4
	lw	%r26 %r31 -12
	add	%r30 %r31 %r30
	sw	%r26 %r30 -28
	lw	%r26 %r30 -8
	lw	%r26 %r31 -12
	add	%r30 %r31 %r30
	sw	%r26 %r30 -32
	lw	%r26 %r30 -16
	add	%r3 %r30 %r30
	sw	%r26 %r30 -36
	lw	%r26 %r30 -20
	add	%r3 %r30 %r30
	sw	%r26 %r30 -40
	lw	%r26 %r30 -24
	add	%r3 %r30 %r30
	sw	%r26 %r30 -44
	lw	%r26 %r30 -28
	add	%r3 %r30 %r30
	sw	%r26 %r30 -48
	lw	%r26 %r30 -32
	add	%r3 %r30 %r30
	sw	%r26 %r30 -52
	lw	%r26 %r30 -16
	lw	%r26 %r31 -20
	add	%r30 %r31 %r30
	sw	%r26 %r30 -56
	lw	%r26 %r30 -16
	lw	%r26 %r31 -24
	add	%r30 %r31 %r30
	sw	%r26 %r30 -60
	lw	%r26 %r30 -16
	lw	%r26 %r31 -28
	add	%r30 %r31 %r30
	sw	%r26 %r30 -64
	lw	%r26 %r30 -16
	lw	%r26 %r31 -32
	add	%r30 %r31 %r30
	sw	%r26 %r30 -68
	lw	%r26 %r30 -20
	lw	%r26 %r31 -24
	add	%r30 %r31 %r30
	sw	%r26 %r30 -72
	lw	%r26 %r30 -20
	lw	%r26 %r31 -28
	add	%r30 %r31 %r30
	sw	%r26 %r30 -76
	lw	%r26 %r30 -20
	lw	%r26 %r31 -32
	add	%r30 %r31 %r6
	lw	%r26 %r30 -24
	lw	%r26 %r31 -28
	add	%r30 %r31 %r30
	sw	%r26 %r30 -80
	lw	%r26 %r30 -24
	lw	%r26 %r31 -32
	add	%r30 %r31 %r30
	sw	%r26 %r30 -84
	lw	%r26 %r30 -28
	lw	%r26 %r31 -32
	add	%r30 %r31 %r30
	sw	%r26 %r30 -88
	lw	%r26 %r30 -36
	lw	%r26 %r31 -40
	add	%r30 %r31 %r30
	sw	%r26 %r30 -92
	lw	%r26 %r30 -36
	lw	%r26 %r31 -44
	add	%r30 %r31 %r7
	lw	%r26 %r30 -36
	lw	%r26 %r31 -48
	add	%r30 %r31 %r30
	sw	%r26 %r30 -96
	lw	%r26 %r30 -36
	lw	%r26 %r31 -52
	add	%r30 %r31 %r30
	sw	%r26 %r30 -100
	lw	%r26 %r30 -36
	lw	%r26 %r31 -56
	add	%r30 %r31 %r30
	sw	%r26 %r30 -104
	lw	%r26 %r30 -36
	lw	%r26 %r31 -60
	add	%r30 %r31 %r1
	lw	%r26 %r30 -36
	lw	%r26 %r31 -64
	add	%r30 %r31 %r30
	sw	%r26 %r30 -108
	lw	%r26 %r30 -36
	lw	%r26 %r31 -68
	add	%r30 %r31 %r5
	lw	%r26 %r30 -36
	lw	%r26 %r31 -72
	add	%r30 %r31 %r30
	sw	%r26 %r30 -112
	lw	%r26 %r30 -36
	lw	%r26 %r31 -76
	add	%r30 %r31 %r2
	lw	%r26 %r30 -36
	add	%r30 %r6 %r30
	sw	%r26 %r30 -116
	lw	%r26 %r30 -36
	lw	%r26 %r31 -80
	add	%r30 %r31 %r30
	sw	%r26 %r30 -120
	lw	%r26 %r30 -36
	lw	%r26 %r31 -84
	add	%r30 %r31 %r30
	sw	%r26 %r30 -124
	lw	%r26 %r30 -36
	lw	%r26 %r31 -88
	add	%r30 %r31 %r30
	sw	%r26 %r30 -128
	lw	%r26 %r30 0
	lw	%r26 %r31 -4
	add	%r30 %r31 %r4
	lw	%r26 %r30 -8
	add	%r4 %r30 %r30
	sw	%r26 %r30 -132
	lw	%r26 %r30 -132
	lw	%r26 %r31 -12
	add	%r30 %r31 %r30
	sw	%r26 %r30 -136
	lw	%r26 %r30 -136
	add	%r30 %r3 %r30
	sw	%r26 %r30 -140
	lw	%r26 %r30 -140
	lw	%r26 %r31 -16
	add	%r30 %r31 %r30
	sw	%r26 %r30 -144
	lw	%r26 %r30 -144
	lw	%r26 %r31 -20
	add	%r30 %r31 %r30
	sw	%r26 %r30 -148
	lw	%r26 %r30 -148
	lw	%r26 %r31 -24
	add	%r30 %r31 %r30
	sw	%r26 %r30 -152
	lw	%r26 %r30 -152
	lw	%r26 %r31 -28
	add	%r30 %r31 %r30
	sw	%r26 %r30 -156
	lw	%r26 %r30 -156
	lw	%r26 %r31 -32
	add	%r30 %r31 %r3
	lw	%r26 %r30 -36
	add	%r3 %r30 %r30
	sw	%r26 %r30 -160
	lw	%r26 %r30 -160
	lw	%r26 %r31 -40
	add	%r30 %r31 %r3
	lw	%r26 %r30 -44
	add	%r3 %r30 %r30
	sw	%r26 %r30 -164
	lw	%r26 %r30 -164
	lw	%r26 %r31 -48
	add	%r30 %r31 %r30
	sw	%r26 %r30 -168
	lw	%r26 %r30 -168
	lw	%r26 %r31 -52
	add	%r30 %r31 %r3
	lw	%r26 %r30 -56
	add	%r3 %r30 %r30
	sw	%r26 %r30 -172
	lw	%r26 %r30 -172
	lw	%r26 %r31 -60
	add	%r30 %r31 %r30
	sw	%r26 %r30 -176
	lw	%r26 %r30 -176
	lw	%r26 %r31 -64
	add	%r30 %r31 %r30
	sw	%r26 %r30 -180
	lw	%r26 %r30 -180
	lw	%r26 %r31 -68
	add	%r30 %r31 %r30
	sw	%r26 %r30 -184
	lw	%r26 %r30 -184
	lw	%r26 %r31 -72
	add	%r30 %r31 %r3
	lw	%r26 %r30 -76
	add	%r3 %r30 %r30
	sw	%r26 %r30 -188
	lw	%r26 %r30 -188
	add	%r30 %r6 %r30
	sw	%r26 %r30 -192
	lw	%r26 %r30 -192
	lw	%r26 %r31 -80
	add	%r30 %r31 %r3
	lw	%r26 %r30 -84
	add	%r3 %r30 %r3
	lw	%r26 %r30 -88
	add	%r3 %r30 %r3
	lw	%r26 %r30 -92
	add	%r3 %r30 %r3
	add	%r3 %r7 %r30
	sw	%r26 %r30 -196
	lw	%r26 %r30 -196
	lw	%r26 %r31 -96
	add	%r30 %r31 %r3
	lw	%r26 %r30 -100
	add	%r3 %r30 %r30
	sw	%r26 %r30 -200
	lw	%r26 %r30 -200
	lw	%r26 %r31 -104
	add	%r30 %r31 %r3
	add	%r3 %r1 %r1
	lw	%r26 %r30 -108
	add	%r1 %r30 %r1
	add	%r1 %r5 %r1
	lw	%r26 %r30 -112
	add	%r1 %r30 %r1
	add	%r1 %r2 %r1
	lw	%r26 %r30 -116
	add	%r1 %r30 %r1
	lw	%r26 %r30 -120
	add	%r1 %r30 %r1
	lw	%r26 %r30 -124
	add	%r1 %r30 %r1
	lw	%r26 %r30 -128
	add	%r1 %r30 %r1
	sub	%r0 %r1 %r1
return_point.0 :
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
