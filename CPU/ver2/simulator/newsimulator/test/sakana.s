#data_section
#text_section
program_start :
    addi %r0 %r1 10
    sw %r26 %r28 4
    addi %r26 %r26 8
    jal fib.9
    addi %r0 %r25 8
    sub %r26 %r25 %r26
    lw %r26 %r28 4
    ret
fib.9 :
    addi %r0 %r25 1
    bg %r1 %r25 ble_else.22
    retl
ble_else.22 :
    addi %r0 %r25 1
    sub %r1 %r25 %r2
    sw  %r26 %r1 0
    mov %r2 %r1
    sw  %r26 %r28 4
    addi %r26 %r26 8
    jal fib.9
    addi %r0 %r25 8
    sub %r26 %r25 %r26
    lw  %r26 %r28 4
    lw  %r26 %r2 0
    addi %r0 %r25 2
    sub %r2 %r25 %r2
    sw  %r26 %r1 4
    mov %r2 %r1
    sw  %r26 %r28 12
    addi %r26 %r26 16
    jal fib.9
    addi %r0 %r25 16
    sub %r26 %r25 %r26
    lw  %r26 %r28 12
    lw  %r26 %r2 4
    add %r2 %r1 %r1
    retl
  
