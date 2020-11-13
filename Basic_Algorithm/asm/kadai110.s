	.global fact
	.align 2
fact:
	cmpdi %r3, 0
        beq out

	mflr %r0
	std %r0, 16(%r1)
	stdu %r1, -128(%r1)


	std %r3, 96(%r1)
	subi %r3, %r3,1
	
	bl fact
	
	ld %r4, 96(%r1)
	mulld %r3, %r3, %r4
	ld %r1, 0(%r1)
	ld %r0, 16(%r1)
	mtlr %r0
	blr

out:
	li %r3, 1
	blr
