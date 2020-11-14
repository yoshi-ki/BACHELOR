#data_section
stack_init.0 :
	.int	0xffffff0
l.61 :	# -200.000000
	.float	0xc3480000
l.60 :	# 200.000000
	.float	0x43480000
l.59 :	# 128.000000
	.float	0x43000000
l.58 :	# 0.900000
	.float	0x3f666666
l.57 :	# 150.000000
	.float	0x43160000
l.56 :	# -150.000000
	.float	0xc3160000
l.55 :	# 0.100000
	.float	0x3dcccccd
l.54 :	# -2.000000
	.float	0xc0000000
l.53 :	# 0.003906
	.float	0x3b800000
l.52 :	# 20.000000
	.float	0x41a00000
l.51 :	# 0.050000
	.float	0x3d4ccccd
l.50 :	# 0.250000
	.float	0x3e800000
l.49 :	# 10.000000
	.float	0x41200000
l.48 :	# 0.300000
	.float	0x3e99999a
l.47 :	# 255.000000
	.float	0x437f0000
l.46 :	# 0.150000
	.float	0x3e19999a
l.45 :	# 3.141593
	.float	0x40490fdb
l.44 :	# 30.000000
	.float	0x41f00000
l.43 :	# 0.333333
	.float	0x3eaaaaaa
l.42 :	# 0.200000
	.float	0x3e4ccccd
l.41 :	# 0.142857
	.float	0x3e124925
l.40 :	# 0.111111
	.float	0x3de38e38
l.39 :	# 0.089764
	.float	0x3db7d66e
l.38 :	# 0.060035
	.float	0x3d75e7c5
l.37 :	# -1.570796
	.float	0xbfc90fdb
l.36 :	# 2.437500
	.float	0x401c0000
l.35 :	# 0.437500
	.float	0x3ee00000
l.34 :	# 15.000000
	.float	0x41700000
l.33 :	# 0.000100
	.float	0x38d1b717
l.32 :	# 100000000.000000
	.float	0x4cbebc20
l.31 :	# 1000000000.000000
	.float	0x4e6e6b28
l.30 :	# -0.100000
	.float	0xbdcccccd
l.29 :	# 0.010000
	.float	0x3c23d70a
l.28 :	# -0.200000
	.float	0xbe4ccccd
l.27 :	# 2.000000
	.float	0x40000000
l.26 :	# 0.017453
	.float	0x3c8efa35
l.25 :	# -1.000000
	.float	0xbf800000
l.24 :	# 0.166667
	.float	0x3e2aaaac
l.23 :	# 0.008333
	.float	0x3c088666
l.22 :	# 0.000196
	.float	0x394d64b6
l.21 :	# 0.500000
	.float	0x3f000000
l.20 :	# 0.041664
	.float	0x3d2aa789
l.19 :	# 0.001370
	.float	0x3ab38106
l.18 :	# 0.785398
	.float	0x3f490fdb
l.17 :	# 1.570796
	.float	0x3fc90fdb
l.16 :	# 1.000000
	.float	0x3f800000
l.15 :	# 0.000000
	.float	0x0
l.14 :	# 6.283185
	.float	0x40c90fdb
l.13 :	# 3.141593
	.float	0x40490fdb
#text_section
program_start :
	ilw	%r0 %r26 stack_init.0
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 0
	bne	%r1 %r2 program_end
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 4
	bne	%r1 %r2 program_end
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	sw	%r27 %r1 4
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	sw	%r27 %r1 8
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	sw	%r27 %r1 12
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	sw	%r27 %r1 16
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 4
	sw	%r27 %r1 20
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 4
	sw	%r27 %r1 24
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	sw	%r27 %r1 28
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 4
	sw	%r27 %r1 32
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 4
	sw	%r27 %r1 36
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 4
	sw	%r27 %r1 40
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 4
	sw	%r27 %r1 44
	addi	%r27 %r27 44
	addi	%r0 %r1 60
	addi	%r0 %r2 4
	jal	min_caml_create_array
	addi	%r0 %r2 48
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 288
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 300
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 312
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.47
	jal	min_caml_create_float_array
	addi	%r0 %r2 324
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 -1
	jal	min_caml_create_array
	addi	%r0 %r2 328
	bne	%r1 %r2 program_end
	addi	%r0 %r1 50
	addi	%r0 %r2 328
	jal	min_caml_create_array
	addi	%r0 %r2 332
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 328
	jal	min_caml_create_array
	addi	%r0 %r2 532
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 532
	jal	min_caml_create_array
	addi	%r0 %r2 536
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 540
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 544
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.31
	jal	min_caml_create_float_array
	addi	%r0 %r2 548
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 552
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 564
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 568
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 580
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 592
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 604
	bne	%r1 %r2 program_end
	addi	%r0 %r1 2
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 616
	bne	%r1 %r2 program_end
	addi	%r0 %r1 2
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 624
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 632
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 636
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 648
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 660
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 672
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 684
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 696
	bne	%r1 %r2 program_end
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 708
	bne	%r1 %r2 program_end
	addi	%r0 %r1 0
	addi	%r0 %r2 708
	jal	min_caml_create_array
	addi	%r0 %r2 708
	bne	%r1 %r2 program_end
	addi	%r0 %r1 708
	bne	%r1 %r27 program_end
	addi	%r0 %r1 708
	sw	%r27 %r1 708
	addi	%r0 %r1 708
	bne	%r1 %r27 program_end
	addi	%r0 %r1 708
	sw	%r27 %r1 712
	addi	%r27 %r27 8
	addi	%r0 %r1 0
	addi	%r0 %r2 708
	jal	min_caml_create_array
	addi	%r0 %r2 716
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 716
	jal	min_caml_create_array
	addi	%r0 %r2 716
	bne	%r1 %r2 program_end
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 736
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 736
	bne	%r1 %r2 program_end
	addi	%r0 %r1 60
	addi	%r0 %r2 736
	jal	min_caml_create_array
	addi	%r0 %r2 748
	bne	%r1 %r2 program_end
	addi	%r0 %r1 988
	bne	%r1 %r27 program_end
	addi	%r0 %r1 736
	sw	%r27 %r1 988
	addi	%r0 %r1 988
	bne	%r1 %r27 program_end
	addi	%r0 %r1 748
	sw	%r27 %r1 992
	addi	%r27 %r27 8
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 996
	bne	%r1 %r2 program_end
	addi	%r0 %r1 0
	addi	%r0 %r2 996
	jal	min_caml_create_array
	addi	%r0 %r2 996
	bne	%r1 %r2 program_end
	addi	%r0 %r1 996
	bne	%r1 %r27 program_end
	addi	%r0 %r1 996
	sw	%r27 %r1 996
	addi	%r0 %r1 996
	bne	%r1 %r27 program_end
	addi	%r0 %r1 996
	sw	%r27 %r1 1000
	addi	%r27 %r27 8
	addi	%r0 %r1 1004
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	sw	%r27 %r1 1004
	addi	%r0 %r1 1004
	bne	%r1 %r27 program_end
	addi	%r0 %r1 996
	sw	%r27 %r1 1008
	addi	%r0 %r1 1004
	bne	%r1 %r27 program_end
	ilw.s	%r0 %f0 l.15
	sw.s	%r27 %f0 1012
	addi	%r27 %r27 12
	addi	%r0 %r1 180
	addi	%r0 %r2 1004
	jal	min_caml_create_array
	addi	%r0 %r2 1016
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 1736
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1740
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1752
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 1752
	jal	min_caml_create_array
	addi	%r0 %r2 1764
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1784
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1796
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1808
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1820
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 1832
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 1852
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1872
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 1872
	jal	min_caml_create_array
	addi	%r0 %r2 1884
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1904
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1916
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1928
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1940
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1952
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 1952
	jal	min_caml_create_array
	addi	%r0 %r2 1964
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1984
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 1996
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2008
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2020
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 2032
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2036
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2036
	jal	min_caml_create_array
	addi	%r0 %r2 2048
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2068
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2080
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2092
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2104
	bne	%r1 %r2 program_end
	addi	%r0 %r1 2116
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1740
	sw	%r27 %r1 2116
	addi	%r0 %r1 2116
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1764
	sw	%r27 %r1 2120
	addi	%r0 %r1 2116
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1832
	sw	%r27 %r1 2124
	addi	%r0 %r1 2116
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1852
	sw	%r27 %r1 2128
	addi	%r0 %r1 2116
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1884
	sw	%r27 %r1 2132
	addi	%r0 %r1 2116
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1964
	sw	%r27 %r1 2136
	addi	%r0 %r1 2116
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2032
	sw	%r27 %r1 2140
	addi	%r0 %r1 2116
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2048
	sw	%r27 %r1 2144
	addi	%r27 %r27 32
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2148
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2160
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2160
	jal	min_caml_create_array
	addi	%r0 %r2 2172
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2192
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2204
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2216
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2228
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 2240
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 2260
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2280
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2280
	jal	min_caml_create_array
	addi	%r0 %r2 2292
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2312
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2324
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2336
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2348
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2360
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2360
	jal	min_caml_create_array
	addi	%r0 %r2 2372
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2392
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2404
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2416
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2428
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 2440
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2444
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2444
	jal	min_caml_create_array
	addi	%r0 %r2 2456
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2476
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2488
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2500
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2512
	bne	%r1 %r2 program_end
	addi	%r0 %r1 2524
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2148
	sw	%r27 %r1 2524
	addi	%r0 %r1 2524
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2172
	sw	%r27 %r1 2528
	addi	%r0 %r1 2524
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2240
	sw	%r27 %r1 2532
	addi	%r0 %r1 2524
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2260
	sw	%r27 %r1 2536
	addi	%r0 %r1 2524
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2292
	sw	%r27 %r1 2540
	addi	%r0 %r1 2524
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2372
	sw	%r27 %r1 2544
	addi	%r0 %r1 2524
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2440
	sw	%r27 %r1 2548
	addi	%r0 %r1 2524
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2456
	sw	%r27 %r1 2552
	addi	%r27 %r27 32
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2556
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2568
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2568
	jal	min_caml_create_array
	addi	%r0 %r2 2580
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2600
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2612
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2624
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2636
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 2648
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 2668
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2688
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2688
	jal	min_caml_create_array
	addi	%r0 %r2 2700
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2720
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2732
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2744
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2756
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2768
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2768
	jal	min_caml_create_array
	addi	%r0 %r2 2780
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2800
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2812
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2824
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2836
	bne	%r1 %r2 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r2 2848
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2852
	bne	%r1 %r2 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2852
	jal	min_caml_create_array
	addi	%r0 %r2 2864
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2884
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2896
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2908
	bne	%r1 %r2 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	jal	min_caml_create_float_array
	addi	%r0 %r2 2920
	bne	%r1 %r2 program_end
	addi	%r0 %r1 2932
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2556
	sw	%r27 %r1 2932
	addi	%r0 %r1 2932
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2580
	sw	%r27 %r1 2936
	addi	%r0 %r1 2932
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2648
	sw	%r27 %r1 2940
	addi	%r0 %r1 2932
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2668
	sw	%r27 %r1 2944
	addi	%r0 %r1 2932
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2700
	sw	%r27 %r1 2948
	addi	%r0 %r1 2932
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2780
	sw	%r27 %r1 2952
	addi	%r0 %r1 2932
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2848
	sw	%r27 %r1 2956
	addi	%r0 %r1 2932
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2864
	sw	%r27 %r1 2960
	addi	%r27 %r27 32
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.47
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.31
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r1 552
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r2 696
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 988
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	mov	%r27 %r4
	addi	%r27 %r27 8
	addi	%r0 %r5 trace_ray.0
	sw	%r4 %r5 0
	sw	%r4 %r1 4
	mov	%r27 %r1
	addi	%r27 %r27 12
	addi	%r0 %r5 pretrace_pixels.0
	sw	%r1 %r5 0
	sw	%r1 %r4 8
	sw	%r1 %r2 4
	mov	%r27 %r2
	addi	%r27 %r27 8
	addi	%r0 %r4 scan_line.0
	sw	%r2 %r4 0
	sw	%r2 %r1 4
	addi	%r0 %r4 128
	addi	%r0 %r5 128
	sw	%r0 %r4 616
	sw	%r0 %r5 620
	addi	%r0 %r5 64
	sw	%r0 %r5 624
	addi	%r0 %r5 64
	sw	%r0 %r5 628
	ilw.s	%r0 %f0 l.59
	mtc1	%r4 %f1
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 632
	lw	%r0 %r4 616
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 1784
	sw	%r0 %r5 1768
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 1796
	sw	%r0 %r5 1772
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 1808
	sw	%r0 %r5 1776
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 1820
	sw	%r0 %r5 1780
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 1904
	sw	%r0 %r5 1888
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 1916
	sw	%r0 %r5 1892
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 1928
	sw	%r0 %r5 1896
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 1940
	sw	%r0 %r5 1900
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 1984
	sw	%r0 %r5 1968
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 1996
	sw	%r0 %r5 1972
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 2008
	sw	%r0 %r5 1976
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 2020
	sw	%r0 %r5 1980
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 2068
	sw	%r0 %r5 2052
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 2080
	sw	%r0 %r5 2056
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 2092
	sw	%r0 %r5 2060
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r5 2104
	sw	%r0 %r5 2064
	addi	%r0 %r5 2116
	sw	%r26 %r2 -0
	sw	%r26 %r1 -4
	sw	%r26 %r3 -8
	mov	%r5 %r2
	mov	%r4 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	min_caml_create_array 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r0 %r2 616
	addi	%r2 %r2 -2
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	init_line_elements.0 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r0 %r2 616
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2192
	sw	%r0 %r3 2176
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2204
	sw	%r0 %r3 2180
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2216
	sw	%r0 %r3 2184
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2228
	sw	%r0 %r3 2188
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2312
	sw	%r0 %r3 2296
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2324
	sw	%r0 %r3 2300
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2336
	sw	%r0 %r3 2304
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2348
	sw	%r0 %r3 2308
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2392
	sw	%r0 %r3 2376
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2404
	sw	%r0 %r3 2380
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2416
	sw	%r0 %r3 2384
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2428
	sw	%r0 %r3 2388
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2476
	sw	%r0 %r3 2460
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2488
	sw	%r0 %r3 2464
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2500
	sw	%r0 %r3 2468
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2512
	sw	%r0 %r3 2472
	addi	%r0 %r3 2524
	sw	%r26 %r1 -12
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	min_caml_create_array 
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r0 %r2 616
	addi	%r2 %r2 -2
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	init_line_elements.0 
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r0 %r2 616
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2600
	sw	%r0 %r3 2584
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2612
	sw	%r0 %r3 2588
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2624
	sw	%r0 %r3 2592
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2636
	sw	%r0 %r3 2596
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2720
	sw	%r0 %r3 2704
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2732
	sw	%r0 %r3 2708
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2744
	sw	%r0 %r3 2712
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2756
	sw	%r0 %r3 2716
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2800
	sw	%r0 %r3 2784
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2812
	sw	%r0 %r3 2788
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2824
	sw	%r0 %r3 2792
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2836
	sw	%r0 %r3 2796
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2884
	sw	%r0 %r3 2868
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2896
	sw	%r0 %r3 2872
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2908
	sw	%r0 %r3 2876
	ilw.s	%r0 %f0 l.15
	addi	%r0 %r3 2920
	sw	%r0 %r3 2880
	addi	%r0 %r3 2932
	sw	%r26 %r1 -16
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	min_caml_create_array 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r0 %r2 616
	addi	%r2 %r2 -2
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	init_line_elements.0 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	fin	%f0
	sw.s	%r0 %f0 288
	fin	%f0
	sw.s	%r0 %f0 292
	fin	%f0
	sw.s	%r0 %f0 296
	fin	%f0
	ilw.s	%r0 %f1 l.26
	mul.s	%f1 %f0 %f0
	sw	%r26 %r1 -20
	sw.s	%r26 %f0 -24
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	cos.0 
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	lw.s	%r26 %f1 -24
	sw.s	%r26 %f0 -32
	mov.s	%f1 %f0
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	sin.0 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	fin	%f1
	ilw.s	%r0 %f2 l.26
	mul.s	%f2 %f1 %f1
	sw.s	%r26 %f0 -40
	sw.s	%r26 %f1 -48
	mov.s	%f1 %f0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	cos.0 
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw.s	%r26 %f1 -48
	sw.s	%r26 %f0 -56
	mov.s	%f1 %f0
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	sin.0 
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw.s	%r26 %f1 -32
	mul.s	%f0 %f1 %f2
	ilw.s	%r0 %f3 l.60
	mul.s	%f3 %f2 %f2
	sw.s	%r0 %f2 684
	ilw.s	%r0 %f2 l.61
	lw.s	%r26 %f3 -40
	mul.s	%f2 %f3 %f2
	sw.s	%r0 %f2 688
	lw.s	%r26 %f2 -56
	mul.s	%f2 %f1 %f4
	ilw.s	%r0 %f5 l.60
	mul.s	%f5 %f4 %f4
	sw.s	%r0 %f4 692
	sw.s	%r0 %f2 660
	ilw.s	%r0 %f4 l.15
	sw.s	%r0 %f4 664
	neg.s	%f0 %f4
	sw.s	%r0 %f4 668
	neg.s	%f3 %f4
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 672
	neg.s	%f1 %f0
	sw.s	%r0 %f0 676
	neg.s	%f3 %f0
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 680
	addi	%r0 %r1 288
	lw.s	%r1 %f0 288
	addi	%r0 %r1 684
	lw.s	%r1 %f1 684
	sub.s	%f1 %f0 %f0
	sw.s	%r0 %f0 300
	addi	%r0 %r1 292
	lw.s	%r1 %f0 292
	addi	%r0 %r1 688
	lw.s	%r1 %f1 688
	sub.s	%f1 %f0 %f0
	sw.s	%r0 %f0 304
	addi	%r0 %r1 296
	lw.s	%r1 %f0 296
	addi	%r0 %r1 692
	lw.s	%r1 %f1 692
	sub.s	%f1 %f0 %f0
	sw.s	%r0 %f0 308
	in	%r1
	fin	%f0
	ilw.s	%r0 %f1 l.26
	mul.s	%f1 %f0 %f0
	sw.s	%r26 %f0 -64
	sw	%r26 %r28 -72
	addi	%r26 %r26 -76
	jal	sin.0 
	addi	%r26 %r26 76
	lw	%r26 %r28 -72
	neg.s	%f0 %f0
	sw.s	%r0 %f0 316
	fin	%f0
	ilw.s	%r0 %f1 l.26
	mul.s	%f1 %f0 %f0
	lw.s	%r26 %f1 -64
	sw.s	%r26 %f0 -72
	mov.s	%f1 %f0
	sw	%r26 %r28 -80
	addi	%r26 %r26 -84
	jal	cos.0 
	addi	%r26 %r26 84
	lw	%r26 %r28 -80
	lw.s	%r26 %f1 -72
	sw.s	%r26 %f0 -80
	mov.s	%f1 %f0
	sw	%r26 %r28 -88
	addi	%r26 %r26 -92
	jal	sin.0 
	addi	%r26 %r26 92
	lw	%r26 %r28 -88
	lw.s	%r26 %f1 -80
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 312
	lw.s	%r26 %f0 -72
	sw	%r26 %r28 -88
	addi	%r26 %r26 -92
	jal	cos.0 
	addi	%r26 %r26 92
	lw	%r26 %r28 -88
	lw.s	%r26 %f1 -80
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 320
	fin	%f0
	sw.s	%r0 %f0 324
	addi	%r0 %r1 0
	sw	%r26 %r28 -88
	addi	%r26 %r26 -92
	jal	read_object.0 
	addi	%r26 %r26 92
	lw	%r26 %r28 -88
	addi	%r0 %r1 0
	sw	%r26 %r28 -88
	addi	%r26 %r26 -92
	jal	read_and_network.0 
	addi	%r26 %r26 92
	lw	%r26 %r28 -88
	addi	%r0 %r1 0
	sw	%r26 %r28 -88
	addi	%r26 %r26 -92
	jal	read_or_network.0 
	addi	%r26 %r26 92
	lw	%r26 %r28 -88
	sw	%r0 %r1 536
	addi	%r0 %r1 80
	out	%r1
	addi	%r0 %r1 51
	out	%r1
	addi	%r0 %r1 10
	out	%r1
	lw	%r0 %r1 616
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
	bge	%r4 %r2 bl_else.0 
	addi	%r2 %r2 48
	out	%r2
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bl_cont.0 
bl_else.0 :
	addi	%r0 %r2 0
	bge	%r2 %r3 bl_else.1 
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bl_cont.1 
bl_else.1 :
	addi	%r1 %r1 48
	out	%r1
bl_cont.1 :
bl_cont.0 :
	addi	%r0 %r1 32
	out	%r1
	lw	%r0 %r1 620
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
	bge	%r4 %r2 bl_else.2 
	addi	%r2 %r2 48
	out	%r2
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bl_cont.2 
bl_else.2 :
	addi	%r0 %r2 0
	bge	%r2 %r3 bl_else.3 
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bl_cont.3 
bl_else.3 :
	addi	%r1 %r1 48
	out	%r1
bl_cont.3 :
bl_cont.2 :
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 50
	out	%r1
	addi	%r0 %r1 53
	out	%r1
	addi	%r0 %r1 53
	out	%r1
	addi	%r0 %r1 10
	out	%r1
	addi	%r0 %r1 4
	sw	%r26 %r28 -88
	addi	%r26 %r26 -92
	jal	create_dirvecs.0 
	addi	%r26 %r26 92
	lw	%r26 %r28 -88
	addi	%r0 %r1 9
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	sw	%r26 %r28 -88
	addi	%r26 %r26 -92
	jal	calc_dirvec_rows.0 
	addi	%r26 %r26 92
	lw	%r26 %r28 -88
	addi	%r0 %r1 4
	sw	%r26 %r28 -88
	addi	%r26 %r26 -92
	jal	init_vecset_constants.0 
	addi	%r26 %r26 92
	lw	%r26 %r28 -88
	addi	%r0 %r1 312
	lw.s	%r1 %f0 312
	sw.s	%r0 %f0 736
	addi	%r0 %r1 316
	lw.s	%r1 %f0 316
	sw.s	%r0 %f0 740
	addi	%r0 %r1 320
	lw.s	%r1 %f0 320
	sw.s	%r0 %f0 744
	lw	%r0 %r1 0
	addi	%r1 %r2 -1
	lw	%r26 %r1 -8
	sw	%r26 %r28 -88
	addi	%r26 %r26 -92
	jal	iter_setup_dirvec_constants.0 
	addi	%r26 %r26 92
	lw	%r26 %r28 -88
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.0 
	slli	%r1 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r2 0
	lw	%r2 %r3 8
	addi	%r0 %r4 2
	bne	%r3 %r4 beq_else.0 
	lw	%r2 %r3 28
	addi	%r3 %r3 0
	lw.s	%r3 %f0 0
	ilw.s	%r0 %f1 l.16
	fbge	%f0 %f1 fbl_else.0 
	addi	%r0 %r3 1
	j	fbl_cont.0 
fbl_else.0 :
	addi	%r0 %r3 0
fbl_cont.0 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.1 
	j	beq_cont.1 
beq_else.1 :
	lw	%r2 %r3 4
	addi	%r0 %r4 1
	bne	%r3 %r4 beq_else.2 
	addi	%r0 %r3 4
	mul	%r1 %r3 %r1
	lw	%r0 %r3 1736
	ilw.s	%r0 %f0 l.16
	lw	%r2 %r2 28
	addi	%r2 %r2 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 312
	lw.s	%r2 %f1 312
	neg.s	%f1 %f1
	addi	%r0 %r2 316
	lw.s	%r2 %f2 316
	neg.s	%f2 %f2
	addi	%r0 %r2 320
	lw.s	%r2 %f3 320
	neg.s	%f3 %f3
	addi	%r1 %r2 1
	addi	%r0 %r4 312
	lw.s	%r4 %f4 312
	addi	%r0 %r4 3
	ilw.s	%r0 %f5 l.15
	sw.s	%r26 %f1 -88
	sw	%r26 %r1 -96
	sw	%r26 %r3 -100
	sw	%r26 %r2 -104
	sw.s	%r26 %f0 -112
	sw.s	%r26 %f3 -120
	sw.s	%r26 %f2 -128
	sw.s	%r26 %f4 -136
	mov	%r4 %r1
	mov.s	%f5 %f0
	sw	%r26 %r28 -144
	addi	%r26 %r26 -148
	jal	min_caml_create_float_array 
	addi	%r26 %r26 148
	lw	%r26 %r28 -144
	mov	%r1 %r2
	lw	%r0 %r1 0
	sw	%r26 %r2 -144
	sw	%r26 %r28 -148
	addi	%r26 %r26 -152
	jal	min_caml_create_array 
	addi	%r26 %r26 152
	lw	%r26 %r28 -148
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 -144
	sw	%r2 %r1 0
	addi	%r1 %r3 0
	lw.s	%r26 %f0 -136
	sw.s	%r3 %f0 0
	addi	%r1 %r3 4
	lw.s	%r26 %f0 -128
	sw.s	%r3 %f0 0
	addi	%r1 %r1 8
	lw.s	%r26 %f1 -120
	sw.s	%r1 %f1 0
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r2 -148
	mov	%r2 %r29
	mov	%r1 %r2
	mov	%r29 %r1
	sw	%r26 %r28 -152
	addi	%r26 %r26 -156
	jal	iter_setup_dirvec_constants.0 
	addi	%r26 %r26 156
	lw	%r26 %r28 -152
	mov	%r27 %r1
	addi	%r27 %r27 12
	lw.s	%r26 %f0 -112
	sw.s	%r1 %f0 8
	lw	%r26 %r2 -148
	sw	%r1 %r2 4
	lw	%r26 %r2 -104
	sw	%r1 %r2 0
	lw	%r26 %r2 -100
	slli	%r2 %r3 2
	addi	%r3 %r3 1016
	sw	%r3 %r1 0
	addi	%r2 %r1 1
	lw	%r26 %r3 -96
	addi	%r3 %r4 2
	addi	%r0 %r5 316
	lw.s	%r5 %f1 316
	addi	%r0 %r5 3
	ilw.s	%r0 %f2 l.15
	sw	%r26 %r1 -152
	sw	%r26 %r4 -156
	sw.s	%r26 %f1 -160
	mov	%r5 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 -168
	addi	%r26 %r26 -172
	jal	min_caml_create_float_array 
	addi	%r26 %r26 172
	lw	%r26 %r28 -168
	mov	%r1 %r2
	lw	%r0 %r1 0
	sw	%r26 %r2 -168
	sw	%r26 %r28 -172
	addi	%r26 %r26 -176
	jal	min_caml_create_array 
	addi	%r26 %r26 176
	lw	%r26 %r28 -172
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 -168
	sw	%r2 %r1 0
	addi	%r1 %r3 0
	lw.s	%r26 %f0 -88
	sw.s	%r3 %f0 0
	addi	%r1 %r3 4
	lw.s	%r26 %f1 -160
	sw.s	%r3 %f1 0
	addi	%r1 %r1 8
	lw.s	%r26 %f1 -120
	sw.s	%r1 %f1 0
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r2 -172
	mov	%r2 %r29
	mov	%r1 %r2
	mov	%r29 %r1
	sw	%r26 %r28 -176
	addi	%r26 %r26 -180
	jal	iter_setup_dirvec_constants.0 
	addi	%r26 %r26 180
	lw	%r26 %r28 -176
	mov	%r27 %r1
	addi	%r27 %r27 12
	lw.s	%r26 %f0 -112
	sw.s	%r1 %f0 8
	lw	%r26 %r2 -172
	sw	%r1 %r2 4
	lw	%r26 %r2 -156
	sw	%r1 %r2 0
	lw	%r26 %r2 -152
	slli	%r2 %r2 2
	addi	%r2 %r2 1016
	sw	%r2 %r1 0
	lw	%r26 %r1 -100
	addi	%r1 %r2 2
	lw	%r26 %r3 -96
	addi	%r3 %r3 3
	addi	%r0 %r4 320
	lw.s	%r4 %f1 320
	addi	%r0 %r4 3
	ilw.s	%r0 %f2 l.15
	sw	%r26 %r2 -176
	sw	%r26 %r3 -180
	sw.s	%r26 %f1 -184
	mov	%r4 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 -192
	addi	%r26 %r26 -196
	jal	min_caml_create_float_array 
	addi	%r26 %r26 196
	lw	%r26 %r28 -192
	mov	%r1 %r2
	lw	%r0 %r1 0
	sw	%r26 %r2 -192
	sw	%r26 %r28 -196
	addi	%r26 %r26 -200
	jal	min_caml_create_array 
	addi	%r26 %r26 200
	lw	%r26 %r28 -196
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 -192
	sw	%r2 %r1 0
	addi	%r1 %r3 0
	lw.s	%r26 %f0 -88
	sw.s	%r3 %f0 0
	addi	%r1 %r3 4
	lw.s	%r26 %f0 -128
	sw.s	%r3 %f0 0
	addi	%r1 %r1 8
	lw.s	%r26 %f0 -184
	sw.s	%r1 %f0 0
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r2 -196
	mov	%r2 %r29
	mov	%r1 %r2
	mov	%r29 %r1
	sw	%r26 %r28 -200
	addi	%r26 %r26 -204
	jal	iter_setup_dirvec_constants.0 
	addi	%r26 %r26 204
	lw	%r26 %r28 -200
	mov	%r27 %r1
	addi	%r27 %r27 12
	lw.s	%r26 %f0 -112
	sw.s	%r1 %f0 8
	lw	%r26 %r2 -196
	sw	%r1 %r2 4
	lw	%r26 %r2 -180
	sw	%r1 %r2 0
	lw	%r26 %r2 -176
	slli	%r2 %r2 2
	addi	%r2 %r2 1016
	sw	%r2 %r1 0
	lw	%r26 %r1 -100
	addi	%r1 %r1 3
	sw	%r0 %r1 1736
	j	beq_cont.2 
beq_else.2 :
	addi	%r0 %r4 2
	bne	%r3 %r4 beq_else.3 
	addi	%r0 %r3 4
	mul	%r1 %r3 %r1
	addi	%r1 %r1 1
	lw	%r0 %r3 1736
	ilw.s	%r0 %f0 l.16
	lw	%r2 %r4 28
	addi	%r4 %r4 0
	lw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r2 %r4 16
	addi	%r0 %r5 312
	lw.s	%r5 %f1 312
	addi	%r4 %r5 0
	lw.s	%r5 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r5 316
	lw.s	%r5 %f2 316
	addi	%r4 %r5 4
	lw.s	%r5 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	addi	%r0 %r5 320
	lw.s	%r5 %f2 320
	addi	%r4 %r4 8
	lw.s	%r4 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.27
	lw	%r2 %r4 16
	addi	%r4 %r4 0
	lw.s	%r4 %f3 0
	mul.s	%f3 %f2 %f2
	mul.s	%f1 %f2 %f2
	addi	%r0 %r4 312
	lw.s	%r4 %f3 312
	sub.s	%f3 %f2 %f2
	ilw.s	%r0 %f3 l.27
	lw	%r2 %r4 16
	addi	%r4 %r4 4
	lw.s	%r4 %f4 0
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f3 %f3
	addi	%r0 %r4 316
	lw.s	%r4 %f4 316
	sub.s	%f4 %f3 %f3
	ilw.s	%r0 %f4 l.27
	lw	%r2 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f5 0
	mul.s	%f5 %f4 %f4
	mul.s	%f1 %f4 %f1
	addi	%r0 %r2 320
	lw.s	%r2 %f4 320
	sub.s	%f4 %f1 %f1
	addi	%r0 %r2 3
	ilw.s	%r0 %f4 l.15
	sw	%r26 %r3 -200
	sw	%r26 %r1 -204
	sw.s	%r26 %f0 -208
	sw.s	%r26 %f1 -216
	sw.s	%r26 %f3 -224
	sw.s	%r26 %f2 -232
	mov	%r2 %r1
	mov.s	%f4 %f0
	sw	%r26 %r28 -240
	addi	%r26 %r26 -244
	jal	min_caml_create_float_array 
	addi	%r26 %r26 244
	lw	%r26 %r28 -240
	mov	%r1 %r2
	lw	%r0 %r1 0
	sw	%r26 %r2 -240
	sw	%r26 %r28 -244
	addi	%r26 %r26 -248
	jal	min_caml_create_array 
	addi	%r26 %r26 248
	lw	%r26 %r28 -244
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 -240
	sw	%r2 %r1 0
	addi	%r1 %r3 0
	lw.s	%r26 %f0 -232
	sw.s	%r3 %f0 0
	addi	%r1 %r3 4
	lw.s	%r26 %f0 -224
	sw.s	%r3 %f0 0
	addi	%r1 %r1 8
	lw.s	%r26 %f0 -216
	sw.s	%r1 %f0 0
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r2 -244
	mov	%r2 %r29
	mov	%r1 %r2
	mov	%r29 %r1
	sw	%r26 %r28 -248
	addi	%r26 %r26 -252
	jal	iter_setup_dirvec_constants.0 
	addi	%r26 %r26 252
	lw	%r26 %r28 -248
	mov	%r27 %r1
	addi	%r27 %r27 12
	lw.s	%r26 %f0 -208
	sw.s	%r1 %f0 8
	lw	%r26 %r2 -244
	sw	%r1 %r2 4
	lw	%r26 %r2 -204
	sw	%r1 %r2 0
	lw	%r26 %r2 -200
	slli	%r2 %r3 2
	addi	%r3 %r3 1016
	sw	%r3 %r1 0
	addi	%r2 %r1 1
	sw	%r0 %r1 1736
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
	addi	%r0 %r2 632
	lw.s	%r2 %f0 632
	lw	%r0 %r2 628
	sub	%r1 %r2 %r1
	mtc1	%r1 %f1
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 672
	lw.s	%r1 %f1 672
	mul.s	%f1 %f0 %f1
	addi	%r0 %r1 684
	lw.s	%r1 %f2 684
	add.s	%f2 %f1 %f1
	addi	%r0 %r1 676
	lw.s	%r1 %f2 676
	mul.s	%f2 %f0 %f2
	addi	%r0 %r1 688
	lw.s	%r1 %f3 688
	add.s	%f3 %f2 %f2
	addi	%r0 %r1 680
	lw.s	%r1 %f3 680
	mul.s	%f3 %f0 %f0
	addi	%r0 %r1 692
	lw.s	%r1 %f3 692
	add.s	%f3 %f0 %f0
	lw	%r0 %r1 616
	addi	%r1 %r2 -1
	lw	%r26 %r1 -16
	lw	%r26 %r30 -4
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 -248
	lw	%r30 %r29 0
	addi	%r26 %r26 -252
	jalr	%r29
	addi	%r26 %r26 252
	lw	%r26 %r28 -248
	addi	%r0 %r1 0
	addi	%r0 %r5 2
	lw	%r26 %r2 -12
	lw	%r26 %r3 -16
	lw	%r26 %r4 -20
	lw	%r26 %r30 -0
	sw	%r26 %r28 -248
	lw	%r30 %r29 0
	addi	%r26 %r26 -252
	jalr	%r29
	addi	%r26 %r26 252
	lw	%r26 %r28 -248
	addi	%r0 %r1 0
