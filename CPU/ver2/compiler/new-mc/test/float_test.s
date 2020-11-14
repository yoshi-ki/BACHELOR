#data_section
l.6:	# 9.460000
	.long	0x41175c29
#text_section
program_start:
	addi	%r0 %r1 l.6
	ilw.s	%r1 %r1 0
	ret
