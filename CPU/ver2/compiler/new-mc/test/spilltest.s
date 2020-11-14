entry_point.0 :
tail_b.0 :
	in	%r1
	in	%r2
	in	%r30
	sw	%r26 %r30 0
	in	%r4
	in	%r30
	sw	%r26 %r30 4
	in	%r30
	sw	%r26 %r30 8
	in	%r3
	lw	%r26 %r31 4
	add	%r1 %r31 %r30
	sw	%r26 %r30 12
	lw	%r26 %r30 0
	add	%r2 %r30 %r2
	lw	%r26 %r30 0
	add	%r30 %r4 %r1
	lw	%r26 %r31 8
	add	%r1 %r31 %r30
	sw	%r26 %r30 16
	lw	%r26 %r30 16
	add	%r30 %r3 %r1
	mul	%r2 %r1 %r1
	lw	%r26 %r31 12
	add	%r31 %r1 %r30
	sw	%r26 %r30 20
return_point.0 :
	lw	%r26 %r30 20
	mov	%r30 %r1
	ret