program_end :
	add	%r0 %r0 %r0
	ret
sin.0 :
	ilw.s	%r0 %f1 l.13
	ilw.s	%r0 %f2 l.14
	fbg	%f2 %f0 fble_else.0 
	ilw.s	%r0 %f1 l.14
	sub.s	%f1 %f0 %f0
	j	sin.0
fble_else.0 :
	ilw.s	%r0 %f2 l.15
	fbge	%f0 %f2 fbl_else.1 
	ilw.s	%r0 %f1 l.14
	add.s	%f1 %f0 %f0
	j	sin.0
fbl_else.1 :
	fbg	%f1 %f0 fble_else.1 
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.25
	ilw.s	%r0 %f2 l.13
	ilw.s	%r0 %f3 l.17
	fbg	%f3 %f0 fble_else.2 
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.18
	fbg	%f0 %f2 fble_else.3 
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.22
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.23
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.24
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.16
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.3 :
	ilw.s	%r0 %f2 l.17
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.19
	ilw.s	%r0 %f3 l.20
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.21
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.16
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.2 :
	ilw.s	%r0 %f2 l.18
	fbg	%f0 %f2 fble_else.4 
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.22
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.23
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.24
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.16
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.4 :
	ilw.s	%r0 %f2 l.17
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.19
	ilw.s	%r0 %f3 l.20
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.21
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.16
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.1 :
	ilw.s	%r0 %f1 l.16
	ilw.s	%r0 %f2 l.13
	ilw.s	%r0 %f3 l.17
	fbg	%f3 %f0 fble_else.5 
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.18
	fbg	%f0 %f2 fble_else.6 
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.22
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.23
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.24
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.16
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.6 :
	ilw.s	%r0 %f2 l.17
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.19
	ilw.s	%r0 %f3 l.20
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.21
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.16
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.5 :
	ilw.s	%r0 %f2 l.18
	fbg	%f0 %f2 fble_else.7 
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.22
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.23
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.24
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.16
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.7 :
	ilw.s	%r0 %f2 l.17
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.19
	ilw.s	%r0 %f3 l.20
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.21
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.16
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
cos.0 :
	ilw.s	%r0 %f1 l.13
	ilw.s	%r0 %f2 l.14
	fbg	%f2 %f0 fble_else.8 
	ilw.s	%r0 %f1 l.14
	sub.s	%f1 %f0 %f0
	j	cos.0
fble_else.8 :
	ilw.s	%r0 %f2 l.15
	fbge	%f0 %f2 fbl_else.2 
	ilw.s	%r0 %f1 l.14
	add.s	%f1 %f0 %f0
	j	cos.0
fbl_else.2 :
	fbg	%f1 %f0 fble_else.9 
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.25
	ilw.s	%r0 %f2 l.13
	ilw.s	%r0 %f3 l.17
	fbg	%f3 %f0 fble_else.10 
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f1 l.16
	ilw.s	%r0 %f2 l.18
	fbg	%f0 %f2 fble_else.11 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.19
	ilw.s	%r0 %f3 l.20
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.21
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.16
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.11 :
	ilw.s	%r0 %f2 l.17
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.22
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.23
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.24
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.16
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.10 :
	ilw.s	%r0 %f2 l.18
	fbg	%f0 %f2 fble_else.12 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.19
	ilw.s	%r0 %f3 l.20
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.21
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.16
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.12 :
	ilw.s	%r0 %f2 l.17
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.22
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.23
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.24
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.16
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.9 :
	ilw.s	%r0 %f1 l.16
	ilw.s	%r0 %f2 l.13
	ilw.s	%r0 %f3 l.17
	fbg	%f3 %f0 fble_else.13 
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f1 l.25
	ilw.s	%r0 %f2 l.18
	fbg	%f0 %f2 fble_else.14 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.19
	ilw.s	%r0 %f3 l.20
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.21
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.16
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.14 :
	ilw.s	%r0 %f2 l.17
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.22
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.23
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.24
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.16
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.13 :
	ilw.s	%r0 %f2 l.18
	fbg	%f0 %f2 fble_else.15 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.19
	ilw.s	%r0 %f3 l.20
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.21
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.16
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.15 :
	ilw.s	%r0 %f2 l.17
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.22
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.23
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.24
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.16
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
read_object.0 :
	addi	%r0 %r2 60
	bge	%r1 %r2 bl_else.4 
	in	%r2
	addi	%r0 %r3 -1
	sw	%r26 %r1 -0
	beq	%r2 %r3 bne_else.0 
	in	%r3
	in	%r4
	in	%r5
	addi	%r0 %r6 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r2 -4
	sw	%r26 %r4 -8
	sw	%r26 %r3 -12
	sw	%r26 %r5 -16
	mov	%r6 %r1
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	min_caml_create_float_array 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	fin	%f0
	addi	%r1 %r2 0
	sw.s	%r2 %f0 0
	fin	%f0
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	fin	%f0
	addi	%r1 %r2 8
	sw.s	%r2 %f0 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -20
	mov	%r2 %r1
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	min_caml_create_float_array 
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	fin	%f0
	addi	%r1 %r2 0
	sw.s	%r2 %f0 0
	fin	%f0
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	fin	%f0
	addi	%r1 %r2 8
	sw.s	%r2 %f0 0
	fin	%f0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.3 
	addi	%r0 %r2 1
	j	fbl_cont.1 
fbl_else.3 :
	addi	%r0 %r2 0
fbl_cont.1 :
	addi	%r0 %r3 2
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -24
	sw	%r26 %r2 -28
	mov	%r3 %r1
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	min_caml_create_float_array 
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	fin	%f0
	addi	%r1 %r2 0
	sw.s	%r2 %f0 0
	fin	%f0
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -32
	mov	%r2 %r1
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	min_caml_create_float_array 
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	fin	%f0
	addi	%r1 %r2 0
	sw.s	%r2 %f0 0
	fin	%f0
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	fin	%f0
	addi	%r1 %r2 8
	sw.s	%r2 %f0 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -36
	mov	%r2 %r1
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	min_caml_create_float_array 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	addi	%r0 %r2 0
	lw	%r26 %r3 -16
	beq	%r3 %r2 bne_else.1 
	fin	%f0
	ilw.s	%r0 %f1 l.26
	mul.s	%f1 %f0 %f0
	addi	%r1 %r2 0
	sw.s	%r2 %f0 0
	fin	%f0
	ilw.s	%r0 %f1 l.26
	mul.s	%f1 %f0 %f0
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	fin	%f0
	ilw.s	%r0 %f1 l.26
	mul.s	%f1 %f0 %f0
	addi	%r1 %r2 8
	sw.s	%r2 %f0 0
	j	bne_cont.1 
bne_else.1 :
bne_cont.1 :
	addi	%r0 %r2 2
	lw	%r26 %r4 -12
	bne	%r4 %r2 beq_else.4 
	addi	%r0 %r2 1
	j	beq_cont.4 
beq_else.4 :
	lw	%r26 %r2 -28
beq_cont.4 :
	addi	%r0 %r5 4
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r2 -40
	sw	%r26 %r1 -44
	mov	%r5 %r1
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	min_caml_create_float_array 
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	mov	%r27 %r2
	addi	%r27 %r27 44
	sw	%r2 %r1 40
	lw	%r26 %r1 -44
	sw	%r2 %r1 36
	lw	%r26 %r3 -36
	sw	%r2 %r3 32
	lw	%r26 %r3 -32
	sw	%r2 %r3 28
	lw	%r26 %r3 -40
	sw	%r2 %r3 24
	lw	%r26 %r3 -24
	sw	%r2 %r3 20
	lw	%r26 %r3 -20
	sw	%r2 %r3 16
	lw	%r26 %r4 -16
	sw	%r2 %r4 12
	lw	%r26 %r5 -8
	sw	%r2 %r5 8
	lw	%r26 %r5 -12
	sw	%r2 %r5 4
	lw	%r26 %r6 -4
	sw	%r2 %r6 0
	lw	%r26 %r6 -0
	slli	%r6 %r7 2
	addi	%r7 %r7 48
	sw	%r7 %r2 0
	addi	%r0 %r2 3
	bne	%r5 %r2 beq_else.5 
	addi	%r3 %r2 0
	lw.s	%r2 %f0 0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.0 
	addi	%r0 %r2 1
	j	fbeq_cont.0 
fbeq_else.0 :
	addi	%r0 %r2 0
fbeq_cont.0 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.6 
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.1 
	addi	%r0 %r2 1
	j	fbeq_cont.1 
fbeq_else.1 :
	addi	%r0 %r2 0
fbeq_cont.1 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.7 
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.4 
	addi	%r0 %r2 1
	j	fbl_cont.2 
fbl_else.4 :
	addi	%r0 %r2 0
fbl_cont.2 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.8 
	ilw.s	%r0 %f1 l.25
	j	beq_cont.8 
beq_else.8 :
	ilw.s	%r0 %f1 l.16
beq_cont.8 :
	j	beq_cont.7 
beq_else.7 :
	ilw.s	%r0 %f1 l.15
beq_cont.7 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.6 
beq_else.6 :
	ilw.s	%r0 %f0 l.15
beq_cont.6 :
	addi	%r3 %r2 0
	sw.s	%r2 %f0 0
	addi	%r3 %r2 4
	lw.s	%r2 %f0 0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.2 
	addi	%r0 %r2 1
	j	fbeq_cont.2 
fbeq_else.2 :
	addi	%r0 %r2 0
fbeq_cont.2 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.9 
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.3 
	addi	%r0 %r2 1
	j	fbeq_cont.3 
fbeq_else.3 :
	addi	%r0 %r2 0
fbeq_cont.3 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.10 
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.5 
	addi	%r0 %r2 1
	j	fbl_cont.3 
fbl_else.5 :
	addi	%r0 %r2 0
fbl_cont.3 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.11 
	ilw.s	%r0 %f1 l.25
	j	beq_cont.11 
beq_else.11 :
	ilw.s	%r0 %f1 l.16
beq_cont.11 :
	j	beq_cont.10 
beq_else.10 :
	ilw.s	%r0 %f1 l.15
beq_cont.10 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.9 
beq_else.9 :
	ilw.s	%r0 %f0 l.15
beq_cont.9 :
	addi	%r3 %r2 4
	sw.s	%r2 %f0 0
	addi	%r3 %r2 8
	lw.s	%r2 %f0 0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.4 
	addi	%r0 %r2 1
	j	fbeq_cont.4 
fbeq_else.4 :
	addi	%r0 %r2 0
fbeq_cont.4 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.12 
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.5 
	addi	%r0 %r2 1
	j	fbeq_cont.5 
fbeq_else.5 :
	addi	%r0 %r2 0
fbeq_cont.5 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.13 
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.6 
	addi	%r0 %r2 1
	j	fbl_cont.4 
fbl_else.6 :
	addi	%r0 %r2 0
fbl_cont.4 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.14 
	ilw.s	%r0 %f1 l.25
	j	beq_cont.14 
beq_else.14 :
	ilw.s	%r0 %f1 l.16
beq_cont.14 :
	j	beq_cont.13 
beq_else.13 :
	ilw.s	%r0 %f1 l.15
beq_cont.13 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.12 
beq_else.12 :
	ilw.s	%r0 %f0 l.15
beq_cont.12 :
	addi	%r3 %r2 8
	sw.s	%r2 %f0 0
	j	beq_cont.5 
beq_else.5 :
	addi	%r0 %r2 2
	bne	%r5 %r2 beq_else.15 
	addi	%r0 %r2 0
	lw	%r26 %r5 -28
	bne	%r5 %r2 beq_else.16 
	addi	%r0 %r2 1
	j	beq_cont.16 
beq_else.16 :
	addi	%r0 %r2 0
beq_cont.16 :
	addi	%r3 %r5 0
	lw.s	%r5 %f0 0
	mul.s	%f0 %f0 %f0
	addi	%r3 %r5 4
	lw.s	%r5 %f1 0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r3 %r5 8
	lw.s	%r5 %f1 0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.15
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
	ilw.s	%r0 %f1 l.16
	div.s	%f0 %f1 %f0
	j	beq_cont.18 
beq_else.18 :
	ilw.s	%r0 %f1 l.25
	div.s	%f0 %f1 %f0
beq_cont.18 :
	j	beq_cont.17 
beq_else.17 :
	ilw.s	%r0 %f0 l.16
beq_cont.17 :
	addi	%r3 %r2 0
	lw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r3 %r2 0
	sw.s	%r2 %f1 0
	addi	%r3 %r2 4
	lw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r3 %r2 4
	sw.s	%r2 %f1 0
	addi	%r3 %r2 8
	lw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r3 %r2 8
	sw.s	%r2 %f0 0
	j	beq_cont.15 
beq_else.15 :
beq_cont.15 :
beq_cont.5 :
	addi	%r0 %r2 0
	beq	%r4 %r2 bne_else.2 
	addi	%r1 %r2 0
	lw.s	%r2 %f0 0
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	cos.0 
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw	%r26 %r1 -44
	addi	%r1 %r2 0
	lw.s	%r2 %f1 0
	sw.s	%r26 %f0 -48
	mov.s	%f1 %f0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	sin.0 
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r1 -44
	addi	%r1 %r2 4
	lw.s	%r2 %f1 0
	sw.s	%r26 %f0 -56
	mov.s	%f1 %f0
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	cos.0 
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw	%r26 %r1 -44
	addi	%r1 %r2 4
	lw.s	%r2 %f1 0
	sw.s	%r26 %f0 -64
	mov.s	%f1 %f0
	sw	%r26 %r28 -72
	addi	%r26 %r26 -76
	jal	sin.0 
	addi	%r26 %r26 76
	lw	%r26 %r28 -72
	lw	%r26 %r1 -44
	addi	%r1 %r2 8
	lw.s	%r2 %f1 0
	sw.s	%r26 %f0 -72
	mov.s	%f1 %f0
	sw	%r26 %r28 -80
	addi	%r26 %r26 -84
	jal	cos.0 
	addi	%r26 %r26 84
	lw	%r26 %r28 -80
	lw	%r26 %r1 -44
	addi	%r1 %r2 8
	lw.s	%r2 %f1 0
	sw.s	%r26 %f0 -80
	mov.s	%f1 %f0
	sw	%r26 %r28 -88
	addi	%r26 %r26 -92
	jal	sin.0 
	addi	%r26 %r26 92
	lw	%r26 %r28 -88
	lw.s	%r26 %f1 -80
	lw.s	%r26 %f2 -64
	mul.s	%f1 %f2 %f3
	lw.s	%r26 %f4 -72
	lw.s	%r26 %f5 -56
	mul.s	%f4 %f5 %f6
	mul.s	%f1 %f6 %f6
	lw.s	%r26 %f7 -48
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
	lw	%r26 %r1 -20
	addi	%r1 %r2 0
	lw.s	%r2 %f5 0
	addi	%r1 %r2 4
	lw.s	%r2 %f7 0
	addi	%r1 %r2 8
	lw.s	%r2 %f11 0
	mul.s	%f3 %f3 %f12
	mul.s	%f12 %f5 %f12
	mul.s	%f9 %f9 %f13
	mul.s	%f13 %f7 %f13
	add.s	%f13 %f12 %f12
	mul.s	%f1 %f1 %f13
	mul.s	%f13 %f11 %f13
	add.s	%f13 %f12 %f12
	addi	%r1 %r2 0
	sw.s	%r2 %f12 0
	mul.s	%f6 %f6 %f12
	mul.s	%f12 %f5 %f12
	mul.s	%f10 %f10 %f13
	mul.s	%f13 %f7 %f13
	add.s	%f13 %f12 %f12
	mul.s	%f4 %f4 %f13
	mul.s	%f13 %f11 %f13
	add.s	%f13 %f12 %f12
	addi	%r1 %r2 4
	sw.s	%r2 %f12 0
	mul.s	%f8 %f8 %f12
	mul.s	%f12 %f5 %f12
	mul.s	%f0 %f0 %f13
	mul.s	%f13 %f7 %f13
	add.s	%f13 %f12 %f12
	mul.s	%f2 %f2 %f13
	mul.s	%f13 %f11 %f13
	add.s	%f13 %f12 %f12
	addi	%r1 %r1 8
	sw.s	%r1 %f12 0
	ilw.s	%r0 %f12 l.27
	mul.s	%f6 %f5 %f13
	mul.s	%f8 %f13 %f13
	mul.s	%f10 %f7 %f14
	mul.s	%f0 %f14 %f14
	add.s	%f14 %f13 %f13
	mul.s	%f4 %f11 %f14
	mul.s	%f2 %f14 %f14
	add.s	%f14 %f13 %f13
	mul.s	%f13 %f12 %f12
	lw	%r26 %r1 -44
	addi	%r1 %r2 0
	sw.s	%r2 %f12 0
	ilw.s	%r0 %f12 l.27
	mul.s	%f3 %f5 %f13
	mul.s	%f8 %f13 %f8
	mul.s	%f9 %f7 %f13
	mul.s	%f0 %f13 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f1 %f11 %f8
	mul.s	%f2 %f8 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f0 %f12 %f0
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	ilw.s	%r0 %f0 l.27
	mul.s	%f3 %f5 %f2
	mul.s	%f6 %f2 %f2
	mul.s	%f9 %f7 %f3
	mul.s	%f10 %f3 %f3
	add.s	%f3 %f2 %f2
	mul.s	%f1 %f11 %f1
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f1 %f0 %f0
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
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
	lw	%r26 %r1 -0
	sw	%r0 %r1 0
	retl
beq_else.19 :
	lw	%r26 %r1 -0
	addi	%r1 %r1 1
	j	read_object.0
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
	sw	%r26 %r2 -0
	sw	%r26 %r1 -4
	mov	%r3 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	read_net_item.0 
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r2 -4
	slli	%r2 %r2 2
	add	%r1 %r2 %r2
	lw	%r26 %r3 -0
	sw	%r2 %r3 0
	retl
read_or_network.0 :
	addi	%r0 %r2 0
	sw	%r26 %r1 -0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	read_net_item.0 
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	mov	%r1 %r2
	addi	%r2 %r1 0
	lw	%r1 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.21 
	lw	%r26 %r1 -0
	addi	%r1 %r1 1
	j	min_caml_create_array
beq_else.21 :
	lw	%r26 %r1 -0
	addi	%r1 %r3 1
	sw	%r26 %r2 -4
	mov	%r3 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	read_or_network.0 
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r2 -0
	slli	%r2 %r2 2
	add	%r1 %r2 %r2
	lw	%r26 %r3 -4
	sw	%r2 %r3 0
	retl
read_and_network.0 :
	addi	%r0 %r2 0
	sw	%r26 %r1 -0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	read_net_item.0 
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	addi	%r1 %r2 0
	lw	%r2 %r2 0
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.22 
	retl
beq_else.22 :
	lw	%r26 %r2 -0
	slli	%r2 %r3 2
	addi	%r3 %r3 332
	sw	%r3 %r1 0
	addi	%r2 %r1 1
	j	read_and_network.0
iter_setup_dirvec_constants.0 :
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.1 
	slli	%r2 %r3 2
	addi	%r3 %r3 48
	lw	%r3 %r3 0
	lw	%r1 %r4 4
	lw	%r1 %r5 0
	lw	%r3 %r6 4
	addi	%r0 %r7 1
	sw	%r26 %r1 -0
	bne	%r6 %r7 beq_else.23 
	addi	%r0 %r6 6
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r4 -4
	sw	%r26 %r2 -8
	sw	%r26 %r3 -12
	sw	%r26 %r5 -16
	mov	%r6 %r1
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	min_caml_create_float_array 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r2 -16
	addi	%r2 %r3 0
	lw.s	%r3 %f0 0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.7 
	addi	%r0 %r3 1
	j	fbeq_cont.7 
fbeq_else.7 :
	addi	%r0 %r3 0
fbeq_cont.7 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.24 
	lw	%r26 %r3 -12
	lw	%r3 %r4 24
	addi	%r2 %r5 0
	lw.s	%r5 %f0 0
	ilw.s	%r0 %f1 l.15
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
	addi	%r5 %r5 0
	lw.s	%r5 %f0 0
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.27 
	neg.s	%f0 %f0
	j	beq_cont.23 
beq_else.27 :
beq_cont.23 :
	addi	%r1 %r4 0
	sw.s	%r4 %f0 0
	ilw.s	%r0 %f0 l.16
	addi	%r2 %r4 0
	lw.s	%r4 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r1 %r4 4
	sw.s	%r4 %f0 0
	j	beq_cont.20 
beq_else.24 :
	ilw.s	%r0 %f0 l.15
	addi	%r1 %r3 4
	sw.s	%r3 %f0 0
beq_cont.20 :
	addi	%r2 %r3 4
	lw.s	%r3 %f0 0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.8 
	addi	%r0 %r3 1
	j	fbeq_cont.8 
fbeq_else.8 :
	addi	%r0 %r3 0
fbeq_cont.8 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.28 
	lw	%r26 %r3 -12
	lw	%r3 %r4 24
	addi	%r2 %r5 4
	lw.s	%r5 %f0 0
	ilw.s	%r0 %f1 l.15
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
	addi	%r5 %r5 4
	lw.s	%r5 %f0 0
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.31 
	neg.s	%f0 %f0
	j	beq_cont.27 
beq_else.31 :
beq_cont.27 :
	addi	%r1 %r4 8
	sw.s	%r4 %f0 0
	ilw.s	%r0 %f0 l.16
	addi	%r2 %r4 4
	lw.s	%r4 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r1 %r4 12
	sw.s	%r4 %f0 0
	j	beq_cont.24 
beq_else.28 :
	ilw.s	%r0 %f0 l.15
	addi	%r1 %r3 12
	sw.s	%r3 %f0 0
beq_cont.24 :
	addi	%r2 %r3 8
	lw.s	%r3 %f0 0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.9 
	addi	%r0 %r3 1
	j	fbeq_cont.9 
fbeq_else.9 :
	addi	%r0 %r3 0
fbeq_cont.9 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.32 
	lw	%r26 %r3 -12
	lw	%r3 %r4 24
	addi	%r2 %r5 8
	lw.s	%r5 %f0 0
	ilw.s	%r0 %f1 l.15
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
	addi	%r3 %r3 8
	lw.s	%r3 %f0 0
	addi	%r0 %r3 0
	bne	%r4 %r3 beq_else.35 
	neg.s	%f0 %f0
	j	beq_cont.31 
beq_else.35 :
beq_cont.31 :
	addi	%r1 %r3 16
	sw.s	%r3 %f0 0
	ilw.s	%r0 %f0 l.16
	addi	%r2 %r2 8
	lw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r1 %r2 20
	sw.s	%r2 %f0 0
	j	beq_cont.28 
beq_else.32 :
	ilw.s	%r0 %f0 l.15
	addi	%r1 %r2 20
	sw.s	%r2 %f0 0
beq_cont.28 :
	lw	%r26 %r2 -8
	slli	%r2 %r3 2
	lw	%r26 %r4 -4
	add	%r4 %r3 %r3
	sw	%r3 %r1 0
	j	beq_cont.19 
beq_else.23 :
	addi	%r0 %r7 2
	bne	%r6 %r7 beq_else.36 
	addi	%r0 %r6 4
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r4 -4
	sw	%r26 %r2 -8
	sw	%r26 %r3 -12
	sw	%r26 %r5 -16
	mov	%r6 %r1
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	min_caml_create_float_array 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r2 -16
	addi	%r2 %r3 0
	lw.s	%r3 %f0 0
	lw	%r26 %r3 -12
	lw	%r3 %r4 16
	addi	%r4 %r4 0
	lw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r2 %r4 4
	lw.s	%r4 %f1 0
	lw	%r3 %r4 16
	addi	%r4 %r4 4
	lw.s	%r4 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r2 %r2 8
	lw.s	%r2 %f1 0
	lw	%r3 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.10 
	addi	%r0 %r2 1
	j	fbl_cont.8 
fbl_else.10 :
	addi	%r0 %r2 0
fbl_cont.8 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.37 
	ilw.s	%r0 %f0 l.15
	addi	%r1 %r2 0
	sw.s	%r2 %f0 0
	j	beq_cont.33 
beq_else.37 :
	ilw.s	%r0 %f1 l.25
	div.s	%f0 %f1 %f1
	addi	%r1 %r2 0
	sw.s	%r2 %f1 0
	lw	%r3 %r2 16
	addi	%r2 %r2 0
	lw.s	%r2 %f1 0
	div.s	%f0 %f1 %f1
	neg.s	%f1 %f1
	addi	%r1 %r2 4
	sw.s	%r2 %f1 0
	lw	%r3 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f1 0
	div.s	%f0 %f1 %f1
	neg.s	%f1 %f1
	addi	%r1 %r2 8
	sw.s	%r2 %f1 0
	lw	%r3 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	addi	%r1 %r2 12
	sw.s	%r2 %f0 0
beq_cont.33 :
	lw	%r26 %r2 -8
	slli	%r2 %r3 2
	lw	%r26 %r4 -4
	add	%r4 %r3 %r3
	sw	%r3 %r1 0
	j	beq_cont.32 
beq_else.36 :
	addi	%r0 %r6 5
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r4 -4
	sw	%r26 %r2 -8
	sw	%r26 %r3 -12
	sw	%r26 %r5 -16
	mov	%r6 %r1
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	min_caml_create_float_array 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r2 -16
	addi	%r2 %r3 0
	lw.s	%r3 %f0 0
	addi	%r2 %r3 4
	lw.s	%r3 %f1 0
	addi	%r2 %r3 8
	lw.s	%r3 %f2 0
	mul.s	%f0 %f0 %f3
	lw	%r26 %r3 -12
	lw	%r3 %r4 16
	addi	%r4 %r4 0
	lw.s	%r4 %f4 0
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f1 %f4
	lw	%r3 %r4 16
	addi	%r4 %r4 4
	lw.s	%r4 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f4
	lw	%r3 %r4 16
	addi	%r4 %r4 8
	lw.s	%r4 %f5 0
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
	addi	%r4 %r4 0
	lw.s	%r4 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f0 %f2 %f2
	lw	%r3 %r4 36
	addi	%r4 %r4 4
	lw.s	%r4 %f4 0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f3 %f2
	mul.s	%f1 %f0 %f0
	lw	%r3 %r4 36
	addi	%r4 %r4 8
	lw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.34 :
	addi	%r2 %r4 0
	lw.s	%r4 %f1 0
	lw	%r3 %r4 16
	addi	%r4 %r4 0
	lw.s	%r4 %f2 0
	mul.s	%f2 %f1 %f1
	neg.s	%f1 %f1
	addi	%r2 %r4 4
	lw.s	%r4 %f2 0
	lw	%r3 %r4 16
	addi	%r4 %r4 4
	lw.s	%r4 %f3 0
	mul.s	%f3 %f2 %f2
	neg.s	%f2 %f2
	addi	%r2 %r4 8
	lw.s	%r4 %f3 0
	lw	%r3 %r4 16
	addi	%r4 %r4 8
	lw.s	%r4 %f4 0
	mul.s	%f4 %f3 %f3
	neg.s	%f3 %f3
	addi	%r1 %r4 0
	sw.s	%r4 %f0 0
	lw	%r3 %r4 12
	addi	%r0 %r5 0
	beq	%r4 %r5 bne_else.3 
	addi	%r2 %r4 8
	lw.s	%r4 %f4 0
	lw	%r3 %r4 36
	addi	%r4 %r4 4
	lw.s	%r4 %f5 0
	mul.s	%f5 %f4 %f4
	addi	%r2 %r4 4
	lw.s	%r4 %f5 0
	lw	%r3 %r4 36
	addi	%r4 %r4 8
	lw.s	%r4 %f6 0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f4 %f4
	ilw.s	%r0 %f5 l.27
	div.s	%f5 %f4 %f4
	sub.s	%f4 %f1 %f1
	addi	%r1 %r4 4
	sw.s	%r4 %f1 0
	addi	%r2 %r4 8
	lw.s	%r4 %f1 0
	lw	%r3 %r4 36
	addi	%r4 %r4 0
	lw.s	%r4 %f4 0
	mul.s	%f4 %f1 %f1
	addi	%r2 %r4 0
	lw.s	%r4 %f4 0
	lw	%r3 %r4 36
	addi	%r4 %r4 8
	lw.s	%r4 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f1 %f1
	ilw.s	%r0 %f4 l.27
	div.s	%f4 %f1 %f1
	sub.s	%f1 %f2 %f1
	addi	%r1 %r4 8
	sw.s	%r4 %f1 0
	addi	%r2 %r4 4
	lw.s	%r4 %f1 0
	lw	%r3 %r4 36
	addi	%r4 %r4 0
	lw.s	%r4 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r2 %r2 0
	lw.s	%r2 %f2 0
	lw	%r3 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f4 0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.27
	div.s	%f2 %f1 %f1
	sub.s	%f1 %f3 %f1
	addi	%r1 %r2 12
	sw.s	%r2 %f1 0
	j	bne_cont.3 
bne_else.3 :
	addi	%r1 %r2 4
	sw.s	%r2 %f1 0
	addi	%r1 %r2 8
	sw.s	%r2 %f2 0
	addi	%r1 %r2 12
	sw.s	%r2 %f3 0
bne_cont.3 :
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.10 
	addi	%r0 %r2 1
	j	fbeq_cont.10 
fbeq_else.10 :
	addi	%r0 %r2 0
fbeq_cont.10 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.39 
	ilw.s	%r0 %f1 l.16
	div.s	%f0 %f1 %f0
	addi	%r1 %r2 16
	sw.s	%r2 %f0 0
	j	beq_cont.35 
beq_else.39 :
beq_cont.35 :
	lw	%r26 %r2 -8
	slli	%r2 %r3 2
	lw	%r26 %r4 -4
	add	%r4 %r3 %r3
	sw	%r3 %r1 0
beq_cont.32 :
beq_cont.19 :
	addi	%r2 %r2 -1
	lw	%r26 %r1 -0
	j	iter_setup_dirvec_constants.0
ble_else.1 :
	retl
