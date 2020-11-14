#data_section
l.0 :	# 2.000000
	.float	0x40000000
#text_section
program_start :
	addi	%r0 %r1 4
	addi	%r0 %r2 3
	addi	%r0 %r3 0
	addi	%r0 %r4 0
	mov	%r27 %r5
	addi	%r27 %r27 8
	sw	%r5 %r4 4
	sw	%r5 %r3 0
	mov	%r5 %r3
	sw	%r26 %r2 0
	mov	%r3 %r2
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	ilw.s	%r0 %f0 l.0
	lw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r2 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	mov	%r27 %r30
	addi	%r27 %r27 8
	addi	%r0 %r2 loop1.0
	sw	%r30 %r2 0
	lw	%r26 %r2 4
	sw	%r30 %r2 4
	mov	%r27 %r2
	addi	%r27 %r27 8
	addi	%r0 %r3 loop2.0
	sw	%r2 %r3 0
	sw	%r2 %r1 4
	addi	%r0 %r1 0
	addi	%r0 %r3 4
	sw	%r26 %r2 8
	mov	%r3 %r2
	sw	%r26 %r28 12
	lw	%r30 %r29 0
	addi	%r26 %r26 16
	jalr	%r29
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 0
	addi	%r0 %r2 3
	lw	%r26 %r30 8
	sw	%r26 %r28 12
	lw	%r30 %r29 0
	addi	%r26 %r26 16
	jalr	%r29
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	ret
loop1.0 :
	lw	%r30 %r3 4
	bne	%r1 %r2 beq_else.0 
	retl
beq_else.0 :
	slli	%r1 %r4 2
	add	%r3 %r4 %r31
	lw	%r31 %r3 0
	lw	%r3 %r4 4
	lw	%r3 %r3 0
	addi	%r0 %r5 100
	div	%r3 %r5 %r5
	addi	%r0 %r6 100
	mul	%r5 %r6 %r6
	sub	%r3 %r6 %r6
	addi	%r0 %r7 10
	div	%r6 %r7 %r6
	addi	%r0 %r7 100
	mul	%r5 %r7 %r7
	sub	%r3 %r7 %r3
	addi	%r0 %r7 10
	mul	%r6 %r7 %r7
	sub	%r3 %r7 %r3
	addi	%r0 %r7 0
	bge	%r7 %r5 bl_else.0 
	addi	%r5 %r5 48
	out	%r5
	addi	%r6 %r5 48
	out	%r5
	addi	%r3 %r3 48
	out	%r3
	j	bl_cont.0 
bl_else.0 :
	addi	%r0 %r5 0
	bge	%r5 %r6 bl_else.1 
	addi	%r6 %r5 48
	out	%r5
	addi	%r3 %r3 48
	out	%r3
	j	bl_cont.1 
bl_else.1 :
	addi	%r3 %r3 48
	out	%r3
bl_cont.1 :
bl_cont.0 :
	addi	%r0 %r3 32
	out	%r3
	addi	%r0 %r3 100
	div	%r4 %r3 %r3
	addi	%r0 %r5 100
	mul	%r3 %r5 %r5
	sub	%r4 %r5 %r5
	addi	%r0 %r6 10
	div	%r5 %r6 %r5
	addi	%r0 %r6 100
	mul	%r3 %r6 %r6
	sub	%r4 %r6 %r4
	addi	%r0 %r6 10
	mul	%r5 %r6 %r6
	sub	%r4 %r6 %r4
	addi	%r0 %r6 0
	bge	%r6 %r3 bl_else.2 
	addi	%r3 %r3 48
	out	%r3
	addi	%r5 %r3 48
	out	%r3
	addi	%r4 %r3 48
	out	%r3
	j	bl_cont.2 
bl_else.2 :
	addi	%r0 %r3 0
	bge	%r3 %r5 bl_else.3 
	addi	%r5 %r3 48
	out	%r3
	addi	%r4 %r3 48
	out	%r3
	j	bl_cont.3 
bl_else.3 :
	addi	%r4 %r3 48
	out	%r3
bl_cont.3 :
bl_cont.2 :
	addi	%r0 %r3 10
	out	%r3
	addi	%r1 %r1 1
	lw	%r30 %r29 0
	jr	%r29
loop2.0 :
	lw	%r30 %r3 4
	bne	%r1 %r2 beq_else.1 
	retl
beq_else.1 :
	slli	%r1 %r4 2
	add	%r3 %r4 %r31
	lw.s	%r31 %f0 0
	mfc1	%r3 %f0
	addi	%r0 %r4 100
	div	%r3 %r4 %r4
	addi	%r0 %r5 100
	mul	%r4 %r5 %r5
	sub	%r3 %r5 %r5
	addi	%r0 %r6 10
	div	%r5 %r6 %r5
	addi	%r0 %r6 100
	mul	%r4 %r6 %r6
	sub	%r3 %r6 %r3
	addi	%r0 %r6 10
	mul	%r5 %r6 %r6
	sub	%r3 %r6 %r3
	addi	%r0 %r6 0
	bge	%r6 %r4 bl_else.4 
	addi	%r4 %r4 48
	out	%r4
	addi	%r5 %r4 48
	out	%r4
	addi	%r3 %r3 48
	out	%r3
	j	bl_cont.4 
bl_else.4 :
	addi	%r0 %r4 0
	bge	%r4 %r5 bl_else.5 
	addi	%r5 %r4 48
	out	%r4
	addi	%r3 %r3 48
	out	%r3
	j	bl_cont.5 
bl_else.5 :
	addi	%r3 %r3 48
	out	%r3
bl_cont.5 :
bl_cont.4 :
	addi	%r0 %r3 10
	out	%r3
	addi	%r1 %r1 1
	lw	%r30 %r29 0
	jr	%r29
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
