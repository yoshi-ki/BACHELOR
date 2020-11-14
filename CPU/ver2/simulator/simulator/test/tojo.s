#data_section
l.1110 :	# -200.000000
	.float	0xc3480000
l.1108 :	# 200.000000
	.float	0x43480000
l.1041 :	# 128.000000
	.float	0x43000000
l.1015 :	# 3.141593
	.float	0x40490fdb
l.1003 :	# 0.900000
	.float	0x3f666666
l.674 :	# 150.000000
	.float	0x43160000
l.498 :	# -150.000000
	.float	0xc3160000
l.493 :	# 0.100000
	.float	0x3dcccccd
l.489 :	# -2.000000
	.float	0xc0000000
l.487 :	# 0.003906
	.float	0x3b800000
l.476 :	# 20.000000
	.float	0x41a00000
l.474 :	# 0.050000
	.float	0x3d4ccccd
l.469 :	# 0.250000
	.float	0x3e800000
l.463 :	# 10.000000
	.float	0x41200000
l.461 :	# 0.300000
	.float	0x3e99999a
l.459 :	# 255.000000
	.float	0x437f0000
l.453 :	# 0.150000
	.float	0x3e19999a
l.386 :	# 3.141593
	.float	0x40490fdb
l.384 :	# 30.000000
	.float	0x41f00000
l.335 :	# 0.333333
	.float	0x3eaaaaaa
l.333 :	# 0.200000
	.float	0x3e4ccccd
l.331 :	# 0.142857
	.float	0x3e124925
l.329 :	# 0.111111
	.float	0x3de38e38
l.327 :	# 0.089764
	.float	0x3db7d66e
l.325 :	# 0.060035
	.float	0x3d75e7c5
l.323 :	# -1.570796
	.float	0xbfc90fdb
l.319 :	# 2.437500
	.float	0x401c0000
l.317 :	# 0.437500
	.float	0x3ee00000
l.313 :	# 15.000000
	.float	0x41700000
l.311 :	# 0.000100
	.float	0x38d1b717
l.290 :	# 100000000.000000
	.float	0x4cbebc20
l.287 :	# 1000000000.000000
	.float	0x4e6e6b28
l.223 :	# -0.100000
	.float	0xbdcccccd
l.208 :	# 0.010000
	.float	0x3c23d70a
l.206 :	# -0.200000
	.float	0xbe4ccccd
l.159 :	# 2.000000
	.float	0x40000000
l.129 :	# 0.017453
	.float	0x3c8efa35
l.48 :	# -1.000000
	.float	0xbf800000
l.35 :	# 0.166667
	.float	0x3e2aaaac
l.33 :	# 0.008333
	.float	0x3c088666
l.31 :	# 0.000196
	.float	0x394d64b6
l.28 :	# 0.500000
	.float	0x3f000000
l.26 :	# 0.041664
	.float	0x3d2aa789
l.24 :	# 0.001370
	.float	0x3ab38106
l.21 :	# 0.785398
	.float	0x3f490fdb
l.19 :	# 1.570796
	.float	0x3fc90fdb
l.17 :	# 1.000000
	.float	0x3f800000
l.15 :	# 0.000000
	.float	0x0
l.13 :	# 6.283185
	.float	0x40c90fdb
#text_section
program_start :
	addi	%r0 %r1 l.1015
	ilw.s	%r1 %f0 0
	mov	%r27 %r1
	addi	%r27 %r27 8
	addi	%r0 %r2 sin.0
	sw	%r1 %r2 0
	sw.s	%r1 %f0 4
	mov	%r27 %r2
	addi	%r27 %r27 8
	addi	%r0 %r3 cos.0
	sw	%r2 %r3 0
	sw.s	%r2 %f0 4
	addi	%r0 %r3 1
	addi	%r0 %r4 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	min_caml_create_array 
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	addi	%r0 %r2 0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 60
	addi	%r0 %r3 0
	addi	%r0 %r4 0
	addi	%r0 %r5 0
	addi	%r0 %r6 0
	addi	%r0 %r7 0
	mov	%r27 %r8
	addi	%r27 %r27 44
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
	mov	%r2 %r29
	mov	%r1 %r2
	mov	%r29 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	addi	%r0 %r2 1
	addi	%r0 %r3 l.459
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 50
	addi	%r0 %r3 1
	addi	%r0 %r4 -1
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
	addi	%r0 %r3 1
	lw	%r1 %r4 0
	sw	%r26 %r1 36
	sw	%r26 %r2 40
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 1
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 44
	mov	%r2 %r1
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 48
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r2 1
	addi	%r0 %r3 l.287
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 52
	mov	%r2 %r1
	sw	%r26 %r28 56
	addi	%r26 %r26 60
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -60
	lw	%r26 %r28 56
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 60
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 64
	addi	%r26 %r26 68
	jal	min_caml_create_array 
	addi	%r26 %r26 -68
	lw	%r26 %r28 64
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 64
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 68
	mov	%r2 %r1
	sw	%r26 %r28 72
	addi	%r26 %r26 76
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 72
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 76
	mov	%r2 %r1
	sw	%r26 %r28 80
	addi	%r26 %r26 84
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 80
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 84
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 88
	addi	%r26 %r26 92
	jal	min_caml_create_array 
	addi	%r26 %r26 -92
	lw	%r26 %r28 88
	addi	%r0 %r2 1
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 88
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 92
	mov	%r2 %r1
	sw	%r26 %r28 96
	addi	%r26 %r26 100
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 96
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 100
	mov	%r2 %r1
	sw	%r26 %r28 104
	addi	%r26 %r26 108
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 104
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 108
	mov	%r2 %r1
	sw	%r26 %r28 112
	addi	%r26 %r26 116
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -116
	lw	%r26 %r28 112
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 112
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r2 0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 116
	mov	%r2 %r1
	sw	%r26 %r28 120
	addi	%r26 %r26 124
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -124
	lw	%r26 %r28 120
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 120
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_array 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 0
	mov	%r27 %r3
	addi	%r27 %r27 8
	sw	%r3 %r1 4
	lw	%r26 %r1 120
	sw	%r3 %r1 0
	mov	%r3 %r1
	mov	%r2 %r29
	mov	%r1 %r2
	mov	%r29 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_array 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_array 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 124
	mov	%r2 %r1
	sw	%r26 %r28 128
	addi	%r26 %r26 132
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -132
	lw	%r26 %r28 128
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 128
	mov	%r2 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	addi	%r0 %r2 60
	lw	%r26 %r3 128
	sw	%r26 %r1 132
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 136
	addi	%r26 %r26 140
	jal	min_caml_create_array 
	addi	%r26 %r26 -140
	lw	%r26 %r28 136
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r3 132
	sw	%r2 %r3 0
	addi	%r0 %r4 0
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f0 0
	sw	%r26 %r2 136
	sw	%r26 %r1 140
	mov	%r4 %r1
	sw	%r26 %r28 144
	addi	%r26 %r26 148
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -148
	lw	%r26 %r28 144
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 144
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_array 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 144
	sw	%r2 %r1 0
	mov	%r2 %r1
	addi	%r0 %r2 180
	addi	%r0 %r3 0
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f0 0
	mov	%r27 %r4
	addi	%r27 %r27 12
	sw.s	%r4 %f0 8
	sw	%r4 %r1 4
	sw	%r4 %r3 0
	mov	%r4 %r1
	mov	%r2 %r29
	mov	%r1 %r2
	mov	%r29 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_array 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 148
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 152
	addi	%r26 %r26 156
	jal	min_caml_create_array 
	addi	%r26 %r26 -156
	lw	%r26 %r28 152
	mov	%r27 %r2
	addi	%r27 %r27 20
	addi	%r0 %r3 read_object.0
	sw	%r2 %r3 0
	lw	%r26 %r3 4
	sw	%r2 %r3 16
	lw	%r26 %r4 12
	sw	%r2 %r4 12
	lw	%r26 %r5 8
	sw	%r2 %r5 8
	lw	%r26 %r6 0
	sw	%r2 %r6 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r8 read_and_network.0
	sw	%r7 %r8 0
	lw	%r26 %r8 36
	sw	%r7 %r8 4
	mov	%r27 %r9
	addi	%r27 %r27 8
	addi	%r0 %r10 iter_setup_dirvec_constants.0
	sw	%r9 %r10 0
	sw	%r9 %r4 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r11 setup_startp_constants.0
	sw	%r10 %r11 0
	sw	%r10 %r4 4
	mov	%r27 %r11
	addi	%r27 %r27 8
	addi	%r0 %r12 check_all_inside.0
	sw	%r11 %r12 0
	sw	%r11 %r4 4
	mov	%r27 %r12
	addi	%r27 %r27 32
	addi	%r0 %r13 shadow_check_and_group.0
	sw	%r12 %r13 0
	lw	%r26 %r13 132
	sw	%r12 %r13 28
	lw	%r26 %r14 48
	sw	%r12 %r14 24
	sw	%r12 %r4 20
	lw	%r26 %r15 24
	sw	%r12 %r15 16
	lw	%r26 %r16 60
	sw	%r12 %r16 12
	lw	%r26 %r17 140
	sw	%r12 %r17 8
	sw	%r12 %r11 4
	mov	%r27 %r18
	addi	%r27 %r27 12
	addi	%r0 %r19 shadow_check_one_or_group.0
	sw	%r18 %r19 0
	sw	%r18 %r12 8
	sw	%r18 %r8 4
	mov	%r27 %r12
	addi	%r27 %r27 28
	addi	%r0 %r19 shadow_check_one_or_matrix.0
	sw	%r12 %r19 0
	sw	%r12 %r13 24
	sw	%r12 %r14 20
	sw	%r12 %r18 16
	sw	%r12 %r4 12
	sw	%r12 %r16 8
	sw	%r12 %r17 4
	mov	%r27 %r17
	addi	%r27 %r27 36
	addi	%r0 %r18 solve_each_element.0
	sw	%r17 %r18 0
	lw	%r26 %r18 56
	sw	%r17 %r18 32
	lw	%r26 %r19 96
	sw	%r17 %r19 28
	sw	%r17 %r14 24
	sw	%r17 %r4 20
	lw	%r26 %r20 52
	sw	%r17 %r20 16
	sw	%r17 %r16 12
	lw	%r26 %r21 64
	sw	%r17 %r21 8
	sw	%r17 %r11 4
	mov	%r27 %r22
	addi	%r27 %r27 12
	addi	%r0 %r23 solve_one_or_network.0
	sw	%r22 %r23 0
	sw	%r22 %r17 8
	sw	%r22 %r8 4
	mov	%r27 %r17
	addi	%r27 %r27 24
	addi	%r0 %r23 trace_or_matrix.0
	sw	%r17 %r23 0
	sw	%r17 %r18 20
	sw	%r17 %r19 16
	sw	%r17 %r14 12
	sw	%r17 %r22 8
	sw	%r17 %r4 4
	mov	%r27 %r22
	addi	%r27 %r27 36
	addi	%r0 %r23 solve_each_element_fast.0
	sw	%r22 %r23 0
	sw	%r22 %r18 32
	lw	%r26 %r23 100
	sw	%r22 %r23 28
	sw	%r22 %r14 24
	sw	%r22 %r4 20
	sw	%r22 %r20 16
	sw	%r22 %r16 12
	sw	%r22 %r21 8
	sw	%r22 %r11 4
	mov	%r27 %r11
	addi	%r27 %r27 12
	addi	%r0 %r24 solve_one_or_network_fast.0
	sw	%r11 %r24 0
	sw	%r11 %r22 8
	sw	%r11 %r8 4
	mov	%r27 %r8
	addi	%r27 %r27 20
	addi	%r0 %r22 trace_or_matrix_fast.0
	sw	%r8 %r22 0
	sw	%r8 %r18 16
	sw	%r8 %r14 12
	sw	%r8 %r11 8
	sw	%r8 %r4 4
	mov	%r27 %r11
	addi	%r27 %r27 44
	addi	%r0 %r14 trace_reflections.0
	sw	%r11 %r14 0
	sw	%r11 %r8 40
	sw	%r11 %r18 36
	lw	%r26 %r14 72
	sw	%r11 %r14 32
	sw	%r11 %r12 28
	lw	%r26 %r22 80
	sw	%r11 %r22 24
	lw	%r26 %r24 148
	sw	%r11 %r24 20
	lw	%r26 %r25 44
	sw	%r11 %r25 16
	lw	%r26 %r29 68
	sw	%r11 %r29 12
	sw	%r11 %r20 8
	sw	%r11 %r21 4
	mov	%r27 %r30
	addi	%r27 %r27 88
	addi	%r0 %r24 trace_ray.0
	sw	%r30 %r24 0
	sw	%r30 %r11 84
	sw	%r30 %r17 80
	sw	%r30 %r18 76
	sw	%r30 %r14 72
	sw	%r30 %r23 68
	sw	%r30 %r19 64
	sw	%r30 %r3 60
	sw	%r30 %r12 56
	sw	%r30 %r10 52
	sw	%r30 %r22 48
	sw	%r30 %r25 44
	sw	%r30 %r4 40
	sw	%r30 %r29 36
	sw	%r30 %r1 32
	sw	%r30 %r5 28
	sw	%r30 %r15 24
	sw	%r30 %r20 20
	sw	%r30 %r16 16
	sw	%r30 %r21 12
	sw	%r30 %r6 8
	lw	%r26 %r11 28
	sw	%r30 %r11 4
	mov	%r27 %r17
	addi	%r27 %r27 60
	addi	%r0 %r24 iter_trace_diffuse_rays.0
	sw	%r17 %r24 0
	sw	%r17 %r8 56
	sw	%r17 %r18 52
	sw	%r17 %r14 48
	sw	%r17 %r3 44
	sw	%r17 %r12 40
	sw	%r17 %r25 36
	sw	%r17 %r4 32
	sw	%r17 %r29 28
	sw	%r17 %r15 24
	sw	%r17 %r20 20
	sw	%r17 %r16 16
	sw	%r17 %r21 12
	lw	%r26 %r8 76
	sw	%r17 %r8 8
	sw	%r17 %r6 4
	mov	%r27 %r12
	addi	%r27 %r27 32
	addi	%r0 %r14 do_without_neighbors.0
	sw	%r12 %r14 0
	sw	%r12 %r23 28
	sw	%r12 %r10 24
	sw	%r12 %r22 20
	sw	%r12 %r5 16
	sw	%r12 %r17 12
	lw	%r26 %r14 124
	sw	%r12 %r14 8
	sw	%r12 %r8 4
	mov	%r27 %r16
	addi	%r27 %r27 16
	addi	%r0 %r18 try_exploit_neighbors.0
	sw	%r16 %r18 0
	sw	%r16 %r22 12
	sw	%r16 %r12 8
	sw	%r16 %r8 4
	mov	%r27 %r18
	addi	%r27 %r27 28
	addi	%r0 %r20 pretrace_diffuse_rays.0
	sw	%r18 %r20 0
	sw	%r18 %r23 24
	sw	%r18 %r10 20
	sw	%r18 %r5 16
	sw	%r18 %r17 12
	sw	%r18 %r14 8
	sw	%r18 %r8 4
	mov	%r27 %r8
	addi	%r27 %r27 40
	addi	%r0 %r10 pretrace_pixels.0
	sw	%r8 %r10 0
	lw	%r26 %r10 20
	sw	%r8 %r10 36
	sw	%r8 %r30 32
	sw	%r8 %r19 28
	lw	%r26 %r17 104
	sw	%r8 %r17 24
	lw	%r26 %r19 92
	sw	%r8 %r19 20
	sw	%r8 %r22 16
	lw	%r26 %r20 116
	sw	%r8 %r20 12
	sw	%r8 %r18 8
	lw	%r26 %r18 88
	sw	%r8 %r18 4
	mov	%r27 %r20
	addi	%r27 %r27 20
	addi	%r0 %r21 scan_pixel.0
	sw	%r20 %r21 0
	sw	%r20 %r16 16
	sw	%r20 %r22 12
	lw	%r26 %r16 84
	sw	%r20 %r16 8
	sw	%r20 %r12 4
	mov	%r27 %r12
	addi	%r27 %r27 32
	addi	%r0 %r21 scan_line.0
	sw	%r12 %r21 0
	lw	%r26 %r21 112
	sw	%r12 %r21 28
	lw	%r26 %r22 108
	sw	%r12 %r22 24
	sw	%r12 %r20 20
	sw	%r12 %r19 16
	sw	%r12 %r8 12
	sw	%r12 %r16 8
	sw	%r12 %r18 4
	mov	%r27 %r20
	addi	%r27 %r27 16
	addi	%r0 %r23 calc_dirvec.0
	sw	%r20 %r23 0
	sw	%r20 %r3 12
	sw	%r20 %r14 8
	sw	%r20 %r6 4
	mov	%r27 %r23
	addi	%r27 %r27 8
	addi	%r0 %r24 calc_dirvecs.0
	sw	%r23 %r24 0
	sw	%r23 %r20 4
	mov	%r27 %r20
	addi	%r27 %r27 8
	addi	%r0 %r24 calc_dirvec_rows.0
	sw	%r20 %r24 0
	sw	%r20 %r23 4
	mov	%r27 %r23
	addi	%r27 %r27 8
	addi	%r0 %r24 create_dirvec_elements.0
	sw	%r23 %r24 0
	sw	%r23 %r5 4
	mov	%r27 %r24
	addi	%r27 %r27 16
	addi	%r0 %r29 create_dirvecs.0
	sw	%r24 %r29 0
	sw	%r24 %r5 12
	sw	%r24 %r14 8
	sw	%r24 %r23 4
	mov	%r27 %r23
	addi	%r27 %r27 12
	addi	%r0 %r29 init_dirvec_constants.0
	sw	%r23 %r29 0
	sw	%r23 %r5 8
	sw	%r23 %r9 4
	mov	%r27 %r29
	addi	%r27 %r27 12
	addi	%r0 %r30 init_vecset_constants.0
	sw	%r29 %r30 0
	sw	%r29 %r23 8
	sw	%r29 %r14 4
	addi	%r0 %r14 128
	addi	%r0 %r23 128
	sw	%r16 %r14 0
	sw	%r16 %r23 4
	addi	%r0 %r23 64
	sw	%r18 %r23 0
	addi	%r0 %r23 64
	sw	%r18 %r23 4
	addi	%r0 %r23 l.1041
	ilw.s	%r23 %f0 0
	mtc1	%r14 %f1
	div.s	%f1 %f0 %f0
	sw.s	%r19 %f0 0
	lw	%r16 %r14 0
	addi	%r0 %r23 3
	addi	%r0 %r30 l.15
	ilw.s	%r30 %f0 0
	sw	%r26 %r12 152
	sw	%r26 %r8 156
	sw	%r26 %r1 160
	sw	%r26 %r9 164
	sw	%r26 %r29 168
	sw	%r26 %r20 172
	sw	%r26 %r24 176
	sw	%r26 %r7 180
	sw	%r26 %r2 184
	sw	%r26 %r14 188
	mov	%r23 %r1
	sw	%r26 %r28 192
	addi	%r26 %r26 196
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -196
	lw	%r26 %r28 192
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 192
	mov	%r2 %r1
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 196
	mov	%r2 %r1
	sw	%r26 %r28 200
	addi	%r26 %r26 204
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -204
	lw	%r26 %r28 200
	lw	%r26 %r2 196
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 200
	addi	%r26 %r26 204
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -204
	lw	%r26 %r28 200
	lw	%r26 %r2 196
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 200
	addi	%r26 %r26 204
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -204
	lw	%r26 %r28 200
	lw	%r26 %r2 196
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 200
	addi	%r26 %r26 204
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -204
	lw	%r26 %r28 200
	lw	%r26 %r2 196
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 200
	addi	%r26 %r26 204
	jal	min_caml_create_array 
	addi	%r26 %r26 -204
	lw	%r26 %r28 200
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 200
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 204
	mov	%r2 %r1
	sw	%r26 %r28 208
	addi	%r26 %r26 212
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -212
	lw	%r26 %r28 208
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 208
	addi	%r26 %r26 212
	jal	min_caml_create_array 
	addi	%r26 %r26 -212
	lw	%r26 %r28 208
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 208
	mov	%r2 %r1
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 208
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 208
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 208
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 208
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
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
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 212
	mov	%r2 %r1
	sw	%r26 %r28 216
	addi	%r26 %r26 220
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -220
	lw	%r26 %r28 216
	lw	%r26 %r2 212
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 216
	addi	%r26 %r26 220
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -220
	lw	%r26 %r28 216
	lw	%r26 %r2 212
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 216
	addi	%r26 %r26 220
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -220
	lw	%r26 %r28 216
	lw	%r26 %r2 212
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 216
	addi	%r26 %r26 220
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -220
	lw	%r26 %r28 216
	lw	%r26 %r2 212
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 216
	addi	%r26 %r26 220
	jal	min_caml_create_array 
	addi	%r26 %r26 -220
	lw	%r26 %r28 216
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 216
	mov	%r2 %r1
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 220
	mov	%r2 %r1
	sw	%r26 %r28 224
	addi	%r26 %r26 228
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -228
	lw	%r26 %r28 224
	lw	%r26 %r2 220
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 224
	addi	%r26 %r26 228
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -228
	lw	%r26 %r28 224
	lw	%r26 %r2 220
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 224
	addi	%r26 %r26 228
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -228
	lw	%r26 %r28 224
	lw	%r26 %r2 220
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 224
	addi	%r26 %r26 228
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -228
	lw	%r26 %r28 224
	lw	%r26 %r2 220
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 216
	sw	%r1 %r2 24
	lw	%r26 %r2 212
	sw	%r1 %r2 20
	lw	%r26 %r2 208
	sw	%r1 %r2 16
	lw	%r26 %r2 204
	sw	%r1 %r2 12
	lw	%r26 %r2 200
	sw	%r1 %r2 8
	lw	%r26 %r2 196
	sw	%r1 %r2 4
	lw	%r26 %r2 192
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 188
	sw	%r26 %r28 224
	addi	%r26 %r26 228
	jal	min_caml_create_array 
	addi	%r26 %r26 -228
	lw	%r26 %r28 224
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 2
	sub	%r3 %r4 %r3
	mov	%r3 %r2
	sw	%r26 %r28 224
	addi	%r26 %r26 228
	jal	init_line_elements.0 
	addi	%r26 %r26 -228
	lw	%r26 %r28 224
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 3
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f0 0
	sw	%r26 %r1 224
	sw	%r26 %r3 228
	mov	%r4 %r1
	sw	%r26 %r28 232
	addi	%r26 %r26 236
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -236
	lw	%r26 %r28 232
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 232
	mov	%r2 %r1
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 236
	mov	%r2 %r1
	sw	%r26 %r28 240
	addi	%r26 %r26 244
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -244
	lw	%r26 %r28 240
	lw	%r26 %r2 236
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 240
	addi	%r26 %r26 244
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -244
	lw	%r26 %r28 240
	lw	%r26 %r2 236
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 240
	addi	%r26 %r26 244
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -244
	lw	%r26 %r28 240
	lw	%r26 %r2 236
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 240
	addi	%r26 %r26 244
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -244
	lw	%r26 %r28 240
	lw	%r26 %r2 236
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 240
	addi	%r26 %r26 244
	jal	min_caml_create_array 
	addi	%r26 %r26 -244
	lw	%r26 %r28 240
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 240
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 244
	mov	%r2 %r1
	sw	%r26 %r28 248
	addi	%r26 %r26 252
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -252
	lw	%r26 %r28 248
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 248
	addi	%r26 %r26 252
	jal	min_caml_create_array 
	addi	%r26 %r26 -252
	lw	%r26 %r28 248
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 248
	mov	%r2 %r1
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 248
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 248
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 248
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 248
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
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
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 252
	mov	%r2 %r1
	sw	%r26 %r28 256
	addi	%r26 %r26 260
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -260
	lw	%r26 %r28 256
	lw	%r26 %r2 252
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 256
	addi	%r26 %r26 260
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -260
	lw	%r26 %r28 256
	lw	%r26 %r2 252
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 256
	addi	%r26 %r26 260
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -260
	lw	%r26 %r28 256
	lw	%r26 %r2 252
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 256
	addi	%r26 %r26 260
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -260
	lw	%r26 %r28 256
	lw	%r26 %r2 252
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 256
	addi	%r26 %r26 260
	jal	min_caml_create_array 
	addi	%r26 %r26 -260
	lw	%r26 %r28 256
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 256
	mov	%r2 %r1
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 260
	mov	%r2 %r1
	sw	%r26 %r28 264
	addi	%r26 %r26 268
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -268
	lw	%r26 %r28 264
	lw	%r26 %r2 260
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 264
	addi	%r26 %r26 268
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -268
	lw	%r26 %r28 264
	lw	%r26 %r2 260
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 264
	addi	%r26 %r26 268
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -268
	lw	%r26 %r28 264
	lw	%r26 %r2 260
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 264
	addi	%r26 %r26 268
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -268
	lw	%r26 %r28 264
	lw	%r26 %r2 260
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 256
	sw	%r1 %r2 24
	lw	%r26 %r2 252
	sw	%r1 %r2 20
	lw	%r26 %r2 248
	sw	%r1 %r2 16
	lw	%r26 %r2 244
	sw	%r1 %r2 12
	lw	%r26 %r2 240
	sw	%r1 %r2 8
	lw	%r26 %r2 236
	sw	%r1 %r2 4
	lw	%r26 %r2 232
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 228
	sw	%r26 %r28 264
	addi	%r26 %r26 268
	jal	min_caml_create_array 
	addi	%r26 %r26 -268
	lw	%r26 %r28 264
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 2
	sub	%r3 %r4 %r3
	mov	%r3 %r2
	sw	%r26 %r28 264
	addi	%r26 %r26 268
	jal	init_line_elements.0 
	addi	%r26 %r26 -268
	lw	%r26 %r28 264
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 3
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f0 0
	sw	%r26 %r1 264
	sw	%r26 %r3 268
	mov	%r4 %r1
	sw	%r26 %r28 272
	addi	%r26 %r26 276
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -276
	lw	%r26 %r28 272
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 272
	mov	%r2 %r1
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 276
	mov	%r2 %r1
	sw	%r26 %r28 280
	addi	%r26 %r26 284
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -284
	lw	%r26 %r28 280
	lw	%r26 %r2 276
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 280
	addi	%r26 %r26 284
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -284
	lw	%r26 %r28 280
	lw	%r26 %r2 276
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 280
	addi	%r26 %r26 284
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -284
	lw	%r26 %r28 280
	lw	%r26 %r2 276
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 280
	addi	%r26 %r26 284
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -284
	lw	%r26 %r28 280
	lw	%r26 %r2 276
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 280
	addi	%r26 %r26 284
	jal	min_caml_create_array 
	addi	%r26 %r26 -284
	lw	%r26 %r28 280
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 280
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 284
	mov	%r2 %r1
	sw	%r26 %r28 288
	addi	%r26 %r26 292
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -292
	lw	%r26 %r28 288
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 288
	addi	%r26 %r26 292
	jal	min_caml_create_array 
	addi	%r26 %r26 -292
	lw	%r26 %r28 288
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 288
	mov	%r2 %r1
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 288
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 288
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 288
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 288
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
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
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 292
	mov	%r2 %r1
	sw	%r26 %r28 296
	addi	%r26 %r26 300
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -300
	lw	%r26 %r28 296
	lw	%r26 %r2 292
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 296
	addi	%r26 %r26 300
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -300
	lw	%r26 %r28 296
	lw	%r26 %r2 292
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 296
	addi	%r26 %r26 300
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -300
	lw	%r26 %r28 296
	lw	%r26 %r2 292
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 296
	addi	%r26 %r26 300
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -300
	lw	%r26 %r28 296
	lw	%r26 %r2 292
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 296
	addi	%r26 %r26 300
	jal	min_caml_create_array 
	addi	%r26 %r26 -300
	lw	%r26 %r28 296
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 296
	mov	%r2 %r1
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_array 
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 300
	mov	%r2 %r1
	sw	%r26 %r28 304
	addi	%r26 %r26 308
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -308
	lw	%r26 %r28 304
	lw	%r26 %r2 300
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 304
	addi	%r26 %r26 308
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -308
	lw	%r26 %r28 304
	lw	%r26 %r2 300
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 304
	addi	%r26 %r26 308
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -308
	lw	%r26 %r28 304
	lw	%r26 %r2 300
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 304
	addi	%r26 %r26 308
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -308
	lw	%r26 %r28 304
	lw	%r26 %r2 300
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 296
	sw	%r1 %r2 24
	lw	%r26 %r2 292
	sw	%r1 %r2 20
	lw	%r26 %r2 288
	sw	%r1 %r2 16
	lw	%r26 %r2 284
	sw	%r1 %r2 12
	lw	%r26 %r2 280
	sw	%r1 %r2 8
	lw	%r26 %r2 276
	sw	%r1 %r2 4
	lw	%r26 %r2 272
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 268
	sw	%r26 %r28 304
	addi	%r26 %r26 308
	jal	min_caml_create_array 
	addi	%r26 %r26 -308
	lw	%r26 %r28 304
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 2
	sub	%r3 %r4 %r3
	mov	%r3 %r2
	sw	%r26 %r28 304
	addi	%r26 %r26 308
	jal	init_line_elements.0 
	addi	%r26 %r26 -308
	lw	%r26 %r28 304
	fin	%f0
	lw	%r26 %r2 16
	sw.s	%r2 %f0 0
	fin	%f0
	sw.s	%r2 %f0 4
	fin	%f0
	sw.s	%r2 %f0 8
	fin	%f0
	addi	%r0 %r3 l.129
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r30 0
	sw	%r26 %r1 304
	sw.s	%r26 %f0 312
	sw	%r26 %r28 320
	lw	%r30 %r29 0
	addi	%r26 %r26 324	
	jalr	%r29
	addi	%r26 %r26 -324
	lw	%r26 %r28 320
	lw.s	%r26 %f1 312
	lw	%r26 %r30 4
	sw.s	%r26 %f0 320
	mov.s	%f1 %f0
	sw	%r26 %r28 328
	lw	%r30 %r29 0
	addi	%r26 %r26 332	
	jalr	%r29
	addi	%r26 %r26 -332
	lw	%r26 %r28 328
	fin	%f1
	addi	%r0 %r1 l.129
	ilw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	lw	%r26 %r30 0
	sw.s	%r26 %f0 328
	sw.s	%r26 %f1 336
	mov.s	%f1 %f0
	sw	%r26 %r28 344
	lw	%r30 %r29 0
	addi	%r26 %r26 348	
	jalr	%r29
	addi	%r26 %r26 -348
	lw	%r26 %r28 344
	lw.s	%r26 %f1 336
	lw	%r26 %r30 4
	sw.s	%r26 %f0 344
	mov.s	%f1 %f0
	sw	%r26 %r28 352
	lw	%r30 %r29 0
	addi	%r26 %r26 356	
	jalr	%r29
	addi	%r26 %r26 -356
	lw	%r26 %r28 352
	lw.s	%r26 %f1 320
	mul.s	%f0 %f1 %f2
	addi	%r0 %r1 l.1108
	ilw.s	%r1 %f3 0
	mul.s	%f3 %f2 %f2
	lw	%r26 %r1 112
	sw.s	%r1 %f2 0
	addi	%r0 %r2 l.1110
	ilw.s	%r2 %f2 0
	lw.s	%r26 %f3 328
	mul.s	%f2 %f3 %f2
	sw.s	%r1 %f2 4
	lw.s	%r26 %f2 344
	mul.s	%f2 %f1 %f4
	addi	%r0 %r2 l.1108
	ilw.s	%r2 %f5 0
	mul.s	%f5 %f4 %f4
	sw.s	%r1 %f4 8
	lw	%r26 %r2 104
	sw.s	%r2 %f2 0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f4 0
	sw.s	%r2 %f4 4
	neg.s	%f0 %f4
	sw.s	%r2 %f4 8
	neg.s	%f3 %f4
	mul.s	%f0 %f4 %f0
	lw	%r26 %r2 108
	sw.s	%r2 %f0 0
	neg.s	%f1 %f0
	sw.s	%r2 %f0 4
	neg.s	%f3 %f0
	mul.s	%f2 %f0 %f0
	sw.s	%r2 %f0 8
	lw	%r26 %r3 16
	lw.s	%r3 %f0 0
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r26 %r4 20
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
	addi	%r0 %r3 l.129
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r30 4
	sw.s	%r26 %f0 352
	sw	%r26 %r28 360
	lw	%r30 %r29 0
	addi	%r26 %r26 364	
	jalr	%r29
	addi	%r26 %r26 -364
	lw	%r26 %r28 360
	neg.s	%f0 %f0
	lw	%r26 %r1 24
	sw.s	%r1 %f0 4
	fin	%f0
	addi	%r0 %r2 l.129
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r26 %f1 352
	lw	%r26 %r30 0
	sw.s	%r26 %f0 360
	mov.s	%f1 %f0
	sw	%r26 %r28 368
	lw	%r30 %r29 0
	addi	%r26 %r26 372	
	jalr	%r29
	addi	%r26 %r26 -372
	lw	%r26 %r28 368
	lw.s	%r26 %f1 360
	lw	%r26 %r30 4
	sw.s	%r26 %f0 368
	mov.s	%f1 %f0
	sw	%r26 %r28 376
	lw	%r30 %r29 0
	addi	%r26 %r26 380	
	jalr	%r29
	addi	%r26 %r26 -380
	lw	%r26 %r28 376
	lw.s	%r26 %f1 368
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 24
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 360
	lw	%r26 %r30 0
	sw	%r26 %r28 376
	lw	%r30 %r29 0
	addi	%r26 %r26 380	
	jalr	%r29
	addi	%r26 %r26 -380
	lw	%r26 %r28 376
	lw.s	%r26 %f1 368
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 24
	sw.s	%r1 %f0 8
	fin	%f0
	lw	%r26 %r2 28
	sw.s	%r2 %f0 0
	addi	%r0 %r2 0
	lw	%r26 %r30 184
	mov	%r2 %r1
	sw	%r26 %r28 376
	lw	%r30 %r29 0
	addi	%r26 %r26 380	
	jalr	%r29
	addi	%r26 %r26 -380
	lw	%r26 %r28 376
	addi	%r0 %r1 0
	lw	%r26 %r30 180
	sw	%r26 %r28 376
	lw	%r30 %r29 0
	addi	%r26 %r26 380	
	jalr	%r29
	addi	%r26 %r26 -380
	lw	%r26 %r28 376
	addi	%r0 %r1 0
	sw	%r26 %r28 376
	addi	%r26 %r26 380
	jal	read_or_network.0 
	addi	%r26 %r26 -380
	lw	%r26 %r28 376
	lw	%r26 %r2 44
	sw	%r2 %r1 0
	addi	%r0 %r1 80
	out	%r1
	addi	%r0 %r1 51
	out	%r1
	addi	%r0 %r1 10
	out	%r1
	lw	%r26 %r1 84
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
	addi	%r0 %r5 0
	bge	%r5 %r3 bl_else.0 
	addi	%r3 %r3 48
	out	%r3
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bl_cont.0 
bl_else.0 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.1 
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bl_cont.1 
bl_else.1 :
	addi	%r2 %r2 48
	out	%r2
