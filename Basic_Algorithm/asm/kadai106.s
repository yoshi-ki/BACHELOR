.global fib
.align 2

fib:
	cmpdi %r3, 0
	beq pat0
	cmpdi %r3, 1
	beq pat0
	cmpdi %r3, 2
	beq pat1
	li %r4, 1
        li %r5, 0
	mr %r6, %r3
	li %r3, 1
	b patelse

pat0: 
	blr
pat1:
	li %r3,1
	blr

patelse:	
	cmpdi %r6, 2
	beq out
	subi %r6,%r6, 1
	b calc
calc:
	mr %r5, %r4
	mr %r4, %r3
	add %r3, %r4, %r5
	b patelse

out:
	blr

	
