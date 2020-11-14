#data_section
l.21 : # 2.100000
  .long 0x40066666
l.19 : # 1.100000
  .long 0x3f8ccccd
#text_section
program_start :
  addi  %r0 %r1 2
  addi  %r0 %r2 l.19
  ilw.s %r2 %f0 0
  addi  %r0 %r2 l.21
  ilw.s %r2 %f2 0
  sw  %r26 %r28 4
  addi  %r26 %r26 8
  jal f.8
  addi  %r0 %r25 8
  sub %r26 %r25 %r26
  lw  %r26 %r28 4
  ret
f.8 :
  addi  %r0 %r25 0
  bne %r1 %r25 be_else.24
  retl
be_else.24 :
  addi  %r0 %r25 1
  sub %r1 %r25 %r1
  add.s %f0 %f2 %f0
  mov.s %f2 %f30
  mov.s %f3 %f31
  mov.s %f0 %f2
  mov.s %f1 %f3
  mov.s %f30 %f0
  mov.s %f31 %f1
  j f.8