bl_cont.1 :
bl_cont.0 :
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
	addi	%r0 %r5 0
	bge	%r5 %r3 bl_else.2 
	addi	%r3 %r3 48
	out	%r3
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bl_cont.2 
bl_else.2 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.3 
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bl_cont.3 
bl_else.3 :
	addi	%r2 %r2 48
	out	%r2
bl_cont.3 :
bl_cont.2 :
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
	lw	%r26 %r30 176
	mov	%r2 %r1
	sw	%r26 %r28 376
	lw	%r30 %r29 0
	addi	%r26 %r26 380	
	jalr	%r29
	addi	%r26 %r26 -380
	lw	%r26 %r28 376
	addi	%r0 %r1 9
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r30 172
	sw	%r26 %r28 376
	lw	%r30 %r29 0
	addi	%r26 %r26 380	
	jalr	%r29
	addi	%r26 %r26 -380
	lw	%r26 %r28 376
	addi	%r0 %r1 4
	lw	%r26 %r30 168
	sw	%r26 %r28 376
	lw	%r30 %r29 0
	addi	%r26 %r26 380	
	jalr	%r29
	addi	%r26 %r26 -380
	lw	%r26 %r28 376
	lw	%r26 %r1 24
	lw.s	%r1 %f0 0
	lw	%r26 %r2 132
	sw.s	%r2 %f0 0
	lw.s	%r1 %f0 4
	sw.s	%r2 %f0 4
	lw.s	%r1 %f0 8
	sw.s	%r2 %f0 8
	lw	%r26 %r2 8
	lw	%r2 %r3 0
	addi	%r0 %r4 1
	sub	%r3 %r4 %r3
	lw	%r26 %r4 136
	lw	%r26 %r30 164
	mov	%r3 %r2
	mov	%r4 %r1
	sw	%r26 %r28 376
	lw	%r30 %r29 0
	addi	%r26 %r26 380	
	jalr	%r29
	addi	%r26 %r26 -380
	lw	%r26 %r28 376
	lw	%r26 %r1 8
	lw	%r1 %r2 0
	addi	%r0 %r3 1
	sub	%r2 %r3 %r2
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.0 
	slli	%r2 %r3 2
	lw	%r26 %r4 12
	add	%r4 %r3 %r31
	lw	%r31 %r3 0
	lw	%r3 %r4 8
	addi	%r0 %r5 2
	bne	%r4 %r5 beq_else.0 
	lw	%r3 %r4 28
	lw.s	%r4 %f0 0
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.0 
	addi	%r0 %r4 1
	j	fbl_cont.0 
fbl_else.0 :
	addi	%r0 %r4 0
fbl_cont.0 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.1 
	j	beq_cont.1 
beq_else.1 :
	lw	%r3 %r4 4
	addi	%r0 %r5 1
	bne	%r4 %r5 beq_else.2 
	addi	%r0 %r4 4
	mul	%r2 %r4 %r2
	lw	%r26 %r4 160
	lw	%r4 %r5 0
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f0 0
	lw	%r3 %r3 28
	lw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r26 %r3 24
	lw.s	%r3 %f1 0
	neg.s	%f1 %f1
	lw.s	%r3 %f2 4
	neg.s	%f2 %f2
	lw.s	%r3 %f3 8
	neg.s	%f3 %f3
	addi	%r2 %r6 1
	lw.s	%r3 %f4 0
	addi	%r0 %r7 3
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f5 0
	sw.s	%r26 %f1 376
	sw	%r26 %r2 384
	sw	%r26 %r5 388
	sw	%r26 %r6 392
	sw.s	%r26 %f0 400
	sw.s	%r26 %f3 408
	sw.s	%r26 %f2 416
	sw.s	%r26 %f4 424
	mov	%r7 %r1
	mov.s	%f5 %f0
	sw	%r26 %r28 432
	addi	%r26 %r26 436
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -436
	lw	%r26 %r28 432
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 432
	mov	%r3 %r1
	sw	%r26 %r28 436
	addi	%r26 %r26 440
	jal	min_caml_create_array 
	addi	%r26 %r26 -440
	lw	%r26 %r28 436
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 432
	sw	%r2 %r1 0
	lw.s	%r26 %f0 424
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 416
	sw.s	%r1 %f0 4
	lw.s	%r26 %f1 408
	sw.s	%r1 %f1 8
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	addi	%r0 %r4 1
	sub	%r3 %r4 %r3
	lw	%r26 %r30 164
	sw	%r26 %r2 436
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 440
	lw	%r30 %r29 0
	addi	%r26 %r26 444	
	jalr	%r29
	addi	%r26 %r26 -444
	lw	%r26 %r28 440
	mov	%r27 %r1
	addi	%r27 %r27 12
	lw.s	%r26 %f0 400
	sw.s	%r1 %f0 8
	lw	%r26 %r2 436
	sw	%r1 %r2 4
	lw	%r26 %r2 392
	sw	%r1 %r2 0
	lw	%r26 %r2 388
	slli	%r2 %r3 2
	lw	%r26 %r4 148
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	addi	%r2 %r1 1
	lw	%r26 %r3 384
	addi	%r3 %r5 2
	lw	%r26 %r6 24
	lw.s	%r6 %f1 4
	addi	%r0 %r7 3
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f2 0
	sw	%r26 %r1 440
	sw	%r26 %r5 444
	sw.s	%r26 %f1 448
	mov	%r7 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 456
	addi	%r26 %r26 460
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -460
	lw	%r26 %r28 456
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 456
	mov	%r3 %r1
	sw	%r26 %r28 460
	addi	%r26 %r26 464
	jal	min_caml_create_array 
	addi	%r26 %r26 -464
	lw	%r26 %r28 460
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 456
	sw	%r2 %r1 0
	lw.s	%r26 %f0 376
	sw.s	%r1 %f0 0
	lw.s	%r26 %f1 448
	sw.s	%r1 %f1 4
	lw.s	%r26 %f1 408
	sw.s	%r1 %f1 8
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	addi	%r0 %r4 1
	sub	%r3 %r4 %r3
	lw	%r26 %r30 164
	sw	%r26 %r2 460
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 464
	lw	%r30 %r29 0
	addi	%r26 %r26 468	
	jalr	%r29
	addi	%r26 %r26 -468
	lw	%r26 %r28 464
	mov	%r27 %r1
	addi	%r27 %r27 12
	lw.s	%r26 %f0 400
	sw.s	%r1 %f0 8
	lw	%r26 %r2 460
	sw	%r1 %r2 4
	lw	%r26 %r2 444
	sw	%r1 %r2 0
	lw	%r26 %r2 440
	slli	%r2 %r2 2
	lw	%r26 %r3 148
	add	%r3 %r2 %r31
	sw	%r31 %r1 0
	lw	%r26 %r1 388
	addi	%r1 %r2 2
	lw	%r26 %r4 384
	addi	%r4 %r4 3
	lw	%r26 %r5 24
	lw.s	%r5 %f1 8
	addi	%r0 %r5 3
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f2 0
	sw	%r26 %r2 464
	sw	%r26 %r4 468
	sw.s	%r26 %f1 472
	mov	%r5 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 480
	addi	%r26 %r26 484
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -484
	lw	%r26 %r28 480
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 480
	mov	%r3 %r1
	sw	%r26 %r28 484
	addi	%r26 %r26 488
	jal	min_caml_create_array 
	addi	%r26 %r26 -488
	lw	%r26 %r28 484
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 480
	sw	%r2 %r1 0
	lw.s	%r26 %f0 376
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 416
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 472
	sw.s	%r1 %f0 8
	lw	%r26 %r1 8
	lw	%r1 %r1 0
	addi	%r0 %r3 1
	sub	%r1 %r3 %r1
	lw	%r26 %r30 164
	sw	%r26 %r2 484
	mov	%r2 %r29
	mov	%r1 %r2
	mov	%r29 %r1
	sw	%r26 %r28 488
	lw	%r30 %r29 0
	addi	%r26 %r26 492	
	jalr	%r29
	addi	%r26 %r26 -492
	lw	%r26 %r28 488
	mov	%r27 %r1
	addi	%r27 %r27 12
	lw.s	%r26 %f0 400
	sw.s	%r1 %f0 8
	lw	%r26 %r2 484
	sw	%r1 %r2 4
	lw	%r26 %r2 468
	sw	%r1 %r2 0
	lw	%r26 %r2 464
	slli	%r2 %r2 2
	lw	%r26 %r3 148
	add	%r3 %r2 %r31
	sw	%r31 %r1 0
	lw	%r26 %r1 388
	addi	%r1 %r1 3
	lw	%r26 %r2 160
	sw	%r2 %r1 0
	j	beq_cont.2 
beq_else.2 :
	addi	%r0 %r5 2
	bne	%r4 %r5 beq_else.3 
	addi	%r0 %r4 4
	mul	%r2 %r4 %r2
	addi	%r2 %r2 1
	lw	%r26 %r4 160
	lw	%r4 %r5 0
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f0 0
	lw	%r3 %r6 28
	lw.s	%r6 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r3 %r6 16
	lw	%r26 %r7 24
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
	addi	%r0 %r6 l.159
	ilw.s	%r6 %f2 0
	lw	%r3 %r6 16
	lw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f2
	mul.s	%f1 %f2 %f2
	lw.s	%r7 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.159
	ilw.s	%r6 %f3 0
	lw	%r3 %r6 16
	lw.s	%r6 %f4 4
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f3 %f3
	lw.s	%r7 %f4 4
	sub.s	%f4 %f3 %f3
	addi	%r0 %r6 l.159
	ilw.s	%r6 %f4 0
	lw	%r3 %r3 16
	lw.s	%r3 %f5 8
	mul.s	%f5 %f4 %f4
	mul.s	%f1 %f4 %f1
	lw.s	%r7 %f4 8
	sub.s	%f4 %f1 %f1
	addi	%r0 %r3 3
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f4 0
	sw	%r26 %r5 488
	sw	%r26 %r2 492
	sw.s	%r26 %f0 496
	sw.s	%r26 %f1 504
	sw.s	%r26 %f3 512
	sw.s	%r26 %f2 520
	mov	%r3 %r1
	mov.s	%f4 %f0
	sw	%r26 %r28 528
	addi	%r26 %r26 532
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -532
	lw	%r26 %r28 528
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 528
	mov	%r3 %r1
	sw	%r26 %r28 532
	addi	%r26 %r26 536
	jal	min_caml_create_array 
	addi	%r26 %r26 -536
	lw	%r26 %r28 532
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 528
	sw	%r2 %r1 0
	lw.s	%r26 %f0 520
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 512
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 504
	sw.s	%r1 %f0 8
	lw	%r26 %r1 8
	lw	%r1 %r1 0
	addi	%r0 %r3 1
	sub	%r1 %r3 %r1
	lw	%r26 %r30 164
	sw	%r26 %r2 532
	mov	%r2 %r29
	mov	%r1 %r2
	mov	%r29 %r1
	sw	%r26 %r28 536
	lw	%r30 %r29 0
	addi	%r26 %r26 540	
	jalr	%r29
	addi	%r26 %r26 -540
	lw	%r26 %r28 536
	mov	%r27 %r1
	addi	%r27 %r27 12
	lw.s	%r26 %f0 496
	sw.s	%r1 %f0 8
	lw	%r26 %r2 532
	sw	%r1 %r2 4
	lw	%r26 %r2 492
	sw	%r1 %r2 0
	lw	%r26 %r2 488
	slli	%r2 %r3 2
	lw	%r26 %r4 148
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	addi	%r2 %r1 1
	lw	%r26 %r2 160
	sw	%r2 %r1 0
	j	beq_cont.3 
beq_else.3 :
beq_cont.3 :
beq_cont.2 :
beq_cont.1 :
	j	beq_cont.0 
beq_else.0 :
beq_cont.0 :
	j	ble_cont.0 
ble_else.0 :
ble_cont.0 :
	addi	%r0 %r1 0
	addi	%r0 %r3 0
	lw	%r26 %r2 92
	lw.s	%r2 %f0 0
	lw	%r26 %r2 88
	lw	%r2 %r2 4
	sub	%r1 %r2 %r1
	mtc1	%r1 %f1
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 108
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r2 112
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
	lw	%r26 %r1 84
	lw	%r1 %r1 0
	addi	%r0 %r2 1
	sub	%r1 %r2 %r2
	lw	%r26 %r1 264
	lw	%r26 %r30 156
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 536
	lw	%r30 %r29 0
	addi	%r26 %r26 540	
	jalr	%r29
	addi	%r26 %r26 -540
	lw	%r26 %r28 536
	addi	%r0 %r1 0
	addi	%r0 %r5 2
	lw	%r26 %r2 224
	lw	%r26 %r3 264
	lw	%r26 %r4 304
	lw	%r26 %r30 152
	sw	%r26 %r28 536
	lw	%r30 %r29 0
	addi	%r26 %r26 540	
	jalr	%r29
	addi	%r26 %r26 -540
	lw	%r26 %r28 536
	addi	%r0 %r1 0
	ret
sin.0 :
	lw.s	%r30 %f1 4
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f2 0
	fbg	%f2 %f0 fble_else.0 
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r30 %r29 0
	jr	%r29
fble_else.0 :
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f2 0
	fbge	%f0 %f2 fbl_else.1 
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	lw	%r30 %r29 0
	jr	%r29
fbl_else.1 :
	fbg	%f1 %f0 fble_else.1 
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.48
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f3 0
	fbg	%f3 %f0 fble_else.2 
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.3 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.31
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.33
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.35
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.3 :
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.26
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.28
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.2 :
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.4 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.31
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.33
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.35
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.4 :
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.26
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.28
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.1 :
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f3 0
	fbg	%f3 %f0 fble_else.5 
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.6 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.31
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.33
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.35
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.6 :
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.26
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.28
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.5 :
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.7 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.31
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.33
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.35
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.7 :
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.26
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.28
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
cos.0 :
	lw.s	%r30 %f1 4
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f2 0
	fbg	%f2 %f0 fble_else.8 
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r30 %r29 0
	jr	%r29
fble_else.8 :
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f2 0
	fbge	%f0 %f2 fbl_else.2 
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	lw	%r30 %r29 0
	jr	%r29
fbl_else.2 :
	fbg	%f1 %f0 fble_else.9 
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.48
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f3 0
	fbg	%f3 %f0 fble_else.10 
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f2 0
	fbg	%f0 %f2 fble_else.11 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.26
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r1 l.28
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.11 :
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	addi	%r0 %r1 l.31
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.33
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.35
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.10 :
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.12 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.26
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.28
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.12 :
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.31
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.33
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.35
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.9 :
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f3 0
	fbg	%f3 %f0 fble_else.13 
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.48
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f2 0
	fbg	%f0 %f2 fble_else.14 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.26
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r1 l.28
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.14 :
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	addi	%r0 %r1 l.31
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.33
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.35
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.13 :
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.15 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.26
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.28
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.15 :
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.31
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.33
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.35
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
read_object.0 :
	lw	%r30 %r2 16
	lw	%r30 %r3 12
	lw	%r30 %r4 8
	lw	%r30 %r5 4
	addi	%r0 %r6 60
	bge	%r1 %r6 bl_else.4 
	in	%r6
	addi	%r0 %r7 -1
	sw	%r26 %r30 0
	sw	%r26 %r4 4
	sw	%r26 %r1 8
	beq	%r6 %r7 bne_else.0 
	in	%r7
	in	%r8
	in	%r9
	addi	%r0 %r10 3
	addi	%r0 %r11 l.15
	ilw.s	%r11 %f0 0
	sw	%r26 %r2 12
	sw	%r26 %r5 16
	sw	%r26 %r3 20
	sw	%r26 %r6 24
	sw	%r26 %r8 28
	sw	%r26 %r7 32
	sw	%r26 %r9 36
	mov	%r10 %r1
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	fin	%f0
	sw.s	%r1 %f0 8
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 40
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	fin	%f0
	sw.s	%r1 %f0 8
	fin	%f0
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.3 
	addi	%r0 %r2 1
	j	fbl_cont.1 
fbl_else.3 :
	addi	%r0 %r2 0
fbl_cont.1 :
	addi	%r0 %r3 2
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 44
	sw	%r26 %r2 48
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 52
	mov	%r2 %r1
	sw	%r26 %r28 56
	addi	%r26 %r26 60
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -60
	lw	%r26 %r28 56
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	fin	%f0
	sw.s	%r1 %f0 8
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 0
	lw	%r26 %r3 36
	beq	%r3 %r2 bne_else.1 
	fin	%f0
	addi	%r0 %r2 l.129
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r0 %r2 l.129
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 4
	fin	%f0
	addi	%r0 %r2 l.129
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	j	bne_cont.1 
bne_else.1 :
bne_cont.1 :
	addi	%r0 %r2 2
	lw	%r26 %r4 32
	bne	%r4 %r2 beq_else.4 
	addi	%r0 %r2 1
	j	beq_cont.4 
beq_else.4 :
	lw	%r26 %r2 48
beq_cont.4 :
	addi	%r0 %r5 4
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f0 0
	sw	%r26 %r2 60
	sw	%r26 %r1 64
	mov	%r5 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r27 %r2
	addi	%r27 %r27 44
	sw	%r2 %r1 40
	lw	%r26 %r1 64
	sw	%r2 %r1 36
	lw	%r26 %r3 56
	sw	%r2 %r3 32
	lw	%r26 %r3 52
	sw	%r2 %r3 28
	lw	%r26 %r3 60
	sw	%r2 %r3 24
	lw	%r26 %r3 44
	sw	%r2 %r3 20
	lw	%r26 %r3 40
	sw	%r2 %r3 16
	lw	%r26 %r4 36
	sw	%r2 %r4 12
	lw	%r26 %r5 28
	sw	%r2 %r5 8
	lw	%r26 %r5 32
	sw	%r2 %r5 4
	lw	%r26 %r6 24
	sw	%r2 %r6 0
	lw	%r26 %r6 8
	slli	%r6 %r7 2
	lw	%r26 %r8 20
	add	%r8 %r7 %r31
	sw	%r31 %r2 0
	addi	%r0 %r2 3
	bne	%r5 %r2 beq_else.5 
	lw.s	%r3 %f0 0
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.0 
	addi	%r0 %r2 1
	j	fbeq_cont.0 
fbeq_else.0 :
	addi	%r0 %r2 0
fbeq_cont.0 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.6 
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.1 
	addi	%r0 %r2 1
	j	fbeq_cont.1 
fbeq_else.1 :
	addi	%r0 %r2 0
fbeq_cont.1 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.7 
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.4 
	addi	%r0 %r2 1
	j	fbl_cont.2 
fbl_else.4 :
	addi	%r0 %r2 0
fbl_cont.2 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.8 
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f1 0
	j	beq_cont.8 
beq_else.8 :
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f1 0
beq_cont.8 :
	j	beq_cont.7 
beq_else.7 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
beq_cont.7 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.6 
beq_else.6 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
beq_cont.6 :
	sw.s	%r3 %f0 0
	lw.s	%r3 %f0 4
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.2 
	addi	%r0 %r2 1
	j	fbeq_cont.2 
fbeq_else.2 :
	addi	%r0 %r2 0
fbeq_cont.2 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.9 
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.3 
	addi	%r0 %r2 1
	j	fbeq_cont.3 
fbeq_else.3 :
	addi	%r0 %r2 0
fbeq_cont.3 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.10 
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.5 
	addi	%r0 %r2 1
	j	fbl_cont.3 
fbl_else.5 :
	addi	%r0 %r2 0
fbl_cont.3 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.11 
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f1 0
	j	beq_cont.11 
beq_else.11 :
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f1 0
beq_cont.11 :
	j	beq_cont.10 
beq_else.10 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
beq_cont.10 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.9 
beq_else.9 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
beq_cont.9 :
	sw.s	%r3 %f0 4
	lw.s	%r3 %f0 8
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.4 
	addi	%r0 %r2 1
	j	fbeq_cont.4 
fbeq_else.4 :
	addi	%r0 %r2 0
fbeq_cont.4 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.12 
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.5 
	addi	%r0 %r2 1
	j	fbeq_cont.5 
fbeq_else.5 :
	addi	%r0 %r2 0
fbeq_cont.5 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.13 
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.6 
	addi	%r0 %r2 1
	j	fbl_cont.4 
fbl_else.6 :
	addi	%r0 %r2 0
fbl_cont.4 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.14 
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f1 0
	j	beq_cont.14 
beq_else.14 :
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f1 0
beq_cont.14 :
	j	beq_cont.13 
beq_else.13 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
beq_cont.13 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.12 
beq_else.12 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
beq_cont.12 :
	sw.s	%r3 %f0 8
	j	beq_cont.5 
beq_else.5 :
	addi	%r0 %r2 2
	bne	%r5 %r2 beq_else.15 
	addi	%r0 %r2 0
	lw	%r26 %r5 48
	bne	%r5 %r2 beq_else.16 
	addi	%r0 %r2 1
	j	beq_cont.16 
beq_else.16 :
	addi	%r0 %r2 0
beq_cont.16 :
	lw.s	%r3 %f0 0
	mul.s	%f0 %f0 %f0
	lw.s	%r3 %f1 4
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r3 %f1 8
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.6 
	addi	%r0 %r5 1
	j	fbeq_cont.6 
fbeq_else.6 :
	addi	%r0 %r5 0
fbeq_cont.6 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.17 
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.18 
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	j	beq_cont.18 
beq_else.18 :
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
beq_cont.18 :
	j	beq_cont.17 
beq_else.17 :
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f0 0
beq_cont.17 :
	lw.s	%r3 %f1 0
	mul.s	%f0 %f1 %f1
	sw.s	%r3 %f1 0
	lw.s	%r3 %f1 4
	mul.s	%f0 %f1 %f1
	sw.s	%r3 %f1 4
	lw.s	%r3 %f1 8
	mul.s	%f0 %f1 %f0
	sw.s	%r3 %f0 8
	j	beq_cont.15 
beq_else.15 :
beq_cont.15 :
beq_cont.5 :
	addi	%r0 %r2 0
	beq	%r4 %r2 bne_else.2 
	lw.s	%r1 %f0 0
	lw	%r26 %r30 16
	sw	%r26 %r28 68
	lw	%r30 %r29 0
	addi	%r26 %r26 72	
	jalr	%r29
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 64
	lw.s	%r1 %f1 0
	lw	%r26 %r30 12
	sw.s	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 80
	lw	%r30 %r29 0
	addi	%r26 %r26 84	
	jalr	%r29
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	lw	%r26 %r1 64
	lw.s	%r1 %f1 4
	lw	%r26 %r30 16
	sw.s	%r26 %f0 80
	mov.s	%f1 %f0
	sw	%r26 %r28 88
	lw	%r30 %r29 0
	addi	%r26 %r26 92	
	jalr	%r29
	addi	%r26 %r26 -92
	lw	%r26 %r28 88
	lw	%r26 %r1 64
	lw.s	%r1 %f1 4
	lw	%r26 %r30 12
	sw.s	%r26 %f0 88
	mov.s	%f1 %f0
	sw	%r26 %r28 96
	lw	%r30 %r29 0
	addi	%r26 %r26 100	
	jalr	%r29
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	lw	%r26 %r1 64
	lw.s	%r1 %f1 8
	lw	%r26 %r30 16
	sw.s	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 104
	lw	%r30 %r29 0
	addi	%r26 %r26 108	
	jalr	%r29
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	lw	%r26 %r1 64
	lw.s	%r1 %f1 8
	lw	%r26 %r30 12
	sw.s	%r26 %f0 104
	mov.s	%f1 %f0
	sw	%r26 %r28 112
	lw	%r30 %r29 0
	addi	%r26 %r26 116	
	jalr	%r29
	addi	%r26 %r26 -116
	lw	%r26 %r28 112
	lw.s	%r26 %f1 104
	lw.s	%r26 %f2 88
	mul.s	%f1 %f2 %f3
	lw.s	%r26 %f4 96
	lw.s	%r26 %f5 80
	mul.s	%f4 %f5 %f6
	mul.s	%f1 %f6 %f6
	lw.s	%r26 %f7 72
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
	lw	%r26 %r1 40
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
	addi	%r0 %r1 l.159
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
	lw	%r26 %r1 64
	sw.s	%r1 %f12 0
	addi	%r0 %r2 l.159
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
	addi	%r0 %r2 l.159
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
	j	bne_cont.2 
bne_else.2 :
bne_cont.2 :
	addi	%r0 %r1 1
	j	bne_cont.0 
bne_else.0 :
	addi	%r0 %r1 0
bne_cont.0 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.19 
	lw	%r26 %r1 4
	lw	%r26 %r2 8
	sw	%r1 %r2 0
	retl
beq_else.19 :
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r30 0
	lw	%r30 %r29 0
	jr	%r29
bl_else.4 :
	retl
read_net_item.0 :
	in	%r2
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.20 
	addi	%r1 %r1 1
	addi	%r0 %r2 -1
	j	min_caml_create_array
beq_else.20 :
	addi	%r1 %r3 1
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	read_net_item.0 
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	lw	%r26 %r2 4
	slli	%r2 %r2 2
	lw	%r26 %r3 0
	add	%r1 %r2 %r31
	sw	%r31 %r3 0
	retl
read_or_network.0 :
	addi	%r0 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	read_net_item.0 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r2 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.21 
	lw	%r26 %r1 0
	addi	%r1 %r1 1
	j	min_caml_create_array
beq_else.21 :
	lw	%r26 %r1 0
	addi	%r1 %r3 1
	sw	%r26 %r2 4
	mov	%r3 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	read_or_network.0 
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	lw	%r26 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 4
	add	%r1 %r2 %r31
	sw	%r31 %r3 0
	retl
read_and_network.0 :
	lw	%r30 %r2 4
	addi	%r0 %r3 0
	sw	%r26 %r30 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.0 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r1 %r2 0
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.22 
	retl
beq_else.22 :
	lw	%r26 %r2 8
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	addi	%r2 %r1 1
	lw	%r26 %r30 0
	lw	%r30 %r29 0
	jr	%r29
