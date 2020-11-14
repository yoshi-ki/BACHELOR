#data_section
l.22035 :	# -200.000000
	.long	0xc3480000
l.22032 :	# 200.000000
	.long	0x43480000
l.21880 :	# 128.000000
	.long	0x43000000
l.21800 :	# 0.900000
	.long	0x3f666666
l.21798 :	# 0.200000
	.long	0x3e4ccccd
l.21315 :	# 150.000000
	.long	0x43160000
l.21156 :	# -150.000000
	.long	0xc3160000
l.21118 :	# 0.100000
	.long	0x3dcccccd
l.21062 :	# -2.000000
	.long	0xc0000000
l.21047 :	# 0.003906
	.long	0x3b800000
l.21013 :	# 20.000000
	.long	0x41a00000
l.21011 :	# 0.050000
	.long	0x3d4ccccd
l.21002 :	# 0.250000
	.long	0x3e800000
l.20993 :	# 10.000000
	.long	0x41200000
l.20986 :	# 0.300000
	.long	0x3e99999a
l.20984 :	# 255.000000
	.long	0x437f0000
l.20978 :	# 0.150000
	.long	0x3e19999a
l.20964 :	# 3.141593
	.long	0x40490fdb
l.20962 :	# 30.000000
	.long	0x41f00000
l.20958 :	# 0.001000
	.long	0x3a83126f
l.20955 :	# 15.000000
	.long	0x41700000
l.20953 :	# 0.000100
	.long	0x38d1b717
l.20832 :	# 100000000.000000
	.long	0x4cbebc20
l.20826 :	# 1000000000.000000
	.long	0x4e6e6b28
l.20495 :	# -0.100000
	.long	0xbdcccccd
l.20417 :	# 0.010000
	.long	0x3c23d70a
l.20415 :	# -0.200000
	.long	0xbe4ccccd
l.20187 :	# 2.000000
	.long	0x40000000
l.20139 :	# -1.000000
	.long	0xbf800000
l.20113 :	# 0.017453
	.long	0x3c8efa35
l.20095 :	# 0.000000
	.long	0x0
l.20091 :	# 0.500000
	.long	0x3f000000
l.20088 :	# 0.041667
	.long	0x3d2aaaab
l.20085 :	# 0.001389
	.long	0x3ab60b61
l.20082 :	# 0.000025
	.long	0x37d00d01
l.20079 :	# -0.000000
	.long	0xb493f27e
l.20074 :	# 0.166667
	.long	0x3e2aaaab
l.20071 :	# 0.008333
	.long	0x3c088889
l.20068 :	# 0.000198
	.long	0x39500d01
l.20065 :	# 0.000003
	.long	0x3638ef1d
l.20063 :	# 1.000000
	.long	0x3f800000
l.20061 :	# -0.000000
	.long	0xb2d7322b
l.20059 :	# -3.141593
	.long	0xc0490fdc
l.20057 :	# 3.141593
	.long	0x40490fdc
#text_section
program_start :
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r2 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r2 60
	addi	%r0 %r3 0
	addi	%r0 %r4 0
	addi	%r0 %r5 0
	addi	%r0 %r6 0
	addi	%r0 %r7 0
	mov	%r27 %r8
	addi	%r27 %r27 48
	sw	%r8 %r1 40
	sw	%r8 %r1 36
	sw	%r8 %r1 32
	sw	%r8 %r1 28
	sw	%r8 %r7 24
	sw	%r8 %r1 20
	sw	%r8 %r1 16
	sw	%r8 %r6 12
	sw	%r8 %r5 8
	sw	%r8 %r4 4
	sw	%r8 %r3 0
	mov	%r8 %r1
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 4
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 1
	addi	%r0 %r3 l.20984
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 50
	addi	%r0 %r3 1
	addi	%r0 %r4 -1
	sw	%r26 %r1 20
	sw	%r26 %r2 24
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 1
	addi	%r0 %r3 1
	lw	%r1 %r4 0
	sw	%r26 %r1 28
	sw	%r26 %r2 32
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r1 32
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 1
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 36
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 40
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 1
	addi	%r0 %r3 l.20826
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 44
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 48
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 52
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_array
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 60
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 64
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 68
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 72
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_array
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 76
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 1
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 80
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_float_array
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 84
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 88
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 92
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 96
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 100
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 104
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 108
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 112
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r2 0
	mov	%r27 %r3
	addi	%r27 %r27 8
	sw	%r3 %r1 4
	lw	%r26 %r1 112
	sw	%r3 %r1 0
	mov	%r3 %r1
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r2 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 116
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 120
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 60
	lw	%r26 %r3 120
	sw	%r26 %r1 124
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_array
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r3 124
	sw	%r2 %r3 0
	addi	%r0 %r4 0
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f0 0
	sw	%r26 %r2 128
	sw	%r26 %r1 132
	mov	%r4 %r1
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_float_array
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 136
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 136
	sw	%r2 %r1 0
	mov	%r2 %r1
	addi	%r0 %r2 180
	addi	%r0 %r3 0
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f0 0
	mov	%r27 %r4
	addi	%r27 %r27 16
	sw.s	%r4 %f0 8
	sw	%r4 %r1 4
	sw	%r4 %r3 0
	mov	%r4 %r1
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 140
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_array
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	mov	%r27 %r2
	addi	%r27 %r27 16
	addi	%r0 %r3 read_object.2756
	sw	%r2 %r3 0
	lw	%r26 %r3 4
	sw	%r2 %r3 8
	lw	%r26 %r4 0
	sw	%r2 %r4 4
	mov	%r27 %r5
	addi	%r27 %r27 8
	addi	%r0 %r6 read_and_network.2764
	sw	%r5 %r6 0
	lw	%r26 %r6 28
	sw	%r5 %r6 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r8 iter_setup_dirvec_constants.2861
	sw	%r7 %r8 0
	sw	%r7 %r3 4
	mov	%r27 %r8
	addi	%r27 %r27 8
	addi	%r0 %r9 setup_startp_constants.2866
	sw	%r8 %r9 0
	sw	%r8 %r3 4
	mov	%r27 %r9
	addi	%r27 %r27 8
	addi	%r0 %r10 check_all_inside.2891
	sw	%r9 %r10 0
	sw	%r9 %r3 4
	mov	%r27 %r10
	addi	%r27 %r27 32
	addi	%r0 %r11 shadow_check_and_group.2897
	sw	%r10 %r11 0
	lw	%r26 %r11 124
	sw	%r10 %r11 28
	lw	%r26 %r12 40
	sw	%r10 %r12 24
	sw	%r10 %r3 20
	lw	%r26 %r13 16
	sw	%r10 %r13 16
	lw	%r26 %r14 52
	sw	%r10 %r14 12
	lw	%r26 %r15 132
	sw	%r10 %r15 8
	sw	%r10 %r9 4
	mov	%r27 %r16
	addi	%r27 %r27 16
	addi	%r0 %r17 shadow_check_one_or_group.2900
	sw	%r16 %r17 0
	sw	%r16 %r10 8
	sw	%r16 %r6 4
	mov	%r27 %r10
	addi	%r27 %r27 32
	addi	%r0 %r17 shadow_check_one_or_matrix.2903
	sw	%r10 %r17 0
	sw	%r10 %r11 24
	sw	%r10 %r12 20
	sw	%r10 %r16 16
	sw	%r10 %r3 12
	sw	%r10 %r14 8
	sw	%r10 %r15 4
	mov	%r27 %r15
	addi	%r27 %r27 40
	addi	%r0 %r16 solve_each_element.2906
	sw	%r15 %r16 0
	lw	%r26 %r16 48
	sw	%r15 %r16 32
	lw	%r26 %r17 88
	sw	%r15 %r17 28
	sw	%r15 %r12 24
	sw	%r15 %r3 20
	lw	%r26 %r18 44
	sw	%r15 %r18 16
	sw	%r15 %r14 12
	lw	%r26 %r19 56
	sw	%r15 %r19 8
	sw	%r15 %r9 4
	mov	%r27 %r20
	addi	%r27 %r27 16
	addi	%r0 %r21 solve_one_or_network.2910
	sw	%r20 %r21 0
	sw	%r20 %r15 8
	sw	%r20 %r6 4
	mov	%r27 %r15
	addi	%r27 %r27 24
	addi	%r0 %r21 trace_or_matrix.2914
	sw	%r15 %r21 0
	sw	%r15 %r16 20
	sw	%r15 %r17 16
	sw	%r15 %r12 12
	sw	%r15 %r20 8
	sw	%r15 %r3 4
	mov	%r27 %r20
	addi	%r27 %r27 40
	addi	%r0 %r21 solve_each_element_fast.2920
	sw	%r20 %r21 0
	sw	%r20 %r16 32
	lw	%r26 %r21 92
	sw	%r20 %r21 28
	sw	%r20 %r12 24
	sw	%r20 %r3 20
	sw	%r20 %r18 16
	sw	%r20 %r14 12
	sw	%r20 %r19 8
	sw	%r20 %r9 4
	mov	%r27 %r9
	addi	%r27 %r27 16
	addi	%r0 %r22 solve_one_or_network_fast.2924
	sw	%r9 %r22 0
	sw	%r9 %r20 8
	sw	%r9 %r6 4
	mov	%r27 %r6
	addi	%r27 %r27 24
	addi	%r0 %r20 trace_or_matrix_fast.2928
	sw	%r6 %r20 0
	sw	%r6 %r16 16
	sw	%r6 %r12 12
	sw	%r6 %r9 8
	sw	%r6 %r3 4
	mov	%r27 %r9
	addi	%r27 %r27 48
	addi	%r0 %r12 trace_reflections.2950
	sw	%r9 %r12 0
	sw	%r9 %r6 40
	sw	%r9 %r16 36
	lw	%r26 %r12 64
	sw	%r9 %r12 32
	sw	%r9 %r10 28
	lw	%r26 %r20 72
	sw	%r9 %r20 24
	lw	%r26 %r22 140
	sw	%r9 %r22 20
	lw	%r26 %r23 36
	sw	%r9 %r23 16
	lw	%r26 %r24 60
	sw	%r9 %r24 12
	sw	%r9 %r18 8
	sw	%r9 %r19 4
	mov	%r27 %r22
	addi	%r27 %r27 80
	addi	%r0 %r11 trace_ray.2955
	sw	%r22 %r11 0
	sw	%r22 %r9 76
	sw	%r22 %r15 72
	sw	%r22 %r16 68
	sw	%r22 %r12 64
	sw	%r22 %r21 60
	sw	%r22 %r17 56
	sw	%r22 %r10 52
	sw	%r22 %r8 48
	sw	%r22 %r20 44
	sw	%r22 %r23 40
	sw	%r22 %r3 36
	sw	%r22 %r24 32
	sw	%r22 %r1 28
	sw	%r22 %r4 24
	sw	%r22 %r13 20
	sw	%r22 %r18 16
	sw	%r22 %r14 12
	sw	%r22 %r19 8
	lw	%r26 %r9 20
	sw	%r22 %r9 4
	mov	%r27 %r11
	addi	%r27 %r27 56
	addi	%r0 %r15 iter_trace_diffuse_rays.2964
	sw	%r11 %r15 0
	sw	%r11 %r6 48
	sw	%r11 %r16 44
	sw	%r11 %r12 40
	sw	%r11 %r10 36
	sw	%r11 %r23 32
	sw	%r11 %r3 28
	sw	%r11 %r24 24
	sw	%r11 %r13 20
	sw	%r11 %r18 16
	sw	%r11 %r14 12
	sw	%r11 %r19 8
	lw	%r26 %r6 68
	sw	%r11 %r6 4
	mov	%r27 %r10
	addi	%r27 %r27 32
	addi	%r0 %r12 do_without_neighbors.2986
	sw	%r10 %r12 0
	sw	%r10 %r21 28
	sw	%r10 %r8 24
	sw	%r10 %r20 20
	sw	%r10 %r4 16
	sw	%r10 %r11 12
	lw	%r26 %r12 116
	sw	%r10 %r12 8
	sw	%r10 %r6 4
	mov	%r27 %r14
	addi	%r27 %r27 16
	addi	%r0 %r15 try_exploit_neighbors.3002
	sw	%r14 %r15 0
	sw	%r14 %r20 12
	sw	%r14 %r10 8
	sw	%r14 %r6 4
	mov	%r27 %r15
	addi	%r27 %r27 32
	addi	%r0 %r16 pretrace_diffuse_rays.3015
	sw	%r15 %r16 0
	sw	%r15 %r21 24
	sw	%r15 %r8 20
	sw	%r15 %r4 16
	sw	%r15 %r11 12
	sw	%r15 %r12 8
	sw	%r15 %r6 4
	mov	%r27 %r6
	addi	%r27 %r27 40
	addi	%r0 %r8 pretrace_pixels.3018
	sw	%r6 %r8 0
	lw	%r26 %r8 12
	sw	%r6 %r8 36
	sw	%r6 %r22 32
	sw	%r6 %r17 28
	lw	%r26 %r11 96
	sw	%r6 %r11 24
	lw	%r26 %r16 84
	sw	%r6 %r16 20
	sw	%r6 %r20 16
	lw	%r26 %r17 108
	sw	%r6 %r17 12
	sw	%r6 %r15 8
	lw	%r26 %r15 80
	sw	%r6 %r15 4
	mov	%r27 %r17
	addi	%r27 %r27 24
	addi	%r0 %r18 scan_pixel.3029
	sw	%r17 %r18 0
	sw	%r17 %r14 16
	sw	%r17 %r20 12
	lw	%r26 %r14 76
	sw	%r17 %r14 8
	sw	%r17 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 32
	addi	%r0 %r18 scan_line.3035
	sw	%r10 %r18 0
	lw	%r26 %r18 104
	sw	%r10 %r18 28
	lw	%r26 %r19 100
	sw	%r10 %r19 24
	sw	%r10 %r17 20
	sw	%r10 %r16 16
	sw	%r10 %r6 12
	sw	%r10 %r14 8
	sw	%r10 %r15 4
	mov	%r27 %r17
	addi	%r27 %r27 8
	addi	%r0 %r20 calc_dirvec.3055
	sw	%r17 %r20 0
	sw	%r17 %r12 4
	mov	%r27 %r20
	addi	%r27 %r27 8
	addi	%r0 %r21 calc_dirvecs.3063
	sw	%r20 %r21 0
	sw	%r20 %r17 4
	mov	%r27 %r17
	addi	%r27 %r27 8
	addi	%r0 %r21 calc_dirvec_rows.3068
	sw	%r17 %r21 0
	sw	%r17 %r20 4
	mov	%r27 %r20
	addi	%r27 %r27 8
	addi	%r0 %r21 create_dirvec_elements.3074
	sw	%r20 %r21 0
	sw	%r20 %r4 4
	mov	%r27 %r21
	addi	%r27 %r27 16
	addi	%r0 %r22 create_dirvecs.3077
	sw	%r21 %r22 0
	sw	%r21 %r4 12
	sw	%r21 %r12 8
	sw	%r21 %r20 4
	mov	%r27 %r20
	addi	%r27 %r27 16
	addi	%r0 %r22 init_dirvec_constants.3079
	sw	%r20 %r22 0
	sw	%r20 %r4 8
	sw	%r20 %r7 4
	mov	%r27 %r22
	addi	%r27 %r27 16
	addi	%r0 %r24 init_vecset_constants.3082
	sw	%r22 %r24 0
	sw	%r22 %r20 8
	sw	%r22 %r12 4
	addi	%r0 %r12 128
	addi	%r0 %r20 128
	sw	%r14 %r12 0
	sw	%r14 %r20 4
	addi	%r0 %r20 64
	sw	%r15 %r20 0
	addi	%r0 %r20 64
	sw	%r15 %r20 4
	addi	%r0 %r20 l.21880
	ilw.s	%r20 %f0 0
	mtc1	%r12 %f1
	div.s	%f1 %f0 %f0
	sw.s	%r16 %f0 0
	lw	%r14 %r12 0
	addi	%r0 %r20 3
	addi	%r0 %r24 l.20095
	ilw.s	%r24 %f0 0
	sw	%r26 %r10 144
	sw	%r26 %r6 148
	sw	%r26 %r1 152
	sw	%r26 %r7 156
	sw	%r26 %r22 160
	sw	%r26 %r17 164
	sw	%r26 %r21 168
	sw	%r26 %r5 172
	sw	%r26 %r2 176
	sw	%r26 %r12 180
	mov	%r20 %r1
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	min_caml_create_float_array
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 184
	mov	%r2 %r1
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	min_caml_create_float_array
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	min_caml_create_array
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 188
	mov	%r2 %r1
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r2 188
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r2 188
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r2 188
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r2 188
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_array
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 192
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_array
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 196
	mov	%r2 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_array
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 200
	mov	%r2 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 200
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 200
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 200
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 200
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_array
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 204
	mov	%r2 %r1
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 204
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 204
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 204
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 204
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_array
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 208
	mov	%r2 %r1
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_array
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 212
	mov	%r2 %r1
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 212
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 212
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 212
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 212
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 208
	sw	%r1 %r2 24
	lw	%r26 %r2 204
	sw	%r1 %r2 20
	lw	%r26 %r2 200
	sw	%r1 %r2 16
	lw	%r26 %r2 196
	sw	%r1 %r2 12
	lw	%r26 %r2 192
	sw	%r1 %r2 8
	lw	%r26 %r2 188
	sw	%r1 %r2 4
	lw	%r26 %r2 184
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 180
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_array
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 76
	lw	%r2 %r3 0
	addi	%r3 %r3 -2
	mov	%r3 %r2
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	init_line_elements.3045
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 76
	lw	%r2 %r3 0
	addi	%r0 %r4 3
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f0 0
	sw	%r26 %r1 216
	sw	%r26 %r3 220
	mov	%r4 %r1
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 224
	mov	%r2 %r1
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_array
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 228
	mov	%r2 %r1
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 228
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 228
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 228
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 228
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_array
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 232
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_array
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 236
	mov	%r2 %r1
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_array
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 240
	mov	%r2 %r1
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 240
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 240
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 240
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 240
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_array
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 244
	mov	%r2 %r1
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 244
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 244
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 244
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 244
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_array
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 248
	mov	%r2 %r1
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_array
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 252
	mov	%r2 %r1
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 252
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 252
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 252
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 252
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 248
	sw	%r1 %r2 24
	lw	%r26 %r2 244
	sw	%r1 %r2 20
	lw	%r26 %r2 240
	sw	%r1 %r2 16
	lw	%r26 %r2 236
	sw	%r1 %r2 12
	lw	%r26 %r2 232
	sw	%r1 %r2 8
	lw	%r26 %r2 228
	sw	%r1 %r2 4
	lw	%r26 %r2 224
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 220
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_array
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 76
	lw	%r2 %r3 0
	addi	%r3 %r3 -2
	mov	%r3 %r2
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	init_line_elements.3045
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 76
	lw	%r2 %r3 0
	addi	%r0 %r4 3
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f0 0
	sw	%r26 %r1 256
	sw	%r26 %r3 260
	mov	%r4 %r1
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 264
	mov	%r2 %r1
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_array
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 268
	mov	%r2 %r1
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 268
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 268
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 268
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 268
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_array
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 272
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_array
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 276
	mov	%r2 %r1
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_array
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 280
	mov	%r2 %r1
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 280
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 280
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 280
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 280
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_array
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 284
	mov	%r2 %r1
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 284
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 284
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 284
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 284
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_array
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 288
	mov	%r2 %r1
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_array
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 292
	mov	%r2 %r1
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_float_array
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	lw	%r26 %r2 292
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_float_array
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	lw	%r26 %r2 292
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_float_array
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	lw	%r26 %r2 292
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_float_array
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	lw	%r26 %r2 292
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 288
	sw	%r1 %r2 24
	lw	%r26 %r2 284
	sw	%r1 %r2 20
	lw	%r26 %r2 280
	sw	%r1 %r2 16
	lw	%r26 %r2 276
	sw	%r1 %r2 12
	lw	%r26 %r2 272
	sw	%r1 %r2 8
	lw	%r26 %r2 268
	sw	%r1 %r2 4
	lw	%r26 %r2 264
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 260
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_array
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	lw	%r26 %r2 76
	lw	%r2 %r3 0
	addi	%r3 %r3 -2
	mov	%r3 %r2
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	init_line_elements.3045
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	fin	%f0
	lw	%r26 %r2 8
	sw.s	%r2 %f0 0
	fin	%f0
	sw.s	%r2 %f0 4
	fin	%f0
	sw.s	%r2 %f0 8
	fin	%f0
	addi	%r0 %r3 l.20113
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r1 296
	sw.s	%r26 %f0 304
	sw	%r26 %r28 316
	addi	%r26 %r26 320
	jal	cos.2581
	addi	%r26 %r26 -320
	lw	%r26 %r28 316
	lw.s	%r26 %f1 304
	sw.s	%r26 %f0 312
	mov.s	%f1 %f0
	sw	%r26 %r28 324
	addi	%r26 %r26 328
	jal	sin.2579
	addi	%r26 %r26 -328
	lw	%r26 %r28 324
	fin	%f1
	addi	%r0 %r1 l.20113
	ilw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	sw.s	%r26 %f0 320
	sw.s	%r26 %f1 328
	mov.s	%f1 %f0
	sw	%r26 %r28 340
	addi	%r26 %r26 344
	jal	cos.2581
	addi	%r26 %r26 -344
	lw	%r26 %r28 340
	lw.s	%r26 %f1 328
	sw.s	%r26 %f0 336
	mov.s	%f1 %f0
	sw	%r26 %r28 348
	addi	%r26 %r26 352
	jal	sin.2579
	addi	%r26 %r26 -352
	lw	%r26 %r28 348
	lw.s	%r26 %f1 312
	mul.s	%f0 %f1 %f2
	addi	%r0 %r1 l.22032
	ilw.s	%r1 %f3 0
	mul.s	%f3 %f2 %f2
	lw	%r26 %r1 104
	sw.s	%r1 %f2 0
	addi	%r0 %r2 l.22035
	ilw.s	%r2 %f2 0
	lw.s	%r26 %f3 320
	mul.s	%f2 %f3 %f2
	sw.s	%r1 %f2 4
	lw.s	%r26 %f2 336
	mul.s	%f2 %f1 %f4
	addi	%r0 %r2 l.22032
	ilw.s	%r2 %f5 0
	mul.s	%f5 %f4 %f4
	sw.s	%r1 %f4 8
	lw	%r26 %r2 96
	sw.s	%r2 %f2 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f4 0
	sw.s	%r2 %f4 4
	neg.s	%f0 %f4
	sw.s	%r2 %f4 8
	neg.s	%f3 %f4
	mul.s	%f0 %f4 %f0
	lw	%r26 %r2 100
	sw.s	%r2 %f0 0
	neg.s	%f1 %f0
	sw.s	%r2 %f0 4
	neg.s	%f3 %f0
	mul.s	%f2 %f0 %f0
	sw.s	%r2 %f0 8
	lw	%r26 %r3 8
	lw.s	%r3 %f0 0
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r26 %r4 12
	sw.s	%r4 %f0 0
	lw.s	%r3 %f0 4
	lw.s	%r1 %f1 4
	sub.s	%f1 %f0 %f0
	sw.s	%r4 %f0 4
	lw.s	%r3 %f0 8
	lw.s	%r1 %f1 8
	sub.s	%f1 %f0 %f0
	sw.s	%r4 %f0 8
	in	%r3
	fin	%f0
	addi	%r0 %r3 l.20113
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r26 %f0 344
	sw	%r26 %r28 356
	addi	%r26 %r26 360
	jal	sin.2579
	addi	%r26 %r26 -360
	lw	%r26 %r28 356
	neg.s	%f0 %f0
	lw	%r26 %r1 16
	sw.s	%r1 %f0 4
	fin	%f0
	addi	%r0 %r2 l.20113
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r26 %f1 344
	sw.s	%r26 %f0 352
	mov.s	%f1 %f0
	sw	%r26 %r28 364
	addi	%r26 %r26 368
	jal	cos.2581
	addi	%r26 %r26 -368
	lw	%r26 %r28 364
	lw.s	%r26 %f1 352
	sw.s	%r26 %f0 360
	mov.s	%f1 %f0
	sw	%r26 %r28 372
	addi	%r26 %r26 376
	jal	sin.2579
	addi	%r26 %r26 -376
	lw	%r26 %r28 372
	lw.s	%r26 %f1 360
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 352
	sw	%r26 %r28 372
	addi	%r26 %r26 376
	jal	cos.2581
	addi	%r26 %r26 -376
	lw	%r26 %r28 372
	lw.s	%r26 %f1 360
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r1 %f0 8
	fin	%f0
	lw	%r26 %r2 20
	sw.s	%r2 %f0 0
	addi	%r0 %r2 0
	lw	%r26 %r24 176
	mov	%r2 %r1
	sw	%r26 %r28 372
	lw	%r24 %r23 0
	addi	%r26 %r26 376	
	jalr	%r23
	addi	%r26 %r26 -376
	lw	%r26 %r28 372
	addi	%r0 %r1 0
	lw	%r26 %r24 172
	sw	%r26 %r28 372
	lw	%r24 %r23 0
	addi	%r26 %r26 376	
	jalr	%r23
	addi	%r26 %r26 -376
	lw	%r26 %r28 372
	addi	%r0 %r1 0
	sw	%r26 %r28 372
	addi	%r26 %r26 376
	jal	read_or_network.2762
	addi	%r26 %r26 -376
	lw	%r26 %r28 372
	lw	%r26 %r2 36
	sw	%r2 %r1 0
	addi	%r0 %r1 80
	out	%r1
	addi	%r0 %r1 51
	out	%r1
	addi	%r0 %r1 10
	out	%r1
	lw	%r26 %r1 76
	lw	%r1 %r2 0
	addi	%r0 %r3 100
	div	%r2 %r3 %r3
	addi	%r0 %r4 100
	mul	%r3 %r4 %r4
	sub	%r2 %r4 %r4
	addi	%r0 %r5 10
	div	%r4 %r5 %r4
	addi	%r0 %r5 100
	mul	%r3 %r5 %r5
	sub	%r2 %r5 %r2
	addi	%r0 %r5 10
	mul	%r4 %r5 %r5
	sub	%r2 %r5 %r2
	addi	%r0 %r25 0
	ble	%r3 %r25 bg_else.23263
	addi	%r3 %r3 48
	out	%r3
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bg_cont.23264
bg_else.23263 :
	addi	%r0 %r25 0
	ble	%r4 %r25 bg_else.23265
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bg_cont.23266
bg_else.23265 :
	addi	%r2 %r2 48
	out	%r2
bg_cont.23266 :
bg_cont.23264 :
	addi	%r0 %r2 32
	out	%r2
	lw	%r1 %r2 4
	addi	%r0 %r3 100
	div	%r2 %r3 %r3
	addi	%r0 %r4 100
	mul	%r3 %r4 %r4
	sub	%r2 %r4 %r4
	addi	%r0 %r5 10
	div	%r4 %r5 %r4
	addi	%r0 %r5 100
	mul	%r3 %r5 %r5
	sub	%r2 %r5 %r2
	addi	%r0 %r5 10
	mul	%r4 %r5 %r5
	sub	%r2 %r5 %r2
	addi	%r0 %r25 0
	ble	%r3 %r25 bg_else.23267
	addi	%r3 %r3 48
	out	%r3
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bg_cont.23268
bg_else.23267 :
	addi	%r0 %r25 0
	ble	%r4 %r25 bg_else.23269
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bg_cont.23270
bg_else.23269 :
	addi	%r2 %r2 48
	out	%r2
bg_cont.23270 :
bg_cont.23268 :
	addi	%r0 %r2 32
	out	%r2
	addi	%r0 %r2 50
	out	%r2
	addi	%r0 %r2 53
	out	%r2
	addi	%r0 %r2 53
	out	%r2
	addi	%r0 %r2 10
	out	%r2
	addi	%r0 %r2 4
	lw	%r26 %r24 168
	mov	%r2 %r1
	sw	%r26 %r28 372
	lw	%r24 %r23 0
	addi	%r26 %r26 376	
	jalr	%r23
	addi	%r26 %r26 -376
	lw	%r26 %r28 372
	addi	%r0 %r1 9
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r24 164
	sw	%r26 %r28 372
	lw	%r24 %r23 0
	addi	%r26 %r26 376	
	jalr	%r23
	addi	%r26 %r26 -376
	lw	%r26 %r28 372
	addi	%r0 %r1 4
	lw	%r26 %r24 160
	sw	%r26 %r28 372
	lw	%r24 %r23 0
	addi	%r26 %r26 376	
	jalr	%r23
	addi	%r26 %r26 -376
	lw	%r26 %r28 372
	lw	%r26 %r1 16
	lw.s	%r1 %f0 0
	lw	%r26 %r2 124
	sw.s	%r2 %f0 0
	lw.s	%r1 %f0 4
	sw.s	%r2 %f0 4
	lw.s	%r1 %f0 8
	sw.s	%r2 %f0 8
	lw	%r26 %r2 0
	lw	%r2 %r3 0
	addi	%r3 %r3 -1
	lw	%r26 %r4 128
	lw	%r26 %r24 156
	mov	%r3 %r2
	mov	%r4 %r1
	sw	%r26 %r28 372
	lw	%r24 %r23 0
	addi	%r26 %r26 376	
	jalr	%r23
	addi	%r26 %r26 -376
	lw	%r26 %r28 372
	lw	%r26 %r1 0
	lw	%r1 %r2 0
	addi	%r2 %r2 -1
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.23271
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r3 %r4 8
	addi	%r0 %r25 2
	bne	%r4 %r25 be_else.23273
	lw	%r3 %r4 28
	lw.s	%r4 %f0 0
	addi	%r0 %r4 l.20063
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.23275
	addi	%r0 %r4 1
	j	fbl_cont.23276
fbl_else.23275 :
	addi	%r0 %r4 0
fbl_cont.23276 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23277
	j	be_cont.23278
be_else.23277 :
	lw	%r3 %r4 4
	addi	%r0 %r25 1
	bne	%r4 %r25 be_else.23279
	addi	%r0 %r4 4
	mul	%r2 %r4 %r2
	lw	%r26 %r4 152
	lw	%r4 %r5 0
	addi	%r0 %r6 l.20063
	ilw.s	%r6 %f0 0
	lw	%r3 %r3 28
	lw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r26 %r3 16
	lw.s	%r3 %f1 0
	neg.s	%f1 %f1
	lw.s	%r3 %f2 4
	neg.s	%f2 %f2
	lw.s	%r3 %f3 8
	neg.s	%f3 %f3
	addi	%r2 %r6 1
	lw.s	%r3 %f4 0
	addi	%r0 %r7 3
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f5 0
	sw.s	%r26 %f1 368
	sw	%r26 %r2 376
	sw	%r26 %r5 380
	sw	%r26 %r6 384
	sw.s	%r26 %f0 392
	sw.s	%r26 %f3 400
	sw.s	%r26 %f2 408
	sw.s	%r26 %f4 416
	mov	%r7 %r1
	mov.s	%f5 %f0
	sw	%r26 %r28 428
	addi	%r26 %r26 432
	jal	min_caml_create_float_array
	addi	%r26 %r26 -432
	lw	%r26 %r28 428
	mov	%r1 %r2
	lw	%r26 %r1 0
	lw	%r1 %r3 0
	sw	%r26 %r2 424
	mov	%r3 %r1
	sw	%r26 %r28 428
	addi	%r26 %r26 432
	jal	min_caml_create_array
	addi	%r26 %r26 -432
	lw	%r26 %r28 428
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 424
	sw	%r2 %r1 0
	lw.s	%r26 %f0 416
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 408
	sw.s	%r1 %f0 4
	lw.s	%r26 %f1 400
	sw.s	%r1 %f1 8
	lw	%r26 %r1 0
	lw	%r1 %r3 0
	addi	%r3 %r3 -1
	lw	%r26 %r24 156
	sw	%r26 %r2 428
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 436
	lw	%r24 %r23 0
	addi	%r26 %r26 440	
	jalr	%r23
	addi	%r26 %r26 -440
	lw	%r26 %r28 436
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 392
	sw.s	%r1 %f0 8
	lw	%r26 %r2 428
	sw	%r1 %r2 4
	lw	%r26 %r2 384
	sw	%r1 %r2 0
	lw	%r26 %r2 380
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 140
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r2 %r1 1
	lw	%r26 %r3 376
	addi	%r3 %r5 2
	lw	%r26 %r6 16
	lw.s	%r6 %f1 4
	addi	%r0 %r7 3
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f2 0
	sw	%r26 %r1 432
	sw	%r26 %r5 436
	sw.s	%r26 %f1 440
	mov	%r7 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 452
	addi	%r26 %r26 456
	jal	min_caml_create_float_array
	addi	%r26 %r26 -456
	lw	%r26 %r28 452
	mov	%r1 %r2
	lw	%r26 %r1 0
	lw	%r1 %r3 0
	sw	%r26 %r2 448
	mov	%r3 %r1
	sw	%r26 %r28 452
	addi	%r26 %r26 456
	jal	min_caml_create_array
	addi	%r26 %r26 -456
	lw	%r26 %r28 452
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 448
	sw	%r2 %r1 0
	lw.s	%r26 %f0 368
	sw.s	%r1 %f0 0
	lw.s	%r26 %f1 440
	sw.s	%r1 %f1 4
	lw.s	%r26 %f1 400
	sw.s	%r1 %f1 8
	lw	%r26 %r1 0
	lw	%r1 %r3 0
	addi	%r3 %r3 -1
	lw	%r26 %r24 156
	sw	%r26 %r2 452
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 460
	lw	%r24 %r23 0
	addi	%r26 %r26 464	
	jalr	%r23
	addi	%r26 %r26 -464
	lw	%r26 %r28 460
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 392
	sw.s	%r1 %f0 8
	lw	%r26 %r2 452
	sw	%r1 %r2 4
	lw	%r26 %r2 436
	sw	%r1 %r2 0
	lw	%r26 %r2 432
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 140
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	lw	%r26 %r1 380
	addi	%r1 %r2 2
	lw	%r26 %r4 376
	addi	%r4 %r4 3
	lw	%r26 %r5 16
	lw.s	%r5 %f1 8
	addi	%r0 %r5 3
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f2 0
	sw	%r26 %r2 456
	sw	%r26 %r4 460
	sw.s	%r26 %f1 464
	mov	%r5 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 476
	addi	%r26 %r26 480
	jal	min_caml_create_float_array
	addi	%r26 %r26 -480
	lw	%r26 %r28 476
	mov	%r1 %r2
	lw	%r26 %r1 0
	lw	%r1 %r3 0
	sw	%r26 %r2 472
	mov	%r3 %r1
	sw	%r26 %r28 476
	addi	%r26 %r26 480
	jal	min_caml_create_array
	addi	%r26 %r26 -480
	lw	%r26 %r28 476
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 472
	sw	%r2 %r1 0
	lw.s	%r26 %f0 368
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 408
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 464
	sw.s	%r1 %f0 8
	lw	%r26 %r1 0
	lw	%r1 %r1 0
	addi	%r1 %r1 -1
	lw	%r26 %r24 156
	sw	%r26 %r2 476
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 484
	lw	%r24 %r23 0
	addi	%r26 %r26 488	
	jalr	%r23
	addi	%r26 %r26 -488
	lw	%r26 %r28 484
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 392
	sw.s	%r1 %f0 8
	lw	%r26 %r2 476
	sw	%r1 %r2 4
	lw	%r26 %r2 460
	sw	%r1 %r2 0
	lw	%r26 %r2 456
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 140
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	lw	%r26 %r1 380
	addi	%r1 %r1 3
	lw	%r26 %r2 152
	sw	%r2 %r1 0
	j	be_cont.23280