setup_startp_constants.0 :
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.2 
	slli	%r2 %r3 2
	addi	%r3 %r3 48
	lw	%r3 %r3 0
	lw	%r3 %r4 40
	lw	%r3 %r5 4
	addi	%r1 %r6 0
	lw.s	%r6 %f0 0
	lw	%r3 %r6 20
	addi	%r6 %r6 0
	lw.s	%r6 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r4 %r6 0
	sw.s	%r6 %f0 0
	addi	%r1 %r6 4
	lw.s	%r6 %f0 0
	lw	%r3 %r6 20
	addi	%r6 %r6 4
	lw.s	%r6 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r4 %r6 4
	sw.s	%r6 %f0 0
	addi	%r1 %r6 8
	lw.s	%r6 %f0 0
	lw	%r3 %r6 20
	addi	%r6 %r6 8
	lw.s	%r6 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r4 %r6 8
	sw.s	%r6 %f0 0
	addi	%r0 %r6 2
	bne	%r5 %r6 beq_else.40 
	lw	%r3 %r3 16
	addi	%r4 %r5 0
	lw.s	%r5 %f0 0
	addi	%r4 %r5 4
	lw.s	%r5 %f1 0
	addi	%r4 %r5 8
	lw.s	%r5 %f2 0
	addi	%r3 %r5 0
	lw.s	%r5 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r3 %r5 4
	lw.s	%r5 %f3 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	addi	%r3 %r3 8
	lw.s	%r3 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r4 %r3 12
	sw.s	%r3 %f0 0
	j	beq_cont.36 
beq_else.40 :
	addi	%r0 %r6 2
	bge	%r6 %r5 bl_else.5 
	addi	%r4 %r6 0
	lw.s	%r6 %f0 0
	addi	%r4 %r6 4
	lw.s	%r6 %f1 0
	addi	%r4 %r6 8
	lw.s	%r6 %f2 0
	mul.s	%f0 %f0 %f3
	lw	%r3 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f1 %f4
	lw	%r3 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f4
	lw	%r3 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f5 0
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
	addi	%r6 %r6 0
	lw.s	%r6 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f0 %f2 %f2
	lw	%r3 %r6 36
	addi	%r6 %r6 4
	lw.s	%r6 %f4 0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f3 %f2
	mul.s	%f1 %f0 %f0
	lw	%r3 %r3 36
	addi	%r3 %r3 8
	lw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.37 :
	addi	%r0 %r3 3
	bne	%r5 %r3 beq_else.42 
	ilw.s	%r0 %f1 l.16
	sub.s	%f1 %f0 %f0
	j	beq_cont.38 
beq_else.42 :
beq_cont.38 :
	addi	%r4 %r3 12
	sw.s	%r3 %f0 0
	j	bl_cont.4 
bl_else.5 :
bl_cont.4 :
beq_cont.36 :
	addi	%r2 %r2 -1
	j	setup_startp_constants.0
ble_else.2 :
	retl
check_all_inside.0 :
	slli	%r1 %r3 2
	add	%r2 %r3 %r3
	lw	%r3 %r3 0
	addi	%r0 %r4 -1
	bne	%r3 %r4 beq_else.43 
	addi	%r0 %r1 1
	retl
beq_else.43 :
	slli	%r3 %r3 2
	addi	%r3 %r3 48
	lw	%r3 %r3 0
	lw	%r3 %r4 20
	addi	%r4 %r4 0
	lw.s	%r4 %f3 0
	sub.s	%f3 %f0 %f3
	lw	%r3 %r4 20
	addi	%r4 %r4 4
	lw.s	%r4 %f4 0
	sub.s	%f4 %f1 %f4
	lw	%r3 %r4 20
	addi	%r4 %r4 8
	lw.s	%r4 %f5 0
	sub.s	%f5 %f2 %f5
	lw	%r3 %r4 4
	addi	%r0 %r5 1
	bne	%r4 %r5 beq_else.44 
	ilw.s	%r0 %f6 l.15
	fbge	%f3 %f6 fbl_else.11 
	neg.s	%f3 %f3
	j	fbl_cont.9 
fbl_else.11 :
fbl_cont.9 :
	lw	%r3 %r4 16
	addi	%r4 %r4 0
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
	ilw.s	%r0 %f3 l.15
	fbge	%f4 %f3 fbl_else.13 
	neg.s	%f4 %f3
	j	fbl_cont.11 
fbl_else.13 :
	mov.s	%f4 %f3
fbl_cont.11 :
	lw	%r3 %r4 16
	addi	%r4 %r4 4
	lw.s	%r4 %f4 0
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
	ilw.s	%r0 %f3 l.15
	fbge	%f5 %f3 fbl_else.15 
	neg.s	%f5 %f3
	j	fbl_cont.13 
fbl_else.15 :
	mov.s	%f5 %f3
fbl_cont.13 :
	lw	%r3 %r4 16
	addi	%r4 %r4 8
	lw.s	%r4 %f4 0
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
	addi	%r4 %r5 0
	lw.s	%r5 %f6 0
	mul.s	%f3 %f6 %f3
	addi	%r4 %r5 4
	lw.s	%r5 %f6 0
	mul.s	%f4 %f6 %f4
	add.s	%f4 %f3 %f3
	addi	%r4 %r4 8
	lw.s	%r4 %f4 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	lw	%r3 %r3 24
	ilw.s	%r0 %f4 l.15
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
	addi	%r4 %r4 0
	lw.s	%r4 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r3 %r4 16
	addi	%r4 %r4 4
	lw.s	%r4 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r3 %r4 16
	addi	%r4 %r4 8
	lw.s	%r4 %f8 0
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
	addi	%r4 %r4 0
	lw.s	%r4 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r3 %r4 36
	addi	%r4 %r4 4
	lw.s	%r4 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r3 %r4 36
	addi	%r4 %r4 8
	lw.s	%r4 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
beq_cont.48 :
	lw	%r3 %r4 4
	addi	%r0 %r5 3
	bne	%r4 %r5 beq_else.54 
	ilw.s	%r0 %f4 l.16
	sub.s	%f4 %f3 %f3
	j	beq_cont.49 
beq_else.54 :
beq_cont.49 :
	lw	%r3 %r3 24
	ilw.s	%r0 %f4 l.15
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
	j	check_all_inside.0
beq_else.58 :
	addi	%r0 %r1 0
	retl
shadow_check_and_group.0 :
	slli	%r1 %r3 2
	add	%r2 %r3 %r3
	lw	%r3 %r3 0
	addi	%r0 %r4 -1
	bne	%r3 %r4 beq_else.59 
	addi	%r0 %r1 0
	retl
beq_else.59 :
	slli	%r1 %r3 2
	add	%r2 %r3 %r3
	lw	%r3 %r3 0
	slli	%r3 %r4 2
	addi	%r4 %r4 48
	lw	%r4 %r4 0
	addi	%r0 %r5 552
	lw.s	%r5 %f0 552
	lw	%r4 %r5 20
	addi	%r5 %r5 0
	lw.s	%r5 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r5 556
	lw.s	%r5 %f1 556
	lw	%r4 %r5 20
	addi	%r5 %r5 4
	lw.s	%r5 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r5 560
	lw.s	%r5 %f2 560
	lw	%r4 %r5 20
	addi	%r5 %r5 8
	lw.s	%r5 %f3 0
	sub.s	%f3 %f2 %f2
	slli	%r3 %r5 2
	addi	%r5 %r5 748
	lw	%r5 %r5 0
	lw	%r4 %r6 4
	addi	%r0 %r7 1
	bne	%r6 %r7 beq_else.60 
	addi	%r5 %r6 0
	lw.s	%r6 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r5 %r6 4
	lw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r6 740
	lw.s	%r6 %f4 740
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.19 
	neg.s	%f4 %f4
	j	fbl_cont.17 
fbl_else.19 :
fbl_cont.17 :
	lw	%r4 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.20 
	addi	%r0 %r6 1
	j	fbl_cont.18 
fbl_else.20 :
	addi	%r0 %r6 0
fbl_cont.18 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.61 
	addi	%r0 %r6 0
	j	beq_cont.54 
beq_else.61 :
	addi	%r0 %r6 744
	lw.s	%r6 %f4 744
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.21 
	neg.s	%f4 %f4
	j	fbl_cont.19 
fbl_else.21 :
fbl_cont.19 :
	lw	%r4 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.22 
	addi	%r0 %r6 1
	j	fbl_cont.20 
fbl_else.22 :
	addi	%r0 %r6 0
fbl_cont.20 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.62 
	addi	%r0 %r6 0
	j	beq_cont.55 
beq_else.62 :
	addi	%r5 %r6 4
	lw.s	%r6 %f4 0
	ilw.s	%r0 %f5 l.15
	fbne	%f4 %f5 fbeq_else.11 
	addi	%r0 %r6 1
	j	fbeq_cont.11 
fbeq_else.11 :
	addi	%r0 %r6 0
fbeq_cont.11 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.63 
	addi	%r0 %r6 1
	j	beq_cont.56 
beq_else.63 :
	addi	%r0 %r6 0
beq_cont.56 :
beq_cont.55 :
beq_cont.54 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.64 
	addi	%r5 %r6 8
	lw.s	%r6 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r5 %r6 12
	lw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r6 736
	lw.s	%r6 %f4 736
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.23 
	neg.s	%f4 %f4
	j	fbl_cont.21 
fbl_else.23 :
fbl_cont.21 :
	lw	%r4 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.24 
	addi	%r0 %r6 1
	j	fbl_cont.22 
fbl_else.24 :
	addi	%r0 %r6 0
fbl_cont.22 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.65 
	addi	%r0 %r6 0
	j	beq_cont.58 
beq_else.65 :
	addi	%r0 %r6 744
	lw.s	%r6 %f4 744
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.25 
	neg.s	%f4 %f4
	j	fbl_cont.23 
fbl_else.25 :
fbl_cont.23 :
	lw	%r4 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.26 
	addi	%r0 %r6 1
	j	fbl_cont.24 
fbl_else.26 :
	addi	%r0 %r6 0
fbl_cont.24 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.66 
	addi	%r0 %r6 0
	j	beq_cont.59 
beq_else.66 :
	addi	%r5 %r6 12
	lw.s	%r6 %f4 0
	ilw.s	%r0 %f5 l.15
	fbne	%f4 %f5 fbeq_else.12 
	addi	%r0 %r6 1
	j	fbeq_cont.12 
fbeq_else.12 :
	addi	%r0 %r6 0
fbeq_cont.12 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.67 
	addi	%r0 %r6 1
	j	beq_cont.60 
beq_else.67 :
	addi	%r0 %r6 0
beq_cont.60 :
beq_cont.59 :
beq_cont.58 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.68 
	addi	%r5 %r6 16
	lw.s	%r6 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r5 %r6 20
	lw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r6 736
	lw.s	%r6 %f3 736
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.15
	fbge	%f0 %f3 fbl_else.27 
	neg.s	%f0 %f0
	j	fbl_cont.25 
fbl_else.27 :
fbl_cont.25 :
	lw	%r4 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f3 0
	fbge	%f0 %f3 fbl_else.28 
	addi	%r0 %r6 1
	j	fbl_cont.26 
fbl_else.28 :
	addi	%r0 %r6 0
fbl_cont.26 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.69 
	addi	%r0 %r4 0
	j	beq_cont.62 
beq_else.69 :
	addi	%r0 %r6 740
	lw.s	%r6 %f0 740
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.29 
	neg.s	%f0 %f0
	j	fbl_cont.27 
fbl_else.29 :
fbl_cont.27 :
	lw	%r4 %r4 16
	addi	%r4 %r4 4
	lw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.30 
	addi	%r0 %r4 1
	j	fbl_cont.28 
fbl_else.30 :
	addi	%r0 %r4 0
fbl_cont.28 :
	addi	%r0 %r6 0
	bne	%r4 %r6 beq_else.70 
	addi	%r0 %r4 0
	j	beq_cont.63 
beq_else.70 :
	addi	%r5 %r4 20
	lw.s	%r4 %f0 0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.13 
	addi	%r0 %r4 1
	j	fbeq_cont.13 
fbeq_else.13 :
	addi	%r0 %r4 0
fbeq_cont.13 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.71 
	addi	%r0 %r4 1
	j	beq_cont.64 
beq_else.71 :
	addi	%r0 %r4 0
beq_cont.64 :
beq_cont.63 :
beq_cont.62 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.72 
	addi	%r0 %r4 0
	j	beq_cont.65 
beq_else.72 :
	sw.s	%r0 %f2 540
	addi	%r0 %r4 3
beq_cont.65 :
	j	beq_cont.61 
beq_else.68 :
	sw.s	%r0 %f3 540
	addi	%r0 %r4 2
beq_cont.61 :
	j	beq_cont.57 
beq_else.64 :
	sw.s	%r0 %f3 540
	addi	%r0 %r4 1
beq_cont.57 :
	j	beq_cont.53 
beq_else.60 :
	addi	%r0 %r7 2
	bne	%r6 %r7 beq_else.73 
	addi	%r5 %r4 0
	lw.s	%r4 %f3 0
	ilw.s	%r0 %f4 l.15
	fbge	%f3 %f4 fbl_else.31 
	addi	%r0 %r4 1
	j	fbl_cont.29 
fbl_else.31 :
	addi	%r0 %r4 0
fbl_cont.29 :
	addi	%r0 %r6 0
	bne	%r4 %r6 beq_else.74 
	addi	%r0 %r4 0
	j	beq_cont.67 
beq_else.74 :
	addi	%r5 %r4 4
	lw.s	%r4 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r5 %r4 8
	lw.s	%r4 %f3 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	addi	%r5 %r4 12
	lw.s	%r4 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r4 1
beq_cont.67 :
	j	beq_cont.66 
beq_else.73 :
	addi	%r5 %r6 0
	lw.s	%r6 %f3 0
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.14 
	addi	%r0 %r6 1
	j	fbeq_cont.14 
fbeq_else.14 :
	addi	%r0 %r6 0
fbeq_cont.14 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.75 
	addi	%r5 %r6 4
	lw.s	%r6 %f4 0
	mul.s	%f0 %f4 %f4
	addi	%r5 %r6 8
	lw.s	%r6 %f5 0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f4 %f4
	addi	%r5 %r6 12
	lw.s	%r6 %f5 0
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f4 %f4
	mul.s	%f0 %f0 %f5
	lw	%r4 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r4 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r4 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r4 %r6 12
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.76 
	mov.s	%f5 %f0
	j	beq_cont.69 
beq_else.76 :
	mul.s	%f2 %f1 %f6
	lw	%r4 %r6 36
	addi	%r6 %r6 0
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r4 %r6 36
	addi	%r6 %r6 4
	lw.s	%r6 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r4 %r6 36
	addi	%r6 %r6 8
	lw.s	%r6 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.69 :
	lw	%r4 %r6 4
	addi	%r0 %r7 3
	bne	%r6 %r7 beq_else.77 
	ilw.s	%r0 %f1 l.16
	sub.s	%f1 %f0 %f0
	j	beq_cont.70 
beq_else.77 :
beq_cont.70 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.32 
	addi	%r0 %r6 1
	j	fbl_cont.30 
fbl_else.32 :
	addi	%r0 %r6 0
fbl_cont.30 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.78 
	addi	%r0 %r4 0
	j	beq_cont.71 
beq_else.78 :
	lw	%r4 %r4 24
	addi	%r0 %r6 0
	bne	%r4 %r6 beq_else.79 
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f0
	addi	%r5 %r4 16
	lw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	beq_cont.72 
beq_else.79 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r5 %r4 16
	lw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
beq_cont.72 :
	addi	%r0 %r4 1
beq_cont.71 :
	j	beq_cont.68 
beq_else.75 :
	addi	%r0 %r4 0
beq_cont.68 :
beq_cont.66 :
beq_cont.53 :
	addi	%r0 %r5 540
	lw.s	%r5 %f0 540
	addi	%r0 %r5 0
	beq	%r4 %r5 bne_else.4 
	ilw.s	%r0 %f1 l.28
	fbge	%f0 %f1 fbl_else.33 
	addi	%r0 %r4 1
	j	fbl_cont.31 
fbl_else.33 :
	addi	%r0 %r4 0
fbl_cont.31 :
	j	bne_cont.4 
bne_else.4 :
	addi	%r0 %r4 0
bne_cont.4 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.80 
	slli	%r3 %r3 2
	addi	%r3 %r3 48
	lw	%r3 %r3 0
	lw	%r3 %r3 24
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.81 
	addi	%r0 %r1 0
	retl
beq_else.81 :
	addi	%r1 %r1 1
	j	shadow_check_and_group.0
beq_else.80 :
	ilw.s	%r0 %f1 l.29
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 312
	lw.s	%r3 %f1 312
	mul.s	%f0 %f1 %f1
	addi	%r0 %r3 552
	lw.s	%r3 %f2 552
	add.s	%f2 %f1 %f1
	addi	%r0 %r3 316
	lw.s	%r3 %f2 316
	mul.s	%f0 %f2 %f2
	addi	%r0 %r3 556
	lw.s	%r3 %f3 556
	add.s	%f3 %f2 %f2
	addi	%r0 %r3 320
	lw.s	%r3 %f3 320
	mul.s	%f0 %f3 %f0
	addi	%r0 %r3 560
	lw.s	%r3 %f3 560
	add.s	%f3 %f0 %f0
	addi	%r0 %r3 0
	sw	%r26 %r2 -0
	sw	%r26 %r1 -4
	mov	%r3 %r1
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	check_all_inside.0 
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.82 
	lw	%r26 %r1 -4
	addi	%r1 %r1 1
	lw	%r26 %r2 -0
	j	shadow_check_and_group.0
beq_else.82 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_group.0 :
	slli	%r1 %r3 2
	add	%r2 %r3 %r3
	lw	%r3 %r3 0
	addi	%r0 %r4 -1
	bne	%r3 %r4 beq_else.83 
	addi	%r0 %r1 0
	retl
beq_else.83 :
	slli	%r3 %r3 2
	addi	%r3 %r3 332
	lw	%r3 %r3 0
	addi	%r0 %r4 0
	sw	%r26 %r2 -0
	sw	%r26 %r1 -4
	mov	%r3 %r2
	mov	%r4 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	shadow_check_and_group.0 
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.84 
	lw	%r26 %r1 -4
	addi	%r1 %r1 1
	lw	%r26 %r2 -0
	j	shadow_check_one_or_group.0
beq_else.84 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_matrix.0 :
	slli	%r1 %r3 2
	add	%r2 %r3 %r3
	lw	%r3 %r3 0
	addi	%r3 %r4 0
	lw	%r4 %r4 0
	addi	%r0 %r5 -1
	bne	%r4 %r5 beq_else.85 
	addi	%r0 %r1 0
	retl
beq_else.85 :
	addi	%r0 %r5 99
	sw	%r26 %r3 -0
	sw	%r26 %r2 -4
	sw	%r26 %r1 -8
	bne	%r4 %r5 beq_else.86 
	addi	%r0 %r1 1
	j	beq_cont.73 
beq_else.86 :
	slli	%r4 %r5 2
	addi	%r5 %r5 48
	lw	%r5 %r5 0
	addi	%r0 %r6 552
	lw.s	%r6 %f0 552
	lw	%r5 %r6 20
	addi	%r6 %r6 0
	lw.s	%r6 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r6 556
	lw.s	%r6 %f1 556
	lw	%r5 %r6 20
	addi	%r6 %r6 4
	lw.s	%r6 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r6 560
	lw.s	%r6 %f2 560
	lw	%r5 %r6 20
	addi	%r6 %r6 8
	lw.s	%r6 %f3 0
	sub.s	%f3 %f2 %f2
	slli	%r4 %r4 2
	addi	%r4 %r4 748
	lw	%r4 %r4 0
	lw	%r5 %r6 4
	addi	%r0 %r7 1
	bne	%r6 %r7 beq_else.87 
	addi	%r4 %r6 0
	lw.s	%r6 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r4 %r6 4
	lw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r6 740
	lw.s	%r6 %f4 740
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.34 
	neg.s	%f4 %f4
	j	fbl_cont.32 
fbl_else.34 :
fbl_cont.32 :
	lw	%r5 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.35 
	addi	%r0 %r6 1
	j	fbl_cont.33 
fbl_else.35 :
	addi	%r0 %r6 0
fbl_cont.33 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.88 
	addi	%r0 %r6 0
	j	beq_cont.75 
beq_else.88 :
	addi	%r0 %r6 744
	lw.s	%r6 %f4 744
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.36 
	neg.s	%f4 %f4
	j	fbl_cont.34 
fbl_else.36 :
fbl_cont.34 :
	lw	%r5 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.37 
	addi	%r0 %r6 1
	j	fbl_cont.35 
fbl_else.37 :
	addi	%r0 %r6 0
fbl_cont.35 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.89 
	addi	%r0 %r6 0
	j	beq_cont.76 
beq_else.89 :
	addi	%r4 %r6 4
	lw.s	%r6 %f4 0
	ilw.s	%r0 %f5 l.15
	fbne	%f4 %f5 fbeq_else.15 
	addi	%r0 %r6 1
	j	fbeq_cont.15 
fbeq_else.15 :
	addi	%r0 %r6 0
fbeq_cont.15 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.90 
	addi	%r0 %r6 1
	j	beq_cont.77 
beq_else.90 :
	addi	%r0 %r6 0
beq_cont.77 :
beq_cont.76 :
beq_cont.75 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.91 
	addi	%r4 %r6 8
	lw.s	%r6 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r4 %r6 12
	lw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r6 736
	lw.s	%r6 %f4 736
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.38 
	neg.s	%f4 %f4
	j	fbl_cont.36 
fbl_else.38 :
fbl_cont.36 :
	lw	%r5 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.39 
	addi	%r0 %r6 1
	j	fbl_cont.37 
fbl_else.39 :
	addi	%r0 %r6 0
fbl_cont.37 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.92 
	addi	%r0 %r6 0
	j	beq_cont.79 
beq_else.92 :
	addi	%r0 %r6 744
	lw.s	%r6 %f4 744
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.40 
	neg.s	%f4 %f4
	j	fbl_cont.38 
fbl_else.40 :
fbl_cont.38 :
	lw	%r5 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.41 
	addi	%r0 %r6 1
	j	fbl_cont.39 
fbl_else.41 :
	addi	%r0 %r6 0
fbl_cont.39 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.93 
	addi	%r0 %r6 0
	j	beq_cont.80 
beq_else.93 :
	addi	%r4 %r6 12
	lw.s	%r6 %f4 0
	ilw.s	%r0 %f5 l.15
	fbne	%f4 %f5 fbeq_else.16 
	addi	%r0 %r6 1
	j	fbeq_cont.16 
fbeq_else.16 :
	addi	%r0 %r6 0
fbeq_cont.16 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.94 
	addi	%r0 %r6 1
	j	beq_cont.81 
beq_else.94 :
	addi	%r0 %r6 0
beq_cont.81 :
beq_cont.80 :
beq_cont.79 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.95 
	addi	%r4 %r6 16
	lw.s	%r6 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r4 %r6 20
	lw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r6 736
	lw.s	%r6 %f3 736
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.15
	fbge	%f0 %f3 fbl_else.42 
	neg.s	%f0 %f0
	j	fbl_cont.40 
fbl_else.42 :
fbl_cont.40 :
	lw	%r5 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f3 0
	fbge	%f0 %f3 fbl_else.43 
	addi	%r0 %r6 1
	j	fbl_cont.41 
fbl_else.43 :
	addi	%r0 %r6 0
fbl_cont.41 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.96 
	addi	%r0 %r4 0
	j	beq_cont.83 
beq_else.96 :
	addi	%r0 %r6 740
	lw.s	%r6 %f0 740
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.44 
	neg.s	%f0 %f0
	j	fbl_cont.42 
fbl_else.44 :
fbl_cont.42 :
	lw	%r5 %r5 16
	addi	%r5 %r5 4
	lw.s	%r5 %f1 0
	fbge	%f0 %f1 fbl_else.45 
	addi	%r0 %r5 1
	j	fbl_cont.43 
fbl_else.45 :
	addi	%r0 %r5 0
fbl_cont.43 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.97 
	addi	%r0 %r4 0
	j	beq_cont.84 
beq_else.97 :
	addi	%r4 %r4 20
	lw.s	%r4 %f0 0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.17 
	addi	%r0 %r4 1
	j	fbeq_cont.17 
fbeq_else.17 :
	addi	%r0 %r4 0
fbeq_cont.17 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.98 
	addi	%r0 %r4 1
	j	beq_cont.85 
beq_else.98 :
	addi	%r0 %r4 0
beq_cont.85 :
beq_cont.84 :
beq_cont.83 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.99 
	addi	%r0 %r4 0
	j	beq_cont.86 
beq_else.99 :
	sw.s	%r0 %f2 540
	addi	%r0 %r4 3
beq_cont.86 :
	j	beq_cont.82 
beq_else.95 :
	sw.s	%r0 %f3 540
	addi	%r0 %r4 2
beq_cont.82 :
	j	beq_cont.78 
beq_else.91 :
	sw.s	%r0 %f3 540
	addi	%r0 %r4 1
beq_cont.78 :
	j	beq_cont.74 
beq_else.87 :
	addi	%r0 %r7 2
	bne	%r6 %r7 beq_else.100 
	addi	%r4 %r5 0
	lw.s	%r5 %f3 0
	ilw.s	%r0 %f4 l.15
	fbge	%f3 %f4 fbl_else.46 
	addi	%r0 %r5 1
	j	fbl_cont.44 
fbl_else.46 :
	addi	%r0 %r5 0
fbl_cont.44 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.101 
	addi	%r0 %r4 0
	j	beq_cont.88 
beq_else.101 :
	addi	%r4 %r5 4
	lw.s	%r5 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r4 %r5 8
	lw.s	%r5 %f3 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	addi	%r4 %r4 12
	lw.s	%r4 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r4 1
beq_cont.88 :
	j	beq_cont.87 
beq_else.100 :
	addi	%r4 %r6 0
	lw.s	%r6 %f3 0
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.18 
	addi	%r0 %r6 1
	j	fbeq_cont.18 
fbeq_else.18 :
	addi	%r0 %r6 0
fbeq_cont.18 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.102 
	addi	%r4 %r6 4
	lw.s	%r6 %f4 0
	mul.s	%f0 %f4 %f4
	addi	%r4 %r6 8
	lw.s	%r6 %f5 0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f4 %f4
	addi	%r4 %r6 12
	lw.s	%r6 %f5 0
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f4 %f4
	mul.s	%f0 %f0 %f5
	lw	%r5 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r5 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r5 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r5 %r6 12
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.103 
	mov.s	%f5 %f0
	j	beq_cont.90 
beq_else.103 :
	mul.s	%f2 %f1 %f6
	lw	%r5 %r6 36
	addi	%r6 %r6 0
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r5 %r6 36
	addi	%r6 %r6 4
	lw.s	%r6 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r5 %r6 36
	addi	%r6 %r6 8
	lw.s	%r6 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.90 :
	lw	%r5 %r6 4
	addi	%r0 %r7 3
	bne	%r6 %r7 beq_else.104 
	ilw.s	%r0 %f1 l.16
	sub.s	%f1 %f0 %f0
	j	beq_cont.91 
beq_else.104 :
beq_cont.91 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.47 
	addi	%r0 %r6 1
	j	fbl_cont.45 
fbl_else.47 :
	addi	%r0 %r6 0
fbl_cont.45 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.105 
	addi	%r0 %r4 0
	j	beq_cont.92 
beq_else.105 :
	lw	%r5 %r5 24
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.106 
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f0
	addi	%r4 %r4 16
	lw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	beq_cont.93 
beq_else.106 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r4 %r4 16
	lw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
beq_cont.93 :
	addi	%r0 %r4 1
beq_cont.92 :
	j	beq_cont.89 
beq_else.102 :
	addi	%r0 %r4 0
beq_cont.89 :
beq_cont.87 :
beq_cont.74 :
	addi	%r0 %r5 0
	beq	%r4 %r5 bne_else.5 
	addi	%r0 %r4 540
	lw.s	%r4 %f0 540
	ilw.s	%r0 %f1 l.30
	fbge	%f0 %f1 fbl_else.48 
	addi	%r0 %r4 1
	j	fbl_cont.46 
fbl_else.48 :
	addi	%r0 %r4 0
fbl_cont.46 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.107 
	addi	%r0 %r1 0
	j	beq_cont.94 
beq_else.107 :
	addi	%r0 %r4 1
	mov	%r3 %r2
	mov	%r4 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	shadow_check_one_or_group.0 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
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
	lw	%r26 %r1 -8
	addi	%r1 %r1 1
	lw	%r26 %r2 -4
	j	shadow_check_one_or_matrix.0
beq_else.109 :
	addi	%r0 %r1 1
	lw	%r26 %r2 -0
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	shadow_check_one_or_group.0 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.110 
	lw	%r26 %r1 -8
	addi	%r1 %r1 1
	lw	%r26 %r2 -4
	j	shadow_check_one_or_matrix.0
beq_else.110 :
	addi	%r0 %r1 1
	retl
solve_each_element.0 :
	slli	%r1 %r4 2
	add	%r2 %r4 %r4
	lw	%r4 %r4 0
	addi	%r0 %r5 -1
	bne	%r4 %r5 beq_else.111 
	retl
beq_else.111 :
	slli	%r4 %r5 2
	addi	%r5 %r5 48
	lw	%r5 %r5 0
	addi	%r0 %r6 636
	lw.s	%r6 %f0 636
	lw	%r5 %r6 20
	addi	%r6 %r6 0
	lw.s	%r6 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r6 640
	lw.s	%r6 %f1 640
	lw	%r5 %r6 20
	addi	%r6 %r6 4
	lw.s	%r6 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r6 644
	lw.s	%r6 %f2 644
	lw	%r5 %r6 20
	addi	%r6 %r6 8
	lw.s	%r6 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r5 %r6 4
	addi	%r0 %r7 1
	bne	%r6 %r7 beq_else.112 
	addi	%r3 %r6 0
	lw.s	%r6 %f3 0
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.19 
	addi	%r0 %r6 1
	j	fbeq_cont.19 
fbeq_else.19 :
	addi	%r0 %r6 0
fbeq_cont.19 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.113 
	lw	%r5 %r6 16
	lw	%r5 %r7 24
	addi	%r3 %r8 0
	lw.s	%r8 %f3 0
	ilw.s	%r0 %f4 l.15
	fbge	%f3 %f4 fbl_else.49 
	addi	%r0 %r8 1
	j	fbl_cont.47 
fbl_else.49 :
	addi	%r0 %r8 0
fbl_cont.47 :
	addi	%r0 %r9 0
	bne	%r7 %r9 beq_else.114 
	mov	%r8 %r7
	j	beq_cont.98 
beq_else.114 :
	addi	%r0 %r7 0
	bne	%r8 %r7 beq_else.115 
	addi	%r0 %r7 1
	j	beq_cont.99 
beq_else.115 :
	addi	%r0 %r7 0
beq_cont.99 :
beq_cont.98 :
	addi	%r6 %r8 0
	lw.s	%r8 %f3 0
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.116 
	neg.s	%f3 %f3
	j	beq_cont.100 
beq_else.116 :
beq_cont.100 :
	sub.s	%f0 %f3 %f3
	addi	%r3 %r7 0
	lw.s	%r7 %f4 0
	div.s	%f4 %f3 %f3
	addi	%r3 %r7 4
	lw.s	%r7 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.50 
	neg.s	%f4 %f4
	j	fbl_cont.48 
fbl_else.50 :
fbl_cont.48 :
	addi	%r6 %r7 4
	lw.s	%r7 %f5 0
	fbge	%f4 %f5 fbl_else.51 
	addi	%r0 %r7 1
	j	fbl_cont.49 
fbl_else.51 :
	addi	%r0 %r7 0
fbl_cont.49 :
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.117 
	addi	%r0 %r6 0
	j	beq_cont.101 
beq_else.117 :
	addi	%r3 %r7 8
	lw.s	%r7 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.52 
	neg.s	%f4 %f4
	j	fbl_cont.50 
fbl_else.52 :
fbl_cont.50 :
	addi	%r6 %r6 8
	lw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.53 
	addi	%r0 %r6 1
	j	fbl_cont.51 
fbl_else.53 :
	addi	%r0 %r6 0
fbl_cont.51 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.118 
	addi	%r0 %r6 0
	j	beq_cont.102 
beq_else.118 :
	sw.s	%r0 %f3 540
	addi	%r0 %r6 1
beq_cont.102 :
beq_cont.101 :
	j	beq_cont.97 
beq_else.113 :
	addi	%r0 %r6 0
beq_cont.97 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.119 
	addi	%r3 %r6 4
	lw.s	%r6 %f3 0
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.20 
	addi	%r0 %r6 1
	j	fbeq_cont.20 
fbeq_else.20 :
	addi	%r0 %r6 0
fbeq_cont.20 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.120 
	lw	%r5 %r6 16
	lw	%r5 %r7 24
	addi	%r3 %r8 4
	lw.s	%r8 %f3 0
	ilw.s	%r0 %f4 l.15
	fbge	%f3 %f4 fbl_else.54 
	addi	%r0 %r8 1
	j	fbl_cont.52 
