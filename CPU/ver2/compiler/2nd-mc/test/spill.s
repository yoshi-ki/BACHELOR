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
	sw	%r26 %r3 0
	mov	%r4 %r15
	mov	%r2 %r9
	mov	%r1 %r18
tail_b.0 :
	add	%r18 %r9 %r3
	lw	%r26 %r30 0
	add	%r18 %r30 %r30
	sw	%r26 %r30 -4
	add	%r18 %r15 %r8
	lw	%r26 %r30 0
	add	%r9 %r30 %r30
	sw	%r26 %r30 -8
	add	%r9 %r15 %r16
	lw	%r26 %r30 0
	add	%r30 %r15 %r30
	sw	%r26 %r30 -12
	lw	%r26 %r30 -4
	add	%r3 %r30 %r12
	add	%r3 %r8 %r10
	lw	%r26 %r30 -8
	add	%r3 %r30 %r14
	add	%r3 %r16 %r24
	lw	%r26 %r30 -12
	add	%r3 %r30 %r30
	sw	%r26 %r30 -16
	lw	%r26 %r30 -4
	add	%r30 %r8 %r13
	lw	%r26 %r30 -4
	lw	%r26 %r31 -8
	add	%r30 %r31 %r21
	lw	%r26 %r30 -4
	add	%r30 %r16 %r30
	sw	%r26 %r30 -20
	lw	%r26 %r30 -4
	lw	%r26 %r31 -12
	add	%r30 %r31 %r30
	sw	%r26 %r30 -24
	lw	%r26 %r30 -8
	add	%r8 %r30 %r30
	sw	%r26 %r30 -28
	add	%r8 %r16 %r30
	sw	%r26 %r30 -32
	lw	%r26 %r30 -12
	add	%r8 %r30 %r5
	lw	%r26 %r30 -8
	add	%r30 %r16 %r11
	lw	%r26 %r30 -8
	lw	%r26 %r31 -12
	add	%r30 %r31 %r30
	sw	%r26 %r30 -36
	lw	%r26 %r30 -12
	add	%r16 %r30 %r22
	add	%r12 %r10 %r23
	add	%r12 %r14 %r6
	add	%r12 %r24 %r20
	lw	%r26 %r30 -16
	add	%r12 %r30 %r30
	sw	%r26 %r30 -40
	add	%r12 %r13 %r25
	add	%r12 %r21 %r1
	lw	%r26 %r30 -20
	add	%r12 %r30 %r7
	lw	%r26 %r30 -24
	add	%r12 %r30 %r4
	lw	%r26 %r30 -28
	add	%r12 %r30 %r30
	sw	%r26 %r30 -44
	lw	%r26 %r30 -32
	add	%r12 %r30 %r2
	add	%r12 %r5 %r30
	sw	%r26 %r30 -48
	add	%r12 %r11 %r17
	lw	%r26 %r30 -36
	add	%r12 %r30 %r19
	add	%r12 %r22 %r29
	add	%r18 %r9 %r9
	lw	%r26 %r30 0
	add	%r9 %r30 %r30
	sw	%r26 %r30 -52
	lw	%r26 %r30 -52
	add	%r30 %r15 %r9
	add	%r9 %r3 %r3
	lw	%r26 %r30 -4
	add	%r3 %r30 %r3
	add	%r3 %r8 %r3
	lw	%r26 %r30 -8
	add	%r3 %r30 %r3
	add	%r3 %r16 %r3
	lw	%r26 %r30 -12
	add	%r3 %r30 %r3
	add	%r3 %r12 %r3
	add	%r3 %r10 %r3
	add	%r3 %r14 %r30
	sw	%r26 %r30 -56
	lw	%r26 %r30 -56
	add	%r30 %r24 %r3
	lw	%r26 %r30 -16
	add	%r3 %r30 %r3
	add	%r3 %r13 %r3
	add	%r3 %r21 %r3
	lw	%r26 %r30 -20
	add	%r3 %r30 %r3
	lw	%r26 %r30 -24
	add	%r3 %r30 %r3
	lw	%r26 %r30 -28
	add	%r3 %r30 %r3
	lw	%r26 %r30 -32
	add	%r3 %r30 %r3
	add	%r3 %r5 %r3
	add	%r3 %r11 %r3
	lw	%r26 %r30 -36
	add	%r3 %r30 %r3
	add	%r3 %r22 %r3
	add	%r3 %r23 %r3
	add	%r3 %r6 %r3
	add	%r3 %r20 %r3
	lw	%r26 %r30 -40
	add	%r3 %r30 %r3
	add	%r3 %r25 %r3
	add	%r3 %r1 %r1
	add	%r1 %r7 %r1
	add	%r1 %r4 %r1
	lw	%r26 %r30 -44
	add	%r1 %r30 %r1
	add	%r1 %r2 %r1
	lw	%r26 %r30 -48
	add	%r1 %r30 %r1
	add	%r1 %r17 %r1
	add	%r1 %r19 %r1
	add	%r1 %r29 %r1
	sub	%r0 %r1 %r1
return_point.0 :
	retl
#libraries
min_caml_create_array :
	bl	%r1 %r0 program_end
	mov	%r1 %r31
	mov	%r27 %r1
create_array_loop :
	bne     %r31 %r0 create_array_cont
	retl
create_array_cont :
	sw	%r27 %r2 0
	addi 	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_array_loop
min_caml_create_float_array :
	bl	%r1 %r0 program_end	
	mov	%r1 %r31
	mov	%r27 %r1
create_float_array_loop :
	bne	%r31 %r0 create_float_array_cont
	retl
create_float_array_cont :
	sw.s	%r27 %f0 0
	addi	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_float_array_loop