be_else.23279 :
	addi	%r0 %r25 2
	bne	%r4 %r25 be_else.23282
	addi	%r0 %r4 4
	mul	%r2 %r4 %r2
	addi	%r2 %r2 1
	lw	%r26 %r4 152
	lw	%r4 %r5 0
	addi	%r0 %r6 l.20063
	ilw.s	%r6 %f0 0
	lw	%r3 %r6 28
	lw.s	%r6 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r3 %r6 16
	lw	%r26 %r7 16
	lw.s	%r7 %f1 0
	lw.s	%r6 %f2 0
	mul.s	%f2 %f1 %f1
	lw.s	%r7 %f2 4
	lw.s	%r6 %f3 4
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	lw.s	%r7 %f2 8
	lw.s	%r6 %f3 8
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	addi	%r0 %r6 l.20187
	ilw.s	%r6 %f2 0
	lw	%r3 %r6 16
	lw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f2
	mul.s	%f1 %f2 %f2
	lw.s	%r7 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.20187
	ilw.s	%r6 %f3 0
	lw	%r3 %r6 16
	lw.s	%r6 %f4 4
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f3 %f3
	lw.s	%r7 %f4 4
	sub.s	%f4 %f3 %f3
	addi	%r0 %r6 l.20187
	ilw.s	%r6 %f4 0
	lw	%r3 %r3 16
	lw.s	%r3 %f5 8
	mul.s	%f5 %f4 %f4
	mul.s	%f1 %f4 %f1
	lw.s	%r7 %f4 8
	sub.s	%f4 %f1 %f1
	addi	%r0 %r3 3
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f4 0
	sw	%r26 %r5 480
	sw	%r26 %r2 484
	sw.s	%r26 %f0 488
	sw.s	%r26 %f1 496
	sw.s	%r26 %f3 504
	sw.s	%r26 %f2 512
	mov	%r3 %r1
	mov.s	%f4 %f0
	sw	%r26 %r28 524
	addi	%r26 %r26 528
	jal	min_caml_create_float_array
	addi	%r26 %r26 -528
	lw	%r26 %r28 524
	mov	%r1 %r2
	lw	%r26 %r1 0
	lw	%r1 %r3 0
	sw	%r26 %r2 520
	mov	%r3 %r1
	sw	%r26 %r28 524
	addi	%r26 %r26 528
	jal	min_caml_create_array
	addi	%r26 %r26 -528
	lw	%r26 %r28 524
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 520
	sw	%r2 %r1 0
	lw.s	%r26 %f0 512
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 504
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 496
	sw.s	%r1 %f0 8
	lw	%r26 %r1 0
	lw	%r1 %r1 0
	addi	%r1 %r1 -1
	lw	%r26 %r24 156
	sw	%r26 %r2 524
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 532
	lw	%r24 %r23 0
	addi	%r26 %r26 536	
	jalr	%r23
	addi	%r26 %r26 -536
	lw	%r26 %r28 532
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 488
	sw.s	%r1 %f0 8
	lw	%r26 %r2 524
	sw	%r1 %r2 4
	lw	%r26 %r2 484
	sw	%r1 %r2 0
	lw	%r26 %r2 480
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 140
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r2 %r1 1
	lw	%r26 %r2 152
	sw	%r2 %r1 0
	j	be_cont.23283
be_else.23282 :
be_cont.23283 :
be_cont.23280 :
be_cont.23278 :
	j	be_cont.23274
be_else.23273 :
be_cont.23274 :
	j	bge_cont.23272
bge_else.23271 :
bge_cont.23272 :
	addi	%r0 %r1 0
	addi	%r0 %r3 0
	lw	%r26 %r2 84
	lw.s	%r2 %f0 0
	lw	%r26 %r2 80
	lw	%r2 %r2 4
	sub	%r1 %r2 %r1
	mtc1	%r1 %f1
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 100
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r2 104
	lw.s	%r2 %f2 0
	add.s	%f2 %f1 %f1
	lw.s	%r1 %f2 4
	mul.s	%f2 %f0 %f2
	lw.s	%r2 %f3 4
	add.s	%f3 %f2 %f2
	lw.s	%r1 %f3 8
	mul.s	%f3 %f0 %f0
	lw.s	%r2 %f3 8
	add.s	%f3 %f0 %f0
	lw	%r26 %r1 76
	lw	%r1 %r1 0
	addi	%r1 %r2 -1
	lw	%r26 %r1 256
	lw	%r26 %r24 148
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 532
	lw	%r24 %r23 0
	addi	%r26 %r26 536	
	jalr	%r23
	addi	%r26 %r26 -536
	lw	%r26 %r28 532
	addi	%r0 %r1 0
	addi	%r0 %r5 2
	lw	%r26 %r2 216
	lw	%r26 %r3 256
	lw	%r26 %r4 296
	lw	%r26 %r24 144
	sw	%r26 %r28 532
	lw	%r24 %r23 0
	addi	%r26 %r26 536	
	jalr	%r23
	addi	%r26 %r26 -536
	lw	%r26 %r28 532
	addi	%r0 %r1 0
	ret
loop_fpow.6281.11541 :
	bne	%r2 %r1 be_else.23284
	mov.s	%f1 %f0
	retl
be_else.23284 :
	mul.s	%f0 %f1 %f1
	addi	%r2 %r2 1
	j	loop_fpow.6281.11541
loop_fpow.6281.11531 :
	bne	%r2 %r1 be_else.23285
	mov.s	%f1 %f0
	retl
be_else.23285 :
	mul.s	%f0 %f1 %f1
	addi	%r2 %r2 1
	j	loop_fpow.6281.11531
loop_fpow.6281.11521 :
	bne	%r2 %r1 be_else.23286
	mov.s	%f1 %f0
	retl
be_else.23286 :
	mul.s	%f0 %f1 %f1
	addi	%r2 %r2 1
	j	loop_fpow.6281.11521
loop_fpow.6281.11511 :
	bne	%r2 %r1 be_else.23287
	mov.s	%f1 %f0
	retl
be_else.23287 :
	mul.s	%f0 %f1 %f1
	addi	%r2 %r2 1
	j	loop_fpow.6281.11511
loop_fpow.6281.11501 :
	bne	%r2 %r1 be_else.23288
	mov.s	%f1 %f0
	retl
be_else.23288 :
	mul.s	%f0 %f1 %f1
	addi	%r2 %r2 1
	j	loop_fpow.6281.11501
sin.2579 :
	addi	%r0 %r1 l.20057
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.23289
	sub.s	%f1 %f0 %f0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	sin.2579
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	neg.s	%f0 %f0
	retl
fbl_else.23289 :
	addi	%r0 %r1 l.20059
	ilw.s	%r1 %f2 0
	fbge	%f0 %f2 fbl_else.23290
	add.s	%f1 %f0 %f0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	sin.2579
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	neg.s	%f0 %f0
	retl
fbl_else.23290 :
	addi	%r0 %r1 l.20061
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 11
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 0
	sw.s	%r26 %f0 0
	sw.s	%r26 %f1 8
	mov.s	%f2 %f1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	loop_fpow.6281.11541
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20065
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 9
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 0
	lw.s	%r26 %f3 0
	sw.s	%r26 %f0 16
	sw.s	%r26 %f1 24
	mov.s	%f2 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	loop_fpow.6281.11531
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20068
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 7
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 0
	lw.s	%r26 %f3 0
	sw.s	%r26 %f0 32
	sw.s	%r26 %f1 40
	mov.s	%f2 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	loop_fpow.6281.11521
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20071
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 5
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 0
	lw.s	%r26 %f3 0
	sw.s	%r26 %f0 48
	sw.s	%r26 %f1 56
	mov.s	%f2 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	loop_fpow.6281.11511
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 48
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20074
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 3
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 0
	lw.s	%r26 %f3 0
	sw.s	%r26 %f0 64
	sw.s	%r26 %f1 72
	mov.s	%f2 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	loop_fpow.6281.11501
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	lw.s	%r26 %f1 0
	add.s	%f1 %f0 %f0
	retl
loop_fpow.6281.11491 :
	bne	%r2 %r1 be_else.23291
	mov.s	%f1 %f0
	retl
be_else.23291 :
	mul.s	%f0 %f1 %f1
	addi	%r2 %r2 1
	j	loop_fpow.6281.11491
loop_fpow.6281.11481 :
	bne	%r2 %r1 be_else.23292
	mov.s	%f1 %f0
	retl
be_else.23292 :
	mul.s	%f0 %f1 %f1
	addi	%r2 %r2 1
	j	loop_fpow.6281.11481
loop_fpow.6281.11471 :
	bne	%r2 %r1 be_else.23293
	mov.s	%f1 %f0
	retl
be_else.23293 :
	mul.s	%f0 %f1 %f1
	addi	%r2 %r2 1
	j	loop_fpow.6281.11471
loop_fpow.6281.11461 :
	bne	%r2 %r1 be_else.23294
	mov.s	%f1 %f0
	retl
be_else.23294 :
	mul.s	%f0 %f1 %f1
	addi	%r2 %r2 1
	j	loop_fpow.6281.11461
loop_fpow.6281.11451 :
	bne	%r2 %r1 be_else.23295
	mov.s	%f1 %f0
	retl
be_else.23295 :
	mul.s	%f0 %f1 %f1
	addi	%r2 %r2 1
	j	loop_fpow.6281.11451
cos.2581 :
	addi	%r0 %r1 l.20057
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.23296
	sub.s	%f1 %f0 %f0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	cos.2581
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	neg.s	%f0 %f0
	retl
fbl_else.23296 :
	addi	%r0 %r1 l.20059
	ilw.s	%r1 %f2 0
	fbge	%f0 %f2 fbl_else.23297
	add.s	%f1 %f0 %f0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	cos.2581
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	neg.s	%f0 %f0
	retl
fbl_else.23297 :
	addi	%r0 %r1 l.20079
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 10
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 0
	sw.s	%r26 %f0 0
	sw.s	%r26 %f1 8
	mov.s	%f2 %f1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	loop_fpow.6281.11491
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20082
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 8
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 0
	lw.s	%r26 %f3 0
	sw.s	%r26 %f0 16
	sw.s	%r26 %f1 24
	mov.s	%f2 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	loop_fpow.6281.11481
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20085
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 6
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 0
	lw.s	%r26 %f3 0
	sw.s	%r26 %f0 32
	sw.s	%r26 %f1 40
	mov.s	%f2 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	loop_fpow.6281.11471
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20088
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 4
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 0
	lw.s	%r26 %f3 0
	sw.s	%r26 %f0 48
	sw.s	%r26 %f1 56
	mov.s	%f2 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	loop_fpow.6281.11461
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 48
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20091
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 2
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 0
	lw.s	%r26 %f3 0
	sw.s	%r26 %f0 64
	sw.s	%r26 %f1 72
	mov.s	%f2 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	loop_fpow.6281.11451
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	retl
read_object.2756 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	addi	%r0 %r25 60
	bge	%r1 %r25 bl_else.23298
	in	%r4
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	addi	%r0 %r25 -1
	bne	%r4 %r25 be_else.23299
	addi	%r0 %r1 0
	j	be_cont.23300
be_else.23299 :
	in	%r5
	in	%r6
	in	%r7
	addi	%r0 %r8 3
	addi	%r0 %r9 l.20095
	ilw.s	%r9 %f0 0
	sw	%r26 %r2 12
	sw	%r26 %r4 16
	sw	%r26 %r6 20
	sw	%r26 %r5 24
	sw	%r26 %r7 28
	mov	%r8 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	fin	%f0
	sw.s	%r1 %f0 8
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 32
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	fin	%f0
	sw.s	%r1 %f0 8
	fin	%f0
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.23301
	addi	%r0 %r2 1
	j	fbl_cont.23302
fbl_else.23301 :
	addi	%r0 %r2 0
fbl_cont.23302 :
	addi	%r0 %r3 2
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 36
	sw	%r26 %r2 40
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 44
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	fin	%f0
	sw.s	%r1 %f0 8
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 48
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r2 28
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23303
	j	be_cont.23304
be_else.23303 :
	fin	%f0
	addi	%r0 %r3 l.20113
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r0 %r3 l.20113
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 4
	fin	%f0
	addi	%r0 %r3 l.20113
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
be_cont.23304 :
	lw	%r26 %r3 24
	addi	%r0 %r25 2
	bne	%r3 %r25 be_else.23305
	addi	%r0 %r4 1
	j	be_cont.23306
be_else.23305 :
	lw	%r26 %r4 40
be_cont.23306 :
	addi	%r0 %r5 4
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f0 0
	sw	%r26 %r4 52
	sw	%r26 %r1 56
	mov	%r5 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r27 %r2
	addi	%r27 %r27 48
	sw	%r2 %r1 40
	lw	%r26 %r1 56
	sw	%r2 %r1 36
	lw	%r26 %r3 48
	sw	%r2 %r3 32
	lw	%r26 %r3 44
	sw	%r2 %r3 28
	lw	%r26 %r3 52
	sw	%r2 %r3 24
	lw	%r26 %r3 36
	sw	%r2 %r3 20
	lw	%r26 %r3 32
	sw	%r2 %r3 16
	lw	%r26 %r4 28
	sw	%r2 %r4 12
	lw	%r26 %r5 20
	sw	%r2 %r5 8
	lw	%r26 %r5 24
	sw	%r2 %r5 4
	lw	%r26 %r6 16
	sw	%r2 %r6 0
	lw	%r26 %r6 8
	addi	%r0 %r25 2
	sll	%r6 %r7 %r25
	lw	%r26 %r8 12
	add	%r8 %r7 %r25
	sw	%r25 %r2 0
	addi	%r0 %r25 3
	bne	%r5 %r25 be_else.23307
	lw.s	%r3 %f0 0
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbe_else.23309
	addi	%r0 %r2 1
	j	fbe_cont.23310
fbe_else.23309 :
	addi	%r0 %r2 0
fbe_cont.23310 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23311
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbe_else.23313
	addi	%r0 %r2 1
	j	fbe_cont.23314
fbe_else.23313 :
	addi	%r0 %r2 0
fbe_cont.23314 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23315
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.23317
	addi	%r0 %r2 1
	j	fbl_cont.23318
fbl_else.23317 :
	addi	%r0 %r2 0
fbl_cont.23318 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23319
	addi	%r0 %r2 l.20139
	ilw.s	%r2 %f1 0
	j	be_cont.23320
be_else.23319 :
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f1 0
be_cont.23320 :
	j	be_cont.23316
be_else.23315 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
be_cont.23316 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	be_cont.23312
be_else.23311 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f0 0
be_cont.23312 :
	sw.s	%r3 %f0 0
	lw.s	%r3 %f0 4
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbe_else.23321
	addi	%r0 %r2 1
	j	fbe_cont.23322
fbe_else.23321 :
	addi	%r0 %r2 0
fbe_cont.23322 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23323
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbe_else.23325
	addi	%r0 %r2 1
	j	fbe_cont.23326
fbe_else.23325 :
	addi	%r0 %r2 0
fbe_cont.23326 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23327
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.23329
	addi	%r0 %r2 1
	j	fbl_cont.23330
fbl_else.23329 :
	addi	%r0 %r2 0
fbl_cont.23330 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23331
	addi	%r0 %r2 l.20139
	ilw.s	%r2 %f1 0
	j	be_cont.23332
be_else.23331 :
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f1 0
be_cont.23332 :
	j	be_cont.23328
be_else.23327 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
be_cont.23328 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	be_cont.23324
be_else.23323 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f0 0
be_cont.23324 :
	sw.s	%r3 %f0 4
	lw.s	%r3 %f0 8
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbe_else.23333
	addi	%r0 %r2 1
	j	fbe_cont.23334
fbe_else.23333 :
	addi	%r0 %r2 0
fbe_cont.23334 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23335
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbe_else.23337
	addi	%r0 %r2 1
	j	fbe_cont.23338
fbe_else.23337 :
	addi	%r0 %r2 0
fbe_cont.23338 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23339
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.23341
	addi	%r0 %r2 1
	j	fbl_cont.23342
fbl_else.23341 :
	addi	%r0 %r2 0
fbl_cont.23342 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23343
	addi	%r0 %r2 l.20139
	ilw.s	%r2 %f1 0
	j	be_cont.23344
be_else.23343 :
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f1 0
be_cont.23344 :
	j	be_cont.23340
be_else.23339 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
be_cont.23340 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	be_cont.23336
be_else.23335 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f0 0
be_cont.23336 :
	sw.s	%r3 %f0 8
	j	be_cont.23308
be_else.23307 :
	addi	%r0 %r25 2
	bne	%r5 %r25 be_else.23345
	lw	%r26 %r2 40
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23347
	addi	%r0 %r2 1
	j	be_cont.23348
be_else.23347 :
	addi	%r0 %r2 0
be_cont.23348 :
	lw.s	%r3 %f0 0
	mul.s	%f0 %f0 %f0
	lw.s	%r3 %f1 4
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r3 %f1 8
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbe_else.23349
	addi	%r0 %r5 1
	j	fbe_cont.23350
fbe_else.23349 :
	addi	%r0 %r5 0
fbe_cont.23350 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23351
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23353
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	j	be_cont.23354
be_else.23353 :
	addi	%r0 %r2 l.20139
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
be_cont.23354 :
	j	be_cont.23352
be_else.23351 :
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f0 0
be_cont.23352 :
	lw.s	%r3 %f1 0
	mul.s	%f0 %f1 %f1
	sw.s	%r3 %f1 0
	lw.s	%r3 %f1 4
	mul.s	%f0 %f1 %f1
	sw.s	%r3 %f1 4
	lw.s	%r3 %f1 8
	mul.s	%f0 %f1 %f0
	sw.s	%r3 %f0 8
	j	be_cont.23346
be_else.23345 :
be_cont.23346 :
be_cont.23308 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23355
	j	be_cont.23356
be_else.23355 :
	lw.s	%r1 %f0 0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	cos.2581
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r1 56
	lw.s	%r1 %f1 0
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	sin.2579
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r1 56
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	cos.2581
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r1 56
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 80
	mov.s	%f1 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	sin.2579
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw	%r26 %r1 56
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 88
	mov.s	%f1 %f0
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	cos.2581
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw	%r26 %r1 56
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	sin.2579
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 96
	lw.s	%r26 %f2 80
	mul.s	%f1 %f2 %f3
	lw.s	%r26 %f4 88
	lw.s	%r26 %f5 72
	mul.s	%f4 %f5 %f6
	mul.s	%f1 %f6 %f6
	lw.s	%r26 %f7 64
	mul.s	%f0 %f7 %f8
	sub.s	%f8 %f6 %f6
	mul.s	%f4 %f7 %f8
	mul.s	%f1 %f8 %f8
	mul.s	%f0 %f5 %f9
	add.s	%f9 %f8 %f8
	mul.s	%f0 %f2 %f9
	mul.s	%f4 %f5 %f10
	mul.s	%f0 %f10 %f10
	mul.s	%f1 %f7 %f11
	add.s	%f11 %f10 %f10
	mul.s	%f4 %f7 %f11
	mul.s	%f0 %f11 %f0
	mul.s	%f1 %f5 %f1
	sub.s	%f1 %f0 %f0
	neg.s	%f4 %f1
	mul.s	%f2 %f5 %f4
	mul.s	%f2 %f7 %f2
	lw	%r26 %r1 32
	lw.s	%r1 %f5 0
	lw.s	%r1 %f7 4
	lw.s	%r1 %f11 8
	mul.s	%f3 %f3 %f12
	mul.s	%f12 %f5 %f12
	mul.s	%f9 %f9 %f13
	mul.s	%f13 %f7 %f13
	add.s	%f13 %f12 %f12
	mul.s	%f1 %f1 %f13
	mul.s	%f13 %f11 %f13
	add.s	%f13 %f12 %f12
	sw.s	%r1 %f12 0
	mul.s	%f6 %f6 %f12
	mul.s	%f12 %f5 %f12
	mul.s	%f10 %f10 %f13
	mul.s	%f13 %f7 %f13
	add.s	%f13 %f12 %f12
	mul.s	%f4 %f4 %f13
	mul.s	%f13 %f11 %f13
	add.s	%f13 %f12 %f12
	sw.s	%r1 %f12 4
	mul.s	%f8 %f8 %f12
	mul.s	%f12 %f5 %f12
	mul.s	%f0 %f0 %f13
	mul.s	%f13 %f7 %f13
	add.s	%f13 %f12 %f12
	mul.s	%f2 %f2 %f13
	mul.s	%f13 %f11 %f13
	add.s	%f13 %f12 %f12
	sw.s	%r1 %f12 8
	addi	%r0 %r1 l.20187
	ilw.s	%r1 %f12 0
	mul.s	%f6 %f5 %f13
	mul.s	%f8 %f13 %f13
	mul.s	%f10 %f7 %f14
	mul.s	%f0 %f14 %f14
	add.s	%f14 %f13 %f13
	mul.s	%f4 %f11 %f14
	mul.s	%f2 %f14 %f14
	add.s	%f14 %f13 %f13
	mul.s	%f13 %f12 %f12
	lw	%r26 %r1 56
	sw.s	%r1 %f12 0
	addi	%r0 %r2 l.20187
	ilw.s	%r2 %f12 0
	mul.s	%f3 %f5 %f13
	mul.s	%f8 %f13 %f8
	mul.s	%f9 %f7 %f13
	mul.s	%f0 %f13 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f1 %f11 %f8
	mul.s	%f2 %f8 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f0 %f12 %f0
	sw.s	%r1 %f0 4
	addi	%r0 %r2 l.20187
	ilw.s	%r2 %f0 0
	mul.s	%f3 %f5 %f2
	mul.s	%f6 %f2 %f2
	mul.s	%f9 %f7 %f3
	mul.s	%f10 %f3 %f3
	add.s	%f3 %f2 %f2
	mul.s	%f1 %f11 %f1
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
be_cont.23356 :
	addi	%r0 %r1 1
be_cont.23300 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.23358
	lw	%r26 %r1 4
	lw	%r26 %r2 8
	sw	%r1 %r2 0
	retl
be_else.23358 :
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bl_else.23298 :
	retl
read_net_item.2760 :
	in	%r2
	addi	%r0 %r25 -1
	bne	%r2 %r25 be_else.23361
	addi	%r1 %r1 1
	addi	%r0 %r2 -1
	j	min_caml_create_array
be_else.23361 :
	addi	%r1 %r3 1
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2760
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 0
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	retl
read_or_network.2762 :
	addi	%r0 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	read_net_item.2760
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r2 %r1 0
	addi	%r0 %r25 -1
	bne	%r1 %r25 be_else.23362
	lw	%r26 %r1 0
	addi	%r1 %r1 1
	j	min_caml_create_array
be_else.23362 :
	lw	%r26 %r1 0
	addi	%r1 %r3 1
	sw	%r26 %r2 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_or_network.2762
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 0
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 4
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	retl
read_and_network.2764 :
	lw	%r24 %r2 4
	addi	%r0 %r3 0
	sw	%r26 %r24 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2760
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r1 %r2 0
	addi	%r0 %r25 -1
	bne	%r2 %r25 be_else.23363
	retl
be_else.23363 :
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r2 %r1 1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
iter_setup_dirvec_constants.2861 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.23365
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	add	%r3 %r4 %r25
	lw	%r25 %r3 0
	lw	%r1 %r4 4
	lw	%r1 %r5 0
	lw	%r3 %r6 4
	sw	%r26 %r1 0
	sw	%r26 %r24 4
	addi	%r0 %r25 1
	bne	%r6 %r25 be_else.23366
	addi	%r0 %r6 6
	addi	%r0 %r7 l.20095
	ilw.s	%r7 %f0 0
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	sw	%r26 %r3 16
	sw	%r26 %r5 20
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	lw.s	%r2 %f0 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbe_else.23368
	addi	%r0 %r3 1
	j	fbe_cont.23369
fbe_else.23368 :
	addi	%r0 %r3 0
fbe_cont.23369 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23370
	lw	%r26 %r3 16
	lw	%r3 %r4 24
	lw.s	%r2 %f0 0
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f1 0
	fbge	%f0 %f1 fbl_else.23372
	addi	%r0 %r5 1
	j	fbl_cont.23373
fbl_else.23372 :
	addi	%r0 %r5 0
fbl_cont.23373 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23374
	mov	%r5 %r4
	j	be_cont.23375
be_else.23374 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23376
	addi	%r0 %r4 1
	j	be_cont.23377
be_else.23376 :
	addi	%r0 %r4 0
be_cont.23377 :
be_cont.23375 :
	lw	%r3 %r5 16
	lw.s	%r5 %f0 0
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23378
	neg.s	%f0 %f0
	j	be_cont.23379
be_else.23378 :
be_cont.23379 :
	sw.s	%r1 %f0 0
	addi	%r0 %r4 l.20063
	ilw.s	%r4 %f0 0
	lw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 4
	j	be_cont.23371
be_else.23370 :
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw.s	%r1 %f0 4
be_cont.23371 :
	lw.s	%r2 %f0 4
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbe_else.23380
	addi	%r0 %r3 1
	j	fbe_cont.23381
fbe_else.23380 :
	addi	%r0 %r3 0
fbe_cont.23381 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23382
	lw	%r26 %r3 16
	lw	%r3 %r4 24
	lw.s	%r2 %f0 4
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f1 0
	fbge	%f0 %f1 fbl_else.23384
	addi	%r0 %r5 1
	j	fbl_cont.23385
fbl_else.23384 :
	addi	%r0 %r5 0
fbl_cont.23385 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23386
	mov	%r5 %r4
	j	be_cont.23387
be_else.23386 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23388
	addi	%r0 %r4 1
	j	be_cont.23389
be_else.23388 :
	addi	%r0 %r4 0
be_cont.23389 :
be_cont.23387 :
	lw	%r3 %r5 16
	lw.s	%r5 %f0 4
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23390
	neg.s	%f0 %f0
	j	be_cont.23391
be_else.23390 :
be_cont.23391 :
	sw.s	%r1 %f0 8
	addi	%r0 %r4 l.20063
	ilw.s	%r4 %f0 0
	lw.s	%r2 %f1 4
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 12
	j	be_cont.23383
be_else.23382 :
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw.s	%r1 %f0 12
be_cont.23383 :
	lw.s	%r2 %f0 8
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbe_else.23392
	addi	%r0 %r3 1
	j	fbe_cont.23393
fbe_else.23392 :
	addi	%r0 %r3 0
fbe_cont.23393 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23394
	lw	%r26 %r3 16
	lw	%r3 %r4 24
	lw.s	%r2 %f0 8
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f1 0
	fbge	%f0 %f1 fbl_else.23396
	addi	%r0 %r5 1
	j	fbl_cont.23397
fbl_else.23396 :
	addi	%r0 %r5 0
fbl_cont.23397 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23398
	mov	%r5 %r4
	j	be_cont.23399
be_else.23398 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23400
	addi	%r0 %r4 1
	j	be_cont.23401
be_else.23400 :
	addi	%r0 %r4 0
be_cont.23401 :
be_cont.23399 :
	lw	%r3 %r3 16
	lw.s	%r3 %f0 8
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23402
	neg.s	%f0 %f0
	j	be_cont.23403
be_else.23402 :
be_cont.23403 :
	sw.s	%r1 %f0 16
	addi	%r0 %r3 l.20063
	ilw.s	%r3 %f0 0
	lw.s	%r2 %f1 8
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 20
	j	be_cont.23395
be_else.23394 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f0 0
	sw.s	%r1 %f0 20
be_cont.23395 :
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	j	be_cont.23367
be_else.23366 :
	addi	%r0 %r25 2
	bne	%r6 %r25 be_else.23404
	addi	%r0 %r6 4
	addi	%r0 %r7 l.20095
	ilw.s	%r7 %f0 0
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	sw	%r26 %r3 16
	sw	%r26 %r5 20
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	lw.s	%r2 %f0 0
	lw	%r26 %r3 16
	lw	%r3 %r4 16
	lw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r2 %f1 4
	lw	%r3 %r4 16
	lw.s	%r4 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r2 %f1 8
	lw	%r3 %r2 16
	lw.s	%r2 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.23406
	addi	%r0 %r2 1
	j	fbl_cont.23407
fbl_else.23406 :
	addi	%r0 %r2 0
fbl_cont.23407 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23408
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f0 0
	sw.s	%r1 %f0 0
	j	be_cont.23409
be_else.23408 :
	addi	%r0 %r2 l.20139
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f1
	sw.s	%r1 %f1 0
	lw	%r3 %r2 16
	lw.s	%r2 %f1 0
	div.s	%f0 %f1 %f1
	neg.s	%f1 %f1
	sw.s	%r1 %f1 4
	lw	%r3 %r2 16
	lw.s	%r2 %f1 4
	div.s	%f0 %f1 %f1
	neg.s	%f1 %f1
	sw.s	%r1 %f1 8
	lw	%r3 %r2 16
	lw.s	%r2 %f1 8
	div.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	sw.s	%r1 %f0 12
be_cont.23409 :
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	j	be_cont.23405
be_else.23404 :
	addi	%r0 %r6 5
	addi	%r0 %r7 l.20095
	ilw.s	%r7 %f0 0
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	sw	%r26 %r3 16
	sw	%r26 %r5 20
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	lw.s	%r2 %f0 0
	lw.s	%r2 %f1 4
	lw.s	%r2 %f2 8
	mul.s	%f0 %f0 %f3
	lw	%r26 %r3 16
	lw	%r3 %r4 16
	lw.s	%r4 %f4 0
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f1 %f4
	lw	%r3 %r4 16
	lw.s	%r4 %f5 4
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f4
	lw	%r3 %r4 16
	lw.s	%r4 %f5 8
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	lw	%r3 %r4 12
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23410
	mov.s	%f3 %f0
	j	be_cont.23411
be_else.23410 :
	mul.s	%f2 %f1 %f4
	lw	%r3 %r4 36
	lw.s	%r4 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f0 %f2 %f2
	lw	%r3 %r4 36
	lw.s	%r4 %f4 4
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f3 %f2
	mul.s	%f1 %f0 %f0
	lw	%r3 %r4 36
	lw.s	%r4 %f1 8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
