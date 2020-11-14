#data_section
#text_section
program_start :
  addi  %r0 %r1 21600
  addi  %r0 %r2 337500
  sw  %r26 %r28 4
  addi  %r26 %r26 8
  jal gcd.6
  addi  %r0 %r25 8
  sub %r26 %r25 %r26
  lw  %r26 %r28 4
  ret
gcd.6 :
  addi  %r0 %r25 0
  bg  %r1 %r25 ble_else.15
  mov %r2 %r1
  retl
ble_else.15 :
  bg  %r1 %r2 ble_else.16
  sub %r2 %r1 %r2
  j gcd.6
ble_else.16 :
  sub %r1 %r2 %r1
  mov %r2 %r17
  mov %r1 %r2
  mov %r17 %r1
  j gcd.6