iter_setup_dirvec_constants.0 :
	lw	%r30 %r3 4
	addi	%r0 %r4 0
	bg	%r4 %r2 ble_else.1 
	slli	%r2 %r4 2
	add	%r3 %r4 %r31
	lw	%r31 %r3 0
	lw	%r1 %r4 4
	lw	%r1 %r5 0
	lw	%r3 %r6 4
	addi	%r0 %r7 1
	sw	%r26 %r1 0
	sw	%r26 %r30 4
	bne	%r6 %r7 beq_else.23 
	addi	%r0 %r6 6
	addi	%r0 %r7 l.15
	ilw.s	%r7 %f0 0
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	sw	%r26 %r3 16
	sw	%r26 %r5 20
	mov	%r6 %r1
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	lw	%r26 %r2 20
	lw.s	%r2 %f0 0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbeq_else.7 
	addi	%r0 %r3 1
	j	fbeq_cont.7 
fbeq_else.7 :
	addi	%r0 %r3 0
fbeq_cont.7 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.24 
	lw	%r26 %r3 16
	lw	%r3 %r4 24
	lw.s	%r2 %f0 0
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f1 0
	fbge	%f0 %f1 fbl_else.7 
	addi	%r0 %r5 1
	j	fbl_cont.5 
fbl_else.7 :
	addi	%r0 %r5 0
fbl_cont.5 :
	addi	%r0 %r6 0
	bne	%r4 %r6 beq_else.25 
	mov	%r5 %r4
	j	beq_cont.21 
beq_else.25 :
	addi	%r0 %r4 0
	bne	%r5 %r4 beq_else.26 
	addi	%r0 %r4 1
	j	beq_cont.22 
beq_else.26 :
	addi	%r0 %r4 0
beq_cont.22 :
beq_cont.21 :
	lw	%r3 %r5 16
	lw.s	%r5 %f0 0
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.27 
	neg.s	%f0 %f0
	j	beq_cont.23 
beq_else.27 :
beq_cont.23 :
	sw.s	%r1 %f0 0
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f0 0
	lw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 4
	j	beq_cont.20 
beq_else.24 :
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw.s	%r1 %f0 4
beq_cont.20 :
	lw.s	%r2 %f0 4
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbeq_else.8 
	addi	%r0 %r3 1
	j	fbeq_cont.8 
fbeq_else.8 :
	addi	%r0 %r3 0
fbeq_cont.8 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.28 
	lw	%r26 %r3 16
	lw	%r3 %r4 24
	lw.s	%r2 %f0 4
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f1 0
	fbge	%f0 %f1 fbl_else.8 
	addi	%r0 %r5 1
	j	fbl_cont.6 
fbl_else.8 :
	addi	%r0 %r5 0
fbl_cont.6 :
	addi	%r0 %r6 0
	bne	%r4 %r6 beq_else.29 
	mov	%r5 %r4
	j	beq_cont.25 
beq_else.29 :
	addi	%r0 %r4 0
	bne	%r5 %r4 beq_else.30 
	addi	%r0 %r4 1
	j	beq_cont.26 
beq_else.30 :
	addi	%r0 %r4 0
beq_cont.26 :
beq_cont.25 :
	lw	%r3 %r5 16
	lw.s	%r5 %f0 4
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.31 
	neg.s	%f0 %f0
	j	beq_cont.27 
beq_else.31 :
beq_cont.27 :
	sw.s	%r1 %f0 8
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f0 0
	lw.s	%r2 %f1 4
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 12
	j	beq_cont.24 
beq_else.28 :
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw.s	%r1 %f0 12
beq_cont.24 :
	lw.s	%r2 %f0 8
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbeq_else.9 
	addi	%r0 %r3 1
	j	fbeq_cont.9 
fbeq_else.9 :
	addi	%r0 %r3 0
fbeq_cont.9 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.32 
	lw	%r26 %r3 16
	lw	%r3 %r4 24
	lw.s	%r2 %f0 8
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f1 0
	fbge	%f0 %f1 fbl_else.9 
	addi	%r0 %r5 1
	j	fbl_cont.7 
fbl_else.9 :
	addi	%r0 %r5 0
fbl_cont.7 :
	addi	%r0 %r6 0
	bne	%r4 %r6 beq_else.33 
	mov	%r5 %r4
	j	beq_cont.29 
beq_else.33 :
	addi	%r0 %r4 0
	bne	%r5 %r4 beq_else.34 
	addi	%r0 %r4 1
	j	beq_cont.30 
beq_else.34 :
	addi	%r0 %r4 0
beq_cont.30 :
beq_cont.29 :
	lw	%r3 %r3 16
	lw.s	%r3 %f0 8
	addi	%r0 %r3 0
	bne	%r4 %r3 beq_else.35 
	neg.s	%f0 %f0
	j	beq_cont.31 
beq_else.35 :
beq_cont.31 :
	sw.s	%r1 %f0 16
	addi	%r0 %r3 l.17
	ilw.s	%r3 %f0 0
	lw.s	%r2 %f1 8
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 20
	j	beq_cont.28 
beq_else.32 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
	sw.s	%r1 %f0 20
beq_cont.28 :
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	j	beq_cont.19 
beq_else.23 :
	addi	%r0 %r7 2
	bne	%r6 %r7 beq_else.36 
	addi	%r0 %r6 4
	addi	%r0 %r7 l.15
	ilw.s	%r7 %f0 0
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	sw	%r26 %r3 16
	sw	%r26 %r5 20
	mov	%r6 %r1
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
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
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.10 
	addi	%r0 %r2 1
	j	fbl_cont.8 
fbl_else.10 :
	addi	%r0 %r2 0
fbl_cont.8 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.37 
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
	sw.s	%r1 %f0 0
	j	beq_cont.33 
beq_else.37 :
	addi	%r0 %r2 l.48
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
beq_cont.33 :
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	j	beq_cont.32 
beq_else.36 :
	addi	%r0 %r6 5
	addi	%r0 %r7 l.15
	ilw.s	%r7 %f0 0
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	sw	%r26 %r3 16
	sw	%r26 %r5 20
	mov	%r6 %r1
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
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
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.38 
	mov.s	%f3 %f0
	j	beq_cont.34 
beq_else.38 :
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
beq_cont.34 :
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
	addi	%r0 %r5 0
	beq	%r4 %r5 bne_else.3 
	lw.s	%r2 %f4 8
	lw	%r3 %r4 36
	lw.s	%r4 %f5 4
	mul.s	%f5 %f4 %f4
	lw.s	%r2 %f5 4
	lw	%r3 %r4 36
	lw.s	%r4 %f6 8
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f4 %f4
	addi	%r0 %r4 l.159
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
	addi	%r0 %r4 l.159
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
	addi	%r0 %r2 l.159
	ilw.s	%r2 %f2 0
	div.s	%f2 %f1 %f1
	sub.s	%f1 %f3 %f1
	sw.s	%r1 %f1 12
	j	bne_cont.3 
bne_else.3 :
	sw.s	%r1 %f1 4
	sw.s	%r1 %f2 8
	sw.s	%r1 %f3 12
bne_cont.3 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.10 
	addi	%r0 %r2 1
	j	fbeq_cont.10 
fbeq_else.10 :
	addi	%r0 %r2 0
fbeq_cont.10 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.39 
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	sw.s	%r1 %f0 16
	j	beq_cont.35 
beq_else.39 :
beq_cont.35 :
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
beq_cont.32 :
beq_cont.19 :
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	lw	%r26 %r1 0
	lw	%r26 %r30 4
	lw	%r30 %r29 0
	jr	%r29
ble_else.1 :
	retl
setup_startp_constants.0 :
	lw	%r30 %r3 4
	addi	%r0 %r4 0
	bg	%r4 %r2 ble_else.2 
	slli	%r2 %r4 2
	add	%r3 %r4 %r31
	lw	%r31 %r3 0
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
	addi	%r0 %r6 2
	bne	%r5 %r6 beq_else.40 
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
	j	beq_cont.36 
beq_else.40 :
	addi	%r0 %r6 2
	bge	%r6 %r5 bl_else.5 
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
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.41 
	mov.s	%f3 %f0
	j	beq_cont.37 
beq_else.41 :
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
beq_cont.37 :
	addi	%r0 %r3 3
	bne	%r5 %r3 beq_else.42 
	addi	%r0 %r3 l.17
	ilw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.38 
beq_else.42 :
beq_cont.38 :
	sw.s	%r4 %f0 12
	j	bl_cont.4 
bl_else.5 :
bl_cont.4 :
beq_cont.36 :
	addi	%r0 %r3 1
	sub	%r2 %r3 %r2
	lw	%r30 %r29 0
	jr	%r29
ble_else.2 :
	retl
check_all_inside.0 :
	lw	%r30 %r3 4
	slli	%r1 %r4 2
	add	%r2 %r4 %r31
	lw	%r31 %r4 0
	addi	%r0 %r5 -1
	bne	%r4 %r5 beq_else.43 
	addi	%r0 %r1 1
	retl
beq_else.43 :
	slli	%r4 %r4 2
	add	%r3 %r4 %r31
	lw	%r31 %r3 0
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
	addi	%r0 %r5 1
	bne	%r4 %r5 beq_else.44 
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f6 0
	fbge	%f3 %f6 fbl_else.11 
	neg.s	%f3 %f3
	j	fbl_cont.9 
fbl_else.11 :
fbl_cont.9 :
	lw	%r3 %r4 16
	lw.s	%r4 %f6 0
	fbge	%f3 %f6 fbl_else.12 
	addi	%r0 %r4 1
	j	fbl_cont.10 
fbl_else.12 :
	addi	%r0 %r4 0
fbl_cont.10 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.45 
	addi	%r0 %r4 0
	j	beq_cont.40 
beq_else.45 :
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f3 0
	fbge	%f4 %f3 fbl_else.13 
	neg.s	%f4 %f3
	j	fbl_cont.11 
fbl_else.13 :
	mov.s	%f4 %f3
fbl_cont.11 :
	lw	%r3 %r4 16
	lw.s	%r4 %f4 4
	fbge	%f3 %f4 fbl_else.14 
	addi	%r0 %r4 1
	j	fbl_cont.12 
fbl_else.14 :
	addi	%r0 %r4 0
fbl_cont.12 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.46 
	addi	%r0 %r4 0
	j	beq_cont.41 
beq_else.46 :
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f3 0
	fbge	%f5 %f3 fbl_else.15 
	neg.s	%f5 %f3
	j	fbl_cont.13 
fbl_else.15 :
	mov.s	%f5 %f3
fbl_cont.13 :
	lw	%r3 %r4 16
	lw.s	%r4 %f4 8
	fbge	%f3 %f4 fbl_else.16 
	addi	%r0 %r4 1
	j	fbl_cont.14 
fbl_else.16 :
	addi	%r0 %r4 0
fbl_cont.14 :
beq_cont.41 :
beq_cont.40 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.47 
	lw	%r3 %r3 24
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.48 
	addi	%r0 %r3 1
	j	beq_cont.43 
beq_else.48 :
	addi	%r0 %r3 0
beq_cont.43 :
	j	beq_cont.42 
beq_else.47 :
	lw	%r3 %r3 24
beq_cont.42 :
	j	beq_cont.39 
beq_else.44 :
	addi	%r0 %r5 2
	bne	%r4 %r5 beq_else.49 
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
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f4 0
	fbge	%f3 %f4 fbl_else.17 
	addi	%r0 %r4 1
	j	fbl_cont.15 
fbl_else.17 :
	addi	%r0 %r4 0
fbl_cont.15 :
	addi	%r0 %r5 0
	bne	%r3 %r5 beq_else.50 
	mov	%r4 %r3
	j	beq_cont.45 
beq_else.50 :
	addi	%r0 %r3 0
	bne	%r4 %r3 beq_else.51 
	addi	%r0 %r3 1
	j	beq_cont.46 
beq_else.51 :
	addi	%r0 %r3 0
beq_cont.46 :
beq_cont.45 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.52 
	addi	%r0 %r3 1
	j	beq_cont.47 
beq_else.52 :
	addi	%r0 %r3 0
beq_cont.47 :
	j	beq_cont.44 
beq_else.49 :
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
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.53 
	mov.s	%f6 %f3
	j	beq_cont.48 
beq_else.53 :
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
beq_cont.48 :
	lw	%r3 %r4 4
	addi	%r0 %r5 3
	bne	%r4 %r5 beq_else.54 
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f4 0
	sub.s	%f4 %f3 %f3
	j	beq_cont.49 
beq_else.54 :
beq_cont.49 :
	lw	%r3 %r3 24
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f4 0
	fbge	%f3 %f4 fbl_else.18 
	addi	%r0 %r4 1
	j	fbl_cont.16 
fbl_else.18 :
	addi	%r0 %r4 0
fbl_cont.16 :
	addi	%r0 %r5 0
	bne	%r3 %r5 beq_else.55 
	mov	%r4 %r3
	j	beq_cont.50 
beq_else.55 :
	addi	%r0 %r3 0
	bne	%r4 %r3 beq_else.56 
	addi	%r0 %r3 1
	j	beq_cont.51 
beq_else.56 :
	addi	%r0 %r3 0
beq_cont.51 :
beq_cont.50 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.57 
	addi	%r0 %r3 1
	j	beq_cont.52 
beq_else.57 :
	addi	%r0 %r3 0
beq_cont.52 :
beq_cont.44 :
beq_cont.39 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.58 
	addi	%r1 %r1 1
	lw	%r30 %r29 0
	jr	%r29
beq_else.58 :
	addi	%r0 %r1 0
	retl
shadow_check_and_group.0 :
	lw	%r30 %r3 28
	lw	%r30 %r4 24
	lw	%r30 %r5 20
	lw	%r30 %r6 16
	lw	%r30 %r7 12
	lw	%r30 %r8 8
	lw	%r30 %r9 4
	slli	%r1 %r10 2
	add	%r2 %r10 %r31
	lw	%r31 %r10 0
	addi	%r0 %r11 -1
	bne	%r10 %r11 beq_else.59 
	addi	%r0 %r1 0
	retl
beq_else.59 :
	slli	%r1 %r10 2
	add	%r2 %r10 %r31
	lw	%r31 %r10 0
	slli	%r10 %r11 2
	add	%r5 %r11 %r31
	lw	%r31 %r11 0
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
	slli	%r10 %r12 2
	add	%r8 %r12 %r31
	lw	%r31 %r8 0
	lw	%r11 %r12 4
	addi	%r0 %r13 1
	bne	%r12 %r13 beq_else.60 
	lw.s	%r8 %f3 0
	sub.s	%f0 %f3 %f3
	lw.s	%r8 %f4 4
	mul.s	%f4 %f3 %f3
	lw.s	%r3 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r12 l.15
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.19 
	neg.s	%f4 %f4
	j	fbl_cont.17 
fbl_else.19 :
fbl_cont.17 :
	lw	%r11 %r12 16
	lw.s	%r12 %f5 4
	fbge	%f4 %f5 fbl_else.20 
	addi	%r0 %r12 1
	j	fbl_cont.18 
fbl_else.20 :
	addi	%r0 %r12 0
fbl_cont.18 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.61 
	addi	%r0 %r12 0
	j	beq_cont.54 
beq_else.61 :
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.15
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.21 
	neg.s	%f4 %f4
	j	fbl_cont.19 
fbl_else.21 :
fbl_cont.19 :
	lw	%r11 %r12 16
	lw.s	%r12 %f5 8
	fbge	%f4 %f5 fbl_else.22 
	addi	%r0 %r12 1
	j	fbl_cont.20 
fbl_else.22 :
	addi	%r0 %r12 0
fbl_cont.20 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.62 
	addi	%r0 %r12 0
	j	beq_cont.55 
beq_else.62 :
	lw.s	%r8 %f4 4
	addi	%r0 %r12 l.15
	ilw.s	%r12 %f5 0
	fbne	%f4 %f5 fbeq_else.11 
	addi	%r0 %r12 1
	j	fbeq_cont.11 
fbeq_else.11 :
	addi	%r0 %r12 0
fbeq_cont.11 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.63 
	addi	%r0 %r12 1
	j	beq_cont.56 
beq_else.63 :
	addi	%r0 %r12 0
beq_cont.56 :
beq_cont.55 :
beq_cont.54 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.64 
	lw.s	%r8 %f3 8
	sub.s	%f1 %f3 %f3
	lw.s	%r8 %f4 12
	mul.s	%f4 %f3 %f3
	lw.s	%r3 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r12 l.15
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.23 
	neg.s	%f4 %f4
	j	fbl_cont.21 
fbl_else.23 :
fbl_cont.21 :
	lw	%r11 %r12 16
	lw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.24 
	addi	%r0 %r12 1
	j	fbl_cont.22 
fbl_else.24 :
	addi	%r0 %r12 0
fbl_cont.22 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.65 
	addi	%r0 %r12 0
	j	beq_cont.58 
beq_else.65 :
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.15
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.25 
	neg.s	%f4 %f4
	j	fbl_cont.23 
fbl_else.25 :
fbl_cont.23 :
	lw	%r11 %r12 16
	lw.s	%r12 %f5 8
	fbge	%f4 %f5 fbl_else.26 
	addi	%r0 %r12 1
	j	fbl_cont.24 
fbl_else.26 :
	addi	%r0 %r12 0
fbl_cont.24 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.66 
	addi	%r0 %r12 0
	j	beq_cont.59 
beq_else.66 :
	lw.s	%r8 %f4 12
	addi	%r0 %r12 l.15
	ilw.s	%r12 %f5 0
	fbne	%f4 %f5 fbeq_else.12 
	addi	%r0 %r12 1
	j	fbeq_cont.12 
fbeq_else.12 :
	addi	%r0 %r12 0
fbeq_cont.12 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.67 
	addi	%r0 %r12 1
	j	beq_cont.60 
beq_else.67 :
	addi	%r0 %r12 0
beq_cont.60 :
beq_cont.59 :
beq_cont.58 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.68 
	lw.s	%r8 %f3 16
	sub.s	%f2 %f3 %f2
	lw.s	%r8 %f3 20
	mul.s	%f3 %f2 %f2
	lw.s	%r3 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r12 l.15
	ilw.s	%r12 %f3 0
	fbge	%f0 %f3 fbl_else.27 
	neg.s	%f0 %f0
	j	fbl_cont.25 
fbl_else.27 :
fbl_cont.25 :
	lw	%r11 %r12 16
	lw.s	%r12 %f3 0
	fbge	%f0 %f3 fbl_else.28 
	addi	%r0 %r12 1
	j	fbl_cont.26 
fbl_else.28 :
	addi	%r0 %r12 0
fbl_cont.26 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.69 
	addi	%r0 %r3 0
	j	beq_cont.62 
beq_else.69 :
	lw.s	%r3 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.29 
	neg.s	%f0 %f0
	j	fbl_cont.27 
fbl_else.29 :
fbl_cont.27 :
	lw	%r11 %r3 16
	lw.s	%r3 %f1 4
	fbge	%f0 %f1 fbl_else.30 
	addi	%r0 %r3 1
	j	fbl_cont.28 
fbl_else.30 :
	addi	%r0 %r3 0
fbl_cont.28 :
	addi	%r0 %r11 0
	bne	%r3 %r11 beq_else.70 
	addi	%r0 %r3 0
	j	beq_cont.63 
beq_else.70 :
	lw.s	%r8 %f0 20
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbeq_else.13 
	addi	%r0 %r3 1
	j	fbeq_cont.13 
fbeq_else.13 :
	addi	%r0 %r3 0
fbeq_cont.13 :
	addi	%r0 %r8 0
	bne	%r3 %r8 beq_else.71 
	addi	%r0 %r3 1
	j	beq_cont.64 
beq_else.71 :
	addi	%r0 %r3 0
beq_cont.64 :
beq_cont.63 :
beq_cont.62 :
	addi	%r0 %r8 0
	bne	%r3 %r8 beq_else.72 
	addi	%r0 %r3 0
	j	beq_cont.65 
beq_else.72 :
	sw.s	%r4 %f2 0
	addi	%r0 %r3 3
beq_cont.65 :
	j	beq_cont.61 
beq_else.68 :
	sw.s	%r4 %f3 0
	addi	%r0 %r3 2
beq_cont.61 :
	j	beq_cont.57 
beq_else.64 :
	sw.s	%r4 %f3 0
	addi	%r0 %r3 1
beq_cont.57 :
	j	beq_cont.53 
beq_else.60 :
	addi	%r0 %r3 2
	bne	%r12 %r3 beq_else.73 
	lw.s	%r8 %f3 0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f4 0
	fbge	%f3 %f4 fbl_else.31 
	addi	%r0 %r3 1
	j	fbl_cont.29 
fbl_else.31 :
	addi	%r0 %r3 0
fbl_cont.29 :
	addi	%r0 %r11 0
	bne	%r3 %r11 beq_else.74 
	addi	%r0 %r3 0
	j	beq_cont.67 
beq_else.74 :
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
beq_cont.67 :
	j	beq_cont.66 
beq_else.73 :
	lw.s	%r8 %f3 0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f4 0
	fbne	%f3 %f4 fbeq_else.14 
	addi	%r0 %r3 1
	j	fbeq_cont.14 
fbeq_else.14 :
	addi	%r0 %r3 0
fbeq_cont.14 :
	addi	%r0 %r12 0
	bne	%r3 %r12 beq_else.75 
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
	addi	%r0 %r12 0
	bne	%r3 %r12 beq_else.76 
	mov.s	%f5 %f0
	j	beq_cont.69 
beq_else.76 :
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
beq_cont.69 :
	lw	%r11 %r3 4
	addi	%r0 %r12 3
	bne	%r3 %r12 beq_else.77 
	addi	%r0 %r3 l.17
	ilw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.70 
beq_else.77 :
beq_cont.70 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f1 0
	fbge	%f1 %f0 fbl_else.32 
	addi	%r0 %r3 1
	j	fbl_cont.30 
fbl_else.32 :
	addi	%r0 %r3 0
fbl_cont.30 :
	addi	%r0 %r12 0
	bne	%r3 %r12 beq_else.78 
	addi	%r0 %r3 0
	j	beq_cont.71 
beq_else.78 :
	lw	%r11 %r3 24
	addi	%r0 %r11 0
	bne	%r3 %r11 beq_else.79 
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f0
	lw.s	%r8 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
	j	beq_cont.72 
beq_else.79 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f0
	lw.s	%r8 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
beq_cont.72 :
	addi	%r0 %r3 1
beq_cont.71 :
	j	beq_cont.68 
beq_else.75 :
	addi	%r0 %r3 0
beq_cont.68 :
beq_cont.66 :
beq_cont.53 :
	lw.s	%r4 %f0 0
	addi	%r0 %r4 0
	beq	%r3 %r4 bne_else.4 
	addi	%r0 %r3 l.206
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.33 
	addi	%r0 %r3 1
	j	fbl_cont.31 
fbl_else.33 :
	addi	%r0 %r3 0
fbl_cont.31 :
	j	bne_cont.4 
bne_else.4 :
	addi	%r0 %r3 0
bne_cont.4 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.80 
	slli	%r10 %r3 2
	add	%r5 %r3 %r31
	lw	%r31 %r3 0
	lw	%r3 %r3 24
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.81 
	addi	%r0 %r1 0
	retl
beq_else.81 :
	addi	%r1 %r1 1
	lw	%r30 %r29 0
	jr	%r29
beq_else.80 :
	addi	%r0 %r3 l.208
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
	sw	%r26 %r30 4
	sw	%r26 %r1 8
	mov	%r3 %r1
	mov	%r9 %r30
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 12
	lw	%r30 %r29 0
	addi	%r26 %r26 16	
	jalr	%r29
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.82 
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r30 4
	lw	%r30 %r29 0
	jr	%r29
beq_else.82 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_group.0 :
	lw	%r30 %r3 8
	lw	%r30 %r4 4
	slli	%r1 %r5 2
	add	%r2 %r5 %r31
	lw	%r31 %r5 0
	addi	%r0 %r6 -1
	bne	%r5 %r6 beq_else.83 
	addi	%r0 %r1 0
	retl
beq_else.83 :
	slli	%r5 %r5 2
	add	%r4 %r5 %r31
	lw	%r31 %r4 0
	addi	%r0 %r5 0
	sw	%r26 %r2 0
	sw	%r26 %r30 4
	sw	%r26 %r1 8
	mov	%r4 %r2
	mov	%r5 %r1
	mov	%r3 %r30
	sw	%r26 %r28 12
	lw	%r30 %r29 0
	addi	%r26 %r26 16	
	jalr	%r29
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.84 
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r30 4
	lw	%r30 %r29 0
	jr	%r29
beq_else.84 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_matrix.0 :
	lw	%r30 %r3 24
	lw	%r30 %r4 20
	lw	%r30 %r5 16
	lw	%r30 %r6 12
	lw	%r30 %r7 8
	lw	%r30 %r8 4
	slli	%r1 %r9 2
	add	%r2 %r9 %r31
	lw	%r31 %r9 0
	lw	%r9 %r10 0
	addi	%r0 %r11 -1
	bne	%r10 %r11 beq_else.85 
	addi	%r0 %r1 0
	retl
beq_else.85 :
	addi	%r0 %r11 99
	sw	%r26 %r9 0
	sw	%r26 %r5 4
	sw	%r26 %r2 8
	sw	%r26 %r30 12
	sw	%r26 %r1 16
	bne	%r10 %r11 beq_else.86 
	addi	%r0 %r1 1
	j	beq_cont.73 
beq_else.86 :
	slli	%r10 %r11 2
	add	%r6 %r11 %r31
	lw	%r31 %r6 0
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
	slli	%r10 %r7 2
	add	%r8 %r7 %r31
	lw	%r31 %r7 0
	lw	%r6 %r8 4
	addi	%r0 %r10 1
	bne	%r8 %r10 beq_else.87 
	lw.s	%r7 %f3 0
	sub.s	%f0 %f3 %f3
	lw.s	%r7 %f4 4
	mul.s	%f4 %f3 %f3
	lw.s	%r3 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.34 
	neg.s	%f4 %f4
	j	fbl_cont.32 
fbl_else.34 :
fbl_cont.32 :
	lw	%r6 %r8 16
	lw.s	%r8 %f5 4
	fbge	%f4 %f5 fbl_else.35 
	addi	%r0 %r8 1
	j	fbl_cont.33 
fbl_else.35 :
	addi	%r0 %r8 0
fbl_cont.33 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.88 
	addi	%r0 %r8 0
	j	beq_cont.75 
beq_else.88 :
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.36 
	neg.s	%f4 %f4
	j	fbl_cont.34 
fbl_else.36 :
fbl_cont.34 :
	lw	%r6 %r8 16
	lw.s	%r8 %f5 8
	fbge	%f4 %f5 fbl_else.37 
	addi	%r0 %r8 1
	j	fbl_cont.35 
fbl_else.37 :
	addi	%r0 %r8 0
fbl_cont.35 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.89 
	addi	%r0 %r8 0
	j	beq_cont.76 
beq_else.89 :
	lw.s	%r7 %f4 4
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f5 0
	fbne	%f4 %f5 fbeq_else.15 
	addi	%r0 %r8 1
	j	fbeq_cont.15 
fbeq_else.15 :
	addi	%r0 %r8 0
fbeq_cont.15 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.90 
	addi	%r0 %r8 1
	j	beq_cont.77 
beq_else.90 :
	addi	%r0 %r8 0
beq_cont.77 :
beq_cont.76 :
beq_cont.75 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.91 
	lw.s	%r7 %f3 8
	sub.s	%f1 %f3 %f3
	lw.s	%r7 %f4 12
	mul.s	%f4 %f3 %f3
	lw.s	%r3 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.38 
	neg.s	%f4 %f4
	j	fbl_cont.36 
fbl_else.38 :
fbl_cont.36 :
	lw	%r6 %r8 16
	lw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.39 
	addi	%r0 %r8 1
	j	fbl_cont.37 
fbl_else.39 :
	addi	%r0 %r8 0
fbl_cont.37 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.92 
	addi	%r0 %r8 0
	j	beq_cont.79 
beq_else.92 :
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.40 
	neg.s	%f4 %f4
	j	fbl_cont.38 
fbl_else.40 :
fbl_cont.38 :
	lw	%r6 %r8 16
	lw.s	%r8 %f5 8
	fbge	%f4 %f5 fbl_else.41 
	addi	%r0 %r8 1
	j	fbl_cont.39 
fbl_else.41 :
	addi	%r0 %r8 0
fbl_cont.39 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.93 
	addi	%r0 %r8 0
	j	beq_cont.80 
beq_else.93 :
	lw.s	%r7 %f4 12
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f5 0
	fbne	%f4 %f5 fbeq_else.16 
	addi	%r0 %r8 1
	j	fbeq_cont.16 
fbeq_else.16 :
	addi	%r0 %r8 0
fbeq_cont.16 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.94 
	addi	%r0 %r8 1
	j	beq_cont.81 
beq_else.94 :
	addi	%r0 %r8 0
beq_cont.81 :
beq_cont.80 :
beq_cont.79 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.95 
	lw.s	%r7 %f3 16
	sub.s	%f2 %f3 %f2
	lw.s	%r7 %f3 20
	mul.s	%f3 %f2 %f2
	lw.s	%r3 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f3 0
	fbge	%f0 %f3 fbl_else.42 
	neg.s	%f0 %f0
	j	fbl_cont.40 
fbl_else.42 :
fbl_cont.40 :
	lw	%r6 %r8 16
	lw.s	%r8 %f3 0
	fbge	%f0 %f3 fbl_else.43 
	addi	%r0 %r8 1
	j	fbl_cont.41 
fbl_else.43 :
	addi	%r0 %r8 0
fbl_cont.41 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.96 
	addi	%r0 %r3 0
	j	beq_cont.83 
beq_else.96 :
	lw.s	%r3 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.44 
	neg.s	%f0 %f0
	j	fbl_cont.42 
fbl_else.44 :
fbl_cont.42 :
	lw	%r6 %r3 16
	lw.s	%r3 %f1 4
	fbge	%f0 %f1 fbl_else.45 
	addi	%r0 %r3 1
	j	fbl_cont.43 
fbl_else.45 :
	addi	%r0 %r3 0
fbl_cont.43 :
	addi	%r0 %r6 0
	bne	%r3 %r6 beq_else.97 
	addi	%r0 %r3 0
	j	beq_cont.84 
beq_else.97 :
	lw.s	%r7 %f0 20
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbeq_else.17 
	addi	%r0 %r3 1
	j	fbeq_cont.17 
fbeq_else.17 :
	addi	%r0 %r3 0
fbeq_cont.17 :
	addi	%r0 %r6 0
	bne	%r3 %r6 beq_else.98 
	addi	%r0 %r3 1
	j	beq_cont.85 
beq_else.98 :
	addi	%r0 %r3 0
beq_cont.85 :
beq_cont.84 :
beq_cont.83 :
	addi	%r0 %r6 0
	bne	%r3 %r6 beq_else.99 
	addi	%r0 %r3 0
	j	beq_cont.86 
beq_else.99 :
	sw.s	%r4 %f2 0
	addi	%r0 %r3 3
beq_cont.86 :
	j	beq_cont.82 
