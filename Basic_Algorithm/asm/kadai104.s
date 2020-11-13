.globl max_by_abs
.align 3

max_by_abs:
	std %r3, 96(%r1)
	std %r4, 88(%r1)

	# %r3<0 ->  binary action
	cmpdi %r3, 0
	blt minus
	cmpdi %r4, 0
	blt minus2
	b compare_two

minus:
	mulli %r3, %r3, -1
	cmpdi %r4, 0
	blt minus2
	b compare_two
	
minus2:
	mulli %r4, %r4, -1
	b compare_two

compare_two:
	cmpd %r3, %r4
	ble out1
	b out2

out1:
	ld %r3, 88(%r1)
	blr
out2:
	ld %r3, 96(%r1)
	blr


	