fbl_else.54 :
	addi	%r0 %r8 0
fbl_cont.52 :
	addi	%r0 %r9 0
	bne	%r7 %r9 beq_else.121 
	mov	%r8 %r7
	j	beq_cont.105 
beq_else.121 :
	addi	%r0 %r7 0
	bne	%r8 %r7 beq_else.122 
	addi	%r0 %r7 1
	j	beq_cont.106 
beq_else.122 :
	addi	%r0 %r7 0
beq_cont.106 :
beq_cont.105 :
	addi	%r6 %r8 4
	lw.s	%r8 %f3 0
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.123 
	neg.s	%f3 %f3
	j	beq_cont.107 
beq_else.123 :
beq_cont.107 :
	sub.s	%f1 %f3 %f3
	addi	%r3 %r7 4
	lw.s	%r7 %f4 0
	div.s	%f4 %f3 %f3
	addi	%r3 %r7 8
	lw.s	%r7 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.55 
	neg.s	%f4 %f4
	j	fbl_cont.53 
fbl_else.55 :
fbl_cont.53 :
	addi	%r6 %r7 8
	lw.s	%r7 %f5 0
	fbge	%f4 %f5 fbl_else.56 
	addi	%r0 %r7 1
	j	fbl_cont.54 
fbl_else.56 :
	addi	%r0 %r7 0
fbl_cont.54 :
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.124 
	addi	%r0 %r6 0
	j	beq_cont.108 
beq_else.124 :
	addi	%r3 %r7 0
	lw.s	%r7 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.57 
	neg.s	%f4 %f4
	j	fbl_cont.55 
fbl_else.57 :
fbl_cont.55 :
	addi	%r6 %r6 0
	lw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.58 
	addi	%r0 %r6 1
	j	fbl_cont.56 
fbl_else.58 :
	addi	%r0 %r6 0
fbl_cont.56 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.125 
	addi	%r0 %r6 0
	j	beq_cont.109 
beq_else.125 :
	sw.s	%r0 %f3 540
	addi	%r0 %r6 1
beq_cont.109 :
beq_cont.108 :
	j	beq_cont.104 
beq_else.120 :
	addi	%r0 %r6 0
beq_cont.104 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.126 
	addi	%r3 %r6 8
	lw.s	%r6 %f3 0
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.21 
	addi	%r0 %r6 1
	j	fbeq_cont.21 
fbeq_else.21 :
	addi	%r0 %r6 0
fbeq_cont.21 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.127 
	lw	%r5 %r6 16
	lw	%r5 %r5 24
	addi	%r3 %r7 8
	lw.s	%r7 %f3 0
	ilw.s	%r0 %f4 l.15
	fbge	%f3 %f4 fbl_else.59 
	addi	%r0 %r7 1
	j	fbl_cont.57 
fbl_else.59 :
	addi	%r0 %r7 0
fbl_cont.57 :
	addi	%r0 %r8 0
	bne	%r5 %r8 beq_else.128 
	mov	%r7 %r5
	j	beq_cont.112 
beq_else.128 :
	addi	%r0 %r5 0
	bne	%r7 %r5 beq_else.129 
	addi	%r0 %r5 1
	j	beq_cont.113 
beq_else.129 :
	addi	%r0 %r5 0
beq_cont.113 :
beq_cont.112 :
	addi	%r6 %r7 8
	lw.s	%r7 %f3 0
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.130 
	neg.s	%f3 %f3
	j	beq_cont.114 
beq_else.130 :
beq_cont.114 :
	sub.s	%f2 %f3 %f2
	addi	%r3 %r5 8
	lw.s	%r5 %f3 0
	div.s	%f3 %f2 %f2
	addi	%r3 %r5 0
	lw.s	%r5 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.15
	fbge	%f0 %f3 fbl_else.60 
	neg.s	%f0 %f0
	j	fbl_cont.58 
fbl_else.60 :
fbl_cont.58 :
	addi	%r6 %r5 0
	lw.s	%r5 %f3 0
	fbge	%f0 %f3 fbl_else.61 
	addi	%r0 %r5 1
	j	fbl_cont.59 
fbl_else.61 :
	addi	%r0 %r5 0
fbl_cont.59 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.131 
	addi	%r0 %r5 0
	j	beq_cont.115 
beq_else.131 :
	addi	%r3 %r5 4
	lw.s	%r5 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.62 
	neg.s	%f0 %f0
	j	fbl_cont.60 
fbl_else.62 :
fbl_cont.60 :
	addi	%r6 %r5 4
	lw.s	%r5 %f1 0
	fbge	%f0 %f1 fbl_else.63 
	addi	%r0 %r5 1
	j	fbl_cont.61 
fbl_else.63 :
	addi	%r0 %r5 0
fbl_cont.61 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.132 
	addi	%r0 %r5 0
	j	beq_cont.116 
beq_else.132 :
	sw.s	%r0 %f2 540
	addi	%r0 %r5 1
beq_cont.116 :
beq_cont.115 :
	j	beq_cont.111 
beq_else.127 :
	addi	%r0 %r5 0
beq_cont.111 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.133 
	addi	%r0 %r5 0
	j	beq_cont.117 
beq_else.133 :
	addi	%r0 %r5 3
beq_cont.117 :
	j	beq_cont.110 
beq_else.126 :
	addi	%r0 %r5 2
beq_cont.110 :
	j	beq_cont.103 
beq_else.119 :
	addi	%r0 %r5 1
beq_cont.103 :
	j	beq_cont.96 
beq_else.112 :
	addi	%r0 %r7 2
	bne	%r6 %r7 beq_else.134 
	lw	%r5 %r5 16
	addi	%r3 %r6 0
	lw.s	%r6 %f3 0
	addi	%r5 %r6 0
	lw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r3 %r6 4
	lw.s	%r6 %f4 0
	addi	%r5 %r6 4
	lw.s	%r6 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r3 %r6 8
	lw.s	%r6 %f4 0
	addi	%r5 %r6 8
	lw.s	%r6 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	ilw.s	%r0 %f4 l.15
	fbge	%f4 %f3 fbl_else.64 
	addi	%r0 %r6 1
	j	fbl_cont.62 
fbl_else.64 :
	addi	%r0 %r6 0
fbl_cont.62 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.135 
	addi	%r0 %r5 0
	j	beq_cont.119 
beq_else.135 :
	addi	%r5 %r6 0
	lw.s	%r6 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r5 %r6 4
	lw.s	%r6 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r5 %r5 8
	lw.s	%r5 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f3 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r5 1
beq_cont.119 :
	j	beq_cont.118 
beq_else.134 :
	addi	%r3 %r6 0
	lw.s	%r6 %f3 0
	addi	%r3 %r6 4
	lw.s	%r6 %f4 0
	addi	%r3 %r6 8
	lw.s	%r6 %f5 0
	mul.s	%f3 %f3 %f6
	lw	%r5 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r5 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r5 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	lw	%r5 %r6 12
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.136 
	mov.s	%f6 %f3
	j	beq_cont.120 
beq_else.136 :
	mul.s	%f5 %f4 %f7
	lw	%r5 %r6 36
	addi	%r6 %r6 0
	lw.s	%r6 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r5 %r6 36
	addi	%r6 %r6 4
	lw.s	%r6 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r5 %r6 36
	addi	%r6 %r6 8
	lw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
beq_cont.120 :
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.22 
	addi	%r0 %r6 1
	j	fbeq_cont.22 
fbeq_else.22 :
	addi	%r0 %r6 0
fbeq_cont.22 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.137 
	addi	%r3 %r6 0
	lw.s	%r6 %f4 0
	addi	%r3 %r6 4
	lw.s	%r6 %f5 0
	addi	%r3 %r6 8
	lw.s	%r6 %f6 0
	mul.s	%f0 %f4 %f7
	lw	%r5 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f8 0
	mul.s	%f8 %f7 %f7
	mul.s	%f1 %f5 %f8
	lw	%r5 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	mul.s	%f2 %f6 %f8
	lw	%r5 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	lw	%r5 %r6 12
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.138 
	mov.s	%f7 %f4
	j	beq_cont.122 
beq_else.138 :
	mul.s	%f1 %f6 %f8
	mul.s	%f2 %f5 %f9
	add.s	%f9 %f8 %f8
	lw	%r5 %r6 36
	addi	%r6 %r6 0
	lw.s	%r6 %f9 0
	mul.s	%f9 %f8 %f8
	mul.s	%f2 %f4 %f9
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f9 %f6
	lw	%r5 %r6 36
	addi	%r6 %r6 4
	lw.s	%r6 %f9 0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f8 %f6
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f4 %f4
	lw	%r5 %r6 36
	addi	%r6 %r6 8
	lw.s	%r6 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	ilw.s	%r0 %f5 l.27
	div.s	%f5 %f4 %f4
	add.s	%f4 %f7 %f4
beq_cont.122 :
	mul.s	%f0 %f0 %f5
	lw	%r5 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r5 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r5 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r5 %r6 12
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.139 
	mov.s	%f5 %f0
	j	beq_cont.123 
beq_else.139 :
	mul.s	%f2 %f1 %f6
	lw	%r5 %r6 36
	addi	%r6 %r6 0
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r5 %r6 36
	addi	%r6 %r6 4
	lw.s	%r6 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r5 %r6 36
	addi	%r6 %r6 8
	lw.s	%r6 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.123 :
	lw	%r5 %r6 4
	addi	%r0 %r7 3
	bne	%r6 %r7 beq_else.140 
	ilw.s	%r0 %f1 l.16
	sub.s	%f1 %f0 %f0
	j	beq_cont.124 
beq_else.140 :
beq_cont.124 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.65 
	addi	%r0 %r6 1
	j	fbl_cont.63 
fbl_else.65 :
	addi	%r0 %r6 0
fbl_cont.63 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.141 
	addi	%r0 %r5 0
	j	beq_cont.125 
beq_else.141 :
	sqrt.s	%f0 %f0
	lw	%r5 %r5 24
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.142 
	neg.s	%f0 %f0
	j	beq_cont.126 
beq_else.142 :
beq_cont.126 :
	sub.s	%f4 %f0 %f0
	div.s	%f3 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r5 1
beq_cont.125 :
	j	beq_cont.121 
beq_else.137 :
	addi	%r0 %r5 0
beq_cont.121 :
beq_cont.118 :
beq_cont.96 :
	addi	%r0 %r6 0
	beq	%r5 %r6 bne_else.6 
	addi	%r0 %r6 540
	lw.s	%r6 %f0 540
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.66 
	addi	%r0 %r6 1
	j	fbl_cont.64 
fbl_else.66 :
	addi	%r0 %r6 0
fbl_cont.64 :
	addi	%r0 %r7 0
	sw	%r26 %r3 -0
	sw	%r26 %r2 -4
	sw	%r26 %r1 -8
	bne	%r6 %r7 beq_else.143 
	j	beq_cont.127 
beq_else.143 :
	addi	%r0 %r6 548
	lw.s	%r6 %f1 548
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
	ilw.s	%r0 %f1 l.29
	add.s	%f1 %f0 %f0
	addi	%r3 %r6 0
	lw.s	%r6 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r0 %r6 636
	lw.s	%r6 %f2 636
	add.s	%f2 %f1 %f1
	addi	%r3 %r6 4
	lw.s	%r6 %f2 0
	mul.s	%f0 %f2 %f2
	addi	%r0 %r6 640
	lw.s	%r6 %f3 640
	add.s	%f3 %f2 %f2
	addi	%r3 %r6 8
	lw.s	%r6 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r6 644
	lw.s	%r6 %f4 644
	add.s	%f4 %f3 %f3
	addi	%r0 %r6 0
	sw	%r26 %r5 -12
	sw	%r26 %r4 -16
	sw.s	%r26 %f3 -24
	sw.s	%r26 %f2 -32
	sw.s	%r26 %f1 -40
	sw.s	%r26 %f0 -48
	mov	%r6 %r1
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	check_all_inside.0 
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.145 
	j	beq_cont.129 
beq_else.145 :
	lw.s	%r26 %f0 -48
	sw.s	%r0 %f0 548
	lw.s	%r26 %f0 -40
	sw.s	%r0 %f0 552
	lw.s	%r26 %f0 -32
	sw.s	%r0 %f0 556
	lw.s	%r26 %f0 -24
	sw.s	%r0 %f0 560
	lw	%r26 %r1 -16
	sw	%r0 %r1 564
	lw	%r26 %r1 -12
	sw	%r0 %r1 544
beq_cont.129 :
beq_cont.128 :
beq_cont.127 :
	lw	%r26 %r1 -8
	addi	%r1 %r1 1
	lw	%r26 %r2 -4
	lw	%r26 %r3 -0
	j	solve_each_element.0
bne_else.6 :
	slli	%r4 %r4 2
	addi	%r4 %r4 48
	lw	%r4 %r4 0
	lw	%r4 %r4 24
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.146 
	retl
beq_else.146 :
	addi	%r1 %r1 1
	j	solve_each_element.0
solve_one_or_network.0 :
	slli	%r1 %r4 2
	add	%r2 %r4 %r4
	lw	%r4 %r4 0
	addi	%r0 %r5 -1
	beq	%r4 %r5 bne_else.7 
	slli	%r4 %r4 2
	addi	%r4 %r4 332
	lw	%r4 %r4 0
	addi	%r0 %r5 0
	sw	%r26 %r3 -0
	sw	%r26 %r2 -4
	sw	%r26 %r1 -8
	mov	%r4 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	solve_each_element.0 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r1 -8
	addi	%r1 %r1 1
	lw	%r26 %r2 -4
	lw	%r26 %r3 -0
	j	solve_one_or_network.0
bne_else.7 :
	retl
trace_or_matrix.0 :
	slli	%r1 %r4 2
	add	%r2 %r4 %r4
	lw	%r4 %r4 0
	addi	%r4 %r5 0
	lw	%r5 %r5 0
	addi	%r0 %r6 -1
	bne	%r5 %r6 beq_else.147 
	retl
beq_else.147 :
	addi	%r0 %r6 99
	sw	%r26 %r3 -0
	sw	%r26 %r2 -4
	sw	%r26 %r1 -8
	bne	%r5 %r6 beq_else.148 
	addi	%r0 %r5 1
	mov	%r4 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	solve_one_or_network.0 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	j	beq_cont.130 
beq_else.148 :
	slli	%r5 %r5 2
	addi	%r5 %r5 48
	lw	%r5 %r5 0
	addi	%r0 %r6 636
	lw.s	%r6 %f0 636
	lw	%r5 %r6 20
	addi	%r6 %r6 0
	lw.s	%r6 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r6 640
	lw.s	%r6 %f1 640
	lw	%r5 %r6 20
	addi	%r6 %r6 4
	lw.s	%r6 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r6 644
	lw.s	%r6 %f2 644
	lw	%r5 %r6 20
	addi	%r6 %r6 8
	lw.s	%r6 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r5 %r6 4
	addi	%r0 %r7 1
	bne	%r6 %r7 beq_else.149 
	addi	%r3 %r6 0
	lw.s	%r6 %f3 0
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.23 
	addi	%r0 %r6 1
	j	fbeq_cont.23 
fbeq_else.23 :
	addi	%r0 %r6 0
fbeq_cont.23 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.150 
	lw	%r5 %r6 16
	lw	%r5 %r7 24
	addi	%r3 %r8 0
	lw.s	%r8 %f3 0
	ilw.s	%r0 %f4 l.15
	fbge	%f3 %f4 fbl_else.68 
	addi	%r0 %r8 1
	j	fbl_cont.66 
fbl_else.68 :
	addi	%r0 %r8 0
fbl_cont.66 :
	addi	%r0 %r9 0
	bne	%r7 %r9 beq_else.151 
	mov	%r8 %r7
	j	beq_cont.133 
beq_else.151 :
	addi	%r0 %r7 0
	bne	%r8 %r7 beq_else.152 
	addi	%r0 %r7 1
	j	beq_cont.134 
beq_else.152 :
	addi	%r0 %r7 0
beq_cont.134 :
beq_cont.133 :
	addi	%r6 %r8 0
	lw.s	%r8 %f3 0
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.153 
	neg.s	%f3 %f3
	j	beq_cont.135 
beq_else.153 :
beq_cont.135 :
	sub.s	%f0 %f3 %f3
	addi	%r3 %r7 0
	lw.s	%r7 %f4 0
	div.s	%f4 %f3 %f3
	addi	%r3 %r7 4
	lw.s	%r7 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.69 
	neg.s	%f4 %f4
	j	fbl_cont.67 
fbl_else.69 :
fbl_cont.67 :
	addi	%r6 %r7 4
	lw.s	%r7 %f5 0
	fbge	%f4 %f5 fbl_else.70 
	addi	%r0 %r7 1
	j	fbl_cont.68 
fbl_else.70 :
	addi	%r0 %r7 0
fbl_cont.68 :
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.154 
	addi	%r0 %r6 0
	j	beq_cont.136 
beq_else.154 :
	addi	%r3 %r7 8
	lw.s	%r7 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.71 
	neg.s	%f4 %f4
	j	fbl_cont.69 
fbl_else.71 :
fbl_cont.69 :
	addi	%r6 %r6 8
	lw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.72 
	addi	%r0 %r6 1
	j	fbl_cont.70 
fbl_else.72 :
	addi	%r0 %r6 0
fbl_cont.70 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.155 
	addi	%r0 %r6 0
	j	beq_cont.137 
beq_else.155 :
	sw.s	%r0 %f3 540
	addi	%r0 %r6 1
beq_cont.137 :
beq_cont.136 :
	j	beq_cont.132 
beq_else.150 :
	addi	%r0 %r6 0
beq_cont.132 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.156 
	addi	%r3 %r6 4
	lw.s	%r6 %f3 0
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.24 
	addi	%r0 %r6 1
	j	fbeq_cont.24 
fbeq_else.24 :
	addi	%r0 %r6 0
fbeq_cont.24 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.157 
	lw	%r5 %r6 16
	lw	%r5 %r7 24
	addi	%r3 %r8 4
	lw.s	%r8 %f3 0
	ilw.s	%r0 %f4 l.15
	fbge	%f3 %f4 fbl_else.73 
	addi	%r0 %r8 1
	j	fbl_cont.71 
fbl_else.73 :
	addi	%r0 %r8 0
fbl_cont.71 :
	addi	%r0 %r9 0
	bne	%r7 %r9 beq_else.158 
	mov	%r8 %r7
	j	beq_cont.140 
beq_else.158 :
	addi	%r0 %r7 0
	bne	%r8 %r7 beq_else.159 
	addi	%r0 %r7 1
	j	beq_cont.141 
beq_else.159 :
	addi	%r0 %r7 0
beq_cont.141 :
beq_cont.140 :
	addi	%r6 %r8 4
	lw.s	%r8 %f3 0
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.160 
	neg.s	%f3 %f3
	j	beq_cont.142 
beq_else.160 :
beq_cont.142 :
	sub.s	%f1 %f3 %f3
	addi	%r3 %r7 4
	lw.s	%r7 %f4 0
	div.s	%f4 %f3 %f3
	addi	%r3 %r7 8
	lw.s	%r7 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.74 
	neg.s	%f4 %f4
	j	fbl_cont.72 
fbl_else.74 :
fbl_cont.72 :
	addi	%r6 %r7 8
	lw.s	%r7 %f5 0
	fbge	%f4 %f5 fbl_else.75 
	addi	%r0 %r7 1
	j	fbl_cont.73 
fbl_else.75 :
	addi	%r0 %r7 0
fbl_cont.73 :
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.161 
	addi	%r0 %r6 0
	j	beq_cont.143 
beq_else.161 :
	addi	%r3 %r7 0
	lw.s	%r7 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.76 
	neg.s	%f4 %f4
	j	fbl_cont.74 
fbl_else.76 :
fbl_cont.74 :
	addi	%r6 %r6 0
	lw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.77 
	addi	%r0 %r6 1
	j	fbl_cont.75 
fbl_else.77 :
	addi	%r0 %r6 0
fbl_cont.75 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.162 
	addi	%r0 %r6 0
	j	beq_cont.144 
beq_else.162 :
	sw.s	%r0 %f3 540
	addi	%r0 %r6 1
beq_cont.144 :
beq_cont.143 :
	j	beq_cont.139 
beq_else.157 :
	addi	%r0 %r6 0
beq_cont.139 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.163 
	addi	%r3 %r6 8
	lw.s	%r6 %f3 0
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.25 
	addi	%r0 %r6 1
	j	fbeq_cont.25 
fbeq_else.25 :
	addi	%r0 %r6 0
fbeq_cont.25 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.164 
	lw	%r5 %r6 16
	lw	%r5 %r5 24
	addi	%r3 %r7 8
	lw.s	%r7 %f3 0
	ilw.s	%r0 %f4 l.15
	fbge	%f3 %f4 fbl_else.78 
	addi	%r0 %r7 1
	j	fbl_cont.76 
fbl_else.78 :
	addi	%r0 %r7 0
fbl_cont.76 :
	addi	%r0 %r8 0
	bne	%r5 %r8 beq_else.165 
	mov	%r7 %r5
	j	beq_cont.147 
beq_else.165 :
	addi	%r0 %r5 0
	bne	%r7 %r5 beq_else.166 
	addi	%r0 %r5 1
	j	beq_cont.148 
beq_else.166 :
	addi	%r0 %r5 0
beq_cont.148 :
beq_cont.147 :
	addi	%r6 %r7 8
	lw.s	%r7 %f3 0
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.167 
	neg.s	%f3 %f3
	j	beq_cont.149 
beq_else.167 :
beq_cont.149 :
	sub.s	%f2 %f3 %f2
	addi	%r3 %r5 8
	lw.s	%r5 %f3 0
	div.s	%f3 %f2 %f2
	addi	%r3 %r5 0
	lw.s	%r5 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.15
	fbge	%f0 %f3 fbl_else.79 
	neg.s	%f0 %f0
	j	fbl_cont.77 
fbl_else.79 :
fbl_cont.77 :
	addi	%r6 %r5 0
	lw.s	%r5 %f3 0
	fbge	%f0 %f3 fbl_else.80 
	addi	%r0 %r5 1
	j	fbl_cont.78 
fbl_else.80 :
	addi	%r0 %r5 0
fbl_cont.78 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.168 
	addi	%r0 %r5 0
	j	beq_cont.150 
beq_else.168 :
	addi	%r3 %r5 4
	lw.s	%r5 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.81 
	neg.s	%f0 %f0
	j	fbl_cont.79 
fbl_else.81 :
fbl_cont.79 :
	addi	%r6 %r5 4
	lw.s	%r5 %f1 0
	fbge	%f0 %f1 fbl_else.82 
	addi	%r0 %r5 1
	j	fbl_cont.80 
fbl_else.82 :
	addi	%r0 %r5 0
fbl_cont.80 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.169 
	addi	%r0 %r5 0
	j	beq_cont.151 
beq_else.169 :
	sw.s	%r0 %f2 540
	addi	%r0 %r5 1
beq_cont.151 :
beq_cont.150 :
	j	beq_cont.146 
beq_else.164 :
	addi	%r0 %r5 0
beq_cont.146 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.170 
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
	addi	%r0 %r7 2
	bne	%r6 %r7 beq_else.171 
	lw	%r5 %r5 16
	addi	%r3 %r6 0
	lw.s	%r6 %f3 0
	addi	%r5 %r6 0
	lw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r3 %r6 4
	lw.s	%r6 %f4 0
	addi	%r5 %r6 4
	lw.s	%r6 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r3 %r6 8
	lw.s	%r6 %f4 0
	addi	%r5 %r6 8
	lw.s	%r6 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	ilw.s	%r0 %f4 l.15
	fbge	%f4 %f3 fbl_else.83 
	addi	%r0 %r6 1
	j	fbl_cont.81 
fbl_else.83 :
	addi	%r0 %r6 0
fbl_cont.81 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.172 
	addi	%r0 %r5 0
	j	beq_cont.154 
beq_else.172 :
	addi	%r5 %r6 0
	lw.s	%r6 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r5 %r6 4
	lw.s	%r6 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r5 %r5 8
	lw.s	%r5 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f3 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r5 1
beq_cont.154 :
	j	beq_cont.153 
beq_else.171 :
	addi	%r3 %r6 0
	lw.s	%r6 %f3 0
	addi	%r3 %r6 4
	lw.s	%r6 %f4 0
	addi	%r3 %r6 8
	lw.s	%r6 %f5 0
	mul.s	%f3 %f3 %f6
	lw	%r5 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r5 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r5 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	lw	%r5 %r6 12
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.173 
	mov.s	%f6 %f3
	j	beq_cont.155 
beq_else.173 :
	mul.s	%f5 %f4 %f7
	lw	%r5 %r6 36
	addi	%r6 %r6 0
	lw.s	%r6 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r5 %r6 36
	addi	%r6 %r6 4
	lw.s	%r6 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r5 %r6 36
	addi	%r6 %r6 8
	lw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
beq_cont.155 :
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.26 
	addi	%r0 %r6 1
	j	fbeq_cont.26 
fbeq_else.26 :
	addi	%r0 %r6 0
fbeq_cont.26 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.174 
	addi	%r3 %r6 0
	lw.s	%r6 %f4 0
	addi	%r3 %r6 4
	lw.s	%r6 %f5 0
	addi	%r3 %r6 8
	lw.s	%r6 %f6 0
	mul.s	%f0 %f4 %f7
	lw	%r5 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f8 0
	mul.s	%f8 %f7 %f7
	mul.s	%f1 %f5 %f8
	lw	%r5 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	mul.s	%f2 %f6 %f8
	lw	%r5 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	lw	%r5 %r6 12
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.175 
	mov.s	%f7 %f4
	j	beq_cont.157 
beq_else.175 :
	mul.s	%f1 %f6 %f8
	mul.s	%f2 %f5 %f9
	add.s	%f9 %f8 %f8
	lw	%r5 %r6 36
	addi	%r6 %r6 0
	lw.s	%r6 %f9 0
	mul.s	%f9 %f8 %f8
	mul.s	%f2 %f4 %f9
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f9 %f6
	lw	%r5 %r6 36
	addi	%r6 %r6 4
	lw.s	%r6 %f9 0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f8 %f6
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f4 %f4
	lw	%r5 %r6 36
	addi	%r6 %r6 8
	lw.s	%r6 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	ilw.s	%r0 %f5 l.27
	div.s	%f5 %f4 %f4
	add.s	%f4 %f7 %f4
beq_cont.157 :
	mul.s	%f0 %f0 %f5
	lw	%r5 %r6 16
	addi	%r6 %r6 0
	lw.s	%r6 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r5 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r5 %r6 16
	addi	%r6 %r6 8
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r5 %r6 12
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.176 
	mov.s	%f5 %f0
	j	beq_cont.158 
beq_else.176 :
	mul.s	%f2 %f1 %f6
	lw	%r5 %r6 36
	addi	%r6 %r6 0
	lw.s	%r6 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r5 %r6 36
	addi	%r6 %r6 4
	lw.s	%r6 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r5 %r6 36
	addi	%r6 %r6 8
	lw.s	%r6 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.158 :
	lw	%r5 %r6 4
	addi	%r0 %r7 3
	bne	%r6 %r7 beq_else.177 
	ilw.s	%r0 %f1 l.16
	sub.s	%f1 %f0 %f0
	j	beq_cont.159 
beq_else.177 :
beq_cont.159 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.84 
	addi	%r0 %r6 1
	j	fbl_cont.82 
fbl_else.84 :
	addi	%r0 %r6 0
fbl_cont.82 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.178 
	addi	%r0 %r5 0
	j	beq_cont.160 
beq_else.178 :
	sqrt.s	%f0 %f0
	lw	%r5 %r5 24
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.179 
	neg.s	%f0 %f0
	j	beq_cont.161 
beq_else.179 :
beq_cont.161 :
	sub.s	%f4 %f0 %f0
	div.s	%f3 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r5 1
beq_cont.160 :
	j	beq_cont.156 
beq_else.174 :
	addi	%r0 %r5 0
beq_cont.156 :
beq_cont.153 :
beq_cont.131 :
	addi	%r0 %r6 0
	beq	%r5 %r6 bne_else.8 
	addi	%r0 %r5 540
	lw.s	%r5 %f0 540
	addi	%r0 %r5 548
	lw.s	%r5 %f1 548
	fbge	%f0 %f1 fbl_else.85 
	addi	%r0 %r5 1
	j	fbl_cont.83 
fbl_else.85 :
	addi	%r0 %r5 0
fbl_cont.83 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.180 
	j	beq_cont.162 
beq_else.180 :
	addi	%r0 %r5 1
	mov	%r4 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	solve_one_or_network.0 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
beq_cont.162 :
	j	bne_cont.6 
bne_else.8 :
bne_cont.6 :
beq_cont.130 :
	lw	%r26 %r1 -8
	addi	%r1 %r1 1
	lw	%r26 %r2 -4
	lw	%r26 %r3 -0
	j	trace_or_matrix.0
solve_each_element_fast.0 :
	lw	%r3 %r4 0
	slli	%r1 %r5 2
	add	%r2 %r5 %r5
	lw	%r5 %r5 0
	addi	%r0 %r6 -1
	bne	%r5 %r6 beq_else.181 
	retl
beq_else.181 :
	slli	%r5 %r6 2
	addi	%r6 %r6 48
	lw	%r6 %r6 0
	lw	%r6 %r7 40
	addi	%r7 %r8 0
	lw.s	%r8 %f0 0
	addi	%r7 %r8 4
	lw.s	%r8 %f1 0
	addi	%r7 %r8 8
	lw.s	%r8 %f2 0
	lw	%r3 %r8 4
	slli	%r5 %r9 2
	add	%r8 %r9 %r8
	lw	%r8 %r8 0
	lw	%r6 %r9 4
	addi	%r0 %r10 1
	bne	%r9 %r10 beq_else.182 
	lw	%r3 %r7 0
	addi	%r8 %r9 0
	lw.s	%r9 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r8 %r9 4
	lw.s	%r9 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r7 %r9 4
	lw.s	%r9 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.86 
	neg.s	%f4 %f4
	j	fbl_cont.84 
fbl_else.86 :
fbl_cont.84 :
	lw	%r6 %r9 16
	addi	%r9 %r9 4
	lw.s	%r9 %f5 0
	fbge	%f4 %f5 fbl_else.87 
	addi	%r0 %r9 1
	j	fbl_cont.85 
fbl_else.87 :
	addi	%r0 %r9 0
fbl_cont.85 :
	addi	%r0 %r10 0
	bne	%r9 %r10 beq_else.183 
	addi	%r0 %r9 0
	j	beq_cont.164 
beq_else.183 :
	addi	%r7 %r9 8
	lw.s	%r9 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.88 
	neg.s	%f4 %f4
	j	fbl_cont.86 
fbl_else.88 :
fbl_cont.86 :
	lw	%r6 %r9 16
	addi	%r9 %r9 8
	lw.s	%r9 %f5 0
	fbge	%f4 %f5 fbl_else.89 
	addi	%r0 %r9 1
	j	fbl_cont.87 
fbl_else.89 :
	addi	%r0 %r9 0
fbl_cont.87 :
	addi	%r0 %r10 0
	bne	%r9 %r10 beq_else.184 
	addi	%r0 %r9 0
	j	beq_cont.165 
beq_else.184 :
	addi	%r8 %r9 4
	lw.s	%r9 %f4 0
	ilw.s	%r0 %f5 l.15
	fbne	%f4 %f5 fbeq_else.27 
	addi	%r0 %r9 1
	j	fbeq_cont.27 
fbeq_else.27 :
	addi	%r0 %r9 0
fbeq_cont.27 :
	addi	%r0 %r10 0
	bne	%r9 %r10 beq_else.185 
	addi	%r0 %r9 1
	j	beq_cont.166 
beq_else.185 :
	addi	%r0 %r9 0
beq_cont.166 :
beq_cont.165 :
beq_cont.164 :
	addi	%r0 %r10 0
	bne	%r9 %r10 beq_else.186 
	addi	%r8 %r9 8
	lw.s	%r9 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r8 %r9 12
	lw.s	%r9 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r7 %r9 0
	lw.s	%r9 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.90 
	neg.s	%f4 %f4
	j	fbl_cont.88 
fbl_else.90 :
fbl_cont.88 :
	lw	%r6 %r9 16
	addi	%r9 %r9 0
	lw.s	%r9 %f5 0
	fbge	%f4 %f5 fbl_else.91 
	addi	%r0 %r9 1
	j	fbl_cont.89 
fbl_else.91 :
	addi	%r0 %r9 0
fbl_cont.89 :
	addi	%r0 %r10 0
	bne	%r9 %r10 beq_else.187 
	addi	%r0 %r9 0
	j	beq_cont.168 
beq_else.187 :
	addi	%r7 %r9 8
	lw.s	%r9 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.92 
	neg.s	%f4 %f4
	j	fbl_cont.90 
