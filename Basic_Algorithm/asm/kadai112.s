	.global dot
	.align 2
dot:
	fmr %f1, 0
	b loop
loop:
	cmpdi %r3, 0
	beq endloop
	lfd %f2, 0(%r4)
	lfd %f3, 0(%r5)
	fmul %f2, %f2, %f3
	fadd %f1, %f1, %f2
	subi %r3, %r3, 1
	addi %r4, %r4, 8
	addi %r5, %r5, 8
	b loop
endloop:
	blr 