be_cont.23411 :
	lw.s	%r2 %f1 0
	lw	%r3 %r4 16
	lw.s	%r4 %f2 0
	mul.s	%f2 %f1 %f1
	neg.s	%f1 %f1
	lw.s	%r2 %f2 4
	lw	%r3 %r4 16
	lw.s	%r4 %f3 4
	mul.s	%f3 %f2 %f2
	neg.s	%f2 %f2
	lw.s	%r2 %f3 8
	lw	%r3 %r4 16
	lw.s	%r4 %f4 8
	mul.s	%f4 %f3 %f3
	neg.s	%f3 %f3
	sw.s	%r1 %f0 0
	lw	%r3 %r4 12
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23412
	sw.s	%r1 %f1 4
	sw.s	%r1 %f2 8
	sw.s	%r1 %f3 12
	j	be_cont.23413
be_else.23412 :
	lw.s	%r2 %f4 8
	lw	%r3 %r4 36
	lw.s	%r4 %f5 4
	mul.s	%f5 %f4 %f4
	lw.s	%r2 %f5 4
	lw	%r3 %r4 36
	lw.s	%r4 %f6 8
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f4 %f4
	addi	%r0 %r4 l.20187
	ilw.s	%r4 %f5 0
	div.s	%f5 %f4 %f4
	sub.s	%f4 %f1 %f1
	sw.s	%r1 %f1 4
	lw.s	%r2 %f1 8
	lw	%r3 %r4 36
	lw.s	%r4 %f4 0
	mul.s	%f4 %f1 %f1
	lw.s	%r2 %f4 0
	lw	%r3 %r4 36
	lw.s	%r4 %f5 8
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f1 %f1
	addi	%r0 %r4 l.20187
	ilw.s	%r4 %f4 0
	div.s	%f4 %f1 %f1
	sub.s	%f1 %f2 %f1
	sw.s	%r1 %f1 8
	lw.s	%r2 %f1 4
	lw	%r3 %r4 36
	lw.s	%r4 %f2 0
	mul.s	%f2 %f1 %f1
	lw.s	%r2 %f2 0
	lw	%r3 %r2 36
	lw.s	%r2 %f4 4
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f1 %f1
	addi	%r0 %r2 l.20187
	ilw.s	%r2 %f2 0
	div.s	%f2 %f1 %f1
	sub.s	%f1 %f3 %f1
	sw.s	%r1 %f1 12
be_cont.23413 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbe_else.23414
	addi	%r0 %r2 1
	j	fbe_cont.23415
fbe_else.23414 :
	addi	%r0 %r2 0
fbe_cont.23415 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.23416
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	sw.s	%r1 %f0 16
	j	be_cont.23417
be_else.23416 :
be_cont.23417 :
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
be_cont.23405 :
be_cont.23367 :
	addi	%r2 %r2 -1
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
bge_else.23365 :
	retl
setup_startp_constants.2866 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.23419
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	add	%r3 %r4 %r25
	lw	%r25 %r3 0
	lw	%r3 %r4 40
	lw	%r3 %r5 4
	lw.s	%r1 %f0 0
	lw	%r3 %r6 20
	lw.s	%r6 %f1 0
	sub.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
	lw.s	%r1 %f0 4
	lw	%r3 %r6 20
	lw.s	%r6 %f1 4
	sub.s	%f1 %f0 %f0
	sw.s	%r4 %f0 4
	lw.s	%r1 %f0 8
	lw	%r3 %r6 20
	lw.s	%r6 %f1 8
	sub.s	%f1 %f0 %f0
	sw.s	%r4 %f0 8
	addi	%r0 %r25 2
	bne	%r5 %r25 be_else.23420
	lw	%r3 %r3 16
	lw.s	%r4 %f0 0
	lw.s	%r4 %f1 4
	lw.s	%r4 %f2 8
	lw.s	%r3 %f3 0
	mul.s	%f0 %f3 %f0
	lw.s	%r3 %f3 4
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r3 %f1 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r4 %f0 12
	j	be_cont.23421
be_else.23420 :
	addi	%r0 %r25 2
	ble	%r5 %r25 bg_else.23422
	lw.s	%r4 %f0 0
	lw.s	%r4 %f1 4
	lw.s	%r4 %f2 8
	mul.s	%f0 %f0 %f3
	lw	%r3 %r6 16
	lw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f1 %f4
	lw	%r3 %r6 16
	lw.s	%r6 %f5 4
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f4
	lw	%r3 %r6 16
	lw.s	%r6 %f5 8
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	lw	%r3 %r6 12
	addi	%r0 %r25 0
	bne	%r6 %r25 be_else.23424
	mov.s	%f3 %f0
	j	be_cont.23425
be_else.23424 :
	mul.s	%f2 %f1 %f4
	lw	%r3 %r6 36
	lw.s	%r6 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f0 %f2 %f2
	lw	%r3 %r6 36
	lw.s	%r6 %f4 4
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f3 %f2
	mul.s	%f1 %f0 %f0
	lw	%r3 %r3 36
	lw.s	%r3 %f1 8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
be_cont.23425 :
	addi	%r0 %r25 3
	bne	%r5 %r25 be_else.23426
	addi	%r0 %r3 l.20063
	ilw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	j	be_cont.23427
be_else.23426 :
be_cont.23427 :
	sw.s	%r4 %f0 12
	j	bg_cont.23423
bg_else.23422 :
bg_cont.23423 :
be_cont.23421 :
	addi	%r2 %r2 -1
	lw	%r24 %r23 0
	jr	%r23
bge_else.23419 :
	retl
check_all_inside.2891 :
	lw	%r24 %r3 4
	addi	%r0 %r25 2
	sll	%r1 %r4 %r25
	add	%r2 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r25 -1
	bne	%r4 %r25 be_else.23429
	addi	%r0 %r1 1
	retl
be_else.23429 :
	addi	%r0 %r25 2
	sll	%r4 %r4 %r25
	add	%r3 %r4 %r25
	lw	%r25 %r3 0
	lw	%r3 %r4 20
	lw.s	%r4 %f3 0
	sub.s	%f3 %f0 %f3
	lw	%r3 %r4 20
	lw.s	%r4 %f4 4
	sub.s	%f4 %f1 %f4
	lw	%r3 %r4 20
	lw.s	%r4 %f5 8
	sub.s	%f5 %f2 %f5
	lw	%r3 %r4 4
	addi	%r0 %r25 1
	bne	%r4 %r25 be_else.23430
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f6 0
	fbge	%f3 %f6 fbl_else.23432
	neg.s	%f3 %f3
	j	fbl_cont.23433
fbl_else.23432 :
fbl_cont.23433 :
	lw	%r3 %r4 16
	lw.s	%r4 %f6 0
	fbge	%f3 %f6 fbl_else.23434
	addi	%r0 %r4 1
	j	fbl_cont.23435
fbl_else.23434 :
	addi	%r0 %r4 0
fbl_cont.23435 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23436
	addi	%r0 %r4 0
	j	be_cont.23437
be_else.23436 :
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f3 0
	fbge	%f4 %f3 fbl_else.23438
	neg.s	%f4 %f3
	j	fbl_cont.23439
fbl_else.23438 :
	mov.s	%f4 %f3
fbl_cont.23439 :
	lw	%r3 %r4 16
	lw.s	%r4 %f4 4
	fbge	%f3 %f4 fbl_else.23440
	addi	%r0 %r4 1
	j	fbl_cont.23441
fbl_else.23440 :
	addi	%r0 %r4 0
fbl_cont.23441 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23442
	addi	%r0 %r4 0
	j	be_cont.23443
be_else.23442 :
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f3 0
	fbge	%f5 %f3 fbl_else.23444
	neg.s	%f5 %f3
	j	fbl_cont.23445
fbl_else.23444 :
	mov.s	%f5 %f3
fbl_cont.23445 :
	lw	%r3 %r4 16
	lw.s	%r4 %f4 8
	fbge	%f3 %f4 fbl_else.23446
	addi	%r0 %r4 1
	j	fbl_cont.23447
fbl_else.23446 :
	addi	%r0 %r4 0
fbl_cont.23447 :
be_cont.23443 :
be_cont.23437 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23448
	lw	%r3 %r3 24
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23450
	addi	%r0 %r3 1
	j	be_cont.23451
be_else.23450 :
	addi	%r0 %r3 0
be_cont.23451 :
	j	be_cont.23449
be_else.23448 :
	lw	%r3 %r3 24
be_cont.23449 :
	j	be_cont.23431
be_else.23430 :
	addi	%r0 %r25 2
	bne	%r4 %r25 be_else.23452
	lw	%r3 %r4 16
	lw.s	%r4 %f6 0
	mul.s	%f3 %f6 %f3
	lw.s	%r4 %f6 4
	mul.s	%f4 %f6 %f4
	add.s	%f4 %f3 %f3
	lw.s	%r4 %f4 8
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	lw	%r3 %r3 24
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f4 0
	fbge	%f3 %f4 fbl_else.23454
	addi	%r0 %r4 1
	j	fbl_cont.23455
fbl_else.23454 :
	addi	%r0 %r4 0
fbl_cont.23455 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23456
	mov	%r4 %r3
	j	be_cont.23457
be_else.23456 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23458
	addi	%r0 %r3 1
	j	be_cont.23459
be_else.23458 :
	addi	%r0 %r3 0
be_cont.23459 :
be_cont.23457 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23460
	addi	%r0 %r3 1
	j	be_cont.23461
be_else.23460 :
	addi	%r0 %r3 0
be_cont.23461 :
	j	be_cont.23453
be_else.23452 :
	mul.s	%f3 %f3 %f6
	lw	%r3 %r4 16
	lw.s	%r4 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r3 %r4 16
	lw.s	%r4 %f8 4
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r3 %r4 16
	lw.s	%r4 %f8 8
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	lw	%r3 %r4 12
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23462
	mov.s	%f6 %f3
	j	be_cont.23463
be_else.23462 :
	mul.s	%f5 %f4 %f7
	lw	%r3 %r4 36
	lw.s	%r4 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r3 %r4 36
	lw.s	%r4 %f7 4
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r3 %r4 36
	lw.s	%r4 %f4 8
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
be_cont.23463 :
	lw	%r3 %r4 4
	addi	%r0 %r25 3
	bne	%r4 %r25 be_else.23464
	addi	%r0 %r4 l.20063
	ilw.s	%r4 %f4 0
	sub.s	%f4 %f3 %f3
	j	be_cont.23465
be_else.23464 :
be_cont.23465 :
	lw	%r3 %r3 24
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f4 0
	fbge	%f3 %f4 fbl_else.23466
	addi	%r0 %r4 1
	j	fbl_cont.23467
fbl_else.23466 :
	addi	%r0 %r4 0
fbl_cont.23467 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23468
	mov	%r4 %r3
	j	be_cont.23469
be_else.23468 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23470
	addi	%r0 %r3 1
	j	be_cont.23471
be_else.23470 :
	addi	%r0 %r3 0
be_cont.23471 :
be_cont.23469 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23472
	addi	%r0 %r3 1
	j	be_cont.23473
be_else.23472 :
	addi	%r0 %r3 0
be_cont.23473 :
be_cont.23453 :
be_cont.23431 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23474
	addi	%r1 %r1 1
	lw	%r24 %r23 0
	jr	%r23
be_else.23474 :
	addi	%r0 %r1 0
	retl
shadow_check_and_group.2897 :
	lw	%r24 %r3 28
	lw	%r24 %r4 24
	lw	%r24 %r5 20
	lw	%r24 %r6 16
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	addi	%r0 %r25 2
	sll	%r1 %r10 %r25
	add	%r2 %r10 %r25
	lw	%r25 %r10 0
	addi	%r0 %r25 -1
	bne	%r10 %r25 be_else.23475
	addi	%r0 %r1 0
	retl
be_else.23475 :
	addi	%r0 %r25 2
	sll	%r1 %r10 %r25
	add	%r2 %r10 %r25
	lw	%r25 %r10 0
	addi	%r0 %r25 2
	sll	%r10 %r11 %r25
	add	%r5 %r11 %r25
	lw	%r25 %r11 0
	lw.s	%r7 %f0 0
	lw	%r11 %r12 20
	lw.s	%r12 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r7 %f1 4
	lw	%r11 %r12 20
	lw.s	%r12 %f2 4
	sub.s	%f2 %f1 %f1
	lw.s	%r7 %f2 8
	lw	%r11 %r12 20
	lw.s	%r12 %f3 8
	sub.s	%f3 %f2 %f2
	addi	%r0 %r25 2
	sll	%r10 %r12 %r25
	add	%r8 %r12 %r25
	lw	%r25 %r8 0
	lw	%r11 %r12 4
	addi	%r0 %r25 1
	bne	%r12 %r25 be_else.23476
	lw.s	%r8 %f3 0
	sub.s	%f0 %f3 %f3
	lw.s	%r8 %f4 4
	mul.s	%f4 %f3 %f3
	lw.s	%r3 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r12 l.20095
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.23478
	neg.s	%f4 %f4
	j	fbl_cont.23479
fbl_else.23478 :
fbl_cont.23479 :
	lw	%r11 %r12 16
	lw.s	%r12 %f5 4
	fbge	%f4 %f5 fbl_else.23480
	addi	%r0 %r12 1
	j	fbl_cont.23481
fbl_else.23480 :
	addi	%r0 %r12 0
fbl_cont.23481 :
	addi	%r0 %r25 0
	bne	%r12 %r25 be_else.23482
	addi	%r0 %r12 0
	j	be_cont.23483
be_else.23482 :
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.20095
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.23484
	neg.s	%f4 %f4
	j	fbl_cont.23485
fbl_else.23484 :
fbl_cont.23485 :
	lw	%r11 %r12 16
	lw.s	%r12 %f5 8
	fbge	%f4 %f5 fbl_else.23486
	addi	%r0 %r12 1
	j	fbl_cont.23487
fbl_else.23486 :
	addi	%r0 %r12 0
fbl_cont.23487 :
	addi	%r0 %r25 0
	bne	%r12 %r25 be_else.23488
	addi	%r0 %r12 0
	j	be_cont.23489
be_else.23488 :
	lw.s	%r8 %f4 4
	addi	%r0 %r12 l.20095
	ilw.s	%r12 %f5 0
	fbne	%f4 %f5 fbe_else.23490
	addi	%r0 %r12 1
	j	fbe_cont.23491
fbe_else.23490 :
	addi	%r0 %r12 0
fbe_cont.23491 :
	addi	%r0 %r25 0
	bne	%r12 %r25 be_else.23492
	addi	%r0 %r12 1
	j	be_cont.23493
be_else.23492 :
	addi	%r0 %r12 0
be_cont.23493 :
be_cont.23489 :
be_cont.23483 :
	addi	%r0 %r25 0
	bne	%r12 %r25 be_else.23494
	lw.s	%r8 %f3 8
	sub.s	%f1 %f3 %f3
	lw.s	%r8 %f4 12
	mul.s	%f4 %f3 %f3
	lw.s	%r3 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r12 l.20095
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.23496
	neg.s	%f4 %f4
	j	fbl_cont.23497
fbl_else.23496 :
fbl_cont.23497 :
	lw	%r11 %r12 16
	lw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.23498
	addi	%r0 %r12 1
	j	fbl_cont.23499
fbl_else.23498 :
	addi	%r0 %r12 0
fbl_cont.23499 :
	addi	%r0 %r25 0
	bne	%r12 %r25 be_else.23500
	addi	%r0 %r12 0
	j	be_cont.23501
be_else.23500 :
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.20095
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.23502
	neg.s	%f4 %f4
	j	fbl_cont.23503
fbl_else.23502 :
fbl_cont.23503 :
	lw	%r11 %r12 16
	lw.s	%r12 %f5 8
	fbge	%f4 %f5 fbl_else.23504
	addi	%r0 %r12 1
	j	fbl_cont.23505
fbl_else.23504 :
	addi	%r0 %r12 0
fbl_cont.23505 :
	addi	%r0 %r25 0
	bne	%r12 %r25 be_else.23506
	addi	%r0 %r12 0
	j	be_cont.23507
be_else.23506 :
	lw.s	%r8 %f4 12
	addi	%r0 %r12 l.20095
	ilw.s	%r12 %f5 0
	fbne	%f4 %f5 fbe_else.23508
	addi	%r0 %r12 1
	j	fbe_cont.23509
fbe_else.23508 :
	addi	%r0 %r12 0
fbe_cont.23509 :
	addi	%r0 %r25 0
	bne	%r12 %r25 be_else.23510
	addi	%r0 %r12 1
	j	be_cont.23511
be_else.23510 :
	addi	%r0 %r12 0
be_cont.23511 :
be_cont.23507 :
be_cont.23501 :
	addi	%r0 %r25 0
	bne	%r12 %r25 be_else.23512
	lw.s	%r8 %f3 16
	sub.s	%f2 %f3 %f2
	lw.s	%r8 %f3 20
	mul.s	%f3 %f2 %f2
	lw.s	%r3 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r12 l.20095
	ilw.s	%r12 %f3 0
	fbge	%f0 %f3 fbl_else.23514
	neg.s	%f0 %f0
	j	fbl_cont.23515
fbl_else.23514 :
fbl_cont.23515 :
	lw	%r11 %r12 16
	lw.s	%r12 %f3 0
	fbge	%f0 %f3 fbl_else.23516
	addi	%r0 %r12 1
	j	fbl_cont.23517
fbl_else.23516 :
	addi	%r0 %r12 0
fbl_cont.23517 :
	addi	%r0 %r25 0
	bne	%r12 %r25 be_else.23518
	addi	%r0 %r3 0
	j	be_cont.23519
be_else.23518 :
	lw.s	%r3 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.23520
	neg.s	%f0 %f0
	j	fbl_cont.23521
fbl_else.23520 :
fbl_cont.23521 :
	lw	%r11 %r3 16
	lw.s	%r3 %f1 4
	fbge	%f0 %f1 fbl_else.23522
	addi	%r0 %r3 1
	j	fbl_cont.23523
fbl_else.23522 :
	addi	%r0 %r3 0
fbl_cont.23523 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23524
	addi	%r0 %r3 0
	j	be_cont.23525
be_else.23524 :
	lw.s	%r8 %f0 20
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbe_else.23526
	addi	%r0 %r3 1
	j	fbe_cont.23527
fbe_else.23526 :
	addi	%r0 %r3 0
fbe_cont.23527 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23528
	addi	%r0 %r3 1
	j	be_cont.23529
be_else.23528 :
	addi	%r0 %r3 0
be_cont.23529 :
be_cont.23525 :
be_cont.23519 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23530
	addi	%r0 %r3 0
	j	be_cont.23531
be_else.23530 :
	sw.s	%r4 %f2 0
	addi	%r0 %r3 3
be_cont.23531 :
	j	be_cont.23513
be_else.23512 :
	sw.s	%r4 %f3 0
	addi	%r0 %r3 2
be_cont.23513 :
	j	be_cont.23495
be_else.23494 :
	sw.s	%r4 %f3 0
	addi	%r0 %r3 1
be_cont.23495 :
	j	be_cont.23477
be_else.23476 :
	addi	%r0 %r25 2
	bne	%r12 %r25 be_else.23532
	lw.s	%r8 %f3 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f4 0
	fbge	%f3 %f4 fbl_else.23534
	addi	%r0 %r3 1
	j	fbl_cont.23535
fbl_else.23534 :
	addi	%r0 %r3 0
fbl_cont.23535 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23536
	addi	%r0 %r3 0
	j	be_cont.23537
be_else.23536 :
	lw.s	%r8 %f3 4
	mul.s	%f0 %f3 %f0
	lw.s	%r8 %f3 8
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r8 %f1 12
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
	addi	%r0 %r3 1
be_cont.23537 :
	j	be_cont.23533
be_else.23532 :
	lw.s	%r8 %f3 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f4 0
	fbne	%f3 %f4 fbe_else.23538
	addi	%r0 %r3 1
	j	fbe_cont.23539
fbe_else.23538 :
	addi	%r0 %r3 0
fbe_cont.23539 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23540
	lw.s	%r8 %f4 4
	mul.s	%f0 %f4 %f4
	lw.s	%r8 %f5 8
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f4 %f4
	lw.s	%r8 %f5 12
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f4 %f4
	mul.s	%f0 %f0 %f5
	lw	%r11 %r3 16
	lw.s	%r3 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r11 %r3 16
	lw.s	%r3 %f7 4
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r11 %r3 16
	lw.s	%r3 %f7 8
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r11 %r3 12
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23542
	mov.s	%f5 %f0
	j	be_cont.23543
be_else.23542 :
	mul.s	%f2 %f1 %f6
	lw	%r11 %r3 36
	lw.s	%r3 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r11 %r3 36
	lw.s	%r3 %f6 4
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r11 %r3 36
	lw.s	%r3 %f1 8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
be_cont.23543 :
	lw	%r11 %r3 4
	addi	%r0 %r25 3
	bne	%r3 %r25 be_else.23544
	addi	%r0 %r3 l.20063
	ilw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	j	be_cont.23545
be_else.23544 :
be_cont.23545 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f1 0
	fbge	%f1 %f0 fbl_else.23546
	addi	%r0 %r3 1
	j	fbl_cont.23547
fbl_else.23546 :
	addi	%r0 %r3 0
fbl_cont.23547 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23548
	addi	%r0 %r3 0
	j	be_cont.23549
be_else.23548 :
	lw	%r11 %r3 24
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23550
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f0
	lw.s	%r8 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
	j	be_cont.23551
be_else.23550 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f0
	lw.s	%r8 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
be_cont.23551 :
	addi	%r0 %r3 1
be_cont.23549 :
	j	be_cont.23541
be_else.23540 :
	addi	%r0 %r3 0
be_cont.23541 :
be_cont.23533 :
be_cont.23477 :
	lw.s	%r4 %f0 0
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23552
	addi	%r0 %r3 0
	j	be_cont.23553
be_else.23552 :
	addi	%r0 %r3 l.20415
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.23554
	addi	%r0 %r3 1
	j	fbl_cont.23555
fbl_else.23554 :
	addi	%r0 %r3 0
fbl_cont.23555 :
be_cont.23553 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23556
	addi	%r0 %r25 2
	sll	%r10 %r3 %r25
	add	%r5 %r3 %r25
	lw	%r25 %r3 0
	lw	%r3 %r3 24
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23557
	addi	%r0 %r1 0
	retl
be_else.23557 :
	addi	%r1 %r1 1
	lw	%r24 %r23 0
	jr	%r23
be_else.23556 :
	addi	%r0 %r3 l.20417
	ilw.s	%r3 %f1 0
	add.s	%f1 %f0 %f0
	lw.s	%r6 %f1 0
	mul.s	%f0 %f1 %f1
	lw.s	%r7 %f2 0
	add.s	%f2 %f1 %f1
	lw.s	%r6 %f2 4
	mul.s	%f0 %f2 %f2
	lw.s	%r7 %f3 4
	add.s	%f3 %f2 %f2
	lw.s	%r6 %f3 8
	mul.s	%f0 %f3 %f0
	lw.s	%r7 %f3 8
	add.s	%f3 %f0 %f0
	addi	%r0 %r3 0
	sw	%r26 %r2 0
	sw	%r26 %r24 4
	sw	%r26 %r1 8
	mov	%r3 %r1
	mov	%r9 %r24
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.23558
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.23558 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_group.2900 :
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 2
	sll	%r1 %r5 %r25
	add	%r2 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r25 -1
	bne	%r5 %r25 be_else.23559
	addi	%r0 %r1 0
	retl
be_else.23559 :
	addi	%r0 %r25 2
	sll	%r5 %r5 %r25
	add	%r4 %r5 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 0
	sw	%r26 %r2 0
	sw	%r26 %r24 4
	sw	%r26 %r1 8
	mov	%r4 %r2
	mov	%r5 %r1
	mov	%r3 %r24
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.23560
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.23560 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_matrix.2903 :
	lw	%r24 %r3 24
	lw	%r24 %r4 20
	lw	%r24 %r5 16
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	addi	%r0 %r25 2
	sll	%r1 %r9 %r25
	add	%r2 %r9 %r25
	lw	%r25 %r9 0
	lw	%r9 %r10 0
	addi	%r0 %r25 -1
	bne	%r10 %r25 be_else.23561
	addi	%r0 %r1 0
	retl
be_else.23561 :
	sw	%r26 %r9 0
	sw	%r26 %r5 4
	sw	%r26 %r2 8
	sw	%r26 %r24 12
	sw	%r26 %r1 16
	addi	%r0 %r25 99
	bne	%r10 %r25 be_else.23562
	addi	%r0 %r1 1
	j	be_cont.23563
be_else.23562 :
	addi	%r0 %r25 2
	sll	%r10 %r11 %r25
	add	%r6 %r11 %r25
	lw	%r25 %r6 0
	lw.s	%r7 %f0 0
	lw	%r6 %r11 20
	lw.s	%r11 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r7 %f1 4
	lw	%r6 %r11 20
	lw.s	%r11 %f2 4
	sub.s	%f2 %f1 %f1
	lw.s	%r7 %f2 8
	lw	%r6 %r7 20
	lw.s	%r7 %f3 8
	sub.s	%f3 %f2 %f2
	addi	%r0 %r25 2
	sll	%r10 %r7 %r25
	add	%r8 %r7 %r25
	lw	%r25 %r7 0
	lw	%r6 %r8 4
	addi	%r0 %r25 1
	bne	%r8 %r25 be_else.23564
	lw.s	%r7 %f3 0
	sub.s	%f0 %f3 %f3
	lw.s	%r7 %f4 4
	mul.s	%f4 %f3 %f3
	lw.s	%r3 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.23566
	neg.s	%f4 %f4
	j	fbl_cont.23567
fbl_else.23566 :
fbl_cont.23567 :
	lw	%r6 %r8 16
	lw.s	%r8 %f5 4
	fbge	%f4 %f5 fbl_else.23568
	addi	%r0 %r8 1
	j	fbl_cont.23569
fbl_else.23568 :
	addi	%r0 %r8 0
fbl_cont.23569 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23570
	addi	%r0 %r8 0
	j	be_cont.23571
be_else.23570 :
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.23572
	neg.s	%f4 %f4
	j	fbl_cont.23573
fbl_else.23572 :
fbl_cont.23573 :
	lw	%r6 %r8 16
	lw.s	%r8 %f5 8
	fbge	%f4 %f5 fbl_else.23574
	addi	%r0 %r8 1
	j	fbl_cont.23575
fbl_else.23574 :
	addi	%r0 %r8 0
fbl_cont.23575 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23576
	addi	%r0 %r8 0
	j	be_cont.23577
be_else.23576 :
	lw.s	%r7 %f4 4
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f5 0
	fbne	%f4 %f5 fbe_else.23578
	addi	%r0 %r8 1
	j	fbe_cont.23579
fbe_else.23578 :
	addi	%r0 %r8 0
fbe_cont.23579 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23580
	addi	%r0 %r8 1
	j	be_cont.23581
be_else.23580 :
	addi	%r0 %r8 0
be_cont.23581 :
be_cont.23577 :
be_cont.23571 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23582
	lw.s	%r7 %f3 8
	sub.s	%f1 %f3 %f3
	lw.s	%r7 %f4 12
	mul.s	%f4 %f3 %f3
	lw.s	%r3 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.23584
	neg.s	%f4 %f4
	j	fbl_cont.23585
fbl_else.23584 :
fbl_cont.23585 :
	lw	%r6 %r8 16
	lw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.23586
	addi	%r0 %r8 1
	j	fbl_cont.23587
fbl_else.23586 :
	addi	%r0 %r8 0
fbl_cont.23587 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23588
	addi	%r0 %r8 0
	j	be_cont.23589
be_else.23588 :
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.23590
	neg.s	%f4 %f4
	j	fbl_cont.23591
fbl_else.23590 :
fbl_cont.23591 :
	lw	%r6 %r8 16
	lw.s	%r8 %f5 8
	fbge	%f4 %f5 fbl_else.23592
	addi	%r0 %r8 1
	j	fbl_cont.23593
fbl_else.23592 :
	addi	%r0 %r8 0
fbl_cont.23593 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23594
	addi	%r0 %r8 0
	j	be_cont.23595
be_else.23594 :
	lw.s	%r7 %f4 12
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f5 0
	fbne	%f4 %f5 fbe_else.23596
	addi	%r0 %r8 1
	j	fbe_cont.23597
fbe_else.23596 :
	addi	%r0 %r8 0
fbe_cont.23597 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23598
	addi	%r0 %r8 1
	j	be_cont.23599
be_else.23598 :
	addi	%r0 %r8 0
be_cont.23599 :
be_cont.23595 :
be_cont.23589 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23600
	lw.s	%r7 %f3 16
	sub.s	%f2 %f3 %f2
	lw.s	%r7 %f3 20
	mul.s	%f3 %f2 %f2
	lw.s	%r3 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f3 0
	fbge	%f0 %f3 fbl_else.23602
	neg.s	%f0 %f0
	j	fbl_cont.23603
fbl_else.23602 :
fbl_cont.23603 :
	lw	%r6 %r8 16
	lw.s	%r8 %f3 0
	fbge	%f0 %f3 fbl_else.23604
	addi	%r0 %r8 1
	j	fbl_cont.23605
fbl_else.23604 :
	addi	%r0 %r8 0
fbl_cont.23605 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23606
	addi	%r0 %r3 0
	j	be_cont.23607
be_else.23606 :
	lw.s	%r3 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.23608
	neg.s	%f0 %f0
	j	fbl_cont.23609
fbl_else.23608 :
fbl_cont.23609 :
	lw	%r6 %r3 16
	lw.s	%r3 %f1 4
	fbge	%f0 %f1 fbl_else.23610
	addi	%r0 %r3 1
	j	fbl_cont.23611
fbl_else.23610 :
	addi	%r0 %r3 0
fbl_cont.23611 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23612
	addi	%r0 %r3 0
	j	be_cont.23613
be_else.23612 :
	lw.s	%r7 %f0 20
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbe_else.23614
	addi	%r0 %r3 1
	j	fbe_cont.23615
fbe_else.23614 :
	addi	%r0 %r3 0
fbe_cont.23615 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23616
	addi	%r0 %r3 1
	j	be_cont.23617
be_else.23616 :
	addi	%r0 %r3 0
be_cont.23617 :
be_cont.23613 :
be_cont.23607 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23618
	addi	%r0 %r3 0
	j	be_cont.23619
be_else.23618 :
	sw.s	%r4 %f2 0
	addi	%r0 %r3 3
be_cont.23619 :
	j	be_cont.23601
be_else.23600 :
	sw.s	%r4 %f3 0
	addi	%r0 %r3 2
be_cont.23601 :
	j	be_cont.23583
be_else.23582 :
	sw.s	%r4 %f3 0
	addi	%r0 %r3 1
be_cont.23583 :
	j	be_cont.23565
be_else.23564 :
	addi	%r0 %r25 2
	bne	%r8 %r25 be_else.23620
	lw.s	%r7 %f3 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f4 0
	fbge	%f3 %f4 fbl_else.23622
	addi	%r0 %r3 1
	j	fbl_cont.23623
fbl_else.23622 :
	addi	%r0 %r3 0
fbl_cont.23623 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23624
	addi	%r0 %r3 0
	j	be_cont.23625
be_else.23624 :
	lw.s	%r7 %f3 4
	mul.s	%f0 %f3 %f0
	lw.s	%r7 %f3 8
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r7 %f1 12
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
	addi	%r0 %r3 1
be_cont.23625 :
	j	be_cont.23621
be_else.23620 :
	lw.s	%r7 %f3 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f4 0
	fbne	%f3 %f4 fbe_else.23626
	addi	%r0 %r3 1
	j	fbe_cont.23627
fbe_else.23626 :
	addi	%r0 %r3 0
fbe_cont.23627 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23628
	lw.s	%r7 %f4 4
	mul.s	%f0 %f4 %f4
	lw.s	%r7 %f5 8
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f4 %f4
	lw.s	%r7 %f5 12
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f4 %f4
	mul.s	%f0 %f0 %f5
	lw	%r6 %r3 16
	lw.s	%r3 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r6 %r3 16
	lw.s	%r3 %f7 4
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r6 %r3 16
	lw.s	%r3 %f7 8
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r6 %r3 12
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23630
	mov.s	%f5 %f0
	j	be_cont.23631
be_else.23630 :
	mul.s	%f2 %f1 %f6
	lw	%r6 %r3 36
	lw.s	%r3 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r6 %r3 36
	lw.s	%r3 %f6 4
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r6 %r3 36
	lw.s	%r3 %f1 8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
be_cont.23631 :
	lw	%r6 %r3 4
	addi	%r0 %r25 3
	bne	%r3 %r25 be_else.23632
	addi	%r0 %r3 l.20063
	ilw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	j	be_cont.23633