fbl_else.92 :
fbl_cont.90 :
	lw	%r6 %r9 16
	addi	%r9 %r9 8
	lw.s	%r9 %f5 0
	fbge	%f4 %f5 fbl_else.93 
	addi	%r0 %r9 1
	j	fbl_cont.91 
fbl_else.93 :
	addi	%r0 %r9 0
fbl_cont.91 :
	addi	%r0 %r10 0
	bne	%r9 %r10 beq_else.188 
	addi	%r0 %r9 0
	j	beq_cont.169 
beq_else.188 :
	addi	%r8 %r9 12
	lw.s	%r9 %f4 0
	ilw.s	%r0 %f5 l.15
	fbne	%f4 %f5 fbeq_else.28 
	addi	%r0 %r9 1
	j	fbeq_cont.28 
fbeq_else.28 :
	addi	%r0 %r9 0
fbeq_cont.28 :
	addi	%r0 %r10 0
	bne	%r9 %r10 beq_else.189 
	addi	%r0 %r9 1
	j	beq_cont.170 
beq_else.189 :
	addi	%r0 %r9 0
beq_cont.170 :
beq_cont.169 :
beq_cont.168 :
	addi	%r0 %r10 0
	bne	%r9 %r10 beq_else.190 
	addi	%r8 %r9 16
	lw.s	%r9 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r8 %r9 20
	lw.s	%r9 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r7 %r9 0
	lw.s	%r9 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.15
	fbge	%f0 %f3 fbl_else.94 
	neg.s	%f0 %f0
	j	fbl_cont.92 
fbl_else.94 :
fbl_cont.92 :
	lw	%r6 %r9 16
	addi	%r9 %r9 0
	lw.s	%r9 %f3 0
	fbge	%f0 %f3 fbl_else.95 
	addi	%r0 %r9 1
	j	fbl_cont.93 
fbl_else.95 :
	addi	%r0 %r9 0
fbl_cont.93 :
	addi	%r0 %r10 0
	bne	%r9 %r10 beq_else.191 
	addi	%r0 %r6 0
	j	beq_cont.172 
beq_else.191 :
	addi	%r7 %r7 4
	lw.s	%r7 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.96 
	neg.s	%f0 %f0
	j	fbl_cont.94 
fbl_else.96 :
fbl_cont.94 :
	lw	%r6 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.97 
	addi	%r0 %r6 1
	j	fbl_cont.95 
fbl_else.97 :
	addi	%r0 %r6 0
fbl_cont.95 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.192 
	addi	%r0 %r6 0
	j	beq_cont.173 
beq_else.192 :
	addi	%r8 %r6 20
	lw.s	%r6 %f0 0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.29 
	addi	%r0 %r6 1
	j	fbeq_cont.29 
fbeq_else.29 :
	addi	%r0 %r6 0
fbeq_cont.29 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.193 
	addi	%r0 %r6 1
	j	beq_cont.174 
beq_else.193 :
	addi	%r0 %r6 0
beq_cont.174 :
beq_cont.173 :
beq_cont.172 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.194 
	addi	%r0 %r6 0
	j	beq_cont.175 
beq_else.194 :
	sw.s	%r0 %f2 540
	addi	%r0 %r6 3
beq_cont.175 :
	j	beq_cont.171 
beq_else.190 :
	sw.s	%r0 %f3 540
	addi	%r0 %r6 2
beq_cont.171 :
	j	beq_cont.167 
beq_else.186 :
	sw.s	%r0 %f3 540
	addi	%r0 %r6 1
beq_cont.167 :
	j	beq_cont.163 
beq_else.182 :
	addi	%r0 %r10 2
	bne	%r9 %r10 beq_else.195 
	addi	%r8 %r6 0
	lw.s	%r6 %f0 0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.98 
	addi	%r0 %r6 1
	j	fbl_cont.96 
fbl_else.98 :
	addi	%r0 %r6 0
fbl_cont.96 :
	addi	%r0 %r9 0
	bne	%r6 %r9 beq_else.196 
	addi	%r0 %r6 0
	j	beq_cont.177 
beq_else.196 :
	addi	%r8 %r6 0
	lw.s	%r6 %f0 0
	addi	%r7 %r6 12
	lw.s	%r6 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r6 1
beq_cont.177 :
	j	beq_cont.176 
beq_else.195 :
	addi	%r8 %r9 0
	lw.s	%r9 %f3 0
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.30 
	addi	%r0 %r9 1
	j	fbeq_cont.30 
fbeq_else.30 :
	addi	%r0 %r9 0
fbeq_cont.30 :
	addi	%r0 %r10 0
	bne	%r9 %r10 beq_else.197 
	addi	%r8 %r9 4
	lw.s	%r9 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r8 %r9 8
	lw.s	%r9 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r8 %r9 12
	lw.s	%r9 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r7 %r7 12
	lw.s	%r7 %f1 0
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f3 %f1
	sub.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.15
	fbge	%f2 %f1 fbl_else.99 
	addi	%r0 %r7 1
	j	fbl_cont.97 
fbl_else.99 :
	addi	%r0 %r7 0
fbl_cont.97 :
	addi	%r0 %r9 0
	bne	%r7 %r9 beq_else.198 
	addi	%r0 %r6 0
	j	beq_cont.179 
beq_else.198 :
	lw	%r6 %r6 24
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.199 
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r8 %r6 16
	lw.s	%r6 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	beq_cont.180 
beq_else.199 :
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r8 %r6 16
	lw.s	%r6 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
beq_cont.180 :
	addi	%r0 %r6 1
beq_cont.179 :
	j	beq_cont.178 
beq_else.197 :
	addi	%r0 %r6 0
beq_cont.178 :
beq_cont.176 :
beq_cont.163 :
	addi	%r0 %r7 0
	beq	%r6 %r7 bne_else.9 
	addi	%r0 %r7 540
	lw.s	%r7 %f0 540
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.100 
	addi	%r0 %r7 1
	j	fbl_cont.98 
fbl_else.100 :
	addi	%r0 %r7 0
fbl_cont.98 :
	addi	%r0 %r8 0
	sw	%r26 %r3 -0
	sw	%r26 %r2 -4
	sw	%r26 %r1 -8
	bne	%r7 %r8 beq_else.200 
	j	beq_cont.181 
beq_else.200 :
	addi	%r0 %r7 548
	lw.s	%r7 %f1 548
	fbge	%f0 %f1 fbl_else.101 
	addi	%r0 %r7 1
	j	fbl_cont.99 
fbl_else.101 :
	addi	%r0 %r7 0
fbl_cont.99 :
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.201 
	j	beq_cont.182 
beq_else.201 :
	ilw.s	%r0 %f1 l.29
	add.s	%f1 %f0 %f0
	addi	%r4 %r7 0
	lw.s	%r7 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r0 %r7 648
	lw.s	%r7 %f2 648
	add.s	%f2 %f1 %f1
	addi	%r4 %r7 4
	lw.s	%r7 %f2 0
	mul.s	%f0 %f2 %f2
	addi	%r0 %r7 652
	lw.s	%r7 %f3 652
	add.s	%f3 %f2 %f2
	addi	%r4 %r4 8
	lw.s	%r4 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r4 656
	lw.s	%r4 %f4 656
	add.s	%f4 %f3 %f3
	addi	%r0 %r4 0
	sw	%r26 %r6 -12
	sw	%r26 %r5 -16
	sw.s	%r26 %f3 -24
	sw.s	%r26 %f2 -32
	sw.s	%r26 %f1 -40
	sw.s	%r26 %f0 -48
	mov	%r4 %r1
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	check_all_inside.0 
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.202 
	j	beq_cont.183 
beq_else.202 :
	lw.s	%r26 %f0 -48
	sw.s	%r0 %f0 548
	lw.s	%r26 %f0 -40
	sw.s	%r0 %f0 552
	lw.s	%r26 %f0 -32
	sw.s	%r0 %f0 556
	lw.s	%r26 %f0 -24
	sw.s	%r0 %f0 560
	lw	%r26 %r1 -16
	sw	%r0 %r1 564
	lw	%r26 %r1 -12
	sw	%r0 %r1 544
beq_cont.183 :
beq_cont.182 :
beq_cont.181 :
	lw	%r26 %r1 -8
	addi	%r1 %r1 1
	lw	%r26 %r2 -4
	lw	%r26 %r3 -0
	j	solve_each_element_fast.0
bne_else.9 :
	slli	%r5 %r4 2
	addi	%r4 %r4 48
	lw	%r4 %r4 0
	lw	%r4 %r4 24
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.203 
	retl
beq_else.203 :
	addi	%r1 %r1 1
	j	solve_each_element_fast.0
solve_one_or_network_fast.0 :
	slli	%r1 %r4 2
	add	%r2 %r4 %r4
	lw	%r4 %r4 0
	addi	%r0 %r5 -1
	beq	%r4 %r5 bne_else.10 
	slli	%r4 %r4 2
	addi	%r4 %r4 332
	lw	%r4 %r4 0
	addi	%r0 %r5 0
	sw	%r26 %r3 -0
	sw	%r26 %r2 -4
	sw	%r26 %r1 -8
	mov	%r4 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	solve_each_element_fast.0 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r1 -8
	addi	%r1 %r1 1
	lw	%r26 %r2 -4
	lw	%r26 %r3 -0
	j	solve_one_or_network_fast.0
bne_else.10 :
	retl
trace_or_matrix_fast.0 :
	slli	%r1 %r4 2
	add	%r2 %r4 %r4
	lw	%r4 %r4 0
	addi	%r4 %r5 0
	lw	%r5 %r5 0
	addi	%r0 %r6 -1
	bne	%r5 %r6 beq_else.204 
	retl
beq_else.204 :
	addi	%r0 %r6 99
	sw	%r26 %r3 -0
	sw	%r26 %r2 -4
	sw	%r26 %r1 -8
	bne	%r5 %r6 beq_else.205 
	addi	%r0 %r5 1
	mov	%r4 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	solve_one_or_network_fast.0 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	j	beq_cont.184 
beq_else.205 :
	slli	%r5 %r6 2
	addi	%r6 %r6 48
	lw	%r6 %r6 0
	lw	%r6 %r7 40
	addi	%r7 %r8 0
	lw.s	%r8 %f0 0
	addi	%r7 %r8 4
	lw.s	%r8 %f1 0
	addi	%r7 %r8 8
	lw.s	%r8 %f2 0
	lw	%r3 %r8 4
	slli	%r5 %r5 2
	add	%r8 %r5 %r5
	lw	%r5 %r5 0
	lw	%r6 %r8 4
	addi	%r0 %r9 1
	bne	%r8 %r9 beq_else.206 
	lw	%r3 %r7 0
	addi	%r5 %r8 0
	lw.s	%r8 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r5 %r8 4
	lw.s	%r8 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r7 %r8 4
	lw.s	%r8 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.102 
	neg.s	%f4 %f4
	j	fbl_cont.100 
fbl_else.102 :
fbl_cont.100 :
	lw	%r6 %r8 16
	addi	%r8 %r8 4
	lw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.103 
	addi	%r0 %r8 1
	j	fbl_cont.101 
fbl_else.103 :
	addi	%r0 %r8 0
fbl_cont.101 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.207 
	addi	%r0 %r8 0
	j	beq_cont.186 
beq_else.207 :
	addi	%r7 %r8 8
	lw.s	%r8 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.104 
	neg.s	%f4 %f4
	j	fbl_cont.102 
fbl_else.104 :
fbl_cont.102 :
	lw	%r6 %r8 16
	addi	%r8 %r8 8
	lw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.105 
	addi	%r0 %r8 1
	j	fbl_cont.103 
fbl_else.105 :
	addi	%r0 %r8 0
fbl_cont.103 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.208 
	addi	%r0 %r8 0
	j	beq_cont.187 
beq_else.208 :
	addi	%r5 %r8 4
	lw.s	%r8 %f4 0
	ilw.s	%r0 %f5 l.15
	fbne	%f4 %f5 fbeq_else.31 
	addi	%r0 %r8 1
	j	fbeq_cont.31 
fbeq_else.31 :
	addi	%r0 %r8 0
fbeq_cont.31 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.209 
	addi	%r0 %r8 1
	j	beq_cont.188 
beq_else.209 :
	addi	%r0 %r8 0
beq_cont.188 :
beq_cont.187 :
beq_cont.186 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.210 
	addi	%r5 %r8 8
	lw.s	%r8 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r5 %r8 12
	lw.s	%r8 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r7 %r8 0
	lw.s	%r8 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.106 
	neg.s	%f4 %f4
	j	fbl_cont.104 
fbl_else.106 :
fbl_cont.104 :
	lw	%r6 %r8 16
	addi	%r8 %r8 0
	lw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.107 
	addi	%r0 %r8 1
	j	fbl_cont.105 
fbl_else.107 :
	addi	%r0 %r8 0
fbl_cont.105 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.211 
	addi	%r0 %r8 0
	j	beq_cont.190 
beq_else.211 :
	addi	%r7 %r8 8
	lw.s	%r8 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.108 
	neg.s	%f4 %f4
	j	fbl_cont.106 
fbl_else.108 :
fbl_cont.106 :
	lw	%r6 %r8 16
	addi	%r8 %r8 8
	lw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.109 
	addi	%r0 %r8 1
	j	fbl_cont.107 
fbl_else.109 :
	addi	%r0 %r8 0
fbl_cont.107 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.212 
	addi	%r0 %r8 0
	j	beq_cont.191 
beq_else.212 :
	addi	%r5 %r8 12
	lw.s	%r8 %f4 0
	ilw.s	%r0 %f5 l.15
	fbne	%f4 %f5 fbeq_else.32 
	addi	%r0 %r8 1
	j	fbeq_cont.32 
fbeq_else.32 :
	addi	%r0 %r8 0
fbeq_cont.32 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.213 
	addi	%r0 %r8 1
	j	beq_cont.192 
beq_else.213 :
	addi	%r0 %r8 0
beq_cont.192 :
beq_cont.191 :
beq_cont.190 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.214 
	addi	%r5 %r8 16
	lw.s	%r8 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r5 %r8 20
	lw.s	%r8 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r7 %r8 0
	lw.s	%r8 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.15
	fbge	%f0 %f3 fbl_else.110 
	neg.s	%f0 %f0
	j	fbl_cont.108 
fbl_else.110 :
fbl_cont.108 :
	lw	%r6 %r8 16
	addi	%r8 %r8 0
	lw.s	%r8 %f3 0
	fbge	%f0 %f3 fbl_else.111 
	addi	%r0 %r8 1
	j	fbl_cont.109 
fbl_else.111 :
	addi	%r0 %r8 0
fbl_cont.109 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.215 
	addi	%r0 %r5 0
	j	beq_cont.194 
beq_else.215 :
	addi	%r7 %r7 4
	lw.s	%r7 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.112 
	neg.s	%f0 %f0
	j	fbl_cont.110 
fbl_else.112 :
fbl_cont.110 :
	lw	%r6 %r6 16
	addi	%r6 %r6 4
	lw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.113 
	addi	%r0 %r6 1
	j	fbl_cont.111 
fbl_else.113 :
	addi	%r0 %r6 0
fbl_cont.111 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.216 
	addi	%r0 %r5 0
	j	beq_cont.195 
beq_else.216 :
	addi	%r5 %r5 20
	lw.s	%r5 %f0 0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.33 
	addi	%r0 %r5 1
	j	fbeq_cont.33 
fbeq_else.33 :
	addi	%r0 %r5 0
fbeq_cont.33 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.217 
	addi	%r0 %r5 1
	j	beq_cont.196 
beq_else.217 :
	addi	%r0 %r5 0
beq_cont.196 :
beq_cont.195 :
beq_cont.194 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.218 
	addi	%r0 %r5 0
	j	beq_cont.197 
beq_else.218 :
	sw.s	%r0 %f2 540
	addi	%r0 %r5 3
beq_cont.197 :
	j	beq_cont.193 
beq_else.214 :
	sw.s	%r0 %f3 540
	addi	%r0 %r5 2
beq_cont.193 :
	j	beq_cont.189 
beq_else.210 :
	sw.s	%r0 %f3 540
	addi	%r0 %r5 1
beq_cont.189 :
	j	beq_cont.185 
beq_else.206 :
	addi	%r0 %r9 2
	bne	%r8 %r9 beq_else.219 
	addi	%r5 %r6 0
	lw.s	%r6 %f0 0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.114 
	addi	%r0 %r6 1
	j	fbl_cont.112 
fbl_else.114 :
	addi	%r0 %r6 0
fbl_cont.112 :
	addi	%r0 %r8 0
	bne	%r6 %r8 beq_else.220 
	addi	%r0 %r5 0
	j	beq_cont.199 
beq_else.220 :
	addi	%r5 %r5 0
	lw.s	%r5 %f0 0
	addi	%r7 %r5 12
	lw.s	%r5 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r5 1
beq_cont.199 :
	j	beq_cont.198 
beq_else.219 :
	addi	%r5 %r8 0
	lw.s	%r8 %f3 0
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.34 
	addi	%r0 %r8 1
	j	fbeq_cont.34 
fbeq_else.34 :
	addi	%r0 %r8 0
fbeq_cont.34 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.221 
	addi	%r5 %r8 4
	lw.s	%r8 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r5 %r8 8
	lw.s	%r8 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r5 %r8 12
	lw.s	%r8 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r7 %r7 12
	lw.s	%r7 %f1 0
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f3 %f1
	sub.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.15
	fbge	%f2 %f1 fbl_else.115 
	addi	%r0 %r7 1
	j	fbl_cont.113 
fbl_else.115 :
	addi	%r0 %r7 0
fbl_cont.113 :
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.222 
	addi	%r0 %r5 0
	j	beq_cont.201 
beq_else.222 :
	lw	%r6 %r6 24
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.223 
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r5 %r5 16
	lw.s	%r5 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	beq_cont.202 
beq_else.223 :
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r5 %r5 16
	lw.s	%r5 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
beq_cont.202 :
	addi	%r0 %r5 1
beq_cont.201 :
	j	beq_cont.200 
beq_else.221 :
	addi	%r0 %r5 0
beq_cont.200 :
beq_cont.198 :
beq_cont.185 :
	addi	%r0 %r6 0
	beq	%r5 %r6 bne_else.11 
	addi	%r0 %r5 540
	lw.s	%r5 %f0 540
	addi	%r0 %r5 548
	lw.s	%r5 %f1 548
	fbge	%f0 %f1 fbl_else.116 
	addi	%r0 %r5 1
	j	fbl_cont.114 
fbl_else.116 :
	addi	%r0 %r5 0
fbl_cont.114 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.224 
	j	beq_cont.203 
beq_else.224 :
	addi	%r0 %r5 1
	mov	%r4 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	solve_one_or_network_fast.0 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
beq_cont.203 :
	j	bne_cont.7 
bne_else.11 :
bne_cont.7 :
beq_cont.184 :
	lw	%r26 %r1 -8
	addi	%r1 %r1 1
	lw	%r26 %r2 -4
	lw	%r26 %r3 -0
	j	trace_or_matrix_fast.0
trace_reflections.0 :
	addi	%r0 %r3 0
	bg	%r3 %r1 ble_else.3 
	slli	%r1 %r3 2
	addi	%r3 %r3 1016
	lw	%r3 %r3 0
	lw	%r3 %r4 4
	ilw.s	%r0 %f2 l.31
	sw.s	%r0 %f2 548
	addi	%r0 %r5 0
	lw	%r0 %r6 536
	sw	%r26 %r1 -0
	sw.s	%r26 %f1 -8
	sw	%r26 %r2 -16
	sw.s	%r26 %f0 -24
	sw	%r26 %r4 -32
	sw	%r26 %r3 -36
	mov	%r4 %r3
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	trace_or_matrix_fast.0 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	addi	%r0 %r1 548
	lw.s	%r1 %f0 548
	ilw.s	%r0 %f1 l.30
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
	ilw.s	%r0 %f1 l.32
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
	lw	%r0 %r1 564
	addi	%r0 %r2 4
	mul	%r1 %r2 %r1
	lw	%r0 %r2 544
	add	%r1 %r2 %r1
	lw	%r26 %r2 -36
	lw	%r2 %r3 0
	bne	%r1 %r3 beq_else.227 
	addi	%r0 %r1 0
	lw	%r0 %r3 536
	mov	%r3 %r2
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	shadow_check_one_or_matrix.0 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.228 
	lw	%r26 %r1 -32
	lw	%r1 %r2 0
	addi	%r0 %r3 568
	lw.s	%r3 %f0 568
	addi	%r2 %r3 0
	lw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r3 572
	lw.s	%r3 %f1 572
	addi	%r2 %r3 4
	lw.s	%r3 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 576
	lw.s	%r3 %f1 576
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw	%r26 %r2 -36
	lw.s	%r2 %f1 8
	lw.s	%r26 %f2 -24
	mul.s	%f2 %f1 %f3
	mul.s	%f0 %f3 %f0
	lw	%r1 %r1 0
	lw	%r26 %r2 -16
	addi	%r2 %r3 0
	lw.s	%r3 %f3 0
	addi	%r1 %r3 0
	lw.s	%r3 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r2 %r3 4
	lw.s	%r3 %f4 0
	addi	%r1 %r3 4
	lw.s	%r3 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r2 %r3 8
	lw.s	%r3 %f4 0
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f3 %f1 %f1
	ilw.s	%r0 %f3 l.15
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
	addi	%r0 %r1 604
	lw.s	%r1 %f3 604
	addi	%r0 %r1 580
	lw.s	%r1 %f4 580
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f3 %f3
	sw.s	%r0 %f3 604
	addi	%r0 %r1 608
	lw.s	%r1 %f3 608
	addi	%r0 %r1 584
	lw.s	%r1 %f4 584
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f3 %f3
	sw.s	%r0 %f3 608
	addi	%r0 %r1 612
	lw.s	%r1 %f3 612
	addi	%r0 %r1 588
	lw.s	%r1 %f4 588
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	sw.s	%r0 %f0 612
beq_cont.208 :
	ilw.s	%r0 %f0 l.15
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
	lw.s	%r26 %f1 -8
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 604
	lw.s	%r1 %f3 604
	add.s	%f0 %f3 %f3
	sw.s	%r0 %f3 604
	addi	%r0 %r1 608
	lw.s	%r1 %f3 608
	add.s	%f0 %f3 %f3
	sw.s	%r0 %f3 608
	addi	%r0 %r1 612
	lw.s	%r1 %f3 612
	add.s	%f0 %f3 %f0
	sw.s	%r0 %f0 612
beq_cont.209 :
	j	beq_cont.207 
beq_else.228 :
beq_cont.207 :
	j	beq_cont.206 
beq_else.227 :
beq_cont.206 :
beq_cont.205 :
	lw	%r26 %r1 -0
	addi	%r1 %r1 -1
	lw.s	%r26 %f0 -24
	lw.s	%r26 %f1 -8
	lw	%r26 %r2 -16
	j	trace_reflections.0
ble_else.3 :
	retl
trace_ray.0 :
	lw	%r30 %r4 4
	addi	%r0 %r5 4
	bg	%r1 %r5 ble_else.4 
	lw	%r3 %r5 8
	ilw.s	%r0 %f2 l.31
	sw.s	%r0 %f2 548
	addi	%r0 %r6 0
	lw	%r0 %r7 536
	sw	%r26 %r30 -0
	sw.s	%r26 %f1 -8
	sw	%r26 %r4 -16
	sw	%r26 %r3 -20
	sw.s	%r26 %f0 -24
	sw	%r26 %r2 -32
	sw	%r26 %r5 -36
	sw	%r26 %r1 -40
	mov	%r2 %r3
	mov	%r6 %r1
	mov	%r7 %r2
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	trace_or_matrix.0 
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	addi	%r0 %r1 548
	lw.s	%r1 %f0 548
	ilw.s	%r0 %f1 l.30
	fbge	%f1 %f0 fbl_else.121 
	addi	%r0 %r1 1
	j	fbl_cont.119 
fbl_else.121 :
	addi	%r0 %r1 0
fbl_cont.119 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.231 
	addi	%r0 %r1 0
	j	beq_cont.210 
beq_else.231 :
	ilw.s	%r0 %f1 l.32
	fbge	%f0 %f1 fbl_else.122 
	addi	%r0 %r1 1
	j	fbl_cont.120 
fbl_else.122 :
	addi	%r0 %r1 0
fbl_cont.120 :
beq_cont.210 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.232 
	addi	%r0 %r1 -1
	lw	%r26 %r2 -40
	slli	%r2 %r3 2
	lw	%r26 %r4 -36
	add	%r4 %r3 %r3
	sw	%r3 %r1 0
	addi	%r0 %r1 0
	beq	%r2 %r1 bne_else.12 
	lw	%r26 %r1 -32
	addi	%r1 %r2 0
	lw.s	%r2 %f0 0
	addi	%r0 %r2 312
	lw.s	%r2 %f1 312
	mul.s	%f1 %f0 %f0
	addi	%r1 %r2 4
	lw.s	%r2 %f1 0
	addi	%r0 %r2 316
	lw.s	%r2 %f2 316
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	addi	%r0 %r1 320
	lw.s	%r1 %f2 320
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.15
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
	lw.s	%r26 %f1 -24
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 324
	lw.s	%r1 %f1 324
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 604
	lw.s	%r1 %f1 604
	add.s	%f0 %f1 %f1
	sw.s	%r0 %f1 604
	addi	%r0 %r1 608
	lw.s	%r1 %f1 608
	add.s	%f0 %f1 %f1
	sw.s	%r0 %f1 608
	addi	%r0 %r1 612
	lw.s	%r1 %f1 612
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 612
	retl
bne_else.12 :
	retl
beq_else.232 :
	lw	%r0 %r1 564
	slli	%r1 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r2 0
	lw	%r2 %r3 8
	lw	%r2 %r4 28
	addi	%r4 %r4 0
	lw.s	%r4 %f0 0
	lw.s	%r26 %f1 -24
	mul.s	%f1 %f0 %f0
	lw	%r2 %r4 4
	addi	%r0 %r5 1
	bne	%r4 %r5 beq_else.234 
	lw	%r0 %r4 544
	ilw.s	%r0 %f2 l.15
	sw.s	%r0 %f2 568
	sw.s	%r0 %f2 572
	sw.s	%r0 %f2 576
	addi	%r4 %r5 -1
	addi	%r4 %r4 -1
	slli	%r4 %r4 2
	lw	%r26 %r6 -32
	add	%r6 %r4 %r4
	lw.s	%r4 %f2 0
	ilw.s	%r0 %f3 l.15
	fbne	%f2 %f3 fbeq_else.35 
	addi	%r0 %r4 1
	j	fbeq_cont.35 
fbeq_else.35 :
	addi	%r0 %r4 0
fbeq_cont.35 :
	addi	%r0 %r7 0
	bne	%r4 %r7 beq_else.235 
	ilw.s	%r0 %f3 l.15
	fbge	%f3 %f2 fbl_else.124 
	addi	%r0 %r4 1
	j	fbl_cont.122 
fbl_else.124 :
	addi	%r0 %r4 0
fbl_cont.122 :
	addi	%r0 %r7 0
	bne	%r4 %r7 beq_else.236 
	ilw.s	%r0 %f2 l.25
	j	beq_cont.213 
beq_else.236 :
	ilw.s	%r0 %f2 l.16
beq_cont.213 :
	j	beq_cont.212 
beq_else.235 :
	ilw.s	%r0 %f2 l.15
beq_cont.212 :
	neg.s	%f2 %f2
	slli	%r5 %r4 2
	addi	%r4 %r4 568
	sw.s	%r4 %f2 0
	j	beq_cont.211 
beq_else.234 :
	addi	%r0 %r5 2
	bne	%r4 %r5 beq_else.237 
	lw	%r2 %r4 16
	addi	%r4 %r4 0
	lw.s	%r4 %f2 0
	neg.s	%f2 %f2
	sw.s	%r0 %f2 568
	lw	%r2 %r4 16
	addi	%r4 %r4 4
	lw.s	%r4 %f2 0
	neg.s	%f2 %f2
	sw.s	%r0 %f2 572
	lw	%r2 %r4 16
	addi	%r4 %r4 8
	lw.s	%r4 %f2 0
	neg.s	%f2 %f2
	sw.s	%r0 %f2 576
	j	beq_cont.214 
beq_else.237 :
	addi	%r0 %r4 552
	lw.s	%r4 %f2 552
	lw	%r2 %r4 20
	addi	%r4 %r4 0
	lw.s	%r4 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r4 556
	lw.s	%r4 %f3 556
	lw	%r2 %r4 20
	addi	%r4 %r4 4
	lw.s	%r4 %f4 0
	sub.s	%f4 %f3 %f3
	addi	%r0 %r4 560
	lw.s	%r4 %f4 560
	lw	%r2 %r4 20
	addi	%r4 %r4 8
	lw.s	%r4 %f5 0
	sub.s	%f5 %f4 %f4
	lw	%r2 %r4 16
	addi	%r4 %r4 0
	lw.s	%r4 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r2 %r4 16
	addi	%r4 %r4 4
	lw.s	%r4 %f6 0
	mul.s	%f6 %f3 %f6
	lw	%r2 %r4 16
	addi	%r4 %r4 8
	lw.s	%r4 %f7 0
	mul.s	%f7 %f4 %f7
	lw	%r2 %r4 12
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.238 
	sw.s	%r0 %f5 568
	sw.s	%r0 %f6 572
	sw.s	%r0 %f7 576
	j	beq_cont.215 
beq_else.238 :
	lw	%r2 %r4 36
	addi	%r4 %r4 8
	lw.s	%r4 %f8 0
	mul.s	%f8 %f3 %f8
	lw	%r2 %r4 36
	addi	%r4 %r4 4
	lw.s	%r4 %f9 0
	mul.s	%f9 %f4 %f9
	add.s	%f9 %f8 %f8
	ilw.s	%r0 %f9 l.27
	div.s	%f9 %f8 %f8
	add.s	%f8 %f5 %f5
	sw.s	%r0 %f5 568
	lw	%r2 %r4 36
	addi	%r4 %r4 8
	lw.s	%r4 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r2 %r4 36
	addi	%r4 %r4 0
	lw.s	%r4 %f8 0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f5 %f4
	ilw.s	%r0 %f5 l.27
	div.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	sw.s	%r0 %f4 572
	lw	%r2 %r4 36
	addi	%r4 %r4 4
	lw.s	%r4 %f4 0
	mul.s	%f4 %f2 %f2
	lw	%r2 %r4 36
	addi	%r4 %r4 0
	lw.s	%r4 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f2 %f2
	ilw.s	%r0 %f3 l.27
	div.s	%f3 %f2 %f2
	add.s	%f2 %f7 %f2
	sw.s	%r0 %f2 576
beq_cont.215 :
	lw	%r2 %r4 24
	addi	%r0 %r5 568
	lw.s	%r5 %f2 568
	mul.s	%f2 %f2 %f2
	addi	%r0 %r5 572
	lw.s	%r5 %f3 572
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r5 576
	lw.s	%r5 %f3 576
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	ilw.s	%r0 %f3 l.15
	fbne	%f2 %f3 fbeq_else.36 
	addi	%r0 %r5 1
	j	fbeq_cont.36 
fbeq_else.36 :
	addi	%r0 %r5 0
fbeq_cont.36 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.239 
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.240 
	ilw.s	%r0 %f3 l.16
	div.s	%f2 %f3 %f2
	j	beq_cont.217 
beq_else.240 :
	ilw.s	%r0 %f3 l.25
	div.s	%f2 %f3 %f2
beq_cont.217 :
	j	beq_cont.216 
beq_else.239 :
	ilw.s	%r0 %f2 l.16
beq_cont.216 :
	addi	%r0 %r4 568
	lw.s	%r4 %f3 568
	mul.s	%f2 %f3 %f3
	sw.s	%r0 %f3 568
	addi	%r0 %r4 572
	lw.s	%r4 %f3 572
	mul.s	%f2 %f3 %f3
	sw.s	%r0 %f3 572
	addi	%r0 %r4 576
	lw.s	%r4 %f3 576
	mul.s	%f2 %f3 %f2
	sw.s	%r0 %f2 576
