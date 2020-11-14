program_start :
node_b.0 :
	in	%r1
	in	%r3
	in	%r5
f.1 :
	addi	%r0 %r2 0
	beq	%r5 %r2 tail_b.0
	addi	%r0 %r2 1
	beq	%r5 %r2 tail_b.1
	addi	%r0 %r2 2
	beq	%r5 %r2 tail_b.2
	addi	%r0 %r2 1
	sub	%r5 %r2 %r5
	j	f.1
tail_b.2 :
	out	%r3
	j	return_point
tail_b.1 :
	out	%r1
	j	return_point
tail_b.0 :
	j	return_point
return_point :
	mov	%r4 %r1
	ret