be_else.23632 :
be_cont.23633 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f1 0
	fbge	%f1 %f0 fbl_else.23634
	addi	%r0 %r3 1
	j	fbl_cont.23635
fbl_else.23634 :
	addi	%r0 %r3 0
fbl_cont.23635 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23636
	addi	%r0 %r3 0
	j	be_cont.23637
be_else.23636 :
	lw	%r6 %r3 24
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23638
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f0
	lw.s	%r7 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
	j	be_cont.23639
be_else.23638 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f0
	lw.s	%r7 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
be_cont.23639 :
	addi	%r0 %r3 1
be_cont.23637 :
	j	be_cont.23629
be_else.23628 :
	addi	%r0 %r3 0
be_cont.23629 :
be_cont.23621 :
be_cont.23565 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23640
	addi	%r0 %r1 0
	j	be_cont.23641
be_else.23640 :
	lw.s	%r4 %f0 0
	addi	%r0 %r3 l.20495
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.23642
	addi	%r0 %r3 1
	j	fbl_cont.23643
fbl_else.23642 :
	addi	%r0 %r3 0
fbl_cont.23643 :
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.23644
	addi	%r0 %r1 0
	j	be_cont.23645
be_else.23644 :
	addi	%r0 %r3 1
	mov	%r9 %r2
	mov	%r3 %r1
	mov	%r5 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.23646
	addi	%r0 %r1 0
	j	be_cont.23647
be_else.23646 :
	addi	%r0 %r1 1
be_cont.23647 :
be_cont.23645 :
be_cont.23641 :
be_cont.23563 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.23648
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.23648 :
	addi	%r0 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.23649
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.23649 :
	addi	%r0 %r1 1
	retl
solve_each_element.2906 :
	lw	%r24 %r4 32
	lw	%r24 %r5 28
	lw	%r24 %r6 24
	lw	%r24 %r7 20
	lw	%r24 %r8 16
	lw	%r24 %r9 12
	lw	%r24 %r10 8
	lw	%r24 %r11 4
	addi	%r0 %r25 2
	sll	%r1 %r12 %r25
	add	%r2 %r12 %r25
	lw	%r25 %r12 0
	addi	%r0 %r25 -1
	bne	%r12 %r25 be_else.23650
	retl
be_else.23650 :
	addi	%r0 %r25 2
	sll	%r12 %r13 %r25
	add	%r7 %r13 %r25
	lw	%r25 %r13 0
	lw.s	%r5 %f0 0
	lw	%r13 %r14 20
	lw.s	%r14 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r5 %f1 4
	lw	%r13 %r14 20
	lw.s	%r14 %f2 4
	sub.s	%f2 %f1 %f1
	lw.s	%r5 %f2 8
	lw	%r13 %r14 20
	lw.s	%r14 %f3 8
	sub.s	%f3 %f2 %f2
	lw	%r13 %r14 4
	addi	%r0 %r25 1
	bne	%r14 %r25 be_else.23652
	lw.s	%r3 %f3 0
	addi	%r0 %r14 l.20095
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbe_else.23654
	addi	%r0 %r14 1
	j	fbe_cont.23655
fbe_else.23654 :
	addi	%r0 %r14 0
fbe_cont.23655 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23656
	lw	%r13 %r14 16
	lw	%r13 %r15 24
	lw.s	%r3 %f3 0
	addi	%r0 %r16 l.20095
	ilw.s	%r16 %f4 0
	fbge	%f3 %f4 fbl_else.23658
	addi	%r0 %r16 1
	j	fbl_cont.23659
fbl_else.23658 :
	addi	%r0 %r16 0
fbl_cont.23659 :
	addi	%r0 %r25 0
	bne	%r15 %r25 be_else.23660
	mov	%r16 %r15
	j	be_cont.23661
be_else.23660 :
	addi	%r0 %r25 0
	bne	%r16 %r25 be_else.23662
	addi	%r0 %r15 1
	j	be_cont.23663
be_else.23662 :
	addi	%r0 %r15 0
be_cont.23663 :
be_cont.23661 :
	lw.s	%r14 %f3 0
	addi	%r0 %r25 0
	bne	%r15 %r25 be_else.23664
	neg.s	%f3 %f3
	j	be_cont.23665
be_else.23664 :
be_cont.23665 :
	sub.s	%f0 %f3 %f3
	lw.s	%r3 %f4 0
	div.s	%f4 %f3 %f3
	lw.s	%r3 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r15 l.20095
	ilw.s	%r15 %f5 0
	fbge	%f4 %f5 fbl_else.23666
	neg.s	%f4 %f4
	j	fbl_cont.23667
fbl_else.23666 :
fbl_cont.23667 :
	lw.s	%r14 %f5 4
	fbge	%f4 %f5 fbl_else.23668
	addi	%r0 %r15 1
	j	fbl_cont.23669
fbl_else.23668 :
	addi	%r0 %r15 0
fbl_cont.23669 :
	addi	%r0 %r25 0
	bne	%r15 %r25 be_else.23670
	addi	%r0 %r14 0
	j	be_cont.23671
be_else.23670 :
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r15 l.20095
	ilw.s	%r15 %f5 0
	fbge	%f4 %f5 fbl_else.23672
	neg.s	%f4 %f4
	j	fbl_cont.23673
fbl_else.23672 :
fbl_cont.23673 :
	lw.s	%r14 %f5 8
	fbge	%f4 %f5 fbl_else.23674
	addi	%r0 %r14 1
	j	fbl_cont.23675
fbl_else.23674 :
	addi	%r0 %r14 0
fbl_cont.23675 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23676
	addi	%r0 %r14 0
	j	be_cont.23677
be_else.23676 :
	sw.s	%r6 %f3 0
	addi	%r0 %r14 1
be_cont.23677 :
be_cont.23671 :
	j	be_cont.23657
be_else.23656 :
	addi	%r0 %r14 0
be_cont.23657 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23678
	lw.s	%r3 %f3 4
	addi	%r0 %r14 l.20095
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbe_else.23680
	addi	%r0 %r14 1
	j	fbe_cont.23681
fbe_else.23680 :
	addi	%r0 %r14 0
fbe_cont.23681 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23682
	lw	%r13 %r14 16
	lw	%r13 %r15 24
	lw.s	%r3 %f3 4
	addi	%r0 %r16 l.20095
	ilw.s	%r16 %f4 0
	fbge	%f3 %f4 fbl_else.23684
	addi	%r0 %r16 1
	j	fbl_cont.23685
fbl_else.23684 :
	addi	%r0 %r16 0
fbl_cont.23685 :
	addi	%r0 %r25 0
	bne	%r15 %r25 be_else.23686
	mov	%r16 %r15
	j	be_cont.23687
be_else.23686 :
	addi	%r0 %r25 0
	bne	%r16 %r25 be_else.23688
	addi	%r0 %r15 1
	j	be_cont.23689
be_else.23688 :
	addi	%r0 %r15 0
be_cont.23689 :
be_cont.23687 :
	lw.s	%r14 %f3 4
	addi	%r0 %r25 0
	bne	%r15 %r25 be_else.23690
	neg.s	%f3 %f3
	j	be_cont.23691
be_else.23690 :
be_cont.23691 :
	sub.s	%f1 %f3 %f3
	lw.s	%r3 %f4 4
	div.s	%f4 %f3 %f3
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r15 l.20095
	ilw.s	%r15 %f5 0
	fbge	%f4 %f5 fbl_else.23692
	neg.s	%f4 %f4
	j	fbl_cont.23693
fbl_else.23692 :
fbl_cont.23693 :
	lw.s	%r14 %f5 8
	fbge	%f4 %f5 fbl_else.23694
	addi	%r0 %r15 1
	j	fbl_cont.23695
fbl_else.23694 :
	addi	%r0 %r15 0
fbl_cont.23695 :
	addi	%r0 %r25 0
	bne	%r15 %r25 be_else.23696
	addi	%r0 %r14 0
	j	be_cont.23697
be_else.23696 :
	lw.s	%r3 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r15 l.20095
	ilw.s	%r15 %f5 0
	fbge	%f4 %f5 fbl_else.23698
	neg.s	%f4 %f4
	j	fbl_cont.23699
fbl_else.23698 :
fbl_cont.23699 :
	lw.s	%r14 %f5 0
	fbge	%f4 %f5 fbl_else.23700
	addi	%r0 %r14 1
	j	fbl_cont.23701
fbl_else.23700 :
	addi	%r0 %r14 0
fbl_cont.23701 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23702
	addi	%r0 %r14 0
	j	be_cont.23703
be_else.23702 :
	sw.s	%r6 %f3 0
	addi	%r0 %r14 1
be_cont.23703 :
be_cont.23697 :
	j	be_cont.23683
be_else.23682 :
	addi	%r0 %r14 0
be_cont.23683 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23704
	lw.s	%r3 %f3 8
	addi	%r0 %r14 l.20095
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbe_else.23706
	addi	%r0 %r14 1
	j	fbe_cont.23707
fbe_else.23706 :
	addi	%r0 %r14 0
fbe_cont.23707 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23708
	lw	%r13 %r14 16
	lw	%r13 %r13 24
	lw.s	%r3 %f3 8
	addi	%r0 %r15 l.20095
	ilw.s	%r15 %f4 0
	fbge	%f3 %f4 fbl_else.23710
	addi	%r0 %r15 1
	j	fbl_cont.23711
fbl_else.23710 :
	addi	%r0 %r15 0
fbl_cont.23711 :
	addi	%r0 %r25 0
	bne	%r13 %r25 be_else.23712
	mov	%r15 %r13
	j	be_cont.23713
be_else.23712 :
	addi	%r0 %r25 0
	bne	%r15 %r25 be_else.23714
	addi	%r0 %r13 1
	j	be_cont.23715
be_else.23714 :
	addi	%r0 %r13 0
be_cont.23715 :
be_cont.23713 :
	lw.s	%r14 %f3 8
	addi	%r0 %r25 0
	bne	%r13 %r25 be_else.23716
	neg.s	%f3 %f3
	j	be_cont.23717
be_else.23716 :
be_cont.23717 :
	sub.s	%f2 %f3 %f2
	lw.s	%r3 %f3 8
	div.s	%f3 %f2 %f2
	lw.s	%r3 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r13 l.20095
	ilw.s	%r13 %f3 0
	fbge	%f0 %f3 fbl_else.23718
	neg.s	%f0 %f0
	j	fbl_cont.23719
fbl_else.23718 :
fbl_cont.23719 :
	lw.s	%r14 %f3 0
	fbge	%f0 %f3 fbl_else.23720
	addi	%r0 %r13 1
	j	fbl_cont.23721
fbl_else.23720 :
	addi	%r0 %r13 0
fbl_cont.23721 :
	addi	%r0 %r25 0
	bne	%r13 %r25 be_else.23722
	addi	%r0 %r13 0
	j	be_cont.23723
be_else.23722 :
	lw.s	%r3 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r13 l.20095
	ilw.s	%r13 %f1 0
	fbge	%f0 %f1 fbl_else.23724
	neg.s	%f0 %f0
	j	fbl_cont.23725
fbl_else.23724 :
fbl_cont.23725 :
	lw.s	%r14 %f1 4
	fbge	%f0 %f1 fbl_else.23726
	addi	%r0 %r13 1
	j	fbl_cont.23727
fbl_else.23726 :
	addi	%r0 %r13 0
fbl_cont.23727 :
	addi	%r0 %r25 0
	bne	%r13 %r25 be_else.23728
	addi	%r0 %r13 0
	j	be_cont.23729
be_else.23728 :
	sw.s	%r6 %f2 0
	addi	%r0 %r13 1
be_cont.23729 :
be_cont.23723 :
	j	be_cont.23709
be_else.23708 :
	addi	%r0 %r13 0
be_cont.23709 :
	addi	%r0 %r25 0
	bne	%r13 %r25 be_else.23730
	addi	%r0 %r13 0
	j	be_cont.23731
be_else.23730 :
	addi	%r0 %r13 3
be_cont.23731 :
	j	be_cont.23705
be_else.23704 :
	addi	%r0 %r13 2
be_cont.23705 :
	j	be_cont.23679
be_else.23678 :
	addi	%r0 %r13 1
be_cont.23679 :
	j	be_cont.23653
be_else.23652 :
	addi	%r0 %r25 2
	bne	%r14 %r25 be_else.23732
	lw	%r13 %r13 16
	lw.s	%r3 %f3 0
	lw.s	%r13 %f4 0
	mul.s	%f4 %f3 %f3
	lw.s	%r3 %f4 4
	lw.s	%r13 %f5 4
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	lw.s	%r3 %f4 8
	lw.s	%r13 %f5 8
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r14 l.20095
	ilw.s	%r14 %f4 0
	fbge	%f4 %f3 fbl_else.23734
	addi	%r0 %r14 1
	j	fbl_cont.23735
fbl_else.23734 :
	addi	%r0 %r14 0
fbl_cont.23735 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23736
	addi	%r0 %r13 0
	j	be_cont.23737
be_else.23736 :
	lw.s	%r13 %f4 0
	mul.s	%f0 %f4 %f0
	lw.s	%r13 %f4 4
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r13 %f1 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f3 %f0 %f0
	sw.s	%r6 %f0 0
	addi	%r0 %r13 1
be_cont.23737 :
	j	be_cont.23733
be_else.23732 :
	lw.s	%r3 %f3 0
	lw.s	%r3 %f4 4
	lw.s	%r3 %f5 8
	mul.s	%f3 %f3 %f6
	lw	%r13 %r14 16
	lw.s	%r14 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r13 %r14 16
	lw.s	%r14 %f8 4
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r13 %r14 16
	lw.s	%r14 %f8 8
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	lw	%r13 %r14 12
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23738
	mov.s	%f6 %f3
	j	be_cont.23739
be_else.23738 :
	mul.s	%f5 %f4 %f7
	lw	%r13 %r14 36
	lw.s	%r14 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r13 %r14 36
	lw.s	%r14 %f7 4
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r13 %r14 36
	lw.s	%r14 %f4 8
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
be_cont.23739 :
	addi	%r0 %r14 l.20095
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbe_else.23740
	addi	%r0 %r14 1
	j	fbe_cont.23741
fbe_else.23740 :
	addi	%r0 %r14 0
fbe_cont.23741 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23742
	lw.s	%r3 %f4 0
	lw.s	%r3 %f5 4
	lw.s	%r3 %f6 8
	mul.s	%f0 %f4 %f7
	lw	%r13 %r14 16
	lw.s	%r14 %f8 0
	mul.s	%f8 %f7 %f7
	mul.s	%f1 %f5 %f8
	lw	%r13 %r14 16
	lw.s	%r14 %f9 4
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	mul.s	%f2 %f6 %f8
	lw	%r13 %r14 16
	lw.s	%r14 %f9 8
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	lw	%r13 %r14 12
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23744
	mov.s	%f7 %f4
	j	be_cont.23745
be_else.23744 :
	mul.s	%f1 %f6 %f8
	mul.s	%f2 %f5 %f9
	add.s	%f9 %f8 %f8
	lw	%r13 %r14 36
	lw.s	%r14 %f9 0
	mul.s	%f9 %f8 %f8
	mul.s	%f2 %f4 %f9
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f9 %f6
	lw	%r13 %r14 36
	lw.s	%r14 %f9 4
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f8 %f6
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f4 %f4
	lw	%r13 %r14 36
	lw.s	%r14 %f5 8
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	addi	%r0 %r14 l.20187
	ilw.s	%r14 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f7 %f4
be_cont.23745 :
	mul.s	%f0 %f0 %f5
	lw	%r13 %r14 16
	lw.s	%r14 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r13 %r14 16
	lw.s	%r14 %f7 4
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r13 %r14 16
	lw.s	%r14 %f7 8
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r13 %r14 12
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23746
	mov.s	%f5 %f0
	j	be_cont.23747
be_else.23746 :
	mul.s	%f2 %f1 %f6
	lw	%r13 %r14 36
	lw.s	%r14 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r13 %r14 36
	lw.s	%r14 %f6 4
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r13 %r14 36
	lw.s	%r14 %f1 8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
be_cont.23747 :
	lw	%r13 %r14 4
	addi	%r0 %r25 3
	bne	%r14 %r25 be_else.23748
	addi	%r0 %r14 l.20063
	ilw.s	%r14 %f1 0
	sub.s	%f1 %f0 %f0
	j	be_cont.23749
be_else.23748 :
be_cont.23749 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r14 l.20095
	ilw.s	%r14 %f1 0
	fbge	%f1 %f0 fbl_else.23750
	addi	%r0 %r14 1
	j	fbl_cont.23751
fbl_else.23750 :
	addi	%r0 %r14 0
fbl_cont.23751 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23752
	addi	%r0 %r13 0
	j	be_cont.23753
be_else.23752 :
	sqrt.s	%f0 %f0
	lw	%r13 %r13 24
	addi	%r0 %r25 0
	bne	%r13 %r25 be_else.23754
	neg.s	%f0 %f0
	j	be_cont.23755
be_else.23754 :
be_cont.23755 :
	sub.s	%f4 %f0 %f0
	div.s	%f3 %f0 %f0
	sw.s	%r6 %f0 0
	addi	%r0 %r13 1
be_cont.23753 :
	j	be_cont.23743
be_else.23742 :
	addi	%r0 %r13 0
be_cont.23743 :
be_cont.23733 :
be_cont.23653 :
	addi	%r0 %r25 0
	bne	%r13 %r25 be_else.23756
	addi	%r0 %r25 2
	sll	%r12 %r4 %r25
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	lw	%r4 %r4 24
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23757
	retl
be_else.23757 :
	addi	%r1 %r1 1
	lw	%r24 %r23 0
	jr	%r23
be_else.23756 :
	lw.s	%r6 %f0 0
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f1 0
	fbge	%f1 %f0 fbl_else.23759
	addi	%r0 %r6 1
	j	fbl_cont.23760
fbl_else.23759 :
	addi	%r0 %r6 0
fbl_cont.23760 :
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	addi	%r0 %r25 0
	bne	%r6 %r25 be_else.23761
	j	be_cont.23762
be_else.23761 :
	lw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.23763
	addi	%r0 %r6 1
	j	fbl_cont.23764
fbl_else.23763 :
	addi	%r0 %r6 0
fbl_cont.23764 :
	addi	%r0 %r25 0
	bne	%r6 %r25 be_else.23765
	j	be_cont.23766
be_else.23765 :
	addi	%r0 %r6 l.20417
	ilw.s	%r6 %f1 0
	add.s	%f1 %f0 %f0
	lw.s	%r3 %f1 0
	mul.s	%f0 %f1 %f1
	lw.s	%r5 %f2 0
	add.s	%f2 %f1 %f1
	lw.s	%r3 %f2 4
	mul.s	%f0 %f2 %f2
	lw.s	%r5 %f3 4
	add.s	%f3 %f2 %f2
	lw.s	%r3 %f3 8
	mul.s	%f0 %f3 %f3
	lw.s	%r5 %f4 8
	add.s	%f4 %f3 %f3
	addi	%r0 %r5 0
	sw	%r26 %r8 16
	sw	%r26 %r13 20
	sw	%r26 %r10 24
	sw	%r26 %r12 28
	sw.s	%r26 %f3 32
	sw.s	%r26 %f2 40
	sw	%r26 %r9 48
	sw.s	%r26 %f1 56
	sw	%r26 %r4 64
	sw.s	%r26 %f0 72
	mov	%r5 %r1
	mov	%r11 %r24
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 84
	lw	%r24 %r23 0
	addi	%r26 %r26 88	
	jalr	%r23
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.23769
	j	be_cont.23770
be_else.23769 :
	lw	%r26 %r1 64
	lw.s	%r26 %f0 72
	sw.s	%r1 %f0 0
	lw	%r26 %r1 48
	lw.s	%r26 %f0 56
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 40
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 32
	sw.s	%r1 %f0 8
	lw	%r26 %r1 24
	lw	%r26 %r2 28
	sw	%r1 %r2 0
	lw	%r26 %r1 16
	lw	%r26 %r2 20
	sw	%r1 %r2 0
be_cont.23770 :
be_cont.23766 :
be_cont.23762 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network.2910 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	add	%r2 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r25 -1
	bne	%r6 %r25 be_else.23771
	retl
be_else.23771 :
	addi	%r0 %r25 2
	sll	%r6 %r6 %r25
	add	%r5 %r6 %r25
	lw	%r25 %r5 0
	addi	%r0 %r6 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	mov	%r5 %r2
	mov	%r6 %r1
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
trace_or_matrix.2914 :
	lw	%r24 %r4 20
	lw	%r24 %r5 16
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	addi	%r0 %r25 2
	sll	%r1 %r9 %r25
	add	%r2 %r9 %r25
	lw	%r25 %r9 0
	lw	%r9 %r10 0
	addi	%r0 %r25 -1
	bne	%r10 %r25 be_else.23773
	retl
be_else.23773 :
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	addi	%r0 %r25 99
	bne	%r10 %r25 be_else.23775
	addi	%r0 %r4 1
	mov	%r9 %r2
	mov	%r4 %r1
	mov	%r7 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	be_cont.23776
be_else.23775 :
	addi	%r0 %r25 2
	sll	%r10 %r10 %r25
	add	%r8 %r10 %r25
	lw	%r25 %r8 0
	lw.s	%r5 %f0 0
	lw	%r8 %r10 20
	lw.s	%r10 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r5 %f1 4
	lw	%r8 %r10 20
	lw.s	%r10 %f2 4
	sub.s	%f2 %f1 %f1
	lw.s	%r5 %f2 8
	lw	%r8 %r5 20
	lw.s	%r5 %f3 8
	sub.s	%f3 %f2 %f2
	lw	%r8 %r5 4
	addi	%r0 %r25 1
	bne	%r5 %r25 be_else.23777
	lw.s	%r3 %f3 0
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f4 0
	fbne	%f3 %f4 fbe_else.23779
	addi	%r0 %r5 1
	j	fbe_cont.23780
fbe_else.23779 :
	addi	%r0 %r5 0
fbe_cont.23780 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23781
	lw	%r8 %r5 16
	lw	%r8 %r10 24
	lw.s	%r3 %f3 0
	addi	%r0 %r11 l.20095
	ilw.s	%r11 %f4 0
	fbge	%f3 %f4 fbl_else.23783
	addi	%r0 %r11 1
	j	fbl_cont.23784
fbl_else.23783 :
	addi	%r0 %r11 0
fbl_cont.23784 :
	addi	%r0 %r25 0
	bne	%r10 %r25 be_else.23785
	mov	%r11 %r10
	j	be_cont.23786
be_else.23785 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.23787
	addi	%r0 %r10 1
	j	be_cont.23788
be_else.23787 :
	addi	%r0 %r10 0
be_cont.23788 :
be_cont.23786 :
	lw.s	%r5 %f3 0
	addi	%r0 %r25 0
	bne	%r10 %r25 be_else.23789
	neg.s	%f3 %f3
	j	be_cont.23790
be_else.23789 :
be_cont.23790 :
	sub.s	%f0 %f3 %f3
	lw.s	%r3 %f4 0
	div.s	%f4 %f3 %f3
	lw.s	%r3 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r10 l.20095
	ilw.s	%r10 %f5 0
	fbge	%f4 %f5 fbl_else.23791
	neg.s	%f4 %f4
	j	fbl_cont.23792
fbl_else.23791 :
fbl_cont.23792 :
	lw.s	%r5 %f5 4
	fbge	%f4 %f5 fbl_else.23793
	addi	%r0 %r10 1
	j	fbl_cont.23794
fbl_else.23793 :
	addi	%r0 %r10 0
fbl_cont.23794 :
	addi	%r0 %r25 0
	bne	%r10 %r25 be_else.23795
	addi	%r0 %r5 0
	j	be_cont.23796
be_else.23795 :
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r10 l.20095
	ilw.s	%r10 %f5 0
	fbge	%f4 %f5 fbl_else.23797
	neg.s	%f4 %f4
	j	fbl_cont.23798
fbl_else.23797 :
fbl_cont.23798 :
	lw.s	%r5 %f5 8
	fbge	%f4 %f5 fbl_else.23799
	addi	%r0 %r5 1
	j	fbl_cont.23800
fbl_else.23799 :
	addi	%r0 %r5 0
fbl_cont.23800 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23801
	addi	%r0 %r5 0
	j	be_cont.23802
be_else.23801 :
	sw.s	%r6 %f3 0
	addi	%r0 %r5 1
be_cont.23802 :
be_cont.23796 :
	j	be_cont.23782
be_else.23781 :
	addi	%r0 %r5 0
be_cont.23782 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23803
	lw.s	%r3 %f3 4
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f4 0
	fbne	%f3 %f4 fbe_else.23805
	addi	%r0 %r5 1
	j	fbe_cont.23806
fbe_else.23805 :
	addi	%r0 %r5 0
fbe_cont.23806 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23807
	lw	%r8 %r5 16
	lw	%r8 %r10 24
	lw.s	%r3 %f3 4
	addi	%r0 %r11 l.20095
	ilw.s	%r11 %f4 0
	fbge	%f3 %f4 fbl_else.23809
	addi	%r0 %r11 1
	j	fbl_cont.23810
fbl_else.23809 :
	addi	%r0 %r11 0
fbl_cont.23810 :
	addi	%r0 %r25 0
	bne	%r10 %r25 be_else.23811
	mov	%r11 %r10
	j	be_cont.23812
be_else.23811 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.23813
	addi	%r0 %r10 1
	j	be_cont.23814
be_else.23813 :
	addi	%r0 %r10 0
be_cont.23814 :
be_cont.23812 :
	lw.s	%r5 %f3 4
	addi	%r0 %r25 0
	bne	%r10 %r25 be_else.23815
	neg.s	%f3 %f3
	j	be_cont.23816
be_else.23815 :
be_cont.23816 :
	sub.s	%f1 %f3 %f3
	lw.s	%r3 %f4 4
	div.s	%f4 %f3 %f3
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r10 l.20095
	ilw.s	%r10 %f5 0
	fbge	%f4 %f5 fbl_else.23817
	neg.s	%f4 %f4
	j	fbl_cont.23818
fbl_else.23817 :
fbl_cont.23818 :
	lw.s	%r5 %f5 8
	fbge	%f4 %f5 fbl_else.23819
	addi	%r0 %r10 1
	j	fbl_cont.23820
fbl_else.23819 :
	addi	%r0 %r10 0
fbl_cont.23820 :
	addi	%r0 %r25 0
	bne	%r10 %r25 be_else.23821
	addi	%r0 %r5 0
	j	be_cont.23822
be_else.23821 :
	lw.s	%r3 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r10 l.20095
	ilw.s	%r10 %f5 0
	fbge	%f4 %f5 fbl_else.23823
	neg.s	%f4 %f4
	j	fbl_cont.23824
fbl_else.23823 :
fbl_cont.23824 :
	lw.s	%r5 %f5 0
	fbge	%f4 %f5 fbl_else.23825
	addi	%r0 %r5 1
	j	fbl_cont.23826
fbl_else.23825 :
	addi	%r0 %r5 0
fbl_cont.23826 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23827
	addi	%r0 %r5 0
	j	be_cont.23828
be_else.23827 :
	sw.s	%r6 %f3 0
	addi	%r0 %r5 1
be_cont.23828 :
be_cont.23822 :
	j	be_cont.23808
be_else.23807 :
	addi	%r0 %r5 0
be_cont.23808 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23829
	lw.s	%r3 %f3 8
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f4 0
	fbne	%f3 %f4 fbe_else.23831
	addi	%r0 %r5 1
	j	fbe_cont.23832
fbe_else.23831 :
	addi	%r0 %r5 0
fbe_cont.23832 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23833
	lw	%r8 %r5 16
	lw	%r8 %r8 24
	lw.s	%r3 %f3 8
	addi	%r0 %r10 l.20095
	ilw.s	%r10 %f4 0
	fbge	%f3 %f4 fbl_else.23835
	addi	%r0 %r10 1
	j	fbl_cont.23836
fbl_else.23835 :
	addi	%r0 %r10 0
fbl_cont.23836 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23837
	mov	%r10 %r8
	j	be_cont.23838
be_else.23837 :
	addi	%r0 %r25 0
	bne	%r10 %r25 be_else.23839
	addi	%r0 %r8 1
	j	be_cont.23840
be_else.23839 :
	addi	%r0 %r8 0
be_cont.23840 :
be_cont.23838 :
	lw.s	%r5 %f3 8
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23841
	neg.s	%f3 %f3
	j	be_cont.23842
be_else.23841 :
be_cont.23842 :
	sub.s	%f2 %f3 %f2
	lw.s	%r3 %f3 8
	div.s	%f3 %f2 %f2
	lw.s	%r3 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f3 0
	fbge	%f0 %f3 fbl_else.23843
	neg.s	%f0 %f0
	j	fbl_cont.23844
fbl_else.23843 :
fbl_cont.23844 :
	lw.s	%r5 %f3 0
	fbge	%f0 %f3 fbl_else.23845
	addi	%r0 %r8 1
	j	fbl_cont.23846
fbl_else.23845 :
	addi	%r0 %r8 0
fbl_cont.23846 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23847
	addi	%r0 %r5 0
	j	be_cont.23848
be_else.23847 :
	lw.s	%r3 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f1 0
	fbge	%f0 %f1 fbl_else.23849
	neg.s	%f0 %f0
	j	fbl_cont.23850
fbl_else.23849 :
fbl_cont.23850 :
	lw.s	%r5 %f1 4
	fbge	%f0 %f1 fbl_else.23851
	addi	%r0 %r5 1
	j	fbl_cont.23852
fbl_else.23851 :
	addi	%r0 %r5 0
fbl_cont.23852 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23853
	addi	%r0 %r5 0
	j	be_cont.23854
be_else.23853 :
	sw.s	%r6 %f2 0
	addi	%r0 %r5 1
be_cont.23854 :
be_cont.23848 :
	j	be_cont.23834
be_else.23833 :
	addi	%r0 %r5 0
be_cont.23834 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23855
	addi	%r0 %r5 0
	j	be_cont.23856
be_else.23855 :
	addi	%r0 %r5 3
be_cont.23856 :
	j	be_cont.23830
be_else.23829 :
	addi	%r0 %r5 2
be_cont.23830 :
	j	be_cont.23804
be_else.23803 :
	addi	%r0 %r5 1
be_cont.23804 :
	j	be_cont.23778
be_else.23777 :
	addi	%r0 %r25 2
	bne	%r5 %r25 be_else.23857
	lw	%r8 %r5 16
	lw.s	%r3 %f3 0
	lw.s	%r5 %f4 0
	mul.s	%f4 %f3 %f3
	lw.s	%r3 %f4 4
	lw.s	%r5 %f5 4
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	lw.s	%r3 %f4 8
	lw.s	%r5 %f5 8
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f4 0
	fbge	%f4 %f3 fbl_else.23859
	addi	%r0 %r8 1
	j	fbl_cont.23860
fbl_else.23859 :
	addi	%r0 %r8 0
fbl_cont.23860 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.23861
	addi	%r0 %r5 0
	j	be_cont.23862
be_else.23861 :
	lw.s	%r5 %f4 0
	mul.s	%f0 %f4 %f0
	lw.s	%r5 %f4 4
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r5 %f1 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f3 %f0 %f0
	sw.s	%r6 %f0 0
	addi	%r0 %r5 1
be_cont.23862 :
	j	be_cont.23858
be_else.23857 :
	lw.s	%r3 %f3 0
	lw.s	%r3 %f4 4
	lw.s	%r3 %f5 8
	mul.s	%f3 %f3 %f6
	lw	%r8 %r5 16
	lw.s	%r5 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r8 %r5 16
	lw.s	%r5 %f8 4
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r8 %r5 16
	lw.s	%r5 %f8 8
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	lw	%r8 %r5 12
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23863
	mov.s	%f6 %f3
	j	be_cont.23864
be_else.23863 :
	mul.s	%f5 %f4 %f7
	lw	%r8 %r5 36
	lw.s	%r5 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r8 %r5 36
	lw.s	%r5 %f7 4
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r8 %r5 36
	lw.s	%r5 %f4 8
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
be_cont.23864 :
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f4 0
	fbne	%f3 %f4 fbe_else.23865
	addi	%r0 %r5 1
	j	fbe_cont.23866
fbe_else.23865 :
	addi	%r0 %r5 0
fbe_cont.23866 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23867
	lw.s	%r3 %f4 0
	lw.s	%r3 %f5 4
	lw.s	%r3 %f6 8
	mul.s	%f0 %f4 %f7
	lw	%r8 %r5 16
	lw.s	%r5 %f8 0
	mul.s	%f8 %f7 %f7
	mul.s	%f1 %f5 %f8
	lw	%r8 %r5 16
	lw.s	%r5 %f9 4
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	mul.s	%f2 %f6 %f8
	lw	%r8 %r5 16
	lw.s	%r5 %f9 8
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	lw	%r8 %r5 12
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23869
	mov.s	%f7 %f4
	j	be_cont.23870
