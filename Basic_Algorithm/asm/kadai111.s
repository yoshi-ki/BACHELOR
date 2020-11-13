	.global add128
	.align 2
add128:
	ld %r6, 0(%r3)
	ld %r7, 0(%r4)
	ld %r8, 0(%r5)
	adde %r8, %r6, %r7
	std %r8, 0(%r5)
	ld %r6, 8(%r3)
	ld %r7, 8(%r4)
	ld %r8, 8(%r5)
	adde %r8, %r6, %r7
	std %r8, 8(%r5)
	blr
