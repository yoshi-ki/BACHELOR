#data_section
#text_section
program_start :
	addi	%r0 %r28 return_point.1
tail_b.1 :
	addi	%r0 %r1 1
	addi	%r0 %r2 2
	addi	%r0 %r3 3
	addi	%r0 %r4 4
	sw	%r26 %r28 0
	addi	%r26 %r26 4
	jal	f.0
	addi	%r26 %r26 -4
	lw	%r26 %r28 0
	sub	%r0 %r1 %r1
return_point.1 :
	add	%r0 %r0 %r0
	ret
f.0 :
	sw	%r26 %r2 0
	mov	%r3 %r16
	mov	%r1 %r10
tail_b.0 :
	lw	%r26 %r30 0
	add	%r10 %r30 %r30
	sw	%r26 %r30 4
	add	%r10 %r16 %r9
	add	%r10 %r4 %r30
	sw	%r26 %r30 8
	lw	%r26 %r30 0
	add	%r30 %r16 %r17
	lw	%r26 %r30 0
	add	%r30 %r4 %r30
	sw	%r26 %r30 12
	add	%r16 %r4 %r13
	lw	%r26 %r30 4
	add	%r30 %r9 %r11
	lw	%r26 %r30 4
	lw	%r26 %r31 8
	add	%r30 %r31 %r15
	lw	%r26 %r30 4
	add	%r30 %r17 %r24
	lw	%r26 %r30 4
	lw	%r26 %r31 12
	add	%r30 %r31 %r30
	sw	%r26 %r30 16
	lw	%r26 %r30 4
	add	%r30 %r13 %r14
	lw	%r26 %r30 8
	add	%r9 %r30 %r21
	add	%r9 %r17 %r30
	sw	%r26 %r30 20
	lw	%r26 %r30 12
	add	%r9 %r30 %r30
	sw	%r26 %r30 24
	add	%r9 %r13 %r30
	sw	%r26 %r30 28
	lw	%r26 %r30 8
	add	%r30 %r17 %r30
	sw	%r26 %r30 32
	lw	%r26 %r30 8
	lw	%r26 %r31 12
	add	%r30 %r31 %r6
	lw	%r26 %r30 8
	add	%r30 %r13 %r12
	lw	%r26 %r30 12
	add	%r17 %r30 %r30
	sw	%r26 %r30 36
	add	%r17 %r13 %r22
	lw	%r26 %r30 12
	add	%r30 %r13 %r23
	add	%r11 %r15 %r7
	add	%r11 %r24 %r20
	lw	%r26 %r30 16
	add	%r11 %r30 %r30
	sw	%r26 %r30 40
	add	%r11 %r14 %r25
	add	%r11 %r21 %r1
	lw	%r26 %r30 20
	add	%r11 %r30 %r8
	lw	%r26 %r30 24
	add	%r11 %r30 %r5
	lw	%r26 %r30 28
	add	%r11 %r30 %r30
	sw	%r26 %r30 44
	lw	%r26 %r30 32
	add	%r11 %r30 %r2
	add	%r11 %r6 %r30
	sw	%r26 %r30 48
	add	%r11 %r12 %r18
	lw	%r26 %r30 36
	add	%r11 %r30 %r19
	add	%r11 %r22 %r29
	add	%r11 %r23 %r3
	lw	%r26 %r30 0
	add	%r10 %r30 %r30
	sw	%r26 %r30 52
	lw	%r26 %r30 52
	add	%r30 %r16 %r10
	add	%r10 %r4 %r4
	lw	%r26 %r30 4
	add	%r4 %r30 %r4
	add	%r4 %r9 %r4
	lw	%r26 %r30 8
	add	%r4 %r30 %r4
	add	%r4 %r17 %r4
	lw	%r26 %r30 12
	add	%r4 %r30 %r4
	add	%r4 %r13 %r4
	add	%r4 %r11 %r4
	add	%r4 %r15 %r30
	sw	%r26 %r30 56
	lw	%r26 %r30 56
	add	%r30 %r24 %r4
	lw	%r26 %r30 16
	add	%r4 %r30 %r4
	add	%r4 %r14 %r4
	add	%r4 %r21 %r4
	lw	%r26 %r30 20
	add	%r4 %r30 %r4
	lw	%r26 %r30 24
	add	%r4 %r30 %r4
	lw	%r26 %r30 28
	add	%r4 %r30 %r4
	lw	%r26 %r30 32
	add	%r4 %r30 %r4
	add	%r4 %r6 %r4
	add	%r4 %r12 %r4
	lw	%r26 %r30 36
	add	%r4 %r30 %r4
	add	%r4 %r22 %r4
	add	%r4 %r23 %r4
	add	%r4 %r7 %r4
	add	%r4 %r20 %r4
	lw	%r26 %r30 40
	add	%r4 %r30 %r4
	add	%r4 %r25 %r4
	add	%r4 %r1 %r1
	add	%r1 %r8 %r1
	add	%r1 %r5 %r1
	lw	%r26 %r30 44
	add	%r1 %r30 %r1
	add	%r1 %r2 %r1
	lw	%r26 %r30 48
	add	%r1 %r30 %r1
	add	%r1 %r18 %r1
	add	%r1 %r19 %r1
	add	%r1 %r29 %r1
	add	%r1 %r3 %r1
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