beq_else.95 :
	sw.s	%r4 %f3 0
	addi	%r0 %r3 2
beq_cont.82 :
	j	beq_cont.78 
beq_else.91 :
	sw.s	%r4 %f3 0
	addi	%r0 %r3 1
beq_cont.78 :
	j	beq_cont.74 
beq_else.87 :
	addi	%r0 %r3 2
	bne	%r8 %r3 beq_else.100 
	lw.s	%r7 %f3 0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f4 0
	fbge	%f3 %f4 fbl_else.46 
	addi	%r0 %r3 1
	j	fbl_cont.44 
fbl_else.46 :
	addi	%r0 %r3 0
fbl_cont.44 :
	addi	%r0 %r6 0
	bne	%r3 %r6 beq_else.101 
	addi	%r0 %r3 0
	j	beq_cont.88 
beq_else.101 :
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
beq_cont.88 :
	j	beq_cont.87 
beq_else.100 :
	lw.s	%r7 %f3 0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f4 0
	fbne	%f3 %f4 fbeq_else.18 
	addi	%r0 %r3 1
	j	fbeq_cont.18 
fbeq_else.18 :
	addi	%r0 %r3 0
fbeq_cont.18 :
	addi	%r0 %r8 0
	bne	%r3 %r8 beq_else.102 
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
	addi	%r0 %r8 0
	bne	%r3 %r8 beq_else.103 
	mov.s	%f5 %f0
	j	beq_cont.90 
beq_else.103 :
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
beq_cont.90 :
	lw	%r6 %r3 4
	addi	%r0 %r8 3
	bne	%r3 %r8 beq_else.104 
	addi	%r0 %r3 l.17
	ilw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.91 
beq_else.104 :
beq_cont.91 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f1 0
	fbge	%f1 %f0 fbl_else.47 
	addi	%r0 %r3 1
	j	fbl_cont.45 
fbl_else.47 :
	addi	%r0 %r3 0
fbl_cont.45 :
	addi	%r0 %r8 0
	bne	%r3 %r8 beq_else.105 
	addi	%r0 %r3 0
	j	beq_cont.92 
beq_else.105 :
	lw	%r6 %r3 24
	addi	%r0 %r6 0
	bne	%r3 %r6 beq_else.106 
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f0
	lw.s	%r7 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
	j	beq_cont.93 
beq_else.106 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f0
	lw.s	%r7 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
beq_cont.93 :
	addi	%r0 %r3 1
beq_cont.92 :
	j	beq_cont.89 
beq_else.102 :
	addi	%r0 %r3 0
beq_cont.89 :
beq_cont.87 :
beq_cont.74 :
	addi	%r0 %r6 0
	beq	%r3 %r6 bne_else.5 
	lw.s	%r4 %f0 0
	addi	%r0 %r3 l.223
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.48 
	addi	%r0 %r3 1
	j	fbl_cont.46 
fbl_else.48 :
	addi	%r0 %r3 0
fbl_cont.46 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.107 
	addi	%r0 %r1 0
	j	beq_cont.94 
beq_else.107 :
	addi	%r0 %r3 1
	mov	%r9 %r2
	mov	%r3 %r1
	mov	%r5 %r30
	sw	%r26 %r28 20
	lw	%r30 %r29 0
	addi	%r26 %r26 24	
	jalr	%r29
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.108 
	addi	%r0 %r1 0
	j	beq_cont.95 
beq_else.108 :
	addi	%r0 %r1 1
beq_cont.95 :
beq_cont.94 :
	j	bne_cont.5 
bne_else.5 :
	addi	%r0 %r1 0
bne_cont.5 :
beq_cont.73 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.109 
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	lw	%r26 %r2 8
	lw	%r26 %r30 12
	lw	%r30 %r29 0
	jr	%r29
beq_else.109 :
	addi	%r0 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r30 4
	sw	%r26 %r28 20
	lw	%r30 %r29 0
	addi	%r26 %r26 24	
	jalr	%r29
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.110 
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	lw	%r26 %r2 8
	lw	%r26 %r30 12
	lw	%r30 %r29 0
	jr	%r29
beq_else.110 :
	addi	%r0 %r1 1
	retl
solve_each_element.0 :
	lw	%r30 %r4 32
	lw	%r30 %r5 28
	lw	%r30 %r6 24
	lw	%r30 %r7 20
	lw	%r30 %r8 16
	lw	%r30 %r9 12
	lw	%r30 %r10 8
	lw	%r30 %r11 4
	slli	%r1 %r12 2
	add	%r2 %r12 %r31
	lw	%r31 %r12 0
	addi	%r0 %r13 -1
	bne	%r12 %r13 beq_else.111 
	retl
beq_else.111 :
	slli	%r12 %r13 2
	add	%r7 %r13 %r31
	lw	%r31 %r13 0
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
	addi	%r0 %r15 1
	bne	%r14 %r15 beq_else.112 
	lw.s	%r3 %f3 0
	addi	%r0 %r14 l.15
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbeq_else.19 
	addi	%r0 %r14 1
	j	fbeq_cont.19 
fbeq_else.19 :
	addi	%r0 %r14 0
fbeq_cont.19 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.113 
	lw	%r13 %r14 16
	lw	%r13 %r15 24
	lw.s	%r3 %f3 0
	addi	%r0 %r16 l.15
	ilw.s	%r16 %f4 0
	fbge	%f3 %f4 fbl_else.49 
	addi	%r0 %r16 1
	j	fbl_cont.47 
fbl_else.49 :
	addi	%r0 %r16 0
fbl_cont.47 :
	addi	%r0 %r17 0
	bne	%r15 %r17 beq_else.114 
	mov	%r16 %r15
	j	beq_cont.98 
beq_else.114 :
	addi	%r0 %r15 0
	bne	%r16 %r15 beq_else.115 
	addi	%r0 %r15 1
	j	beq_cont.99 
beq_else.115 :
	addi	%r0 %r15 0
beq_cont.99 :
beq_cont.98 :
	lw.s	%r14 %f3 0
	addi	%r0 %r16 0
	bne	%r15 %r16 beq_else.116 
	neg.s	%f3 %f3
	j	beq_cont.100 
beq_else.116 :
beq_cont.100 :
	sub.s	%f0 %f3 %f3
	lw.s	%r3 %f4 0
	div.s	%f4 %f3 %f3
	lw.s	%r3 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r15 l.15
	ilw.s	%r15 %f5 0
	fbge	%f4 %f5 fbl_else.50 
	neg.s	%f4 %f4
	j	fbl_cont.48 
fbl_else.50 :
fbl_cont.48 :
	lw.s	%r14 %f5 4
	fbge	%f4 %f5 fbl_else.51 
	addi	%r0 %r15 1
	j	fbl_cont.49 
fbl_else.51 :
	addi	%r0 %r15 0
fbl_cont.49 :
	addi	%r0 %r16 0
	bne	%r15 %r16 beq_else.117 
	addi	%r0 %r14 0
	j	beq_cont.101 
beq_else.117 :
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r15 l.15
	ilw.s	%r15 %f5 0
	fbge	%f4 %f5 fbl_else.52 
	neg.s	%f4 %f4
	j	fbl_cont.50 
fbl_else.52 :
fbl_cont.50 :
	lw.s	%r14 %f5 8
	fbge	%f4 %f5 fbl_else.53 
	addi	%r0 %r14 1
	j	fbl_cont.51 
fbl_else.53 :
	addi	%r0 %r14 0
fbl_cont.51 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.118 
	addi	%r0 %r14 0
	j	beq_cont.102 
beq_else.118 :
	sw.s	%r6 %f3 0
	addi	%r0 %r14 1
beq_cont.102 :
beq_cont.101 :
	j	beq_cont.97 
beq_else.113 :
	addi	%r0 %r14 0
beq_cont.97 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.119 
	lw.s	%r3 %f3 4
	addi	%r0 %r14 l.15
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbeq_else.20 
	addi	%r0 %r14 1
	j	fbeq_cont.20 
fbeq_else.20 :
	addi	%r0 %r14 0
fbeq_cont.20 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.120 
	lw	%r13 %r14 16
	lw	%r13 %r15 24
	lw.s	%r3 %f3 4
	addi	%r0 %r16 l.15
	ilw.s	%r16 %f4 0
	fbge	%f3 %f4 fbl_else.54 
	addi	%r0 %r16 1
	j	fbl_cont.52 
fbl_else.54 :
	addi	%r0 %r16 0
fbl_cont.52 :
	addi	%r0 %r17 0
	bne	%r15 %r17 beq_else.121 
	mov	%r16 %r15
	j	beq_cont.105 
beq_else.121 :
	addi	%r0 %r15 0
	bne	%r16 %r15 beq_else.122 
	addi	%r0 %r15 1
	j	beq_cont.106 
beq_else.122 :
	addi	%r0 %r15 0
beq_cont.106 :
beq_cont.105 :
	lw.s	%r14 %f3 4
	addi	%r0 %r16 0
	bne	%r15 %r16 beq_else.123 
	neg.s	%f3 %f3
	j	beq_cont.107 
beq_else.123 :
beq_cont.107 :
	sub.s	%f1 %f3 %f3
	lw.s	%r3 %f4 4
	div.s	%f4 %f3 %f3
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r15 l.15
	ilw.s	%r15 %f5 0
	fbge	%f4 %f5 fbl_else.55 
	neg.s	%f4 %f4
	j	fbl_cont.53 
fbl_else.55 :
fbl_cont.53 :
	lw.s	%r14 %f5 8
	fbge	%f4 %f5 fbl_else.56 
	addi	%r0 %r15 1
	j	fbl_cont.54 
fbl_else.56 :
	addi	%r0 %r15 0
fbl_cont.54 :
	addi	%r0 %r16 0
	bne	%r15 %r16 beq_else.124 
	addi	%r0 %r14 0
	j	beq_cont.108 
beq_else.124 :
	lw.s	%r3 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r15 l.15
	ilw.s	%r15 %f5 0
	fbge	%f4 %f5 fbl_else.57 
	neg.s	%f4 %f4
	j	fbl_cont.55 
fbl_else.57 :
fbl_cont.55 :
	lw.s	%r14 %f5 0
	fbge	%f4 %f5 fbl_else.58 
	addi	%r0 %r14 1
	j	fbl_cont.56 
fbl_else.58 :
	addi	%r0 %r14 0
fbl_cont.56 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.125 
	addi	%r0 %r14 0
	j	beq_cont.109 
beq_else.125 :
	sw.s	%r6 %f3 0
	addi	%r0 %r14 1
beq_cont.109 :
beq_cont.108 :
	j	beq_cont.104 
beq_else.120 :
	addi	%r0 %r14 0
beq_cont.104 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.126 
	lw.s	%r3 %f3 8
	addi	%r0 %r14 l.15
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbeq_else.21 
	addi	%r0 %r14 1
	j	fbeq_cont.21 
fbeq_else.21 :
	addi	%r0 %r14 0
fbeq_cont.21 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.127 
	lw	%r13 %r14 16
	lw	%r13 %r13 24
	lw.s	%r3 %f3 8
	addi	%r0 %r15 l.15
	ilw.s	%r15 %f4 0
	fbge	%f3 %f4 fbl_else.59 
	addi	%r0 %r15 1
	j	fbl_cont.57 
fbl_else.59 :
	addi	%r0 %r15 0
fbl_cont.57 :
	addi	%r0 %r16 0
	bne	%r13 %r16 beq_else.128 
	mov	%r15 %r13
	j	beq_cont.112 
beq_else.128 :
	addi	%r0 %r13 0
	bne	%r15 %r13 beq_else.129 
	addi	%r0 %r13 1
	j	beq_cont.113 
beq_else.129 :
	addi	%r0 %r13 0
beq_cont.113 :
beq_cont.112 :
	lw.s	%r14 %f3 8
	addi	%r0 %r15 0
	bne	%r13 %r15 beq_else.130 
	neg.s	%f3 %f3
	j	beq_cont.114 
beq_else.130 :
beq_cont.114 :
	sub.s	%f2 %f3 %f2
	lw.s	%r3 %f3 8
	div.s	%f3 %f2 %f2
	lw.s	%r3 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r13 l.15
	ilw.s	%r13 %f3 0
	fbge	%f0 %f3 fbl_else.60 
	neg.s	%f0 %f0
	j	fbl_cont.58 
fbl_else.60 :
fbl_cont.58 :
	lw.s	%r14 %f3 0
	fbge	%f0 %f3 fbl_else.61 
	addi	%r0 %r13 1
	j	fbl_cont.59 
fbl_else.61 :
	addi	%r0 %r13 0
fbl_cont.59 :
	addi	%r0 %r15 0
	bne	%r13 %r15 beq_else.131 
	addi	%r0 %r13 0
	j	beq_cont.115 
beq_else.131 :
	lw.s	%r3 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r13 l.15
	ilw.s	%r13 %f1 0
	fbge	%f0 %f1 fbl_else.62 
	neg.s	%f0 %f0
	j	fbl_cont.60 
fbl_else.62 :
fbl_cont.60 :
	lw.s	%r14 %f1 4
	fbge	%f0 %f1 fbl_else.63 
	addi	%r0 %r13 1
	j	fbl_cont.61 
fbl_else.63 :
	addi	%r0 %r13 0
fbl_cont.61 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.132 
	addi	%r0 %r13 0
	j	beq_cont.116 
beq_else.132 :
	sw.s	%r6 %f2 0
	addi	%r0 %r13 1
beq_cont.116 :
beq_cont.115 :
	j	beq_cont.111 
beq_else.127 :
	addi	%r0 %r13 0
beq_cont.111 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.133 
	addi	%r0 %r13 0
	j	beq_cont.117 
beq_else.133 :
	addi	%r0 %r13 3
beq_cont.117 :
	j	beq_cont.110 
beq_else.126 :
	addi	%r0 %r13 2
beq_cont.110 :
	j	beq_cont.103 
beq_else.119 :
	addi	%r0 %r13 1
beq_cont.103 :
	j	beq_cont.96 
beq_else.112 :
	addi	%r0 %r15 2
	bne	%r14 %r15 beq_else.134 
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
	addi	%r0 %r14 l.15
	ilw.s	%r14 %f4 0
	fbge	%f4 %f3 fbl_else.64 
	addi	%r0 %r14 1
	j	fbl_cont.62 
fbl_else.64 :
	addi	%r0 %r14 0
fbl_cont.62 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.135 
	addi	%r0 %r13 0
	j	beq_cont.119 
beq_else.135 :
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
beq_cont.119 :
	j	beq_cont.118 
beq_else.134 :
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
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.136 
	mov.s	%f6 %f3
	j	beq_cont.120 
beq_else.136 :
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
beq_cont.120 :
	addi	%r0 %r14 l.15
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbeq_else.22 
	addi	%r0 %r14 1
	j	fbeq_cont.22 
fbeq_else.22 :
	addi	%r0 %r14 0
fbeq_cont.22 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.137 
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
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.138 
	mov.s	%f7 %f4
	j	beq_cont.122 
beq_else.138 :
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
	addi	%r0 %r14 l.159
	ilw.s	%r14 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f7 %f4
beq_cont.122 :
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
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.139 
	mov.s	%f5 %f0
	j	beq_cont.123 
beq_else.139 :
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
beq_cont.123 :
	lw	%r13 %r14 4
	addi	%r0 %r15 3
	bne	%r14 %r15 beq_else.140 
	addi	%r0 %r14 l.17
	ilw.s	%r14 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.124 
beq_else.140 :
beq_cont.124 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r14 l.15
	ilw.s	%r14 %f1 0
	fbge	%f1 %f0 fbl_else.65 
	addi	%r0 %r14 1
	j	fbl_cont.63 
fbl_else.65 :
	addi	%r0 %r14 0
fbl_cont.63 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.141 
	addi	%r0 %r13 0
	j	beq_cont.125 
beq_else.141 :
	sqrt.s	%f0 %f0
	lw	%r13 %r13 24
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.142 
	neg.s	%f0 %f0
	j	beq_cont.126 
beq_else.142 :
beq_cont.126 :
	sub.s	%f4 %f0 %f0
	div.s	%f3 %f0 %f0
	sw.s	%r6 %f0 0
	addi	%r0 %r13 1
beq_cont.125 :
	j	beq_cont.121 
beq_else.137 :
	addi	%r0 %r13 0
beq_cont.121 :
beq_cont.118 :
beq_cont.96 :
	addi	%r0 %r14 0
	beq	%r13 %r14 bne_else.6 
	lw.s	%r6 %f0 0
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f1 0
	fbge	%f1 %f0 fbl_else.66 
	addi	%r0 %r6 1
	j	fbl_cont.64 
fbl_else.66 :
	addi	%r0 %r6 0
fbl_cont.64 :
	addi	%r0 %r7 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r30 8
	sw	%r26 %r1 12
	bne	%r6 %r7 beq_else.143 
	j	beq_cont.127 
beq_else.143 :
	lw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.67 
	addi	%r0 %r6 1
	j	fbl_cont.65 
fbl_else.67 :
	addi	%r0 %r6 0
fbl_cont.65 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.144 
	j	beq_cont.128 
beq_else.144 :
	addi	%r0 %r6 l.208
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
	mov	%r11 %r30
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 80
	lw	%r30 %r29 0
	addi	%r26 %r26 84	
	jalr	%r29
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.145 
	j	beq_cont.129 
beq_else.145 :
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
beq_cont.129 :
beq_cont.128 :
beq_cont.127 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r30 8
	lw	%r30 %r29 0
	jr	%r29
bne_else.6 :
	slli	%r12 %r4 2
	add	%r7 %r4 %r31
	lw	%r31 %r4 0
	lw	%r4 %r4 24
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.146 
	retl
beq_else.146 :
	addi	%r1 %r1 1
	lw	%r30 %r29 0
	jr	%r29
solve_one_or_network.0 :
	lw	%r30 %r4 8
	lw	%r30 %r5 4
	slli	%r1 %r6 2
	add	%r2 %r6 %r31
	lw	%r31 %r6 0
	addi	%r0 %r7 -1
	beq	%r6 %r7 bne_else.7 
	slli	%r6 %r6 2
	add	%r5 %r6 %r31
	lw	%r31 %r5 0
	addi	%r0 %r6 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r30 8
	sw	%r26 %r1 12
	mov	%r5 %r2
	mov	%r6 %r1
	mov	%r4 %r30
	sw	%r26 %r28 16
	lw	%r30 %r29 0
	addi	%r26 %r26 20	
	jalr	%r29
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r30 8
	lw	%r30 %r29 0
	jr	%r29
bne_else.7 :
	retl
trace_or_matrix.0 :
	lw	%r30 %r4 20
	lw	%r30 %r5 16
	lw	%r30 %r6 12
	lw	%r30 %r7 8
	lw	%r30 %r8 4
	slli	%r1 %r9 2
	add	%r2 %r9 %r31
	lw	%r31 %r9 0
	lw	%r9 %r10 0
	addi	%r0 %r11 -1
	bne	%r10 %r11 beq_else.147 
	retl
beq_else.147 :
	addi	%r0 %r11 99
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r30 8
	sw	%r26 %r1 12
	bne	%r10 %r11 beq_else.148 
	addi	%r0 %r4 1
	mov	%r9 %r2
	mov	%r4 %r1
	mov	%r7 %r30
	sw	%r26 %r28 16
	lw	%r30 %r29 0
	addi	%r26 %r26 20	
	jalr	%r29
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	j	beq_cont.130 
beq_else.148 :
	slli	%r10 %r10 2
	add	%r8 %r10 %r31
	lw	%r31 %r8 0
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
	addi	%r0 %r10 1
	bne	%r5 %r10 beq_else.149 
	lw.s	%r3 %f3 0
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f4 0
	fbne	%f3 %f4 fbeq_else.23 
	addi	%r0 %r5 1
	j	fbeq_cont.23 
fbeq_else.23 :
	addi	%r0 %r5 0
fbeq_cont.23 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.150 
	lw	%r8 %r5 16
	lw	%r8 %r10 24
	lw.s	%r3 %f3 0
	addi	%r0 %r11 l.15
	ilw.s	%r11 %f4 0
	fbge	%f3 %f4 fbl_else.68 
	addi	%r0 %r11 1
	j	fbl_cont.66 
fbl_else.68 :
	addi	%r0 %r11 0
fbl_cont.66 :
	addi	%r0 %r12 0
	bne	%r10 %r12 beq_else.151 
	mov	%r11 %r10
	j	beq_cont.133 
beq_else.151 :
	addi	%r0 %r10 0
	bne	%r11 %r10 beq_else.152 
	addi	%r0 %r10 1
	j	beq_cont.134 
beq_else.152 :
	addi	%r0 %r10 0
beq_cont.134 :
beq_cont.133 :
	lw.s	%r5 %f3 0
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.153 
	neg.s	%f3 %f3
	j	beq_cont.135 
beq_else.153 :
beq_cont.135 :
	sub.s	%f0 %f3 %f3
	lw.s	%r3 %f4 0
	div.s	%f4 %f3 %f3
	lw.s	%r3 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r10 l.15
	ilw.s	%r10 %f5 0
	fbge	%f4 %f5 fbl_else.69 
	neg.s	%f4 %f4
	j	fbl_cont.67 
fbl_else.69 :
fbl_cont.67 :
	lw.s	%r5 %f5 4
	fbge	%f4 %f5 fbl_else.70 
	addi	%r0 %r10 1
	j	fbl_cont.68 
fbl_else.70 :
	addi	%r0 %r10 0
fbl_cont.68 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.154 
	addi	%r0 %r5 0
	j	beq_cont.136 
beq_else.154 :
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r10 l.15
	ilw.s	%r10 %f5 0
	fbge	%f4 %f5 fbl_else.71 
	neg.s	%f4 %f4
	j	fbl_cont.69 
fbl_else.71 :
fbl_cont.69 :
	lw.s	%r5 %f5 8
	fbge	%f4 %f5 fbl_else.72 
	addi	%r0 %r5 1
	j	fbl_cont.70 
fbl_else.72 :
	addi	%r0 %r5 0
fbl_cont.70 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.155 
	addi	%r0 %r5 0
	j	beq_cont.137 
beq_else.155 :
	sw.s	%r6 %f3 0
	addi	%r0 %r5 1
beq_cont.137 :
beq_cont.136 :
	j	beq_cont.132 
beq_else.150 :
	addi	%r0 %r5 0
beq_cont.132 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.156 
	lw.s	%r3 %f3 4
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f4 0
	fbne	%f3 %f4 fbeq_else.24 
	addi	%r0 %r5 1
	j	fbeq_cont.24 
fbeq_else.24 :
	addi	%r0 %r5 0
fbeq_cont.24 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.157 
	lw	%r8 %r5 16
	lw	%r8 %r10 24
	lw.s	%r3 %f3 4
	addi	%r0 %r11 l.15
	ilw.s	%r11 %f4 0
	fbge	%f3 %f4 fbl_else.73 
	addi	%r0 %r11 1
	j	fbl_cont.71 
fbl_else.73 :
	addi	%r0 %r11 0
fbl_cont.71 :
	addi	%r0 %r12 0
	bne	%r10 %r12 beq_else.158 
	mov	%r11 %r10
	j	beq_cont.140 
beq_else.158 :
	addi	%r0 %r10 0
	bne	%r11 %r10 beq_else.159 
	addi	%r0 %r10 1
	j	beq_cont.141 
beq_else.159 :
	addi	%r0 %r10 0
beq_cont.141 :
beq_cont.140 :
	lw.s	%r5 %f3 4
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.160 
	neg.s	%f3 %f3
	j	beq_cont.142 
beq_else.160 :
beq_cont.142 :
	sub.s	%f1 %f3 %f3
	lw.s	%r3 %f4 4
	div.s	%f4 %f3 %f3
	lw.s	%r3 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r10 l.15
	ilw.s	%r10 %f5 0
	fbge	%f4 %f5 fbl_else.74 
	neg.s	%f4 %f4
	j	fbl_cont.72 
fbl_else.74 :
fbl_cont.72 :
	lw.s	%r5 %f5 8
	fbge	%f4 %f5 fbl_else.75 
	addi	%r0 %r10 1
	j	fbl_cont.73 
fbl_else.75 :
	addi	%r0 %r10 0
fbl_cont.73 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.161 
	addi	%r0 %r5 0
	j	beq_cont.143 
beq_else.161 :
	lw.s	%r3 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r10 l.15
	ilw.s	%r10 %f5 0
	fbge	%f4 %f5 fbl_else.76 
	neg.s	%f4 %f4
	j	fbl_cont.74 
fbl_else.76 :
fbl_cont.74 :
	lw.s	%r5 %f5 0
	fbge	%f4 %f5 fbl_else.77 
	addi	%r0 %r5 1
	j	fbl_cont.75 
fbl_else.77 :
	addi	%r0 %r5 0
fbl_cont.75 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.162 
	addi	%r0 %r5 0
	j	beq_cont.144 
beq_else.162 :
	sw.s	%r6 %f3 0
	addi	%r0 %r5 1
beq_cont.144 :
beq_cont.143 :
	j	beq_cont.139 
beq_else.157 :
	addi	%r0 %r5 0
beq_cont.139 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.163 
	lw.s	%r3 %f3 8
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f4 0
	fbne	%f3 %f4 fbeq_else.25 
	addi	%r0 %r5 1
	j	fbeq_cont.25 
fbeq_else.25 :
	addi	%r0 %r5 0
fbeq_cont.25 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.164 
	lw	%r8 %r5 16
	lw	%r8 %r8 24
	lw.s	%r3 %f3 8
	addi	%r0 %r10 l.15
	ilw.s	%r10 %f4 0
	fbge	%f3 %f4 fbl_else.78 
	addi	%r0 %r10 1
	j	fbl_cont.76 
fbl_else.78 :
	addi	%r0 %r10 0
fbl_cont.76 :
	addi	%r0 %r11 0
	bne	%r8 %r11 beq_else.165 
	mov	%r10 %r8
	j	beq_cont.147 
beq_else.165 :
	addi	%r0 %r8 0
	bne	%r10 %r8 beq_else.166 
	addi	%r0 %r8 1
	j	beq_cont.148 
beq_else.166 :
	addi	%r0 %r8 0
beq_cont.148 :
beq_cont.147 :
	lw.s	%r5 %f3 8
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.167 
	neg.s	%f3 %f3
	j	beq_cont.149 
beq_else.167 :
beq_cont.149 :
	sub.s	%f2 %f3 %f2
	lw.s	%r3 %f3 8
	div.s	%f3 %f2 %f2
	lw.s	%r3 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f3 0
	fbge	%f0 %f3 fbl_else.79 
	neg.s	%f0 %f0
	j	fbl_cont.77 
fbl_else.79 :
fbl_cont.77 :
	lw.s	%r5 %f3 0
	fbge	%f0 %f3 fbl_else.80 
	addi	%r0 %r8 1
	j	fbl_cont.78 
fbl_else.80 :
	addi	%r0 %r8 0
fbl_cont.78 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.168 
	addi	%r0 %r5 0
	j	beq_cont.150 
beq_else.168 :
	lw.s	%r3 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f1 0
	fbge	%f0 %f1 fbl_else.81 
	neg.s	%f0 %f0
	j	fbl_cont.79 
fbl_else.81 :
fbl_cont.79 :
	lw.s	%r5 %f1 4
	fbge	%f0 %f1 fbl_else.82 
	addi	%r0 %r5 1
	j	fbl_cont.80 
fbl_else.82 :
	addi	%r0 %r5 0
fbl_cont.80 :
	addi	%r0 %r8 0
	bne	%r5 %r8 beq_else.169 
	addi	%r0 %r5 0
	j	beq_cont.151 
beq_else.169 :
	sw.s	%r6 %f2 0
	addi	%r0 %r5 1
beq_cont.151 :
beq_cont.150 :
	j	beq_cont.146 
beq_else.164 :
	addi	%r0 %r5 0
beq_cont.146 :
	addi	%r0 %r8 0
	bne	%r5 %r8 beq_else.170 
	addi	%r0 %r5 0
	j	beq_cont.152 
beq_else.170 :
	addi	%r0 %r5 3
beq_cont.152 :
	j	beq_cont.145 
beq_else.163 :
	addi	%r0 %r5 2
beq_cont.145 :
	j	beq_cont.138 
beq_else.156 :
	addi	%r0 %r5 1
beq_cont.138 :
	j	beq_cont.131 
beq_else.149 :
	addi	%r0 %r10 2
	bne	%r5 %r10 beq_else.171 
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
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f4 0
	fbge	%f4 %f3 fbl_else.83 
	addi	%r0 %r8 1
	j	fbl_cont.81 
fbl_else.83 :
	addi	%r0 %r8 0
fbl_cont.81 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.172 
	addi	%r0 %r5 0
	j	beq_cont.154 
beq_else.172 :
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
beq_cont.154 :
	j	beq_cont.153 
beq_else.171 :
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
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.173 
	mov.s	%f6 %f3
	j	beq_cont.155 
beq_else.173 :
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
beq_cont.155 :
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f4 0
	fbne	%f3 %f4 fbeq_else.26 
	addi	%r0 %r5 1
	j	fbeq_cont.26 
fbeq_else.26 :
	addi	%r0 %r5 0
fbeq_cont.26 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.174 
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
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.175 
	mov.s	%f7 %f4
	j	beq_cont.157 
beq_else.175 :
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
	addi	%r0 %r5 l.159
	ilw.s	%r5 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f7 %f4
beq_cont.157 :
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
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.176 
	mov.s	%f5 %f0
	j	beq_cont.158 
beq_else.176 :
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
beq_cont.158 :
	lw	%r8 %r5 4
	addi	%r0 %r10 3
	bne	%r5 %r10 beq_else.177 
	addi	%r0 %r5 l.17
	ilw.s	%r5 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.159 
beq_else.177 :
beq_cont.159 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.84 
	addi	%r0 %r5 1
	j	fbl_cont.82 
fbl_else.84 :
	addi	%r0 %r5 0
fbl_cont.82 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.178 
	addi	%r0 %r5 0
	j	beq_cont.160 
beq_else.178 :
	sqrt.s	%f0 %f0
	lw	%r8 %r5 24
	addi	%r0 %r8 0
	bne	%r5 %r8 beq_else.179 
	neg.s	%f0 %f0
	j	beq_cont.161 
beq_else.179 :
beq_cont.161 :
	sub.s	%f4 %f0 %f0
	div.s	%f3 %f0 %f0
	sw.s	%r6 %f0 0
	addi	%r0 %r5 1
beq_cont.160 :
	j	beq_cont.156 
beq_else.174 :
	addi	%r0 %r5 0
beq_cont.156 :
beq_cont.153 :
beq_cont.131 :
	addi	%r0 %r8 0
	beq	%r5 %r8 bne_else.8 
	lw.s	%r6 %f0 0
	lw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.85 
	addi	%r0 %r4 1
	j	fbl_cont.83 
