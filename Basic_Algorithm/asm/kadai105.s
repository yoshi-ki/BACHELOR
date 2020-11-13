.global swap_gt
.align 2

swap_gt:
        lwz %r5,0(%r3)
        lwz %r6,0(%r4)

	li %r8, 16384
	mulld %r8, %r8, %r8
	mulli %r8,%r8, 4
	subi %r9, %r8, 1
	add %r8, %r8, %r9

	cmpd %r5, %r8
	bgt minus_p1
	cmpd %r6, %r8
	bgt minus_p2
        cmpd %r5,%r6
        bgt switch
        b out
minus_p1:
	cmpd %r6, %r8
	ble out
	cmpd %r5,%r6
	bgt switch
	b out 

minus_p2:
	b switch

switch:
        stw %r6, 0(%r3)
        stw %r5, 0(%r4)
        blr
out:
        stw %r5, 0(%r3)
        stw %r6, 0(%r4)
        blr
