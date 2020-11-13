	.global itoa10
	.align 2

itoa10:
	li %r8, 16384
        mulld %r8, %r8, %r8
        mulli %r8,%r8, 4
        subi %r9, %r8, 1
        add %r8, %r8, %r9

	li %r9, 1
	cmpdi %r3, 0
	blt minus
	mr %r7, %r3
	b countloop
minus:
	li %r10, 1
	mulli %r3, %r3, -1
	addi %r9, %r9, 1
	mr %r7, %r3
	b countloop
countloop:
	li %r6, 10
        divd %r5, %r3, %r6
	cmpdi %r5, 0
	beq plus
	mr %r3, %r5
	addi %r9, %r9, 1
	b countloop
plus:
	mr %r3, %r7
	add %r8, %r4, %r9
	li %r5, 0
	stb %r5, 0(%r8)
	subi %r8, %r8, 1
	b plusloop
plusloop:
	li %r6, 10
	divd %r5, %r3, %r6
	cmpdi %r5, 0
	beq endloop
	mulli %r9, %r5, 10
	sub %r7, %r3, %r9
	li %r6, 24
        mulli %r6, %r6, 2
	add %r7,%r7, %r6
	stb %r7, 0(%r8)
	subi %r8,%r8, 1
	mr %r3, %r5
	b plusloop
endloop:
	mr %r7, %r3
	li %r6, 24
	mulli %r6, %r6, 2
        add %r7, %r7, %r6
        stb %r7, 0(%r8)
        subi %r8,%r8, 1
	cmpdi %r10, 1
	beq end
	mr %r3, %r4
	blr
end:
	li %r6, 22
	mulli %r6, %r6, 2
	addi %r6, %r6,1 
	mr %r7, %r6
	stb %r7, 0(%r8)
	mr %r3, %r4
	blr
	