fbl_else.85 :
	addi	%r0 %r4 0
fbl_cont.83 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.180 
	j	beq_cont.162 
beq_else.180 :
	addi	%r0 %r4 1
	mov	%r9 %r2
	mov	%r4 %r1
	mov	%r7 %r30
	sw	%r26 %r28 16
	lw	%r30 %r29 0
	addi	%r26 %r26 20	
	jalr	%r29
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
beq_cont.162 :
	j	bne_cont.6 
bne_else.8 :
bne_cont.6 :
beq_cont.130 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r30 8
	lw	%r30 %r29 0
	jr	%r29
solve_each_element_fast.0 :
	lw	%r30 %r4 32
	lw	%r30 %r5 28
	lw	%r30 %r6 24
	lw	%r30 %r7 20
	lw	%r30 %r8 16
	lw	%r30 %r9 12
	lw	%r30 %r10 8
	lw	%r30 %r11 4
	lw	%r3 %r12 0
	slli	%r1 %r13 2
	add	%r2 %r13 %r31
	lw	%r31 %r13 0
	addi	%r0 %r14 -1
	bne	%r13 %r14 beq_else.181 
	retl
beq_else.181 :
	slli	%r13 %r14 2
	add	%r7 %r14 %r31
	lw	%r31 %r14 0
	lw	%r14 %r15 40
	lw.s	%r15 %f0 0
	lw.s	%r15 %f1 4
	lw.s	%r15 %f2 8
	lw	%r3 %r16 4
	slli	%r13 %r17 2
	add	%r16 %r17 %r31
	lw	%r31 %r16 0
	lw	%r14 %r17 4
	addi	%r0 %r18 1
	bne	%r17 %r18 beq_else.182 
	lw	%r3 %r15 0
	lw.s	%r16 %f3 0
	sub.s	%f0 %f3 %f3
	lw.s	%r16 %f4 4
	mul.s	%f4 %f3 %f3
	lw.s	%r15 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r17 l.15
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.86 
	neg.s	%f4 %f4
	j	fbl_cont.84 
fbl_else.86 :
fbl_cont.84 :
	lw	%r14 %r17 16
	lw.s	%r17 %f5 4
	fbge	%f4 %f5 fbl_else.87 
	addi	%r0 %r17 1
	j	fbl_cont.85 
fbl_else.87 :
	addi	%r0 %r17 0
fbl_cont.85 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.183 
	addi	%r0 %r17 0
	j	beq_cont.164 
beq_else.183 :
	lw.s	%r15 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r17 l.15
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.88 
	neg.s	%f4 %f4
	j	fbl_cont.86 
fbl_else.88 :
fbl_cont.86 :
	lw	%r14 %r17 16
	lw.s	%r17 %f5 8
	fbge	%f4 %f5 fbl_else.89 
	addi	%r0 %r17 1
	j	fbl_cont.87 
fbl_else.89 :
	addi	%r0 %r17 0
fbl_cont.87 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.184 
	addi	%r0 %r17 0
	j	beq_cont.165 
beq_else.184 :
	lw.s	%r16 %f4 4
	addi	%r0 %r17 l.15
	ilw.s	%r17 %f5 0
	fbne	%f4 %f5 fbeq_else.27 
	addi	%r0 %r17 1
	j	fbeq_cont.27 
fbeq_else.27 :
	addi	%r0 %r17 0
fbeq_cont.27 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.185 
	addi	%r0 %r17 1
	j	beq_cont.166 
beq_else.185 :
	addi	%r0 %r17 0
beq_cont.166 :
beq_cont.165 :
beq_cont.164 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.186 
	lw.s	%r16 %f3 8
	sub.s	%f1 %f3 %f3
	lw.s	%r16 %f4 12
	mul.s	%f4 %f3 %f3
	lw.s	%r15 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r17 l.15
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.90 
	neg.s	%f4 %f4
	j	fbl_cont.88 
fbl_else.90 :
fbl_cont.88 :
	lw	%r14 %r17 16
	lw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.91 
	addi	%r0 %r17 1
	j	fbl_cont.89 
fbl_else.91 :
	addi	%r0 %r17 0
fbl_cont.89 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.187 
	addi	%r0 %r17 0
	j	beq_cont.168 
beq_else.187 :
	lw.s	%r15 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r17 l.15
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.92 
	neg.s	%f4 %f4
	j	fbl_cont.90 
fbl_else.92 :
fbl_cont.90 :
	lw	%r14 %r17 16
	lw.s	%r17 %f5 8
	fbge	%f4 %f5 fbl_else.93 
	addi	%r0 %r17 1
	j	fbl_cont.91 
fbl_else.93 :
	addi	%r0 %r17 0
fbl_cont.91 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.188 
	addi	%r0 %r17 0
	j	beq_cont.169 
beq_else.188 :
	lw.s	%r16 %f4 12
	addi	%r0 %r17 l.15
	ilw.s	%r17 %f5 0
	fbne	%f4 %f5 fbeq_else.28 
	addi	%r0 %r17 1
	j	fbeq_cont.28 
fbeq_else.28 :
	addi	%r0 %r17 0
fbeq_cont.28 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.189 
	addi	%r0 %r17 1
	j	beq_cont.170 
beq_else.189 :
	addi	%r0 %r17 0
beq_cont.170 :
beq_cont.169 :
beq_cont.168 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.190 
	lw.s	%r16 %f3 16
	sub.s	%f2 %f3 %f2
	lw.s	%r16 %f3 20
	mul.s	%f3 %f2 %f2
	lw.s	%r15 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r17 l.15
	ilw.s	%r17 %f3 0
	fbge	%f0 %f3 fbl_else.94 
	neg.s	%f0 %f0
	j	fbl_cont.92 
fbl_else.94 :
fbl_cont.92 :
	lw	%r14 %r17 16
	lw.s	%r17 %f3 0
	fbge	%f0 %f3 fbl_else.95 
	addi	%r0 %r17 1
	j	fbl_cont.93 
fbl_else.95 :
	addi	%r0 %r17 0
fbl_cont.93 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.191 
	addi	%r0 %r14 0
	j	beq_cont.172 
beq_else.191 :
	lw.s	%r15 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r15 l.15
	ilw.s	%r15 %f1 0
	fbge	%f0 %f1 fbl_else.96 
	neg.s	%f0 %f0
	j	fbl_cont.94 
fbl_else.96 :
fbl_cont.94 :
	lw	%r14 %r14 16
	lw.s	%r14 %f1 4
	fbge	%f0 %f1 fbl_else.97 
	addi	%r0 %r14 1
	j	fbl_cont.95 
fbl_else.97 :
	addi	%r0 %r14 0
fbl_cont.95 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.192 
	addi	%r0 %r14 0
	j	beq_cont.173 
beq_else.192 :
	lw.s	%r16 %f0 20
	addi	%r0 %r14 l.15
	ilw.s	%r14 %f1 0
	fbne	%f0 %f1 fbeq_else.29 
	addi	%r0 %r14 1
	j	fbeq_cont.29 
fbeq_else.29 :
	addi	%r0 %r14 0
fbeq_cont.29 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.193 
	addi	%r0 %r14 1
	j	beq_cont.174 
beq_else.193 :
	addi	%r0 %r14 0
beq_cont.174 :
beq_cont.173 :
beq_cont.172 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.194 
	addi	%r0 %r14 0
	j	beq_cont.175 
beq_else.194 :
	sw.s	%r6 %f2 0
	addi	%r0 %r14 3
beq_cont.175 :
	j	beq_cont.171 
beq_else.190 :
	sw.s	%r6 %f3 0
	addi	%r0 %r14 2
beq_cont.171 :
	j	beq_cont.167 
beq_else.186 :
	sw.s	%r6 %f3 0
	addi	%r0 %r14 1
beq_cont.167 :
	j	beq_cont.163 
beq_else.182 :
	addi	%r0 %r18 2
	bne	%r17 %r18 beq_else.195 
	lw.s	%r16 %f0 0
	addi	%r0 %r14 l.15
	ilw.s	%r14 %f1 0
	fbge	%f0 %f1 fbl_else.98 
	addi	%r0 %r14 1
	j	fbl_cont.96 
fbl_else.98 :
	addi	%r0 %r14 0
fbl_cont.96 :
	addi	%r0 %r17 0
	bne	%r14 %r17 beq_else.196 
	addi	%r0 %r14 0
	j	beq_cont.177 
beq_else.196 :
	lw.s	%r16 %f0 0
	lw.s	%r15 %f1 12
	mul.s	%f1 %f0 %f0
	sw.s	%r6 %f0 0
	addi	%r0 %r14 1
beq_cont.177 :
	j	beq_cont.176 
beq_else.195 :
	lw.s	%r16 %f3 0
	addi	%r0 %r17 l.15
	ilw.s	%r17 %f4 0
	fbne	%f3 %f4 fbeq_else.30 
	addi	%r0 %r17 1
	j	fbeq_cont.30 
fbeq_else.30 :
	addi	%r0 %r17 0
fbeq_cont.30 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.197 
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
	addi	%r0 %r15 l.15
	ilw.s	%r15 %f2 0
	fbge	%f2 %f1 fbl_else.99 
	addi	%r0 %r15 1
	j	fbl_cont.97 
fbl_else.99 :
	addi	%r0 %r15 0
fbl_cont.97 :
	addi	%r0 %r17 0
	bne	%r15 %r17 beq_else.198 
	addi	%r0 %r14 0
	j	beq_cont.179 
beq_else.198 :
	lw	%r14 %r14 24
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.199 
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	lw.s	%r16 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r6 %f0 0
	j	beq_cont.180 
beq_else.199 :
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r16 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r6 %f0 0
beq_cont.180 :
	addi	%r0 %r14 1
beq_cont.179 :
	j	beq_cont.178 
beq_else.197 :
	addi	%r0 %r14 0
beq_cont.178 :
beq_cont.176 :
beq_cont.163 :
	addi	%r0 %r15 0
	beq	%r14 %r15 bne_else.9 
	lw.s	%r6 %f0 0
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f1 0
	fbge	%f1 %f0 fbl_else.100 
	addi	%r0 %r6 1
	j	fbl_cont.98 
fbl_else.100 :
	addi	%r0 %r6 0
fbl_cont.98 :
	addi	%r0 %r7 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r30 8
	sw	%r26 %r1 12
	bne	%r6 %r7 beq_else.200 
	j	beq_cont.181 
beq_else.200 :
	lw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.101 
	addi	%r0 %r6 1
	j	fbl_cont.99 
fbl_else.101 :
	addi	%r0 %r6 0
fbl_cont.99 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.201 
	j	beq_cont.182 
beq_else.201 :
	addi	%r0 %r6 l.208
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
	mov	%r11 %r30
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 80
	lw	%r30 %r29 0
	addi	%r26 %r26 84	
	jalr	%r29
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.202 
	j	beq_cont.183 
beq_else.202 :
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
beq_cont.183 :
beq_cont.182 :
beq_cont.181 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r30 8
	lw	%r30 %r29 0
	jr	%r29
bne_else.9 :
	slli	%r13 %r4 2
	add	%r7 %r4 %r31
	lw	%r31 %r4 0
	lw	%r4 %r4 24
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.203 
	retl
beq_else.203 :
	addi	%r1 %r1 1
	lw	%r30 %r29 0
	jr	%r29
solve_one_or_network_fast.0 :
	lw	%r30 %r4 8
	lw	%r30 %r5 4
	slli	%r1 %r6 2
	add	%r2 %r6 %r31
	lw	%r31 %r6 0
	addi	%r0 %r7 -1
	beq	%r6 %r7 bne_else.10 
	slli	%r6 %r6 2
	add	%r5 %r6 %r31
	lw	%r31 %r5 0
	addi	%r0 %r6 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r30 8
	sw	%r26 %r1 12
	mov	%r5 %r2
	mov	%r6 %r1
	mov	%r4 %r30
	sw	%r26 %r28 16
	lw	%r30 %r29 0
	addi	%r26 %r26 20	
	jalr	%r29
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r30 8
	lw	%r30 %r29 0
	jr	%r29
bne_else.10 :
	retl
trace_or_matrix_fast.0 :
	lw	%r30 %r4 16
	lw	%r30 %r5 12
	lw	%r30 %r6 8
	lw	%r30 %r7 4
	slli	%r1 %r8 2
	add	%r2 %r8 %r31
	lw	%r31 %r8 0
	lw	%r8 %r9 0
	addi	%r0 %r10 -1
	bne	%r9 %r10 beq_else.204 
	retl
beq_else.204 :
	addi	%r0 %r10 99
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r30 8
	sw	%r26 %r1 12
	bne	%r9 %r10 beq_else.205 
	addi	%r0 %r4 1
	mov	%r8 %r2
	mov	%r4 %r1
	mov	%r6 %r30
	sw	%r26 %r28 16
	lw	%r30 %r29 0
	addi	%r26 %r26 20	
	jalr	%r29
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	j	beq_cont.184 
beq_else.205 :
	slli	%r9 %r10 2
	add	%r7 %r10 %r31
	lw	%r31 %r7 0
	lw	%r7 %r10 40
	lw.s	%r10 %f0 0
	lw.s	%r10 %f1 4
	lw.s	%r10 %f2 8
	lw	%r3 %r11 4
	slli	%r9 %r9 2
	add	%r11 %r9 %r31
	lw	%r31 %r9 0
	lw	%r7 %r11 4
	addi	%r0 %r12 1
	bne	%r11 %r12 beq_else.206 
	lw	%r3 %r10 0
	lw.s	%r9 %f3 0
	sub.s	%f0 %f3 %f3
	lw.s	%r9 %f4 4
	mul.s	%f4 %f3 %f3
	lw.s	%r10 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r11 l.15
	ilw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.102 
	neg.s	%f4 %f4
	j	fbl_cont.100 
fbl_else.102 :
fbl_cont.100 :
	lw	%r7 %r11 16
	lw.s	%r11 %f5 4
	fbge	%f4 %f5 fbl_else.103 
	addi	%r0 %r11 1
	j	fbl_cont.101 
fbl_else.103 :
	addi	%r0 %r11 0
fbl_cont.101 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.207 
	addi	%r0 %r11 0
	j	beq_cont.186 
beq_else.207 :
	lw.s	%r10 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r11 l.15
	ilw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.104 
	neg.s	%f4 %f4
	j	fbl_cont.102 
fbl_else.104 :
fbl_cont.102 :
	lw	%r7 %r11 16
	lw.s	%r11 %f5 8
	fbge	%f4 %f5 fbl_else.105 
	addi	%r0 %r11 1
	j	fbl_cont.103 
fbl_else.105 :
	addi	%r0 %r11 0
fbl_cont.103 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.208 
	addi	%r0 %r11 0
	j	beq_cont.187 
beq_else.208 :
	lw.s	%r9 %f4 4
	addi	%r0 %r11 l.15
	ilw.s	%r11 %f5 0
	fbne	%f4 %f5 fbeq_else.31 
	addi	%r0 %r11 1
	j	fbeq_cont.31 
fbeq_else.31 :
	addi	%r0 %r11 0
fbeq_cont.31 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.209 
	addi	%r0 %r11 1
	j	beq_cont.188 
beq_else.209 :
	addi	%r0 %r11 0
beq_cont.188 :
beq_cont.187 :
beq_cont.186 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.210 
	lw.s	%r9 %f3 8
	sub.s	%f1 %f3 %f3
	lw.s	%r9 %f4 12
	mul.s	%f4 %f3 %f3
	lw.s	%r10 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r11 l.15
	ilw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.106 
	neg.s	%f4 %f4
	j	fbl_cont.104 
fbl_else.106 :
fbl_cont.104 :
	lw	%r7 %r11 16
	lw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.107 
	addi	%r0 %r11 1
	j	fbl_cont.105 
fbl_else.107 :
	addi	%r0 %r11 0
fbl_cont.105 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.211 
	addi	%r0 %r11 0
	j	beq_cont.190 
beq_else.211 :
	lw.s	%r10 %f4 8
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r11 l.15
	ilw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.108 
	neg.s	%f4 %f4
	j	fbl_cont.106 
fbl_else.108 :
fbl_cont.106 :
	lw	%r7 %r11 16
	lw.s	%r11 %f5 8
	fbge	%f4 %f5 fbl_else.109 
	addi	%r0 %r11 1
	j	fbl_cont.107 
fbl_else.109 :
	addi	%r0 %r11 0
fbl_cont.107 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.212 
	addi	%r0 %r11 0
	j	beq_cont.191 
beq_else.212 :
	lw.s	%r9 %f4 12
	addi	%r0 %r11 l.15
	ilw.s	%r11 %f5 0
	fbne	%f4 %f5 fbeq_else.32 
	addi	%r0 %r11 1
	j	fbeq_cont.32 
fbeq_else.32 :
	addi	%r0 %r11 0
fbeq_cont.32 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.213 
	addi	%r0 %r11 1
	j	beq_cont.192 
beq_else.213 :
	addi	%r0 %r11 0
beq_cont.192 :
beq_cont.191 :
beq_cont.190 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.214 
	lw.s	%r9 %f3 16
	sub.s	%f2 %f3 %f2
	lw.s	%r9 %f3 20
	mul.s	%f3 %f2 %f2
	lw.s	%r10 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r11 l.15
	ilw.s	%r11 %f3 0
	fbge	%f0 %f3 fbl_else.110 
	neg.s	%f0 %f0
	j	fbl_cont.108 
fbl_else.110 :
fbl_cont.108 :
	lw	%r7 %r11 16
	lw.s	%r11 %f3 0
	fbge	%f0 %f3 fbl_else.111 
	addi	%r0 %r11 1
	j	fbl_cont.109 
fbl_else.111 :
	addi	%r0 %r11 0
fbl_cont.109 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.215 
	addi	%r0 %r7 0
	j	beq_cont.194 
beq_else.215 :
	lw.s	%r10 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r10 l.15
	ilw.s	%r10 %f1 0
	fbge	%f0 %f1 fbl_else.112 
	neg.s	%f0 %f0
	j	fbl_cont.110 
fbl_else.112 :
fbl_cont.110 :
	lw	%r7 %r7 16
	lw.s	%r7 %f1 4
	fbge	%f0 %f1 fbl_else.113 
	addi	%r0 %r7 1
	j	fbl_cont.111 
fbl_else.113 :
	addi	%r0 %r7 0
fbl_cont.111 :
	addi	%r0 %r10 0
	bne	%r7 %r10 beq_else.216 
	addi	%r0 %r7 0
	j	beq_cont.195 
beq_else.216 :
	lw.s	%r9 %f0 20
	addi	%r0 %r7 l.15
	ilw.s	%r7 %f1 0
	fbne	%f0 %f1 fbeq_else.33 
	addi	%r0 %r7 1
	j	fbeq_cont.33 
fbeq_else.33 :
	addi	%r0 %r7 0
fbeq_cont.33 :
	addi	%r0 %r9 0
	bne	%r7 %r9 beq_else.217 
	addi	%r0 %r7 1
	j	beq_cont.196 
beq_else.217 :
	addi	%r0 %r7 0
beq_cont.196 :
beq_cont.195 :
beq_cont.194 :
	addi	%r0 %r9 0
	bne	%r7 %r9 beq_else.218 
	addi	%r0 %r7 0
	j	beq_cont.197 
beq_else.218 :
	sw.s	%r5 %f2 0
	addi	%r0 %r7 3
beq_cont.197 :
	j	beq_cont.193 
beq_else.214 :
	sw.s	%r5 %f3 0
	addi	%r0 %r7 2
beq_cont.193 :
	j	beq_cont.189 
beq_else.210 :
	sw.s	%r5 %f3 0
	addi	%r0 %r7 1
beq_cont.189 :
	j	beq_cont.185 
beq_else.206 :
	addi	%r0 %r12 2
	bne	%r11 %r12 beq_else.219 
	lw.s	%r9 %f0 0
	addi	%r0 %r7 l.15
	ilw.s	%r7 %f1 0
	fbge	%f0 %f1 fbl_else.114 
	addi	%r0 %r7 1
	j	fbl_cont.112 
fbl_else.114 :
	addi	%r0 %r7 0
fbl_cont.112 :
	addi	%r0 %r11 0
	bne	%r7 %r11 beq_else.220 
	addi	%r0 %r7 0
	j	beq_cont.199 
beq_else.220 :
	lw.s	%r9 %f0 0
	lw.s	%r10 %f1 12
	mul.s	%f1 %f0 %f0
	sw.s	%r5 %f0 0
	addi	%r0 %r7 1
beq_cont.199 :
	j	beq_cont.198 
beq_else.219 :
	lw.s	%r9 %f3 0
	addi	%r0 %r11 l.15
	ilw.s	%r11 %f4 0
	fbne	%f3 %f4 fbeq_else.34 
	addi	%r0 %r11 1
	j	fbeq_cont.34 
fbeq_else.34 :
	addi	%r0 %r11 0
fbeq_cont.34 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.221 
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
	addi	%r0 %r10 l.15
	ilw.s	%r10 %f2 0
	fbge	%f2 %f1 fbl_else.115 
	addi	%r0 %r10 1
	j	fbl_cont.113 
fbl_else.115 :
	addi	%r0 %r10 0
fbl_cont.113 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.222 
	addi	%r0 %r7 0
	j	beq_cont.201 
beq_else.222 :
	lw	%r7 %r7 24
	addi	%r0 %r10 0
	bne	%r7 %r10 beq_else.223 
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	lw.s	%r9 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r5 %f0 0
	j	beq_cont.202 
beq_else.223 :
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r9 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r5 %f0 0
beq_cont.202 :
	addi	%r0 %r7 1
beq_cont.201 :
	j	beq_cont.200 
beq_else.221 :
	addi	%r0 %r7 0
beq_cont.200 :
beq_cont.198 :
beq_cont.185 :
	addi	%r0 %r9 0
	beq	%r7 %r9 bne_else.11 
	lw.s	%r5 %f0 0
	lw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.116 
	addi	%r0 %r4 1
	j	fbl_cont.114 
fbl_else.116 :
	addi	%r0 %r4 0
fbl_cont.114 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.224 
	j	beq_cont.203 
beq_else.224 :
	addi	%r0 %r4 1
	mov	%r8 %r2
	mov	%r4 %r1
	mov	%r6 %r30
	sw	%r26 %r28 16
	lw	%r30 %r29 0
	addi	%r26 %r26 20	
	jalr	%r29
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
beq_cont.203 :
	j	bne_cont.7 
bne_else.11 :
bne_cont.7 :
beq_cont.184 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r30 8
	lw	%r30 %r29 0
	jr	%r29
trace_reflections.0 :
	lw	%r30 %r3 40
	lw	%r30 %r4 36
	lw	%r30 %r5 32
	lw	%r30 %r6 28
	lw	%r30 %r7 24
	lw	%r30 %r8 20
	lw	%r30 %r9 16
	lw	%r30 %r10 12
	lw	%r30 %r11 8
	lw	%r30 %r12 4
	addi	%r0 %r13 0
	bg	%r13 %r1 ble_else.3 
	slli	%r1 %r13 2
	add	%r8 %r13 %r31
	lw	%r31 %r8 0
	lw	%r8 %r13 4
	addi	%r0 %r14 l.287
	ilw.s	%r14 %f2 0
	sw.s	%r4 %f2 0
	addi	%r0 %r14 0
	lw	%r9 %r15 0
	sw	%r26 %r30 0
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
	mov	%r3 %r30
	mov	%r13 %r3
	sw	%r26 %r28 72
	lw	%r30 %r29 0
	addi	%r26 %r26 76	
	jalr	%r29
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	lw	%r26 %r1 68
	lw.s	%r1 %f0 0
	addi	%r0 %r1 l.223
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.117 
	addi	%r0 %r1 1
	j	fbl_cont.115 
fbl_else.117 :
	addi	%r0 %r1 0
fbl_cont.115 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.225 
	addi	%r0 %r1 0
	j	beq_cont.204 
beq_else.225 :
	addi	%r0 %r1 l.290
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.118 
	addi	%r0 %r1 1
	j	fbl_cont.116 
fbl_else.118 :
	addi	%r0 %r1 0
fbl_cont.116 :
beq_cont.204 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.226 
	j	beq_cont.205 
beq_else.226 :
	lw	%r26 %r1 64
	lw	%r1 %r1 0
	addi	%r0 %r2 4
	mul	%r1 %r2 %r1
	lw	%r26 %r2 60
	lw	%r2 %r2 0
	add	%r1 %r2 %r1
	lw	%r26 %r2 56
	lw	%r2 %r3 0
	bne	%r1 %r3 beq_else.227 
	addi	%r0 %r1 0
	lw	%r26 %r3 52
	lw	%r3 %r3 0
	lw	%r26 %r30 48
	mov	%r3 %r2
	sw	%r26 %r28 72
	lw	%r30 %r29 0
	addi	%r26 %r26 76	
	jalr	%r29
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.228 
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
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f3 0
	fbge	%f3 %f0 fbl_else.119 
	addi	%r0 %r1 1
	j	fbl_cont.117 
fbl_else.119 :
	addi	%r0 %r1 0
fbl_cont.117 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.229 
	j	beq_cont.208 
beq_else.229 :
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
beq_cont.208 :
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f0 0
	fbge	%f0 %f1 fbl_else.120 
	addi	%r0 %r1 1
	j	fbl_cont.118 
fbl_else.120 :
	addi	%r0 %r1 0
fbl_cont.118 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.230 
	j	beq_cont.209 
beq_else.230 :
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
beq_cont.209 :
	j	beq_cont.207 
beq_else.228 :
beq_cont.207 :
	j	beq_cont.206 
beq_else.227 :
beq_cont.206 :
beq_cont.205 :
	addi	%r0 %r1 1
	lw	%r26 %r2 4
	sub	%r2 %r1 %r1
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 8
	lw	%r26 %r2 24
	lw	%r26 %r30 0
	lw	%r30 %r29 0
	jr	%r29
ble_else.3 :
	retl
trace_ray.0 :
	lw	%r30 %r4 84
	lw	%r30 %r5 80
	lw	%r30 %r6 76
	lw	%r30 %r7 72
	lw	%r30 %r8 68
	lw	%r30 %r9 64
	lw	%r30 %r10 60
	lw	%r30 %r11 56
	lw	%r30 %r12 52
	lw	%r30 %r13 48
	lw	%r30 %r14 44
	lw	%r30 %r15 40
	lw	%r30 %r16 36
	lw	%r30 %r17 32
	lw	%r30 %r18 28
	lw	%r30 %r19 24
	lw	%r30 %r20 20
	lw	%r30 %r21 16
	lw	%r30 %r22 12
	lw	%r30 %r23 8
	lw	%r30 %r24 4
	addi	%r0 %r25 4
	bg	%r1 %r25 ble_else.4 
	lw	%r3 %r25 8
	addi	%r0 %r29 l.287
	ilw.s	%r29 %f2 0
	sw.s	%r6 %f2 0
	addi	%r0 %r29 0
	sw	%r26 %r30 0
	lw	%r14 %r30 0
	sw.s	%r26 %f1 8
	sw	%r26 %r4 16
	sw	%r26 %r17 20
	sw	%r26 %r12 24
	sw	%r26 %r18 28
	sw	%r26 %r8 32
	sw	%r26 %r11 36
	sw	%r26 %r14 40
	sw	%r26 %r3 44
	sw	%r26 %r23 48
	sw	%r26 %r10 52
	sw	%r26 %r7 56
	sw	%r26 %r9 60
	sw	%r26 %r21 64
	sw	%r26 %r16 68
	sw	%r26 %r20 72
	sw	%r26 %r15 76
	sw	%r26 %r22 80
	sw	%r26 %r13 84
	sw	%r26 %r24 88
	sw.s	%r26 %f0 96
	sw	%r26 %r19 104
	sw	%r26 %r2 108
	sw	%r26 %r25 112
	sw	%r26 %r1 116
	sw	%r26 %r6 120
	mov	%r2 %r3
	mov	%r29 %r1
	mov	%r30 %r2
	mov	%r5 %r30
	sw	%r26 %r28 124
	lw	%r30 %r29 0
	addi	%r26 %r26 128	
	jalr	%r29
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	lw	%r26 %r1 120
	lw.s	%r1 %f0 0
	addi	%r0 %r2 l.223
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.121 
	addi	%r0 %r2 1
	j	fbl_cont.119 
fbl_else.121 :
	addi	%r0 %r2 0
fbl_cont.119 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.231 
	addi	%r0 %r2 0
	j	beq_cont.210 
beq_else.231 :
	addi	%r0 %r2 l.290
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.122 
	addi	%r0 %r2 1
	j	fbl_cont.120 
fbl_else.122 :
	addi	%r0 %r2 0
fbl_cont.120 :
beq_cont.210 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.232 
	addi	%r0 %r1 -1
	lw	%r26 %r2 116
	slli	%r2 %r3 2
	lw	%r26 %r4 112
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	addi	%r0 %r1 0
	beq	%r2 %r1 bne_else.12 
	lw	%r26 %r1 108
	lw.s	%r1 %f0 0
	lw	%r26 %r2 104
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
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.123 
	addi	%r0 %r1 1
	j	fbl_cont.121 
fbl_else.123 :
	addi	%r0 %r1 0
fbl_cont.121 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.233 
	retl
beq_else.233 :
	mul.s	%f0 %f0 %f1
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 96
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 88
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 84
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
bne_else.12 :
	retl
beq_else.232 :
	lw	%r26 %r2 80
	lw	%r2 %r2 0
	slli	%r2 %r3 2
	lw	%r26 %r4 76
	add	%r4 %r3 %r31
	lw	%r31 %r3 0
	lw	%r3 %r4 8
	lw	%r3 %r5 28
	lw.s	%r5 %f0 0
	lw.s	%r26 %f1 96
	mul.s	%f1 %f0 %f0
	lw	%r3 %r5 4
	addi	%r0 %r6 1
	bne	%r5 %r6 beq_else.234 
	lw	%r26 %r5 72
	lw	%r5 %r6 0
	addi	%r0 %r7 l.15
	ilw.s	%r7 %f2 0
	lw	%r26 %r7 68
	sw.s	%r7 %f2 0
	sw.s	%r7 %f2 4
	sw.s	%r7 %f2 8
	addi	%r0 %r8 1
	sub	%r6 %r8 %r8
	addi	%r0 %r9 1
	sub	%r6 %r9 %r6
	slli	%r6 %r6 2
	lw	%r26 %r9 108
	add	%r9 %r6 %r31
	lw.s	%r31 %f2 0
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f3 0
	fbne	%f2 %f3 fbeq_else.35 
	addi	%r0 %r6 1
	j	fbeq_cont.35 
fbeq_else.35 :
	addi	%r0 %r6 0
