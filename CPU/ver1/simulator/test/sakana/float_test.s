#data_section
l.3 : # 5.300000
  .long 0x40a9999a
#text_section
program_start :
  addi  %r0 %r1 l.3
  ilw.s %r1 %r1 0
  ret