be_else.23869 :
	mul.s	%f1 %f6 %f8
	mul.s	%f2 %f5 %f9
	add.s	%f9 %f8 %f8
	lw	%r8 %r5 36
	lw.s	%r5 %f9 0
	mul.s	%f9 %f8 %f8
	mul.s	%f2 %f4 %f9
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f9 %f6
	lw	%r8 %r5 36
	lw.s	%r5 %f9 4
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f8 %f6
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f4 %f4
	lw	%r8 %r5 36
	lw.s	%r5 %f5 8
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	addi	%r0 %r5 l.20187
	ilw.s	%r5 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f7 %f4
be_cont.23870 :
	mul.s	%f0 %f0 %f5
	lw	%r8 %r5 16
	lw.s	%r5 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r8 %r5 16
	lw.s	%r5 %f7 4
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r8 %r5 16
	lw.s	%r5 %f7 8
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r8 %r5 12
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23871
	mov.s	%f5 %f0
	j	be_cont.23872
be_else.23871 :
	mul.s	%f2 %f1 %f6
	lw	%r8 %r5 36
	lw.s	%r5 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r8 %r5 36
	lw.s	%r5 %f6 4
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r8 %r5 36
	lw.s	%r5 %f1 8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
be_cont.23872 :
	lw	%r8 %r5 4
	addi	%r0 %r25 3
	bne	%r5 %r25 be_else.23873
	addi	%r0 %r5 l.20063
	ilw.s	%r5 %f1 0
	sub.s	%f1 %f0 %f0
	j	be_cont.23874
be_else.23873 :
be_cont.23874 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.23875
	addi	%r0 %r5 1
	j	fbl_cont.23876
fbl_else.23875 :
	addi	%r0 %r5 0
fbl_cont.23876 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23877
	addi	%r0 %r5 0
	j	be_cont.23878
be_else.23877 :
	sqrt.s	%f0 %f0
	lw	%r8 %r5 24
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23879
	neg.s	%f0 %f0
	j	be_cont.23880
be_else.23879 :
be_cont.23880 :
	sub.s	%f4 %f0 %f0
	div.s	%f3 %f0 %f0
	sw.s	%r6 %f0 0
	addi	%r0 %r5 1
be_cont.23878 :
	j	be_cont.23868
be_else.23867 :
	addi	%r0 %r5 0
be_cont.23868 :
be_cont.23858 :
be_cont.23778 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.23881
	j	be_cont.23882
be_else.23881 :
	lw.s	%r6 %f0 0
	lw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.23883
	addi	%r0 %r4 1
	j	fbl_cont.23884
fbl_else.23883 :
	addi	%r0 %r4 0
fbl_cont.23884 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23885
	j	be_cont.23886
be_else.23885 :
	addi	%r0 %r4 1
	mov	%r9 %r2
	mov	%r4 %r1
	mov	%r7 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
be_cont.23886 :
be_cont.23882 :
be_cont.23776 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
solve_each_element_fast.2920 :
	lw	%r24 %r4 32
	lw	%r24 %r5 28
	lw	%r24 %r6 24
	lw	%r24 %r7 20
	lw	%r24 %r8 16
	lw	%r24 %r9 12
	lw	%r24 %r10 8
	lw	%r24 %r11 4
	lw	%r3 %r12 0
	addi	%r0 %r25 2
	sll	%r1 %r13 %r25
	add	%r2 %r13 %r25
	lw	%r25 %r13 0
	addi	%r0 %r25 -1
	bne	%r13 %r25 be_else.23887
	retl
be_else.23887 :
	addi	%r0 %r25 2
	sll	%r13 %r14 %r25
	add	%r7 %r14 %r25
	lw	%r25 %r14 0
	lw	%r14 %r15 40
	lw.s	%r15 %f0 0
	lw.s	%r15 %f1 4
	lw.s	%r15 %f2 8
	lw	%r3 %r16 4
	addi	%r0 %r25 2
	sll	%r13 %r17 %r25
	add	%r16 %r17 %r25
	lw	%r25 %r16 0
	lw	%r14 %r17 4
	addi	%r0 %r25 1
	bne	%r17 %r25 be_else.23889
	lw	%r3 %r15 0
	lw.s	%r16 %f3 0
	sub.s	%f0 %f3 %f3
	lw.s	%r16 %f4 4
	mul.s	%f4 %f3 %f3
	lw.s	%r15 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r17 l.20095
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.23891
	neg.s	%f4 %f4
	j	fbl_cont.23892
fbl_else.23891 :
fbl_cont.23892 :
	lw	%r14 %r17 16
	lw.s	%r17 %f5 4
	fbge	%f4 %f5 fbl_else.23893
	addi	%r0 %r17 1
	j	fbl_cont.23894
fbl_else.23893 :
	addi	%r0 %r17 0
fbl_cont.23894 :
	addi	%r0 %r25 0
	bne	%r17 %r25 be_else.23895
	addi	%r0 %r17 0
	j	be_cont.23896
be_else.23895 :
	lw.s	%r15 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r17 l.20095
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.23897
	neg.s	%f4 %f4
	j	fbl_cont.23898
fbl_else.23897 :
fbl_cont.23898 :
	lw	%r14 %r17 16
	lw.s	%r17 %f5 8
	fbge	%f4 %f5 fbl_else.23899
	addi	%r0 %r17 1
	j	fbl_cont.23900
fbl_else.23899 :
	addi	%r0 %r17 0
fbl_cont.23900 :
	addi	%r0 %r25 0
	bne	%r17 %r25 be_else.23901
	addi	%r0 %r17 0
	j	be_cont.23902
be_else.23901 :
	lw.s	%r16 %f4 4
	addi	%r0 %r17 l.20095
	ilw.s	%r17 %f5 0
	fbne	%f4 %f5 fbe_else.23903
	addi	%r0 %r17 1
	j	fbe_cont.23904
fbe_else.23903 :
	addi	%r0 %r17 0
fbe_cont.23904 :
	addi	%r0 %r25 0
	bne	%r17 %r25 be_else.23905
	addi	%r0 %r17 1
	j	be_cont.23906
be_else.23905 :
	addi	%r0 %r17 0
be_cont.23906 :
be_cont.23902 :
be_cont.23896 :
	addi	%r0 %r25 0
	bne	%r17 %r25 be_else.23907
	lw.s	%r16 %f3 8
	sub.s	%f1 %f3 %f3
	lw.s	%r16 %f4 12
	mul.s	%f4 %f3 %f3
	lw.s	%r15 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r17 l.20095
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.23909
	neg.s	%f4 %f4
	j	fbl_cont.23910
fbl_else.23909 :
fbl_cont.23910 :
	lw	%r14 %r17 16
	lw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.23911
	addi	%r0 %r17 1
	j	fbl_cont.23912
fbl_else.23911 :
	addi	%r0 %r17 0
fbl_cont.23912 :
	addi	%r0 %r25 0
	bne	%r17 %r25 be_else.23913
	addi	%r0 %r17 0
	j	be_cont.23914
be_else.23913 :
	lw.s	%r15 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r17 l.20095
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.23915
	neg.s	%f4 %f4
	j	fbl_cont.23916
fbl_else.23915 :
fbl_cont.23916 :
	lw	%r14 %r17 16
	lw.s	%r17 %f5 8
	fbge	%f4 %f5 fbl_else.23917
	addi	%r0 %r17 1
	j	fbl_cont.23918
fbl_else.23917 :
	addi	%r0 %r17 0
fbl_cont.23918 :
	addi	%r0 %r25 0
	bne	%r17 %r25 be_else.23919
	addi	%r0 %r17 0
	j	be_cont.23920
be_else.23919 :
	lw.s	%r16 %f4 12
	addi	%r0 %r17 l.20095
	ilw.s	%r17 %f5 0
	fbne	%f4 %f5 fbe_else.23921
	addi	%r0 %r17 1
	j	fbe_cont.23922
fbe_else.23921 :
	addi	%r0 %r17 0
fbe_cont.23922 :
	addi	%r0 %r25 0
	bne	%r17 %r25 be_else.23923
	addi	%r0 %r17 1
	j	be_cont.23924
be_else.23923 :
	addi	%r0 %r17 0
be_cont.23924 :
be_cont.23920 :
be_cont.23914 :
	addi	%r0 %r25 0
	bne	%r17 %r25 be_else.23925
	lw.s	%r16 %f3 16
	sub.s	%f2 %f3 %f2
	lw.s	%r16 %f3 20
	mul.s	%f3 %f2 %f2
	lw.s	%r15 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r17 l.20095
	ilw.s	%r17 %f3 0
	fbge	%f0 %f3 fbl_else.23927
	neg.s	%f0 %f0
	j	fbl_cont.23928
fbl_else.23927 :
fbl_cont.23928 :
	lw	%r14 %r17 16
	lw.s	%r17 %f3 0
	fbge	%f0 %f3 fbl_else.23929
	addi	%r0 %r17 1
	j	fbl_cont.23930
fbl_else.23929 :
	addi	%r0 %r17 0
fbl_cont.23930 :
	addi	%r0 %r25 0
	bne	%r17 %r25 be_else.23931
	addi	%r0 %r14 0
	j	be_cont.23932
be_else.23931 :
	lw.s	%r15 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r15 l.20095
	ilw.s	%r15 %f1 0
	fbge	%f0 %f1 fbl_else.23933
	neg.s	%f0 %f0
	j	fbl_cont.23934
fbl_else.23933 :
fbl_cont.23934 :
	lw	%r14 %r14 16
	lw.s	%r14 %f1 4
	fbge	%f0 %f1 fbl_else.23935
	addi	%r0 %r14 1
	j	fbl_cont.23936
fbl_else.23935 :
	addi	%r0 %r14 0
fbl_cont.23936 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23937
	addi	%r0 %r14 0
	j	be_cont.23938
be_else.23937 :
	lw.s	%r16 %f0 20
	addi	%r0 %r14 l.20095
	ilw.s	%r14 %f1 0
	fbne	%f0 %f1 fbe_else.23939
	addi	%r0 %r14 1
	j	fbe_cont.23940
fbe_else.23939 :
	addi	%r0 %r14 0
fbe_cont.23940 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23941
	addi	%r0 %r14 1
	j	be_cont.23942
be_else.23941 :
	addi	%r0 %r14 0
be_cont.23942 :
be_cont.23938 :
be_cont.23932 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23943
	addi	%r0 %r14 0
	j	be_cont.23944
be_else.23943 :
	sw.s	%r6 %f2 0
	addi	%r0 %r14 3
be_cont.23944 :
	j	be_cont.23926
be_else.23925 :
	sw.s	%r6 %f3 0
	addi	%r0 %r14 2
be_cont.23926 :
	j	be_cont.23908
be_else.23907 :
	sw.s	%r6 %f3 0
	addi	%r0 %r14 1
be_cont.23908 :
	j	be_cont.23890
be_else.23889 :
	addi	%r0 %r25 2
	bne	%r17 %r25 be_else.23945
	lw.s	%r16 %f0 0
	addi	%r0 %r14 l.20095
	ilw.s	%r14 %f1 0
	fbge	%f0 %f1 fbl_else.23947
	addi	%r0 %r14 1
	j	fbl_cont.23948
fbl_else.23947 :
	addi	%r0 %r14 0
fbl_cont.23948 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23949
	addi	%r0 %r14 0
	j	be_cont.23950
be_else.23949 :
	lw.s	%r16 %f0 0
	lw.s	%r15 %f1 12
	mul.s	%f1 %f0 %f0
	sw.s	%r6 %f0 0
	addi	%r0 %r14 1
be_cont.23950 :
	j	be_cont.23946
be_else.23945 :
	lw.s	%r16 %f3 0
	addi	%r0 %r17 l.20095
	ilw.s	%r17 %f4 0
	fbne	%f3 %f4 fbe_else.23951
	addi	%r0 %r17 1
	j	fbe_cont.23952
fbe_else.23951 :
	addi	%r0 %r17 0
fbe_cont.23952 :
	addi	%r0 %r25 0
	bne	%r17 %r25 be_else.23953
	lw.s	%r16 %f4 4
	mul.s	%f0 %f4 %f0
	lw.s	%r16 %f4 8
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r16 %f1 12
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r15 %f1 12
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f3 %f1
	sub.s	%f1 %f2 %f1
	addi	%r0 %r15 l.20095
	ilw.s	%r15 %f2 0
	fbge	%f2 %f1 fbl_else.23955
	addi	%r0 %r15 1
	j	fbl_cont.23956
fbl_else.23955 :
	addi	%r0 %r15 0
fbl_cont.23956 :
	addi	%r0 %r25 0
	bne	%r15 %r25 be_else.23957
	addi	%r0 %r14 0
	j	be_cont.23958
be_else.23957 :
	lw	%r14 %r14 24
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23959
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	lw.s	%r16 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r6 %f0 0
	j	be_cont.23960
be_else.23959 :
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r16 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r6 %f0 0
be_cont.23960 :
	addi	%r0 %r14 1
be_cont.23958 :
	j	be_cont.23954
be_else.23953 :
	addi	%r0 %r14 0
be_cont.23954 :
be_cont.23946 :
be_cont.23890 :
	addi	%r0 %r25 0
	bne	%r14 %r25 be_else.23961
	addi	%r0 %r25 2
	sll	%r13 %r4 %r25
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	lw	%r4 %r4 24
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.23962
	retl
be_else.23962 :
	addi	%r1 %r1 1
	lw	%r24 %r23 0
	jr	%r23
be_else.23961 :
	lw.s	%r6 %f0 0
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f1 0
	fbge	%f1 %f0 fbl_else.23964
	addi	%r0 %r6 1
	j	fbl_cont.23965
fbl_else.23964 :
	addi	%r0 %r6 0
fbl_cont.23965 :
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	addi	%r0 %r25 0
	bne	%r6 %r25 be_else.23966
	j	be_cont.23967
be_else.23966 :
	lw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.23968
	addi	%r0 %r6 1
	j	fbl_cont.23969
fbl_else.23968 :
	addi	%r0 %r6 0
fbl_cont.23969 :
	addi	%r0 %r25 0
	bne	%r6 %r25 be_else.23970
	j	be_cont.23971
be_else.23970 :
	addi	%r0 %r6 l.20417
	ilw.s	%r6 %f1 0
	add.s	%f1 %f0 %f0
	lw.s	%r12 %f1 0
	mul.s	%f0 %f1 %f1
	lw.s	%r5 %f2 0
	add.s	%f2 %f1 %f1
	lw.s	%r12 %f2 4
	mul.s	%f0 %f2 %f2
	lw.s	%r5 %f3 4
	add.s	%f3 %f2 %f2
	lw.s	%r12 %f3 8
	mul.s	%f0 %f3 %f3
	lw.s	%r5 %f4 8
	add.s	%f4 %f3 %f3
	addi	%r0 %r5 0
	sw	%r26 %r8 16
	sw	%r26 %r14 20
	sw	%r26 %r10 24
	sw	%r26 %r13 28
	sw.s	%r26 %f3 32
	sw.s	%r26 %f2 40
	sw	%r26 %r9 48
	sw.s	%r26 %f1 56
	sw	%r26 %r4 64
	sw.s	%r26 %f0 72
	mov	%r5 %r1
	mov	%r11 %r24
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 84
	lw	%r24 %r23 0
	addi	%r26 %r26 88	
	jalr	%r23
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.23974
	j	be_cont.23975
be_else.23974 :
	lw	%r26 %r1 64
	lw.s	%r26 %f0 72
	sw.s	%r1 %f0 0
	lw	%r26 %r1 48
	lw.s	%r26 %f0 56
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 40
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 32
	sw.s	%r1 %f0 8
	lw	%r26 %r1 24
	lw	%r26 %r2 28
	sw	%r1 %r2 0
	lw	%r26 %r1 16
	lw	%r26 %r2 20
	sw	%r1 %r2 0
be_cont.23975 :
be_cont.23971 :
be_cont.23967 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network_fast.2924 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	add	%r2 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r25 -1
	bne	%r6 %r25 be_else.23976
	retl
be_else.23976 :
	addi	%r0 %r25 2
	sll	%r6 %r6 %r25
	add	%r5 %r6 %r25
	lw	%r25 %r5 0
	addi	%r0 %r6 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	mov	%r5 %r2
	mov	%r6 %r1
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
trace_or_matrix_fast.2928 :
	lw	%r24 %r4 16
	lw	%r24 %r5 12
	lw	%r24 %r6 8
	lw	%r24 %r7 4
	addi	%r0 %r25 2
	sll	%r1 %r8 %r25
	add	%r2 %r8 %r25
	lw	%r25 %r8 0
	lw	%r8 %r9 0
	addi	%r0 %r25 -1
	bne	%r9 %r25 be_else.23978
	retl
be_else.23978 :
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	addi	%r0 %r25 99
	bne	%r9 %r25 be_else.23980
	addi	%r0 %r4 1
	mov	%r8 %r2
	mov	%r4 %r1
	mov	%r6 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	be_cont.23981
be_else.23980 :
	addi	%r0 %r25 2
	sll	%r9 %r10 %r25
	add	%r7 %r10 %r25
	lw	%r25 %r7 0
	lw	%r7 %r10 40
	lw.s	%r10 %f0 0
	lw.s	%r10 %f1 4
	lw.s	%r10 %f2 8
	lw	%r3 %r11 4
	addi	%r0 %r25 2
	sll	%r9 %r9 %r25
	add	%r11 %r9 %r25
	lw	%r25 %r9 0
	lw	%r7 %r11 4
	addi	%r0 %r25 1
	bne	%r11 %r25 be_else.23982
	lw	%r3 %r10 0
	lw.s	%r9 %f3 0
	sub.s	%f0 %f3 %f3
	lw.s	%r9 %f4 4
	mul.s	%f4 %f3 %f3
	lw.s	%r10 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r11 l.20095
	ilw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.23984
	neg.s	%f4 %f4
	j	fbl_cont.23985
fbl_else.23984 :
fbl_cont.23985 :
	lw	%r7 %r11 16
	lw.s	%r11 %f5 4
	fbge	%f4 %f5 fbl_else.23986
	addi	%r0 %r11 1
	j	fbl_cont.23987
fbl_else.23986 :
	addi	%r0 %r11 0
fbl_cont.23987 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.23988
	addi	%r0 %r11 0
	j	be_cont.23989
be_else.23988 :
	lw.s	%r10 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r11 l.20095
	ilw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.23990
	neg.s	%f4 %f4
	j	fbl_cont.23991
fbl_else.23990 :
fbl_cont.23991 :
	lw	%r7 %r11 16
	lw.s	%r11 %f5 8
	fbge	%f4 %f5 fbl_else.23992
	addi	%r0 %r11 1
	j	fbl_cont.23993
fbl_else.23992 :
	addi	%r0 %r11 0
fbl_cont.23993 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.23994
	addi	%r0 %r11 0
	j	be_cont.23995
be_else.23994 :
	lw.s	%r9 %f4 4
	addi	%r0 %r11 l.20095
	ilw.s	%r11 %f5 0
	fbne	%f4 %f5 fbe_else.23996
	addi	%r0 %r11 1
	j	fbe_cont.23997
fbe_else.23996 :
	addi	%r0 %r11 0
fbe_cont.23997 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.23998
	addi	%r0 %r11 1
	j	be_cont.23999
be_else.23998 :
	addi	%r0 %r11 0
be_cont.23999 :
be_cont.23995 :
be_cont.23989 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.24000
	lw.s	%r9 %f3 8
	sub.s	%f1 %f3 %f3
	lw.s	%r9 %f4 12
	mul.s	%f4 %f3 %f3
	lw.s	%r10 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r11 l.20095
	ilw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.24002
	neg.s	%f4 %f4
	j	fbl_cont.24003
fbl_else.24002 :
fbl_cont.24003 :
	lw	%r7 %r11 16
	lw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.24004
	addi	%r0 %r11 1
	j	fbl_cont.24005
fbl_else.24004 :
	addi	%r0 %r11 0
fbl_cont.24005 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.24006
	addi	%r0 %r11 0
	j	be_cont.24007
be_else.24006 :
	lw.s	%r10 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r11 l.20095
	ilw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.24008
	neg.s	%f4 %f4
	j	fbl_cont.24009
fbl_else.24008 :
fbl_cont.24009 :
	lw	%r7 %r11 16
	lw.s	%r11 %f5 8
	fbge	%f4 %f5 fbl_else.24010
	addi	%r0 %r11 1
	j	fbl_cont.24011
fbl_else.24010 :
	addi	%r0 %r11 0
fbl_cont.24011 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.24012
	addi	%r0 %r11 0
	j	be_cont.24013
be_else.24012 :
	lw.s	%r9 %f4 12
	addi	%r0 %r11 l.20095
	ilw.s	%r11 %f5 0
	fbne	%f4 %f5 fbe_else.24014
	addi	%r0 %r11 1
	j	fbe_cont.24015
fbe_else.24014 :
	addi	%r0 %r11 0
fbe_cont.24015 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.24016
	addi	%r0 %r11 1
	j	be_cont.24017
be_else.24016 :
	addi	%r0 %r11 0
be_cont.24017 :
be_cont.24013 :
be_cont.24007 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.24018
	lw.s	%r9 %f3 16
	sub.s	%f2 %f3 %f2
	lw.s	%r9 %f3 20
	mul.s	%f3 %f2 %f2
	lw.s	%r10 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r11 l.20095
	ilw.s	%r11 %f3 0
	fbge	%f0 %f3 fbl_else.24020
	neg.s	%f0 %f0
	j	fbl_cont.24021
fbl_else.24020 :
fbl_cont.24021 :
	lw	%r7 %r11 16
	lw.s	%r11 %f3 0
	fbge	%f0 %f3 fbl_else.24022
	addi	%r0 %r11 1
	j	fbl_cont.24023
fbl_else.24022 :
	addi	%r0 %r11 0
fbl_cont.24023 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.24024
	addi	%r0 %r7 0
	j	be_cont.24025
be_else.24024 :
	lw.s	%r10 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r10 l.20095
	ilw.s	%r10 %f1 0
	fbge	%f0 %f1 fbl_else.24026
	neg.s	%f0 %f0
	j	fbl_cont.24027
fbl_else.24026 :
fbl_cont.24027 :
	lw	%r7 %r7 16
	lw.s	%r7 %f1 4
	fbge	%f0 %f1 fbl_else.24028
	addi	%r0 %r7 1
	j	fbl_cont.24029
fbl_else.24028 :
	addi	%r0 %r7 0
fbl_cont.24029 :
	addi	%r0 %r25 0
	bne	%r7 %r25 be_else.24030
	addi	%r0 %r7 0
	j	be_cont.24031
be_else.24030 :
	lw.s	%r9 %f0 20
	addi	%r0 %r7 l.20095
	ilw.s	%r7 %f1 0
	fbne	%f0 %f1 fbe_else.24032
	addi	%r0 %r7 1
	j	fbe_cont.24033
fbe_else.24032 :
	addi	%r0 %r7 0
fbe_cont.24033 :
	addi	%r0 %r25 0
	bne	%r7 %r25 be_else.24034
	addi	%r0 %r7 1
	j	be_cont.24035
be_else.24034 :
	addi	%r0 %r7 0
be_cont.24035 :
be_cont.24031 :
be_cont.24025 :
	addi	%r0 %r25 0
	bne	%r7 %r25 be_else.24036
	addi	%r0 %r7 0
	j	be_cont.24037
be_else.24036 :
	sw.s	%r5 %f2 0
	addi	%r0 %r7 3
be_cont.24037 :
	j	be_cont.24019
be_else.24018 :
	sw.s	%r5 %f3 0
	addi	%r0 %r7 2
be_cont.24019 :
	j	be_cont.24001
be_else.24000 :
	sw.s	%r5 %f3 0
	addi	%r0 %r7 1
be_cont.24001 :
	j	be_cont.23983
be_else.23982 :
	addi	%r0 %r25 2
	bne	%r11 %r25 be_else.24038
	lw.s	%r9 %f0 0
	addi	%r0 %r7 l.20095
	ilw.s	%r7 %f1 0
	fbge	%f0 %f1 fbl_else.24040
	addi	%r0 %r7 1
	j	fbl_cont.24041
fbl_else.24040 :
	addi	%r0 %r7 0
fbl_cont.24041 :
	addi	%r0 %r25 0
	bne	%r7 %r25 be_else.24042
	addi	%r0 %r7 0
	j	be_cont.24043
be_else.24042 :
	lw.s	%r9 %f0 0
	lw.s	%r10 %f1 12
	mul.s	%f1 %f0 %f0
	sw.s	%r5 %f0 0
	addi	%r0 %r7 1
be_cont.24043 :
	j	be_cont.24039
be_else.24038 :
	lw.s	%r9 %f3 0
	addi	%r0 %r11 l.20095
	ilw.s	%r11 %f4 0
	fbne	%f3 %f4 fbe_else.24044
	addi	%r0 %r11 1
	j	fbe_cont.24045
fbe_else.24044 :
	addi	%r0 %r11 0
fbe_cont.24045 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.24046
	lw.s	%r9 %f4 4
	mul.s	%f0 %f4 %f0
	lw.s	%r9 %f4 8
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r9 %f1 12
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r10 %f1 12
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f3 %f1
	sub.s	%f1 %f2 %f1
	addi	%r0 %r10 l.20095
	ilw.s	%r10 %f2 0
	fbge	%f2 %f1 fbl_else.24048
	addi	%r0 %r10 1
	j	fbl_cont.24049
fbl_else.24048 :
	addi	%r0 %r10 0
fbl_cont.24049 :
	addi	%r0 %r25 0
	bne	%r10 %r25 be_else.24050
	addi	%r0 %r7 0
	j	be_cont.24051
be_else.24050 :
	lw	%r7 %r7 24
	addi	%r0 %r25 0
	bne	%r7 %r25 be_else.24052
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	lw.s	%r9 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r5 %f0 0
	j	be_cont.24053
be_else.24052 :
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r9 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r5 %f0 0
be_cont.24053 :
	addi	%r0 %r7 1
be_cont.24051 :
	j	be_cont.24047
be_else.24046 :
	addi	%r0 %r7 0
be_cont.24047 :
be_cont.24039 :
be_cont.23983 :
	addi	%r0 %r25 0
	bne	%r7 %r25 be_else.24054
	j	be_cont.24055
be_else.24054 :
	lw.s	%r5 %f0 0
	lw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.24056
	addi	%r0 %r4 1
	j	fbl_cont.24057
fbl_else.24056 :
	addi	%r0 %r4 0
fbl_cont.24057 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.24058
	j	be_cont.24059
be_else.24058 :
	addi	%r0 %r4 1
	mov	%r8 %r2
	mov	%r4 %r1
	mov	%r6 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
be_cont.24059 :
be_cont.24055 :
be_cont.23981 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
trace_reflections.2950 :
	lw	%r24 %r3 40
	lw	%r24 %r4 36
	lw	%r24 %r5 32
	lw	%r24 %r6 28
	lw	%r24 %r7 24
	lw	%r24 %r8 20
	lw	%r24 %r9 16
	lw	%r24 %r10 12
	lw	%r24 %r11 8
	lw	%r24 %r12 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.24060
	addi	%r0 %r25 2
	sll	%r1 %r13 %r25
	add	%r8 %r13 %r25
	lw	%r25 %r8 0
	lw	%r8 %r13 4
	addi	%r0 %r14 l.20826
	ilw.s	%r14 %f2 0
	sw.s	%r4 %f2 0
	addi	%r0 %r14 0
	lw	%r9 %r15 0
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw.s	%r26 %f1 8
	sw	%r26 %r5 16
	sw	%r26 %r7 20
	sw	%r26 %r2 24
	sw.s	%r26 %f0 32
	sw	%r26 %r10 40
	sw	%r26 %r13 44
	sw	%r26 %r6 48
	sw	%r26 %r9 52
	sw	%r26 %r8 56
	sw	%r26 %r11 60
	sw	%r26 %r12 64
	sw	%r26 %r4 68
	mov	%r15 %r2
	mov	%r14 %r1
	mov	%r3 %r24
	mov	%r13 %r3
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r1 68
	lw.s	%r1 %f0 0
	addi	%r0 %r1 l.20495
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.24062
	addi	%r0 %r1 1
	j	fbl_cont.24063
fbl_else.24062 :
	addi	%r0 %r1 0
fbl_cont.24063 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24064
	addi	%r0 %r1 0
	j	be_cont.24065
be_else.24064 :
	addi	%r0 %r1 l.20832
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.24066
	addi	%r0 %r1 1
	j	fbl_cont.24067
fbl_else.24066 :
	addi	%r0 %r1 0
fbl_cont.24067 :
be_cont.24065 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24068
	j	be_cont.24069
be_else.24068 :
	lw	%r26 %r1 64
	lw	%r1 %r1 0
	addi	%r0 %r2 4
	mul	%r1 %r2 %r1
	lw	%r26 %r2 60
	lw	%r2 %r2 0
	add	%r1 %r2 %r1
	lw	%r26 %r2 56
	lw	%r2 %r3 0
	bne	%r1 %r3 be_else.24070
	addi	%r0 %r1 0
	lw	%r26 %r3 52
	lw	%r3 %r3 0
	lw	%r26 %r24 48
	mov	%r3 %r2
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24072
	lw	%r26 %r1 44
	lw	%r1 %r2 0
	lw	%r26 %r3 40
	lw.s	%r3 %f0 0
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r3 %f1 4
	lw.s	%r2 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r3 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw	%r26 %r2 56
	lw.s	%r2 %f1 8
	lw.s	%r26 %f2 32
	mul.s	%f2 %f1 %f3
	mul.s	%f0 %f3 %f0
	lw	%r1 %r1 0
	lw	%r26 %r2 24
	lw.s	%r2 %f3 0
	lw.s	%r1 %f4 0
	mul.s	%f4 %f3 %f3
	lw.s	%r2 %f4 4
	lw.s	%r1 %f5 4
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	lw.s	%r2 %f4 8
	lw.s	%r1 %f5 8
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f3 %f1 %f1
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f3 0
	fbge	%f3 %f0 fbl_else.24074
	addi	%r0 %r1 1
	j	fbl_cont.24075
fbl_else.24074 :
	addi	%r0 %r1 0
fbl_cont.24075 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24076
	j	be_cont.24077
be_else.24076 :
	lw	%r26 %r1 20
	lw.s	%r1 %f3 0
	lw	%r26 %r3 16
	lw.s	%r3 %f4 0
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f3 %f3
	sw.s	%r1 %f3 0
	lw.s	%r1 %f3 4
	lw.s	%r3 %f4 4
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f3 %f3
	sw.s	%r1 %f3 4
	lw.s	%r1 %f3 8
	lw.s	%r3 %f4 8
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	sw.s	%r1 %f0 8
be_cont.24077 :
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f0 0
	fbge	%f0 %f1 fbl_else.24078
	addi	%r0 %r1 1
	j	fbl_cont.24079
fbl_else.24078 :
	addi	%r0 %r1 0
fbl_cont.24079 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24080
	j	be_cont.24081
be_else.24080 :
	mul.s	%f1 %f1 %f0
	mul.s	%f0 %f0 %f0
	lw.s	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 20
	lw.s	%r1 %f3 0
	add.s	%f0 %f3 %f3
	sw.s	%r1 %f3 0
	lw.s	%r1 %f3 4
	add.s	%f0 %f3 %f3
	sw.s	%r1 %f3 4
	lw.s	%r1 %f3 8
	add.s	%f0 %f3 %f0
	sw.s	%r1 %f0 8
be_cont.24081 :
	j	be_cont.24073
be_else.24072 :
be_cont.24073 :
	j	be_cont.24071
be_else.24070 :
be_cont.24071 :
be_cont.24069 :
	lw	%r26 %r1 4
	addi	%r1 %r1 -1
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 8
	lw	%r26 %r2 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.24060 :
	retl
euler.6182.14035 :
	add.s	%f3 %f0 %f4
	fbge	%f2 %f4 fbl_else.24083
	mov.s	%f1 %f0
	retl
fbl_else.24083 :
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f4 0
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f5 0
	mul.s	%f0 %f0 %f6
	add.s	%f6 %f5 %f5
	div.s	%f5 %f4 %f4
	mul.s	%f4 %f3 %f4
	add.s	%f4 %f1 %f1
	add.s	%f3 %f0 %f0
	j	euler.6182.14035
euler.6182.14078 :
	add.s	%f3 %f0 %f4
	fbge	%f2 %f4 fbl_else.24084
	mov.s	%f1 %f0
	retl
fbl_else.24084 :
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f4 0
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f5 0
	mul.s	%f0 %f0 %f6
	add.s	%f6 %f5 %f5
	div.s	%f5 %f4 %f4
	mul.s	%f4 %f3 %f4
	add.s	%f4 %f1 %f1
	add.s	%f3 %f0 %f0
	j	euler.6182.14078