fbeq_cont.35 :
	addi	%r0 %r10 0
	bne	%r6 %r10 beq_else.235 
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f3 0
	fbge	%f3 %f2 fbl_else.124 
	addi	%r0 %r6 1
	j	fbl_cont.122 
fbl_else.124 :
	addi	%r0 %r6 0
fbl_cont.122 :
	addi	%r0 %r10 0
	bne	%r6 %r10 beq_else.236 
	addi	%r0 %r6 l.48
	ilw.s	%r6 %f2 0
	j	beq_cont.213 
beq_else.236 :
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f2 0
beq_cont.213 :
	j	beq_cont.212 
beq_else.235 :
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f2 0
beq_cont.212 :
	neg.s	%f2 %f2
	slli	%r8 %r6 2
	add	%r7 %r6 %r31
	sw.s	%r31 %f2 0
	j	beq_cont.211 
beq_else.234 :
	addi	%r0 %r6 2
	bne	%r5 %r6 beq_else.237 
	lw	%r3 %r5 16
	lw.s	%r5 %f2 0
	neg.s	%f2 %f2
	lw	%r26 %r5 68
	sw.s	%r5 %f2 0
	lw	%r3 %r6 16
	lw.s	%r6 %f2 4
	neg.s	%f2 %f2
	sw.s	%r5 %f2 4
	lw	%r3 %r6 16
	lw.s	%r6 %f2 8
	neg.s	%f2 %f2
	sw.s	%r5 %f2 8
	j	beq_cont.214 
beq_else.237 :
	lw	%r26 %r5 64
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
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.238 
	lw	%r26 %r6 68
	sw.s	%r6 %f5 0
	sw.s	%r6 %f6 4
	sw.s	%r6 %f7 8
	j	beq_cont.215 
beq_else.238 :
	lw	%r3 %r6 36
	lw.s	%r6 %f8 8
	mul.s	%f8 %f3 %f8
	lw	%r3 %r6 36
	lw.s	%r6 %f9 4
	mul.s	%f9 %f4 %f9
	add.s	%f9 %f8 %f8
	addi	%r0 %r6 l.159
	ilw.s	%r6 %f9 0
	div.s	%f9 %f8 %f8
	add.s	%f8 %f5 %f5
	lw	%r26 %r6 68
	sw.s	%r6 %f5 0
	lw	%r3 %r7 36
	lw.s	%r7 %f5 8
	mul.s	%f5 %f2 %f5
	lw	%r3 %r7 36
	lw.s	%r7 %f8 0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f5 %f4
	addi	%r0 %r7 l.159
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
	addi	%r0 %r7 l.159
	ilw.s	%r7 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f7 %f2
	sw.s	%r6 %f2 8
beq_cont.215 :
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
	addi	%r0 %r8 l.15
	ilw.s	%r8 %f3 0
	fbne	%f2 %f3 fbeq_else.36 
	addi	%r0 %r8 1
	j	fbeq_cont.36 
fbeq_else.36 :
	addi	%r0 %r8 0
fbeq_cont.36 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.239 
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.240 
	addi	%r0 %r7 l.17
	ilw.s	%r7 %f3 0
	div.s	%f2 %f3 %f2
	j	beq_cont.217 
beq_else.240 :
	addi	%r0 %r7 l.48
	ilw.s	%r7 %f3 0
	div.s	%f2 %f3 %f2
beq_cont.217 :
	j	beq_cont.216 
beq_else.239 :
	addi	%r0 %r7 l.17
	ilw.s	%r7 %f2 0
beq_cont.216 :
	lw.s	%r6 %f3 0
	mul.s	%f2 %f3 %f3
	sw.s	%r6 %f3 0
	lw.s	%r6 %f3 4
	mul.s	%f2 %f3 %f3
	sw.s	%r6 %f3 4
	lw.s	%r6 %f3 8
	mul.s	%f2 %f3 %f2
	sw.s	%r6 %f2 8
beq_cont.214 :
beq_cont.211 :
	lw	%r26 %r5 64
	lw.s	%r5 %f2 0
	lw	%r26 %r6 60
	sw.s	%r6 %f2 0
	lw.s	%r5 %f2 4
	sw.s	%r6 %f2 4
	lw.s	%r5 %f2 8
	sw.s	%r6 %f2 8
	lw	%r3 %r6 0
	lw	%r3 %r7 32
	lw.s	%r7 %f2 0
	lw	%r26 %r7 56
	sw.s	%r7 %f2 0
	lw	%r3 %r8 32
	lw.s	%r8 %f2 4
	sw.s	%r7 %f2 4
	lw	%r3 %r8 32
	lw.s	%r8 %f2 8
	sw.s	%r7 %f2 8
	addi	%r0 %r8 1
	sw	%r26 %r4 124
	sw.s	%r26 %f0 128
	sw	%r26 %r3 136
	sw	%r26 %r2 140
	bne	%r6 %r8 beq_else.241 
	lw.s	%r5 %f2 0
	lw	%r3 %r6 20
	lw.s	%r6 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.474
	ilw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f3
	floor.w.s	%f3 %f3
	addi	%r0 %r6 l.476
	ilw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.463
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.125 
	addi	%r0 %r6 1
	j	fbl_cont.123 
fbl_else.125 :
	addi	%r0 %r6 0
fbl_cont.123 :
	lw.s	%r5 %f2 8
	lw	%r3 %r8 20
	lw.s	%r8 %f3 8
	sub.s	%f3 %f2 %f2
	addi	%r0 %r8 l.474
	ilw.s	%r8 %f3 0
	mul.s	%f3 %f2 %f3
	floor.w.s	%f3 %f3
	addi	%r0 %r8 l.476
	ilw.s	%r8 %f4 0
	mul.s	%f4 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r8 l.463
	ilw.s	%r8 %f3 0
	fbge	%f2 %f3 fbl_else.126 
	addi	%r0 %r8 1
	j	fbl_cont.124 
fbl_else.126 :
	addi	%r0 %r8 0
fbl_cont.124 :
	addi	%r0 %r9 0
	bne	%r6 %r9 beq_else.242 
	addi	%r0 %r6 0
	bne	%r8 %r6 beq_else.243 
	addi	%r0 %r6 l.459
	ilw.s	%r6 %f2 0
	j	beq_cont.220 
beq_else.243 :
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f2 0
beq_cont.220 :
	j	beq_cont.219 
beq_else.242 :
	addi	%r0 %r6 0
	bne	%r8 %r6 beq_else.244 
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f2 0
	j	beq_cont.221 
beq_else.244 :
	addi	%r0 %r6 l.459
	ilw.s	%r6 %f2 0
beq_cont.221 :
beq_cont.219 :
	sw.s	%r7 %f2 4
	j	beq_cont.218 
beq_else.241 :
	addi	%r0 %r8 2
	bne	%r6 %r8 beq_else.245 
	lw.s	%r5 %f2 4
	addi	%r0 %r6 l.469
	ilw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f2
	lw	%r26 %r30 52
	mov.s	%f2 %f0
	sw	%r26 %r28 144
	lw	%r30 %r29 0
	addi	%r26 %r26 148	
	jalr	%r29
	addi	%r26 %r26 -148
	lw	%r26 %r28 144
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.459
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r1 56
	sw.s	%r1 %f1 0
	addi	%r0 %r2 l.459
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 4
	j	beq_cont.222 
beq_else.245 :
	addi	%r0 %r8 3
	bne	%r6 %r8 beq_else.246 
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
	addi	%r0 %r6 l.463
	ilw.s	%r6 %f3 0
	div.s	%f3 %f2 %f2
	floor.w.s	%f2 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.386
	ilw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f2
	lw	%r26 %r30 48
	mov.s	%f2 %f0
	sw	%r26 %r28 144
	lw	%r30 %r29 0
	addi	%r26 %r26 148	
	jalr	%r29
	addi	%r26 %r26 -148
	lw	%r26 %r28 144
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.459
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r1 56
	sw.s	%r1 %f1 4
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r2 l.459
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	j	beq_cont.223 
beq_else.246 :
	addi	%r0 %r8 4
	bne	%r6 %r8 beq_else.247 
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
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f5 0
	fbge	%f2 %f5 fbl_else.127 
	neg.s	%f2 %f5
	j	fbl_cont.125 
fbl_else.127 :
	mov.s	%f2 %f5
fbl_cont.125 :
	addi	%r0 %r6 l.311
	ilw.s	%r6 %f6 0
	fbge	%f5 %f6 fbl_else.128 
	addi	%r0 %r6 1
	j	fbl_cont.126 
fbl_else.128 :
	addi	%r0 %r6 0
fbl_cont.126 :
	addi	%r0 %r8 0
	bne	%r6 %r8 beq_else.248 
	div.s	%f2 %f3 %f2
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.129 
	neg.s	%f2 %f2
	j	fbl_cont.127 
fbl_else.129 :
fbl_cont.127 :
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f3 0
	fbg	%f3 %f2 fble_else.16 
	addi	%r0 %r6 l.317
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.130 
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r6 l.325
	ilw.s	%r6 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r6 l.327
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.329
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.331
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.333
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.335
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.128 
fbl_else.130 :
	addi	%r0 %r6 l.319
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.131 
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f5 0
	add.s	%f5 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.21
	ilw.s	%r6 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r6 l.325
	ilw.s	%r6 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r6 l.327
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.329
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.331
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.333
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.335
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.129 
fbl_else.131 :
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r6 l.48
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.323
	ilw.s	%r6 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r6 l.325
	ilw.s	%r6 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r6 l.327
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.329
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.331
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.333
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.335
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.129 :
fbl_cont.128 :
	j	fble_cont.0 
fble_else.16 :
	neg.s	%f2 %f2
	addi	%r0 %r6 l.317
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.132 
	addi	%r0 %r6 l.48
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r6 l.325
	ilw.s	%r6 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r6 l.327
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.329
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.331
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.333
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.335
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.130 
fbl_else.132 :
	addi	%r0 %r6 l.319
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.133 
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f5 0
	add.s	%f5 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r6 l.48
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.21
	ilw.s	%r6 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r6 l.325
	ilw.s	%r6 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r6 l.327
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.329
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.331
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.333
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.335
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.131 
fbl_else.133 :
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.323
	ilw.s	%r6 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r6 l.325
	ilw.s	%r6 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r6 l.327
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.329
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.331
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.333
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.335
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.131 :
fbl_cont.130 :
fble_cont.0 :
	addi	%r0 %r6 l.384
	ilw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r6 l.386
	ilw.s	%r6 %f3 0
	div.s	%f3 %f2 %f2
	j	beq_cont.225 
beq_else.248 :
	addi	%r0 %r6 l.313
	ilw.s	%r6 %f2 0
beq_cont.225 :
	floor.w.s	%f2 %f3
	sub.s	%f3 %f2 %f2
	lw.s	%r5 %f3 4
	lw	%r3 %r6 20
	lw.s	%r6 %f5 4
	sub.s	%f5 %f3 %f3
	lw	%r3 %r6 16
	lw.s	%r6 %f5 4
	sqrt.s	%f5 %f5
	mul.s	%f5 %f3 %f3
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.134 
	neg.s	%f4 %f5
	j	fbl_cont.132 
fbl_else.134 :
	mov.s	%f4 %f5
fbl_cont.132 :
	addi	%r0 %r6 l.311
	ilw.s	%r6 %f6 0
	fbge	%f5 %f6 fbl_else.135 
	addi	%r0 %r6 1
	j	fbl_cont.133 
fbl_else.135 :
	addi	%r0 %r6 0
fbl_cont.133 :
	addi	%r0 %r8 0
	bne	%r6 %r8 beq_else.249 
	div.s	%f4 %f3 %f3
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f4 0
	fbge	%f3 %f4 fbl_else.136 
	neg.s	%f3 %f3
	j	fbl_cont.134 
fbl_else.136 :
fbl_cont.134 :
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f4 0
	fbg	%f4 %f3 fble_else.17 
	addi	%r0 %r6 l.317
	ilw.s	%r6 %f4 0
	fbge	%f3 %f4 fbl_else.137 
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r6 l.325
	ilw.s	%r6 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r6 l.327
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.329
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.331
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.333
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.335
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.135 
fbl_else.137 :
	addi	%r0 %r6 l.319
	ilw.s	%r6 %f4 0
	fbge	%f3 %f4 fbl_else.138 
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f4 0
	sub.s	%f4 %f3 %f4
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f5 0
	add.s	%f5 %f3 %f3
	div.s	%f3 %f4 %f3
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.21
	ilw.s	%r6 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r6 l.325
	ilw.s	%r6 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r6 l.327
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.329
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.331
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.333
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.335
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.136 
fbl_else.138 :
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f4 0
	div.s	%f3 %f4 %f3
	addi	%r0 %r6 l.48
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.323
	ilw.s	%r6 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r6 l.325
	ilw.s	%r6 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r6 l.327
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.329
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.331
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.333
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.335
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
fbl_cont.136 :
fbl_cont.135 :
	j	fble_cont.1 
fble_else.17 :
	neg.s	%f3 %f3
	addi	%r0 %r6 l.317
	ilw.s	%r6 %f4 0
	fbge	%f3 %f4 fbl_else.139 
	addi	%r0 %r6 l.48
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r6 l.325
	ilw.s	%r6 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r6 l.327
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.329
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.331
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.333
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.335
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.137 
fbl_else.139 :
	addi	%r0 %r6 l.319
	ilw.s	%r6 %f4 0
	fbge	%f3 %f4 fbl_else.140 
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f4 0
	sub.s	%f4 %f3 %f4
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f5 0
	add.s	%f5 %f3 %f3
	div.s	%f3 %f4 %f3
	addi	%r0 %r6 l.48
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.21
	ilw.s	%r6 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r6 l.325
	ilw.s	%r6 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r6 l.327
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.329
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.331
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.333
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.335
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.138 
fbl_else.140 :
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f4 0
	div.s	%f3 %f4 %f3
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.323
	ilw.s	%r6 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r6 l.325
	ilw.s	%r6 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r6 l.327
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.329
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.331
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.333
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.335
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
fbl_cont.138 :
fbl_cont.137 :
fble_cont.1 :
	addi	%r0 %r6 l.384
	ilw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r6 l.386
	ilw.s	%r6 %f4 0
	div.s	%f4 %f3 %f3
	j	beq_cont.226 
beq_else.249 :
	addi	%r0 %r6 l.313
	ilw.s	%r6 %f3 0
beq_cont.226 :
	floor.w.s	%f3 %f4
	sub.s	%f4 %f3 %f3
	addi	%r0 %r6 l.453
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.28
	ilw.s	%r6 %f5 0
	sub.s	%f2 %f5 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f4 %f2
	addi	%r0 %r6 l.28
	ilw.s	%r6 %f4 0
	sub.s	%f3 %f4 %f3
	mul.s	%f3 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.141 
	addi	%r0 %r6 1
	j	fbl_cont.139 
fbl_else.141 :
	addi	%r0 %r6 0
fbl_cont.139 :
	addi	%r0 %r8 0
	bne	%r6 %r8 beq_else.250 
	j	beq_cont.227 
beq_else.250 :
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f2 0
beq_cont.227 :
	addi	%r0 %r6 l.459
	ilw.s	%r6 %f3 0
	mul.s	%f2 %f3 %f2
	addi	%r0 %r6 l.461
	ilw.s	%r6 %f3 0
	div.s	%f3 %f2 %f2
	sw.s	%r7 %f2 8
	j	beq_cont.224 
beq_else.247 :
beq_cont.224 :
beq_cont.223 :
beq_cont.222 :
beq_cont.218 :
	addi	%r0 %r1 4
	lw	%r26 %r2 140
	mul	%r2 %r1 %r1
	lw	%r26 %r2 72
	lw	%r2 %r2 0
	add	%r1 %r2 %r1
	lw	%r26 %r2 116
	slli	%r2 %r3 2
	lw	%r26 %r4 112
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	lw	%r26 %r1 44
	lw	%r1 %r3 4
	slli	%r2 %r5 2
	add	%r3 %r5 %r31
	lw	%r31 %r3 0
	lw	%r26 %r5 64
	lw.s	%r5 %f0 0
	sw.s	%r3 %f0 0
	lw.s	%r5 %f0 4
	sw.s	%r3 %f0 4
	lw.s	%r5 %f0 8
	sw.s	%r3 %f0 8
	lw	%r1 %r3 12
	lw	%r26 %r6 136
	lw	%r6 %r7 28
	lw.s	%r7 %f0 0
	addi	%r0 %r7 l.28
	ilw.s	%r7 %f1 0
	fbge	%f0 %f1 fbl_else.142 
	addi	%r0 %r7 1
	j	fbl_cont.140 
fbl_else.142 :
	addi	%r0 %r7 0
fbl_cont.140 :
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.251 
	addi	%r0 %r7 1
	slli	%r2 %r8 2
	add	%r3 %r8 %r31
	sw	%r31 %r7 0
	lw	%r1 %r3 16
	slli	%r2 %r7 2
	add	%r3 %r7 %r31
	lw	%r31 %r7 0
	lw	%r26 %r8 56
	lw.s	%r8 %f0 0
	sw.s	%r7 %f0 0
	lw.s	%r8 %f0 4
	sw.s	%r7 %f0 4
	lw.s	%r8 %f0 8
	sw.s	%r7 %f0 8
	slli	%r2 %r7 2
	add	%r3 %r7 %r31
	lw	%r31 %r3 0
	addi	%r0 %r7 l.487
	ilw.s	%r7 %f0 0
	lw.s	%r26 %f1 128
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
	slli	%r2 %r7 2
	add	%r3 %r7 %r31
	lw	%r31 %r3 0
	lw	%r26 %r7 68
	lw.s	%r7 %f0 0
	sw.s	%r3 %f0 0
	lw.s	%r7 %f0 4
	sw.s	%r3 %f0 4
	lw.s	%r7 %f0 8
	sw.s	%r3 %f0 8
	j	beq_cont.228 
beq_else.251 :
	addi	%r0 %r7 0
	slli	%r2 %r8 2
	add	%r3 %r8 %r31
	sw	%r31 %r7 0
beq_cont.228 :
	addi	%r0 %r3 l.489
	ilw.s	%r3 %f0 0
	lw	%r26 %r3 108
	lw.s	%r3 %f1 0
	lw	%r26 %r7 68
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
	lw.s	%r26 %f1 96
	mul.s	%f0 %f1 %f0
	addi	%r0 %r8 0
	lw	%r26 %r9 40
	lw	%r9 %r9 0
	lw	%r26 %r30 36
	sw.s	%r26 %f0 144
	mov	%r9 %r2
	mov	%r8 %r1
	sw	%r26 %r28 152
	lw	%r30 %r29 0
	addi	%r26 %r26 156	
	jalr	%r29
	addi	%r26 %r26 -156
	lw	%r26 %r28 152
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.252 
	lw	%r26 %r1 68
	lw.s	%r1 %f0 0
	lw	%r26 %r2 104
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
	lw.s	%r26 %f1 128
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 108
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
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f3 0
	fbge	%f3 %f0 fbl_else.143 
	addi	%r0 %r2 1
	j	fbl_cont.141 
fbl_else.143 :
	addi	%r0 %r2 0
fbl_cont.141 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.253 
	j	beq_cont.230 
beq_else.253 :
	lw	%r26 %r2 84
	lw.s	%r2 %f3 0
	lw	%r26 %r3 56
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
beq_cont.230 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
	fbge	%f0 %f2 fbl_else.144 
	addi	%r0 %r2 1
	j	fbl_cont.142 
fbl_else.144 :
	addi	%r0 %r2 0
fbl_cont.142 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.254 
	j	beq_cont.231 
beq_else.254 :
	mul.s	%f2 %f2 %f0
	mul.s	%f0 %f0 %f0
	lw.s	%r26 %f2 144
	mul.s	%f2 %f0 %f0
	lw	%r26 %r2 84
	lw.s	%r2 %f3 0
	add.s	%f0 %f3 %f3
	sw.s	%r2 %f3 0
	lw.s	%r2 %f3 4
	add.s	%f0 %f3 %f3
	sw.s	%r2 %f3 4
	lw.s	%r2 %f3 8
	add.s	%f0 %f3 %f0
	sw.s	%r2 %f0 8
beq_cont.231 :
	j	beq_cont.229 
beq_else.252 :
beq_cont.229 :
	lw	%r26 %r1 64
	lw.s	%r1 %f0 0
	lw	%r26 %r2 32
	sw.s	%r2 %f0 0
	lw.s	%r1 %f0 4
	sw.s	%r2 %f0 4
	lw.s	%r1 %f0 8
	sw.s	%r2 %f0 8
	lw	%r26 %r2 28
	lw	%r2 %r2 0
	addi	%r0 %r3 1
	sub	%r2 %r3 %r2
	lw	%r26 %r30 24
	sw	%r26 %r28 152
	lw	%r30 %r29 0
	addi	%r26 %r26 156	
	jalr	%r29
	addi	%r26 %r26 -156
	lw	%r26 %r28 152
	lw	%r26 %r1 20
	lw	%r1 %r1 0
	addi	%r0 %r2 1
	sub	%r1 %r2 %r1
	lw.s	%r26 %f0 128
	lw.s	%r26 %f1 144
	lw	%r26 %r2 108
	lw	%r26 %r30 16
	sw	%r26 %r28 152
	lw	%r30 %r29 0
	addi	%r26 %r26 156	
	jalr	%r29
	addi	%r26 %r26 -156
	lw	%r26 %r28 152
	addi	%r0 %r1 l.493
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 96
	fbge	%f0 %f1 fbl_else.145 
	addi	%r0 %r1 1
	j	fbl_cont.143 
fbl_else.145 :
	addi	%r0 %r1 0
fbl_cont.143 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.255 
	retl
beq_else.255 :
	addi	%r0 %r1 4
	lw	%r26 %r2 116
	bge	%r2 %r1 bl_else.6 
	addi	%r2 %r1 1
	addi	%r0 %r3 -1
	slli	%r1 %r1 2
	lw	%r26 %r4 112
	add	%r4 %r1 %r31
	sw	%r31 %r3 0
	j	bl_cont.5 
bl_else.6 :
bl_cont.5 :
	addi	%r0 %r1 2
	lw	%r26 %r3 124
	bne	%r3 %r1 beq_else.256 
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 136
	lw	%r1 %r1 28
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f1 %f0
	addi	%r2 %r1 1
	lw	%r26 %r2 120
	lw.s	%r2 %f1 0
	lw.s	%r26 %f2 8
	add.s	%f1 %f2 %f1
	lw	%r26 %r2 108
	lw	%r26 %r3 44
	lw	%r26 %r30 0
	lw	%r30 %r29 0
	jr	%r29
beq_else.256 :
	retl
ble_else.4 :
	retl
iter_trace_diffuse_rays.0 :
	lw	%r30 %r5 56
	lw	%r30 %r6 52
	lw	%r30 %r7 48
	lw	%r30 %r8 44
	lw	%r30 %r9 40
	lw	%r30 %r10 36
	lw	%r30 %r11 32
	lw	%r30 %r12 28
	lw	%r30 %r13 24
	lw	%r30 %r14 20
	lw	%r30 %r15 16
	lw	%r30 %r16 12
	lw	%r30 %r17 8
	lw	%r30 %r18 4
	addi	%r0 %r19 0
	bg	%r19 %r4 ble_else.5 
	slli	%r4 %r19 2
	add	%r1 %r19 %r31
	lw	%r31 %r19 0
	lw	%r19 %r19 0
	lw.s	%r19 %f0 0
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r19 %f1 4
	lw.s	%r2 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r19 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r19 l.15
	ilw.s	%r19 %f1 0
	fbge	%f0 %f1 fbl_else.146 
	addi	%r0 %r19 1
	j	fbl_cont.144 
fbl_else.146 :
	addi	%r0 %r19 0
fbl_cont.144 :
	addi	%r0 %r20 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	sw	%r26 %r30 12
	sw	%r26 %r4 16
	bne	%r19 %r20 beq_else.257 
	slli	%r4 %r19 2
	add	%r1 %r19 %r31
	lw	%r31 %r19 0
	addi	%r0 %r20 l.674
	ilw.s	%r20 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r0 %r20 l.287
	ilw.s	%r20 %f1 0
	sw.s	%r6 %f1 0
	addi	%r0 %r20 0
	lw	%r10 %r21 0
	sw	%r26 %r17 20
	sw.s	%r26 %f0 24
	sw	%r26 %r13 32
	sw	%r26 %r9 36
	sw	%r26 %r10 40
	sw	%r26 %r18 44
	sw	%r26 %r8 48
	sw	%r26 %r7 52
	sw	%r26 %r15 56
	sw	%r26 %r12 60
	sw	%r26 %r14 64
	sw	%r26 %r19 68
	sw	%r26 %r11 72
	sw	%r26 %r16 76
	sw	%r26 %r6 80
	mov	%r19 %r3
	mov	%r21 %r2
	mov	%r20 %r1
	mov	%r5 %r30
	sw	%r26 %r28 84
	lw	%r30 %r29 0
	addi	%r26 %r26 88	
	jalr	%r29
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r1 80
	lw.s	%r1 %f0 0
	addi	%r0 %r1 l.223
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.147 
	addi	%r0 %r1 1
	j	fbl_cont.145 
fbl_else.147 :
	addi	%r0 %r1 0
fbl_cont.145 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.258 
	addi	%r0 %r1 0
	j	beq_cont.233 
beq_else.258 :
	addi	%r0 %r1 l.290
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.148 
	addi	%r0 %r1 1
	j	fbl_cont.146 
fbl_else.148 :
	addi	%r0 %r1 0
fbl_cont.146 :
beq_cont.233 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.259 
	j	beq_cont.234 
beq_else.259 :
	lw	%r26 %r1 76
	lw	%r1 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 72
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	lw	%r26 %r2 68
	lw	%r2 %r2 0
	lw	%r1 %r3 4
	addi	%r0 %r4 1
	bne	%r3 %r4 beq_else.260 
	lw	%r26 %r3 64
	lw	%r3 %r3 0
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f0 0
	lw	%r26 %r4 60
	sw.s	%r4 %f0 0
	sw.s	%r4 %f0 4
	sw.s	%r4 %f0 8
	addi	%r0 %r5 1
	sub	%r3 %r5 %r5
	addi	%r0 %r6 1
	sub	%r3 %r6 %r3
	slli	%r3 %r3 2
	add	%r2 %r3 %r31
	lw.s	%r31 %f0 0
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.37 
	addi	%r0 %r2 1
	j	fbeq_cont.37 
fbeq_else.37 :
	addi	%r0 %r2 0
fbeq_cont.37 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.261 
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.149 
	addi	%r0 %r2 1
	j	fbl_cont.147 
fbl_else.149 :
	addi	%r0 %r2 0
fbl_cont.147 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.262 
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f0 0
	j	beq_cont.237 
beq_else.262 :
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f0 0
beq_cont.237 :
	j	beq_cont.236 
beq_else.261 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
beq_cont.236 :
	neg.s	%f0 %f0
	slli	%r5 %r2 2
	add	%r4 %r2 %r31
	sw.s	%r31 %f0 0
	j	beq_cont.235 
beq_else.260 :
	addi	%r0 %r2 2
	bne	%r3 %r2 beq_else.263 
	lw	%r1 %r2 16
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	lw	%r26 %r2 60
	sw.s	%r2 %f0 0
	lw	%r1 %r3 16
	lw.s	%r3 %f0 4
	neg.s	%f0 %f0
	sw.s	%r2 %f0 4
	lw	%r1 %r3 16
	lw.s	%r3 %f0 8
	neg.s	%f0 %f0
	sw.s	%r2 %f0 8
	j	beq_cont.238 
beq_else.263 :
	lw	%r26 %r2 56
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
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.264 
	lw	%r26 %r3 60
	sw.s	%r3 %f3 0
	sw.s	%r3 %f4 4
	sw.s	%r3 %f5 8
	j	beq_cont.239 
beq_else.264 :
	lw	%r1 %r3 36
	lw.s	%r3 %f6 8
	mul.s	%f6 %f1 %f6
	lw	%r1 %r3 36
	lw.s	%r3 %f7 4
	mul.s	%f7 %f2 %f7
	add.s	%f7 %f6 %f6
	addi	%r0 %r3 l.159
	ilw.s	%r3 %f7 0
	div.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f3
	lw	%r26 %r3 60
	sw.s	%r3 %f3 0
	lw	%r1 %r4 36
	lw.s	%r4 %f3 8
	mul.s	%f3 %f0 %f3
	lw	%r1 %r4 36
	lw.s	%r4 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r4 l.159
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
	addi	%r0 %r4 l.159
	ilw.s	%r4 %f1 0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r3 %f0 8
beq_cont.239 :
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
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.38 
	addi	%r0 %r5 1
	j	fbeq_cont.38 
fbeq_else.38 :
	addi	%r0 %r5 0
fbeq_cont.38 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.265 
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.266 
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f0
	j	beq_cont.241 
beq_else.266 :
	addi	%r0 %r4 l.48
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f0
beq_cont.241 :
	j	beq_cont.240 
beq_else.265 :
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f0 0
beq_cont.240 :
	lw.s	%r3 %f1 0
	mul.s	%f0 %f1 %f1
	sw.s	%r3 %f1 0
	lw.s	%r3 %f1 4
	mul.s	%f0 %f1 %f1
	sw.s	%r3 %f1 4
	lw.s	%r3 %f1 8
	mul.s	%f0 %f1 %f0
	sw.s	%r3 %f0 8
beq_cont.238 :
beq_cont.235 :
	lw	%r1 %r2 0
	lw	%r1 %r3 32
	lw.s	%r3 %f0 0
	lw	%r26 %r3 52
	sw.s	%r3 %f0 0
	lw	%r1 %r4 32
	lw.s	%r4 %f0 4
	sw.s	%r3 %f0 4
	lw	%r1 %r4 32
	lw.s	%r4 %f0 8
	sw.s	%r3 %f0 8
	addi	%r0 %r4 1
	sw	%r26 %r1 84
	bne	%r2 %r4 beq_else.267 
	lw	%r26 %r2 56
	lw.s	%r2 %f0 0
	lw	%r1 %r4 20
	lw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r4 l.474
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r4 l.476
	ilw.s	%r4 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r4 l.463
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.150 
	addi	%r0 %r4 1
	j	fbl_cont.148 
fbl_else.150 :
	addi	%r0 %r4 0
fbl_cont.148 :
	lw.s	%r2 %f0 8
	lw	%r1 %r2 20
	lw.s	%r2 %f1 8
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.474
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r2 l.476
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.463
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.151 
	addi	%r0 %r2 1
	j	fbl_cont.149 
fbl_else.151 :
	addi	%r0 %r2 0
fbl_cont.149 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.268 
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.269 
	addi	%r0 %r2 l.459
	ilw.s	%r2 %f0 0
	j	beq_cont.244 
beq_else.269 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
beq_cont.244 :
	j	beq_cont.243 