beq_cont.214 :
beq_cont.211 :
	addi	%r0 %r4 552
	lw.s	%r4 %f2 552
	sw.s	%r0 %f2 636
	addi	%r0 %r4 556
	lw.s	%r4 %f2 556
	sw.s	%r0 %f2 640
	addi	%r0 %r4 560
	lw.s	%r4 %f2 560
	sw.s	%r0 %f2 644
	lw	%r2 %r4 0
	lw	%r2 %r5 32
	addi	%r5 %r5 0
	lw.s	%r5 %f2 0
	sw.s	%r0 %f2 580
	lw	%r2 %r5 32
	addi	%r5 %r5 4
	lw.s	%r5 %f2 0
	sw.s	%r0 %f2 584
	lw	%r2 %r5 32
	addi	%r5 %r5 8
	lw.s	%r5 %f2 0
	sw.s	%r0 %f2 588
	addi	%r0 %r5 1
	sw	%r26 %r3 -44
	sw.s	%r26 %f0 -48
	sw	%r26 %r2 -56
	sw	%r26 %r1 -60
	bne	%r4 %r5 beq_else.241 
	addi	%r0 %r4 552
	lw.s	%r4 %f2 552
	lw	%r2 %r4 20
	addi	%r4 %r4 0
	lw.s	%r4 %f3 0
	sub.s	%f3 %f2 %f2
	ilw.s	%r0 %f3 l.51
	mul.s	%f3 %f2 %f3
	floor.w.s	%f3 %f3
	ilw.s	%r0 %f4 l.52
	mul.s	%f4 %f3 %f3
	sub.s	%f3 %f2 %f2
	ilw.s	%r0 %f3 l.49
	fbge	%f2 %f3 fbl_else.125 
	addi	%r0 %r4 1
	j	fbl_cont.123 
fbl_else.125 :
	addi	%r0 %r4 0
fbl_cont.123 :
	addi	%r0 %r5 560
	lw.s	%r5 %f2 560
	lw	%r2 %r5 20
	addi	%r5 %r5 8
	lw.s	%r5 %f3 0
	sub.s	%f3 %f2 %f2
	ilw.s	%r0 %f3 l.51
	mul.s	%f3 %f2 %f3
	floor.w.s	%f3 %f3
	ilw.s	%r0 %f4 l.52
	mul.s	%f4 %f3 %f3
	sub.s	%f3 %f2 %f2
	ilw.s	%r0 %f3 l.49
	fbge	%f2 %f3 fbl_else.126 
	addi	%r0 %r5 1
	j	fbl_cont.124 
fbl_else.126 :
	addi	%r0 %r5 0
fbl_cont.124 :
	addi	%r0 %r6 0
	bne	%r4 %r6 beq_else.242 
	addi	%r0 %r4 0
	bne	%r5 %r4 beq_else.243 
	ilw.s	%r0 %f2 l.47
	j	beq_cont.220 
beq_else.243 :
	ilw.s	%r0 %f2 l.15
beq_cont.220 :
	j	beq_cont.219 
beq_else.242 :
	addi	%r0 %r4 0
	bne	%r5 %r4 beq_else.244 
	ilw.s	%r0 %f2 l.15
	j	beq_cont.221 
beq_else.244 :
	ilw.s	%r0 %f2 l.47
beq_cont.221 :
beq_cont.219 :
	sw.s	%r0 %f2 584
	j	beq_cont.218 
beq_else.241 :
	addi	%r0 %r5 2
	bne	%r4 %r5 beq_else.245 
	addi	%r0 %r4 556
	lw.s	%r4 %f2 556
	ilw.s	%r0 %f3 l.50
	mul.s	%f3 %f2 %f2
	mov.s	%f2 %f0
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	sin.0 
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f1 l.47
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f1 l.47
	ilw.s	%r0 %f2 l.16
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 584
	j	beq_cont.222 
beq_else.245 :
	addi	%r0 %r5 3
	bne	%r4 %r5 beq_else.246 
	addi	%r0 %r4 552
	lw.s	%r4 %f2 552
	lw	%r2 %r4 20
	addi	%r4 %r4 0
	lw.s	%r4 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r4 560
	lw.s	%r4 %f3 560
	lw	%r2 %r4 20
	addi	%r4 %r4 8
	lw.s	%r4 %f4 0
	sub.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f2
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	ilw.s	%r0 %f3 l.49
	div.s	%f3 %f2 %f2
	floor.w.s	%f2 %f3
	sub.s	%f3 %f2 %f2
	ilw.s	%r0 %f3 l.45
	mul.s	%f3 %f2 %f2
	mov.s	%f2 %f0
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	cos.0 
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f1 l.47
	mul.s	%f1 %f0 %f1
	sw.s	%r0 %f1 584
	ilw.s	%r0 %f1 l.16
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.47
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	j	beq_cont.223 
beq_else.246 :
	addi	%r0 %r5 4
	bne	%r4 %r5 beq_else.247 
	addi	%r0 %r4 552
	lw.s	%r4 %f2 552
	lw	%r2 %r4 20
	addi	%r4 %r4 0
	lw.s	%r4 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r2 %r4 16
	addi	%r4 %r4 0
	lw.s	%r4 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f2 %f2
	addi	%r0 %r4 560
	lw.s	%r4 %f3 560
	lw	%r2 %r4 20
	addi	%r4 %r4 8
	lw.s	%r4 %f4 0
	sub.s	%f4 %f3 %f3
	lw	%r2 %r4 16
	addi	%r4 %r4 8
	lw.s	%r4 %f4 0
	sqrt.s	%f4 %f4
	mul.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f4
	mul.s	%f3 %f3 %f5
	add.s	%f5 %f4 %f4
	ilw.s	%r0 %f5 l.15
	fbge	%f2 %f5 fbl_else.127 
	neg.s	%f2 %f5
	j	fbl_cont.125 
fbl_else.127 :
	mov.s	%f2 %f5
fbl_cont.125 :
	ilw.s	%r0 %f6 l.33
	fbge	%f5 %f6 fbl_else.128 
	addi	%r0 %r4 1
	j	fbl_cont.126 
fbl_else.128 :
	addi	%r0 %r4 0
fbl_cont.126 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.248 
	div.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.15
	fbge	%f2 %f3 fbl_else.129 
	neg.s	%f2 %f2
	j	fbl_cont.127 
fbl_else.129 :
fbl_cont.127 :
	ilw.s	%r0 %f3 l.15
	fbg	%f3 %f2 fble_else.16 
	ilw.s	%r0 %f3 l.35
	fbge	%f2 %f3 fbl_else.130 
	ilw.s	%r0 %f3 l.16
	ilw.s	%r0 %f5 l.15
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f2 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.128 
fbl_else.130 :
	ilw.s	%r0 %f3 l.36
	fbge	%f2 %f3 fbl_else.131 
	ilw.s	%r0 %f3 l.16
	sub.s	%f3 %f2 %f3
	ilw.s	%r0 %f5 l.16
	add.s	%f5 %f2 %f2
	div.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.16
	ilw.s	%r0 %f5 l.18
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f2 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.129 
fbl_else.131 :
	ilw.s	%r0 %f3 l.16
	div.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.25
	ilw.s	%r0 %f5 l.37
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f2 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
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
	ilw.s	%r0 %f3 l.35
	fbge	%f2 %f3 fbl_else.132 
	ilw.s	%r0 %f3 l.25
	ilw.s	%r0 %f5 l.15
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f2 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.130 
fbl_else.132 :
	ilw.s	%r0 %f3 l.36
	fbge	%f2 %f3 fbl_else.133 
	ilw.s	%r0 %f3 l.16
	sub.s	%f3 %f2 %f3
	ilw.s	%r0 %f5 l.16
	add.s	%f5 %f2 %f2
	div.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.25
	ilw.s	%r0 %f5 l.18
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f2 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.131 
fbl_else.133 :
	ilw.s	%r0 %f3 l.16
	div.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.16
	ilw.s	%r0 %f5 l.37
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f2 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
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
	ilw.s	%r0 %f3 l.44
	mul.s	%f3 %f2 %f2
	ilw.s	%r0 %f3 l.45
	div.s	%f3 %f2 %f2
	j	beq_cont.225 
beq_else.248 :
	ilw.s	%r0 %f2 l.34
beq_cont.225 :
	floor.w.s	%f2 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r4 556
	lw.s	%r4 %f3 556
	lw	%r2 %r4 20
	addi	%r4 %r4 4
	lw.s	%r4 %f5 0
	sub.s	%f5 %f3 %f3
	lw	%r2 %r4 16
	addi	%r4 %r4 4
	lw.s	%r4 %f5 0
	sqrt.s	%f5 %f5
	mul.s	%f5 %f3 %f3
	ilw.s	%r0 %f5 l.15
	fbge	%f4 %f5 fbl_else.134 
	neg.s	%f4 %f5
	j	fbl_cont.132 
fbl_else.134 :
	mov.s	%f4 %f5
fbl_cont.132 :
	ilw.s	%r0 %f6 l.33
	fbge	%f5 %f6 fbl_else.135 
	addi	%r0 %r4 1
	j	fbl_cont.133 
fbl_else.135 :
	addi	%r0 %r4 0
fbl_cont.133 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.249 
	div.s	%f4 %f3 %f3
	ilw.s	%r0 %f4 l.15
	fbge	%f3 %f4 fbl_else.136 
	neg.s	%f3 %f3
	j	fbl_cont.134 
fbl_else.136 :
fbl_cont.134 :
	ilw.s	%r0 %f4 l.15
	fbg	%f4 %f3 fble_else.17 
	ilw.s	%r0 %f4 l.35
	fbge	%f3 %f4 fbl_else.137 
	ilw.s	%r0 %f4 l.16
	ilw.s	%r0 %f5 l.15
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f3 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.135 
fbl_else.137 :
	ilw.s	%r0 %f4 l.36
	fbge	%f3 %f4 fbl_else.138 
	ilw.s	%r0 %f4 l.16
	sub.s	%f4 %f3 %f4
	ilw.s	%r0 %f5 l.16
	add.s	%f5 %f3 %f3
	div.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.16
	ilw.s	%r0 %f5 l.18
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f3 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.136 
fbl_else.138 :
	ilw.s	%r0 %f4 l.16
	div.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.25
	ilw.s	%r0 %f5 l.37
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f3 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
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
	ilw.s	%r0 %f4 l.35
	fbge	%f3 %f4 fbl_else.139 
	ilw.s	%r0 %f4 l.25
	ilw.s	%r0 %f5 l.15
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f3 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.137 
fbl_else.139 :
	ilw.s	%r0 %f4 l.36
	fbge	%f3 %f4 fbl_else.140 
	ilw.s	%r0 %f4 l.16
	sub.s	%f4 %f3 %f4
	ilw.s	%r0 %f5 l.16
	add.s	%f5 %f3 %f3
	div.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.25
	ilw.s	%r0 %f5 l.18
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f3 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.138 
fbl_else.140 :
	ilw.s	%r0 %f4 l.16
	div.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.16
	ilw.s	%r0 %f5 l.37
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f3 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
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
	ilw.s	%r0 %f4 l.44
	mul.s	%f4 %f3 %f3
	ilw.s	%r0 %f4 l.45
	div.s	%f4 %f3 %f3
	j	beq_cont.226 
beq_else.249 :
	ilw.s	%r0 %f3 l.34
beq_cont.226 :
	floor.w.s	%f3 %f4
	sub.s	%f4 %f3 %f3
	ilw.s	%r0 %f4 l.46
	ilw.s	%r0 %f5 l.21
	sub.s	%f2 %f5 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f4 %f2
	ilw.s	%r0 %f4 l.21
	sub.s	%f3 %f4 %f3
	mul.s	%f3 %f3 %f3
	sub.s	%f3 %f2 %f2
	ilw.s	%r0 %f3 l.15
	fbge	%f2 %f3 fbl_else.141 
	addi	%r0 %r4 1
	j	fbl_cont.139 
fbl_else.141 :
	addi	%r0 %r4 0
fbl_cont.139 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.250 
	j	beq_cont.227 
beq_else.250 :
	ilw.s	%r0 %f2 l.15
beq_cont.227 :
	ilw.s	%r0 %f3 l.47
	mul.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.48
	div.s	%f3 %f2 %f2
	sw.s	%r0 %f2 588
	j	beq_cont.224 
beq_else.247 :
beq_cont.224 :
beq_cont.223 :
beq_cont.222 :
beq_cont.218 :
	addi	%r0 %r1 4
	lw	%r26 %r2 -60
	mul	%r2 %r1 %r1
	lw	%r0 %r2 544
	add	%r1 %r2 %r1
	lw	%r26 %r2 -40
	slli	%r2 %r3 2
	lw	%r26 %r4 -36
	add	%r4 %r3 %r3
	sw	%r3 %r1 0
	lw	%r26 %r1 -20
	lw	%r1 %r3 4
	slli	%r2 %r5 2
	add	%r3 %r5 %r3
	lw	%r3 %r3 0
	addi	%r0 %r5 552
	lw.s	%r5 %f0 552
	addi	%r3 %r5 0
	sw.s	%r5 %f0 0
	addi	%r0 %r5 556
	lw.s	%r5 %f0 556
	addi	%r3 %r5 4
	sw.s	%r5 %f0 0
	addi	%r0 %r5 560
	lw.s	%r5 %f0 560
	addi	%r3 %r3 8
	sw.s	%r3 %f0 0
	lw	%r1 %r3 12
	lw	%r26 %r5 -56
	lw	%r5 %r6 28
	addi	%r6 %r6 0
	lw.s	%r6 %f0 0
	ilw.s	%r0 %f1 l.21
	fbge	%f0 %f1 fbl_else.142 
	addi	%r0 %r6 1
	j	fbl_cont.140 
fbl_else.142 :
	addi	%r0 %r6 0
fbl_cont.140 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.251 
	addi	%r0 %r6 1
	slli	%r2 %r7 2
	add	%r3 %r7 %r3
	sw	%r3 %r6 0
	lw	%r1 %r3 16
	slli	%r2 %r6 2
	add	%r3 %r6 %r6
	lw	%r6 %r6 0
	addi	%r0 %r7 580
	lw.s	%r7 %f0 580
	addi	%r6 %r7 0
	sw.s	%r7 %f0 0
	addi	%r0 %r7 584
	lw.s	%r7 %f0 584
	addi	%r6 %r7 4
	sw.s	%r7 %f0 0
	addi	%r0 %r7 588
	lw.s	%r7 %f0 588
	addi	%r6 %r6 8
	sw.s	%r6 %f0 0
	slli	%r2 %r6 2
	add	%r3 %r6 %r3
	lw	%r3 %r3 0
	ilw.s	%r0 %f0 l.53
	lw.s	%r26 %f1 -48
	mul.s	%f1 %f0 %f0
	addi	%r3 %r6 0
	lw.s	%r6 %f2 0
	mul.s	%f0 %f2 %f2
	addi	%r3 %r6 0
	sw.s	%r6 %f2 0
	addi	%r3 %r6 4
	lw.s	%r6 %f2 0
	mul.s	%f0 %f2 %f2
	addi	%r3 %r6 4
	sw.s	%r6 %f2 0
	addi	%r3 %r6 8
	lw.s	%r6 %f2 0
	mul.s	%f0 %f2 %f0
	addi	%r3 %r3 8
	sw.s	%r3 %f0 0
	lw	%r1 %r3 28
	slli	%r2 %r6 2
	add	%r3 %r6 %r3
	lw	%r3 %r3 0
	addi	%r0 %r6 568
	lw.s	%r6 %f0 568
	addi	%r3 %r6 0
	sw.s	%r6 %f0 0
	addi	%r0 %r6 572
	lw.s	%r6 %f0 572
	addi	%r3 %r6 4
	sw.s	%r6 %f0 0
	addi	%r0 %r6 576
	lw.s	%r6 %f0 576
	addi	%r3 %r3 8
	sw.s	%r3 %f0 0
	j	beq_cont.228 
beq_else.251 :
	addi	%r0 %r6 0
	slli	%r2 %r7 2
	add	%r3 %r7 %r3
	sw	%r3 %r6 0
beq_cont.228 :
	ilw.s	%r0 %f0 l.54
	lw	%r26 %r3 -32
	addi	%r3 %r6 0
	lw.s	%r6 %f1 0
	addi	%r0 %r6 568
	lw.s	%r6 %f2 568
	mul.s	%f2 %f1 %f1
	addi	%r3 %r6 4
	lw.s	%r6 %f2 0
	addi	%r0 %r6 572
	lw.s	%r6 %f3 572
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	addi	%r3 %r6 8
	lw.s	%r6 %f2 0
	addi	%r0 %r6 576
	lw.s	%r6 %f3 576
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	mul.s	%f1 %f0 %f0
	addi	%r3 %r6 0
	lw.s	%r6 %f1 0
	addi	%r0 %r6 568
	lw.s	%r6 %f2 568
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	addi	%r3 %r6 0
	sw.s	%r6 %f1 0
	addi	%r3 %r6 4
	lw.s	%r6 %f1 0
	addi	%r0 %r6 572
	lw.s	%r6 %f2 572
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	addi	%r3 %r6 4
	sw.s	%r6 %f1 0
	addi	%r3 %r6 8
	lw.s	%r6 %f1 0
	addi	%r0 %r6 576
	lw.s	%r6 %f2 576
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r3 %r6 8
	sw.s	%r6 %f0 0
	lw	%r5 %r6 28
	addi	%r6 %r6 4
	lw.s	%r6 %f0 0
	lw.s	%r26 %f1 -24
	mul.s	%f0 %f1 %f0
	addi	%r0 %r6 0
	lw	%r0 %r7 536
	sw.s	%r26 %f0 -64
	mov	%r7 %r2
	mov	%r6 %r1
	sw	%r26 %r28 -72
	addi	%r26 %r26 -76
	jal	shadow_check_one_or_matrix.0 
	addi	%r26 %r26 76
	lw	%r26 %r28 -72
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.252 
	addi	%r0 %r1 568
	lw.s	%r1 %f0 568
	addi	%r0 %r1 312
	lw.s	%r1 %f1 312
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 572
	lw.s	%r1 %f1 572
	addi	%r0 %r1 316
	lw.s	%r1 %f2 316
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 576
	lw.s	%r1 %f1 576
	addi	%r0 %r1 320
	lw.s	%r1 %f2 320
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	lw.s	%r26 %f1 -48
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 -32
	addi	%r1 %r2 0
	lw.s	%r2 %f2 0
	addi	%r0 %r2 312
	lw.s	%r2 %f3 312
	mul.s	%f3 %f2 %f2
	addi	%r1 %r2 4
	lw.s	%r2 %f3 0
	addi	%r0 %r2 316
	lw.s	%r2 %f4 316
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f2 %f2
	addi	%r1 %r2 8
	lw.s	%r2 %f3 0
	addi	%r0 %r2 320
	lw.s	%r2 %f4 320
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f2 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.15
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
	addi	%r0 %r2 604
	lw.s	%r2 %f3 604
	addi	%r0 %r2 580
	lw.s	%r2 %f4 580
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f3 %f3
	sw.s	%r0 %f3 604
	addi	%r0 %r2 608
	lw.s	%r2 %f3 608
	addi	%r0 %r2 584
	lw.s	%r2 %f4 584
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f3 %f3
	sw.s	%r0 %f3 608
	addi	%r0 %r2 612
	lw.s	%r2 %f3 612
	addi	%r0 %r2 588
	lw.s	%r2 %f4 588
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	sw.s	%r0 %f0 612
beq_cont.230 :
	ilw.s	%r0 %f0 l.15
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
	lw.s	%r26 %f2 -64
	mul.s	%f2 %f0 %f0
	addi	%r0 %r2 604
	lw.s	%r2 %f3 604
	add.s	%f0 %f3 %f3
	sw.s	%r0 %f3 604
	addi	%r0 %r2 608
	lw.s	%r2 %f3 608
	add.s	%f0 %f3 %f3
	sw.s	%r0 %f3 608
	addi	%r0 %r2 612
	lw.s	%r2 %f3 612
	add.s	%f0 %f3 %f0
	sw.s	%r0 %f0 612
beq_cont.231 :
	j	beq_cont.229 
beq_else.252 :
beq_cont.229 :
	addi	%r0 %r1 552
	lw.s	%r1 %f0 552
	sw.s	%r0 %f0 648
	addi	%r0 %r1 556
	lw.s	%r1 %f0 556
	sw.s	%r0 %f0 652
	addi	%r0 %r1 560
	lw.s	%r1 %f0 560
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r2 -1
	lw	%r26 %r1 -16
	sw	%r26 %r28 -72
	addi	%r26 %r26 -76
	jal	setup_startp_constants.0 
	addi	%r26 %r26 76
	lw	%r26 %r28 -72
	lw	%r0 %r1 1736
	addi	%r1 %r1 -1
	lw.s	%r26 %f0 -48
	lw.s	%r26 %f1 -64
	lw	%r26 %r2 -32
	sw	%r26 %r28 -72
	addi	%r26 %r26 -76
	jal	trace_reflections.0 
	addi	%r26 %r26 76
	lw	%r26 %r28 -72
	ilw.s	%r0 %f0 l.55
	lw.s	%r26 %f1 -24
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
	lw	%r26 %r2 -40
	bge	%r2 %r1 bl_else.6 
	addi	%r2 %r1 1
	addi	%r0 %r3 -1
	slli	%r1 %r1 2
	lw	%r26 %r4 -36
	add	%r4 %r1 %r1
	sw	%r1 %r3 0
	j	bl_cont.5 
bl_else.6 :
bl_cont.5 :
	addi	%r0 %r1 2
	lw	%r26 %r3 -44
	bne	%r3 %r1 beq_else.256 
	ilw.s	%r0 %f0 l.16
	lw	%r26 %r1 -56
	lw	%r1 %r1 28
	addi	%r1 %r1 0
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f1 %f0
	addi	%r2 %r1 1
	addi	%r0 %r2 548
	lw.s	%r2 %f1 548
	lw.s	%r26 %f2 -8
	add.s	%f1 %f2 %f1
	lw	%r26 %r2 -32
	lw	%r26 %r3 -20
	lw	%r26 %r30 -0
	lw	%r30 %r29 0
	jr	%r29
beq_else.256 :
	retl
ble_else.4 :
	retl
iter_trace_diffuse_rays.0 :
	addi	%r0 %r5 0
	bg	%r5 %r4 ble_else.5 
	slli	%r4 %r5 2
	add	%r1 %r5 %r5
	lw	%r5 %r5 0
	lw	%r5 %r5 0
	addi	%r5 %r6 0
	lw.s	%r6 %f0 0
	addi	%r2 %r6 0
	lw.s	%r6 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r5 %r6 4
	lw.s	%r6 %f1 0
	addi	%r2 %r6 4
	lw.s	%r6 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r5 %r5 8
	lw.s	%r5 %f1 0
	addi	%r2 %r5 8
	lw.s	%r5 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.146 
	addi	%r0 %r5 1
	j	fbl_cont.144 
fbl_else.146 :
	addi	%r0 %r5 0
fbl_cont.144 :
	addi	%r0 %r6 0
	sw	%r26 %r3 -0
	sw	%r26 %r2 -4
	sw	%r26 %r1 -8
	sw	%r26 %r4 -12
	bne	%r5 %r6 beq_else.257 
	slli	%r4 %r5 2
	add	%r1 %r5 %r5
	lw	%r5 %r5 0
	ilw.s	%r0 %f1 l.57
	div.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.31
	sw.s	%r0 %f1 548
	addi	%r0 %r6 0
	lw	%r0 %r7 536
	sw.s	%r26 %f0 -16
	sw	%r26 %r5 -24
	mov	%r5 %r3
	mov	%r7 %r2
	mov	%r6 %r1
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	trace_or_matrix_fast.0 
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	addi	%r0 %r1 548
	lw.s	%r1 %f0 548
	ilw.s	%r0 %f1 l.30
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
	ilw.s	%r0 %f1 l.32
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
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r26 %r2 -24
	lw	%r2 %r2 0
	lw	%r1 %r3 4
	addi	%r0 %r4 1
	bne	%r3 %r4 beq_else.260 
	lw	%r0 %r3 544
	ilw.s	%r0 %f0 l.15
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r3 %r4 -1
	addi	%r3 %r3 -1
	slli	%r3 %r3 2
	add	%r2 %r3 %r2
	lw.s	%r2 %f0 0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.37 
	addi	%r0 %r2 1
	j	fbeq_cont.37 
fbeq_else.37 :
	addi	%r0 %r2 0
fbeq_cont.37 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.261 
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.149 
	addi	%r0 %r2 1
	j	fbl_cont.147 
fbl_else.149 :
	addi	%r0 %r2 0
fbl_cont.147 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.262 
	ilw.s	%r0 %f0 l.25
	j	beq_cont.237 
beq_else.262 :
	ilw.s	%r0 %f0 l.16
beq_cont.237 :
	j	beq_cont.236 
beq_else.261 :
	ilw.s	%r0 %f0 l.15
beq_cont.236 :
	neg.s	%f0 %f0
	slli	%r4 %r2 2
	addi	%r2 %r2 568
	sw.s	%r2 %f0 0
	j	beq_cont.235 
beq_else.260 :
	addi	%r0 %r2 2
	bne	%r3 %r2 beq_else.263 
	lw	%r1 %r2 16
	addi	%r2 %r2 0
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r1 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r1 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	beq_cont.238 
beq_else.263 :
	addi	%r0 %r2 552
	lw.s	%r2 %f0 552
	lw	%r1 %r2 20
	addi	%r2 %r2 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 556
	lw.s	%r2 %f1 556
	lw	%r1 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r2 560
	lw.s	%r2 %f2 560
	lw	%r1 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r1 %r2 16
	addi	%r2 %r2 0
	lw.s	%r2 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f4 0
	mul.s	%f4 %f1 %f4
	lw	%r1 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r1 %r2 12
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.264 
	sw.s	%r0 %f3 568
	sw.s	%r0 %f4 572
	sw.s	%r0 %f5 576
	j	beq_cont.239 
beq_else.264 :
	lw	%r1 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f6 0
	mul.s	%f6 %f1 %f6
	lw	%r1 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f7 0
	mul.s	%f7 %f2 %f7
	add.s	%f7 %f6 %f6
	ilw.s	%r0 %f7 l.27
	div.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f3
	sw.s	%r0 %f3 568
	lw	%r1 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r2 36
	addi	%r2 %r2 0
	lw.s	%r2 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.27
	div.s	%f3 %f2 %f2
	add.s	%f2 %f4 %f2
	sw.s	%r0 %f2 572
	lw	%r1 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	mul.s	%f2 %f0 %f0
	lw	%r1 %r2 36
	addi	%r2 %r2 0
	lw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.27
	div.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 576
beq_cont.239 :
	lw	%r1 %r2 24
	addi	%r0 %r3 568
	lw.s	%r3 %f0 568
	mul.s	%f0 %f0 %f0
	addi	%r0 %r3 572
	lw.s	%r3 %f1 572
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 576
	lw.s	%r3 %f1 576
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.38 
	addi	%r0 %r3 1
	j	fbeq_cont.38 
fbeq_else.38 :
	addi	%r0 %r3 0
fbeq_cont.38 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.265 
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.266 
	ilw.s	%r0 %f1 l.16
	div.s	%f0 %f1 %f0
	j	beq_cont.241 
beq_else.266 :
	ilw.s	%r0 %f1 l.25
	div.s	%f0 %f1 %f0
beq_cont.241 :
	j	beq_cont.240 
beq_else.265 :
	ilw.s	%r0 %f0 l.16
beq_cont.240 :
	addi	%r0 %r2 568
	lw.s	%r2 %f1 568
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 568
	addi	%r0 %r2 572
	lw.s	%r2 %f1 572
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 572
	addi	%r0 %r2 576
	lw.s	%r2 %f1 576
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 576
beq_cont.238 :
beq_cont.235 :
	lw	%r1 %r2 0
	lw	%r1 %r3 32
	addi	%r3 %r3 0
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 580
	lw	%r1 %r3 32
	addi	%r3 %r3 4
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 584
	lw	%r1 %r3 32
	addi	%r3 %r3 8
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 588
	addi	%r0 %r3 1
	sw	%r26 %r1 -28
	bne	%r2 %r3 beq_else.267 
	addi	%r0 %r2 552
	lw.s	%r2 %f0 552
	lw	%r1 %r2 20
	addi	%r2 %r2 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.51
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	ilw.s	%r0 %f2 l.52
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.49
	fbge	%f0 %f1 fbl_else.150 
	addi	%r0 %r2 1
	j	fbl_cont.148 
fbl_else.150 :
	addi	%r0 %r2 0
fbl_cont.148 :
	addi	%r0 %r3 560
	lw.s	%r3 %f0 560
	lw	%r1 %r3 20
	addi	%r3 %r3 8
	lw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.51
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	ilw.s	%r0 %f2 l.52
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.49
	fbge	%f0 %f1 fbl_else.151 
	addi	%r0 %r3 1
	j	fbl_cont.149 
fbl_else.151 :
	addi	%r0 %r3 0
fbl_cont.149 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.268 
	addi	%r0 %r2 0
	bne	%r3 %r2 beq_else.269 
	ilw.s	%r0 %f0 l.47
	j	beq_cont.244 
beq_else.269 :
	ilw.s	%r0 %f0 l.15
beq_cont.244 :
	j	beq_cont.243 
beq_else.268 :
	addi	%r0 %r2 0
	bne	%r3 %r2 beq_else.270 
	ilw.s	%r0 %f0 l.15
	j	beq_cont.245 
beq_else.270 :
	ilw.s	%r0 %f0 l.47
beq_cont.245 :
beq_cont.243 :
	sw.s	%r0 %f0 584
	j	beq_cont.242 
beq_else.267 :
	addi	%r0 %r3 2
	bne	%r2 %r3 beq_else.271 
	addi	%r0 %r2 556
	lw.s	%r2 %f0 556
	ilw.s	%r0 %f1 l.50
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	sin.0 
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f1 l.47
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f1 l.47
	ilw.s	%r0 %f2 l.16
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 584
	j	beq_cont.246 
beq_else.271 :
	addi	%r0 %r3 3
	bne	%r2 %r3 beq_else.272 
	addi	%r0 %r2 552
	lw.s	%r2 %f0 552
	lw	%r1 %r2 20
	addi	%r2 %r2 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 560
	lw.s	%r2 %f1 560
	lw	%r1 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.49
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.45
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	cos.0 
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f1 l.47
	mul.s	%f1 %f0 %f1
	sw.s	%r0 %f1 584
	ilw.s	%r0 %f1 l.16
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.47
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	j	beq_cont.247 
beq_else.272 :
	addi	%r0 %r3 4
	bne	%r2 %r3 beq_else.273 
	addi	%r0 %r2 552
	lw.s	%r2 %f0 552
	lw	%r1 %r2 20
	addi	%r2 %r2 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r1 %r2 16
	addi	%r2 %r2 0
	lw.s	%r2 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 560
	lw.s	%r2 %f1 560
	lw	%r1 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f1
	lw	%r1 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sqrt.s	%f2 %f2
	mul.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	ilw.s	%r0 %f3 l.15
	fbge	%f0 %f3 fbl_else.152 
	neg.s	%f0 %f3
	j	fbl_cont.150 
fbl_else.152 :
	mov.s	%f0 %f3
fbl_cont.150 :
	ilw.s	%r0 %f4 l.33
	fbge	%f3 %f4 fbl_else.153 
	addi	%r0 %r2 1
	j	fbl_cont.151 
fbl_else.153 :
	addi	%r0 %r2 0
fbl_cont.151 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.274 
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.154 
	neg.s	%f0 %f0
	j	fbl_cont.152 
fbl_else.154 :
fbl_cont.152 :
	ilw.s	%r0 %f1 l.15
	fbg	%f1 %f0 fble_else.18 
	ilw.s	%r0 %f1 l.35
	fbge	%f0 %f1 fbl_else.155 
	ilw.s	%r0 %f1 l.16
	ilw.s	%r0 %f3 l.15
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.153 
fbl_else.155 :
	ilw.s	%r0 %f1 l.36
	fbge	%f0 %f1 fbl_else.156 
	ilw.s	%r0 %f1 l.16
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f3 l.16
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.16
	ilw.s	%r0 %f3 l.18
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.154 
fbl_else.156 :
	ilw.s	%r0 %f1 l.16
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.25
	ilw.s	%r0 %f3 l.37
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
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
	ilw.s	%r0 %f1 l.35
	fbge	%f0 %f1 fbl_else.157 
	ilw.s	%r0 %f1 l.25
	ilw.s	%r0 %f3 l.15
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.155 
fbl_else.157 :
	ilw.s	%r0 %f1 l.36
	fbge	%f0 %f1 fbl_else.158 
	ilw.s	%r0 %f1 l.16
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f3 l.16
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.25
	ilw.s	%r0 %f3 l.18
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.156 
fbl_else.158 :
	ilw.s	%r0 %f1 l.16
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.16
	ilw.s	%r0 %f3 l.37
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
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
	ilw.s	%r0 %f1 l.44
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.45
	div.s	%f1 %f0 %f0
	j	beq_cont.249 
beq_else.274 :
	ilw.s	%r0 %f0 l.34
beq_cont.249 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 556
	lw.s	%r2 %f1 556
	lw	%r1 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f3 0
	sub.s	%f3 %f1 %f1
	lw	%r1 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f1 %f1
	ilw.s	%r0 %f3 l.15
	fbge	%f2 %f3 fbl_else.159 
	neg.s	%f2 %f3
	j	fbl_cont.157 