trace_ray.2955 :
	lw	%r24 %r4 76
	lw	%r24 %r5 72
	lw	%r24 %r6 68
	lw	%r24 %r7 64
	lw	%r24 %r8 60
	lw	%r24 %r9 56
	lw	%r24 %r10 52
	lw	%r24 %r11 48
	lw	%r24 %r12 44
	lw	%r24 %r13 40
	lw	%r24 %r14 36
	lw	%r24 %r15 32
	lw	%r24 %r16 28
	lw	%r24 %r17 24
	lw	%r24 %r18 20
	lw	%r24 %r19 16
	lw	%r24 %r20 12
	lw	%r24 %r21 8
	lw	%r24 %r22 4
	addi	%r0 %r25 4
	bg	%r1 %r25 ble_else.24085
	lw	%r3 %r23 8
	sw	%r26 %r24 0
	addi	%r0 %r24 l.20826
	ilw.s	%r24 %f2 0
	sw.s	%r6 %f2 0
	addi	%r0 %r24 0
	sw	%r26 %r4 4
	lw	%r13 %r4 0
	sw.s	%r26 %f1 8
	sw	%r26 %r16 16
	sw	%r26 %r11 20
	sw	%r26 %r17 24
	sw	%r26 %r8 28
	sw	%r26 %r10 32
	sw	%r26 %r13 36
	sw	%r26 %r3 40
	sw	%r26 %r7 44
	sw	%r26 %r9 48
	sw	%r26 %r20 52
	sw	%r26 %r15 56
	sw	%r26 %r19 60
	sw	%r26 %r14 64
	sw	%r26 %r21 68
	sw	%r26 %r12 72
	sw	%r26 %r22 76
	sw.s	%r26 %f0 80
	sw	%r26 %r18 88
	sw	%r26 %r2 92
	sw	%r26 %r23 96
	sw	%r26 %r1 100
	sw	%r26 %r6 104
	mov	%r2 %r3
	mov	%r24 %r1
	mov	%r4 %r2
	mov	%r5 %r24
	sw	%r26 %r28 108
	lw	%r24 %r23 0
	addi	%r26 %r26 112	
	jalr	%r23
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw	%r26 %r1 104
	lw.s	%r1 %f0 0
	addi	%r0 %r2 l.20495
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.24086
	addi	%r0 %r2 1
	j	fbl_cont.24087
fbl_else.24086 :
	addi	%r0 %r2 0
fbl_cont.24087 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24088
	addi	%r0 %r2 0
	j	be_cont.24089
be_else.24088 :
	addi	%r0 %r2 l.20832
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.24090
	addi	%r0 %r2 1
	j	fbl_cont.24091
fbl_else.24090 :
	addi	%r0 %r2 0
fbl_cont.24091 :
be_cont.24089 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24092
	addi	%r0 %r1 -1
	lw	%r26 %r2 100
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 96
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24093
	retl
be_else.24093 :
	lw	%r26 %r1 92
	lw.s	%r1 %f0 0
	lw	%r26 %r2 88
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r1 %f1 4
	lw.s	%r2 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r1 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.24095
	addi	%r0 %r1 1
	j	fbl_cont.24096
fbl_else.24095 :
	addi	%r0 %r1 0
fbl_cont.24096 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24097
	retl
be_else.24097 :
	mul.s	%f0 %f0 %f1
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 80
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 76
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 72
	lw.s	%r1 %f1 0
	add.s	%f0 %f1 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 4
	add.s	%f0 %f1 %f1
	sw.s	%r1 %f1 4
	lw.s	%r1 %f1 8
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	retl
be_else.24092 :
	lw	%r26 %r2 68
	lw	%r2 %r2 0
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 64
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r3 %r4 8
	lw	%r3 %r5 28
	lw.s	%r5 %f0 0
	lw.s	%r26 %f1 80
	mul.s	%f1 %f0 %f0
	lw	%r3 %r5 4
	addi	%r0 %r25 1
	bne	%r5 %r25 be_else.24100
	lw	%r26 %r5 60
	lw	%r5 %r6 0
	addi	%r0 %r7 l.20095
	ilw.s	%r7 %f2 0
	lw	%r26 %r7 56
	sw.s	%r7 %f2 0
	sw.s	%r7 %f2 4
	sw.s	%r7 %f2 8
	addi	%r6 %r8 -1
	addi	%r6 %r6 -1
	addi	%r0 %r25 2
	sll	%r6 %r6 %r25
	lw	%r26 %r9 92
	add	%r9 %r6 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f3 0
	fbne	%f2 %f3 fbe_else.24102
	addi	%r0 %r6 1
	j	fbe_cont.24103
fbe_else.24102 :
	addi	%r0 %r6 0
fbe_cont.24103 :
	addi	%r0 %r25 0
	bne	%r6 %r25 be_else.24104
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f3 0
	fbge	%f3 %f2 fbl_else.24106
	addi	%r0 %r6 1
	j	fbl_cont.24107
fbl_else.24106 :
	addi	%r0 %r6 0
fbl_cont.24107 :
	addi	%r0 %r25 0
	bne	%r6 %r25 be_else.24108
	addi	%r0 %r6 l.20139
	ilw.s	%r6 %f2 0
	j	be_cont.24109
be_else.24108 :
	addi	%r0 %r6 l.20063
	ilw.s	%r6 %f2 0
be_cont.24109 :
	j	be_cont.24105
be_else.24104 :
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f2 0
be_cont.24105 :
	neg.s	%f2 %f2
	addi	%r0 %r25 2
	sll	%r8 %r6 %r25
	add	%r7 %r6 %r25
	sw.s	%r25 %f2 0
	j	be_cont.24101
be_else.24100 :
	addi	%r0 %r25 2
	bne	%r5 %r25 be_else.24110
	lw	%r3 %r5 16
	lw.s	%r5 %f2 0
	neg.s	%f2 %f2
	lw	%r26 %r5 56
	sw.s	%r5 %f2 0
	lw	%r3 %r6 16
	lw.s	%r6 %f2 4
	neg.s	%f2 %f2
	sw.s	%r5 %f2 4
	lw	%r3 %r6 16
	lw.s	%r6 %f2 8
	neg.s	%f2 %f2
	sw.s	%r5 %f2 8
	j	be_cont.24111
be_else.24110 :
	lw	%r26 %r5 52
	lw.s	%r5 %f2 0
	lw	%r3 %r6 20
	lw.s	%r6 %f3 0
	sub.s	%f3 %f2 %f2
	lw.s	%r5 %f3 4
	lw	%r3 %r6 20
	lw.s	%r6 %f4 4
	sub.s	%f4 %f3 %f3
	lw.s	%r5 %f4 8
	lw	%r3 %r6 20
	lw.s	%r6 %f5 8
	sub.s	%f5 %f4 %f4
	lw	%r3 %r6 16
	lw.s	%r6 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r3 %r6 16
	lw.s	%r6 %f6 4
	mul.s	%f6 %f3 %f6
	lw	%r3 %r6 16
	lw.s	%r6 %f7 8
	mul.s	%f7 %f4 %f7
	lw	%r3 %r6 12
	addi	%r0 %r25 0
	bne	%r6 %r25 be_else.24112
	lw	%r26 %r6 56
	sw.s	%r6 %f5 0
	sw.s	%r6 %f6 4
	sw.s	%r6 %f7 8
	j	be_cont.24113
be_else.24112 :
	lw	%r3 %r6 36
	lw.s	%r6 %f8 8
	mul.s	%f8 %f3 %f8
	lw	%r3 %r6 36
	lw.s	%r6 %f9 4
	mul.s	%f9 %f4 %f9
	add.s	%f9 %f8 %f8
	addi	%r0 %r6 l.20187
	ilw.s	%r6 %f9 0
	div.s	%f9 %f8 %f8
	add.s	%f8 %f5 %f5
	lw	%r26 %r6 56
	sw.s	%r6 %f5 0
	lw	%r3 %r7 36
	lw.s	%r7 %f5 8
	mul.s	%f5 %f2 %f5
	lw	%r3 %r7 36
	lw.s	%r7 %f8 0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f5 %f4
	addi	%r0 %r7 l.20187
	ilw.s	%r7 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	sw.s	%r6 %f4 4
	lw	%r3 %r7 36
	lw.s	%r7 %f4 4
	mul.s	%f4 %f2 %f2
	lw	%r3 %r7 36
	lw.s	%r7 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r7 l.20187
	ilw.s	%r7 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f7 %f2
	sw.s	%r6 %f2 8
be_cont.24113 :
	lw	%r3 %r7 24
	lw.s	%r6 %f2 0
	mul.s	%f2 %f2 %f2
	lw.s	%r6 %f3 4
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f2 %f2
	lw.s	%r6 %f3 8
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	addi	%r0 %r8 l.20095
	ilw.s	%r8 %f3 0
	fbne	%f2 %f3 fbe_else.24114
	addi	%r0 %r8 1
	j	fbe_cont.24115
fbe_else.24114 :
	addi	%r0 %r8 0
fbe_cont.24115 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.24116
	addi	%r0 %r25 0
	bne	%r7 %r25 be_else.24118
	addi	%r0 %r7 l.20063
	ilw.s	%r7 %f3 0
	div.s	%f2 %f3 %f2
	j	be_cont.24119
be_else.24118 :
	addi	%r0 %r7 l.20139
	ilw.s	%r7 %f3 0
	div.s	%f2 %f3 %f2
be_cont.24119 :
	j	be_cont.24117
be_else.24116 :
	addi	%r0 %r7 l.20063
	ilw.s	%r7 %f2 0
be_cont.24117 :
	lw.s	%r6 %f3 0
	mul.s	%f2 %f3 %f3
	sw.s	%r6 %f3 0
	lw.s	%r6 %f3 4
	mul.s	%f2 %f3 %f3
	sw.s	%r6 %f3 4
	lw.s	%r6 %f3 8
	mul.s	%f2 %f3 %f2
	sw.s	%r6 %f2 8
be_cont.24111 :
be_cont.24101 :
	lw	%r26 %r5 52
	lw.s	%r5 %f2 0
	lw	%r26 %r6 48
	sw.s	%r6 %f2 0
	lw.s	%r5 %f2 4
	sw.s	%r6 %f2 4
	lw.s	%r5 %f2 8
	sw.s	%r6 %f2 8
	lw	%r3 %r6 0
	lw	%r3 %r7 32
	lw.s	%r7 %f2 0
	lw	%r26 %r7 44
	sw.s	%r7 %f2 0
	lw	%r3 %r8 32
	lw.s	%r8 %f2 4
	sw.s	%r7 %f2 4
	lw	%r3 %r8 32
	lw.s	%r8 %f2 8
	sw.s	%r7 %f2 8
	sw	%r26 %r4 108
	sw.s	%r26 %f0 112
	sw	%r26 %r3 120
	sw	%r26 %r2 124
	addi	%r0 %r25 1
	bne	%r6 %r25 be_else.24120
	lw.s	%r5 %f2 0
	lw	%r3 %r6 20
	lw.s	%r6 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.21011
	ilw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f3
	floor.w.s	%f3 %f3
	addi	%r0 %r6 l.21013
	ilw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.20993
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.24122
	addi	%r0 %r6 1
	j	fbl_cont.24123
fbl_else.24122 :
	addi	%r0 %r6 0
fbl_cont.24123 :
	lw.s	%r5 %f2 8
	lw	%r3 %r8 20
	lw.s	%r8 %f3 8
	sub.s	%f3 %f2 %f2
	addi	%r0 %r8 l.21011
	ilw.s	%r8 %f3 0
	mul.s	%f3 %f2 %f3
	floor.w.s	%f3 %f3
	addi	%r0 %r8 l.21013
	ilw.s	%r8 %f4 0
	mul.s	%f4 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r8 l.20993
	ilw.s	%r8 %f3 0
	fbge	%f2 %f3 fbl_else.24124
	addi	%r0 %r8 1
	j	fbl_cont.24125
fbl_else.24124 :
	addi	%r0 %r8 0
fbl_cont.24125 :
	addi	%r0 %r25 0
	bne	%r6 %r25 be_else.24126
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.24128
	addi	%r0 %r6 l.20984
	ilw.s	%r6 %f2 0
	j	be_cont.24129
be_else.24128 :
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f2 0
be_cont.24129 :
	j	be_cont.24127
be_else.24126 :
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.24130
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f2 0
	j	be_cont.24131
be_else.24130 :
	addi	%r0 %r6 l.20984
	ilw.s	%r6 %f2 0
be_cont.24131 :
be_cont.24127 :
	sw.s	%r7 %f2 4
	j	be_cont.24121
be_else.24120 :
	addi	%r0 %r25 2
	bne	%r6 %r25 be_else.24132
	lw.s	%r5 %f2 4
	addi	%r0 %r6 l.21002
	ilw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f2
	mov.s	%f2 %f0
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	sin.2579
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.20984
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r1 44
	sw.s	%r1 %f1 0
	addi	%r0 %r2 l.20984
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 4
	j	be_cont.24133
be_else.24132 :
	addi	%r0 %r25 3
	bne	%r6 %r25 be_else.24134
	lw.s	%r5 %f2 0
	lw	%r3 %r6 20
	lw.s	%r6 %f3 0
	sub.s	%f3 %f2 %f2
	lw.s	%r5 %f3 8
	lw	%r3 %r6 20
	lw.s	%r6 %f4 8
	sub.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f2
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	addi	%r0 %r6 l.20993
	ilw.s	%r6 %f3 0
	div.s	%f3 %f2 %f2
	floor.w.s	%f2 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.20964
	ilw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f2
	mov.s	%f2 %f0
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	cos.2581
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.20984
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r1 44
	sw.s	%r1 %f1 4
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r2 l.20984
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	j	be_cont.24135
be_else.24134 :
	addi	%r0 %r25 4
	bne	%r6 %r25 be_else.24136
	lw.s	%r5 %f2 0
	lw	%r3 %r6 20
	lw.s	%r6 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r3 %r6 16
	lw.s	%r6 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f2 %f2
	lw.s	%r5 %f3 8
	lw	%r3 %r6 20
	lw.s	%r6 %f4 8
	sub.s	%f4 %f3 %f3
	lw	%r3 %r6 16
	lw.s	%r6 %f4 8
	sqrt.s	%f4 %f4
	mul.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f4
	mul.s	%f3 %f3 %f5
	add.s	%f5 %f4 %f4
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f5 0
	fbge	%f2 %f5 fbl_else.24138
	neg.s	%f2 %f5
	j	fbl_cont.24139
fbl_else.24138 :
	mov.s	%f2 %f5
fbl_cont.24139 :
	addi	%r0 %r6 l.20953
	ilw.s	%r6 %f6 0
	fbge	%f5 %f6 fbl_else.24140
	addi	%r0 %r6 1
	j	fbl_cont.24141
fbl_else.24140 :
	addi	%r0 %r6 0
fbl_cont.24141 :
	sw.s	%r26 %f4 128
	addi	%r0 %r25 0
	bne	%r6 %r25 be_else.24142
	div.s	%f2 %f3 %f2
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.24144
	neg.s	%f2 %f2
	j	fbl_cont.24145
fbl_else.24144 :
fbl_cont.24145 :
	addi	%r0 %r6 l.20958
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f5 0
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f6 0
	mov.s	%f6 %f1
	mov.s	%f5 %f0
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	euler.6182.14078
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	addi	%r0 %r1 l.20962
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.20964
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	j	be_cont.24143
be_else.24142 :
	addi	%r0 %r6 l.20955
	ilw.s	%r6 %f0 0
be_cont.24143 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 52
	lw.s	%r1 %f1 4
	lw	%r26 %r2 120
	lw	%r2 %r3 20
	lw.s	%r3 %f2 4
	sub.s	%f2 %f1 %f1
	lw	%r2 %r3 16
	lw.s	%r3 %f2 4
	sqrt.s	%f2 %f2
	mul.s	%f2 %f1 %f1
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f2 0
	lw.s	%r26 %f3 128
	fbge	%f3 %f2 fbl_else.24146
	neg.s	%f3 %f2
	j	fbl_cont.24147
fbl_else.24146 :
	mov.s	%f3 %f2
fbl_cont.24147 :
	addi	%r0 %r3 l.20953
	ilw.s	%r3 %f4 0
	fbge	%f2 %f4 fbl_else.24148
	addi	%r0 %r3 1
	j	fbl_cont.24149
fbl_else.24148 :
	addi	%r0 %r3 0
fbl_cont.24149 :
	sw.s	%r26 %f0 136
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.24150
	div.s	%f3 %f1 %f1
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f2 0
	fbge	%f1 %f2 fbl_else.24152
	neg.s	%f1 %f2
	j	fbl_cont.24153
fbl_else.24152 :
	mov.s	%f1 %f2
fbl_cont.24153 :
	addi	%r0 %r3 l.20958
	ilw.s	%r3 %f3 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f1 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f4 0
	mov.s	%f1 %f0
	mov.s	%f4 %f1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	euler.6182.14035
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r1 l.20962
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.20964
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	j	be_cont.24151
be_else.24150 :
	addi	%r0 %r3 l.20955
	ilw.s	%r3 %f0 0
be_cont.24151 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.20978
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.20091
	ilw.s	%r1 %f2 0
	lw.s	%r26 %f3 136
	sub.s	%f3 %f2 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f1 %f1
	addi	%r0 %r1 l.20091
	ilw.s	%r1 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.24154
	addi	%r0 %r1 1
	j	fbl_cont.24155
fbl_else.24154 :
	addi	%r0 %r1 0
fbl_cont.24155 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24156
	j	be_cont.24157
be_else.24156 :
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f0 0
be_cont.24157 :
	addi	%r0 %r1 l.20984
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20986
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 44
	sw.s	%r1 %f0 8
	j	be_cont.24137
be_else.24136 :
be_cont.24137 :
be_cont.24135 :
be_cont.24133 :
be_cont.24121 :
	addi	%r0 %r1 4
	lw	%r26 %r2 124
	mul	%r2 %r1 %r1
	lw	%r26 %r2 60
	lw	%r2 %r2 0
	add	%r1 %r2 %r1
	lw	%r26 %r2 100
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 96
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	lw	%r26 %r1 40
	lw	%r1 %r3 4
	addi	%r0 %r25 2
	sll	%r2 %r5 %r25
	add	%r3 %r5 %r25
	lw	%r25 %r3 0
	lw	%r26 %r5 52
	lw.s	%r5 %f0 0
	sw.s	%r3 %f0 0
	lw.s	%r5 %f0 4
	sw.s	%r3 %f0 4
	lw.s	%r5 %f0 8
	sw.s	%r3 %f0 8
	lw	%r1 %r3 12
	lw	%r26 %r6 120
	lw	%r6 %r7 28
	lw.s	%r7 %f0 0
	addi	%r0 %r7 l.20091
	ilw.s	%r7 %f1 0
	fbge	%f0 %f1 fbl_else.24158
	addi	%r0 %r7 1
	j	fbl_cont.24159
fbl_else.24158 :
	addi	%r0 %r7 0
fbl_cont.24159 :
	addi	%r0 %r25 0
	bne	%r7 %r25 be_else.24160
	addi	%r0 %r7 1
	addi	%r0 %r25 2
	sll	%r2 %r8 %r25
	add	%r3 %r8 %r25
	sw	%r25 %r7 0
	lw	%r1 %r3 16
	addi	%r0 %r25 2
	sll	%r2 %r7 %r25
	add	%r3 %r7 %r25
	lw	%r25 %r7 0
	lw	%r26 %r8 44
	lw.s	%r8 %f0 0
	sw.s	%r7 %f0 0
	lw.s	%r8 %f0 4
	sw.s	%r7 %f0 4
	lw.s	%r8 %f0 8
	sw.s	%r7 %f0 8
	addi	%r0 %r25 2
	sll	%r2 %r7 %r25
	add	%r3 %r7 %r25
	lw	%r25 %r3 0
	addi	%r0 %r7 l.21047
	ilw.s	%r7 %f0 0
	lw.s	%r26 %f1 112
	mul.s	%f1 %f0 %f0
	lw.s	%r3 %f2 0
	mul.s	%f0 %f2 %f2
	sw.s	%r3 %f2 0
	lw.s	%r3 %f2 4
	mul.s	%f0 %f2 %f2
	sw.s	%r3 %f2 4
	lw.s	%r3 %f2 8
	mul.s	%f0 %f2 %f0
	sw.s	%r3 %f0 8
	lw	%r1 %r3 28
	addi	%r0 %r25 2
	sll	%r2 %r7 %r25
	add	%r3 %r7 %r25
	lw	%r25 %r3 0
	lw	%r26 %r7 56
	lw.s	%r7 %f0 0
	sw.s	%r3 %f0 0
	lw.s	%r7 %f0 4
	sw.s	%r3 %f0 4
	lw.s	%r7 %f0 8
	sw.s	%r3 %f0 8
	j	be_cont.24161
be_else.24160 :
	addi	%r0 %r7 0
	addi	%r0 %r25 2
	sll	%r2 %r8 %r25
	add	%r3 %r8 %r25
	sw	%r25 %r7 0
be_cont.24161 :
	addi	%r0 %r3 l.21062
	ilw.s	%r3 %f0 0
	lw	%r26 %r3 92
	lw.s	%r3 %f1 0
	lw	%r26 %r7 56
	lw.s	%r7 %f2 0
	mul.s	%f2 %f1 %f1
	lw.s	%r3 %f2 4
	lw.s	%r7 %f3 4
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	lw.s	%r3 %f2 8
	lw.s	%r7 %f3 8
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	mul.s	%f1 %f0 %f0
	lw.s	%r3 %f1 0
	lw.s	%r7 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r3 %f1 0
	lw.s	%r3 %f1 4
	lw.s	%r7 %f2 4
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r3 %f1 4
	lw.s	%r3 %f1 8
	lw.s	%r7 %f2 8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r3 %f0 8
	lw	%r6 %r8 28
	lw.s	%r8 %f0 4
	lw.s	%r26 %f1 80
	mul.s	%f0 %f1 %f0
	addi	%r0 %r8 0
	lw	%r26 %r9 36
	lw	%r9 %r9 0
	lw	%r26 %r24 32
	sw.s	%r26 %f0 144
	mov	%r9 %r2
	mov	%r8 %r1
	sw	%r26 %r28 156
	lw	%r24 %r23 0
	addi	%r26 %r26 160	
	jalr	%r23
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24162
	lw	%r26 %r1 56
	lw.s	%r1 %f0 0
	lw	%r26 %r2 88
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r1 %f1 4
	lw.s	%r2 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r1 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	lw.s	%r26 %f1 112
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 92
	lw.s	%r1 %f2 0
	lw.s	%r2 %f3 0
	mul.s	%f3 %f2 %f2
	lw.s	%r1 %f3 4
	lw.s	%r2 %f4 4
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f2 %f2
	lw.s	%r1 %f3 8
	lw.s	%r2 %f4 8
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f2 %f2
	neg.s	%f2 %f2
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f3 0
	fbge	%f3 %f0 fbl_else.24164
	addi	%r0 %r2 1
	j	fbl_cont.24165
fbl_else.24164 :
	addi	%r0 %r2 0
fbl_cont.24165 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24166
	j	be_cont.24167
be_else.24166 :
	lw	%r26 %r2 72
	lw.s	%r2 %f3 0
	lw	%r26 %r3 44
	lw.s	%r3 %f4 0
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f3 %f3
	sw.s	%r2 %f3 0
	lw.s	%r2 %f3 4
	lw.s	%r3 %f4 4
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f3 %f3
	sw.s	%r2 %f3 4
	lw.s	%r2 %f3 8
	lw.s	%r3 %f4 8
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	sw.s	%r2 %f0 8
be_cont.24167 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f0 0
	fbge	%f0 %f2 fbl_else.24168
	addi	%r0 %r2 1
	j	fbl_cont.24169
fbl_else.24168 :
	addi	%r0 %r2 0
fbl_cont.24169 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24170
	j	be_cont.24171
be_else.24170 :
	mul.s	%f2 %f2 %f0
	mul.s	%f0 %f0 %f0
	lw.s	%r26 %f2 144
	mul.s	%f2 %f0 %f0
	lw	%r26 %r2 72
	lw.s	%r2 %f3 0
	add.s	%f0 %f3 %f3
	sw.s	%r2 %f3 0
	lw.s	%r2 %f3 4
	add.s	%f0 %f3 %f3
	sw.s	%r2 %f3 4
	lw.s	%r2 %f3 8
	add.s	%f0 %f3 %f0
	sw.s	%r2 %f0 8
be_cont.24171 :
	j	be_cont.24163
be_else.24162 :
be_cont.24163 :
	lw	%r26 %r1 52
	lw.s	%r1 %f0 0
	lw	%r26 %r2 28
	sw.s	%r2 %f0 0
	lw.s	%r1 %f0 4
	sw.s	%r2 %f0 4
	lw.s	%r1 %f0 8
	sw.s	%r2 %f0 8
	lw	%r26 %r2 24
	lw	%r2 %r2 0
	addi	%r2 %r2 -1
	lw	%r26 %r24 20
	sw	%r26 %r28 156
	lw	%r24 %r23 0
	addi	%r26 %r26 160	
	jalr	%r23
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	lw	%r26 %r1 16
	lw	%r1 %r1 0
	addi	%r1 %r1 -1
	lw.s	%r26 %f0 112
	lw.s	%r26 %f1 144
	lw	%r26 %r2 92
	lw	%r26 %r24 4
	sw	%r26 %r28 156
	lw	%r24 %r23 0
	addi	%r26 %r26 160	
	jalr	%r23
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	addi	%r0 %r1 l.21118
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 80
	fbge	%f0 %f1 fbl_else.24172
	addi	%r0 %r1 1
	j	fbl_cont.24173
fbl_else.24172 :
	addi	%r0 %r1 0
fbl_cont.24173 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24174
	retl
be_else.24174 :
	lw	%r26 %r1 100
	addi	%r0 %r25 4
	bge	%r1 %r25 bl_else.24176
	addi	%r1 %r2 1
	addi	%r0 %r3 -1
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r4 96
	add	%r4 %r2 %r25
	sw	%r25 %r3 0
	j	bl_cont.24177
bl_else.24176 :
bl_cont.24177 :
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	bne	%r2 %r25 be_else.24178
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 120
	lw	%r2 %r2 28
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f1 %f0
	addi	%r1 %r1 1
	lw	%r26 %r2 104
	lw.s	%r2 %f1 0
	lw.s	%r26 %f2 8
	add.s	%f1 %f2 %f1
	lw	%r26 %r2 92
	lw	%r26 %r3 40
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
be_else.24178 :
	retl
ble_else.24085 :
	retl
euler.6182.8487.13208 :
	add.s	%f3 %f0 %f4
	fbge	%f2 %f4 fbl_else.24181
	mov.s	%f1 %f0
	retl
fbl_else.24181 :
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f4 0
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f5 0
	mul.s	%f0 %f0 %f6
	add.s	%f6 %f5 %f5
	div.s	%f5 %f4 %f4
	mul.s	%f4 %f3 %f4
	add.s	%f4 %f1 %f1
	add.s	%f3 %f0 %f0
	j	euler.6182.8487.13208
euler.6182.8532.13234 :
	add.s	%f3 %f0 %f4
	fbge	%f2 %f4 fbl_else.24182
	mov.s	%f1 %f0
	retl
fbl_else.24182 :
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f4 0
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f5 0
	mul.s	%f0 %f0 %f6
	add.s	%f6 %f5 %f5
	div.s	%f5 %f4 %f4
	mul.s	%f4 %f3 %f4
	add.s	%f4 %f1 %f1
	add.s	%f3 %f0 %f0
	j	euler.6182.8532.13234
euler.6182.8487.13727 :
	add.s	%f3 %f0 %f4
	fbge	%f2 %f4 fbl_else.24183
	mov.s	%f1 %f0
	retl
fbl_else.24183 :
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f4 0
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f5 0
	mul.s	%f0 %f0 %f6
	add.s	%f6 %f5 %f5
	div.s	%f5 %f4 %f4
	mul.s	%f4 %f3 %f4
	add.s	%f4 %f1 %f1
	add.s	%f3 %f0 %f0
	j	euler.6182.8487.13727
euler.6182.8532.13753 :
	add.s	%f3 %f0 %f4
	fbge	%f2 %f4 fbl_else.24184
	mov.s	%f1 %f0
	retl
fbl_else.24184 :
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f4 0
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f5 0
	mul.s	%f0 %f0 %f6
	add.s	%f6 %f5 %f5
	div.s	%f5 %f4 %f4
	mul.s	%f4 %f3 %f4
	add.s	%f4 %f1 %f1
	add.s	%f3 %f0 %f0
	j	euler.6182.8532.13753
iter_trace_diffuse_rays.2964 :
	lw	%r24 %r5 48
	lw	%r24 %r6 44
	lw	%r24 %r7 40
	lw	%r24 %r8 36
	lw	%r24 %r9 32
	lw	%r24 %r10 28
	lw	%r24 %r11 24
	lw	%r24 %r12 20
	lw	%r24 %r13 16
	lw	%r24 %r14 12
	lw	%r24 %r15 8
	lw	%r24 %r16 4
	addi	%r0 %r25 0
	bl	%r4 %r25 bge_else.24185
	addi	%r0 %r25 2
	sll	%r4 %r17 %r25
	add	%r1 %r17 %r25
	lw	%r25 %r17 0
	lw	%r17 %r17 0
	lw.s	%r17 %f0 0
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r17 %f1 4
	lw.s	%r2 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r17 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r17 l.20095
	ilw.s	%r17 %f1 0
	fbge	%f0 %f1 fbl_else.24186
	addi	%r0 %r17 1
	j	fbl_cont.24187
fbl_else.24186 :
	addi	%r0 %r17 0
fbl_cont.24187 :
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	sw	%r26 %r24 12
	sw	%r26 %r4 16
	addi	%r0 %r25 0
	bne	%r17 %r25 be_else.24188
	addi	%r0 %r25 2
	sll	%r4 %r17 %r25
	add	%r1 %r17 %r25
	lw	%r25 %r17 0
	addi	%r0 %r18 l.21315
	ilw.s	%r18 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r0 %r18 l.20826
	ilw.s	%r18 %f1 0
	sw.s	%r6 %f1 0
	addi	%r0 %r18 0
	lw	%r9 %r19 0
	sw	%r26 %r16 20
	sw.s	%r26 %f0 24
	sw	%r26 %r12 32
	sw	%r26 %r8 36
	sw	%r26 %r9 40
	sw	%r26 %r7 44
	sw	%r26 %r14 48
	sw	%r26 %r11 52
	sw	%r26 %r13 56
	sw	%r26 %r17 60
	sw	%r26 %r10 64
	sw	%r26 %r15 68
	sw	%r26 %r6 72
	mov	%r17 %r3
	mov	%r19 %r2
	mov	%r18 %r1
	mov	%r5 %r24
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r1 72
	lw.s	%r1 %f0 0
	addi	%r0 %r1 l.20495
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.24190
	addi	%r0 %r1 1
	j	fbl_cont.24191
fbl_else.24190 :
	addi	%r0 %r1 0
fbl_cont.24191 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24192
	addi	%r0 %r1 0
	j	be_cont.24193
be_else.24192 :
	addi	%r0 %r1 l.20832
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.24194
	addi	%r0 %r1 1
	j	fbl_cont.24195
fbl_else.24194 :
	addi	%r0 %r1 0
fbl_cont.24195 :
be_cont.24193 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24196
	j	be_cont.24197
be_else.24196 :
	lw	%r26 %r1 68
	lw	%r1 %r1 0
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 64
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	lw	%r26 %r2 60
	lw	%r2 %r2 0
	lw	%r1 %r3 4
	addi	%r0 %r25 1
	bne	%r3 %r25 be_else.24198
	lw	%r26 %r3 56
	lw	%r3 %r3 0
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f0 0
	lw	%r26 %r4 52
	sw.s	%r4 %f0 0
	sw.s	%r4 %f0 4
	sw.s	%r4 %f0 8
	addi	%r3 %r5 -1
	addi	%r3 %r3 -1
	addi	%r0 %r25 2
	sll	%r3 %r3 %r25
	add	%r2 %r3 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbe_else.24200
	addi	%r0 %r2 1
	j	fbe_cont.24201
fbe_else.24200 :
	addi	%r0 %r2 0
fbe_cont.24201 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24202
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.24204
	addi	%r0 %r2 1
	j	fbl_cont.24205
fbl_else.24204 :
	addi	%r0 %r2 0
fbl_cont.24205 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24206
	addi	%r0 %r2 l.20139
	ilw.s	%r2 %f0 0
	j	be_cont.24207
be_else.24206 :
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f0 0
be_cont.24207 :
	j	be_cont.24203
