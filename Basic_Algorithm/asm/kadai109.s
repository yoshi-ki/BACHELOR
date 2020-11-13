	.global mystrlen
	.global mystrcat
	.align 2
mystrcat:
	mflr %r0
        std %r0, 16(%r1)
        stdu %r1, -128(%r1)

	std %r3, 96(%r1)
        std %r4, 104(%r1)
	
	bl mystrlen
	
	std %r3, 112(%r1)
	ld %r3, 96(%r1)
	ld %r4,104(%r1)
	ld %r5,112(%r1)


	std %r3, 96(%r1)
        std %r4, 104(%r1)
	std %r5, 112(%r1)
	mr %r3, %r4

	bl mystrlen

	std %r3, 120(%r1)
        ld %r3, 96(%r1)
        ld %r4,104(%r1)
        ld %r5,112(%r1)
	ld %r6,120(%r1)
	b prepare
prepare: 
	add %r7, %r3, %r5
	b wordadd
wordadd:
	cmpdi %r6, 0
	beq loopend
		
	lbz %r8, 0(%r4)
	stb %r8, 0(%r7)
	addi %r4,%r4, 1
	addi %r7,%r7, 1
	subi %r6,%r6, 1
	b wordadd
		 
loopend:	
	li %r8, 0
        stb %r8, 0(%r7)
        ld %r1, 0(%r1)
        ld %r0, 16(%r1)
        mtlr %r0
        blr	
mystrlen:
	mflr %r0
    	std %r0, 16(%r1)
    	stdu %r1, -128(%r1)

	lbz %r4,0(%r3)
	li %r5, 0
	cmpdi %r4, 0
	beq out
	addi %r5,%r5,1
	b loop	

loop:
	addi %r3,%r3,1
	lbz %r4,0(%r3)
	cmpdi %r4, 0
	beq out
	addi %r5,%r5,1
	b loop

out:
	mr %r3, %r5
	ld %r1, 0(%r1)
        ld %r0, 16(%r1)
        mtlr %r0
	blr