beq_else.268 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.270 
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
	j	beq_cont.245 
beq_else.270 :
	addi	%r0 %r2 l.459
	ilw.s	%r2 %f0 0
beq_cont.245 :
beq_cont.243 :
	sw.s	%r3 %f0 4
	j	beq_cont.242 
beq_else.267 :
	addi	%r0 %r4 2
	bne	%r2 %r4 beq_else.271 
	lw	%r26 %r2 56
	lw.s	%r2 %f0 4
	addi	%r0 %r2 l.469
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r30 48
	sw	%r26 %r28 88
	lw	%r30 %r29 0
	addi	%r26 %r26 92	
	jalr	%r29
	addi	%r26 %r26 -92
	lw	%r26 %r28 88
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.459
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r1 52
	sw.s	%r1 %f1 0
	addi	%r0 %r2 l.459
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 4
	j	beq_cont.246 
beq_else.271 :
	addi	%r0 %r4 3
	bne	%r2 %r4 beq_else.272 
	lw	%r26 %r2 56
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
	addi	%r0 %r2 l.463
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.386
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r30 44
	sw	%r26 %r28 88
	lw	%r30 %r29 0
	addi	%r26 %r26 92	
	jalr	%r29
	addi	%r26 %r26 -92
	lw	%r26 %r28 88
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.459
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r1 52
	sw.s	%r1 %f1 4
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r2 l.459
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	j	beq_cont.247 
beq_else.272 :
	addi	%r0 %r4 4
	bne	%r2 %r4 beq_else.273 
	lw	%r26 %r2 56
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
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f3 0
	fbge	%f0 %f3 fbl_else.152 
	neg.s	%f0 %f3
	j	fbl_cont.150 
fbl_else.152 :
	mov.s	%f0 %f3
fbl_cont.150 :
	addi	%r0 %r4 l.311
	ilw.s	%r4 %f4 0
	fbge	%f3 %f4 fbl_else.153 
	addi	%r0 %r4 1
	j	fbl_cont.151 
fbl_else.153 :
	addi	%r0 %r4 0
fbl_cont.151 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.274 
	div.s	%f0 %f1 %f0
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.154 
	neg.s	%f0 %f0
	j	fbl_cont.152 
fbl_else.154 :
fbl_cont.152 :
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f1 0
	fbg	%f1 %f0 fble_else.18 
	addi	%r0 %r4 l.317
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.155 
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r4 l.325
	ilw.s	%r4 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r4 l.327
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.329
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.331
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.333
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.335
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.153 
fbl_else.155 :
	addi	%r0 %r4 l.319
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.156 
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f3 0
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.21
	ilw.s	%r4 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r4 l.325
	ilw.s	%r4 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r4 l.327
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.329
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.331
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.333
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.335
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.154 
fbl_else.156 :
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f0
	addi	%r0 %r4 l.48
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.323
	ilw.s	%r4 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r4 l.325
	ilw.s	%r4 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r4 l.327
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.329
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.331
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.333
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.335
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.154 :
fbl_cont.153 :
	j	fble_cont.2 
fble_else.18 :
	neg.s	%f0 %f0
	addi	%r0 %r4 l.317
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.157 
	addi	%r0 %r4 l.48
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r4 l.325
	ilw.s	%r4 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r4 l.327
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.329
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.331
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.333
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.335
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.155 
fbl_else.157 :
	addi	%r0 %r4 l.319
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.158 
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f3 0
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r4 l.48
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.21
	ilw.s	%r4 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r4 l.325
	ilw.s	%r4 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r4 l.327
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.329
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.331
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.333
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.335
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.156 
fbl_else.158 :
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f0
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.323
	ilw.s	%r4 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r4 l.325
	ilw.s	%r4 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r4 l.327
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.329
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.331
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.333
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.335
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.156 :
fbl_cont.155 :
fble_cont.2 :
	addi	%r0 %r4 l.384
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r4 l.386
	ilw.s	%r4 %f1 0
	div.s	%f1 %f0 %f0
	j	beq_cont.249 
beq_else.274 :
	addi	%r0 %r4 l.313
	ilw.s	%r4 %f0 0
beq_cont.249 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	lw.s	%r2 %f1 4
	lw	%r1 %r2 20
	lw.s	%r2 %f3 4
	sub.s	%f3 %f1 %f1
	lw	%r1 %r2 16
	lw.s	%r2 %f3 4
	sqrt.s	%f3 %f3
	mul.s	%f3 %f1 %f1
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.159 
	neg.s	%f2 %f3
	j	fbl_cont.157 
fbl_else.159 :
	mov.s	%f2 %f3
fbl_cont.157 :
	addi	%r0 %r2 l.311
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.160 
	addi	%r0 %r2 1
	j	fbl_cont.158 
fbl_else.160 :
	addi	%r0 %r2 0
fbl_cont.158 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.275 
	div.s	%f2 %f1 %f1
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.161 
	neg.s	%f1 %f1
	j	fbl_cont.159 
fbl_else.161 :
fbl_cont.159 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f2 0
	fbg	%f2 %f1 fble_else.19 
	addi	%r0 %r2 l.317
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.162 
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.160 
fbl_else.162 :
	addi	%r0 %r2 l.319
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.163 
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f3 0
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.21
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.161 
fbl_else.163 :
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.323
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
fbl_cont.161 :
fbl_cont.160 :
	j	fble_cont.3 
fble_else.19 :
	neg.s	%f1 %f1
	addi	%r0 %r2 l.317
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.164 
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.162 
fbl_else.164 :
	addi	%r0 %r2 l.319
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.165 
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f3 0
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.21
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.163 
fbl_else.165 :
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.323
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
fbl_cont.163 :
fbl_cont.162 :
fble_cont.3 :
	addi	%r0 %r2 l.384
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r2 l.386
	ilw.s	%r2 %f2 0
	div.s	%f2 %f1 %f1
	j	beq_cont.250 
beq_else.275 :
	addi	%r0 %r2 l.313
	ilw.s	%r2 %f1 0
beq_cont.250 :
	floor.w.s	%f1 %f2
	sub.s	%f2 %f1 %f1
	addi	%r0 %r2 l.453
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.28
	ilw.s	%r2 %f3 0
	sub.s	%f0 %f3 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f2 %f0
	addi	%r0 %r2 l.28
	ilw.s	%r2 %f2 0
	sub.s	%f1 %f2 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.166 
	addi	%r0 %r2 1
	j	fbl_cont.164 
fbl_else.166 :
	addi	%r0 %r2 0
fbl_cont.164 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.276 
	j	beq_cont.251 
beq_else.276 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
beq_cont.251 :
	addi	%r0 %r2 l.459
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r2 l.461
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	sw.s	%r3 %f0 8
	j	beq_cont.248 
beq_else.273 :
beq_cont.248 :
beq_cont.247 :
beq_cont.246 :
beq_cont.242 :
	addi	%r0 %r1 0
	lw	%r26 %r2 40
	lw	%r2 %r2 0
	lw	%r26 %r30 36
	sw	%r26 %r28 88
	lw	%r30 %r29 0
	addi	%r26 %r26 92	
	jalr	%r29
	addi	%r26 %r26 -92
	lw	%r26 %r28 88
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.277 
	lw	%r26 %r1 60
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
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.167 
	addi	%r0 %r1 1
	j	fbl_cont.165 
fbl_else.167 :
	addi	%r0 %r1 0
fbl_cont.165 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.278 
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f0 0
	j	beq_cont.253 
beq_else.278 :
beq_cont.253 :
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 84
	lw	%r1 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 20
	lw.s	%r1 %f1 0
	lw	%r26 %r2 52
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
	j	beq_cont.252 
beq_else.277 :
beq_cont.252 :
beq_cont.234 :
	j	beq_cont.232 
beq_else.257 :
	addi	%r4 %r19 1
	slli	%r19 %r19 2
	add	%r1 %r19 %r31
	lw	%r31 %r19 0
	addi	%r0 %r20 l.498
	ilw.s	%r20 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r0 %r20 l.287
	ilw.s	%r20 %f1 0
	sw.s	%r6 %f1 0
	addi	%r0 %r20 0
	lw	%r10 %r21 0
	sw	%r26 %r17 20
	sw.s	%r26 %f0 88
	sw	%r26 %r13 32
	sw	%r26 %r9 36
	sw	%r26 %r10 40
	sw	%r26 %r18 44
	sw	%r26 %r8 48
	sw	%r26 %r7 52
	sw	%r26 %r15 56
	sw	%r26 %r12 60
	sw	%r26 %r14 64
	sw	%r26 %r19 96
	sw	%r26 %r11 72
	sw	%r26 %r16 76
	sw	%r26 %r6 80
	mov	%r19 %r3
	mov	%r21 %r2
	mov	%r20 %r1
	mov	%r5 %r30
	sw	%r26 %r28 100
	lw	%r30 %r29 0
	addi	%r26 %r26 104	
	jalr	%r29
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw	%r26 %r1 80
	lw.s	%r1 %f0 0
	addi	%r0 %r1 l.223
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.168 
	addi	%r0 %r1 1
	j	fbl_cont.166 
fbl_else.168 :
	addi	%r0 %r1 0
fbl_cont.166 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.279 
	addi	%r0 %r1 0
	j	beq_cont.254 
beq_else.279 :
	addi	%r0 %r1 l.290
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.169 
	addi	%r0 %r1 1
	j	fbl_cont.167 
fbl_else.169 :
	addi	%r0 %r1 0
fbl_cont.167 :
beq_cont.254 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.280 
	j	beq_cont.255 
beq_else.280 :
	lw	%r26 %r1 76
	lw	%r1 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 72
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	lw	%r26 %r2 96
	lw	%r2 %r2 0
	lw	%r1 %r3 4
	addi	%r0 %r4 1
	bne	%r3 %r4 beq_else.281 
	lw	%r26 %r3 64
	lw	%r3 %r3 0
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f0 0
	lw	%r26 %r4 60
	sw.s	%r4 %f0 0
	sw.s	%r4 %f0 4
	sw.s	%r4 %f0 8
	addi	%r0 %r5 1
	sub	%r3 %r5 %r5
	addi	%r0 %r6 1
	sub	%r3 %r6 %r3
	slli	%r3 %r3 2
	add	%r2 %r3 %r31
	lw.s	%r31 %f0 0
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.39 
	addi	%r0 %r2 1
	j	fbeq_cont.39 
fbeq_else.39 :
	addi	%r0 %r2 0
fbeq_cont.39 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.282 
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.170 
	addi	%r0 %r2 1
	j	fbl_cont.168 
fbl_else.170 :
	addi	%r0 %r2 0
fbl_cont.168 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.283 
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f0 0
	j	beq_cont.258 
beq_else.283 :
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f0 0
beq_cont.258 :
	j	beq_cont.257 
beq_else.282 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
beq_cont.257 :
	neg.s	%f0 %f0
	slli	%r5 %r2 2
	add	%r4 %r2 %r31
	sw.s	%r31 %f0 0
	j	beq_cont.256 
beq_else.281 :
	addi	%r0 %r2 2
	bne	%r3 %r2 beq_else.284 
	lw	%r1 %r2 16
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	lw	%r26 %r2 60
	sw.s	%r2 %f0 0
	lw	%r1 %r3 16
	lw.s	%r3 %f0 4
	neg.s	%f0 %f0
	sw.s	%r2 %f0 4
	lw	%r1 %r3 16
	lw.s	%r3 %f0 8
	neg.s	%f0 %f0
	sw.s	%r2 %f0 8
	j	beq_cont.259 
beq_else.284 :
	lw	%r26 %r2 56
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
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.285 
	lw	%r26 %r3 60
	sw.s	%r3 %f3 0
	sw.s	%r3 %f4 4
	sw.s	%r3 %f5 8
	j	beq_cont.260 
beq_else.285 :
	lw	%r1 %r3 36
	lw.s	%r3 %f6 8
	mul.s	%f6 %f1 %f6
	lw	%r1 %r3 36
	lw.s	%r3 %f7 4
	mul.s	%f7 %f2 %f7
	add.s	%f7 %f6 %f6
	addi	%r0 %r3 l.159
	ilw.s	%r3 %f7 0
	div.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f3
	lw	%r26 %r3 60
	sw.s	%r3 %f3 0
	lw	%r1 %r4 36
	lw.s	%r4 %f3 8
	mul.s	%f3 %f0 %f3
	lw	%r1 %r4 36
	lw.s	%r4 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r4 l.159
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
	addi	%r0 %r4 l.159
	ilw.s	%r4 %f1 0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r3 %f0 8
beq_cont.260 :
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
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.40 
	addi	%r0 %r5 1
	j	fbeq_cont.40 
fbeq_else.40 :
	addi	%r0 %r5 0
fbeq_cont.40 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.286 
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.287 
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f0
	j	beq_cont.262 
beq_else.287 :
	addi	%r0 %r4 l.48
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f0
beq_cont.262 :
	j	beq_cont.261 
beq_else.286 :
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f0 0
beq_cont.261 :
	lw.s	%r3 %f1 0
	mul.s	%f0 %f1 %f1
	sw.s	%r3 %f1 0
	lw.s	%r3 %f1 4
	mul.s	%f0 %f1 %f1
	sw.s	%r3 %f1 4
	lw.s	%r3 %f1 8
	mul.s	%f0 %f1 %f0
	sw.s	%r3 %f0 8
beq_cont.259 :
beq_cont.256 :
	lw	%r1 %r2 0
	lw	%r1 %r3 32
	lw.s	%r3 %f0 0
	lw	%r26 %r3 52
	sw.s	%r3 %f0 0
	lw	%r1 %r4 32
	lw.s	%r4 %f0 4
	sw.s	%r3 %f0 4
	lw	%r1 %r4 32
	lw.s	%r4 %f0 8
	sw.s	%r3 %f0 8
	addi	%r0 %r4 1
	sw	%r26 %r1 100
	bne	%r2 %r4 beq_else.288 
	lw	%r26 %r2 56
	lw.s	%r2 %f0 0
	lw	%r1 %r4 20
	lw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r4 l.474
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r4 l.476
	ilw.s	%r4 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r4 l.463
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.171 
	addi	%r0 %r4 1
	j	fbl_cont.169 
fbl_else.171 :
	addi	%r0 %r4 0
fbl_cont.169 :
	lw.s	%r2 %f0 8
	lw	%r1 %r2 20
	lw.s	%r2 %f1 8
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.474
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r2 l.476
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.463
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.172 
	addi	%r0 %r2 1
	j	fbl_cont.170 
fbl_else.172 :
	addi	%r0 %r2 0
fbl_cont.170 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.289 
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.290 
	addi	%r0 %r2 l.459
	ilw.s	%r2 %f0 0
	j	beq_cont.265 
beq_else.290 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
beq_cont.265 :
	j	beq_cont.264 
beq_else.289 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.291 
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
	j	beq_cont.266 
beq_else.291 :
	addi	%r0 %r2 l.459
	ilw.s	%r2 %f0 0
beq_cont.266 :
beq_cont.264 :
	sw.s	%r3 %f0 4
	j	beq_cont.263 
beq_else.288 :
	addi	%r0 %r4 2
	bne	%r2 %r4 beq_else.292 
	lw	%r26 %r2 56
	lw.s	%r2 %f0 4
	addi	%r0 %r2 l.469
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r30 48
	sw	%r26 %r28 104
	lw	%r30 %r29 0
	addi	%r26 %r26 108	
	jalr	%r29
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.459
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r1 52
	sw.s	%r1 %f1 0
	addi	%r0 %r2 l.459
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 4
	j	beq_cont.267 
beq_else.292 :
	addi	%r0 %r4 3
	bne	%r2 %r4 beq_else.293 
	lw	%r26 %r2 56
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
	addi	%r0 %r2 l.463
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.386
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r30 44
	sw	%r26 %r28 104
	lw	%r30 %r29 0
	addi	%r26 %r26 108	
	jalr	%r29
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.459
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r1 52
	sw.s	%r1 %f1 4
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r2 l.459
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	j	beq_cont.268 
beq_else.293 :
	addi	%r0 %r4 4
	bne	%r2 %r4 beq_else.294 
	lw	%r26 %r2 56
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
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f3 0
	fbge	%f0 %f3 fbl_else.173 
	neg.s	%f0 %f3
	j	fbl_cont.171 
fbl_else.173 :
	mov.s	%f0 %f3
fbl_cont.171 :
	addi	%r0 %r4 l.311
	ilw.s	%r4 %f4 0
	fbge	%f3 %f4 fbl_else.174 
	addi	%r0 %r4 1
	j	fbl_cont.172 
fbl_else.174 :
	addi	%r0 %r4 0
fbl_cont.172 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.295 
	div.s	%f0 %f1 %f0
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.175 
	neg.s	%f0 %f0
	j	fbl_cont.173 
fbl_else.175 :
fbl_cont.173 :
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f1 0
	fbg	%f1 %f0 fble_else.20 
	addi	%r0 %r4 l.317
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.176 
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r4 l.325
	ilw.s	%r4 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r4 l.327
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.329
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.331
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.333
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.335
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.174 
fbl_else.176 :
	addi	%r0 %r4 l.319
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.177 
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f3 0
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.21
	ilw.s	%r4 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r4 l.325
	ilw.s	%r4 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r4 l.327
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.329
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.331
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.333
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.335
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.175 
fbl_else.177 :
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f0
	addi	%r0 %r4 l.48
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.323
	ilw.s	%r4 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r4 l.325
	ilw.s	%r4 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r4 l.327
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.329
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.331
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.333
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.335
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.175 :
fbl_cont.174 :
	j	fble_cont.4 
fble_else.20 :
	neg.s	%f0 %f0
	addi	%r0 %r4 l.317
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.178 
	addi	%r0 %r4 l.48
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r4 l.325
	ilw.s	%r4 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r4 l.327
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.329
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.331
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.333
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.335
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.176 
fbl_else.178 :
	addi	%r0 %r4 l.319
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.179 
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f3 0
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r4 l.48
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.21
	ilw.s	%r4 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r4 l.325
	ilw.s	%r4 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r4 l.327
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.329
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.331
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.333
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.335
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.177 
fbl_else.179 :
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f0
	addi	%r0 %r4 l.17
	ilw.s	%r4 %f1 0
	addi	%r0 %r4 l.323
	ilw.s	%r4 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r4 l.325
	ilw.s	%r4 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r4 l.327
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.329
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.331
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.333
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r4 l.335
	ilw.s	%r4 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.177 :
fbl_cont.176 :
fble_cont.4 :
	addi	%r0 %r4 l.384
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r4 l.386
	ilw.s	%r4 %f1 0
	div.s	%f1 %f0 %f0
	j	beq_cont.270 
beq_else.295 :
	addi	%r0 %r4 l.313
	ilw.s	%r4 %f0 0
beq_cont.270 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	lw.s	%r2 %f1 4
	lw	%r1 %r2 20
	lw.s	%r2 %f3 4
	sub.s	%f3 %f1 %f1
	lw	%r1 %r2 16
	lw.s	%r2 %f3 4
	sqrt.s	%f3 %f3
	mul.s	%f3 %f1 %f1
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.180 
	neg.s	%f2 %f3
	j	fbl_cont.178 
fbl_else.180 :
	mov.s	%f2 %f3
fbl_cont.178 :
	addi	%r0 %r2 l.311
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.181 
	addi	%r0 %r2 1
	j	fbl_cont.179 
fbl_else.181 :
	addi	%r0 %r2 0
fbl_cont.179 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.296 
	div.s	%f2 %f1 %f1
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.182 
	neg.s	%f1 %f1
	j	fbl_cont.180 
fbl_else.182 :
fbl_cont.180 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f2 0
	fbg	%f2 %f1 fble_else.21 
	addi	%r0 %r2 l.317
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.183 
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.181 
fbl_else.183 :
	addi	%r0 %r2 l.319
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.184 
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f3 0
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.21
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.182 
fbl_else.184 :
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.323
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
fbl_cont.182 :
fbl_cont.181 :
	j	fble_cont.5 
fble_else.21 :
	neg.s	%f1 %f1
	addi	%r0 %r2 l.317
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.185 
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.183 
fbl_else.185 :
	addi	%r0 %r2 l.319
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.186 
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f3 0
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.21
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.184 
fbl_else.186 :
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.323
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
fbl_cont.184 :
fbl_cont.183 :
fble_cont.5 :
	addi	%r0 %r2 l.384
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r2 l.386
	ilw.s	%r2 %f2 0
	div.s	%f2 %f1 %f1
	j	beq_cont.271 
beq_else.296 :
	addi	%r0 %r2 l.313
	ilw.s	%r2 %f1 0
beq_cont.271 :
	floor.w.s	%f1 %f2
	sub.s	%f2 %f1 %f1
	addi	%r0 %r2 l.453
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.28
	ilw.s	%r2 %f3 0
	sub.s	%f0 %f3 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f2 %f0
	addi	%r0 %r2 l.28
	ilw.s	%r2 %f2 0
	sub.s	%f1 %f2 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.187 
	addi	%r0 %r2 1
	j	fbl_cont.185 
fbl_else.187 :
	addi	%r0 %r2 0
fbl_cont.185 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.297 
	j	beq_cont.272 
beq_else.297 :
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f0 0
beq_cont.272 :
	addi	%r0 %r2 l.459
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r2 l.461
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	sw.s	%r3 %f0 8
	j	beq_cont.269 
beq_else.294 :
beq_cont.269 :
beq_cont.268 :
beq_cont.267 :
beq_cont.263 :
	addi	%r0 %r1 0
	lw	%r26 %r2 40
	lw	%r2 %r2 0
	lw	%r26 %r30 36
	sw	%r26 %r28 104
	lw	%r30 %r29 0
	addi	%r26 %r26 108	
	jalr	%r29
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.298 
	lw	%r26 %r1 60
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
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.188 
	addi	%r0 %r1 1
	j	fbl_cont.186 
fbl_else.188 :
	addi	%r0 %r1 0
fbl_cont.186 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.299 
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f0 0
	j	beq_cont.274 
beq_else.299 :
beq_cont.274 :
	lw.s	%r26 %f1 88
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 100
	lw	%r1 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 20
	lw.s	%r1 %f1 0
	lw	%r26 %r2 52
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
	j	beq_cont.273 
beq_else.298 :
beq_cont.273 :
beq_cont.255 :
beq_cont.232 :
	addi	%r0 %r1 2
	lw	%r26 %r2 16
	sub	%r2 %r1 %r4
	lw	%r26 %r1 8
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r30 12
	lw	%r30 %r29 0
	jr	%r29
ble_else.5 :
	retl
do_without_neighbors.0 :
	lw	%r30 %r3 28
	lw	%r30 %r4 24
	lw	%r30 %r5 20
	lw	%r30 %r6 16
	lw	%r30 %r7 12
	lw	%r30 %r8 8
	lw	%r30 %r9 4
	addi	%r0 %r10 4
	bg	%r2 %r10 ble_else.6 
	lw	%r1 %r10 8
	addi	%r0 %r11 0
	slli	%r2 %r12 2
	add	%r10 %r12 %r31
	lw	%r31 %r10 0
	bg	%r11 %r10 ble_else.7 
	lw	%r1 %r10 12
	slli	%r2 %r11 2
	add	%r10 %r11 %r31
	lw	%r31 %r10 0
	addi	%r0 %r11 0
	sw	%r26 %r1 0
	sw	%r26 %r30 4
	sw	%r26 %r2 8
	bne	%r10 %r11 beq_else.300 
	j	beq_cont.275 
beq_else.300 :
	lw	%r1 %r10 20
	lw	%r1 %r11 28
	lw	%r1 %r12 4
	lw	%r1 %r13 16
	slli	%r2 %r14 2
	add	%r10 %r14 %r31
	lw	%r31 %r10 0
	lw.s	%r10 %f0 0
	sw.s	%r9 %f0 0
	lw.s	%r10 %f0 4
	sw.s	%r9 %f0 4
	lw.s	%r10 %f0 8
	sw.s	%r9 %f0 8
	lw	%r1 %r10 24
	lw	%r10 %r10 0
	slli	%r2 %r14 2
	add	%r11 %r14 %r31
	lw	%r31 %r11 0
	slli	%r2 %r14 2
	add	%r12 %r14 %r31
	lw	%r31 %r12 0
	addi	%r0 %r14 0
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
	beq	%r10 %r14 bne_else.13 
	lw	%r8 %r14 0
	lw.s	%r12 %f0 0
	sw.s	%r3 %f0 0
	lw.s	%r12 %f0 4
	sw.s	%r3 %f0 4
	lw.s	%r12 %f0 8
	sw.s	%r3 %f0 8
	lw	%r6 %r15 0
	addi	%r0 %r16 1
	sub	%r15 %r16 %r15
	sw	%r26 %r14 56
	mov	%r15 %r2
	mov	%r12 %r1
	mov	%r4 %r30
	sw	%r26 %r28 60
	lw	%r30 %r29 0
	addi	%r26 %r26 64	
	jalr	%r29
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r4 118
	lw	%r26 %r1 56
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r30 28
	sw	%r26 %r28 60
	lw	%r30 %r29 0
	addi	%r26 %r26 64	
	jalr	%r29
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	j	bne_cont.8 
bne_else.13 :
bne_cont.8 :
	addi	%r0 %r1 1
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.14 
	lw	%r26 %r1 48
	lw	%r1 %r3 4
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
	addi	%r0 %r8 1
	sub	%r7 %r8 %r7
	lw	%r26 %r30 32
	sw	%r26 %r3 60
	mov	%r7 %r2
	mov	%r4 %r1
	sw	%r26 %r28 64
	lw	%r30 %r29 0
	addi	%r26 %r26 68	
	jalr	%r29
	addi	%r26 %r26 -68
	lw	%r26 %r28 64
	addi	%r0 %r4 118
	lw	%r26 %r1 60
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r30 28
	sw	%r26 %r28 64
	lw	%r30 %r29 0
	addi	%r26 %r26 68	
	jalr	%r29
	addi	%r26 %r26 -68
	lw	%r26 %r28 64
	j	bne_cont.9 
bne_else.14 :
bne_cont.9 :
	addi	%r0 %r1 2
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.15 
	lw	%r26 %r1 48
	lw	%r1 %r3 8
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
	addi	%r0 %r8 1
	sub	%r7 %r8 %r7
	lw	%r26 %r30 32
	sw	%r26 %r3 64
	mov	%r7 %r2
	mov	%r4 %r1
	sw	%r26 %r28 68
	lw	%r30 %r29 0
	addi	%r26 %r26 72	
	jalr	%r29
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r4 118
	lw	%r26 %r1 64
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r30 28
	sw	%r26 %r28 68
	lw	%r30 %r29 0
	addi	%r26 %r26 72	
	jalr	%r29
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	j	bne_cont.10 
bne_else.15 :
bne_cont.10 :
	addi	%r0 %r1 3
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.16 
	lw	%r26 %r1 48
	lw	%r1 %r3 12
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
	addi	%r0 %r8 1
	sub	%r7 %r8 %r7
	lw	%r26 %r30 32
	sw	%r26 %r3 68
	mov	%r7 %r2
	mov	%r4 %r1
	sw	%r26 %r28 72
	lw	%r30 %r29 0
	addi	%r26 %r26 76	
	jalr	%r29
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	addi	%r0 %r4 118
	lw	%r26 %r1 68
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r30 28
	sw	%r26 %r28 72
	lw	%r30 %r29 0
	addi	%r26 %r26 76	
	jalr	%r29
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	j	bne_cont.11 
bne_else.16 :
bne_cont.11 :
	addi	%r0 %r1 4
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.17 
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
	addi	%r0 %r4 1
	sub	%r3 %r4 %r3
	lw	%r26 %r30 32
	sw	%r26 %r1 72
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 76
	lw	%r30 %r29 0
	addi	%r26 %r26 80	
	jalr	%r29
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r4 118
	lw	%r26 %r1 72
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r30 28
	sw	%r26 %r28 76
	lw	%r30 %r29 0
	addi	%r26 %r26 80	
	jalr	%r29
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	j	bne_cont.12 
bne_else.17 :
bne_cont.12 :
	lw	%r26 %r1 8
	slli	%r1 %r2 2
	lw	%r26 %r3 20
	add	%r3 %r2 %r31
	lw	%r31 %r2 0
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
beq_cont.275 :
	lw	%r26 %r1 8
	addi	%r1 %r2 1
	lw	%r26 %r1 0
	lw	%r26 %r30 4
	lw	%r30 %r29 0
	jr	%r29
ble_else.7 :
	retl
ble_else.6 :
	retl
try_exploit_neighbors.0 :
	lw	%r30 %r7 12
	lw	%r30 %r8 8
	lw	%r30 %r9 4
	slli	%r1 %r10 2
	add	%r4 %r10 %r31
	lw	%r31 %r10 0
	addi	%r0 %r11 4
	bg	%r6 %r11 ble_else.8 
	addi	%r0 %r11 0
	lw	%r10 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r31
	lw	%r31 %r12 0
	bg	%r11 %r12 ble_else.9 
	slli	%r1 %r11 2
	add	%r4 %r11 %r31
	lw	%r31 %r11 0
	lw	%r11 %r11 8
	slli	%r6 %r12 2
	add	%r11 %r12 %r31
	lw	%r31 %r11 0
	slli	%r1 %r12 2
	add	%r3 %r12 %r31
	lw	%r31 %r12 0
	lw	%r12 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r31
	lw	%r31 %r12 0
	bne	%r12 %r11 beq_else.301 
	slli	%r1 %r12 2
	add	%r5 %r12 %r31
	lw	%r31 %r12 0
	lw	%r12 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r31
	lw	%r31 %r12 0
	bne	%r12 %r11 beq_else.302 
	addi	%r0 %r12 1
	sub	%r1 %r12 %r12
	slli	%r12 %r12 2
	add	%r4 %r12 %r31
	lw	%r31 %r12 0
	lw	%r12 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r31
	lw	%r31 %r12 0
	bne	%r12 %r11 beq_else.303 
	addi	%r1 %r12 1
	slli	%r12 %r12 2
	add	%r4 %r12 %r31
	lw	%r31 %r12 0
	lw	%r12 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r31
	lw	%r31 %r12 0
	bne	%r12 %r11 beq_else.304 
	addi	%r0 %r11 1
	j	beq_cont.279 
beq_else.304 :
	addi	%r0 %r11 0
beq_cont.279 :
	j	beq_cont.278 
beq_else.303 :
	addi	%r0 %r11 0
beq_cont.278 :
	j	beq_cont.277 
beq_else.302 :
	addi	%r0 %r11 0
beq_cont.277 :
	j	beq_cont.276 
beq_else.301 :
	addi	%r0 %r11 0
beq_cont.276 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.305 
	slli	%r1 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r1 0
	mov	%r6 %r2
	mov	%r8 %r30
	lw	%r30 %r29 0
	jr	%r29