be_else.24202 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f0 0
be_cont.24203 :
	neg.s	%f0 %f0
	addi	%r0 %r25 2
	sll	%r5 %r2 %r25
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	j	be_cont.24199
be_else.24198 :
	addi	%r0 %r25 2
	bne	%r3 %r25 be_else.24208
	lw	%r1 %r2 16
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	lw	%r26 %r2 52
	sw.s	%r2 %f0 0
	lw	%r1 %r3 16
	lw.s	%r3 %f0 4
	neg.s	%f0 %f0
	sw.s	%r2 %f0 4
	lw	%r1 %r3 16
	lw.s	%r3 %f0 8
	neg.s	%f0 %f0
	sw.s	%r2 %f0 8
	j	be_cont.24209
be_else.24208 :
	lw	%r26 %r2 48
	lw.s	%r2 %f0 0
	lw	%r1 %r3 20
	lw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r2 %f1 4
	lw	%r1 %r3 20
	lw.s	%r3 %f2 4
	sub.s	%f2 %f1 %f1
	lw.s	%r2 %f2 8
	lw	%r1 %r3 20
	lw.s	%r3 %f3 8
	sub.s	%f3 %f2 %f2
	lw	%r1 %r3 16
	lw.s	%r3 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r3 16
	lw.s	%r3 %f4 4
	mul.s	%f4 %f1 %f4
	lw	%r1 %r3 16
	lw.s	%r3 %f5 8
	mul.s	%f5 %f2 %f5
	lw	%r1 %r3 12
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.24210
	lw	%r26 %r3 52
	sw.s	%r3 %f3 0
	sw.s	%r3 %f4 4
	sw.s	%r3 %f5 8
	j	be_cont.24211
be_else.24210 :
	lw	%r1 %r3 36
	lw.s	%r3 %f6 8
	mul.s	%f6 %f1 %f6
	lw	%r1 %r3 36
	lw.s	%r3 %f7 4
	mul.s	%f7 %f2 %f7
	add.s	%f7 %f6 %f6
	addi	%r0 %r3 l.20187
	ilw.s	%r3 %f7 0
	div.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f3
	lw	%r26 %r3 52
	sw.s	%r3 %f3 0
	lw	%r1 %r4 36
	lw.s	%r4 %f3 8
	mul.s	%f3 %f0 %f3
	lw	%r1 %r4 36
	lw.s	%r4 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r4 l.20187
	ilw.s	%r4 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f4 %f2
	sw.s	%r3 %f2 4
	lw	%r1 %r4 36
	lw.s	%r4 %f2 4
	mul.s	%f2 %f0 %f0
	lw	%r1 %r4 36
	lw.s	%r4 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r4 l.20187
	ilw.s	%r4 %f1 0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r3 %f0 8
be_cont.24211 :
	lw	%r1 %r4 24
	lw.s	%r3 %f0 0
	mul.s	%f0 %f0 %f0
	lw.s	%r3 %f1 4
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r3 %f1 8
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbe_else.24212
	addi	%r0 %r5 1
	j	fbe_cont.24213
fbe_else.24212 :
	addi	%r0 %r5 0
fbe_cont.24213 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.24214
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.24216
	addi	%r0 %r4 l.20063
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f0
	j	be_cont.24217
be_else.24216 :
	addi	%r0 %r4 l.20139
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f0
be_cont.24217 :
	j	be_cont.24215
be_else.24214 :
	addi	%r0 %r4 l.20063
	ilw.s	%r4 %f0 0
be_cont.24215 :
	lw.s	%r3 %f1 0
	mul.s	%f0 %f1 %f1
	sw.s	%r3 %f1 0
	lw.s	%r3 %f1 4
	mul.s	%f0 %f1 %f1
	sw.s	%r3 %f1 4
	lw.s	%r3 %f1 8
	mul.s	%f0 %f1 %f0
	sw.s	%r3 %f0 8
be_cont.24209 :
be_cont.24199 :
	lw	%r1 %r2 0
	lw	%r1 %r3 32
	lw.s	%r3 %f0 0
	lw	%r26 %r3 44
	sw.s	%r3 %f0 0
	lw	%r1 %r4 32
	lw.s	%r4 %f0 4
	sw.s	%r3 %f0 4
	lw	%r1 %r4 32
	lw.s	%r4 %f0 8
	sw.s	%r3 %f0 8
	sw	%r26 %r1 76
	addi	%r0 %r25 1
	bne	%r2 %r25 be_else.24218
	lw	%r26 %r2 48
	lw.s	%r2 %f0 0
	lw	%r1 %r4 20
	lw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r4 l.21011
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r4 l.21013
	ilw.s	%r4 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r4 l.20993
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.24220
	addi	%r0 %r4 1
	j	fbl_cont.24221
fbl_else.24220 :
	addi	%r0 %r4 0
fbl_cont.24221 :
	lw.s	%r2 %f0 8
	lw	%r1 %r2 20
	lw.s	%r2 %f1 8
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.21011
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r2 l.21013
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.20993
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.24222
	addi	%r0 %r2 1
	j	fbl_cont.24223
fbl_else.24222 :
	addi	%r0 %r2 0
fbl_cont.24223 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.24224
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24226
	addi	%r0 %r2 l.20984
	ilw.s	%r2 %f0 0
	j	be_cont.24227
be_else.24226 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f0 0
be_cont.24227 :
	j	be_cont.24225
be_else.24224 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24228
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f0 0
	j	be_cont.24229
be_else.24228 :
	addi	%r0 %r2 l.20984
	ilw.s	%r2 %f0 0
be_cont.24229 :
be_cont.24225 :
	sw.s	%r3 %f0 4
	j	be_cont.24219
be_else.24218 :
	addi	%r0 %r25 2
	bne	%r2 %r25 be_else.24230
	lw	%r26 %r2 48
	lw.s	%r2 %f0 4
	addi	%r0 %r2 l.21002
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	sin.2579
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.20984
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r1 44
	sw.s	%r1 %f1 0
	addi	%r0 %r2 l.20984
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 4
	j	be_cont.24231
be_else.24230 :
	addi	%r0 %r25 3
	bne	%r2 %r25 be_else.24232
	lw	%r26 %r2 48
	lw.s	%r2 %f0 0
	lw	%r1 %r4 20
	lw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r2 %f1 8
	lw	%r1 %r2 20
	lw.s	%r2 %f2 8
	sub.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r2 l.20993
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.20964
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	cos.2581
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.20984
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r1 44
	sw.s	%r1 %f1 4
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r2 l.20984
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	j	be_cont.24233
be_else.24232 :
	addi	%r0 %r25 4
	bne	%r2 %r25 be_else.24234
	lw	%r26 %r2 48
	lw.s	%r2 %f0 0
	lw	%r1 %r4 20
	lw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r1 %r4 16
	lw.s	%r4 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	lw.s	%r2 %f1 8
	lw	%r1 %r4 20
	lw.s	%r4 %f2 8
	sub.s	%f2 %f1 %f1
	lw	%r1 %r4 16
	lw.s	%r4 %f2 8
	sqrt.s	%f2 %f2
	mul.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f3 0
	fbge	%f0 %f3 fbl_else.24236
	neg.s	%f0 %f3
	j	fbl_cont.24237
fbl_else.24236 :
	mov.s	%f0 %f3
fbl_cont.24237 :
	addi	%r0 %r4 l.20953
	ilw.s	%r4 %f4 0
	fbge	%f3 %f4 fbl_else.24238
	addi	%r0 %r4 1
	j	fbl_cont.24239
fbl_else.24238 :
	addi	%r0 %r4 0
fbl_cont.24239 :
	sw.s	%r26 %f2 80
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.24240
	div.s	%f0 %f1 %f0
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.24242
	neg.s	%f0 %f0
	j	fbl_cont.24243
fbl_else.24242 :
fbl_cont.24243 :
	addi	%r0 %r4 l.20958
	ilw.s	%r4 %f3 0
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f4 0
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f4 %f1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	euler.6182.8532.13753
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r1 l.20962
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.20964
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	j	be_cont.24241
be_else.24240 :
	addi	%r0 %r4 l.20955
	ilw.s	%r4 %f0 0
be_cont.24241 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 4
	lw	%r26 %r1 76
	lw	%r1 %r2 20
	lw.s	%r2 %f2 4
	sub.s	%f2 %f1 %f1
	lw	%r1 %r2 16
	lw.s	%r2 %f2 4
	sqrt.s	%f2 %f2
	mul.s	%f2 %f1 %f1
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f2 0
	lw.s	%r26 %f3 80
	fbge	%f3 %f2 fbl_else.24244
	neg.s	%f3 %f2
	j	fbl_cont.24245
fbl_else.24244 :
	mov.s	%f3 %f2
fbl_cont.24245 :
	addi	%r0 %r2 l.20953
	ilw.s	%r2 %f4 0
	fbge	%f2 %f4 fbl_else.24246
	addi	%r0 %r2 1
	j	fbl_cont.24247
fbl_else.24246 :
	addi	%r0 %r2 0
fbl_cont.24247 :
	sw.s	%r26 %f0 88
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24248
	div.s	%f3 %f1 %f1
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.24250
	neg.s	%f1 %f2
	j	fbl_cont.24251
fbl_else.24250 :
	mov.s	%f1 %f2
fbl_cont.24251 :
	addi	%r0 %r2 l.20958
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f4 0
	mov.s	%f1 %f0
	mov.s	%f4 %f1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	euler.6182.8487.13727
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r1 l.20962
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.20964
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	j	be_cont.24249
be_else.24248 :
	addi	%r0 %r2 l.20955
	ilw.s	%r2 %f0 0
be_cont.24249 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.20978
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.20091
	ilw.s	%r1 %f2 0
	lw.s	%r26 %f3 88
	sub.s	%f3 %f2 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f1 %f1
	addi	%r0 %r1 l.20091
	ilw.s	%r1 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.24252
	addi	%r0 %r1 1
	j	fbl_cont.24253
fbl_else.24252 :
	addi	%r0 %r1 0
fbl_cont.24253 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24254
	j	be_cont.24255
be_else.24254 :
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f0 0
be_cont.24255 :
	addi	%r0 %r1 l.20984
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20986
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 44
	sw.s	%r1 %f0 8
	j	be_cont.24235
be_else.24234 :
be_cont.24235 :
be_cont.24233 :
be_cont.24231 :
be_cont.24219 :
	addi	%r0 %r1 0
	lw	%r26 %r2 40
	lw	%r2 %r2 0
	lw	%r26 %r24 36
	sw	%r26 %r28 100
	lw	%r24 %r23 0
	addi	%r26 %r26 104	
	jalr	%r23
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24256
	lw	%r26 %r1 52
	lw.s	%r1 %f0 0
	lw	%r26 %r2 32
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r1 %f1 4
	lw.s	%r2 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r1 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.24258
	addi	%r0 %r1 1
	j	fbl_cont.24259
fbl_else.24258 :
	addi	%r0 %r1 0
fbl_cont.24259 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24260
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f0 0
	j	be_cont.24261
be_else.24260 :
be_cont.24261 :
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 76
	lw	%r1 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 20
	lw.s	%r1 %f1 0
	lw	%r26 %r2 44
	lw.s	%r2 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 4
	lw.s	%r2 %f2 4
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r1 %f1 4
	lw.s	%r1 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	j	be_cont.24257
be_else.24256 :
be_cont.24257 :
be_cont.24197 :
	j	be_cont.24189
be_else.24188 :
	addi	%r4 %r17 1
	addi	%r0 %r25 2
	sll	%r17 %r17 %r25
	add	%r1 %r17 %r25
	lw	%r25 %r17 0
	addi	%r0 %r18 l.21156
	ilw.s	%r18 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r0 %r18 l.20826
	ilw.s	%r18 %f1 0
	sw.s	%r6 %f1 0
	addi	%r0 %r18 0
	lw	%r9 %r19 0
	sw	%r26 %r16 20
	sw.s	%r26 %f0 96
	sw	%r26 %r12 32
	sw	%r26 %r8 36
	sw	%r26 %r9 40
	sw	%r26 %r7 44
	sw	%r26 %r14 48
	sw	%r26 %r11 52
	sw	%r26 %r13 56
	sw	%r26 %r17 104
	sw	%r26 %r10 64
	sw	%r26 %r15 68
	sw	%r26 %r6 72
	mov	%r17 %r3
	mov	%r19 %r2
	mov	%r18 %r1
	mov	%r5 %r24
	sw	%r26 %r28 108
	lw	%r24 %r23 0
	addi	%r26 %r26 112	
	jalr	%r23
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw	%r26 %r1 72
	lw.s	%r1 %f0 0
	addi	%r0 %r1 l.20495
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.24262
	addi	%r0 %r1 1
	j	fbl_cont.24263
fbl_else.24262 :
	addi	%r0 %r1 0
fbl_cont.24263 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24264
	addi	%r0 %r1 0
	j	be_cont.24265
be_else.24264 :
	addi	%r0 %r1 l.20832
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.24266
	addi	%r0 %r1 1
	j	fbl_cont.24267
fbl_else.24266 :
	addi	%r0 %r1 0
fbl_cont.24267 :
be_cont.24265 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24268
	j	be_cont.24269
be_else.24268 :
	lw	%r26 %r1 68
	lw	%r1 %r1 0
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 64
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	lw	%r26 %r2 104
	lw	%r2 %r2 0
	lw	%r1 %r3 4
	addi	%r0 %r25 1
	bne	%r3 %r25 be_else.24270
	lw	%r26 %r3 56
	lw	%r3 %r3 0
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f0 0
	lw	%r26 %r4 52
	sw.s	%r4 %f0 0
	sw.s	%r4 %f0 4
	sw.s	%r4 %f0 8
	addi	%r3 %r5 -1
	addi	%r3 %r3 -1
	addi	%r0 %r25 2
	sll	%r3 %r3 %r25
	add	%r2 %r3 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbe_else.24272
	addi	%r0 %r2 1
	j	fbe_cont.24273
fbe_else.24272 :
	addi	%r0 %r2 0
fbe_cont.24273 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24274
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.24276
	addi	%r0 %r2 1
	j	fbl_cont.24277
fbl_else.24276 :
	addi	%r0 %r2 0
fbl_cont.24277 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24278
	addi	%r0 %r2 l.20139
	ilw.s	%r2 %f0 0
	j	be_cont.24279
be_else.24278 :
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f0 0
be_cont.24279 :
	j	be_cont.24275
be_else.24274 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f0 0
be_cont.24275 :
	neg.s	%f0 %f0
	addi	%r0 %r25 2
	sll	%r5 %r2 %r25
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	j	be_cont.24271
be_else.24270 :
	addi	%r0 %r25 2
	bne	%r3 %r25 be_else.24280
	lw	%r1 %r2 16
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	lw	%r26 %r2 52
	sw.s	%r2 %f0 0
	lw	%r1 %r3 16
	lw.s	%r3 %f0 4
	neg.s	%f0 %f0
	sw.s	%r2 %f0 4
	lw	%r1 %r3 16
	lw.s	%r3 %f0 8
	neg.s	%f0 %f0
	sw.s	%r2 %f0 8
	j	be_cont.24281
be_else.24280 :
	lw	%r26 %r2 48
	lw.s	%r2 %f0 0
	lw	%r1 %r3 20
	lw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r2 %f1 4
	lw	%r1 %r3 20
	lw.s	%r3 %f2 4
	sub.s	%f2 %f1 %f1
	lw.s	%r2 %f2 8
	lw	%r1 %r3 20
	lw.s	%r3 %f3 8
	sub.s	%f3 %f2 %f2
	lw	%r1 %r3 16
	lw.s	%r3 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r3 16
	lw.s	%r3 %f4 4
	mul.s	%f4 %f1 %f4
	lw	%r1 %r3 16
	lw.s	%r3 %f5 8
	mul.s	%f5 %f2 %f5
	lw	%r1 %r3 12
	addi	%r0 %r25 0
	bne	%r3 %r25 be_else.24282
	lw	%r26 %r3 52
	sw.s	%r3 %f3 0
	sw.s	%r3 %f4 4
	sw.s	%r3 %f5 8
	j	be_cont.24283
be_else.24282 :
	lw	%r1 %r3 36
	lw.s	%r3 %f6 8
	mul.s	%f6 %f1 %f6
	lw	%r1 %r3 36
	lw.s	%r3 %f7 4
	mul.s	%f7 %f2 %f7
	add.s	%f7 %f6 %f6
	addi	%r0 %r3 l.20187
	ilw.s	%r3 %f7 0
	div.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f3
	lw	%r26 %r3 52
	sw.s	%r3 %f3 0
	lw	%r1 %r4 36
	lw.s	%r4 %f3 8
	mul.s	%f3 %f0 %f3
	lw	%r1 %r4 36
	lw.s	%r4 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r4 l.20187
	ilw.s	%r4 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f4 %f2
	sw.s	%r3 %f2 4
	lw	%r1 %r4 36
	lw.s	%r4 %f2 4
	mul.s	%f2 %f0 %f0
	lw	%r1 %r4 36
	lw.s	%r4 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r4 l.20187
	ilw.s	%r4 %f1 0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r3 %f0 8
be_cont.24283 :
	lw	%r1 %r4 24
	lw.s	%r3 %f0 0
	mul.s	%f0 %f0 %f0
	lw.s	%r3 %f1 4
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r3 %f1 8
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbe_else.24284
	addi	%r0 %r5 1
	j	fbe_cont.24285
fbe_else.24284 :
	addi	%r0 %r5 0
fbe_cont.24285 :
	addi	%r0 %r25 0
	bne	%r5 %r25 be_else.24286
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.24288
	addi	%r0 %r4 l.20063
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f0
	j	be_cont.24289
be_else.24288 :
	addi	%r0 %r4 l.20139
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f0
be_cont.24289 :
	j	be_cont.24287
be_else.24286 :
	addi	%r0 %r4 l.20063
	ilw.s	%r4 %f0 0
be_cont.24287 :
	lw.s	%r3 %f1 0
	mul.s	%f0 %f1 %f1
	sw.s	%r3 %f1 0
	lw.s	%r3 %f1 4
	mul.s	%f0 %f1 %f1
	sw.s	%r3 %f1 4
	lw.s	%r3 %f1 8
	mul.s	%f0 %f1 %f0
	sw.s	%r3 %f0 8
be_cont.24281 :
be_cont.24271 :
	lw	%r1 %r2 0
	lw	%r1 %r3 32
	lw.s	%r3 %f0 0
	lw	%r26 %r3 44
	sw.s	%r3 %f0 0
	lw	%r1 %r4 32
	lw.s	%r4 %f0 4
	sw.s	%r3 %f0 4
	lw	%r1 %r4 32
	lw.s	%r4 %f0 8
	sw.s	%r3 %f0 8
	sw	%r26 %r1 108
	addi	%r0 %r25 1
	bne	%r2 %r25 be_else.24290
	lw	%r26 %r2 48
	lw.s	%r2 %f0 0
	lw	%r1 %r4 20
	lw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r4 l.21011
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r4 l.21013
	ilw.s	%r4 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r4 l.20993
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.24292
	addi	%r0 %r4 1
	j	fbl_cont.24293
fbl_else.24292 :
	addi	%r0 %r4 0
fbl_cont.24293 :
	lw.s	%r2 %f0 8
	lw	%r1 %r2 20
	lw.s	%r2 %f1 8
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.21011
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r2 l.21013
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.20993
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.24294
	addi	%r0 %r2 1
	j	fbl_cont.24295
fbl_else.24294 :
	addi	%r0 %r2 0
fbl_cont.24295 :
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.24296
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24298
	addi	%r0 %r2 l.20984
	ilw.s	%r2 %f0 0
	j	be_cont.24299
be_else.24298 :
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f0 0
be_cont.24299 :
	j	be_cont.24297
be_else.24296 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24300
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f0 0
	j	be_cont.24301
be_else.24300 :
	addi	%r0 %r2 l.20984
	ilw.s	%r2 %f0 0
be_cont.24301 :
be_cont.24297 :
	sw.s	%r3 %f0 4
	j	be_cont.24291
be_else.24290 :
	addi	%r0 %r25 2
	bne	%r2 %r25 be_else.24302
	lw	%r26 %r2 48
	lw.s	%r2 %f0 4
	addi	%r0 %r2 l.21002
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	sin.2579
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.20984
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r1 44
	sw.s	%r1 %f1 0
	addi	%r0 %r2 l.20984
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 4
	j	be_cont.24303
be_else.24302 :
	addi	%r0 %r25 3
	bne	%r2 %r25 be_else.24304
	lw	%r26 %r2 48
	lw.s	%r2 %f0 0
	lw	%r1 %r4 20
	lw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r2 %f1 8
	lw	%r1 %r2 20
	lw.s	%r2 %f2 8
	sub.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r2 l.20993
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.20964
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	cos.2581
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.20984
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r1 44
	sw.s	%r1 %f1 4
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r2 l.20984
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	j	be_cont.24305
be_else.24304 :
	addi	%r0 %r25 4
	bne	%r2 %r25 be_else.24306
	lw	%r26 %r2 48
	lw.s	%r2 %f0 0
	lw	%r1 %r4 20
	lw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r1 %r4 16
	lw.s	%r4 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	lw.s	%r2 %f1 8
	lw	%r1 %r4 20
	lw.s	%r4 %f2 8
	sub.s	%f2 %f1 %f1
	lw	%r1 %r4 16
	lw.s	%r4 %f2 8
	sqrt.s	%f2 %f2
	mul.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f3 0
	fbge	%f0 %f3 fbl_else.24308
	neg.s	%f0 %f3
	j	fbl_cont.24309
fbl_else.24308 :
	mov.s	%f0 %f3
fbl_cont.24309 :
	addi	%r0 %r4 l.20953
	ilw.s	%r4 %f4 0
	fbge	%f3 %f4 fbl_else.24310
	addi	%r0 %r4 1
	j	fbl_cont.24311
fbl_else.24310 :
	addi	%r0 %r4 0
fbl_cont.24311 :
	sw.s	%r26 %f2 112
	addi	%r0 %r25 0
	bne	%r4 %r25 be_else.24312
	div.s	%f0 %f1 %f0
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.24314
	neg.s	%f0 %f0
	j	fbl_cont.24315
fbl_else.24314 :
fbl_cont.24315 :
	addi	%r0 %r4 l.20958
	ilw.s	%r4 %f3 0
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f4 0
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f4 %f1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	euler.6182.8532.13234
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r1 l.20962
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.20964
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	j	be_cont.24313
be_else.24312 :
	addi	%r0 %r4 l.20955
	ilw.s	%r4 %f0 0
be_cont.24313 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 4
	lw	%r26 %r1 108
	lw	%r1 %r2 20
	lw.s	%r2 %f2 4
	sub.s	%f2 %f1 %f1
	lw	%r1 %r2 16
	lw.s	%r2 %f2 4
	sqrt.s	%f2 %f2
	mul.s	%f2 %f1 %f1
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f2 0
	lw.s	%r26 %f3 112
	fbge	%f3 %f2 fbl_else.24316
	neg.s	%f3 %f2
	j	fbl_cont.24317
fbl_else.24316 :
	mov.s	%f3 %f2
fbl_cont.24317 :
	addi	%r0 %r2 l.20953
	ilw.s	%r2 %f4 0
	fbge	%f2 %f4 fbl_else.24318
	addi	%r0 %r2 1
	j	fbl_cont.24319
fbl_else.24318 :
	addi	%r0 %r2 0
fbl_cont.24319 :
	sw.s	%r26 %f0 120
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.24320
	div.s	%f3 %f1 %f1
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.24322
	neg.s	%f1 %f2
	j	fbl_cont.24323
fbl_else.24322 :
	mov.s	%f1 %f2
fbl_cont.24323 :
	addi	%r0 %r2 l.20958
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f4 0
	mov.s	%f1 %f0
	mov.s	%f4 %f1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	euler.6182.8487.13208
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	addi	%r0 %r1 l.20962
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.20964
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	j	be_cont.24321
be_else.24320 :
	addi	%r0 %r2 l.20955
	ilw.s	%r2 %f0 0
be_cont.24321 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.20978
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.20091
	ilw.s	%r1 %f2 0
	lw.s	%r26 %f3 120
	sub.s	%f3 %f2 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f1 %f1
	addi	%r0 %r1 l.20091
	ilw.s	%r1 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.24324
	addi	%r0 %r1 1
	j	fbl_cont.24325
fbl_else.24324 :
	addi	%r0 %r1 0
fbl_cont.24325 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24326
	j	be_cont.24327
be_else.24326 :
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f0 0
be_cont.24327 :
	addi	%r0 %r1 l.20984
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.20986
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 44
	sw.s	%r1 %f0 8
	j	be_cont.24307
be_else.24306 :
be_cont.24307 :
be_cont.24305 :
be_cont.24303 :
be_cont.24291 :
	addi	%r0 %r1 0
	lw	%r26 %r2 40
	lw	%r2 %r2 0
	lw	%r26 %r24 36
	sw	%r26 %r28 132
	lw	%r24 %r23 0
	addi	%r26 %r26 136	
	jalr	%r23
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24328
	lw	%r26 %r1 52
	lw.s	%r1 %f0 0
	lw	%r26 %r2 32
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r1 %f1 4
	lw.s	%r2 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r1 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.24330
	addi	%r0 %r1 1
	j	fbl_cont.24331
fbl_else.24330 :
	addi	%r0 %r1 0
fbl_cont.24331 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.24332
	addi	%r0 %r1 l.20095
	ilw.s	%r1 %f0 0
	j	be_cont.24333
be_else.24332 :
be_cont.24333 :
	lw.s	%r26 %f1 96
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 108
	lw	%r1 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 20
	lw.s	%r1 %f1 0
	lw	%r26 %r2 44
	lw.s	%r2 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 4
	lw.s	%r2 %f2 4
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r1 %f1 4
	lw.s	%r1 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	j	be_cont.24329
be_else.24328 :
be_cont.24329 :
be_cont.24269 :
be_cont.24189 :
	lw	%r26 %r1 16
	addi	%r1 %r4 -2
	lw	%r26 %r1 8
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
bge_else.24185 :
	retl
do_without_neighbors.2986 :
	lw	%r24 %r3 28
	lw	%r24 %r4 24
	lw	%r24 %r5 20
	lw	%r24 %r6 16
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	addi	%r0 %r25 4
	bg	%r2 %r25 ble_else.24335
	lw	%r1 %r10 8
	addi	%r0 %r25 2
	sll	%r2 %r11 %r25
	add	%r10 %r11 %r25
	lw	%r25 %r10 0
	addi	%r0 %r25 0
	bl	%r10 %r25 bge_else.24336
	lw	%r1 %r10 12
	addi	%r0 %r25 2
	sll	%r2 %r11 %r25
	add	%r10 %r11 %r25
	lw	%r25 %r10 0
	sw	%r26 %r1 0
	sw	%r26 %r24 4
	sw	%r26 %r2 8
	addi	%r0 %r25 0
	bne	%r10 %r25 be_else.24337
	j	be_cont.24338
be_else.24337 :
	lw	%r1 %r10 20
	lw	%r1 %r11 28
	lw	%r1 %r12 4
	lw	%r1 %r13 16
	addi	%r0 %r25 2
	sll	%r2 %r14 %r25
	add	%r10 %r14 %r25
	lw	%r25 %r10 0
	lw.s	%r10 %f0 0
	sw.s	%r9 %f0 0
	lw.s	%r10 %f0 4
	sw.s	%r9 %f0 4
	lw.s	%r10 %f0 8
	sw.s	%r9 %f0 8
	lw	%r1 %r10 24
	lw	%r10 %r10 0
	addi	%r0 %r25 2
	sll	%r2 %r14 %r25
	add	%r11 %r14 %r25
	lw	%r25 %r11 0
	addi	%r0 %r25 2
	sll	%r2 %r14 %r25
	add	%r12 %r14 %r25
	lw	%r25 %r12 0
	sw	%r26 %r9 12
	sw	%r26 %r5 16
	sw	%r26 %r13 20
	sw	%r26 %r11 24
	sw	%r26 %r7 28
	sw	%r26 %r4 32
	sw	%r26 %r6 36
	sw	%r26 %r3 40
	sw	%r26 %r12 44
	sw	%r26 %r8 48
	sw	%r26 %r10 52
	addi	%r0 %r25 0
	bne	%r10 %r25 be_else.24339
	j	be_cont.24340
be_else.24339 :
	lw	%r8 %r14 0
	lw.s	%r12 %f0 0
	sw.s	%r3 %f0 0
	lw.s	%r12 %f0 4
	sw.s	%r3 %f0 4
	lw.s	%r12 %f0 8
	sw.s	%r3 %f0 8
	lw	%r6 %r15 0
	addi	%r15 %r15 -1
	sw	%r26 %r14 56
	mov	%r15 %r2
	mov	%r12 %r1
	mov	%r4 %r24
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r4 118
	lw	%r26 %r1 56
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r24 28
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
be_cont.24340 :
	lw	%r26 %r1 52
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.24341
	j	be_cont.24342
be_else.24341 :
	lw	%r26 %r2 48
	lw	%r2 %r3 4
	lw	%r26 %r4 44
	lw.s	%r4 %f0 0
	lw	%r26 %r5 40
	sw.s	%r5 %f0 0
	lw.s	%r4 %f0 4
	sw.s	%r5 %f0 4
	lw.s	%r4 %f0 8
	sw.s	%r5 %f0 8
	lw	%r26 %r6 36
	lw	%r6 %r7 0
	addi	%r7 %r7 -1
	lw	%r26 %r24 32
	sw	%r26 %r3 60
	mov	%r7 %r2
	mov	%r4 %r1
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r4 118
	lw	%r26 %r1 60
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r24 28
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
be_cont.24342 :
	lw	%r26 %r1 52
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.24343
	j	be_cont.24344
be_else.24343 :
	lw	%r26 %r2 48
	lw	%r2 %r3 8
	lw	%r26 %r4 44
	lw.s	%r4 %f0 0
	lw	%r26 %r5 40
	sw.s	%r5 %f0 0
	lw.s	%r4 %f0 4
	sw.s	%r5 %f0 4
	lw.s	%r4 %f0 8
	sw.s	%r5 %f0 8
	lw	%r26 %r6 36
	lw	%r6 %r7 0
	addi	%r7 %r7 -1
	lw	%r26 %r24 32
	sw	%r26 %r3 64
	mov	%r7 %r2
	mov	%r4 %r1
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r4 118
	lw	%r26 %r1 64
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r24 28
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
be_cont.24344 :
	lw	%r26 %r1 52
	addi	%r0 %r25 3
	bne	%r1 %r25 be_else.24345
	j	be_cont.24346
be_else.24345 :
	lw	%r26 %r2 48
	lw	%r2 %r3 12
	lw	%r26 %r4 44
	lw.s	%r4 %f0 0
	lw	%r26 %r5 40
	sw.s	%r5 %f0 0
	lw.s	%r4 %f0 4
	sw.s	%r5 %f0 4
	lw.s	%r4 %f0 8
	sw.s	%r5 %f0 8
	lw	%r26 %r6 36
	lw	%r6 %r7 0
	addi	%r7 %r7 -1
	lw	%r26 %r24 32
	sw	%r26 %r3 68
	mov	%r7 %r2
	mov	%r4 %r1
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r4 118
	lw	%r26 %r1 68
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r24 28
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
be_cont.24346 :
	lw	%r26 %r1 52
	addi	%r0 %r25 4
	bne	%r1 %r25 be_else.24347
	j	be_cont.24348
be_else.24347 :
	lw	%r26 %r1 48
	lw	%r1 %r1 16
	lw	%r26 %r2 44
	lw.s	%r2 %f0 0
	lw	%r26 %r3 40
	sw.s	%r3 %f0 0
	lw.s	%r2 %f0 4
	sw.s	%r3 %f0 4
	lw.s	%r2 %f0 8
	sw.s	%r3 %f0 8
	lw	%r26 %r3 36
	lw	%r3 %r3 0
	addi	%r3 %r3 -1
	lw	%r26 %r24 32
	sw	%r26 %r1 72
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r4 118
	lw	%r26 %r1 72
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r24 28
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
be_cont.24348 :
	lw	%r26 %r1 8
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 20
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r26 %r3 16
	lw.s	%r3 %f0 0
	lw.s	%r2 %f1 0
	lw	%r26 %r4 12
	lw.s	%r4 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r3 %f0 0
	lw.s	%r3 %f0 4
	lw.s	%r2 %f1 4
	lw.s	%r4 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r3 %f0 4
	lw.s	%r3 %f0 8
	lw.s	%r2 %f1 8
	lw.s	%r4 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r3 %f0 8
be_cont.24338 :
	lw	%r26 %r1 8
	addi	%r1 %r2 1
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
bge_else.24336 :
	retl
ble_else.24335 :
	retl
