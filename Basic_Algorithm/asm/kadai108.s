	.global maxof3
	.align 2
maxof3:
	mflr %r0
        std %r0, 16(%r1)
        stdu %r1,-128(%r1)

	std %r3, 96(%r1)
	std %r4,100(%r1)
	std %r5,104(%r1)
	bl maxof2
	nop	
	
	ld %r4, 104(%r1)
	
	bl maxof2
        nop	

	addi %r1, %r1, 128
        ld %r0, 16(%r1)
        mtlr %r0
	blr
 