beq_else.305 :
	lw	%r10 %r8 12
	slli	%r6 %r10 2
	add	%r8 %r10 %r31
	lw	%r31 %r8 0
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.306 
	j	beq_cont.280 
beq_else.306 :
	slli	%r1 %r8 2
	add	%r3 %r8 %r31
	lw	%r31 %r8 0
	lw	%r8 %r8 20
	addi	%r0 %r10 1
	sub	%r1 %r10 %r10
	slli	%r10 %r10 2
	add	%r4 %r10 %r31
	lw	%r31 %r10 0
	lw	%r10 %r10 20
	slli	%r1 %r11 2
	add	%r4 %r11 %r31
	lw	%r31 %r11 0
	lw	%r11 %r11 20
	addi	%r1 %r12 1
	slli	%r12 %r12 2
	add	%r4 %r12 %r31
	lw	%r31 %r12 0
	lw	%r12 %r12 20
	slli	%r1 %r13 2
	add	%r5 %r13 %r31
	lw	%r31 %r13 0
	lw	%r13 %r13 20
	slli	%r6 %r14 2
	add	%r8 %r14 %r31
	lw	%r31 %r8 0
	lw.s	%r8 %f0 0
	sw.s	%r9 %f0 0
	lw.s	%r8 %f0 4
	sw.s	%r9 %f0 4
	lw.s	%r8 %f0 8
	sw.s	%r9 %f0 8
	slli	%r6 %r8 2
	add	%r10 %r8 %r31
	lw	%r31 %r8 0
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
	slli	%r6 %r8 2
	add	%r11 %r8 %r31
	lw	%r31 %r8 0
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
	slli	%r6 %r8 2
	add	%r12 %r8 %r31
	lw	%r31 %r8 0
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
	slli	%r6 %r8 2
	add	%r13 %r8 %r31
	lw	%r31 %r8 0
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
	slli	%r1 %r8 2
	add	%r4 %r8 %r31
	lw	%r31 %r8 0
	lw	%r8 %r8 16
	slli	%r6 %r10 2
	add	%r8 %r10 %r31
	lw	%r31 %r8 0
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
beq_cont.280 :
	addi	%r6 %r6 1
	lw	%r30 %r29 0
	jr	%r29
ble_else.9 :
	retl
ble_else.8 :
	retl
pretrace_diffuse_rays.0 :
	lw	%r30 %r3 24
	lw	%r30 %r4 20
	lw	%r30 %r5 16
	lw	%r30 %r6 12
	lw	%r30 %r7 8
	lw	%r30 %r8 4
	addi	%r0 %r9 4
	bg	%r2 %r9 ble_else.10 
	lw	%r1 %r9 8
	slli	%r2 %r10 2
	add	%r9 %r10 %r31
	lw	%r31 %r9 0
	addi	%r0 %r10 0
	bg	%r10 %r9 ble_else.11 
	lw	%r1 %r9 12
	slli	%r2 %r10 2
	add	%r9 %r10 %r31
	lw	%r31 %r9 0
	addi	%r0 %r10 0
	sw	%r26 %r30 0
	sw	%r26 %r2 4
	bne	%r9 %r10 beq_else.307 
	j	beq_cont.281 
beq_else.307 :
	lw	%r1 %r9 24
	lw	%r9 %r9 0
	addi	%r0 %r10 l.15
	ilw.s	%r10 %f0 0
	sw.s	%r8 %f0 0
	sw.s	%r8 %f0 4
	sw.s	%r8 %f0 8
	lw	%r1 %r10 28
	lw	%r1 %r11 4
	slli	%r9 %r9 2
	add	%r7 %r9 %r31
	lw	%r31 %r7 0
	slli	%r2 %r9 2
	add	%r10 %r9 %r31
	lw	%r31 %r9 0
	slli	%r2 %r10 2
	add	%r11 %r10 %r31
	lw	%r31 %r10 0
	lw.s	%r10 %f0 0
	sw.s	%r3 %f0 0
	lw.s	%r10 %f0 4
	sw.s	%r3 %f0 4
	lw.s	%r10 %f0 8
	sw.s	%r3 %f0 8
	lw	%r5 %r3 0
	addi	%r0 %r5 1
	sub	%r3 %r5 %r3
	sw	%r26 %r8 8
	sw	%r26 %r1 12
	sw	%r26 %r10 16
	sw	%r26 %r9 20
	sw	%r26 %r7 24
	sw	%r26 %r6 28
	mov	%r3 %r2
	mov	%r10 %r1
	mov	%r4 %r30
	sw	%r26 %r28 32
	lw	%r30 %r29 0
	addi	%r26 %r26 36	
	jalr	%r29
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	addi	%r0 %r4 118
	lw	%r26 %r1 24
	lw	%r26 %r2 20
	lw	%r26 %r3 16
	lw	%r26 %r30 28
	sw	%r26 %r28 32
	lw	%r30 %r29 0
	addi	%r26 %r26 36	
	jalr	%r29
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r1 12
	lw	%r1 %r2 20
	lw	%r26 %r3 4
	slli	%r3 %r4 2
	add	%r2 %r4 %r31
	lw	%r31 %r2 0
	lw	%r26 %r4 8
	lw.s	%r4 %f0 0
	sw.s	%r2 %f0 0
	lw.s	%r4 %f0 4
	sw.s	%r2 %f0 4
	lw.s	%r4 %f0 8
	sw.s	%r2 %f0 8
beq_cont.281 :
	lw	%r26 %r2 4
	addi	%r2 %r2 1
	lw	%r26 %r30 0
	lw	%r30 %r29 0
	jr	%r29
ble_else.11 :
	retl
ble_else.10 :
	retl
pretrace_pixels.0 :
	lw	%r30 %r4 36
	lw	%r30 %r5 32
	lw	%r30 %r6 28
	lw	%r30 %r7 24
	lw	%r30 %r8 20
	lw	%r30 %r9 16
	lw	%r30 %r10 12
	lw	%r30 %r11 8
	lw	%r30 %r12 4
	addi	%r0 %r13 0
	bg	%r13 %r2 ble_else.12 
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
	addi	%r0 %r7 l.15
	ilw.s	%r7 %f4 0
	fbne	%f3 %f4 fbeq_else.41 
	addi	%r0 %r7 1
	j	fbeq_cont.41 
fbeq_else.41 :
	addi	%r0 %r7 0
fbeq_cont.41 :
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.308 
	addi	%r0 %r7 l.17
	ilw.s	%r7 %f4 0
	div.s	%f3 %f4 %f3
	j	beq_cont.282 
beq_else.308 :
	addi	%r0 %r7 l.17
	ilw.s	%r7 %f3 0
beq_cont.282 :
	lw.s	%r10 %f4 0
	mul.s	%f3 %f4 %f4
	sw.s	%r10 %f4 0
	lw.s	%r10 %f4 4
	mul.s	%f3 %f4 %f4
	sw.s	%r10 %f4 4
	lw.s	%r10 %f4 8
	mul.s	%f3 %f4 %f3
	sw.s	%r10 %f3 8
	addi	%r0 %r7 l.15
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
	addi	%r0 %r6 l.17
	ilw.s	%r6 %f3 0
	slli	%r2 %r6 2
	add	%r1 %r6 %r31
	lw	%r31 %r6 0
	addi	%r0 %r7 l.15
	ilw.s	%r7 %f4 0
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw.s	%r26 %f0 16
	sw	%r26 %r30 24
	sw	%r26 %r11 28
	sw	%r26 %r3 32
	sw	%r26 %r9 36
	sw	%r26 %r1 40
	sw	%r26 %r2 44
	mov	%r6 %r3
	mov	%r10 %r2
	mov	%r4 %r1
	mov	%r5 %r30
	mov.s	%f4 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 48
	lw	%r30 %r29 0
	addi	%r26 %r26 52	
	jalr	%r29
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	lw	%r26 %r1 44
	slli	%r1 %r2 2
	lw	%r26 %r3 40
	add	%r3 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 0
	lw	%r26 %r4 36
	lw.s	%r4 %f0 0
	sw.s	%r2 %f0 0
	lw.s	%r4 %f0 4
	sw.s	%r2 %f0 4
	lw.s	%r4 %f0 8
	sw.s	%r2 %f0 8
	slli	%r1 %r2 2
	add	%r3 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 24
	lw	%r26 %r4 32
	sw	%r2 %r4 0
	slli	%r1 %r2 2
	add	%r3 %r2 %r31
	lw	%r31 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r30 28
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 48
	lw	%r30 %r29 0
	addi	%r26 %r26 52	
	jalr	%r29
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	addi	%r0 %r1 1
	lw	%r26 %r2 44
	sub	%r2 %r1 %r2
	lw	%r26 %r1 32
	addi	%r1 %r1 1
	addi	%r0 %r3 5
	bg	%r3 %r1 ble_else.13 
	addi	%r0 %r3 5
	sub	%r1 %r3 %r3
	j	ble_cont.1 
ble_else.13 :
	mov	%r1 %r3
ble_cont.1 :
	lw.s	%r26 %f0 16
	lw.s	%r26 %f1 8
	lw.s	%r26 %f2 0
	lw	%r26 %r1 40
	lw	%r26 %r30 24
	lw	%r30 %r29 0
	jr	%r29
ble_else.12 :
	retl
scan_pixel.0 :
	lw	%r30 %r6 16
	lw	%r30 %r7 12
	lw	%r30 %r8 8
	lw	%r30 %r9 4
	lw	%r8 %r10 0
	bge	%r1 %r10 bl_else.7 
	slli	%r1 %r10 2
	add	%r4 %r10 %r31
	lw	%r31 %r10 0
	lw	%r10 %r10 0
	lw.s	%r10 %f0 0
	sw.s	%r7 %f0 0
	lw.s	%r10 %f0 4
	sw.s	%r7 %f0 4
	lw.s	%r10 %f0 8
	sw.s	%r7 %f0 8
	addi	%r2 %r10 1
	lw	%r8 %r11 4
	bge	%r10 %r11 bl_else.8 
	addi	%r0 %r10 0
	bge	%r10 %r2 bl_else.9 
	addi	%r1 %r10 1
	lw	%r8 %r8 0
	bge	%r10 %r8 bl_else.10 
	addi	%r0 %r8 0
	bge	%r8 %r1 bl_else.11 
	addi	%r0 %r8 1
	j	bl_cont.9 
bl_else.11 :
	addi	%r0 %r8 0
bl_cont.9 :
	j	bl_cont.8 
bl_else.10 :
	addi	%r0 %r8 0
bl_cont.8 :
	j	bl_cont.7 
bl_else.9 :
	addi	%r0 %r8 0
bl_cont.7 :
	j	bl_cont.6 
bl_else.8 :
	addi	%r0 %r8 0
bl_cont.6 :
	addi	%r0 %r10 0
	sw	%r26 %r5 0
	sw	%r26 %r4 4
	sw	%r26 %r3 8
	sw	%r26 %r2 12
	sw	%r26 %r30 16
	sw	%r26 %r1 20
	sw	%r26 %r7 24
	bne	%r8 %r10 beq_else.309 
	slli	%r1 %r6 2
	add	%r4 %r6 %r31
	lw	%r31 %r6 0
	addi	%r0 %r8 0
	mov	%r8 %r2
	mov	%r6 %r1
	mov	%r9 %r30
	sw	%r26 %r28 28
	lw	%r30 %r29 0
	addi	%r26 %r26 32	
	jalr	%r29
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	j	beq_cont.283 
beq_else.309 :
	addi	%r0 %r8 0
	mov	%r6 %r30
	mov	%r8 %r6
	sw	%r26 %r28 28
	lw	%r30 %r29 0
	addi	%r26 %r26 32	
	jalr	%r29
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
beq_cont.283 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 0
	mfc1	%r2 %f0
	addi	%r0 %r3 255
	bge	%r3 %r2 bl_else.12 
	addi	%r0 %r2 255
	j	bl_cont.10 
bl_else.12 :
	addi	%r0 %r3 0
	bge	%r2 %r3 bl_else.13 
	addi	%r0 %r2 0
	j	bl_cont.11 
bl_else.13 :
bl_cont.11 :
bl_cont.10 :
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
	addi	%r0 %r5 0
	bge	%r5 %r3 bl_else.14 
	addi	%r3 %r3 48
	out	%r3
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bl_cont.12 
bl_else.14 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.15 
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bl_cont.13 
bl_else.15 :
	addi	%r2 %r2 48
	out	%r2
bl_cont.13 :
bl_cont.12 :
	addi	%r0 %r2 32
	out	%r2
	lw.s	%r1 %f0 4
	mfc1	%r2 %f0
	addi	%r0 %r3 255
	bge	%r3 %r2 bl_else.16 
	addi	%r0 %r2 255
	j	bl_cont.14 
bl_else.16 :
	addi	%r0 %r3 0
	bge	%r2 %r3 bl_else.17 
	addi	%r0 %r2 0
	j	bl_cont.15 
bl_else.17 :
bl_cont.15 :
bl_cont.14 :
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
	addi	%r0 %r5 0
	bge	%r5 %r3 bl_else.18 
	addi	%r3 %r3 48
	out	%r3
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bl_cont.16 
bl_else.18 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.19 
	addi	%r4 %r3 48
	out	%r3
	addi	%r2 %r2 48
	out	%r2
	j	bl_cont.17 
bl_else.19 :
	addi	%r2 %r2 48
	out	%r2
bl_cont.17 :
bl_cont.16 :
	addi	%r0 %r2 32
	out	%r2
	lw.s	%r1 %f0 8
	mfc1	%r1 %f0
	addi	%r0 %r2 255
	bge	%r2 %r1 bl_else.20 
	addi	%r0 %r1 255
	j	bl_cont.18 
bl_else.20 :
	addi	%r0 %r2 0
	bge	%r1 %r2 bl_else.21 
	addi	%r0 %r1 0
	j	bl_cont.19 
bl_else.21 :
bl_cont.19 :
bl_cont.18 :
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
	addi	%r0 %r4 0
	bge	%r4 %r2 bl_else.22 
	addi	%r2 %r2 48
	out	%r2
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bl_cont.20 
bl_else.22 :
	addi	%r0 %r2 0
	bge	%r2 %r3 bl_else.23 
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bl_cont.21 
bl_else.23 :
	addi	%r1 %r1 48
	out	%r1
bl_cont.21 :
bl_cont.20 :
	addi	%r0 %r1 10
	out	%r1
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r4 4
	lw	%r26 %r5 0
	lw	%r26 %r30 16
	lw	%r30 %r29 0
	jr	%r29
bl_else.7 :
	retl
scan_line.0 :
	lw	%r30 %r6 28
	lw	%r30 %r7 24
	lw	%r30 %r8 20
	lw	%r30 %r9 16
	lw	%r30 %r10 12
	lw	%r30 %r11 8
	lw	%r30 %r12 4
	lw	%r11 %r13 4
	bge	%r1 %r13 bl_else.24 
	lw	%r11 %r13 4
	addi	%r0 %r14 1
	sub	%r13 %r14 %r13
	sw	%r26 %r30 0
	sw	%r26 %r5 4
	sw	%r26 %r4 8
	sw	%r26 %r3 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r8 24
	bge	%r1 %r13 bl_else.25 
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
	addi	%r0 %r7 1
	sub	%r6 %r7 %r6
	mov	%r5 %r3
	mov	%r6 %r2
	mov	%r4 %r1
	mov	%r10 %r30
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 28
	lw	%r30 %r29 0
	addi	%r26 %r26 32	
	jalr	%r29
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	j	bl_cont.22 
bl_else.25 :
bl_cont.22 :
	addi	%r0 %r1 0
	lw	%r26 %r2 20
	lw	%r26 %r3 16
	lw	%r26 %r4 12
	lw	%r26 %r5 8
	lw	%r26 %r30 24
	sw	%r26 %r28 28
	lw	%r30 %r29 0
	addi	%r26 %r26 32	
	jalr	%r29
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	addi	%r2 %r2 2
	addi	%r0 %r3 5
	bg	%r3 %r2 ble_else.14 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r5
	j	ble_cont.2 
ble_else.14 :
	mov	%r2 %r5
ble_cont.2 :
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r4 16
	lw	%r26 %r30 0
	lw	%r30 %r29 0
	jr	%r29
bl_else.24 :
	retl
init_line_elements.0 :
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.15 
	addi	%r0 %r3 3
	addi	%r0 %r4 l.15
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	mov	%r3 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
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
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r2 12
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r2 12
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r2 12
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r2 12
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_array 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
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
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	min_caml_create_array 
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
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
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 24
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 24
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 24
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
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
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r2 28
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r2 28
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r2 28
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r2 28
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	min_caml_create_array 
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	addi	%r0 %r2 3
	addi	%r0 %r3 l.15
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
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 36
	mov	%r2 %r1
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	lw	%r26 %r2 36
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	lw	%r26 %r2 36
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	lw	%r26 %r2 36
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
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
	slli	%r2 %r3 2
	lw	%r26 %r4 0
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	mov	%r4 %r1
	j	init_line_elements.0
ble_else.15 :
	retl
calc_dirvec.0 :
	lw	%r30 %r4 12
	lw	%r30 %r5 8
	lw	%r30 %r6 4
	addi	%r0 %r7 5
	bg	%r7 %r1 ble_else.16 
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f3 0
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	div.s	%f2 %f0 %f0
	div.s	%f2 %f1 %f1
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f3 0
	div.s	%f2 %f3 %f2
	slli	%r2 %r1 2
	add	%r5 %r1 %r31
	lw	%r31 %r1 0
	slli	%r3 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 0
	sw.s	%r2 %f0 0
	sw.s	%r2 %f1 4
	sw.s	%r2 %f2 8
	addi	%r3 %r2 40
	slli	%r2 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 0
	neg.s	%f1 %f3
	sw.s	%r2 %f0 0
	sw.s	%r2 %f2 4
	sw.s	%r2 %f3 8
	addi	%r3 %r2 80
	slli	%r2 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 0
	neg.s	%f0 %f3
	neg.s	%f1 %f4
	sw.s	%r2 %f2 0
	sw.s	%r2 %f3 4
	sw.s	%r2 %f4 8
	addi	%r3 %r2 1
	slli	%r2 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 0
	neg.s	%f0 %f3
	neg.s	%f1 %f4
	neg.s	%f2 %f5
	sw.s	%r2 %f3 0
	sw.s	%r2 %f4 4
	sw.s	%r2 %f5 8
	addi	%r3 %r2 41
	slli	%r2 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 0
	neg.s	%f0 %f3
	neg.s	%f2 %f4
	sw.s	%r2 %f3 0
	sw.s	%r2 %f4 4
	sw.s	%r2 %f1 8
	addi	%r3 %r2 81
	slli	%r2 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f2 %f2
	sw.s	%r1 %f2 0
	sw.s	%r1 %f0 4
	sw.s	%r1 %f1 8
	retl
ble_else.16 :
	mul.s	%f1 %f1 %f0
	addi	%r0 %r5 l.493
	ilw.s	%r5 %f1 0
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r5 l.17
	ilw.s	%r5 %f1 0
	div.s	%f0 %f1 %f1
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f4 0
	fbg	%f4 %f1 fble_else.22 
	addi	%r0 %r5 l.317
	ilw.s	%r5 %f4 0
	fbge	%f1 %f4 fbl_else.189 
	addi	%r0 %r5 l.17
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.325
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.327
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.329
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.331
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.333
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.335
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.187 
fbl_else.189 :
	addi	%r0 %r5 l.319
	ilw.s	%r5 %f4 0
	fbge	%f1 %f4 fbl_else.190 
	addi	%r0 %r5 l.17
	ilw.s	%r5 %f4 0
	sub.s	%f4 %f1 %f4
	addi	%r0 %r5 l.17
	ilw.s	%r5 %f5 0
	add.s	%f5 %f1 %f1
	div.s	%f1 %f4 %f1
	addi	%r0 %r5 l.17
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.21
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.325
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.327
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.329
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.331
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.333
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.335
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.188 
fbl_else.190 :
	addi	%r0 %r5 l.17
	ilw.s	%r5 %f4 0
	div.s	%f1 %f4 %f1
	addi	%r0 %r5 l.48
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.323
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.325
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.327
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.329
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.331
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.333
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.335
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
fbl_cont.188 :
fbl_cont.187 :
	j	fble_cont.6 
fble_else.22 :
	neg.s	%f1 %f1
	addi	%r0 %r5 l.317
	ilw.s	%r5 %f4 0
	fbge	%f1 %f4 fbl_else.191 
	addi	%r0 %r5 l.48
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.325
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.327
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.329
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.331
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.333
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.335
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.189 
fbl_else.191 :
	addi	%r0 %r5 l.319
	ilw.s	%r5 %f4 0
	fbge	%f1 %f4 fbl_else.192 
	addi	%r0 %r5 l.17
	ilw.s	%r5 %f4 0
	sub.s	%f4 %f1 %f4
	addi	%r0 %r5 l.17
	ilw.s	%r5 %f5 0
	add.s	%f5 %f1 %f1
	div.s	%f1 %f4 %f1
	addi	%r0 %r5 l.48
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.21
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.325
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.327
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.329
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.331
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.333
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.335
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.190 
fbl_else.192 :
	addi	%r0 %r5 l.17
	ilw.s	%r5 %f4 0
	div.s	%f1 %f4 %f1
	addi	%r0 %r5 l.17
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.323
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.325
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.327
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.329
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.331
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.333
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.335
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
fbl_cont.190 :
fbl_cont.189 :
fble_cont.6 :
	mul.s	%f2 %f1 %f1
	sw.s	%r26 %f2 0
	sw	%r26 %r3 8
	sw	%r26 %r2 12
	sw	%r26 %r30 16
	sw	%r26 %r4 20
	sw.s	%r26 %f3 24
	sw	%r26 %r1 32
	sw.s	%r26 %f0 40
	sw.s	%r26 %f1 48
	sw	%r26 %r6 56
	mov	%r4 %r30
	mov.s	%f1 %f0
	sw	%r26 %r28 60
	lw	%r30 %r29 0
	addi	%r26 %r26 64	
	jalr	%r29
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	lw	%r26 %r30 56
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 72
	lw	%r30 %r29 0
	addi	%r26 %r26 76	
	jalr	%r29
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	lw.s	%r26 %f1 64
	div.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 32
	addi	%r1 %r1 1
	mul.s	%f0 %f0 %f1
	addi	%r0 %r2 l.493
	ilw.s	%r2 %f2 0
	add.s	%f2 %f1 %f1
	sqrt.s	%f1 %f1
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f2
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f3 0
	fbg	%f3 %f2 fble_else.23 
	addi	%r0 %r2 l.317
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.193 
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.191 
fbl_else.193 :
	addi	%r0 %r2 l.319
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.194 
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f4 0
	add.s	%f4 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.21
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.192 
fbl_else.194 :
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.323
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.192 :
fbl_cont.191 :
	j	fble_cont.7 
fble_else.23 :
	neg.s	%f2 %f2
	addi	%r0 %r2 l.317
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.195 
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.15
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.193 
fbl_else.195 :
	addi	%r0 %r2 l.319
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.196 
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f4 0
	add.s	%f4 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r2 l.48
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.21
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.194 
fbl_else.196 :
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r2 l.17
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.323
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.325
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.327
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.329
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.331
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.335
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.194 :
fbl_cont.193 :
fble_cont.7 :
	lw.s	%r26 %f3 24
	mul.s	%f3 %f2 %f2
	lw	%r26 %r30 20
	sw.s	%r26 %f0 72
	sw	%r26 %r1 80
	sw.s	%r26 %f1 88
	sw.s	%r26 %f2 96
	mov.s	%f2 %f0
	sw	%r26 %r28 104
	lw	%r30 %r29 0
	addi	%r26 %r26 108	
	jalr	%r29
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	lw.s	%r26 %f1 96
	lw	%r26 %r30 56
	sw.s	%r26 %f0 104
	mov.s	%f1 %f0
	sw	%r26 %r28 112
	lw	%r30 %r29 0
	addi	%r26 %r26 116	
	jalr	%r29
	addi	%r26 %r26 -116
	lw	%r26 %r28 112
	lw.s	%r26 %f1 104
	div.s	%f0 %f1 %f0
	lw.s	%r26 %f1 88
	mul.s	%f1 %f0 %f1
	lw.s	%r26 %f0 72
	lw.s	%r26 %f2 0
	lw.s	%r26 %f3 24
	lw	%r26 %r1 80
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r30 16
	lw	%r30 %r29 0
	jr	%r29
calc_dirvecs.0 :
	lw	%r30 %r4 4
	addi	%r0 %r5 0
	bg	%r5 %r1 ble_else.17 
	mtc1	%r1 %f1
	addi	%r0 %r5 l.333
	ilw.s	%r5 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r5 l.1003
	ilw.s	%r5 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r5 0
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f1 0
	addi	%r0 %r6 l.15
	ilw.s	%r6 %f3 0
	sw	%r26 %r30 0
	sw.s	%r26 %f0 8
	sw	%r26 %r2 16
	sw	%r26 %r4 20
	sw	%r26 %r3 24
	sw	%r26 %r1 28
	mov	%r5 %r1
	mov	%r4 %r30
	mov.s	%f3 %f31
	mov.s	%f0 %f3
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 32
	lw	%r30 %r29 0
	addi	%r26 %r26 36	
	jalr	%r29
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r1 28
	mtc1	%r1 %f0
	addi	%r0 %r2 l.333
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.493
	ilw.s	%r2 %f1 0
	add.s	%f1 %f0 %f2
	addi	%r0 %r2 0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.15
	ilw.s	%r3 %f1 0
	lw	%r26 %r3 24
	addi	%r3 %r4 2
	lw.s	%r26 %f3 8
	lw	%r26 %r5 16
	lw	%r26 %r30 20
	mov	%r4 %r3
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 32
	lw	%r30 %r29 0
	addi	%r26 %r26 36	
	jalr	%r29
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	addi	%r0 %r1 1
	lw	%r26 %r2 28
	sub	%r2 %r1 %r1
	lw	%r26 %r2 16
	addi	%r2 %r2 1
	addi	%r0 %r3 5
	bg	%r3 %r2 ble_else.18 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r2
	j	ble_cont.3 
ble_else.18 :
ble_cont.3 :
	lw.s	%r26 %f0 8
	lw	%r26 %r3 24
	lw	%r26 %r30 0
	lw	%r30 %r29 0
	jr	%r29
ble_else.17 :
	retl
calc_dirvec_rows.0 :
	lw	%r30 %r4 4
	addi	%r0 %r5 0
	bg	%r5 %r1 ble_else.19 
	mtc1	%r1 %f0
	addi	%r0 %r5 l.333
	ilw.s	%r5 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r5 l.1003
	ilw.s	%r5 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r5 4
	sw	%r26 %r30 0
	sw	%r26 %r3 4
	sw	%r26 %r2 8
	sw	%r26 %r1 12
	mov	%r5 %r1
	mov	%r4 %r30
	sw	%r26 %r28 16
	lw	%r30 %r29 0
	addi	%r26 %r26 20	
	jalr	%r29
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	sub	%r2 %r1 %r1
	lw	%r26 %r2 8
	addi	%r2 %r2 2
	addi	%r0 %r3 5
	bg	%r3 %r2 ble_else.20 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r2
	j	ble_cont.4 
ble_else.20 :
ble_cont.4 :
	lw	%r26 %r3 4
	addi	%r3 %r3 4
	lw	%r26 %r30 0
	lw	%r30 %r29 0
	jr	%r29
ble_else.19 :
	retl
create_dirvec_elements.0 :
	lw	%r30 %r3 4
	addi	%r0 %r4 0
	bg	%r4 %r2 ble_else.21 
	addi	%r0 %r4 3
	addi	%r0 %r5 l.15
	ilw.s	%r5 %f0 0
	sw	%r26 %r30 0
	sw	%r26 %r1 4
	sw	%r26 %r2 8
	sw	%r26 %r3 12
	mov	%r4 %r1
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
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
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	lw	%r26 %r30 0
	mov	%r4 %r1
	lw	%r30 %r29 0
	jr	%r29
ble_else.21 :
	retl
create_dirvecs.0 :
	lw	%r30 %r2 12
	lw	%r30 %r3 8
	lw	%r30 %r4 4
	addi	%r0 %r5 0
	bg	%r5 %r1 ble_else.22 
	addi	%r0 %r5 120
	addi	%r0 %r6 3
	addi	%r0 %r7 l.15
	ilw.s	%r7 %f0 0
	sw	%r26 %r30 0
	sw	%r26 %r4 4
	sw	%r26 %r3 8
	sw	%r26 %r1 12
	sw	%r26 %r5 16
	sw	%r26 %r2 20
	mov	%r6 %r1
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
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
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r31
	sw	%r31 %r1 0
	slli	%r2 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r3 118
	lw	%r26 %r30 4
	mov	%r3 %r2
	sw	%r26 %r28 28
	lw	%r30 %r29 0
	addi	%r26 %r26 32	
	jalr	%r29
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	sub	%r2 %r1 %r1
	lw	%r26 %r30 0
	lw	%r30 %r29 0
	jr	%r29
ble_else.22 :
	retl
init_dirvec_constants.0 :
	lw	%r30 %r3 8
	lw	%r30 %r4 4
	addi	%r0 %r5 0
	bg	%r5 %r2 ble_else.23 
	slli	%r2 %r5 2
	add	%r1 %r5 %r31
	lw	%r31 %r5 0
	lw	%r3 %r3 0
	addi	%r0 %r6 1
	sub	%r3 %r6 %r3
	sw	%r26 %r1 0
	sw	%r26 %r30 4
	sw	%r26 %r2 8
	mov	%r3 %r2
	mov	%r5 %r1
	mov	%r4 %r30
	sw	%r26 %r28 12
	lw	%r30 %r29 0
	addi	%r26 %r26 16	
	jalr	%r29
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 1
	lw	%r26 %r2 8
	sub	%r2 %r1 %r2
	lw	%r26 %r1 0
	lw	%r26 %r30 4
	lw	%r30 %r29 0
	jr	%r29
ble_else.23 :
	retl
init_vecset_constants.0 :
	lw	%r30 %r2 8
	lw	%r30 %r3 4
	addi	%r0 %r4 0
	bg	%r4 %r1 ble_else.24 
	slli	%r1 %r4 2
	add	%r3 %r4 %r31
	lw	%r31 %r3 0
	addi	%r0 %r4 119
	sw	%r26 %r30 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	mov	%r2 %r30
	mov	%r4 %r2
	sw	%r26 %r28 8
	lw	%r30 %r29 0
	addi	%r26 %r26 12	
	jalr	%r29
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	addi	%r0 %r1 1
	lw	%r26 %r2 4
	sub	%r2 %r1 %r1
	lw	%r26 %r30 0
	lw	%r30 %r29 0
	jr	%r29
ble_else.24 :
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