fbl_else.159 :
	mov.s	%f2 %f3
fbl_cont.157 :
	ilw.s	%r0 %f4 l.33
	fbge	%f3 %f4 fbl_else.160 
	addi	%r0 %r2 1
	j	fbl_cont.158 
fbl_else.160 :
	addi	%r0 %r2 0
fbl_cont.158 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.275 
	div.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.15
	fbge	%f1 %f2 fbl_else.161 
	neg.s	%f1 %f1
	j	fbl_cont.159 
fbl_else.161 :
fbl_cont.159 :
	ilw.s	%r0 %f2 l.15
	fbg	%f2 %f1 fble_else.19 
	ilw.s	%r0 %f2 l.35
	fbge	%f1 %f2 fbl_else.162 
	ilw.s	%r0 %f2 l.16
	ilw.s	%r0 %f3 l.15
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.160 
fbl_else.162 :
	ilw.s	%r0 %f2 l.36
	fbge	%f1 %f2 fbl_else.163 
	ilw.s	%r0 %f2 l.16
	sub.s	%f2 %f1 %f2
	ilw.s	%r0 %f3 l.16
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.16
	ilw.s	%r0 %f3 l.18
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.161 
fbl_else.163 :
	ilw.s	%r0 %f2 l.16
	div.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.25
	ilw.s	%r0 %f3 l.37
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
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
	ilw.s	%r0 %f2 l.35
	fbge	%f1 %f2 fbl_else.164 
	ilw.s	%r0 %f2 l.25
	ilw.s	%r0 %f3 l.15
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.162 
fbl_else.164 :
	ilw.s	%r0 %f2 l.36
	fbge	%f1 %f2 fbl_else.165 
	ilw.s	%r0 %f2 l.16
	sub.s	%f2 %f1 %f2
	ilw.s	%r0 %f3 l.16
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.25
	ilw.s	%r0 %f3 l.18
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.163 
fbl_else.165 :
	ilw.s	%r0 %f2 l.16
	div.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.16
	ilw.s	%r0 %f3 l.37
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
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
	ilw.s	%r0 %f2 l.44
	mul.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.45
	div.s	%f2 %f1 %f1
	j	beq_cont.250 
beq_else.275 :
	ilw.s	%r0 %f1 l.34
beq_cont.250 :
	floor.w.s	%f1 %f2
	sub.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.46
	ilw.s	%r0 %f3 l.21
	sub.s	%f0 %f3 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.21
	sub.s	%f1 %f2 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.166 
	addi	%r0 %r2 1
	j	fbl_cont.164 
fbl_else.166 :
	addi	%r0 %r2 0
fbl_cont.164 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.276 
	j	beq_cont.251 
beq_else.276 :
	ilw.s	%r0 %f0 l.15
beq_cont.251 :
	ilw.s	%r0 %f1 l.47
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.48
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	j	beq_cont.248 
beq_else.273 :
beq_cont.248 :
beq_cont.247 :
beq_cont.246 :
beq_cont.242 :
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	shadow_check_one_or_matrix.0 
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.277 
	addi	%r0 %r1 568
	lw.s	%r1 %f0 568
	addi	%r0 %r1 312
	lw.s	%r1 %f1 312
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 572
	lw.s	%r1 %f1 572
	addi	%r0 %r1 316
	lw.s	%r1 %f2 316
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 576
	lw.s	%r1 %f1 576
	addi	%r0 %r1 320
	lw.s	%r1 %f2 320
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.167 
	addi	%r0 %r1 1
	j	fbl_cont.165 
fbl_else.167 :
	addi	%r0 %r1 0
fbl_cont.165 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.278 
	ilw.s	%r0 %f0 l.15
	j	beq_cont.253 
beq_else.278 :
beq_cont.253 :
	lw.s	%r26 %f1 -16
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 -28
	lw	%r1 %r1 28
	addi	%r1 %r1 0
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 592
	lw.s	%r1 %f1 592
	addi	%r0 %r1 580
	lw.s	%r1 %f2 580
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r0 %f1 592
	addi	%r0 %r1 596
	lw.s	%r1 %f1 596
	addi	%r0 %r1 584
	lw.s	%r1 %f2 584
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r0 %f1 596
	addi	%r0 %r1 600
	lw.s	%r1 %f1 600
	addi	%r0 %r1 588
	lw.s	%r1 %f2 588
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	j	beq_cont.252 
beq_else.277 :
beq_cont.252 :
beq_cont.234 :
	j	beq_cont.232 
beq_else.257 :
	addi	%r4 %r5 1
	slli	%r5 %r5 2
	add	%r1 %r5 %r5
	lw	%r5 %r5 0
	ilw.s	%r0 %f1 l.56
	div.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.31
	sw.s	%r0 %f1 548
	addi	%r0 %r6 0
	lw	%r0 %r7 536
	sw.s	%r26 %f0 -32
	sw	%r26 %r5 -40
	mov	%r5 %r3
	mov	%r7 %r2
	mov	%r6 %r1
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	trace_or_matrix_fast.0 
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	addi	%r0 %r1 548
	lw.s	%r1 %f0 548
	ilw.s	%r0 %f1 l.30
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
	ilw.s	%r0 %f1 l.32
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
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r26 %r2 -40
	lw	%r2 %r2 0
	lw	%r1 %r3 4
	addi	%r0 %r4 1
	bne	%r3 %r4 beq_else.281 
	lw	%r0 %r3 544
	ilw.s	%r0 %f0 l.15
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r3 %r4 -1
	addi	%r3 %r3 -1
	slli	%r3 %r3 2
	add	%r2 %r3 %r2
	lw.s	%r2 %f0 0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.39 
	addi	%r0 %r2 1
	j	fbeq_cont.39 
fbeq_else.39 :
	addi	%r0 %r2 0
fbeq_cont.39 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.282 
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.170 
	addi	%r0 %r2 1
	j	fbl_cont.168 
fbl_else.170 :
	addi	%r0 %r2 0
fbl_cont.168 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.283 
	ilw.s	%r0 %f0 l.25
	j	beq_cont.258 
beq_else.283 :
	ilw.s	%r0 %f0 l.16
beq_cont.258 :
	j	beq_cont.257 
beq_else.282 :
	ilw.s	%r0 %f0 l.15
beq_cont.257 :
	neg.s	%f0 %f0
	slli	%r4 %r2 2
	addi	%r2 %r2 568
	sw.s	%r2 %f0 0
	j	beq_cont.256 
beq_else.281 :
	addi	%r0 %r2 2
	bne	%r3 %r2 beq_else.284 
	lw	%r1 %r2 16
	addi	%r2 %r2 0
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r1 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r1 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	beq_cont.259 
beq_else.284 :
	addi	%r0 %r2 552
	lw.s	%r2 %f0 552
	lw	%r1 %r2 20
	addi	%r2 %r2 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 556
	lw.s	%r2 %f1 556
	lw	%r1 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r2 560
	lw.s	%r2 %f2 560
	lw	%r1 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r1 %r2 16
	addi	%r2 %r2 0
	lw.s	%r2 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f4 0
	mul.s	%f4 %f1 %f4
	lw	%r1 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r1 %r2 12
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.285 
	sw.s	%r0 %f3 568
	sw.s	%r0 %f4 572
	sw.s	%r0 %f5 576
	j	beq_cont.260 
beq_else.285 :
	lw	%r1 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f6 0
	mul.s	%f6 %f1 %f6
	lw	%r1 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f7 0
	mul.s	%f7 %f2 %f7
	add.s	%f7 %f6 %f6
	ilw.s	%r0 %f7 l.27
	div.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f3
	sw.s	%r0 %f3 568
	lw	%r1 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r2 36
	addi	%r2 %r2 0
	lw.s	%r2 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.27
	div.s	%f3 %f2 %f2
	add.s	%f2 %f4 %f2
	sw.s	%r0 %f2 572
	lw	%r1 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	mul.s	%f2 %f0 %f0
	lw	%r1 %r2 36
	addi	%r2 %r2 0
	lw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.27
	div.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 576
beq_cont.260 :
	lw	%r1 %r2 24
	addi	%r0 %r3 568
	lw.s	%r3 %f0 568
	mul.s	%f0 %f0 %f0
	addi	%r0 %r3 572
	lw.s	%r3 %f1 572
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 576
	lw.s	%r3 %f1 576
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.15
	fbne	%f0 %f1 fbeq_else.40 
	addi	%r0 %r3 1
	j	fbeq_cont.40 
fbeq_else.40 :
	addi	%r0 %r3 0
fbeq_cont.40 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.286 
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.287 
	ilw.s	%r0 %f1 l.16
	div.s	%f0 %f1 %f0
	j	beq_cont.262 
beq_else.287 :
	ilw.s	%r0 %f1 l.25
	div.s	%f0 %f1 %f0
beq_cont.262 :
	j	beq_cont.261 
beq_else.286 :
	ilw.s	%r0 %f0 l.16
beq_cont.261 :
	addi	%r0 %r2 568
	lw.s	%r2 %f1 568
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 568
	addi	%r0 %r2 572
	lw.s	%r2 %f1 572
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 572
	addi	%r0 %r2 576
	lw.s	%r2 %f1 576
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 576
beq_cont.259 :
beq_cont.256 :
	lw	%r1 %r2 0
	lw	%r1 %r3 32
	addi	%r3 %r3 0
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 580
	lw	%r1 %r3 32
	addi	%r3 %r3 4
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 584
	lw	%r1 %r3 32
	addi	%r3 %r3 8
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 588
	addi	%r0 %r3 1
	sw	%r26 %r1 -44
	bne	%r2 %r3 beq_else.288 
	addi	%r0 %r2 552
	lw.s	%r2 %f0 552
	lw	%r1 %r2 20
	addi	%r2 %r2 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.51
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	ilw.s	%r0 %f2 l.52
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.49
	fbge	%f0 %f1 fbl_else.171 
	addi	%r0 %r2 1
	j	fbl_cont.169 
fbl_else.171 :
	addi	%r0 %r2 0
fbl_cont.169 :
	addi	%r0 %r3 560
	lw.s	%r3 %f0 560
	lw	%r1 %r3 20
	addi	%r3 %r3 8
	lw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.51
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	ilw.s	%r0 %f2 l.52
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.49
	fbge	%f0 %f1 fbl_else.172 
	addi	%r0 %r3 1
	j	fbl_cont.170 
fbl_else.172 :
	addi	%r0 %r3 0
fbl_cont.170 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.289 
	addi	%r0 %r2 0
	bne	%r3 %r2 beq_else.290 
	ilw.s	%r0 %f0 l.47
	j	beq_cont.265 
beq_else.290 :
	ilw.s	%r0 %f0 l.15
beq_cont.265 :
	j	beq_cont.264 
beq_else.289 :
	addi	%r0 %r2 0
	bne	%r3 %r2 beq_else.291 
	ilw.s	%r0 %f0 l.15
	j	beq_cont.266 
beq_else.291 :
	ilw.s	%r0 %f0 l.47
beq_cont.266 :
beq_cont.264 :
	sw.s	%r0 %f0 584
	j	beq_cont.263 
beq_else.288 :
	addi	%r0 %r3 2
	bne	%r2 %r3 beq_else.292 
	addi	%r0 %r2 556
	lw.s	%r2 %f0 556
	ilw.s	%r0 %f1 l.50
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	sin.0 
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f1 l.47
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f1 l.47
	ilw.s	%r0 %f2 l.16
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 584
	j	beq_cont.267 
beq_else.292 :
	addi	%r0 %r3 3
	bne	%r2 %r3 beq_else.293 
	addi	%r0 %r2 552
	lw.s	%r2 %f0 552
	lw	%r1 %r2 20
	addi	%r2 %r2 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 560
	lw.s	%r2 %f1 560
	lw	%r1 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.49
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.45
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	cos.0 
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f1 l.47
	mul.s	%f1 %f0 %f1
	sw.s	%r0 %f1 584
	ilw.s	%r0 %f1 l.16
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.47
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	j	beq_cont.268 
beq_else.293 :
	addi	%r0 %r3 4
	bne	%r2 %r3 beq_else.294 
	addi	%r0 %r2 552
	lw.s	%r2 %f0 552
	lw	%r1 %r2 20
	addi	%r2 %r2 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r1 %r2 16
	addi	%r2 %r2 0
	lw.s	%r2 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 560
	lw.s	%r2 %f1 560
	lw	%r1 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f1
	lw	%r1 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sqrt.s	%f2 %f2
	mul.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	ilw.s	%r0 %f3 l.15
	fbge	%f0 %f3 fbl_else.173 
	neg.s	%f0 %f3
	j	fbl_cont.171 
fbl_else.173 :
	mov.s	%f0 %f3
fbl_cont.171 :
	ilw.s	%r0 %f4 l.33
	fbge	%f3 %f4 fbl_else.174 
	addi	%r0 %r2 1
	j	fbl_cont.172 
fbl_else.174 :
	addi	%r0 %r2 0
fbl_cont.172 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.295 
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.175 
	neg.s	%f0 %f0
	j	fbl_cont.173 
fbl_else.175 :
fbl_cont.173 :
	ilw.s	%r0 %f1 l.15
	fbg	%f1 %f0 fble_else.20 
	ilw.s	%r0 %f1 l.35
	fbge	%f0 %f1 fbl_else.176 
	ilw.s	%r0 %f1 l.16
	ilw.s	%r0 %f3 l.15
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.174 
fbl_else.176 :
	ilw.s	%r0 %f1 l.36
	fbge	%f0 %f1 fbl_else.177 
	ilw.s	%r0 %f1 l.16
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f3 l.16
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.16
	ilw.s	%r0 %f3 l.18
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.175 
fbl_else.177 :
	ilw.s	%r0 %f1 l.16
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.25
	ilw.s	%r0 %f3 l.37
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
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
	ilw.s	%r0 %f1 l.35
	fbge	%f0 %f1 fbl_else.178 
	ilw.s	%r0 %f1 l.25
	ilw.s	%r0 %f3 l.15
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.176 
fbl_else.178 :
	ilw.s	%r0 %f1 l.36
	fbge	%f0 %f1 fbl_else.179 
	ilw.s	%r0 %f1 l.16
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f3 l.16
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.25
	ilw.s	%r0 %f3 l.18
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.177 
fbl_else.179 :
	ilw.s	%r0 %f1 l.16
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.16
	ilw.s	%r0 %f3 l.37
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
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
	ilw.s	%r0 %f1 l.44
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.45
	div.s	%f1 %f0 %f0
	j	beq_cont.270 
beq_else.295 :
	ilw.s	%r0 %f0 l.34
beq_cont.270 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 556
	lw.s	%r2 %f1 556
	lw	%r1 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f3 0
	sub.s	%f3 %f1 %f1
	lw	%r1 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f1 %f1
	ilw.s	%r0 %f3 l.15
	fbge	%f2 %f3 fbl_else.180 
	neg.s	%f2 %f3
	j	fbl_cont.178 
fbl_else.180 :
	mov.s	%f2 %f3
fbl_cont.178 :
	ilw.s	%r0 %f4 l.33
	fbge	%f3 %f4 fbl_else.181 
	addi	%r0 %r2 1
	j	fbl_cont.179 
fbl_else.181 :
	addi	%r0 %r2 0
fbl_cont.179 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.296 
	div.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.15
	fbge	%f1 %f2 fbl_else.182 
	neg.s	%f1 %f1
	j	fbl_cont.180 
fbl_else.182 :
fbl_cont.180 :
	ilw.s	%r0 %f2 l.15
	fbg	%f2 %f1 fble_else.21 
	ilw.s	%r0 %f2 l.35
	fbge	%f1 %f2 fbl_else.183 
	ilw.s	%r0 %f2 l.16
	ilw.s	%r0 %f3 l.15
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.181 
fbl_else.183 :
	ilw.s	%r0 %f2 l.36
	fbge	%f1 %f2 fbl_else.184 
	ilw.s	%r0 %f2 l.16
	sub.s	%f2 %f1 %f2
	ilw.s	%r0 %f3 l.16
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.16
	ilw.s	%r0 %f3 l.18
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.182 
fbl_else.184 :
	ilw.s	%r0 %f2 l.16
	div.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.25
	ilw.s	%r0 %f3 l.37
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
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
	ilw.s	%r0 %f2 l.35
	fbge	%f1 %f2 fbl_else.185 
	ilw.s	%r0 %f2 l.25
	ilw.s	%r0 %f3 l.15
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.183 
fbl_else.185 :
	ilw.s	%r0 %f2 l.36
	fbge	%f1 %f2 fbl_else.186 
	ilw.s	%r0 %f2 l.16
	sub.s	%f2 %f1 %f2
	ilw.s	%r0 %f3 l.16
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.25
	ilw.s	%r0 %f3 l.18
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.184 
fbl_else.186 :
	ilw.s	%r0 %f2 l.16
	div.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.16
	ilw.s	%r0 %f3 l.37
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	ilw.s	%r0 %f5 l.38
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.39
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.40
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.41
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.42
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.43
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
	ilw.s	%r0 %f2 l.44
	mul.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.45
	div.s	%f2 %f1 %f1
	j	beq_cont.271 
beq_else.296 :
	ilw.s	%r0 %f1 l.34
beq_cont.271 :
	floor.w.s	%f1 %f2
	sub.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.46
	ilw.s	%r0 %f3 l.21
	sub.s	%f0 %f3 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.21
	sub.s	%f1 %f2 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f0 %f1 fbl_else.187 
	addi	%r0 %r2 1
	j	fbl_cont.185 
fbl_else.187 :
	addi	%r0 %r2 0
fbl_cont.185 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.297 
	j	beq_cont.272 
beq_else.297 :
	ilw.s	%r0 %f0 l.15
beq_cont.272 :
	ilw.s	%r0 %f1 l.47
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.48
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	j	beq_cont.269 
beq_else.294 :
beq_cont.269 :
beq_cont.268 :
beq_cont.267 :
beq_cont.263 :
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	shadow_check_one_or_matrix.0 
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.298 
	addi	%r0 %r1 568
	lw.s	%r1 %f0 568
	addi	%r0 %r1 312
	lw.s	%r1 %f1 312
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 572
	lw.s	%r1 %f1 572
	addi	%r0 %r1 316
	lw.s	%r1 %f2 316
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 576
	lw.s	%r1 %f1 576
	addi	%r0 %r1 320
	lw.s	%r1 %f2 320
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.15
	fbge	%f1 %f0 fbl_else.188 
	addi	%r0 %r1 1
	j	fbl_cont.186 
fbl_else.188 :
	addi	%r0 %r1 0
fbl_cont.186 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.299 
	ilw.s	%r0 %f0 l.15
	j	beq_cont.274 
beq_else.299 :
beq_cont.274 :
	lw.s	%r26 %f1 -32
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 -44
	lw	%r1 %r1 28
	addi	%r1 %r1 0
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 592
	lw.s	%r1 %f1 592
	addi	%r0 %r1 580
	lw.s	%r1 %f2 580
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r0 %f1 592
	addi	%r0 %r1 596
	lw.s	%r1 %f1 596
	addi	%r0 %r1 584
	lw.s	%r1 %f2 584
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r0 %f1 596
	addi	%r0 %r1 600
	lw.s	%r1 %f1 600
	addi	%r0 %r1 588
	lw.s	%r1 %f2 588
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	j	beq_cont.273 
beq_else.298 :
beq_cont.273 :
beq_cont.255 :
beq_cont.232 :
	lw	%r26 %r1 -12
	addi	%r1 %r4 -2
	lw	%r26 %r1 -8
	lw	%r26 %r2 -4
	lw	%r26 %r3 -0
	j	iter_trace_diffuse_rays.0
ble_else.5 :
	retl
do_without_neighbors.0 :
	addi	%r0 %r3 4
	bg	%r2 %r3 ble_else.6 
	lw	%r1 %r3 8
	addi	%r0 %r4 0
	slli	%r2 %r5 2
	add	%r3 %r5 %r3
	lw	%r3 %r3 0
	bg	%r4 %r3 ble_else.7 
	lw	%r1 %r3 12
	slli	%r2 %r4 2
	add	%r3 %r4 %r3
	lw	%r3 %r3 0
	addi	%r0 %r4 0
	sw	%r26 %r1 -0
	sw	%r26 %r2 -4
	bne	%r3 %r4 beq_else.300 
	j	beq_cont.275 
beq_else.300 :
	lw	%r1 %r3 20
	lw	%r1 %r4 28
	lw	%r1 %r5 4
	lw	%r1 %r6 16
	slli	%r2 %r7 2
	add	%r3 %r7 %r3
	lw	%r3 %r3 0
	addi	%r3 %r7 0
	lw.s	%r7 %f0 0
	sw.s	%r0 %f0 592
	addi	%r3 %r7 4
	lw.s	%r7 %f0 0
	sw.s	%r0 %f0 596
	addi	%r3 %r3 8
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 600
	lw	%r1 %r3 24
	addi	%r3 %r3 0
	lw	%r3 %r3 0
	slli	%r2 %r7 2
	add	%r4 %r7 %r4
	lw	%r4 %r4 0
	slli	%r2 %r7 2
	add	%r5 %r7 %r5
	lw	%r5 %r5 0
	addi	%r0 %r7 0
	sw	%r26 %r6 -8
	sw	%r26 %r4 -12
	sw	%r26 %r5 -16
	sw	%r26 %r3 -20
	beq	%r3 %r7 bne_else.13 
	lw	%r0 %r7 716
	addi	%r5 %r8 0
	lw.s	%r8 %f0 0
	sw.s	%r0 %f0 648
	addi	%r5 %r8 4
	lw.s	%r8 %f0 0
	sw.s	%r0 %f0 652
	addi	%r5 %r8 8
	lw.s	%r8 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r8 0
	addi	%r8 %r8 -1
	sw	%r26 %r7 -24
	mov	%r8 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	setup_startp_constants.0 
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	addi	%r0 %r4 118
	lw	%r26 %r1 -24
	lw	%r26 %r2 -12
	lw	%r26 %r3 -16
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	iter_trace_diffuse_rays.0 
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	j	bne_cont.8 
bne_else.13 :
bne_cont.8 :
	addi	%r0 %r1 1
	lw	%r26 %r2 -20
	beq	%r2 %r1 bne_else.14 
	lw	%r0 %r1 720
	lw	%r26 %r3 -16
	addi	%r3 %r4 0
	lw.s	%r4 %f0 0
	sw.s	%r0 %f0 648
	addi	%r3 %r4 4
	lw.s	%r4 %f0 0
	sw.s	%r0 %f0 652
	addi	%r3 %r4 8
	lw.s	%r4 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r4 0
	addi	%r4 %r4 -1
	sw	%r26 %r1 -28
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	setup_startp_constants.0 
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	addi	%r0 %r4 118
	lw	%r26 %r1 -28
	lw	%r26 %r2 -12
	lw	%r26 %r3 -16
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	iter_trace_diffuse_rays.0 
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	j	bne_cont.9 
bne_else.14 :
bne_cont.9 :
	addi	%r0 %r1 2
	lw	%r26 %r2 -20
	beq	%r2 %r1 bne_else.15 
	lw	%r0 %r1 724
	lw	%r26 %r3 -16
	addi	%r3 %r4 0
	lw.s	%r4 %f0 0
	sw.s	%r0 %f0 648
	addi	%r3 %r4 4
	lw.s	%r4 %f0 0
	sw.s	%r0 %f0 652
	addi	%r3 %r4 8
	lw.s	%r4 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r4 0
	addi	%r4 %r4 -1
	sw	%r26 %r1 -32
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	setup_startp_constants.0 
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	addi	%r0 %r4 118
	lw	%r26 %r1 -32
	lw	%r26 %r2 -12
	lw	%r26 %r3 -16
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	iter_trace_diffuse_rays.0 
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	j	bne_cont.10 
bne_else.15 :
bne_cont.10 :
	addi	%r0 %r1 3
	lw	%r26 %r2 -20
	beq	%r2 %r1 bne_else.16 
	lw	%r0 %r1 728
	lw	%r26 %r3 -16
	addi	%r3 %r4 0
	lw.s	%r4 %f0 0
	sw.s	%r0 %f0 648
	addi	%r3 %r4 4
	lw.s	%r4 %f0 0
	sw.s	%r0 %f0 652
	addi	%r3 %r4 8
	lw.s	%r4 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r4 0
	addi	%r4 %r4 -1
	sw	%r26 %r1 -36
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	setup_startp_constants.0 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	addi	%r0 %r4 118
	lw	%r26 %r1 -36
	lw	%r26 %r2 -12
	lw	%r26 %r3 -16
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	iter_trace_diffuse_rays.0 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	j	bne_cont.11 
bne_else.16 :
bne_cont.11 :
	addi	%r0 %r1 4
	lw	%r26 %r2 -20
	beq	%r2 %r1 bne_else.17 
	lw	%r0 %r1 732
	lw	%r26 %r2 -16
	addi	%r2 %r3 0
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 648
	addi	%r2 %r3 4
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 652
	addi	%r2 %r3 8
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r3 0
	addi	%r3 %r3 -1
	sw	%r26 %r1 -40
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	setup_startp_constants.0 
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	addi	%r0 %r4 118
	lw	%r26 %r1 -40
	lw	%r26 %r2 -12
	lw	%r26 %r3 -16
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	iter_trace_diffuse_rays.0 
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	j	bne_cont.12 
bne_else.17 :
bne_cont.12 :
	lw	%r26 %r1 -4
	slli	%r1 %r2 2
	lw	%r26 %r3 -8
	add	%r3 %r2 %r2
	lw	%r2 %r2 0
	addi	%r0 %r3 604
	lw.s	%r3 %f0 604
	addi	%r2 %r3 0
	lw.s	%r3 %f1 0
	addi	%r0 %r3 592
	lw.s	%r3 %f2 592
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	addi	%r0 %r3 608
	lw.s	%r3 %f0 608
	addi	%r2 %r3 4
	lw.s	%r3 %f1 0
	addi	%r0 %r3 596
	lw.s	%r3 %f2 596
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	addi	%r0 %r3 612
	lw.s	%r3 %f0 612
	addi	%r2 %r2 8
	lw.s	%r2 %f1 0
	addi	%r0 %r2 600
	lw.s	%r2 %f2 600
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
beq_cont.275 :
	lw	%r26 %r1 -4
	addi	%r1 %r2 1
	lw	%r26 %r1 -0
	j	do_without_neighbors.0
ble_else.7 :
	retl
ble_else.6 :
	retl
try_exploit_neighbors.0 :
	slli	%r1 %r7 2
	add	%r4 %r7 %r7
	lw	%r7 %r7 0
	addi	%r0 %r8 4
	bg	%r6 %r8 ble_else.8 
	addi	%r0 %r8 0
	lw	%r7 %r9 8
	slli	%r6 %r10 2
	add	%r9 %r10 %r9
	lw	%r9 %r9 0
	bg	%r8 %r9 ble_else.9 
	slli	%r1 %r8 2
	add	%r4 %r8 %r8
	lw	%r8 %r8 0
	lw	%r8 %r8 8
	slli	%r6 %r9 2
	add	%r8 %r9 %r8
	lw	%r8 %r8 0
	slli	%r1 %r9 2
	add	%r3 %r9 %r9
	lw	%r9 %r9 0
	lw	%r9 %r9 8
	slli	%r6 %r10 2
	add	%r9 %r10 %r9
	lw	%r9 %r9 0
	bne	%r9 %r8 beq_else.301 
	slli	%r1 %r9 2
	add	%r5 %r9 %r9
	lw	%r9 %r9 0
	lw	%r9 %r9 8
	slli	%r6 %r10 2
	add	%r9 %r10 %r9
	lw	%r9 %r9 0
	bne	%r9 %r8 beq_else.302 
	addi	%r1 %r9 -1
	slli	%r9 %r9 2
	add	%r4 %r9 %r9
	lw	%r9 %r9 0
	lw	%r9 %r9 8
	slli	%r6 %r10 2
	add	%r9 %r10 %r9
	lw	%r9 %r9 0
	bne	%r9 %r8 beq_else.303 
	addi	%r1 %r9 1
	slli	%r9 %r9 2
	add	%r4 %r9 %r9
	lw	%r9 %r9 0
	lw	%r9 %r9 8
	slli	%r6 %r10 2
	add	%r9 %r10 %r9
	lw	%r9 %r9 0
	bne	%r9 %r8 beq_else.304 
	addi	%r0 %r8 1
	j	beq_cont.279 
beq_else.304 :
	addi	%r0 %r8 0
beq_cont.279 :
	j	beq_cont.278 
beq_else.303 :
	addi	%r0 %r8 0
beq_cont.278 :
	j	beq_cont.277 
beq_else.302 :
	addi	%r0 %r8 0
beq_cont.277 :
	j	beq_cont.276 
beq_else.301 :
	addi	%r0 %r8 0
beq_cont.276 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.305 
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	mov	%r6 %r2
	j	do_without_neighbors.0
beq_else.305 :
	lw	%r7 %r7 12
	slli	%r6 %r8 2
	add	%r7 %r8 %r7
	lw	%r7 %r7 0
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.306 
	j	beq_cont.280 
beq_else.306 :
	slli	%r1 %r7 2
	add	%r3 %r7 %r7
	lw	%r7 %r7 0
	lw	%r7 %r7 20
	addi	%r1 %r8 -1
	slli	%r8 %r8 2
	add	%r4 %r8 %r8
	lw	%r8 %r8 0
	lw	%r8 %r8 20
	slli	%r1 %r9 2
	add	%r4 %r9 %r9
	lw	%r9 %r9 0
	lw	%r9 %r9 20
	addi	%r1 %r10 1
	slli	%r10 %r10 2
	add	%r4 %r10 %r10
	lw	%r10 %r10 0
	lw	%r10 %r10 20
	slli	%r1 %r11 2
	add	%r5 %r11 %r11
	lw	%r11 %r11 0
	lw	%r11 %r11 20
	slli	%r6 %r12 2
	add	%r7 %r12 %r7
	lw	%r7 %r7 0
	addi	%r7 %r12 0
	lw.s	%r12 %f0 0
	sw.s	%r0 %f0 592
	addi	%r7 %r12 4
	lw.s	%r12 %f0 0
	sw.s	%r0 %f0 596
	addi	%r7 %r7 8
	lw.s	%r7 %f0 0
	sw.s	%r0 %f0 600
	slli	%r6 %r7 2
	add	%r8 %r7 %r7
	lw	%r7 %r7 0
	addi	%r0 %r8 592
	lw.s	%r8 %f0 592
	addi	%r7 %r8 0
	lw.s	%r8 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 592
	addi	%r0 %r8 596
	lw.s	%r8 %f0 596
	addi	%r7 %r8 4
	lw.s	%r8 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 596
	addi	%r0 %r8 600
	lw.s	%r8 %f0 600
	addi	%r7 %r7 8
	lw.s	%r7 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	slli	%r6 %r7 2
	add	%r9 %r7 %r7
	lw	%r7 %r7 0
	addi	%r0 %r8 592
	lw.s	%r8 %f0 592
	addi	%r7 %r8 0
	lw.s	%r8 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 592
	addi	%r0 %r8 596
	lw.s	%r8 %f0 596
	addi	%r7 %r8 4
	lw.s	%r8 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 596
	addi	%r0 %r8 600
	lw.s	%r8 %f0 600
	addi	%r7 %r7 8
	lw.s	%r7 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	slli	%r6 %r7 2
	add	%r10 %r7 %r7
	lw	%r7 %r7 0
	addi	%r0 %r8 592
	lw.s	%r8 %f0 592
	addi	%r7 %r8 0
	lw.s	%r8 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 592
	addi	%r0 %r8 596
	lw.s	%r8 %f0 596
	addi	%r7 %r8 4
	lw.s	%r8 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 596
	addi	%r0 %r8 600
	lw.s	%r8 %f0 600
	addi	%r7 %r7 8
	lw.s	%r7 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	slli	%r6 %r7 2
	add	%r11 %r7 %r7
	lw	%r7 %r7 0
	addi	%r0 %r8 592
	lw.s	%r8 %f0 592
	addi	%r7 %r8 0
	lw.s	%r8 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 592
	addi	%r0 %r8 596
	lw.s	%r8 %f0 596
	addi	%r7 %r8 4
	lw.s	%r8 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 596
	addi	%r0 %r8 600
	lw.s	%r8 %f0 600
	addi	%r7 %r7 8
	lw.s	%r7 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	slli	%r1 %r7 2
	add	%r4 %r7 %r7
	lw	%r7 %r7 0
	lw	%r7 %r7 16
	slli	%r6 %r8 2
	add	%r7 %r8 %r7
	lw	%r7 %r7 0
	addi	%r0 %r8 604
	lw.s	%r8 %f0 604
	addi	%r7 %r8 0
	lw.s	%r8 %f1 0
	addi	%r0 %r8 592
	lw.s	%r8 %f2 592
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	addi	%r0 %r8 608
	lw.s	%r8 %f0 608
	addi	%r7 %r8 4
	lw.s	%r8 %f1 0
	addi	%r0 %r8 596
	lw.s	%r8 %f2 596
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	addi	%r0 %r8 612
	lw.s	%r8 %f0 612
	addi	%r7 %r7 8
	lw.s	%r7 %f1 0
	addi	%r0 %r7 600
	lw.s	%r7 %f2 600
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
beq_cont.280 :
	addi	%r6 %r6 1
	j	try_exploit_neighbors.0
