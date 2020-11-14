#data_section
#text_section
program_start:
	addi	%r0 %r1 100
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	loop.19
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	ret
fib.17:
	addi	%r0 %r25 2
	bl	%r1 %r25 bge_else.42
	addi	%r0 %r25 1
	sub	%r1 %r25 %r2
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	fib.17
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	addi	%r0 %r25 2
	sub	%r2 %r25 %r2
	sw	%r26 %r1 4
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fib.17
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	add	%r2 %r1 %r1
	retl
bge_else.42:
	addi	%r0 %r1 1
	retl
loop.19:
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.43
	retl
be_else.43:
	addi	%r0 %r2 30
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	fib.17
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_print_int
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_print_newline
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	addi	%r0 %r25 1
	sub	%r1 %r25 %r1
	j	loop.19
