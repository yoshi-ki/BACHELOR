.global mystrcmp
.align 3

mystrcmp:
	li %r7, 0
	lbz %r5,0(%r3)
        lbz %r6,0(%r4)
	b binary

binary:
	cmpd %r5, %r6
	bgt putplus
	blt putminus 
	beq eqloop

eqloop:
	addi %r3,%r3, 1
	addi %r4,%r4, 1
	lbz %r5,0(%r3)
        lbz %r6,0(%r4)
	cmpdi %r5, 0
	beq b1
	cmpdi %r6, 0
	beq putplus
	b binary
b1:
	cmpdi %r6, 0
	beq puteq
	b putminus
		
putplus:
	li %r3, 1
	blr
putminus:
	li %r3,-1
	blr
puteq:
	li %r3, 0
	blr