try_exploit_neighbors.3002 :
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	addi	%r0 %r25 2
	sll	%r1 %r10 %r25
	add	%r4 %r10 %r25
	lw	%r25 %r10 0
	addi	%r0 %r25 4
	bg	%r6 %r25 ble_else.24351
	lw	%r10 %r11 8
	addi	%r0 %r25 2
	sll	%r6 %r12 %r25
	add	%r11 %r12 %r25
	lw	%r25 %r11 0
	addi	%r0 %r25 0
	bl	%r11 %r25 bge_else.24352
	addi	%r0 %r25 2
	sll	%r1 %r11 %r25
	add	%r4 %r11 %r25
	lw	%r25 %r11 0
	lw	%r11 %r11 8
	addi	%r0 %r25 2
	sll	%r6 %r12 %r25
	add	%r11 %r12 %r25
	lw	%r25 %r11 0
	addi	%r0 %r25 2
	sll	%r1 %r12 %r25
	add	%r3 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 8
	addi	%r0 %r25 2
	sll	%r6 %r13 %r25
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bne	%r12 %r11 be_else.24353
	addi	%r0 %r25 2
	sll	%r1 %r12 %r25
	add	%r5 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 8
	addi	%r0 %r25 2
	sll	%r6 %r13 %r25
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bne	%r12 %r11 be_else.24355
	addi	%r1 %r12 -1
	addi	%r0 %r25 2
	sll	%r12 %r12 %r25
	add	%r4 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 8
	addi	%r0 %r25 2
	sll	%r6 %r13 %r25
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bne	%r12 %r11 be_else.24357
	addi	%r1 %r12 1
	addi	%r0 %r25 2
	sll	%r12 %r12 %r25
	add	%r4 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 8
	addi	%r0 %r25 2
	sll	%r6 %r13 %r25
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bne	%r12 %r11 be_else.24359
	addi	%r0 %r11 1
	j	be_cont.24360
be_else.24359 :
	addi	%r0 %r11 0
be_cont.24360 :
	j	be_cont.24358
be_else.24357 :
	addi	%r0 %r11 0
be_cont.24358 :
	j	be_cont.24356
be_else.24355 :
	addi	%r0 %r11 0
be_cont.24356 :
	j	be_cont.24354
be_else.24353 :
	addi	%r0 %r11 0
be_cont.24354 :
	addi	%r0 %r25 0
	bne	%r11 %r25 be_else.24361
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	add	%r4 %r1 %r25
	lw	%r25 %r1 0
	mov	%r6 %r2
	mov	%r8 %r24
	lw	%r24 %r23 0
	jr	%r23
be_else.24361 :
	lw	%r10 %r8 12
	addi	%r0 %r25 2
	sll	%r6 %r10 %r25
	add	%r8 %r10 %r25
	lw	%r25 %r8 0
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.24362
	j	be_cont.24363
be_else.24362 :
	addi	%r0 %r25 2
	sll	%r1 %r8 %r25
	add	%r3 %r8 %r25
	lw	%r25 %r8 0
	lw	%r8 %r8 20
	addi	%r1 %r10 -1
	addi	%r0 %r25 2
	sll	%r10 %r10 %r25
	add	%r4 %r10 %r25
	lw	%r25 %r10 0
	lw	%r10 %r10 20
	addi	%r0 %r25 2
	sll	%r1 %r11 %r25
	add	%r4 %r11 %r25
	lw	%r25 %r11 0
	lw	%r11 %r11 20
	addi	%r1 %r12 1
	addi	%r0 %r25 2
	sll	%r12 %r12 %r25
	add	%r4 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 20
	addi	%r0 %r25 2
	sll	%r1 %r13 %r25
	add	%r5 %r13 %r25
	lw	%r25 %r13 0
	lw	%r13 %r13 20
	addi	%r0 %r25 2
	sll	%r6 %r14 %r25
	add	%r8 %r14 %r25
	lw	%r25 %r8 0
	lw.s	%r8 %f0 0
	sw.s	%r9 %f0 0
	lw.s	%r8 %f0 4
	sw.s	%r9 %f0 4
	lw.s	%r8 %f0 8
	sw.s	%r9 %f0 8
	addi	%r0 %r25 2
	sll	%r6 %r8 %r25
	add	%r10 %r8 %r25
	lw	%r25 %r8 0
	lw.s	%r9 %f0 0
	lw.s	%r8 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r9 %f0 0
	lw.s	%r9 %f0 4
	lw.s	%r8 %f1 4
	add.s	%f1 %f0 %f0
	sw.s	%r9 %f0 4
	lw.s	%r9 %f0 8
	lw.s	%r8 %f1 8
	add.s	%f1 %f0 %f0
	sw.s	%r9 %f0 8
	addi	%r0 %r25 2
	sll	%r6 %r8 %r25
	add	%r11 %r8 %r25
	lw	%r25 %r8 0
	lw.s	%r9 %f0 0
	lw.s	%r8 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r9 %f0 0
	lw.s	%r9 %f0 4
	lw.s	%r8 %f1 4
	add.s	%f1 %f0 %f0
	sw.s	%r9 %f0 4
	lw.s	%r9 %f0 8
	lw.s	%r8 %f1 8
	add.s	%f1 %f0 %f0
	sw.s	%r9 %f0 8
	addi	%r0 %r25 2
	sll	%r6 %r8 %r25
	add	%r12 %r8 %r25
	lw	%r25 %r8 0
	lw.s	%r9 %f0 0
	lw.s	%r8 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r9 %f0 0
	lw.s	%r9 %f0 4
	lw.s	%r8 %f1 4
	add.s	%f1 %f0 %f0
	sw.s	%r9 %f0 4
	lw.s	%r9 %f0 8
	lw.s	%r8 %f1 8
	add.s	%f1 %f0 %f0
	sw.s	%r9 %f0 8
	addi	%r0 %r25 2
	sll	%r6 %r8 %r25
	add	%r13 %r8 %r25
	lw	%r25 %r8 0
	lw.s	%r9 %f0 0
	lw.s	%r8 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r9 %f0 0
	lw.s	%r9 %f0 4
	lw.s	%r8 %f1 4
	add.s	%f1 %f0 %f0
	sw.s	%r9 %f0 4
	lw.s	%r9 %f0 8
	lw.s	%r8 %f1 8
	add.s	%f1 %f0 %f0
	sw.s	%r9 %f0 8
	addi	%r0 %r25 2
	sll	%r1 %r8 %r25
	add	%r4 %r8 %r25
	lw	%r25 %r8 0
	lw	%r8 %r8 16
	addi	%r0 %r25 2
	sll	%r6 %r10 %r25
	add	%r8 %r10 %r25
	lw	%r25 %r8 0
	lw.s	%r7 %f0 0
	lw.s	%r8 %f1 0
	lw.s	%r9 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r7 %f0 0
	lw.s	%r7 %f0 4
	lw.s	%r8 %f1 4
	lw.s	%r9 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r7 %f0 4
	lw.s	%r7 %f0 8
	lw.s	%r8 %f1 8
	lw.s	%r9 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r7 %f0 8
be_cont.24363 :
	addi	%r6 %r6 1
	lw	%r24 %r23 0
	jr	%r23
bge_else.24352 :
	retl
ble_else.24351 :
	retl
pretrace_diffuse_rays.3015 :
	lw	%r24 %r3 24
	lw	%r24 %r4 20
	lw	%r24 %r5 16
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	addi	%r0 %r25 4
	bg	%r2 %r25 ble_else.24366
	lw	%r1 %r9 8
	addi	%r0 %r25 2
	sll	%r2 %r10 %r25
	add	%r9 %r10 %r25
	lw	%r25 %r9 0
	addi	%r0 %r25 0
	bl	%r9 %r25 bge_else.24367
	lw	%r1 %r9 12
	addi	%r0 %r25 2
	sll	%r2 %r10 %r25
	add	%r9 %r10 %r25
	lw	%r25 %r9 0
	sw	%r26 %r24 0
	sw	%r26 %r2 4
	addi	%r0 %r25 0
	bne	%r9 %r25 be_else.24368
	j	be_cont.24369
be_else.24368 :
	lw	%r1 %r9 24
	lw	%r9 %r9 0
	addi	%r0 %r10 l.20095
	ilw.s	%r10 %f0 0
	sw.s	%r8 %f0 0
	sw.s	%r8 %f0 4
	sw.s	%r8 %f0 8
	lw	%r1 %r10 28
	lw	%r1 %r11 4
	addi	%r0 %r25 2
	sll	%r9 %r9 %r25
	add	%r7 %r9 %r25
	lw	%r25 %r7 0
	addi	%r0 %r25 2
	sll	%r2 %r9 %r25
	add	%r10 %r9 %r25
	lw	%r25 %r9 0
	addi	%r0 %r25 2
	sll	%r2 %r10 %r25
	add	%r11 %r10 %r25
	lw	%r25 %r10 0
	lw.s	%r10 %f0 0
	sw.s	%r3 %f0 0
	lw.s	%r10 %f0 4
	sw.s	%r3 %f0 4
	lw.s	%r10 %f0 8
	sw.s	%r3 %f0 8
	lw	%r5 %r3 0
	addi	%r3 %r3 -1
	sw	%r26 %r8 8
	sw	%r26 %r1 12
	sw	%r26 %r10 16
	sw	%r26 %r9 20
	sw	%r26 %r7 24
	sw	%r26 %r6 28
	mov	%r3 %r2
	mov	%r10 %r1
	mov	%r4 %r24
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r4 118
	lw	%r26 %r1 24
	lw	%r26 %r2 20
	lw	%r26 %r3 16
	lw	%r26 %r24 28
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 12
	lw	%r1 %r2 20
	lw	%r26 %r3 4
	addi	%r0 %r25 2
	sll	%r3 %r4 %r25
	add	%r2 %r4 %r25
	lw	%r25 %r2 0
	lw	%r26 %r4 8
	lw.s	%r4 %f0 0
	sw.s	%r2 %f0 0
	lw.s	%r4 %f0 4
	sw.s	%r2 %f0 4
	lw.s	%r4 %f0 8
	sw.s	%r2 %f0 8
be_cont.24369 :
	lw	%r26 %r2 4
	addi	%r2 %r2 1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.24367 :
	retl
ble_else.24366 :
	retl
pretrace_pixels.3018 :
	lw	%r24 %r4 36
	lw	%r24 %r5 32
	lw	%r24 %r6 28
	lw	%r24 %r7 24
	lw	%r24 %r8 20
	lw	%r24 %r9 16
	lw	%r24 %r10 12
	lw	%r24 %r11 8
	lw	%r24 %r12 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.24372
	lw.s	%r8 %f3 0
	lw	%r12 %r8 0
	sub	%r2 %r8 %r8
	mtc1	%r8 %f4
	mul.s	%f4 %f3 %f3
	lw.s	%r7 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	sw.s	%r10 %f4 0
	lw.s	%r7 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	sw.s	%r10 %f4 4
	lw.s	%r7 %f4 8
	mul.s	%f4 %f3 %f3
	add.s	%f2 %f3 %f3
	sw.s	%r10 %f3 8
	lw.s	%r10 %f3 0
	mul.s	%f3 %f3 %f3
	lw.s	%r10 %f4 4
	mul.s	%f4 %f4 %f4
	add.s	%f4 %f3 %f3
	lw.s	%r10 %f4 8
	mul.s	%f4 %f4 %f4
	add.s	%f4 %f3 %f3
	sqrt.s	%f3 %f3
	addi	%r0 %r7 l.20095
	ilw.s	%r7 %f4 0
	fbne	%f3 %f4 fbe_else.24373
	addi	%r0 %r7 1
	j	fbe_cont.24374
fbe_else.24373 :
	addi	%r0 %r7 0
fbe_cont.24374 :
	addi	%r0 %r25 0
	bne	%r7 %r25 be_else.24375
	addi	%r0 %r7 l.20063
	ilw.s	%r7 %f4 0
	div.s	%f3 %f4 %f3
	j	be_cont.24376
be_else.24375 :
	addi	%r0 %r7 l.20063
	ilw.s	%r7 %f3 0
be_cont.24376 :
	lw.s	%r10 %f4 0
	mul.s	%f3 %f4 %f4
	sw.s	%r10 %f4 0
	lw.s	%r10 %f4 4
	mul.s	%f3 %f4 %f4
	sw.s	%r10 %f4 4
	lw.s	%r10 %f4 8
	mul.s	%f3 %f4 %f3
	sw.s	%r10 %f3 8
	addi	%r0 %r7 l.20095
	ilw.s	%r7 %f3 0
	sw.s	%r9 %f3 0
	sw.s	%r9 %f3 4
	sw.s	%r9 %f3 8
	lw.s	%r4 %f3 0
	sw.s	%r6 %f3 0
	lw.s	%r4 %f3 4
	sw.s	%r6 %f3 4
	lw.s	%r4 %f3 8
	sw.s	%r6 %f3 8
	addi	%r0 %r4 0
	addi	%r0 %r6 l.20063
	ilw.s	%r6 %f3 0
	addi	%r0 %r25 2
	sll	%r2 %r6 %r25
	add	%r1 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 l.20095
	ilw.s	%r7 %f4 0
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw.s	%r26 %f0 16
	sw	%r26 %r24 24
	sw	%r26 %r11 28
	sw	%r26 %r3 32
	sw	%r26 %r9 36
	sw	%r26 %r1 40
	sw	%r26 %r2 44
	mov	%r6 %r3
	mov	%r10 %r2
	mov	%r4 %r1
	mov	%r5 %r24
	mov.s	%f4 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	lw	%r26 %r4 36
	lw.s	%r4 %f0 0
	sw.s	%r2 %f0 0
	lw.s	%r4 %f0 4
	sw.s	%r2 %f0 4
	lw.s	%r4 %f0 8
	sw.s	%r2 %f0 8
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 24
	lw	%r26 %r4 32
	sw	%r2 %r4 0
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r24 28
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	addi	%r1 %r2 -1
	lw	%r26 %r1 32
	addi	%r1 %r1 1
	addi	%r0 %r25 5
	bl	%r1 %r25 bge_else.24377
	addi	%r1 %r3 -5
	j	bge_cont.24378
bge_else.24377 :
	mov	%r1 %r3
bge_cont.24378 :
	lw.s	%r26 %f0 16
	lw.s	%r26 %f1 8
	lw.s	%r26 %f2 0
	lw	%r26 %r1 40
	lw	%r26 %r24 24
	lw	%r24 %r23 0
	jr	%r23
bge_else.24372 :
	retl
scan_pixel.3029 :
	lw	%r24 %r6 16
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	lw	%r8 %r10 0
	bge	%r1 %r10 bl_else.24380
	addi	%r0 %r25 2
	sll	%r1 %r10 %r25
	add	%r4 %r10 %r25
	lw	%r25 %r10 0
	lw	%r10 %r10 0
	lw.s	%r10 %f0 0
	sw.s	%r7 %f0 0
	lw.s	%r10 %f0 4
	sw.s	%r7 %f0 4
	lw.s	%r10 %f0 8
	sw.s	%r7 %f0 8
	addi	%r2 %r10 1
	lw	%r8 %r11 4
	bge	%r10 %r11 bl_else.24381
	addi	%r0 %r25 0
	ble	%r2 %r25 bg_else.24383
	addi	%r1 %r10 1
	lw	%r8 %r8 0
	bge	%r10 %r8 bl_else.24385
	addi	%r0 %r25 0
	ble	%r1 %r25 bg_else.24387
	addi	%r0 %r8 1
	j	bg_cont.24388
bg_else.24387 :
	addi	%r0 %r8 0
bg_cont.24388 :
	j	bl_cont.24386
bl_else.24385 :
	addi	%r0 %r8 0
bl_cont.24386 :
	j	bg_cont.24384
bg_else.24383 :
	addi	%r0 %r8 0
bg_cont.24384 :
	j	bl_cont.24382
bl_else.24381 :
	addi	%r0 %r8 0
bl_cont.24382 :
	sw	%r26 %r5 0
	sw	%r26 %r4 4
	sw	%r26 %r3 8
	sw	%r26 %r2 12
	sw	%r26 %r24 16
	sw	%r26 %r1 20
	sw	%r26 %r7 24
	addi	%r0 %r25 0
	bne	%r8 %r25 be_else.24389
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	add	%r4 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r8 0
	mov	%r8 %r2
	mov	%r6 %r1
	mov	%r9 %r24
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	j	be_cont.24390
be_else.24389 :
	addi	%r0 %r8 0
	mov	%r6 %r24
	mov	%r8 %r6
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
be_cont.24390 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 0
	mfc1	%r2 %f0
	addi	%r0 %r25 255
	ble	%r2 %r25 bg_else.24391
	addi	%r0 %r2 255
	j	bg_cont.24392
bg_else.24391 :
	addi	%r0 %r25 0
	bge	%r2 %r25 bl_else.24393
	addi	%r0 %r2 0
	j	bl_cont.24394
bl_else.24393 :
bl_cont.24394 :
bg_cont.24392 :
	addi	%r0 %r3 100
	div	%r2 %r3 %r3
	addi	%r0 %r4 100
	mul	%r3 %r4 %r4
	sub	%r2 %r4 %r4
	addi	%r0 %r5 10
	div	%r4 %r5 %r4
	addi	%r0 %r5 100
	mul	%r3 %r5 %r5
	sub	%r2 %r5 %r2
	addi	%r0 %r5 10
	mul	%r4 %r5 %r5
	sub	%r2 %r5 %r2
	addi	%r0 %r25 0
	ble	%r3 %r25 bg_else.24395
	addi	%r3 %r3 48
	out	%r3
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bg_cont.24396
bg_else.24395 :
	addi	%r0 %r25 0
	ble	%r4 %r25 bg_else.24397
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bg_cont.24398
bg_else.24397 :
	addi	%r2 %r2 48
	out	%r2
bg_cont.24398 :
bg_cont.24396 :
	addi	%r0 %r2 32
	out	%r2
	lw.s	%r1 %f0 4
	mfc1	%r2 %f0
	addi	%r0 %r25 255
	ble	%r2 %r25 bg_else.24399
	addi	%r0 %r2 255
	j	bg_cont.24400
bg_else.24399 :
	addi	%r0 %r25 0
	bge	%r2 %r25 bl_else.24401
	addi	%r0 %r2 0
	j	bl_cont.24402
bl_else.24401 :
bl_cont.24402 :
bg_cont.24400 :
	addi	%r0 %r3 100
	div	%r2 %r3 %r3
	addi	%r0 %r4 100
	mul	%r3 %r4 %r4
	sub	%r2 %r4 %r4
	addi	%r0 %r5 10
	div	%r4 %r5 %r4
	addi	%r0 %r5 100
	mul	%r3 %r5 %r5
	sub	%r2 %r5 %r2
	addi	%r0 %r5 10
	mul	%r4 %r5 %r5
	sub	%r2 %r5 %r2
	addi	%r0 %r25 0
	ble	%r3 %r25 bg_else.24403
	addi	%r3 %r3 48
	out	%r3
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bg_cont.24404
bg_else.24403 :
	addi	%r0 %r25 0
	ble	%r4 %r25 bg_else.24405
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bg_cont.24406
bg_else.24405 :
	addi	%r2 %r2 48
	out	%r2
bg_cont.24406 :
bg_cont.24404 :
	addi	%r0 %r2 32
	out	%r2
	lw.s	%r1 %f0 8
	mfc1	%r1 %f0
	addi	%r0 %r25 255
	ble	%r1 %r25 bg_else.24407
	addi	%r0 %r1 255
	j	bg_cont.24408
bg_else.24407 :
	addi	%r0 %r25 0
	bge	%r1 %r25 bl_else.24409
	addi	%r0 %r1 0
	j	bl_cont.24410
bl_else.24409 :
bl_cont.24410 :
bg_cont.24408 :
	addi	%r0 %r2 100
	div	%r1 %r2 %r2
	addi	%r0 %r3 100
	mul	%r2 %r3 %r3
	sub	%r1 %r3 %r3
	addi	%r0 %r4 10
	div	%r3 %r4 %r3
	addi	%r0 %r4 100
	mul	%r2 %r4 %r4
	sub	%r1 %r4 %r1
	addi	%r0 %r4 10
	mul	%r3 %r4 %r4
	sub	%r1 %r4 %r1
	addi	%r0 %r25 0
	ble	%r2 %r25 bg_else.24411
	addi	%r2 %r2 48
	out	%r2
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bg_cont.24412
bg_else.24411 :
	addi	%r0 %r25 0
	ble	%r3 %r25 bg_else.24413
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bg_cont.24414
bg_else.24413 :
	addi	%r1 %r1 48
	out	%r1
bg_cont.24414 :
bg_cont.24412 :
	addi	%r0 %r1 10
	out	%r1
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r4 4
	lw	%r26 %r5 0
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
bl_else.24380 :
	retl
scan_line.3035 :
	lw	%r24 %r6 28
	lw	%r24 %r7 24
	lw	%r24 %r8 20
	lw	%r24 %r9 16
	lw	%r24 %r10 12
	lw	%r24 %r11 8
	lw	%r24 %r12 4
	lw	%r11 %r13 4
	bge	%r1 %r13 bl_else.24416
	lw	%r11 %r13 4
	addi	%r13 %r13 -1
	sw	%r26 %r24 0
	sw	%r26 %r5 4
	sw	%r26 %r4 8
	sw	%r26 %r3 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r8 24
	bge	%r1 %r13 bl_else.24417
	addi	%r1 %r13 1
	lw.s	%r9 %f0 0
	lw	%r12 %r9 4
	sub	%r13 %r9 %r9
	mtc1	%r9 %f1
	mul.s	%f1 %f0 %f0
	lw.s	%r7 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r6 %f2 0
	add.s	%f2 %f1 %f1
	lw.s	%r7 %f2 4
	mul.s	%f2 %f0 %f2
	lw.s	%r6 %f3 4
	add.s	%f3 %f2 %f2
	lw.s	%r7 %f3 8
	mul.s	%f3 %f0 %f0
	lw.s	%r6 %f3 8
	add.s	%f3 %f0 %f0
	lw	%r11 %r6 0
	addi	%r6 %r6 -1
	mov	%r5 %r3
	mov	%r6 %r2
	mov	%r4 %r1
	mov	%r10 %r24
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	j	bl_cont.24418
bl_else.24417 :
bl_cont.24418 :
	addi	%r0 %r1 0
	lw	%r26 %r2 20
	lw	%r26 %r3 16
	lw	%r26 %r4 12
	lw	%r26 %r5 8
	lw	%r26 %r24 24
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	addi	%r2 %r2 2
	addi	%r0 %r25 5
	bl	%r2 %r25 bge_else.24419
	addi	%r2 %r5 -5
	j	bge_cont.24420
bge_else.24419 :
	mov	%r2 %r5
bge_cont.24420 :
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r4 16
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bl_else.24416 :
	retl
init_line_elements.3045 :
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.24422
	addi	%r0 %r3 3
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 16
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 24
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 24
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 24
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 24
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 28
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 28
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 28
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 28
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 32
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 36
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r2 36
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r2 36
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r2 36
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r2 36
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 32
	sw	%r1 %r2 24
	lw	%r26 %r2 28
	sw	%r1 %r2 20
	lw	%r26 %r2 24
	sw	%r1 %r2 16
	lw	%r26 %r2 20
	sw	%r1 %r2 12
	lw	%r26 %r2 16
	sw	%r1 %r2 8
	lw	%r26 %r2 12
	sw	%r1 %r2 4
	lw	%r26 %r2 8
	sw	%r1 %r2 0
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 0
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r2 %r2 -1
	mov	%r4 %r1
	j	init_line_elements.3045
bge_else.24422 :
	retl
euler.6182.12195 :
	add.s	%f3 %f0 %f4
	fbge	%f2 %f4 fbl_else.24423
	mov.s	%f1 %f0
	retl
fbl_else.24423 :
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f4 0
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f5 0
	mul.s	%f0 %f0 %f6
	add.s	%f6 %f5 %f5
	div.s	%f5 %f4 %f4
	mul.s	%f4 %f3 %f4
	add.s	%f4 %f1 %f1
	add.s	%f3 %f0 %f0
	j	euler.6182.12195
euler.6182.12176 :
	add.s	%f3 %f0 %f4
	fbge	%f2 %f4 fbl_else.24424
	mov.s	%f1 %f0
	retl
fbl_else.24424 :
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f4 0
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f5 0
	mul.s	%f0 %f0 %f6
	add.s	%f6 %f5 %f5
	div.s	%f5 %f4 %f4
	mul.s	%f4 %f3 %f4
	add.s	%f4 %f1 %f1
	add.s	%f3 %f0 %f0
	j	euler.6182.12176
calc_dirvec.3055 :
	lw	%r24 %r4 4
	addi	%r0 %r25 5
	bl	%r1 %r25 bge_else.24425
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f3 0
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	div.s	%f2 %f0 %f0
	div.s	%f2 %f1 %f1
	addi	%r0 %r1 l.20063
	ilw.s	%r1 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r25 2
	sll	%r2 %r1 %r25
	add	%r4 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r25 2
	sll	%r3 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	sw.s	%r2 %f0 0
	sw.s	%r2 %f1 4
	sw.s	%r2 %f2 8
	addi	%r3 %r2 40
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	neg.s	%f1 %f3
	sw.s	%r2 %f0 0
	sw.s	%r2 %f2 4
	sw.s	%r2 %f3 8
	addi	%r3 %r2 80
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	neg.s	%f0 %f3
	neg.s	%f1 %f4
	sw.s	%r2 %f2 0
	sw.s	%r2 %f3 4
	sw.s	%r2 %f4 8
	addi	%r3 %r2 1
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	neg.s	%f0 %f3
	neg.s	%f1 %f4
	neg.s	%f2 %f5
	sw.s	%r2 %f3 0
	sw.s	%r2 %f4 4
	sw.s	%r2 %f5 8
	addi	%r3 %r2 41
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	neg.s	%f0 %f3
	neg.s	%f2 %f4
	sw.s	%r2 %f3 0
	sw.s	%r2 %f4 4
	sw.s	%r2 %f1 8
	addi	%r3 %r2 81
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r1 0
	lw	%r1 %r1 0
	neg.s	%f2 %f2
	sw.s	%r1 %f2 0
	sw.s	%r1 %f0 4
	sw.s	%r1 %f1 8
	retl
bge_else.24425 :
	mul.s	%f1 %f1 %f0
	addi	%r0 %r4 l.21118
	ilw.s	%r4 %f1 0
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r4 l.20063
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f1
	addi	%r0 %r4 l.20958
	ilw.s	%r4 %f4 0
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f5 0
	addi	%r0 %r4 l.20095
	ilw.s	%r4 %f6 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw.s	%r26 %f3 16
	sw	%r26 %r1 24
	sw.s	%r26 %f0 32
	sw.s	%r26 %f2 40
	mov.s	%f4 %f3
	mov.s	%f1 %f2
	mov.s	%f5 %f0
	mov.s	%f6 %f1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	euler.6182.12195
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	sw.s	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	sin.2579
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 56
	mov.s	%f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	cos.2581
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	div.s	%f0 %f1 %f0
	lw.s	%r26 %f1 32
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 24
	addi	%r1 %r1 1
	mul.s	%f0 %f0 %f1
	addi	%r0 %r2 l.21118
	ilw.s	%r2 %f2 0
	add.s	%f2 %f1 %f1
	sqrt.s	%f1 %f1
	addi	%r0 %r2 l.20063
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f2
	addi	%r0 %r2 l.20958
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f4 0
	addi	%r0 %r2 l.20095
	ilw.s	%r2 %f5 0
	sw.s	%r26 %f0 64
	sw	%r26 %r1 72
	sw.s	%r26 %f1 80
	mov.s	%f5 %f1
	mov.s	%f4 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	euler.6182.12176
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	sin.2579
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 88
	sw.s	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	cos.2581
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 96
	div.s	%f0 %f1 %f0
	lw.s	%r26 %f1 80
	mul.s	%f1 %f0 %f1
	lw.s	%r26 %f0 64
	lw.s	%r26 %f2 40
	lw.s	%r26 %f3 16
	lw	%r26 %r1 72
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
calc_dirvecs.3063 :
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.24430
	mtc1	%r1 %f1
	addi	%r0 %r5 l.21798
	ilw.s	%r5 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r5 l.21800
	ilw.s	%r5 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r5 0
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f1 0
	addi	%r0 %r6 l.20095
	ilw.s	%r6 %f3 0
	sw	%r26 %r24 0
	sw.s	%r26 %f0 8
	sw	%r26 %r2 16
	sw	%r26 %r4 20
	sw	%r26 %r3 24
	sw	%r26 %r1 28
	mov	%r5 %r1
	mov	%r4 %r24
	mov.s	%f3 %f31
	mov.s	%f0 %f3
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 28
	mtc1	%r1 %f0
	addi	%r0 %r2 l.21798
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.21118
	ilw.s	%r2 %f1 0
	add.s	%f1 %f0 %f2
	addi	%r0 %r2 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.20095
	ilw.s	%r3 %f1 0
	lw	%r26 %r3 24
	addi	%r3 %r4 2
	lw.s	%r26 %f3 8
	lw	%r26 %r5 16
	lw	%r26 %r24 20
	mov	%r4 %r3
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 28
	addi	%r1 %r1 -1
	lw	%r26 %r2 16
	addi	%r2 %r2 1
	addi	%r0 %r25 5
	bl	%r2 %r25 bge_else.24432
	addi	%r2 %r2 -5
	j	bge_cont.24433
bge_else.24432 :
bge_cont.24433 :
	lw.s	%r26 %f0 8
	lw	%r26 %r3 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.24430 :
	retl
calc_dirvec_rows.3068 :
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.24435
	mtc1	%r1 %f0
	addi	%r0 %r5 l.21798
	ilw.s	%r5 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r5 l.21800
	ilw.s	%r5 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r5 4
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r2 8
	sw	%r26 %r1 12
	mov	%r5 %r1
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r1 %r1 -1
	lw	%r26 %r2 8
	addi	%r2 %r2 2
	addi	%r0 %r25 5
	bl	%r2 %r25 bge_else.24436
	addi	%r2 %r2 -5
	j	bge_cont.24437
bge_else.24436 :
bge_cont.24437 :
	lw	%r26 %r3 4
	addi	%r3 %r3 4
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.24435 :
	retl
create_dirvec_elements.3074 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.24439
	addi	%r0 %r4 3
	addi	%r0 %r5 l.20095
	ilw.s	%r5 %f0 0
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw	%r26 %r2 8
	sw	%r26 %r3 12
	mov	%r4 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 12
	lw	%r1 %r1 0
	sw	%r26 %r2 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 16
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r2 %r2 -1
	lw	%r26 %r24 0
	mov	%r4 %r1
	lw	%r24 %r23 0
	jr	%r23
bge_else.24439 :
	retl
create_dirvecs.3077 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.24441
	addi	%r0 %r5 120
	addi	%r0 %r6 3
	addi	%r0 %r7 l.20095
	ilw.s	%r7 %f0 0
	sw	%r26 %r24 0
	sw	%r26 %r4 4
	sw	%r26 %r3 8
	sw	%r26 %r1 12
	sw	%r26 %r5 16
	sw	%r26 %r2 20
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r1 20
	lw	%r1 %r1 0
	sw	%r26 %r2 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 24
	sw	%r2 %r1 0
	lw	%r26 %r1 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r25 2
	sll	%r2 %r1 %r25
	add	%r4 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 118
	lw	%r26 %r24 4
	mov	%r3 %r2
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 12
	addi	%r1 %r1 -1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.24441 :
	retl
init_dirvec_constants.3079 :
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.24443
	addi	%r0 %r25 2
	sll	%r2 %r5 %r25
	add	%r1 %r5 %r25
	lw	%r25 %r5 0
	lw	%r3 %r3 0
	addi	%r3 %r3 -1
	sw	%r26 %r1 0
	sw	%r26 %r24 4
	sw	%r26 %r2 8
	mov	%r3 %r2
	mov	%r5 %r1
	mov	%r4 %r24
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	addi	%r1 %r2 -1
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
bge_else.24443 :
	retl
init_vecset_constants.3082 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.24445
	addi	%r0 %r25 2
	sll	%r1 %r4 %r25
	add	%r3 %r4 %r25
	lw	%r25 %r3 0
	addi	%r0 %r4 119
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	mov	%r2 %r24
	mov	%r4 %r2
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	addi	%r1 %r1 -1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.24445 :
	retl
#libraries
min_caml_create_array :
	mov	%r1 %r3
	mov	%r27 %r1
create_array_loop :
	bne     %r3 %r0 create_array_cont
	retl
create_array_cont :
	sw	%r27 %r2 0
	addi 	%r3 %r3 -1
	addi	%r27 %r27 4
	j	create_array_loop
min_caml_create_float_array :
	mov	%r1 %r2
	mov	%r27 %r1
create_float_array_loop :
	bne	%r2 %r0	create_float_array_cont
	retl
create_float_array_cont :
	sw.s	%r27 %f0 0
	addi	%r2 %r2 -1
	addi	%r27 %r27 4
	j	create_float_array_loop
