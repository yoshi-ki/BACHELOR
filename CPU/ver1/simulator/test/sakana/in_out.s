#data_section
#text_section
program_start :
	in	%r1
	in	%r2
	add	%r1 %r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.24
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	ret
print_int.24 :
	addi	%r0 %r2 100
	div	%r1 %r2 %r2
	addi	%r0 %r3 100
	mul	%r2 %r3 %r3
	sub	%r1 %r3 %r3
	addi	%r0 %r4 10
	div	%r3 %r4 %r3
	addi	%r0 %r4 100
	mul	%r2 %r4 %r2
	sub	%r1 %r2 %r1
	addi	%r0 %r2 10
	mul	%r3 %r2 %r2
	sub	%r1 %r2 %r1
	addi	%r1 %r1 48
	out	%r1
	retl
