#data_section
#text_section
program_start :
	addi	%r26 %r26 20
	addi	%r0 %r1 333
	addi	%r0 %r2 54
	addi 	%r0 %r3 11
	sw	%r26 %r1 -0
	sw	%r26 %r2 -8
	sw	%r26 %r3 -12
	lw	%r26 %r4 -0
	lw	%r26 %r5 -8
	lw	%r26 %r6 -12	
	ret
