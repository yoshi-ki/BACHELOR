	.global mywrite
	.align 2
mywrite:
	mflr %r0
        std %r0, 16(%r1)
        stdu %r1, -128(%r1)
	mr %r7, %r3
	li %r6, 0
	b count 

count:
        lbz %r5, 0(%r7)
        cmpdi %r5, 0
        beq step
	addi %r6, %r6, 1
	addi %r7, %r7, 1
        b count

step:
	bl syscall
	ld %r1, 0(%r1)
        ld %r0, 16(%r1)
        mtlr %r0
        blr

syscall:
	mflr %r0
        std %r0, 16(%r1)
        stdu %r1, -128(%r1)
	li %r0, 4
	mr %r4, %r3
	li %r3, 1
	mr %r5, %r6
	sc
	ld %r1, 0(%r1)
        ld %r0, 16(%r1)
        mtlr %r0
        blr