ble_else.9 :
	retl
ble_else.8 :
	retl
pretrace_diffuse_rays.0 :
	addi	%r0 %r3 4
	bg	%r2 %r3 ble_else.10 
	lw	%r1 %r3 8
	slli	%r2 %r4 2
	add	%r3 %r4 %r3
	lw	%r3 %r3 0
	addi	%r0 %r4 0
	bg	%r4 %r3 ble_else.11 
	lw	%r1 %r3 12
	slli	%r2 %r4 2
	add	%r3 %r4 %r3
	lw	%r3 %r3 0
	addi	%r0 %r4 0
	sw	%r26 %r2 -0
	bne	%r3 %r4 beq_else.307 
	j	beq_cont.281 
beq_else.307 :
	lw	%r1 %r3 24
	addi	%r3 %r3 0
	lw	%r3 %r3 0
	ilw.s	%r0 %f0 l.15
	sw.s	%r0 %f0 592
	sw.s	%r0 %f0 596
	sw.s	%r0 %f0 600
	lw	%r1 %r4 28
	lw	%r1 %r5 4
	slli	%r3 %r3 2
	addi	%r3 %r3 716
	lw	%r3 %r3 0
	slli	%r2 %r6 2
	add	%r4 %r6 %r4
	lw	%r4 %r4 0
	slli	%r2 %r6 2
	add	%r5 %r6 %r5
	lw	%r5 %r5 0
	addi	%r5 %r6 0
	lw.s	%r6 %f0 0
	sw.s	%r0 %f0 648
	addi	%r5 %r6 4
	lw.s	%r6 %f0 0
	sw.s	%r0 %f0 652
	addi	%r5 %r6 8
	lw.s	%r6 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r6 0
	addi	%r6 %r6 -1
	sw	%r26 %r1 -4
	sw	%r26 %r5 -8
	sw	%r26 %r4 -12
	sw	%r26 %r3 -16
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	setup_startp_constants.0 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	addi	%r0 %r4 118
	lw	%r26 %r1 -16
	lw	%r26 %r2 -12
	lw	%r26 %r3 -8
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	iter_trace_diffuse_rays.0 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r1 -4
	lw	%r1 %r2 20
	lw	%r26 %r3 -0
	slli	%r3 %r4 2
	add	%r2 %r4 %r2
	lw	%r2 %r2 0
	addi	%r0 %r4 592
	lw.s	%r4 %f0 592
	addi	%r2 %r4 0
	sw.s	%r4 %f0 0
	addi	%r0 %r4 596
	lw.s	%r4 %f0 596
	addi	%r2 %r4 4
	sw.s	%r4 %f0 0
	addi	%r0 %r4 600
	lw.s	%r4 %f0 600
	addi	%r2 %r2 8
	sw.s	%r2 %f0 0
beq_cont.281 :
	lw	%r26 %r2 -0
	addi	%r2 %r2 1
	j	pretrace_diffuse_rays.0
ble_else.11 :
	retl
ble_else.10 :
	retl
pretrace_pixels.0 :
	lw	%r30 %r4 8
	lw	%r30 %r5 4
	addi	%r0 %r6 0
	bg	%r6 %r2 ble_else.12 
	addi	%r0 %r6 632
	lw.s	%r6 %f3 632
	lw	%r0 %r6 624
	sub	%r2 %r6 %r6
	mtc1	%r6 %f4
	mul.s	%f4 %f3 %f3
	addi	%r0 %r6 660
	lw.s	%r6 %f4 660
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	sw.s	%r0 %f4 696
	addi	%r0 %r6 664
	lw.s	%r6 %f4 664
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	sw.s	%r0 %f4 700
	addi	%r0 %r6 668
	lw.s	%r6 %f4 668
	mul.s	%f4 %f3 %f3
	add.s	%f2 %f3 %f3
	sw.s	%r0 %f3 704
	addi	%r0 %r6 696
	lw.s	%r6 %f3 696
	mul.s	%f3 %f3 %f3
	addi	%r0 %r6 700
	lw.s	%r6 %f4 700
	mul.s	%f4 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r6 704
	lw.s	%r6 %f4 704
	mul.s	%f4 %f4 %f4
	add.s	%f4 %f3 %f3
	sqrt.s	%f3 %f3
	ilw.s	%r0 %f4 l.15
	fbne	%f3 %f4 fbeq_else.41 
	addi	%r0 %r6 1
	j	fbeq_cont.41 
fbeq_else.41 :
	addi	%r0 %r6 0
fbeq_cont.41 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.308 
	ilw.s	%r0 %f4 l.16
	div.s	%f3 %f4 %f3
	j	beq_cont.282 
beq_else.308 :
	ilw.s	%r0 %f3 l.16
beq_cont.282 :
	addi	%r0 %r6 696
	lw.s	%r6 %f4 696
	mul.s	%f3 %f4 %f4
	sw.s	%r0 %f4 696
	addi	%r0 %r6 700
	lw.s	%r6 %f4 700
	mul.s	%f3 %f4 %f4
	sw.s	%r0 %f4 700
	addi	%r0 %r6 704
	lw.s	%r6 %f4 704
	mul.s	%f3 %f4 %f3
	sw.s	%r0 %f3 704
	ilw.s	%r0 %f3 l.15
	sw.s	%r0 %f3 604
	sw.s	%r0 %f3 608
	sw.s	%r0 %f3 612
	addi	%r0 %r6 300
	lw.s	%r6 %f3 300
	sw.s	%r0 %f3 636
	addi	%r0 %r6 304
	lw.s	%r6 %f3 304
	sw.s	%r0 %f3 640
	addi	%r0 %r6 308
	lw.s	%r6 %f3 308
	sw.s	%r0 %f3 644
	addi	%r0 %r6 0
	ilw.s	%r0 %f3 l.16
	slli	%r2 %r7 2
	add	%r1 %r7 %r7
	lw	%r7 %r7 0
	ilw.s	%r0 %f4 l.15
	sw.s	%r26 %f2 -0
	sw.s	%r26 %f1 -8
	sw.s	%r26 %f0 -16
	sw	%r26 %r30 -24
	sw	%r26 %r3 -28
	sw	%r26 %r1 -32
	sw	%r26 %r2 -36
	mov	%r7 %r3
	mov	%r5 %r2
	mov	%r6 %r1
	mov	%r4 %r30
	mov.s	%f4 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 -40
	lw	%r30 %r29 0
	addi	%r26 %r26 -44
	jalr	%r29
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r1 -36
	slli	%r1 %r2 2
	lw	%r26 %r3 -32
	add	%r3 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 0
	addi	%r0 %r4 604
	lw.s	%r4 %f0 604
	addi	%r2 %r4 0
	sw.s	%r4 %f0 0
	addi	%r0 %r4 608
	lw.s	%r4 %f0 608
	addi	%r2 %r4 4
	sw.s	%r4 %f0 0
	addi	%r0 %r4 612
	lw.s	%r4 %f0 612
	addi	%r2 %r2 8
	sw.s	%r2 %f0 0
	slli	%r1 %r2 2
	add	%r3 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 24
	addi	%r2 %r2 0
	lw	%r26 %r4 -28
	sw	%r2 %r4 0
	slli	%r1 %r2 2
	add	%r3 %r2 %r2
	lw	%r2 %r2 0
	addi	%r0 %r5 0
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	pretrace_diffuse_rays.0 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r1 -36
	addi	%r1 %r2 -1
	lw	%r26 %r1 -28
	addi	%r1 %r1 1
	addi	%r0 %r3 5
	bg	%r3 %r1 ble_else.13 
	addi	%r1 %r3 -5
	j	ble_cont.1 
ble_else.13 :
	mov	%r1 %r3
ble_cont.1 :
	lw.s	%r26 %f0 -16
	lw.s	%r26 %f1 -8
	lw.s	%r26 %f2 -0
	lw	%r26 %r1 -32
	lw	%r26 %r30 -24
	lw	%r30 %r29 0
	jr	%r29
ble_else.12 :
	retl
scan_pixel.0 :
	lw	%r0 %r6 616
	bge	%r1 %r6 bl_else.7 
	slli	%r1 %r6 2
	add	%r4 %r6 %r6
	lw	%r6 %r6 0
	lw	%r6 %r6 0
	addi	%r6 %r7 0
	lw.s	%r7 %f0 0
	sw.s	%r0 %f0 604
	addi	%r6 %r7 4
	lw.s	%r7 %f0 0
	sw.s	%r0 %f0 608
	addi	%r6 %r6 8
	lw.s	%r6 %f0 0
	sw.s	%r0 %f0 612
	addi	%r2 %r6 1
	lw	%r0 %r7 620
	bge	%r6 %r7 bl_else.8 
	addi	%r0 %r6 0
	bge	%r6 %r2 bl_else.9 
	addi	%r1 %r6 1
	lw	%r0 %r7 616
	bge	%r6 %r7 bl_else.10 
	addi	%r0 %r6 0
	bge	%r6 %r1 bl_else.11 
	addi	%r0 %r6 1
	j	bl_cont.9 
bl_else.11 :
	addi	%r0 %r6 0
bl_cont.9 :
	j	bl_cont.8 
bl_else.10 :
	addi	%r0 %r6 0
bl_cont.8 :
	j	bl_cont.7 
bl_else.9 :
	addi	%r0 %r6 0
bl_cont.7 :
	j	bl_cont.6 
bl_else.8 :
	addi	%r0 %r6 0
bl_cont.6 :
	addi	%r0 %r7 0
	sw	%r26 %r5 -0
	sw	%r26 %r4 -4
	sw	%r26 %r3 -8
	sw	%r26 %r2 -12
	sw	%r26 %r1 -16
	bne	%r6 %r7 beq_else.309 
	slli	%r1 %r6 2
	add	%r4 %r6 %r6
	lw	%r6 %r6 0
	addi	%r0 %r7 0
	mov	%r7 %r2
	mov	%r6 %r1
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	do_without_neighbors.0 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	j	beq_cont.283 
beq_else.309 :
	addi	%r0 %r6 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	try_exploit_neighbors.0 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
beq_cont.283 :
	addi	%r0 %r1 604
	lw.s	%r1 %f0 604
	mfc1	%r1 %f0
	addi	%r0 %r2 255
	bge	%r2 %r1 bl_else.12 
	addi	%r0 %r1 255
	j	bl_cont.10 
bl_else.12 :
	addi	%r0 %r2 0
	bge	%r1 %r2 bl_else.13 
	addi	%r0 %r1 0
	j	bl_cont.11 
bl_else.13 :
bl_cont.11 :
bl_cont.10 :
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
	bge	%r4 %r2 bl_else.14 
	addi	%r2 %r2 48
	out	%r2
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bl_cont.12 
bl_else.14 :
	addi	%r0 %r2 0
	bge	%r2 %r3 bl_else.15 
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bl_cont.13 
bl_else.15 :
	addi	%r1 %r1 48
	out	%r1
bl_cont.13 :
bl_cont.12 :
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 608
	lw.s	%r1 %f0 608
	mfc1	%r1 %f0
	addi	%r0 %r2 255
	bge	%r2 %r1 bl_else.16 
	addi	%r0 %r1 255
	j	bl_cont.14 
bl_else.16 :
	addi	%r0 %r2 0
	bge	%r1 %r2 bl_else.17 
	addi	%r0 %r1 0
	j	bl_cont.15 
bl_else.17 :
bl_cont.15 :
bl_cont.14 :
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
	bge	%r4 %r2 bl_else.18 
	addi	%r2 %r2 48
	out	%r2
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bl_cont.16 
bl_else.18 :
	addi	%r0 %r2 0
	bge	%r2 %r3 bl_else.19 
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	j	bl_cont.17 
bl_else.19 :
	addi	%r1 %r1 48
	out	%r1
bl_cont.17 :
bl_cont.16 :
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 612
	lw.s	%r1 %f0 612
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
	lw	%r26 %r1 -16
	addi	%r1 %r1 1
	lw	%r26 %r2 -12
	lw	%r26 %r3 -8
	lw	%r26 %r4 -4
	lw	%r26 %r5 -0
	j	scan_pixel.0
bl_else.7 :
	retl
scan_line.0 :
	lw	%r30 %r6 4
	lw	%r0 %r7 620
	bge	%r1 %r7 bl_else.24 
	lw	%r0 %r7 620
	addi	%r7 %r7 -1
	sw	%r26 %r30 -0
	sw	%r26 %r5 -4
	sw	%r26 %r4 -8
	sw	%r26 %r3 -12
	sw	%r26 %r2 -16
	sw	%r26 %r1 -20
	bge	%r1 %r7 bl_else.25 
	addi	%r1 %r7 1
	addi	%r0 %r8 632
	lw.s	%r8 %f0 632
	lw	%r0 %r8 628
	sub	%r7 %r8 %r7
	mtc1	%r7 %f1
	mul.s	%f1 %f0 %f0
	addi	%r0 %r7 672
	lw.s	%r7 %f1 672
	mul.s	%f1 %f0 %f1
	addi	%r0 %r7 684
	lw.s	%r7 %f2 684
	add.s	%f2 %f1 %f1
	addi	%r0 %r7 676
	lw.s	%r7 %f2 676
	mul.s	%f2 %f0 %f2
	addi	%r0 %r7 688
	lw.s	%r7 %f3 688
	add.s	%f3 %f2 %f2
	addi	%r0 %r7 680
	lw.s	%r7 %f3 680
	mul.s	%f3 %f0 %f0
	addi	%r0 %r7 692
	lw.s	%r7 %f3 692
	add.s	%f3 %f0 %f0
	lw	%r0 %r7 616
	addi	%r7 %r7 -1
	mov	%r5 %r3
	mov	%r7 %r2
	mov	%r4 %r1
	mov	%r6 %r30
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 -24
	lw	%r30 %r29 0
	addi	%r26 %r26 -28
	jalr	%r29
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	j	bl_cont.22 
bl_else.25 :
bl_cont.22 :
	addi	%r0 %r1 0
	lw	%r26 %r2 -20
	lw	%r26 %r3 -16
	lw	%r26 %r4 -12
	lw	%r26 %r5 -8
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	scan_pixel.0 
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r1 -20
	addi	%r1 %r1 1
	lw	%r26 %r2 -4
	addi	%r2 %r2 2
	addi	%r0 %r3 5
	bg	%r3 %r2 ble_else.14 
	addi	%r2 %r5 -5
	j	ble_cont.2 
ble_else.14 :
	mov	%r2 %r5
ble_cont.2 :
	lw	%r26 %r2 -12
	lw	%r26 %r3 -8
	lw	%r26 %r4 -16
	lw	%r26 %r30 -0
	lw	%r30 %r29 0
	jr	%r29
bl_else.24 :
	retl
init_line_elements.0 :
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.15 
	addi	%r0 %r3 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -0
	sw	%r26 %r2 -4
	mov	%r3 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	min_caml_create_float_array 
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -8
	mov	%r2 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	min_caml_create_float_array 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	min_caml_create_array 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -12
	mov	%r2 %r1
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	min_caml_create_float_array 
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r2 -12
	addi	%r2 %r3 4
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	min_caml_create_float_array 
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r2 -12
	addi	%r2 %r3 8
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	min_caml_create_float_array 
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r2 -12
	addi	%r2 %r3 12
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	min_caml_create_float_array 
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r2 -12
	addi	%r2 %r3 16
	sw	%r3 %r1 0
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	min_caml_create_array 
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 -16
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	min_caml_create_array 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -20
	mov	%r2 %r1
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	min_caml_create_float_array 
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	min_caml_create_array 
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -24
	mov	%r2 %r1
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw	%r26 %r2 -24
	addi	%r2 %r3 4
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw	%r26 %r2 -24
	addi	%r2 %r3 8
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw	%r26 %r2 -24
	addi	%r2 %r3 12
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw	%r26 %r2 -24
	addi	%r2 %r3 16
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	min_caml_create_array 
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -28
	mov	%r2 %r1
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	min_caml_create_float_array 
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	lw	%r26 %r2 -28
	addi	%r2 %r3 4
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	min_caml_create_float_array 
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	lw	%r26 %r2 -28
	addi	%r2 %r3 8
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	min_caml_create_float_array 
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	lw	%r26 %r2 -28
	addi	%r2 %r3 12
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	min_caml_create_float_array 
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	lw	%r26 %r2 -28
	addi	%r2 %r3 16
	sw	%r3 %r1 0
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	min_caml_create_array 
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -32
	mov	%r2 %r1
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	min_caml_create_float_array 
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	min_caml_create_array 
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -36
	mov	%r2 %r1
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	min_caml_create_float_array 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r2 -36
	addi	%r2 %r3 4
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	min_caml_create_float_array 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r2 -36
	addi	%r2 %r3 8
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	min_caml_create_float_array 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r2 -36
	addi	%r2 %r3 12
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	min_caml_create_float_array 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r2 -36
	addi	%r2 %r3 16
	sw	%r3 %r1 0
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 -32
	sw	%r1 %r2 24
	lw	%r26 %r2 -28
	sw	%r1 %r2 20
	lw	%r26 %r2 -24
	sw	%r1 %r2 16
	lw	%r26 %r2 -20
	sw	%r1 %r2 12
	lw	%r26 %r2 -16
	sw	%r1 %r2 8
	lw	%r26 %r2 -12
	sw	%r1 %r2 4
	lw	%r26 %r2 -8
	sw	%r1 %r2 0
	lw	%r26 %r2 -4
	slli	%r2 %r3 2
	lw	%r26 %r4 -0
	add	%r4 %r3 %r3
	sw	%r3 %r1 0
	addi	%r2 %r2 -1
	mov	%r4 %r1
	j	init_line_elements.0
ble_else.15 :
	retl
calc_dirvec.0 :
	addi	%r0 %r4 5
	bg	%r4 %r1 ble_else.16 
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	ilw.s	%r0 %f3 l.16
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	div.s	%f2 %f0 %f0
	div.s	%f2 %f1 %f1
	ilw.s	%r0 %f3 l.16
	div.s	%f2 %f3 %f2
	slli	%r2 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r1 0
	slli	%r3 %r2 2
	add	%r1 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 0
	addi	%r2 %r4 0
	sw.s	%r4 %f0 0
	addi	%r2 %r4 4
	sw.s	%r4 %f1 0
	addi	%r2 %r2 8
	sw.s	%r2 %f2 0
	addi	%r3 %r2 40
	slli	%r2 %r2 2
	add	%r1 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 0
	neg.s	%f1 %f3
	addi	%r2 %r4 0
	sw.s	%r4 %f0 0
	addi	%r2 %r4 4
	sw.s	%r4 %f2 0
	addi	%r2 %r2 8
	sw.s	%r2 %f3 0
	addi	%r3 %r2 80
	slli	%r2 %r2 2
	add	%r1 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 0
	neg.s	%f0 %f3
	neg.s	%f1 %f4
	addi	%r2 %r4 0
	sw.s	%r4 %f2 0
	addi	%r2 %r4 4
	sw.s	%r4 %f3 0
	addi	%r2 %r2 8
	sw.s	%r2 %f4 0
	addi	%r3 %r2 1
	slli	%r2 %r2 2
	add	%r1 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 0
	neg.s	%f0 %f3
	neg.s	%f1 %f4
	neg.s	%f2 %f5
	addi	%r2 %r4 0
	sw.s	%r4 %f3 0
	addi	%r2 %r4 4
	sw.s	%r4 %f4 0
	addi	%r2 %r2 8
	sw.s	%r2 %f5 0
	addi	%r3 %r2 41
	slli	%r2 %r2 2
	add	%r1 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 0
	neg.s	%f0 %f3
	neg.s	%f2 %f4
	addi	%r2 %r4 0
	sw.s	%r4 %f3 0
	addi	%r2 %r4 4
	sw.s	%r4 %f4 0
	addi	%r2 %r2 8
	sw.s	%r2 %f1 0
	addi	%r3 %r2 81
	slli	%r2 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	neg.s	%f2 %f2
	addi	%r1 %r2 0
	sw.s	%r2 %f2 0
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	addi	%r1 %r1 8
	sw.s	%r1 %f1 0
	retl
ble_else.16 :
	mul.s	%f1 %f1 %f0
	ilw.s	%r0 %f1 l.55
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.16
	div.s	%f0 %f1 %f1
	ilw.s	%r0 %f4 l.15
	fbg	%f4 %f1 fble_else.22 
	ilw.s	%r0 %f4 l.35
	fbge	%f1 %f4 fbl_else.189 
	ilw.s	%r0 %f4 l.16
	ilw.s	%r0 %f5 l.15
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f1 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.187 
fbl_else.189 :
	ilw.s	%r0 %f4 l.36
	fbge	%f1 %f4 fbl_else.190 
	ilw.s	%r0 %f4 l.16
	sub.s	%f4 %f1 %f4
	ilw.s	%r0 %f5 l.16
	add.s	%f5 %f1 %f1
	div.s	%f1 %f4 %f1
	ilw.s	%r0 %f4 l.16
	ilw.s	%r0 %f5 l.18
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f1 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.188 
fbl_else.190 :
	ilw.s	%r0 %f4 l.16
	div.s	%f1 %f4 %f1
	ilw.s	%r0 %f4 l.25
	ilw.s	%r0 %f5 l.37
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f1 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
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
	ilw.s	%r0 %f4 l.35
	fbge	%f1 %f4 fbl_else.191 
	ilw.s	%r0 %f4 l.25
	ilw.s	%r0 %f5 l.15
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f1 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.189 
fbl_else.191 :
	ilw.s	%r0 %f4 l.36
	fbge	%f1 %f4 fbl_else.192 
	ilw.s	%r0 %f4 l.16
	sub.s	%f4 %f1 %f4
	ilw.s	%r0 %f5 l.16
	add.s	%f5 %f1 %f1
	div.s	%f1 %f4 %f1
	ilw.s	%r0 %f4 l.25
	ilw.s	%r0 %f5 l.18
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f1 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.190 
fbl_else.192 :
	ilw.s	%r0 %f4 l.16
	div.s	%f1 %f4 %f1
	ilw.s	%r0 %f4 l.16
	ilw.s	%r0 %f5 l.37
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	ilw.s	%r0 %f7 l.38
	mul.s	%f1 %f7 %f7
	ilw.s	%r0 %f8 l.39
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.40
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.41
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.42
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.43
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
	sw.s	%r26 %f2 -0
	sw	%r26 %r3 -8
	sw	%r26 %r2 -12
	sw.s	%r26 %f3 -16
	sw	%r26 %r1 -24
	sw.s	%r26 %f0 -32
	sw.s	%r26 %f1 -40
	mov.s	%f1 %f0
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	sin.0 
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw.s	%r26 %f1 -40
	sw.s	%r26 %f0 -48
	mov.s	%f1 %f0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	cos.0 
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw.s	%r26 %f1 -48
	div.s	%f0 %f1 %f0
	lw.s	%r26 %f1 -32
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 -24
	addi	%r1 %r1 1
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f2 l.55
	add.s	%f2 %f1 %f1
	sqrt.s	%f1 %f1
	ilw.s	%r0 %f2 l.16
	div.s	%f1 %f2 %f2
	ilw.s	%r0 %f3 l.15
	fbg	%f3 %f2 fble_else.23 
	ilw.s	%r0 %f3 l.35
	fbge	%f2 %f3 fbl_else.193 
	ilw.s	%r0 %f3 l.16
	ilw.s	%r0 %f4 l.15
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	ilw.s	%r0 %f6 l.38
	mul.s	%f2 %f6 %f6
	ilw.s	%r0 %f7 l.39
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.40
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.41
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.42
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.43
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.191 
fbl_else.193 :
	ilw.s	%r0 %f3 l.36
	fbge	%f2 %f3 fbl_else.194 
	ilw.s	%r0 %f3 l.16
	sub.s	%f3 %f2 %f3
	ilw.s	%r0 %f4 l.16
	add.s	%f4 %f2 %f2
	div.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.16
	ilw.s	%r0 %f4 l.18
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	ilw.s	%r0 %f6 l.38
	mul.s	%f2 %f6 %f6
	ilw.s	%r0 %f7 l.39
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.40
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.41
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.42
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.43
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.192 
fbl_else.194 :
	ilw.s	%r0 %f3 l.16
	div.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.25
	ilw.s	%r0 %f4 l.37
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	ilw.s	%r0 %f6 l.38
	mul.s	%f2 %f6 %f6
	ilw.s	%r0 %f7 l.39
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.40
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.41
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.42
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.43
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
	ilw.s	%r0 %f3 l.35
	fbge	%f2 %f3 fbl_else.195 
	ilw.s	%r0 %f3 l.25
	ilw.s	%r0 %f4 l.15
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	ilw.s	%r0 %f6 l.38
	mul.s	%f2 %f6 %f6
	ilw.s	%r0 %f7 l.39
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.40
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.41
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.42
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.43
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.193 
fbl_else.195 :
	ilw.s	%r0 %f3 l.36
	fbge	%f2 %f3 fbl_else.196 
	ilw.s	%r0 %f3 l.16
	sub.s	%f3 %f2 %f3
	ilw.s	%r0 %f4 l.16
	add.s	%f4 %f2 %f2
	div.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.25
	ilw.s	%r0 %f4 l.18
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	ilw.s	%r0 %f6 l.38
	mul.s	%f2 %f6 %f6
	ilw.s	%r0 %f7 l.39
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.40
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.41
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.42
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.43
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.194 
fbl_else.196 :
	ilw.s	%r0 %f3 l.16
	div.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.16
	ilw.s	%r0 %f4 l.37
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	ilw.s	%r0 %f6 l.38
	mul.s	%f2 %f6 %f6
	ilw.s	%r0 %f7 l.39
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.40
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.41
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.42
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.43
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
	lw.s	%r26 %f3 -16
	mul.s	%f3 %f2 %f2
	sw.s	%r26 %f0 -56
	sw	%r26 %r1 -64
	sw.s	%r26 %f1 -72
	sw.s	%r26 %f2 -80
	mov.s	%f2 %f0
	sw	%r26 %r28 -88
	addi	%r26 %r26 -92
	jal	sin.0 
	addi	%r26 %r26 92
	lw	%r26 %r28 -88
	lw.s	%r26 %f1 -80
	sw.s	%r26 %f0 -88
	mov.s	%f1 %f0
	sw	%r26 %r28 -96
	addi	%r26 %r26 -100
	jal	cos.0 
	addi	%r26 %r26 100
	lw	%r26 %r28 -96
	lw.s	%r26 %f1 -88
	div.s	%f0 %f1 %f0
	lw.s	%r26 %f1 -72
	mul.s	%f1 %f0 %f1
	lw.s	%r26 %f0 -56
	lw.s	%r26 %f2 -0
	lw.s	%r26 %f3 -16
	lw	%r26 %r1 -64
	lw	%r26 %r2 -12
	lw	%r26 %r3 -8
	j	calc_dirvec.0
calc_dirvecs.0 :
	addi	%r0 %r4 0
	bg	%r4 %r1 ble_else.17 
	mtc1	%r1 %f1
	ilw.s	%r0 %f2 l.42
	mul.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.58
	sub.s	%f2 %f1 %f2
	addi	%r0 %r4 0
	ilw.s	%r0 %f1 l.15
	ilw.s	%r0 %f3 l.15
	sw.s	%r26 %f0 -0
	sw	%r26 %r2 -8
	sw	%r26 %r3 -12
	sw	%r26 %r1 -16
	mov	%r4 %r1
	mov.s	%f3 %f31
	mov.s	%f0 %f3
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	calc_dirvec.0 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r1 -16
	mtc1	%r1 %f0
	ilw.s	%r0 %f1 l.42
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.55
	add.s	%f1 %f0 %f2
	addi	%r0 %r2 0
	ilw.s	%r0 %f0 l.15
	ilw.s	%r0 %f1 l.15
	lw	%r26 %r3 -12
	addi	%r3 %r4 2
	lw.s	%r26 %f3 -0
	lw	%r26 %r5 -8
	mov	%r4 %r3
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	calc_dirvec.0 
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r1 -16
	addi	%r1 %r1 -1
	lw	%r26 %r2 -8
	addi	%r2 %r2 1
	addi	%r0 %r3 5
	bg	%r3 %r2 ble_else.18 
	addi	%r2 %r2 -5
	j	ble_cont.3 
ble_else.18 :
ble_cont.3 :
	lw.s	%r26 %f0 -0
	lw	%r26 %r3 -12
	j	calc_dirvecs.0
ble_else.17 :
	retl
calc_dirvec_rows.0 :
	addi	%r0 %r4 0
	bg	%r4 %r1 ble_else.19 
	mtc1	%r1 %f0
	ilw.s	%r0 %f1 l.42
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.58
	sub.s	%f1 %f0 %f0
	addi	%r0 %r4 4
	sw	%r26 %r3 -0
	sw	%r26 %r2 -4
	sw	%r26 %r1 -8
	mov	%r4 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	calc_dirvecs.0 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r1 -8
	addi	%r1 %r1 -1
	lw	%r26 %r2 -4
	addi	%r2 %r2 2
	addi	%r0 %r3 5
	bg	%r3 %r2 ble_else.20 
	addi	%r2 %r2 -5
	j	ble_cont.4 
ble_else.20 :
ble_cont.4 :
	lw	%r26 %r3 -0
	addi	%r3 %r3 4
	j	calc_dirvec_rows.0
ble_else.19 :
	retl
create_dirvec_elements.0 :
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.21 
	addi	%r0 %r3 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -0
	sw	%r26 %r2 -4
	mov	%r3 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	min_caml_create_float_array 
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov	%r1 %r2
	lw	%r0 %r1 0
	sw	%r26 %r2 -8
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	min_caml_create_array 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 -8
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 -4
	slli	%r2 %r3 2
	lw	%r26 %r4 -0
	add	%r4 %r3 %r3
	sw	%r3 %r1 0
	addi	%r2 %r2 -1
	mov	%r4 %r1
	j	create_dirvec_elements.0
ble_else.21 :
	retl
create_dirvecs.0 :
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.22 
	addi	%r0 %r2 120
	addi	%r0 %r3 3
	ilw.s	%r0 %f0 l.15
	sw	%r26 %r1 -0
	sw	%r26 %r2 -4
	mov	%r3 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	min_caml_create_float_array 
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov	%r1 %r2
	lw	%r0 %r1 0
	sw	%r26 %r2 -8
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	min_caml_create_array 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 -8
	sw	%r2 %r1 0
	lw	%r26 %r1 -4
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	min_caml_create_array 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r2 -0
	slli	%r2 %r3 2
	addi	%r3 %r3 716
	sw	%r3 %r1 0
	slli	%r2 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r1 0
	addi	%r0 %r3 118
	mov	%r3 %r2
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	create_dirvec_elements.0 
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r1 -0
	addi	%r1 %r1 -1
	j	create_dirvecs.0
ble_else.22 :
	retl
init_dirvec_constants.0 :
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.23 
	slli	%r2 %r3 2
	add	%r1 %r3 %r3
	lw	%r3 %r3 0
	lw	%r0 %r4 0
	addi	%r4 %r4 -1
	sw	%r26 %r1 -0
	sw	%r26 %r2 -4
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	iter_setup_dirvec_constants.0 
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r1 -4
	addi	%r1 %r2 -1
	lw	%r26 %r1 -0
	j	init_dirvec_constants.0
ble_else.23 :
	retl
init_vecset_constants.0 :
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.24 
	slli	%r1 %r2 2
	addi	%r2 %r2 716
	lw	%r2 %r2 0
	addi	%r0 %r3 119
	sw	%r26 %r1 -0
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	init_dirvec_constants.0 
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r1 -0
	addi	%r1 %r1 -1
	j	init_vecset_constants.0
ble_else.24 :
	retl
#libraries
min_caml_create_array :
	bl	%r1 %r0 program_end
	mov	%r1 %r31
	mov	%r27 %r1
create_array_loop :
	bne     %r31 %r0 create_array_cont
	retl
create_array_cont :
	sw	%r27 %r2 0
	addi 	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_array_loop
min_caml_create_float_array :
	bl	%r1 %r0 program_end	
	mov	%r1 %r31
	mov	%r27 %r1
create_float_array_loop :
	bne	%r31 %r0 create_float_array_cont
	retl
create_float_array_cont :
	sw.s	%r27 %f0 0
	addi	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_float_array_loop

