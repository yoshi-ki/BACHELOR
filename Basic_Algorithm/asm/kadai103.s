	.file	"kadai103.c"
	.abiversion 2
	.section	".toc","aw"
	.section	".text"
	.section	.rodata
	.align 3
.LC0:
	.string	"%d + %d = %d\n"
	.section	".text"
	.align 2
	.globl main
	.type	main, @function
main:
0:	addis 2,12,.TOC.-0b@ha
	addi 2,2,.TOC.-0b@l
	.localentry	main,.-main
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	mr 31,1
	li 9,1
	stw 9,100(31)
	li 9,2
	stw 9,104(31)
	li 9,0
	stw 9,108(31)
	lwz 10,100(31)
	lwz 9,104(31)
	add 9,10,9
	stw 9,108(31)
	lwa 8,108(31)
	lwa 10,104(31)
	lwa 9,100(31)
	mr 6,8
	mr 5,10
	mr 4,9
	addis 3,2,.LC0@toc@ha
	addi 3,3,.LC0@toc@l
	bl printf
	nop
	li 9,0
	mr 3,9
	addi 1,31,128
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.size	main,.-main
	.ident	"GCC: (Ubuntu/IBM 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
