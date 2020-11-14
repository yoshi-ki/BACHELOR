#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
l.77 :	# -200.000000
	.float	0xc3480000
l.76 :	# 200.000000
	.float	0x43480000
l.75 :	# 128.000000
	.float	0x43000000
l.74 :	# 0.900000
	.float	0x3f666666
l.73 :	# 150.000000
	.float	0x43160000
l.72 :	# -150.000000
	.float	0xc3160000
l.71 :	# 0.300000
	.float	0x3e99999a
l.70 :	# 0.150000
	.float	0x3e19999a
l.69 :	# -1.570796
	.float	0xbfc90fdb
l.68 :	# 30.000000
	.float	0x41f00000
l.67 :	# 0.333333
	.float	0x3eaaaaaa
l.66 :	# 0.200000
	.float	0x3e4ccccd
l.65 :	# 0.142857
	.float	0x3e124925
l.64 :	# 0.111111
	.float	0x3de38e38
l.63 :	# 0.089764
	.float	0x3db7d66e
l.62 :	# 0.060035
	.float	0x3d75e7c5
l.61 :	# 2.437500
	.float	0x401c0000
l.60 :	# 0.437500
	.float	0x3ee00000
l.59 :	# 15.000000
	.float	0x41700000
l.58 :	# 0.100000
	.float	0x3dcccccd
l.57 :	# -2.000000
	.float	0xc0000000
l.56 :	# 0.000100
	.float	0x38d1b717
l.55 :	# 0.003906
	.float	0x3b800000
l.54 :	# 3.141593
	.float	0x40490fdb
l.53 :	# 0.250000
	.float	0x3e800000
l.52 :	# 10.000000
	.float	0x41200000
l.51 :	# 20.000000
	.float	0x41a00000
l.50 :	# 0.050000
	.float	0x3d4ccccd
l.49 :	# 100000000.000000
	.float	0x4cbebc20
l.48 :	# -0.100000
	.float	0xbdcccccd
l.47 :	# 0.010000
	.float	0x3c23d70a
l.46 :	# -0.200000
	.float	0xbe4ccccd
l.45 :	# 2.000000
	.float	0x40000000
l.44 :	# 0.017453
	.float	0x3c8efa35
l.43 :	# 0.166667
	.float	0x3e2aaaac
l.42 :	# 0.008333
	.float	0x3c088666
l.41 :	# 0.000196
	.float	0x394d64b6
l.40 :	# 0.500000
	.float	0x3f000000
l.39 :	# 0.041664
	.float	0x3d2aa789
l.38 :	# 0.001370
	.float	0x3ab38106
l.37 :	# 0.785398
	.float	0x3f490fdb
l.36 :	# -1.000000
	.float	0xbf800000
l.35 :	# 1.570796
	.float	0x3fc90fdb
l.34 :	# 1.000000
	.float	0x3f800000
l.33 :	# 6.283185
	.float	0x40c90fdb
l.32 :	# 3.141593
	.float	0x40490fdb
l.31 :	# 1000000000.000000
	.float	0x4e6e6b28
l.30 :	# 255.000000
	.float	0x437f0000
l.29 :	# 0.000000
	.float	0x0
#text_section
program_start :
	ilw	%r0 %r26 sp_init.0
	ilw	%r0 %r27 hp_init.0
	addi	%r0 %r1 0
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 4
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	sw	%r27 %r1 0
	addi	%r0 %r1 0
	sw	%r27 %r1 4
	addi	%r0 %r1 0
	sw	%r27 %r1 8
	addi	%r0 %r1 0
	sw	%r27 %r1 12
	addi	%r0 %r1 4
	sw	%r27 %r1 16
	addi	%r0 %r1 4
	sw	%r27 %r1 20
	addi	%r0 %r1 0
	sw	%r27 %r1 24
	addi	%r0 %r1 4
	sw	%r27 %r1 28
	addi	%r0 %r1 4
	sw	%r27 %r1 32
	addi	%r0 %r1 4
	sw	%r27 %r1 36
	addi	%r0 %r1 4
	sw	%r27 %r1 40
	addi	%r27 %r27 44
	addi	%r0 %r1 48
	bne	%r1 %r27 program_end
	addi	%r0 %r1 60
	addi	%r0 %r2 4
	jal	min_caml_create_array
	addi	%r0 %r1 288
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 300
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 312
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 324
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.30
	jal	min_caml_create_float_array
	addi	%r0 %r1 328
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 -1
	jal	min_caml_create_array
	addi	%r0 %r1 332
	bne	%r1 %r27 program_end
	addi	%r0 %r1 50
	addi	%r0 %r2 328
	jal	min_caml_create_array
	addi	%r0 %r1 532
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 328
	jal	min_caml_create_array
	addi	%r0 %r1 536
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 532
	jal	min_caml_create_array
	addi	%r0 %r1 540
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 544
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 548
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.31
	jal	min_caml_create_float_array
	addi	%r0 %r1 552
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 564
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 568
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 580
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 592
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 604
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 616
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 624
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 632
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 636
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 648
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 660
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 672
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 684
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 696
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 708
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 708
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	addi	%r0 %r2 708
	jal	min_caml_create_array
	addi	%r0 %r1 708
	bne	%r1 %r27 program_end
	addi	%r0 %r1 708
	sw	%r27 %r1 0
	addi	%r0 %r1 708
	sw	%r27 %r1 4
	addi	%r27 %r27 8
	addi	%r0 %r1 716
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	addi	%r0 %r2 708
	jal	min_caml_create_array
	addi	%r0 %r1 716
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 716
	jal	min_caml_create_array
	addi	%r0 %r1 736
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 736
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 748
	bne	%r1 %r27 program_end
	addi	%r0 %r1 60
	addi	%r0 %r2 736
	jal	min_caml_create_array
	addi	%r0 %r1 988
	bne	%r1 %r27 program_end
	addi	%r0 %r1 736
	sw	%r27 %r1 0
	addi	%r0 %r1 748
	sw	%r27 %r1 4
	addi	%r27 %r27 8
	addi	%r0 %r1 996
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 996
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	addi	%r0 %r2 996
	jal	min_caml_create_array
	addi	%r0 %r1 996
	bne	%r1 %r27 program_end
	addi	%r0 %r1 996
	sw	%r27 %r1 0
	addi	%r0 %r1 996
	sw	%r27 %r1 4
	addi	%r27 %r27 8
	addi	%r0 %r1 1004
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	sw	%r27 %r1 0
	addi	%r0 %r1 996
	sw	%r27 %r1 4
	ilw.s	%r0 %f0 l.29
	sw.s	%r27 %f0 8
	addi	%r27 %r27 12
	addi	%r0 %r1 1016
	bne	%r1 %r27 program_end
	addi	%r0 %r1 180
	addi	%r0 %r2 1004
	jal	min_caml_create_array
	addi	%r0 %r1 1736
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 1740
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1752
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1764
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 1752
	jal	min_caml_create_array
	addi	%r0 %r1 1784
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1796
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1808
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1820
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1832
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 1852
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 1872
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1884
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 1872
	jal	min_caml_create_array
	addi	%r0 %r1 1904
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1916
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1928
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1940
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1952
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1964
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 1952
	jal	min_caml_create_array
	addi	%r0 %r1 1984
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 1996
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2008
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2020
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2032
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2036
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2048
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2036
	jal	min_caml_create_array
	addi	%r0 %r1 2068
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2080
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2092
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2104
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2116
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1740
	sw	%r27 %r1 0
	addi	%r0 %r1 1764
	sw	%r27 %r1 4
	addi	%r0 %r1 1832
	sw	%r27 %r1 8
	addi	%r0 %r1 1852
	sw	%r27 %r1 12
	addi	%r0 %r1 1884
	sw	%r27 %r1 16
	addi	%r0 %r1 1964
	sw	%r27 %r1 20
	addi	%r0 %r1 2032
	sw	%r27 %r1 24
	addi	%r0 %r1 2048
	sw	%r27 %r1 28
	addi	%r27 %r27 32
	addi	%r0 %r1 2148
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2160
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2172
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2160
	jal	min_caml_create_array
	addi	%r0 %r1 2192
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2204
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2216
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2228
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2240
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2260
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2280
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2292
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2280
	jal	min_caml_create_array
	addi	%r0 %r1 2312
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2324
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2336
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2348
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2360
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2372
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2360
	jal	min_caml_create_array
	addi	%r0 %r1 2392
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2404
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2416
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2428
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2440
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2444
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2456
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2444
	jal	min_caml_create_array
	addi	%r0 %r1 2476
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2488
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2500
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2512
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2524
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2148
	sw	%r27 %r1 0
	addi	%r0 %r1 2172
	sw	%r27 %r1 4
	addi	%r0 %r1 2240
	sw	%r27 %r1 8
	addi	%r0 %r1 2260
	sw	%r27 %r1 12
	addi	%r0 %r1 2292
	sw	%r27 %r1 16
	addi	%r0 %r1 2372
	sw	%r27 %r1 20
	addi	%r0 %r1 2440
	sw	%r27 %r1 24
	addi	%r0 %r1 2456
	sw	%r27 %r1 28
	addi	%r27 %r27 32
	addi	%r0 %r1 2556
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2568
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2580
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2568
	jal	min_caml_create_array
	addi	%r0 %r1 2600
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2612
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2624
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2636
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2648
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2668
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2688
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2700
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2688
	jal	min_caml_create_array
	addi	%r0 %r1 2720
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2732
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2744
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2756
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2768
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2780
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2768
	jal	min_caml_create_array
	addi	%r0 %r1 2800
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2812
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2824
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2836
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2848
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2852
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2864
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2852
	jal	min_caml_create_array
	addi	%r0 %r1 2884
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2896
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2908
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2920
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	jal	min_caml_create_float_array
	addi	%r0 %r1 2932
	bne	%r1 %r27 program_end
	addi	%r0 %r1 2556
	sw	%r27 %r1 0
	addi	%r0 %r1 2580
	sw	%r27 %r1 4
	addi	%r0 %r1 2648
	sw	%r27 %r1 8
	addi	%r0 %r1 2668
	sw	%r27 %r1 12
	addi	%r0 %r1 2700
	sw	%r27 %r1 16
	addi	%r0 %r1 2780
	sw	%r27 %r1 20
	addi	%r0 %r1 2848
	sw	%r27 %r1 24
	addi	%r0 %r1 2864
	sw	%r27 %r1 28
	addi	%r27 %r27 32
	addi	%r0 %r28 program_end
main.0 :
branching_b.632 :
	addi	%r0 %r6 988
	addi	%r0 %r2 128
	addi	%r0 %r1 128
	sw	%r0 %r2 616
	sw	%r0 %r1 620
	addi	%r0 %r1 64
	sw	%r0 %r1 624
	addi	%r0 %r1 64
	sw	%r0 %r1 628
	ilw.s	%r0 %f1 l.75
	mtc1	%r2 %f0
	div.s	%f0 %f1 %f0
	sw.s	%r0 %f0 632
	lw	%r0 %r2 616
	addi	%r0 %r1 1784
	sw	%r0 %r1 1768
	addi	%r0 %r1 1796
	sw	%r0 %r1 1772
	addi	%r0 %r1 1808
	sw	%r0 %r1 1776
	addi	%r0 %r1 1820
	sw	%r0 %r1 1780
	addi	%r0 %r1 1904
	sw	%r0 %r1 1888
	addi	%r0 %r1 1916
	sw	%r0 %r1 1892
	addi	%r0 %r1 1928
	sw	%r0 %r1 1896
	addi	%r0 %r1 1940
	sw	%r0 %r1 1900
	addi	%r0 %r1 1984
	sw	%r0 %r1 1968
	addi	%r0 %r1 1996
	sw	%r0 %r1 1972
	addi	%r0 %r1 2008
	sw	%r0 %r1 1976
	addi	%r0 %r1 2020
	sw	%r0 %r1 1980
	addi	%r0 %r1 2068
	sw	%r0 %r1 2052
	addi	%r0 %r1 2080
	sw	%r0 %r1 2056
	addi	%r0 %r1 2092
	sw	%r0 %r1 2060
	addi	%r0 %r1 2104
	sw	%r0 %r1 2064
	addi	%r0 %r1 2116
	mov	%r2 %r31
	mov	%r1 %r2
	mov	%r31 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r3
	lw	%r0 %r1 616
	addi	%r1 %r2 -2
	sw	%r26 %r6 0
	mov	%r3 %r1
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	init_line_elements.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	mov	%r1 %r3
	lw	%r26 %r6 0
	lw	%r0 %r4 616
	addi	%r0 %r1 2192
	sw	%r0 %r1 2176
	addi	%r0 %r1 2204
	sw	%r0 %r1 2180
	addi	%r0 %r1 2216
	sw	%r0 %r1 2184
	addi	%r0 %r1 2228
	sw	%r0 %r1 2188
	addi	%r0 %r1 2312
	sw	%r0 %r1 2296
	addi	%r0 %r1 2324
	sw	%r0 %r1 2300
	addi	%r0 %r1 2336
	sw	%r0 %r1 2304
	addi	%r0 %r1 2348
	sw	%r0 %r1 2308
	addi	%r0 %r1 2392
	sw	%r0 %r1 2376
	addi	%r0 %r1 2404
	sw	%r0 %r1 2380
	addi	%r0 %r1 2416
	sw	%r0 %r1 2384
	addi	%r0 %r1 2428
	sw	%r0 %r1 2388
	addi	%r0 %r1 2476
	sw	%r0 %r1 2460
	addi	%r0 %r1 2488
	sw	%r0 %r1 2464
	addi	%r0 %r1 2500
	sw	%r0 %r1 2468
	addi	%r0 %r1 2512
	sw	%r0 %r1 2472
	addi	%r0 %r2 2524
	mov	%r4 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r4
	lw	%r0 %r1 616
	addi	%r1 %r2 -2
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	mov	%r4 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	init_line_elements.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov	%r1 %r5
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	lw	%r0 %r4 616
	addi	%r0 %r1 2600
	sw	%r0 %r1 2584
	addi	%r0 %r1 2612
	sw	%r0 %r1 2588
	addi	%r0 %r1 2624
	sw	%r0 %r1 2592
	addi	%r0 %r1 2636
	sw	%r0 %r1 2596
	addi	%r0 %r1 2720
	sw	%r0 %r1 2704
	addi	%r0 %r1 2732
	sw	%r0 %r1 2708
	addi	%r0 %r1 2744
	sw	%r0 %r1 2712
	addi	%r0 %r1 2756
	sw	%r0 %r1 2716
	addi	%r0 %r1 2800
	sw	%r0 %r1 2784
	addi	%r0 %r1 2812
	sw	%r0 %r1 2788
	addi	%r0 %r1 2824
	sw	%r0 %r1 2792
	addi	%r0 %r1 2836
	sw	%r0 %r1 2796
	addi	%r0 %r1 2884
	sw	%r0 %r1 2868
	addi	%r0 %r1 2896
	sw	%r0 %r1 2872
	addi	%r0 %r1 2908
	sw	%r0 %r1 2876
	addi	%r0 %r1 2920
	sw	%r0 %r1 2880
	addi	%r0 %r2 2932
	mov	%r4 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	lw	%r0 %r2 616
	addi	%r2 %r2 -2
	sw	%r26 %r5 -8
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	init_line_elements.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	mov	%r1 %r4
	lw	%r26 %r5 -8
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	fin	%f0
	sw.s	%r0 %f0 288
	fin	%f0
	sw.s	%r0 %f0 292
	fin	%f0
	sw.s	%r0 %f0 296
	fin	%f1
	ilw.s	%r0 %f0 l.44
	mul.s	%f0 %f1 %f0
	sw.s	%r26 %f0 -16
	sw	%r26 %r4 -12
	sw	%r26 %r5 -8
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	cos.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	mov.s	%f0 %f5
	lw.s	%r26 %f0 -16
	lw	%r26 %r4 -12
	lw	%r26 %r5 -8
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	sw.s	%r26 %f5 -16
	sw	%r26 %r4 -12
	sw	%r26 %r5 -8
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	sin.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	mov.s	%f0 %f3
	lw.s	%r26 %f5 -16
	lw	%r26 %r4 -12
	lw	%r26 %r5 -8
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	fin	%f0
	ilw.s	%r0 %f1 l.44
	mul.s	%f1 %f0 %f0
	sw.s	%r26 %f0 -24
	sw.s	%r26 %f3 -20
	sw.s	%r26 %f5 -16
	sw	%r26 %r4 -12
	sw	%r26 %r5 -8
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	cos.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	mov.s	%f0 %f2
	lw.s	%r26 %f0 -24
	lw.s	%r26 %f3 -20
	lw.s	%r26 %f5 -16
	lw	%r26 %r4 -12
	lw	%r26 %r5 -8
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	sw.s	%r26 %f2 -24
	sw.s	%r26 %f3 -20
	sw.s	%r26 %f5 -16
	sw	%r26 %r4 -12
	sw	%r26 %r5 -8
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	sin.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw.s	%r26 %f2 -24
	lw.s	%r26 %f3 -20
	lw.s	%r26 %f5 -16
	lw	%r26 %r4 -12
	lw	%r26 %r5 -8
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	mul.s	%f0 %f5 %f4
	ilw.s	%r0 %f1 l.76
	mul.s	%f1 %f4 %f1
	sw.s	%r0 %f1 684
	ilw.s	%r0 %f1 l.77
	mul.s	%f1 %f3 %f1
	sw.s	%r0 %f1 688
	mul.s	%f2 %f5 %f4
	ilw.s	%r0 %f1 l.76
	mul.s	%f1 %f4 %f1
	sw.s	%r0 %f1 692
	sw.s	%r0 %f2 660
	ilw.s	%r0 %f1 l.29
	sw.s	%r0 %f1 664
	neg.s	%f0 %f1
	sw.s	%r0 %f1 668
	neg.s	%f3 %f1
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 672
	neg.s	%f5 %f0
	sw.s	%r0 %f0 676
	neg.s	%f3 %f0
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 680
	lw.s	%r0 %f0 288
	lw.s	%r0 %f1 684
	sub.s	%f1 %f0 %f0
	sw.s	%r0 %f0 300
	lw.s	%r0 %f1 292
	lw.s	%r0 %f0 688
	sub.s	%f0 %f1 %f0
	sw.s	%r0 %f0 304
	lw.s	%r0 %f1 296
	lw.s	%r0 %f0 692
	sub.s	%f0 %f1 %f0
	sw.s	%r0 %f0 308
	in	%r1
	fin	%f0
	ilw.s	%r0 %f1 l.44
	mul.s	%f1 %f0 %f1
	sw	%r26 %r4 -16
	sw	%r26 %r5 -12
	sw	%r26 %r3 -8
	sw.s	%r26 %f1 -4
	sw	%r26 %r6 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	sin.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r4 -16
	lw	%r26 %r5 -12
	lw	%r26 %r3 -8
	lw.s	%r26 %f1 -4
	lw	%r26 %r6 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 316
	fin	%f0
	ilw.s	%r0 %f2 l.44
	mul.s	%f2 %f0 %f0
	sw	%r26 %r4 -16
	sw	%r26 %r5 -12
	sw	%r26 %r3 -8
	sw.s	%r26 %f0 -4
	sw	%r26 %r6 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	cos.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	mov.s	%f0 %f1
	lw	%r26 %r4 -16
	lw	%r26 %r5 -12
	lw	%r26 %r3 -8
	lw.s	%r26 %f0 -4
	lw	%r26 %r6 0
	sw	%r26 %r4 -20
	sw	%r26 %r5 -16
	sw	%r26 %r3 -12
	sw.s	%r26 %f1 -8
	sw.s	%r26 %f0 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	sin.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	mov.s	%f0 %f2
	lw	%r26 %r4 -20
	lw	%r26 %r5 -16
	lw	%r26 %r3 -12
	lw.s	%r26 %f1 -8
	lw.s	%r26 %f0 -4
	lw	%r26 %r6 0
	mul.s	%f2 %f1 %f2
	sw.s	%r0 %f2 312
	sw	%r26 %r4 -16
	sw	%r26 %r5 -12
	sw	%r26 %r3 -8
	sw.s	%r26 %f1 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	cos.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r4 -16
	lw	%r26 %r5 -12
	lw	%r26 %r3 -8
	lw.s	%r26 %f1 -4
	lw	%r26 %r6 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 320
	fin	%f0
	sw.s	%r0 %f0 324
	addi	%r0 %r1 0
	sw	%r26 %r4 -12
	sw	%r26 %r5 -8
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	read_object.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r4 -12
	lw	%r26 %r5 -8
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	addi	%r0 %r1 0
	sw	%r26 %r4 -12
	sw	%r26 %r5 -8
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	read_and_network.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r4 -12
	lw	%r26 %r5 -8
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	addi	%r0 %r1 0
	sw	%r26 %r4 -12
	sw	%r26 %r5 -8
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	read_or_network.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r4 -12
	lw	%r26 %r5 -8
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	sw	%r0 %r1 536
	addi	%r0 %r1 80
	out	%r1
	addi	%r0 %r1 51
	out	%r1
	addi	%r0 %r1 10
	out	%r1
	lw	%r0 %r9 616
	addi	%r0 %r1 100
	div	%r9 %r1 %r7
	addi	%r0 %r1 100
	mul	%r7 %r1 %r1
	sub	%r9 %r1 %r1
	addi	%r0 %r2 10
	div	%r1 %r2 %r8
	addi	%r0 %r1 100
	mul	%r7 %r1 %r1
	sub	%r9 %r1 %r2
	addi	%r0 %r1 10
	mul	%r8 %r1 %r1
	sub	%r2 %r1 %r2
	addi	%r0 %r1 0
	bl	%r1 %r7 tail_b.1032
branching_b.633 :
	addi	%r0 %r1 0
	bl	%r1 %r8 tail_b.1033
tail_b.1034 :
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.634
tail_b.1033 :
	addi	%r8 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.634
tail_b.1032 :
	addi	%r7 %r1 48
	out	%r1
	addi	%r8 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
branching_b.634 :
	addi	%r0 %r1 32
	out	%r1
	lw	%r0 %r2 620
	addi	%r0 %r1 100
	div	%r2 %r1 %r8
	addi	%r0 %r1 100
	mul	%r8 %r1 %r1
	sub	%r2 %r1 %r1
	addi	%r0 %r7 10
	div	%r1 %r7 %r7
	addi	%r0 %r1 100
	mul	%r8 %r1 %r1
	sub	%r2 %r1 %r2
	addi	%r0 %r1 10
	mul	%r7 %r1 %r1
	sub	%r2 %r1 %r2
	addi	%r0 %r1 0
	bl	%r1 %r8 tail_b.1035
branching_b.635 :
	addi	%r0 %r1 0
	bl	%r1 %r7 tail_b.1036
tail_b.1037 :
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.636
tail_b.1036 :
	addi	%r7 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.636
tail_b.1035 :
	addi	%r8 %r1 48
	out	%r1
	addi	%r7 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
branching_b.636 :
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
	sw	%r26 %r4 -12
	sw	%r26 %r5 -8
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	create_dirvecs.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r4 -12
	lw	%r26 %r5 -8
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	addi	%r0 %r1 9
	addi	%r0 %r2 0
	addi	%r0 %r7 0
	sw	%r26 %r4 -12
	sw	%r26 %r5 -8
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	mov	%r7 %r3
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	calc_dirvec_rows.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r4 -12
	lw	%r26 %r5 -8
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	addi	%r0 %r1 4
	sw	%r26 %r4 -12
	sw	%r26 %r5 -8
	sw	%r26 %r3 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	init_vecset_constants.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r4 -12
	lw	%r26 %r5 -8
	lw	%r26 %r3 -4
	lw	%r26 %r6 0
	lw.s	%r0 %f0 312
	sw.s	%r0 %f0 736
	lw.s	%r0 %f0 316
	sw.s	%r0 %f0 740
	lw.s	%r0 %f0 320
	sw.s	%r0 %f0 744
	lw	%r0 %r1 0
	addi	%r1 %r2 -1
	sw	%r26 %r4 -8
	sw	%r26 %r5 -4
	sw	%r26 %r3 0
	mov	%r6 %r1
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	iter_setup_dirvec_constants.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r4 -8
	lw	%r26 %r5 -4
	lw	%r26 %r3 0
	lw	%r0 %r1 0
	addi	%r1 %r6 -1
	addi	%r0 %r1 0
	ble	%r1 %r6 branching_b.637
tail_b.1045 :
	j	tail_b.1046
branching_b.637 :
	slli	%r6 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r2 0
	lw	%r2 %r7 8
	addi	%r0 %r1 2
	beq	%r7 %r1 branching_b.638
tail_b.1044 :
	j	tail_b.1046
branching_b.638 :
	lw	%r2 %r1 28
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.34
	fbge	%f1 %f0 tail_b.1039
tail_b.1038 :
	addi	%r0 %r1 1
	j	branching_b.639
tail_b.1039 :
	addi	%r0 %r1 0
branching_b.639 :
	addi	%r0 %r7 0
	beq	%r1 %r7 tail_b.1040
branching_b.640 :
	lw	%r2 %r7 4
	addi	%r0 %r1 1
	beq	%r7 %r1 tail_b.1041
branching_b.641 :
	addi	%r0 %r1 2
	beq	%r7 %r1 tail_b.1042
tail_b.1043 :
	j	tail_b.1046
tail_b.1042 :
	addi	%r0 %r1 4
	mul	%r6 %r1 %r1
	addi	%r1 %r7 1
	lw	%r0 %r6 1736
	ilw.s	%r0 %f0 l.34
	lw	%r2 %r1 28
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f5
	lw	%r2 %r1 16
	lw.s	%r0 %f1 312
	mov	%r1 %r8
	lw.s	%r8 %f0 0
	mul.s	%f0 %f1 %f0
	lw.s	%r0 %f2 316
	addi	%r1 %r8 4
	lw.s	%r8 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f0 320
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.45
	lw	%r2 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f2 312
	sub.s	%f2 %f0 %f4
	ilw.s	%r0 %f0 l.45
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f2
	lw.s	%r0 %f0 316
	sub.s	%f0 %f2 %f2
	ilw.s	%r0 %f3 l.45
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 320
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 3
	ilw.s	%r0 %f1 l.29
	sw.s	%r26 %f0 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r8
	lw.s	%r26 %f0 0
	lw	%r0 %r1 0
	mov	%r8 %r2
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r2 %r8
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	sw	%r2 %r8 0
	mov	%r2 %r1
	mov	%r8 %r2
	sw.s	%r2 %f4 0
	addi	%r8 %r2 4
	sw.s	%r2 %f2 0
	addi	%r8 %r2 8
	sw.s	%r2 %f0 0
	lw	%r0 %r2 0
	addi	%r2 %r2 -1
	sw	%r26 %r4 -24
	sw	%r26 %r5 -20
	sw	%r26 %r1 -16
	sw.s	%r26 %f5 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	iter_setup_dirvec_constants.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	mov	%r1 %r2
	lw	%r26 %r4 -24
	lw	%r26 %r5 -20
	lw	%r26 %r1 -16
	lw.s	%r26 %f5 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mov	%r27 %r2
	addi	%r27 %r27 12
	sw.s	%r2 %f5 8
	sw	%r2 %r1 4
	sw	%r2 %r7 0
	slli	%r6 %r1 2
	addi	%r1 %r1 1016
	sw	%r1 %r2 0
	addi	%r6 %r1 1
	sw	%r0 %r1 1736
	j	tail_b.1046
tail_b.1041 :
	addi	%r0 %r1 4
	mul	%r6 %r1 %r8
	lw	%r0 %r7 1736
	ilw.s	%r0 %f1 l.34
	lw	%r2 %r1 28
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw.s	%r0 %f1 312
	neg.s	%f1 %f1
	lw.s	%r0 %f2 316
	neg.s	%f2 %f3
	lw.s	%r0 %f2 320
	neg.s	%f2 %f5
	addi	%r8 %r2 1
	lw.s	%r0 %f4 312
	addi	%r0 %r1 3
	ilw.s	%r0 %f2 l.29
	sw.s	%r26 %f0 0
	mov.s	%f2 %f0
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r9
	lw.s	%r26 %f0 0
	lw	%r0 %r1 0
	sw	%r26 %r2 0
	mov	%r9 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r2 %r9
	lw	%r26 %r2 0
	mov	%r27 %r6
	addi	%r27 %r27 8
	sw	%r6 %r1 4
	sw	%r6 %r9 0
	mov	%r9 %r1
	sw.s	%r1 %f4 0
	addi	%r9 %r1 4
	sw.s	%r1 %f3 0
	addi	%r9 %r1 8
	sw.s	%r1 %f5 0
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r4 -40
	sw	%r26 %r5 -36
	sw	%r26 %r3 -32
	sw	%r26 %r6 -28
	sw	%r26 %r2 -24
	sw.s	%r26 %f5 -20
	sw.s	%r26 %f3 -16
	sw.s	%r26 %f1 -12
	sw.s	%r26 %f0 -8
	sw	%r26 %r7 -4
	sw	%r26 %r8 0
	mov	%r1 %r2
	mov	%r6 %r1
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	iter_setup_dirvec_constants.0
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	lw	%r26 %r4 -40
	lw	%r26 %r5 -36
	lw	%r26 %r3 -32
	lw	%r26 %r6 -28
	lw	%r26 %r2 -24
	lw.s	%r26 %f5 -20
	lw.s	%r26 %f3 -16
	lw.s	%r26 %f1 -12
	lw.s	%r26 %f0 -8
	lw	%r26 %r7 -4
	lw	%r26 %r8 0
	mov	%r27 %r1
	addi	%r27 %r27 12
	sw.s	%r1 %f0 8
	sw	%r1 %r6 4
	sw	%r1 %r2 0
	mov	%r1 %r2
	slli	%r7 %r1 2
	addi	%r1 %r1 1016
	sw	%r1 %r2 0
	addi	%r7 %r9 1
	addi	%r8 %r2 2
	lw.s	%r0 %f4 316
	addi	%r0 %r1 3
	ilw.s	%r0 %f2 l.29
	sw.s	%r26 %f0 0
	mov.s	%f2 %f0
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r10
	lw.s	%r26 %f0 0
	lw	%r0 %r1 0
	sw	%r26 %r2 0
	mov	%r10 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r2 %r10
	mov	%r1 %r6
	lw	%r26 %r2 0
	mov	%r27 %r1
	addi	%r27 %r27 8
	sw	%r1 %r6 4
	sw	%r1 %r10 0
	mov	%r10 %r6
	sw.s	%r6 %f1 0
	addi	%r10 %r6 4
	sw.s	%r6 %f4 0
	addi	%r10 %r6 8
	sw.s	%r6 %f5 0
	lw	%r0 %r6 0
	addi	%r6 %r6 -1
	sw	%r26 %r4 -40
	sw	%r26 %r5 -36
	sw	%r26 %r3 -32
	sw	%r26 %r1 -28
	sw	%r26 %r2 -24
	sw	%r26 %r9 -20
	sw.s	%r26 %f3 -16
	sw.s	%r26 %f1 -12
	sw.s	%r26 %f0 -8
	sw	%r26 %r7 -4
	sw	%r26 %r8 0
	mov	%r6 %r2
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	iter_setup_dirvec_constants.0
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	mov	%r1 %r6
	lw	%r26 %r4 -40
	lw	%r26 %r5 -36
	lw	%r26 %r3 -32
	lw	%r26 %r1 -28
	lw	%r26 %r2 -24
	lw	%r26 %r9 -20
	lw.s	%r26 %f3 -16
	lw.s	%r26 %f1 -12
	lw.s	%r26 %f0 -8
	lw	%r26 %r7 -4
	lw	%r26 %r8 0
	mov	%r27 %r6
	addi	%r27 %r27 12
	sw.s	%r6 %f0 8
	sw	%r6 %r1 4
	sw	%r6 %r2 0
	mov	%r6 %r2
	slli	%r9 %r1 2
	addi	%r1 %r1 1016
	sw	%r1 %r2 0
	addi	%r7 %r9 2
	addi	%r8 %r8 3
	lw.s	%r0 %f2 320
	addi	%r0 %r1 3
	ilw.s	%r0 %f4 l.29
	sw.s	%r26 %f0 0
	mov.s	%f4 %f0
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r6
	lw.s	%r26 %f0 0
	lw	%r0 %r1 0
	mov	%r6 %r2
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r2 %r6
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	sw	%r2 %r6 0
	mov	%r2 %r1
	mov	%r6 %r2
	sw.s	%r2 %f1 0
	addi	%r6 %r2 4
	sw.s	%r2 %f3 0
	addi	%r6 %r2 8
	sw.s	%r2 %f2 0
	lw	%r0 %r2 0
	addi	%r2 %r2 -1
	sw	%r26 %r4 -28
	sw	%r26 %r5 -24
	sw	%r26 %r1 -20
	sw	%r26 %r8 -16
	sw	%r26 %r9 -12
	sw	%r26 %r3 -8
	sw.s	%r26 %f0 -4
	sw	%r26 %r7 0
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	iter_setup_dirvec_constants.0
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	mov	%r1 %r2
	lw	%r26 %r4 -28
	lw	%r26 %r5 -24
	lw	%r26 %r1 -20
	lw	%r26 %r8 -16
	lw	%r26 %r9 -12
	lw	%r26 %r3 -8
	lw.s	%r26 %f0 -4
	lw	%r26 %r7 0
	mov	%r27 %r2
	addi	%r27 %r27 12
	sw.s	%r2 %f0 8
	sw	%r2 %r1 4
	sw	%r2 %r8 0
	slli	%r9 %r1 2
	addi	%r1 %r1 1016
	sw	%r1 %r2 0
	addi	%r7 %r1 3
	sw	%r0 %r1 1736
	j	tail_b.1046
tail_b.1040 :
tail_b.1046 :
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	lw.s	%r0 %f0 632
	lw	%r0 %r6 628
	sub	%r1 %r6 %r1
	mtc1	%r1 %f1
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f1 672
	mul.s	%f1 %f0 %f2
	lw.s	%r0 %f1 684
	add.s	%f1 %f2 %f3
	lw.s	%r0 %f1 676
	mul.s	%f1 %f0 %f2
	lw.s	%r0 %f1 688
	add.s	%f1 %f2 %f2
	lw.s	%r0 %f1 680
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f1 692
	add.s	%f1 %f0 %f0
	lw	%r0 %r1 616
	addi	%r1 %r1 -1
	sw	%r26 %r4 -8
	sw	%r26 %r5 -4
	sw	%r26 %r3 0
	mov	%r2 %r3
	mov	%r1 %r2
	mov	%r5 %r1
	mov.s	%f2 %f1
	mov.s	%f0 %f2
	mov.s	%f3 %f0
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	pretrace_pixels.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r4 -8
	lw	%r26 %r5 -4
	lw	%r26 %r3 0
	addi	%r0 %r2 0
	addi	%r0 %r1 2
	mov	%r5 %r31
	mov	%r1 %r5
	mov	%r2 %r1
	mov	%r3 %r2
	mov	%r31 %r3
	sw	%r26 %r28 0
	addi	%r26 %r26 -4
	jal	scan_line.0
	addi	%r26 %r26 4
	lw	%r26 %r28 0
	addi	%r0 %r1 0
return_point.35 :
program_end :
	add	%r0 %r0 %r0
	ret
sin.0 :
	mov.s	%f0 %f4
preloop_b.0 :
sin_loop.0 :
	ilw.s	%r0 %f1 l.32
	ilw.s	%r0 %f0 l.33
	fbg	%f0 %f4 branching_b.1
tail_b.0 :
	ilw.s	%r0 %f0 l.33
	sub.s	%f0 %f4 %f0
	mov.s	%f0 %f4
	j	sin_loop.0
branching_b.1 :
	ilw.s	%r0 %f0 l.29
	fbge	%f4 %f0 branching_b.2
tail_b.1 :
	ilw.s	%r0 %f0 l.33
	add.s	%f0 %f4 %f0
	mov.s	%f0 %f4
	j	sin_loop.0
branching_b.2 :
	fbg	%f1 %f4 branching_b.6
branching_b.3 :
	sub.s	%f1 %f4 %f4
	ilw.s	%r0 %f3 l.36
	ilw.s	%r0 %f0 l.35
	fbg	%f0 %f4 branching_b.5
branching_b.4 :
	sub.s	%f4 %f1 %f2
	ilw.s	%r0 %f0 l.37
	fbg	%f2 %f0 tail_b.3
tail_b.2 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.41
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f1 l.42
	mul.s	%f2 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f5
	ilw.s	%r0 %f0 l.43
	mul.s	%f2 %f0 %f1
	mul.s	%f4 %f5 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.34
	mul.s	%f2 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.3 :
	ilw.s	%r0 %f0 l.35
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.38
	ilw.s	%r0 %f1 l.39
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.40
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.34
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
branching_b.5 :
	ilw.s	%r0 %f0 l.37
	fbg	%f4 %f0 tail_b.5
tail_b.4 :
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.41
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f1 l.42
	mul.s	%f4 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.43
	mul.s	%f4 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.34
	mul.s	%f4 %f0 %f0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.5 :
	ilw.s	%r0 %f0 l.35
	sub.s	%f4 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f1 l.38
	ilw.s	%r0 %f0 l.39
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.40
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.34
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
branching_b.6 :
	ilw.s	%r0 %f3 l.34
	ilw.s	%r0 %f0 l.35
	fbg	%f0 %f4 branching_b.8
branching_b.7 :
	sub.s	%f4 %f1 %f2
	ilw.s	%r0 %f0 l.37
	fbg	%f2 %f0 tail_b.7
tail_b.6 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.41
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f1 l.42
	mul.s	%f2 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.43
	mul.s	%f2 %f0 %f4
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.34
	mul.s	%f2 %f0 %f1
	mul.s	%f5 %f4 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.7 :
	ilw.s	%r0 %f0 l.35
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.38
	ilw.s	%r0 %f1 l.39
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f1 %f2
	ilw.s	%r0 %f1 l.40
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f1 %f2
	ilw.s	%r0 %f1 l.34
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
branching_b.8 :
	ilw.s	%r0 %f0 l.37
	fbg	%f4 %f0 tail_b.9
tail_b.8 :
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.41
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.42
	mul.s	%f4 %f0 %f5
	mul.s	%f2 %f1 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f1 l.43
	mul.s	%f4 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.34
	mul.s	%f4 %f0 %f4
	mul.s	%f2 %f1 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.9 :
	ilw.s	%r0 %f0 l.35
	sub.s	%f4 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.38
	ilw.s	%r0 %f2 l.39
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.40
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.34
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f3 %f0 %f0
postloop_b.0 :
return_point.0 :
	retl
cos.0 :
preloop_b.1 :
cos_loop.0 :
	ilw.s	%r0 %f3 l.32
	ilw.s	%r0 %f1 l.33
	fbg	%f1 %f0 branching_b.10
tail_b.10 :
	ilw.s	%r0 %f1 l.33
	sub.s	%f1 %f0 %f0
	j	cos_loop.0
branching_b.10 :
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 branching_b.11
tail_b.11 :
	ilw.s	%r0 %f1 l.33
	add.s	%f1 %f0 %f0
	j	cos_loop.0
branching_b.11 :
	fbg	%f3 %f0 branching_b.15
branching_b.12 :
	sub.s	%f3 %f0 %f1
	ilw.s	%r0 %f2 l.36
	ilw.s	%r0 %f0 l.35
	fbg	%f0 %f1 branching_b.14
branching_b.13 :
	sub.s	%f1 %f3 %f0
	ilw.s	%r0 %f4 l.34
	ilw.s	%r0 %f1 l.37
	fbg	%f0 %f1 tail_b.13
tail_b.12 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f2 l.38
	ilw.s	%r0 %f0 l.39
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.40
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.34
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.1
tail_b.13 :
	ilw.s	%r0 %f1 l.35
	sub.s	%f0 %f1 %f1
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.41
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f2 l.42
	mul.s	%f1 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.43
	mul.s	%f1 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.34
	mul.s	%f1 %f2 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.1
branching_b.14 :
	ilw.s	%r0 %f0 l.37
	fbg	%f1 %f0 tail_b.15
tail_b.14 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.38
	ilw.s	%r0 %f1 l.39
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.40
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.34
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.1
tail_b.15 :
	ilw.s	%r0 %f0 l.35
	sub.s	%f1 %f0 %f3
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.41
	mul.s	%f3 %f0 %f1
	ilw.s	%r0 %f0 l.42
	mul.s	%f3 %f0 %f4
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f1 l.43
	mul.s	%f3 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.34
	mul.s	%f3 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.1
branching_b.15 :
	ilw.s	%r0 %f4 l.34
	ilw.s	%r0 %f1 l.35
	fbg	%f1 %f0 branching_b.17
branching_b.16 :
	sub.s	%f0 %f3 %f1
	ilw.s	%r0 %f2 l.36
	ilw.s	%r0 %f0 l.37
	fbg	%f1 %f0 tail_b.17
tail_b.16 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.38
	ilw.s	%r0 %f3 l.39
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.40
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.34
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.1
tail_b.17 :
	ilw.s	%r0 %f0 l.35
	sub.s	%f1 %f0 %f4
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.41
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.42
	mul.s	%f4 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.43
	mul.s	%f4 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.34
	mul.s	%f4 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.1
branching_b.17 :
	ilw.s	%r0 %f1 l.37
	fbg	%f0 %f1 tail_b.19
tail_b.18 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.38
	ilw.s	%r0 %f2 l.39
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.40
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.34
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.1
tail_b.19 :
	ilw.s	%r0 %f1 l.35
	sub.s	%f0 %f1 %f3
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.41
	mul.s	%f3 %f0 %f2
	ilw.s	%r0 %f0 l.42
	mul.s	%f3 %f0 %f0
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.43
	mul.s	%f3 %f0 %f0
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.34
	mul.s	%f3 %f0 %f3
	mul.s	%f1 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f4 %f0 %f0
postloop_b.1 :
return_point.1 :
	retl
read_object.0 :
	mov	%r1 %r4
preloop_b.2 :
read_object_loop.0 :
	addi	%r0 %r1 60
	bl	%r4 %r1 branching_b.19
tail_b.75 :
	j	postloop_b.2
branching_b.19 :
	in	%r11
	addi	%r0 %r1 -1
	bne	%r11 %r1 branching_b.20
tail_b.72 :
	addi	%r0 %r1 0
	j	branching_b.48
branching_b.20 :
	in	%r13
	in	%r3
	in	%r7
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r5
	fin	%f0
	mov	%r5 %r1
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r5 %r1 4
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r5 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	fin	%f0
	mov	%r1 %r2
	sw.s	%r2 %f0 0
	fin	%f0
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	fin	%f0
	addi	%r1 %r2 8
	sw.s	%r2 %f0 0
	fin	%f0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.21
tail_b.20 :
	addi	%r0 %r12 1
	j	branching_b.21
tail_b.21 :
	addi	%r0 %r12 0
branching_b.21 :
	addi	%r0 %r2 2
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r10
	lw	%r26 %r1 0
	fin	%f0
	mov	%r10 %r2
	sw.s	%r2 %f0 0
	fin	%f0
	addi	%r10 %r2 4
	sw.s	%r2 %f0 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r8
	lw	%r26 %r1 0
	fin	%f0
	mov	%r8 %r2
	sw.s	%r2 %f0 0
	fin	%f0
	addi	%r8 %r2 4
	sw.s	%r2 %f0 0
	fin	%f0
	addi	%r8 %r2 8
	sw.s	%r2 %f0 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r6
	lw	%r26 %r1 0
	addi	%r0 %r2 0
	bne	%r7 %r2 tail_b.22
tail_b.23 :
	j	branching_b.22
tail_b.22 :
	fin	%f1
	ilw.s	%r0 %f0 l.44
	mul.s	%f0 %f1 %f0
	mov	%r6 %r2
	sw.s	%r2 %f0 0
	fin	%f0
	ilw.s	%r0 %f1 l.44
	mul.s	%f1 %f0 %f0
	addi	%r6 %r2 4
	sw.s	%r2 %f0 0
	fin	%f1
	ilw.s	%r0 %f0 l.44
	mul.s	%f0 %f1 %f0
	addi	%r6 %r2 8
	sw.s	%r2 %f0 0
branching_b.22 :
	addi	%r0 %r2 2
	beq	%r13 %r2 tail_b.24
tail_b.25 :
	mov	%r12 %r2
	j	branching_b.23
tail_b.24 :
	addi	%r0 %r2 1
branching_b.23 :
	addi	%r0 %r9 4
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r9 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r14
	lw	%r26 %r1 0
	mov	%r27 %r9
	addi	%r27 %r27 44
	sw	%r9 %r14 40
	sw	%r9 %r6 36
	sw	%r9 %r8 32
	sw	%r9 %r10 28
	sw	%r9 %r2 24
	sw	%r9 %r1 20
	sw	%r9 %r5 16
	sw	%r9 %r7 12
	sw	%r9 %r3 8
	sw	%r9 %r13 4
	sw	%r9 %r11 0
	mov	%r9 %r1
	slli	%r4 %r2 2
	addi	%r2 %r2 48
	sw	%r2 %r1 0
	addi	%r0 %r1 3
	beq	%r13 %r1 branching_b.24
branching_b.42 :
	addi	%r0 %r1 2
	beq	%r13 %r1 branching_b.43
tail_b.68 :
	j	branching_b.47
branching_b.43 :
	addi	%r0 %r1 0
	beq	%r12 %r1 tail_b.60
tail_b.61 :
	addi	%r0 %r3 0
	j	branching_b.44
tail_b.60 :
	addi	%r0 %r3 1
	j	branching_b.44
branching_b.24 :
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.29
	fbne	%f0 %f1 tail_b.27
tail_b.26 :
	addi	%r0 %r1 1
	j	branching_b.25
tail_b.27 :
	addi	%r0 %r1 0
branching_b.25 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.26
tail_b.36 :
	ilw.s	%r0 %f0 l.29
	j	branching_b.30
branching_b.26 :
	ilw.s	%r0 %f1 l.29
	fbne	%f0 %f1 tail_b.29
tail_b.28 :
	addi	%r0 %r1 1
	j	branching_b.27
tail_b.29 :
	addi	%r0 %r1 0
branching_b.27 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.28
tail_b.34 :
	ilw.s	%r0 %f1 l.29
	j	tail_b.35
branching_b.28 :
	ilw.s	%r0 %f1 l.29
	fbge	%f1 %f0 tail_b.31
tail_b.30 :
	addi	%r0 %r2 1
	j	branching_b.29
tail_b.31 :
	addi	%r0 %r2 0
branching_b.29 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.32
tail_b.33 :
	ilw.s	%r0 %f1 l.34
	j	tail_b.35
tail_b.32 :
	ilw.s	%r0 %f1 l.36
tail_b.35 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
branching_b.30 :
	mov	%r5 %r1
	sw.s	%r1 %f0 0
	addi	%r5 %r1 4
	lw.s	%r1 %f2 0
	ilw.s	%r0 %f0 l.29
	fbne	%f2 %f0 tail_b.38
tail_b.37 :
	addi	%r0 %r2 1
	j	branching_b.31
tail_b.38 :
	addi	%r0 %r2 0
branching_b.31 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.32
tail_b.47 :
	ilw.s	%r0 %f0 l.29
	j	branching_b.36
branching_b.32 :
	ilw.s	%r0 %f0 l.29
	fbne	%f2 %f0 tail_b.40
tail_b.39 :
	addi	%r0 %r1 1
	j	branching_b.33
tail_b.40 :
	addi	%r0 %r1 0
branching_b.33 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.34
tail_b.45 :
	ilw.s	%r0 %f1 l.29
	j	tail_b.46
branching_b.34 :
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f2 tail_b.42
tail_b.41 :
	addi	%r0 %r1 1
	j	branching_b.35
tail_b.42 :
	addi	%r0 %r1 0
branching_b.35 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.43
tail_b.44 :
	ilw.s	%r0 %f1 l.34
	j	tail_b.46
tail_b.43 :
	ilw.s	%r0 %f1 l.36
tail_b.46 :
	mul.s	%f2 %f2 %f0
	div.s	%f0 %f1 %f0
branching_b.36 :
	addi	%r5 %r1 4
	sw.s	%r1 %f0 0
	addi	%r5 %r1 8
	lw.s	%r1 %f2 0
	ilw.s	%r0 %f0 l.29
	fbne	%f2 %f0 tail_b.49
tail_b.48 :
	addi	%r0 %r2 1
	j	branching_b.37
tail_b.49 :
	addi	%r0 %r2 0
branching_b.37 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.38
tail_b.58 :
	ilw.s	%r0 %f0 l.29
	j	tail_b.59
branching_b.38 :
	ilw.s	%r0 %f0 l.29
	fbne	%f2 %f0 tail_b.51
tail_b.50 :
	addi	%r0 %r2 1
	j	branching_b.39
tail_b.51 :
	addi	%r0 %r2 0
branching_b.39 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.40
tail_b.56 :
	ilw.s	%r0 %f1 l.29
	j	tail_b.57
branching_b.40 :
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f2 tail_b.53
tail_b.52 :
	addi	%r0 %r2 1
	j	branching_b.41
tail_b.53 :
	addi	%r0 %r2 0
branching_b.41 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.54
tail_b.55 :
	ilw.s	%r0 %f1 l.34
	j	tail_b.57
tail_b.54 :
	ilw.s	%r0 %f1 l.36
tail_b.57 :
	mul.s	%f2 %f2 %f0
	div.s	%f0 %f1 %f0
tail_b.59 :
	addi	%r5 %r1 8
	sw.s	%r1 %f0 0
	j	branching_b.47
branching_b.44 :
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f0 %f1
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.29
	fbne	%f1 %f0 tail_b.63
tail_b.62 :
	addi	%r0 %r2 1
	j	branching_b.45
tail_b.63 :
	addi	%r0 %r2 0
branching_b.45 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.46
tail_b.66 :
	ilw.s	%r0 %f1 l.34
	j	tail_b.67
branching_b.46 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.64
tail_b.65 :
	ilw.s	%r0 %f0 l.36
	div.s	%f1 %f0 %f1
	j	tail_b.67
tail_b.64 :
	ilw.s	%r0 %f0 l.34
	div.s	%f1 %f0 %f1
tail_b.67 :
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	mov	%r5 %r1
	sw.s	%r1 %f0 0
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	addi	%r5 %r1 4
	sw.s	%r1 %f0 0
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	addi	%r5 %r1 8
	sw.s	%r1 %f0 0
branching_b.47 :
	addi	%r0 %r1 0
	bne	%r7 %r1 tail_b.69
tail_b.70 :
	j	tail_b.71
tail_b.69 :
	mov	%r6 %r1
	lw.s	%r1 %f0 0
	sw	%r26 %r6 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	cos.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	mov.s	%f0 %f7
	lw	%r26 %r6 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	mov	%r6 %r1
	lw.s	%r1 %f0 0
	sw.s	%r26 %f7 -12
	sw	%r26 %r6 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	sin.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	mov.s	%f0 %f6
	lw.s	%r26 %f7 -12
	lw	%r26 %r6 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r26 %f6 -16
	sw.s	%r26 %f7 -12
	sw	%r26 %r6 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	cos.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	mov.s	%f0 %f4
	lw.s	%r26 %f6 -16
	lw.s	%r26 %f7 -12
	lw	%r26 %r6 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r26 %f4 -20
	sw.s	%r26 %f6 -16
	sw.s	%r26 %f7 -12
	sw	%r26 %r6 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	sin.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw.s	%r26 %f4 -20
	lw.s	%r26 %f6 -16
	lw.s	%r26 %f7 -12
	lw	%r26 %r6 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	addi	%r6 %r1 8
	lw.s	%r1 %f1 0
	sw.s	%r26 %f0 -24
	sw.s	%r26 %f4 -20
	sw.s	%r26 %f6 -16
	sw.s	%r26 %f7 -12
	sw	%r26 %r6 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	cos.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	mov.s	%f0 %f2
	lw.s	%r26 %f0 -24
	lw.s	%r26 %f4 -20
	lw.s	%r26 %f6 -16
	lw.s	%r26 %f7 -12
	lw	%r26 %r6 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	addi	%r6 %r1 8
	lw.s	%r1 %f1 0
	sw.s	%r26 %f2 -28
	sw.s	%r26 %f0 -24
	sw.s	%r26 %f4 -20
	sw.s	%r26 %f6 -16
	sw.s	%r26 %f7 -12
	sw	%r26 %r6 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	sin.0
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	mov.s	%f0 %f10
	lw.s	%r26 %f2 -28
	lw.s	%r26 %f0 -24
	lw.s	%r26 %f4 -20
	lw.s	%r26 %f6 -16
	lw.s	%r26 %f7 -12
	lw	%r26 %r6 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	mul.s	%f2 %f4 %f8
	mul.s	%f0 %f6 %f1
	mul.s	%f2 %f1 %f3
	mul.s	%f10 %f7 %f1
	sub.s	%f1 %f3 %f3
	mul.s	%f0 %f7 %f1
	mul.s	%f2 %f1 %f5
	mul.s	%f10 %f6 %f1
	add.s	%f1 %f5 %f12
	mul.s	%f10 %f4 %f5
	mul.s	%f0 %f6 %f1
	mul.s	%f10 %f1 %f9
	mul.s	%f2 %f7 %f1
	add.s	%f1 %f9 %f9
	mul.s	%f0 %f7 %f1
	mul.s	%f10 %f1 %f1
	mul.s	%f2 %f6 %f2
	sub.s	%f2 %f1 %f14
	neg.s	%f0 %f10
	mul.s	%f4 %f6 %f6
	mul.s	%f4 %f7 %f2
	mov	%r5 %r1
	lw.s	%r1 %f13 0
	addi	%r5 %r1 4
	lw.s	%r1 %f7 0
	addi	%r5 %r1 8
	lw.s	%r1 %f11 0
	mul.s	%f8 %f8 %f0
	mul.s	%f0 %f13 %f0
	mul.s	%f5 %f5 %f1
	mul.s	%f1 %f7 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f10 %f10 %f1
	mul.s	%f1 %f11 %f1
	add.s	%f1 %f0 %f0
	mov	%r5 %r1
	sw.s	%r1 %f0 0
	mul.s	%f3 %f3 %f0
	mul.s	%f0 %f13 %f0
	mul.s	%f9 %f9 %f1
	mul.s	%f1 %f7 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f6 %f1
	mul.s	%f1 %f11 %f1
	add.s	%f1 %f0 %f0
	addi	%r5 %r1 4
	sw.s	%r1 %f0 0
	mul.s	%f12 %f12 %f0
	mul.s	%f0 %f13 %f1
	mul.s	%f14 %f14 %f0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f2 %f2 %f0
	mul.s	%f0 %f11 %f0
	add.s	%f0 %f1 %f0
	addi	%r5 %r1 8
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f4 l.45
	mul.s	%f3 %f13 %f0
	mul.s	%f12 %f0 %f1
	mul.s	%f9 %f7 %f0
	mul.s	%f14 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f11 %f1
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f0 %f4 %f0
	mov	%r6 %r1
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f4 l.45
	mul.s	%f8 %f13 %f0
	mul.s	%f12 %f0 %f1
	mul.s	%f5 %f7 %f0
	mul.s	%f14 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f11 %f1
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f0 %f4 %f0
	addi	%r6 %r1 4
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.45
	mul.s	%f8 %f13 %f0
	mul.s	%f3 %f0 %f2
	mul.s	%f5 %f7 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f10 %f11 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	addi	%r6 %r1 8
	sw.s	%r1 %f0 0
tail_b.71 :
	addi	%r0 %r1 1
branching_b.48 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.73
tail_b.74 :
	addi	%r4 %r1 1
	mov	%r1 %r4
	j	read_object_loop.0
tail_b.73 :
	sw	%r0 %r4 0
postloop_b.2 :
return_point.2 :
	retl
read_net_item.0 :
branching_b.49 :
	in	%r2
	addi	%r0 %r3 -1
	beq	%r2 %r3 tail_b.76
tail_b.77 :
	addi	%r1 %r3 1
	sw	%r26 %r2 -4
	sw	%r26 %r1 0
	mov	%r3 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	read_net_item.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov	%r1 %r3
	lw	%r26 %r2 -4
	lw	%r26 %r1 0
	slli	%r1 %r1 2
	add	%r3 %r1 %r1
	sw	%r1 %r2 0
	mov	%r3 %r1
	j	return_point.3
tail_b.76 :
	addi	%r1 %r1 1
	addi	%r0 %r2 -1
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
return_point.3 :
	retl
read_or_network.0 :
	mov	%r1 %r2
branching_b.50 :
	addi	%r0 %r1 0
	sw	%r26 %r2 0
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	read_net_item.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	mov	%r1 %r4
	lw	%r26 %r2 0
	mov	%r4 %r1
	lw	%r1 %r3 0
	addi	%r0 %r1 -1
	beq	%r3 %r1 tail_b.78
tail_b.79 :
	addi	%r2 %r1 1
	sw	%r26 %r4 -4
	sw	%r26 %r2 0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	read_or_network.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov	%r1 %r3
	lw	%r26 %r4 -4
	lw	%r26 %r2 0
	slli	%r2 %r1 2
	add	%r3 %r1 %r1
	sw	%r1 %r4 0
	mov	%r3 %r1
	j	return_point.4
tail_b.78 :
	addi	%r2 %r1 1
	mov	%r4 %r2
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
return_point.4 :
	retl
read_and_network.0 :
	mov	%r1 %r2
preloop_b.3 :
read_and_network_loop.0 :
	addi	%r0 %r1 0
	sw	%r26 %r2 0
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	read_net_item.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r2 0
	mov	%r1 %r3
	lw	%r3 %r3 0
	addi	%r0 %r4 -1
	beq	%r3 %r4 tail_b.80
tail_b.81 :
	slli	%r2 %r3 2
	addi	%r3 %r3 332
	sw	%r3 %r1 0
	addi	%r2 %r1 1
	mov	%r1 %r2
	j	read_and_network_loop.0
tail_b.80 :
postloop_b.3 :
return_point.5 :
	retl
iter_setup_dirvec_constants.0 :
	mov	%r2 %r3
	mov	%r1 %r4
preloop_b.4 :
iter_setup_dirvec_constants_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r3 branching_b.53
tail_b.131 :
	j	postloop_b.4
branching_b.53 :
	slli	%r3 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r6 0
	lw	%r4 %r5 4
	lw	%r4 %r7 0
	lw	%r6 %r2 4
	addi	%r0 %r1 1
	beq	%r2 %r1 branching_b.54
branching_b.72 :
	addi	%r0 %r1 2
	beq	%r2 %r1 branching_b.73
branching_b.75 :
	addi	%r0 %r1 5
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	mov	%r7 %r1
	lw.s	%r1 %f5 0
	addi	%r7 %r1 4
	lw.s	%r1 %f4 0
	addi	%r7 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f5 %f5 %f1
	lw	%r6 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
	mul.s	%f4 %f4 %f1
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	mul.s	%f3 %f3 %f0
	lw	%r6 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	lw	%r6 %r1 12
	addi	%r0 %r8 0
	beq	%r1 %r8 tail_b.121
tail_b.122 :
	mul.s	%f3 %f4 %f0
	lw	%r6 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f2
	mul.s	%f5 %f3 %f1
	lw	%r6 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	mul.s	%f4 %f5 %f0
	lw	%r6 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f5
	j	branching_b.76
tail_b.121 :
	mov.s	%f1 %f5
	j	branching_b.76
branching_b.73 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r8
	mov	%r7 %r1
	lw.s	%r1 %f1 0
	lw	%r6 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	addi	%r7 %r1 4
	lw.s	%r1 %f1 0
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	lw	%r6 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f1 tail_b.117
tail_b.116 :
	addi	%r0 %r1 1
	j	branching_b.74
tail_b.117 :
	addi	%r0 %r1 0
	j	branching_b.74
branching_b.54 :
	addi	%r0 %r1 6
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r8
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.29
	fbne	%f0 %f1 tail_b.83
tail_b.82 :
	addi	%r0 %r1 1
	j	branching_b.55
tail_b.83 :
	addi	%r0 %r1 0
branching_b.55 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.56
tail_b.92 :
	ilw.s	%r0 %f0 l.29
	addi	%r8 %r1 4
	sw.s	%r1 %f0 0
	j	branching_b.60
branching_b.56 :
	lw	%r6 %r9 24
	mov	%r7 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.85
tail_b.84 :
	addi	%r0 %r1 1
	j	branching_b.57
tail_b.85 :
	addi	%r0 %r1 0
branching_b.57 :
	addi	%r0 %r2 0
	beq	%r9 %r2 tail_b.86
branching_b.58 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.87
tail_b.88 :
	addi	%r0 %r2 0
	j	branching_b.59
tail_b.87 :
	addi	%r0 %r2 1
	j	branching_b.59
tail_b.86 :
	mov	%r1 %r2
branching_b.59 :
	lw	%r6 %r1 16
	lw.s	%r1 %f0 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.89
tail_b.90 :
	j	tail_b.91
tail_b.89 :
	neg.s	%f0 %f0
tail_b.91 :
	mov	%r8 %r1
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.34
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	div.s	%f0 %f1 %f0
	addi	%r8 %r1 4
	sw.s	%r1 %f0 0
branching_b.60 :
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.29
	fbne	%f0 %f1 tail_b.94
tail_b.93 :
	addi	%r0 %r1 1
	j	branching_b.61
tail_b.94 :
	addi	%r0 %r1 0
branching_b.61 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.62
tail_b.103 :
	ilw.s	%r0 %f0 l.29
	addi	%r8 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.66
branching_b.62 :
	lw	%r6 %r1 24
	addi	%r7 %r2 4
	lw.s	%r2 %f0 0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.96
tail_b.95 :
	addi	%r0 %r9 1
	j	branching_b.63
tail_b.96 :
	addi	%r0 %r9 0
branching_b.63 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.97
branching_b.64 :
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.98
tail_b.99 :
	addi	%r0 %r2 0
	j	branching_b.65
tail_b.98 :
	addi	%r0 %r2 1
	j	branching_b.65
tail_b.97 :
	mov	%r9 %r2
branching_b.65 :
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.100
tail_b.101 :
	j	tail_b.102
tail_b.100 :
	neg.s	%f0 %f0
tail_b.102 :
	addi	%r8 %r1 8
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f0 l.34
	addi	%r7 %r1 4
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r8 %r1 12
	sw.s	%r1 %f0 0
branching_b.66 :
	addi	%r7 %r1 8
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.29
	fbne	%f1 %f0 tail_b.105
tail_b.104 :
	addi	%r0 %r1 1
	j	branching_b.67
tail_b.105 :
	addi	%r0 %r1 0
branching_b.67 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.68
tail_b.114 :
	ilw.s	%r0 %f0 l.29
	addi	%r8 %r1 20
	sw.s	%r1 %f0 0
	j	tail_b.115
branching_b.68 :
	lw	%r6 %r9 24
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.107
tail_b.106 :
	addi	%r0 %r2 1
	j	branching_b.69
tail_b.107 :
	addi	%r0 %r2 0
branching_b.69 :
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.108
branching_b.70 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.109
tail_b.110 :
	addi	%r0 %r1 0
	j	branching_b.71
tail_b.109 :
	addi	%r0 %r1 1
	j	branching_b.71
tail_b.108 :
	mov	%r2 %r1
branching_b.71 :
	lw	%r6 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.111
tail_b.112 :
	j	tail_b.113
tail_b.111 :
	neg.s	%f0 %f0
tail_b.113 :
	addi	%r8 %r1 16
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f0 l.34
	addi	%r7 %r1 8
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r8 %r1 20
	sw.s	%r1 %f0 0
tail_b.115 :
	slli	%r3 %r1 2
	add	%r5 %r1 %r1
	sw	%r1 %r8 0
tail_b.130 :
	addi	%r3 %r1 -1
	mov	%r1 %r3
	j	iter_setup_dirvec_constants_loop.0
branching_b.74 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.118
tail_b.119 :
	ilw.s	%r0 %f0 l.36
	div.s	%f1 %f0 %f0
	mov	%r8 %r1
	sw.s	%r1 %f0 0
	lw	%r6 %r1 16
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r8 %r1 4
	sw.s	%r1 %f0 0
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r8 %r1 8
	sw.s	%r1 %f0 0
	lw	%r6 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r8 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.120
tail_b.118 :
	ilw.s	%r0 %f0 l.29
	mov	%r8 %r1
	sw.s	%r1 %f0 0
tail_b.120 :
	slli	%r3 %r1 2
	add	%r5 %r1 %r1
	sw	%r1 %r8 0
	j	tail_b.130
branching_b.76 :
	mov	%r7 %r1
	lw.s	%r1 %f1 0
	lw	%r6 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	neg.s	%f0 %f6
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f2
	addi	%r7 %r1 8
	lw.s	%r1 %f1 0
	lw	%r6 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	neg.s	%f0 %f3
	mov	%r2 %r1
	sw.s	%r1 %f5 0
	lw	%r6 %r1 12
	addi	%r0 %r8 0
	bne	%r1 %r8 tail_b.123
tail_b.124 :
	addi	%r2 %r1 4
	sw.s	%r1 %f6 0
	addi	%r2 %r1 8
	sw.s	%r1 %f2 0
	addi	%r2 %r1 12
	sw.s	%r1 %f3 0
	j	branching_b.77
tail_b.123 :
	addi	%r7 %r1 8
	lw.s	%r1 %f1 0
	lw	%r6 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	addi	%r7 %r1 4
	lw.s	%r1 %f4 0
	lw	%r6 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.45
	div.s	%f1 %f0 %f0
	sub.s	%f0 %f6 %f0
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	lw	%r6 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	mov	%r7 %r1
	lw.s	%r1 %f1 0
	lw	%r6 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.45
	div.s	%f1 %f0 %f0
	sub.s	%f0 %f2 %f0
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	addi	%r7 %r1 4
	lw.s	%r1 %f1 0
	lw	%r6 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
	mov	%r7 %r1
	lw.s	%r1 %f1 0
	lw	%r6 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	ilw.s	%r0 %f0 l.45
	div.s	%f0 %f1 %f0
	sub.s	%f0 %f3 %f0
	addi	%r2 %r1 12
	sw.s	%r1 %f0 0
branching_b.77 :
	ilw.s	%r0 %f0 l.29
	fbne	%f5 %f0 tail_b.126
tail_b.125 :
	addi	%r0 %r1 1
	j	branching_b.78
tail_b.126 :
	addi	%r0 %r1 0
branching_b.78 :
	addi	%r0 %r6 0
	beq	%r1 %r6 tail_b.127
tail_b.128 :
	j	tail_b.129
tail_b.127 :
	ilw.s	%r0 %f0 l.34
	div.s	%f5 %f0 %f0
	addi	%r2 %r1 16
	sw.s	%r1 %f0 0
tail_b.129 :
	slli	%r3 %r1 2
	add	%r5 %r1 %r1
	sw	%r1 %r2 0
	j	tail_b.130
postloop_b.4 :
return_point.6 :
	retl
setup_startp_constants.0 :
	mov	%r2 %r5
	mov	%r1 %r3
preloop_b.5 :
setup_startp_constants_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r5 branching_b.80
tail_b.140 :
	j	postloop_b.5
branching_b.80 :
	slli	%r5 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r2 0
	lw	%r2 %r4 40
	lw	%r2 %r6 4
	mov	%r3 %r1
	lw.s	%r1 %f1 0
	lw	%r2 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mov	%r4 %r1
	sw.s	%r1 %f0 0
	addi	%r3 %r1 4
	lw.s	%r1 %f1 0
	lw	%r2 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r4 %r1 4
	sw.s	%r1 %f0 0
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r4 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	beq	%r6 %r1 tail_b.132
branching_b.81 :
	addi	%r0 %r1 2
	bl	%r1 %r6 branching_b.82
tail_b.138 :
	j	tail_b.139
branching_b.82 :
	mov	%r4 %r1
	lw.s	%r1 %f3 0
	addi	%r4 %r1 4
	lw.s	%r1 %f5 0
	addi	%r4 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f3 %f3 %f0
	lw	%r2 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f4
	mul.s	%f5 %f5 %f1
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f4
	mul.s	%f2 %f2 %f1
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	lw	%r2 %r1 12
	addi	%r0 %r7 0
	beq	%r1 %r7 tail_b.133
tail_b.134 :
	mul.s	%f2 %f5 %f4
	lw	%r2 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f2 %f2
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f5 %f3 %f2
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	j	branching_b.83
tail_b.133 :
	j	branching_b.83
tail_b.132 :
	lw	%r2 %r2 16
	mov	%r4 %r1
	lw.s	%r1 %f2 0
	addi	%r4 %r1 4
	lw.s	%r1 %f1 0
	addi	%r4 %r1 8
	lw.s	%r1 %f3 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	addi	%r2 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r4 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.139
branching_b.83 :
	addi	%r0 %r1 3
	beq	%r6 %r1 tail_b.135
tail_b.136 :
	j	tail_b.137
tail_b.135 :
	ilw.s	%r0 %f1 l.34
	sub.s	%f1 %f0 %f0
tail_b.137 :
	addi	%r4 %r1 12
	sw.s	%r1 %f0 0
tail_b.139 :
	addi	%r5 %r1 -1
	mov	%r1 %r5
	j	setup_startp_constants_loop.0
postloop_b.5 :
return_point.7 :
	retl
check_all_inside.0 :
	mov	%r2 %r4
	mov	%r1 %r3
	mov.s	%f2 %f5
	mov.s	%f0 %f6
	mov.s	%f1 %f2
preloop_b.6 :
check_all_inside_loop.0 :
	slli	%r3 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r2 0
	addi	%r0 %r1 -1
	beq	%r2 %r1 tail_b.141
branching_b.85 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r5 0
	lw	%r5 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f6 %f3
	lw	%r5 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f4
	lw	%r5 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f5 %f8
	lw	%r5 %r1 4
	addi	%r0 %r2 1
	beq	%r1 %r2 branching_b.86
branching_b.96 :
	addi	%r0 %r2 2
	beq	%r1 %r2 branching_b.97
branching_b.101 :
	mul.s	%f3 %f3 %f0
	lw	%r5 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	mul.s	%f4 %f4 %f7
	lw	%r5 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f7 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f8 %f8 %f0
	lw	%r5 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	lw	%r5 %r1 12
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.166
tail_b.167 :
	mul.s	%f8 %f4 %f7
	lw	%r5 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f7 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f3 %f8 %f7
	lw	%r5 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f7
	mul.s	%f4 %f3 %f0
	lw	%r5 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f1
	j	branching_b.102
tail_b.166 :
	mov.s	%f0 %f1
	j	branching_b.102
branching_b.97 :
	lw	%r5 %r1 16
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	mul.s	%f3 %f0 %f0
	addi	%r1 %r2 4
	lw.s	%r2 %f1 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	lw	%r5 %r2 24
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.160
tail_b.159 :
	addi	%r0 %r1 1
	j	branching_b.98
tail_b.160 :
	addi	%r0 %r1 0
	j	branching_b.98
branching_b.86 :
	ilw.s	%r0 %f0 l.29
	fbge	%f3 %f0 tail_b.143
tail_b.142 :
	neg.s	%f3 %f0
	j	branching_b.87
tail_b.143 :
	mov.s	%f3 %f0
	j	branching_b.87
tail_b.141 :
	addi	%r0 %r1 1
postloop_b.6 :
return_point.8 :
	retl
branching_b.87 :
	lw	%r5 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.145
tail_b.144 :
	addi	%r0 %r2 1
	j	branching_b.88
tail_b.145 :
	addi	%r0 %r2 0
branching_b.88 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.146
branching_b.89 :
	ilw.s	%r0 %f0 l.29
	fbge	%f4 %f0 tail_b.148
tail_b.147 :
	neg.s	%f4 %f0
	j	branching_b.90
tail_b.148 :
	mov.s	%f4 %f0
	j	branching_b.90
tail_b.146 :
	addi	%r0 %r1 0
branching_b.94 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.95
tail_b.158 :
	lw	%r5 %r1 24
	j	branching_b.107
branching_b.95 :
	lw	%r5 %r1 24
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.156
tail_b.157 :
	addi	%r0 %r1 0
	j	branching_b.107
tail_b.156 :
	addi	%r0 %r1 1
branching_b.107 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.177
tail_b.178 :
	addi	%r0 %r1 0
	j	postloop_b.6
tail_b.177 :
	addi	%r3 %r1 1
	mov	%r1 %r3
	j	check_all_inside_loop.0
branching_b.90 :
	lw	%r5 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.150
tail_b.149 :
	addi	%r0 %r2 1
	j	branching_b.91
tail_b.150 :
	addi	%r0 %r2 0
branching_b.91 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.151
branching_b.92 :
	ilw.s	%r0 %f0 l.29
	fbge	%f8 %f0 tail_b.153
tail_b.152 :
	neg.s	%f8 %f1
	j	branching_b.93
tail_b.153 :
	mov.s	%f8 %f1
	j	branching_b.93
tail_b.151 :
	addi	%r0 %r1 0
	j	branching_b.94
branching_b.93 :
	lw	%r5 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.155
tail_b.154 :
	addi	%r0 %r1 1
	j	branching_b.94
tail_b.155 :
	addi	%r0 %r1 0
	j	branching_b.94
branching_b.98 :
	addi	%r0 %r5 0
	beq	%r2 %r5 tail_b.161
branching_b.99 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.162
tail_b.163 :
	addi	%r0 %r1 0
	j	branching_b.100
tail_b.162 :
	addi	%r0 %r1 1
	j	branching_b.100
tail_b.161 :
branching_b.100 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.164
tail_b.165 :
	addi	%r0 %r1 0
	j	branching_b.107
tail_b.164 :
	addi	%r0 %r1 1
	j	branching_b.107
branching_b.102 :
	lw	%r5 %r1 4
	addi	%r0 %r2 3
	beq	%r1 %r2 tail_b.168
tail_b.169 :
	j	branching_b.103
tail_b.168 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f1 %f1
branching_b.103 :
	lw	%r5 %r1 24
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.171
tail_b.170 :
	addi	%r0 %r2 1
	j	branching_b.104
tail_b.171 :
	addi	%r0 %r2 0
branching_b.104 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.172
branching_b.105 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.173
tail_b.174 :
	addi	%r0 %r1 0
	j	branching_b.106
tail_b.173 :
	addi	%r0 %r1 1
	j	branching_b.106
tail_b.172 :
	mov	%r2 %r1
branching_b.106 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.175
tail_b.176 :
	addi	%r0 %r1 0
	j	branching_b.107
tail_b.175 :
	addi	%r0 %r1 1
	j	branching_b.107
shadow_check_and_group.0 :
	mov	%r1 %r3
preloop_b.7 :
shadow_check_and_group_loop.0 :
	slli	%r3 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r4 0
	addi	%r0 %r1 -1
	beq	%r4 %r1 tail_b.179
branching_b.109 :
	slli	%r3 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r4 0
	slli	%r4 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r7 0
	lw.s	%r0 %f0 552
	lw	%r7 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f0 556
	lw	%r7 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f3
	lw.s	%r0 %f0 560
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f6
	slli	%r4 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r6 0
	lw	%r7 %r1 4
	addi	%r0 %r5 1
	beq	%r1 %r5 branching_b.110
branching_b.137 :
	addi	%r0 %r5 2
	beq	%r1 %r5 branching_b.138
branching_b.140 :
	mov	%r6 %r1
	lw.s	%r1 %f5 0
	ilw.s	%r0 %f0 l.29
	fbne	%f5 %f0 tail_b.231
tail_b.230 :
	addi	%r0 %r5 1
	j	branching_b.141
tail_b.231 :
	addi	%r0 %r5 0
	j	branching_b.141
branching_b.138 :
	mov	%r6 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.227
tail_b.226 :
	addi	%r0 %r5 1
	j	branching_b.139
tail_b.227 :
	addi	%r0 %r5 0
	j	branching_b.139
branching_b.110 :
	mov	%r6 %r1
	lw.s	%r1 %f0 0
	sub.s	%f4 %f0 %f1
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f0 740
	mul.s	%f0 %f2 %f0
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.181
tail_b.180 :
	neg.s	%f0 %f1
	j	branching_b.111
tail_b.181 :
	mov.s	%f0 %f1
	j	branching_b.111
tail_b.179 :
	addi	%r0 %r1 0
postloop_b.7 :
return_point.9 :
	retl
branching_b.111 :
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.183
tail_b.182 :
	addi	%r0 %r1 1
	j	branching_b.112
tail_b.183 :
	addi	%r0 %r1 0
branching_b.112 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.184
branching_b.113 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f2 %f0
	add.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.186
tail_b.185 :
	neg.s	%f1 %f0
	j	branching_b.114
tail_b.186 :
	mov.s	%f1 %f0
	j	branching_b.114
tail_b.184 :
	addi	%r0 %r5 0
branching_b.118 :
	addi	%r0 %r1 0
	beq	%r5 %r1 branching_b.119
tail_b.225 :
	sw.s	%r0 %f2 540
	addi	%r0 %r5 1
	j	branching_b.147
branching_b.119 :
	addi	%r6 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f3 %f0 %f1
	addi	%r6 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	lw.s	%r0 %f1 736
	mul.s	%f1 %f0 %f1
	add.s	%f4 %f1 %f2
	ilw.s	%r0 %f1 l.29
	fbge	%f2 %f1 tail_b.195
tail_b.194 :
	neg.s	%f2 %f1
	j	branching_b.120
tail_b.195 :
	mov.s	%f2 %f1
branching_b.120 :
	lw	%r7 %r1 16
	lw.s	%r1 %f2 0
	fbge	%f1 %f2 tail_b.197
tail_b.196 :
	addi	%r0 %r1 1
	j	branching_b.121
tail_b.197 :
	addi	%r0 %r1 0
branching_b.121 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.198
branching_b.122 :
	lw.s	%r0 %f1 744
	mul.s	%f1 %f0 %f1
	add.s	%f6 %f1 %f2
	ilw.s	%r0 %f1 l.29
	fbge	%f2 %f1 tail_b.200
tail_b.199 :
	neg.s	%f2 %f2
	j	branching_b.123
tail_b.200 :
	j	branching_b.123
tail_b.198 :
	addi	%r0 %r5 0
branching_b.127 :
	addi	%r0 %r1 0
	beq	%r5 %r1 branching_b.128
tail_b.224 :
	sw.s	%r0 %f0 540
	addi	%r0 %r5 2
	j	branching_b.147
branching_b.128 :
	addi	%r6 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f6 %f0 %f1
	addi	%r6 %r1 20
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f0 736
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.209
tail_b.208 :
	neg.s	%f1 %f0
	j	branching_b.129
tail_b.209 :
	mov.s	%f1 %f0
branching_b.129 :
	lw	%r7 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.211
tail_b.210 :
	addi	%r0 %r1 1
	j	branching_b.130
tail_b.211 :
	addi	%r0 %r1 0
branching_b.130 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.212
branching_b.131 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f2 %f0
	add.s	%f3 %f0 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.214
tail_b.213 :
	neg.s	%f1 %f0
	j	branching_b.132
tail_b.214 :
	mov.s	%f1 %f0
	j	branching_b.132
tail_b.212 :
	addi	%r0 %r5 0
branching_b.136 :
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.222
tail_b.223 :
	sw.s	%r0 %f2 540
	addi	%r0 %r5 3
	j	branching_b.147
tail_b.222 :
	addi	%r0 %r5 0
	j	branching_b.147
branching_b.132 :
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.216
tail_b.215 :
	addi	%r0 %r5 1
	j	branching_b.133
tail_b.216 :
	addi	%r0 %r5 0
branching_b.133 :
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.217
branching_b.134 :
	addi	%r6 %r1 20
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.29
	fbne	%f0 %f1 tail_b.219
tail_b.218 :
	addi	%r0 %r5 1
	j	branching_b.135
tail_b.219 :
	addi	%r0 %r5 0
	j	branching_b.135
tail_b.217 :
	addi	%r0 %r5 0
	j	branching_b.136
branching_b.135 :
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.220
tail_b.221 :
	addi	%r0 %r5 0
	j	branching_b.136
tail_b.220 :
	addi	%r0 %r5 1
	j	branching_b.136
branching_b.123 :
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f2 %f1 tail_b.202
tail_b.201 :
	addi	%r0 %r5 1
	j	branching_b.124
tail_b.202 :
	addi	%r0 %r5 0
branching_b.124 :
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.203
branching_b.125 :
	addi	%r6 %r1 12
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f2 l.29
	fbne	%f1 %f2 tail_b.205
tail_b.204 :
	addi	%r0 %r5 1
	j	branching_b.126
tail_b.205 :
	addi	%r0 %r5 0
	j	branching_b.126
tail_b.203 :
	addi	%r0 %r5 0
	j	branching_b.127
branching_b.126 :
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.206
tail_b.207 :
	addi	%r0 %r5 0
	j	branching_b.127
tail_b.206 :
	addi	%r0 %r5 1
	j	branching_b.127
branching_b.147 :
	lw.s	%r0 %f1 540
	addi	%r0 %r1 0
	bne	%r5 %r1 branching_b.148
tail_b.245 :
	addi	%r0 %r5 0
	j	branching_b.149
branching_b.148 :
	ilw.s	%r0 %f0 l.46
	fbge	%f1 %f0 tail_b.244
tail_b.243 :
	addi	%r0 %r5 1
	j	branching_b.149
tail_b.244 :
	addi	%r0 %r5 0
branching_b.149 :
	addi	%r0 %r1 0
	beq	%r5 %r1 branching_b.150
branching_b.151 :
	ilw.s	%r0 %f0 l.47
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 312
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f2 552
	add.s	%f2 %f0 %f0
	lw.s	%r0 %f2 316
	mul.s	%f1 %f2 %f3
	lw.s	%r0 %f2 556
	add.s	%f2 %f3 %f3
	lw.s	%r0 %f2 320
	mul.s	%f1 %f2 %f2
	lw.s	%r0 %f1 560
	add.s	%f1 %f2 %f2
	addi	%r0 %r1 0
	sw	%r26 %r3 -4
	sw	%r26 %r2 0
	mov.s	%f3 %f1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	check_all_inside.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r3 -4
	lw	%r26 %r2 0
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.248
tail_b.249 :
	addi	%r0 %r1 1
	j	postloop_b.7
tail_b.248 :
	addi	%r3 %r1 1
	mov	%r1 %r3
	j	shadow_check_and_group_loop.0
branching_b.150 :
	slli	%r4 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.246
tail_b.247 :
	addi	%r3 %r1 1
	mov	%r1 %r3
	j	shadow_check_and_group_loop.0
tail_b.246 :
	addi	%r0 %r1 0
	j	postloop_b.7
branching_b.114 :
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.188
tail_b.187 :
	addi	%r0 %r5 1
	j	branching_b.115
tail_b.188 :
	addi	%r0 %r5 0
branching_b.115 :
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.189
branching_b.116 :
	addi	%r6 %r1 4
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.29
	fbne	%f1 %f0 tail_b.191
tail_b.190 :
	addi	%r0 %r1 1
	j	branching_b.117
tail_b.191 :
	addi	%r0 %r1 0
	j	branching_b.117
tail_b.189 :
	addi	%r0 %r5 0
	j	branching_b.118
branching_b.117 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.192
tail_b.193 :
	addi	%r0 %r5 0
	j	branching_b.118
tail_b.192 :
	addi	%r0 %r5 1
	j	branching_b.118
branching_b.139 :
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.228
tail_b.229 :
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f1
	addi	%r6 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r6 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r5 1
	j	branching_b.147
tail_b.228 :
	addi	%r0 %r5 0
	j	branching_b.147
branching_b.141 :
	addi	%r0 %r1 0
	beq	%r5 %r1 branching_b.142
tail_b.242 :
	addi	%r0 %r5 0
	j	branching_b.147
branching_b.142 :
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f1
	addi	%r6 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r6 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f7
	mul.s	%f4 %f4 %f0
	lw	%r7 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	mul.s	%f3 %f3 %f1
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f6 %f6 %f2
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	lw	%r7 %r5 12
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.232
tail_b.233 :
	mul.s	%f6 %f3 %f1
	lw	%r7 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f2
	mul.s	%f4 %f6 %f0
	lw	%r7 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f1
	mul.s	%f3 %f4 %f0
	lw	%r7 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	j	branching_b.143
tail_b.232 :
branching_b.143 :
	lw	%r7 %r1 4
	addi	%r0 %r5 3
	beq	%r1 %r5 tail_b.234
tail_b.235 :
	j	branching_b.144
tail_b.234 :
	ilw.s	%r0 %f1 l.34
	sub.s	%f1 %f0 %f0
branching_b.144 :
	mul.s	%f7 %f7 %f1
	mul.s	%f0 %f5 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f1 tail_b.237
tail_b.236 :
	addi	%r0 %r5 1
	j	branching_b.145
tail_b.237 :
	addi	%r0 %r5 0
branching_b.145 :
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.238
branching_b.146 :
	lw	%r7 %r5 24
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.239
tail_b.240 :
	sqrt.s	%f1 %f0
	add.s	%f0 %f7 %f1
	addi	%r6 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.241
tail_b.239 :
	sqrt.s	%f1 %f0
	sub.s	%f0 %f7 %f1
	addi	%r6 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.241
tail_b.238 :
	addi	%r0 %r5 0
	j	branching_b.147
tail_b.241 :
	addi	%r0 %r5 1
	j	branching_b.147
shadow_check_one_or_group.0 :
	mov	%r1 %r3
preloop_b.8 :
shadow_check_one_or_group_loop.0 :
	slli	%r3 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	addi	%r0 %r4 -1
	beq	%r1 %r4 tail_b.250
branching_b.153 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r4 0
	addi	%r0 %r1 0
	sw	%r26 %r3 -4
	sw	%r26 %r2 0
	mov	%r4 %r2
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	shadow_check_and_group.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r3 -4
	lw	%r26 %r2 0
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.251
tail_b.252 :
	addi	%r0 %r1 1
	j	postloop_b.8
tail_b.251 :
	addi	%r3 %r1 1
	mov	%r1 %r3
	j	shadow_check_one_or_group_loop.0
tail_b.250 :
	addi	%r0 %r1 0
postloop_b.8 :
return_point.10 :
	retl
shadow_check_one_or_matrix.0 :
	mov	%r2 %r3
	mov	%r1 %r4
preloop_b.9 :
shadow_check_one_or_matrix_loop.0 :
	slli	%r4 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r5 0
	mov	%r5 %r1
	lw	%r1 %r2 0
	addi	%r0 %r1 -1
	beq	%r2 %r1 tail_b.253
branching_b.155 :
	addi	%r0 %r1 99
	beq	%r2 %r1 tail_b.254
branching_b.156 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r6 0
	lw.s	%r0 %f0 552
	lw	%r6 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw.s	%r0 %f0 556
	lw	%r6 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f5
	lw.s	%r0 %f0 560
	lw	%r6 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f4
	slli	%r2 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r7 0
	lw	%r6 %r2 4
	addi	%r0 %r1 1
	beq	%r2 %r1 branching_b.157
branching_b.184 :
	addi	%r0 %r1 2
	beq	%r2 %r1 branching_b.185
branching_b.187 :
	mov	%r7 %r1
	lw.s	%r1 %f3 0
	ilw.s	%r0 %f0 l.29
	fbne	%f3 %f0 tail_b.306
tail_b.305 :
	addi	%r0 %r2 1
	j	branching_b.188
tail_b.306 :
	addi	%r0 %r2 0
	j	branching_b.188
branching_b.185 :
	mov	%r7 %r1
	lw.s	%r1 %f2 0
	ilw.s	%r0 %f0 l.29
	fbge	%f2 %f0 tail_b.302
tail_b.301 :
	addi	%r0 %r1 1
	j	branching_b.186
tail_b.302 :
	addi	%r0 %r1 0
	j	branching_b.186
branching_b.157 :
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f2
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f3
	lw.s	%r0 %f0 740
	mul.s	%f0 %f3 %f0
	add.s	%f5 %f0 %f2
	ilw.s	%r0 %f0 l.29
	fbge	%f2 %f0 tail_b.256
tail_b.255 :
	neg.s	%f2 %f2
	j	branching_b.158
tail_b.256 :
	j	branching_b.158
tail_b.254 :
	addi	%r0 %r1 1
	j	branching_b.198
tail_b.253 :
	addi	%r0 %r1 0
postloop_b.9 :
return_point.11 :
	retl
branching_b.198 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.324
branching_b.199 :
	addi	%r0 %r1 1
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	mov	%r5 %r2
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.325
tail_b.326 :
	addi	%r0 %r1 1
	j	postloop_b.9
tail_b.325 :
	addi	%r4 %r1 1
	mov	%r1 %r4
	j	shadow_check_one_or_matrix_loop.0
tail_b.324 :
	addi	%r4 %r1 1
	mov	%r1 %r4
	j	shadow_check_one_or_matrix_loop.0
branching_b.158 :
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.258
tail_b.257 :
	addi	%r0 %r1 1
	j	branching_b.159
tail_b.258 :
	addi	%r0 %r1 0
branching_b.159 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.259
branching_b.160 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f3 %f0
	add.s	%f4 %f0 %f2
	ilw.s	%r0 %f0 l.29
	fbge	%f2 %f0 tail_b.261
tail_b.260 :
	neg.s	%f2 %f2
	j	branching_b.161
tail_b.261 :
	j	branching_b.161
tail_b.259 :
	addi	%r0 %r2 0
branching_b.165 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.166
tail_b.300 :
	sw.s	%r0 %f3 540
	addi	%r0 %r2 1
	j	branching_b.194
branching_b.166 :
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f0
	addi	%r7 %r1 12
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f3
	lw.s	%r0 %f0 736
	mul.s	%f0 %f3 %f0
	add.s	%f1 %f0 %f2
	ilw.s	%r0 %f0 l.29
	fbge	%f2 %f0 tail_b.270
tail_b.269 :
	neg.s	%f2 %f2
	j	branching_b.167
tail_b.270 :
branching_b.167 :
	lw	%r6 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.272
tail_b.271 :
	addi	%r0 %r2 1
	j	branching_b.168
tail_b.272 :
	addi	%r0 %r2 0
branching_b.168 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.273
branching_b.169 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f3 %f0
	add.s	%f4 %f0 %f2
	ilw.s	%r0 %f0 l.29
	fbge	%f2 %f0 tail_b.275
tail_b.274 :
	neg.s	%f2 %f0
	j	branching_b.170
tail_b.275 :
	mov.s	%f2 %f0
	j	branching_b.170
tail_b.273 :
	addi	%r0 %r2 0
branching_b.174 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.175
tail_b.299 :
	sw.s	%r0 %f3 540
	addi	%r0 %r2 2
	j	branching_b.194
branching_b.175 :
	addi	%r7 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f4 %f0 %f0
	addi	%r7 %r1 20
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	lw.s	%r0 %f0 736
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.284
tail_b.283 :
	neg.s	%f0 %f1
	j	branching_b.176
tail_b.284 :
	mov.s	%f0 %f1
branching_b.176 :
	lw	%r6 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.286
tail_b.285 :
	addi	%r0 %r1 1
	j	branching_b.177
tail_b.286 :
	addi	%r0 %r1 0
branching_b.177 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.287
branching_b.178 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f2 %f0
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.289
tail_b.288 :
	neg.s	%f0 %f0
	j	branching_b.179
tail_b.289 :
	j	branching_b.179
tail_b.287 :
	addi	%r0 %r1 0
branching_b.183 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.297
tail_b.298 :
	sw.s	%r0 %f2 540
	addi	%r0 %r2 3
	j	branching_b.194
tail_b.297 :
	addi	%r0 %r2 0
	j	branching_b.194
branching_b.179 :
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.291
tail_b.290 :
	addi	%r0 %r1 1
	j	branching_b.180
tail_b.291 :
	addi	%r0 %r1 0
branching_b.180 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.292
branching_b.181 :
	addi	%r7 %r1 20
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.29
	fbne	%f0 %f1 tail_b.294
tail_b.293 :
	addi	%r0 %r2 1
	j	branching_b.182
tail_b.294 :
	addi	%r0 %r2 0
	j	branching_b.182
tail_b.292 :
	addi	%r0 %r1 0
	j	branching_b.183
branching_b.182 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.295
tail_b.296 :
	addi	%r0 %r1 0
	j	branching_b.183
tail_b.295 :
	addi	%r0 %r1 1
	j	branching_b.183
branching_b.170 :
	lw	%r6 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.277
tail_b.276 :
	addi	%r0 %r1 1
	j	branching_b.171
tail_b.277 :
	addi	%r0 %r1 0
branching_b.171 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.278
branching_b.172 :
	addi	%r7 %r1 12
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbne	%f0 %f2 tail_b.280
tail_b.279 :
	addi	%r0 %r2 1
	j	branching_b.173
tail_b.280 :
	addi	%r0 %r2 0
	j	branching_b.173
tail_b.278 :
	addi	%r0 %r2 0
	j	branching_b.174
branching_b.173 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.281
tail_b.282 :
	addi	%r0 %r2 0
	j	branching_b.174
tail_b.281 :
	addi	%r0 %r2 1
	j	branching_b.174
branching_b.194 :
	addi	%r0 %r1 0
	bne	%r2 %r1 branching_b.195
tail_b.323 :
	addi	%r0 %r1 0
	j	branching_b.198
branching_b.195 :
	lw.s	%r0 %f0 540
	ilw.s	%r0 %f1 l.48
	fbge	%f0 %f1 tail_b.319
tail_b.318 :
	addi	%r0 %r1 1
	j	branching_b.196
tail_b.319 :
	addi	%r0 %r1 0
branching_b.196 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.320
branching_b.197 :
	addi	%r0 %r1 1
	sw	%r26 %r5 -8
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	mov	%r5 %r2
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r5 -8
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.321
tail_b.322 :
	addi	%r0 %r1 1
	j	branching_b.198
tail_b.321 :
	addi	%r0 %r1 0
	j	branching_b.198
tail_b.320 :
	addi	%r0 %r1 0
	j	branching_b.198
branching_b.161 :
	lw	%r6 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.263
tail_b.262 :
	addi	%r0 %r1 1
	j	branching_b.162
tail_b.263 :
	addi	%r0 %r1 0
branching_b.162 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.264
branching_b.163 :
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbne	%f0 %f2 tail_b.266
tail_b.265 :
	addi	%r0 %r1 1
	j	branching_b.164
tail_b.266 :
	addi	%r0 %r1 0
	j	branching_b.164
tail_b.264 :
	addi	%r0 %r2 0
	j	branching_b.165
branching_b.164 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.267
tail_b.268 :
	addi	%r0 %r2 0
	j	branching_b.165
tail_b.267 :
	addi	%r0 %r2 1
	j	branching_b.165
branching_b.186 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.303
tail_b.304 :
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f1
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r7 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r2 1
	j	branching_b.194
tail_b.303 :
	addi	%r0 %r2 0
	j	branching_b.194
branching_b.188 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.189
tail_b.317 :
	addi	%r0 %r2 0
	j	branching_b.194
branching_b.189 :
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f2
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	addi	%r7 %r1 12
	lw.s	%r1 %f2 0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	mul.s	%f1 %f1 %f0
	lw	%r6 %r1 16
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f6
	mul.s	%f5 %f5 %f7
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f6 %f7
	mul.s	%f4 %f4 %f0
	lw	%r6 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f6
	lw	%r6 %r2 12
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.307
tail_b.308 :
	mul.s	%f4 %f5 %f0
	lw	%r6 %r1 36
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f4 %f6
	lw	%r6 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f6 %f4
	add.s	%f4 %f0 %f4
	mul.s	%f5 %f1 %f1
	lw	%r6 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	j	branching_b.190
tail_b.307 :
	mov.s	%f6 %f0
branching_b.190 :
	lw	%r6 %r1 4
	addi	%r0 %r2 3
	beq	%r1 %r2 tail_b.309
tail_b.310 :
	j	branching_b.191
tail_b.309 :
	ilw.s	%r0 %f1 l.34
	sub.s	%f1 %f0 %f0
branching_b.191 :
	mul.s	%f2 %f2 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f1 %f0 tail_b.312
tail_b.311 :
	addi	%r0 %r1 1
	j	branching_b.192
tail_b.312 :
	addi	%r0 %r1 0
branching_b.192 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.313
branching_b.193 :
	lw	%r6 %r2 24
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.314
tail_b.315 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f2 %f0
	addi	%r7 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.316
tail_b.314 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f2 %f1
	addi	%r7 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.316
tail_b.313 :
	addi	%r0 %r2 0
	j	branching_b.194
tail_b.316 :
	addi	%r0 %r2 1
	j	branching_b.194
solve_each_element.0 :
	mov	%r1 %r4
preloop_b.10 :
solve_each_element_loop.0 :
	slli	%r4 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r5 0
	addi	%r0 %r1 -1
	beq	%r5 %r1 tail_b.327
branching_b.201 :
	slli	%r5 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r7 0
	lw.s	%r0 %f0 636
	lw	%r7 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f1 640
	lw	%r7 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw.s	%r0 %f2 644
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f3
	lw	%r7 %r1 4
	addi	%r0 %r6 1
	beq	%r1 %r6 branching_b.202
branching_b.241 :
	addi	%r0 %r6 2
	beq	%r1 %r6 branching_b.242
branching_b.244 :
	mov	%r3 %r1
	lw.s	%r1 %f8 0
	addi	%r3 %r1 4
	lw.s	%r1 %f5 0
	addi	%r3 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f8 %f8 %f2
	lw	%r7 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f7
	mul.s	%f5 %f5 %f0
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f7 %f2
	mul.s	%f6 %f6 %f7
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f2
	lw	%r7 %r6 12
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.399
tail_b.400 :
	mul.s	%f6 %f5 %f0
	lw	%r7 %r1 36
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f6 %f6
	lw	%r7 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f6 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f5 %f8 %f5
	lw	%r7 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f5 %f2
	add.s	%f2 %f0 %f5
	j	branching_b.245
tail_b.399 :
	mov.s	%f2 %f5
	j	branching_b.245
branching_b.242 :
	lw	%r7 %r6 16
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mov	%r6 %r1
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f5
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	addi	%r6 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f2
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	addi	%r6 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f5
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f5 tail_b.396
tail_b.395 :
	addi	%r0 %r7 1
	j	branching_b.243
tail_b.396 :
	addi	%r0 %r7 0
	j	branching_b.243
branching_b.202 :
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbne	%f0 %f2 tail_b.329
tail_b.328 :
	addi	%r0 %r1 1
	j	branching_b.203
tail_b.329 :
	addi	%r0 %r1 0
	j	branching_b.203
tail_b.327 :
postloop_b.10 :
return_point.12 :
	retl
branching_b.203 :
	addi	%r0 %r6 0
	beq	%r1 %r6 branching_b.204
tail_b.348 :
	addi	%r0 %r6 0
	j	branching_b.214
branching_b.204 :
	lw	%r7 %r8 16
	lw	%r7 %r9 24
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.331
tail_b.330 :
	addi	%r0 %r6 1
	j	branching_b.205
tail_b.331 :
	addi	%r0 %r6 0
branching_b.205 :
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.332
branching_b.206 :
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.333
tail_b.334 :
	addi	%r0 %r6 0
	j	branching_b.207
tail_b.333 :
	addi	%r0 %r6 1
	j	branching_b.207
tail_b.332 :
branching_b.207 :
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.335
tail_b.336 :
	j	branching_b.208
tail_b.335 :
	neg.s	%f0 %f0
branching_b.208 :
	sub.s	%f4 %f0 %f2
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f5
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.338
tail_b.337 :
	neg.s	%f0 %f0
	j	branching_b.209
tail_b.338 :
branching_b.209 :
	addi	%r8 %r1 4
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.340
tail_b.339 :
	addi	%r0 %r1 1
	j	branching_b.210
tail_b.340 :
	addi	%r0 %r1 0
branching_b.210 :
	addi	%r0 %r6 0
	beq	%r1 %r6 tail_b.341
branching_b.211 :
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f3 %f0 %f2
	ilw.s	%r0 %f0 l.29
	fbge	%f2 %f0 tail_b.343
tail_b.342 :
	neg.s	%f2 %f0
	j	branching_b.212
tail_b.343 :
	mov.s	%f2 %f0
	j	branching_b.212
tail_b.341 :
	addi	%r0 %r6 0
	j	branching_b.214
branching_b.212 :
	addi	%r8 %r1 8
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.345
tail_b.344 :
	addi	%r0 %r1 1
	j	branching_b.213
tail_b.345 :
	addi	%r0 %r1 0
branching_b.213 :
	addi	%r0 %r6 0
	beq	%r1 %r6 tail_b.346
tail_b.347 :
	sw.s	%r0 %f5 540
	addi	%r0 %r6 1
	j	branching_b.214
tail_b.346 :
	addi	%r0 %r6 0
branching_b.214 :
	addi	%r0 %r1 0
	beq	%r6 %r1 branching_b.215
tail_b.394 :
	addi	%r0 %r7 1
	j	branching_b.253
branching_b.215 :
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbne	%f0 %f2 tail_b.350
tail_b.349 :
	addi	%r0 %r1 1
	j	branching_b.216
tail_b.350 :
	addi	%r0 %r1 0
branching_b.216 :
	addi	%r0 %r6 0
	beq	%r1 %r6 branching_b.217
tail_b.369 :
	addi	%r0 %r6 0
	j	branching_b.227
branching_b.217 :
	lw	%r7 %r6 16
	lw	%r7 %r8 24
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.352
tail_b.351 :
	addi	%r0 %r1 1
	j	branching_b.218
tail_b.352 :
	addi	%r0 %r1 0
branching_b.218 :
	addi	%r0 %r9 0
	beq	%r8 %r9 tail_b.353
branching_b.219 :
	addi	%r0 %r8 0
	beq	%r1 %r8 tail_b.354
tail_b.355 :
	addi	%r0 %r8 0
	j	branching_b.220
tail_b.354 :
	addi	%r0 %r8 1
	j	branching_b.220
tail_b.353 :
	mov	%r1 %r8
branching_b.220 :
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	addi	%r0 %r1 0
	beq	%r8 %r1 tail_b.356
tail_b.357 :
	j	branching_b.221
tail_b.356 :
	neg.s	%f0 %f0
branching_b.221 :
	sub.s	%f1 %f0 %f2
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f5
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f3 %f0 %f2
	ilw.s	%r0 %f0 l.29
	fbge	%f2 %f0 tail_b.359
tail_b.358 :
	neg.s	%f2 %f0
	j	branching_b.222
tail_b.359 :
	mov.s	%f2 %f0
branching_b.222 :
	addi	%r6 %r1 8
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.361
tail_b.360 :
	addi	%r0 %r8 1
	j	branching_b.223
tail_b.361 :
	addi	%r0 %r8 0
branching_b.223 :
	addi	%r0 %r1 0
	beq	%r8 %r1 tail_b.362
branching_b.224 :
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.364
tail_b.363 :
	neg.s	%f0 %f0
	j	branching_b.225
tail_b.364 :
	j	branching_b.225
tail_b.362 :
	addi	%r0 %r6 0
	j	branching_b.227
branching_b.225 :
	mov	%r6 %r1
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.366
tail_b.365 :
	addi	%r0 %r6 1
	j	branching_b.226
tail_b.366 :
	addi	%r0 %r6 0
branching_b.226 :
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.367
tail_b.368 :
	sw.s	%r0 %f5 540
	addi	%r0 %r6 1
	j	branching_b.227
tail_b.367 :
	addi	%r0 %r6 0
branching_b.227 :
	addi	%r0 %r1 0
	beq	%r6 %r1 branching_b.228
tail_b.393 :
	addi	%r0 %r7 2
	j	branching_b.253
branching_b.228 :
	addi	%r3 %r1 8
	lw.s	%r1 %f2 0
	ilw.s	%r0 %f0 l.29
	fbne	%f2 %f0 tail_b.371
tail_b.370 :
	addi	%r0 %r1 1
	j	branching_b.229
tail_b.371 :
	addi	%r0 %r1 0
branching_b.229 :
	addi	%r0 %r6 0
	beq	%r1 %r6 branching_b.230
tail_b.390 :
	addi	%r0 %r6 0
	j	branching_b.240
branching_b.230 :
	lw	%r7 %r8 16
	lw	%r7 %r6 24
	addi	%r3 %r1 8
	lw.s	%r1 %f2 0
	ilw.s	%r0 %f0 l.29
	fbge	%f2 %f0 tail_b.373
tail_b.372 :
	addi	%r0 %r7 1
	j	branching_b.231
tail_b.373 :
	addi	%r0 %r7 0
branching_b.231 :
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.374
branching_b.232 :
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.375
tail_b.376 :
	addi	%r0 %r6 0
	j	branching_b.233
tail_b.375 :
	addi	%r0 %r6 1
	j	branching_b.233
tail_b.374 :
	mov	%r7 %r6
branching_b.233 :
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.377
tail_b.378 :
	j	branching_b.234
tail_b.377 :
	neg.s	%f0 %f0
branching_b.234 :
	sub.s	%f3 %f0 %f2
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f2
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f3 l.29
	fbge	%f0 %f3 tail_b.380
tail_b.379 :
	neg.s	%f0 %f3
	j	branching_b.235
tail_b.380 :
	mov.s	%f0 %f3
branching_b.235 :
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	fbge	%f3 %f0 tail_b.382
tail_b.381 :
	addi	%r0 %r1 1
	j	branching_b.236
tail_b.382 :
	addi	%r0 %r1 0
branching_b.236 :
	addi	%r0 %r6 0
	beq	%r1 %r6 tail_b.383
branching_b.237 :
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.385
tail_b.384 :
	neg.s	%f0 %f1
	j	branching_b.238
tail_b.385 :
	mov.s	%f0 %f1
	j	branching_b.238
tail_b.383 :
	addi	%r0 %r6 0
	j	branching_b.240
branching_b.238 :
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.387
tail_b.386 :
	addi	%r0 %r6 1
	j	branching_b.239
tail_b.387 :
	addi	%r0 %r6 0
branching_b.239 :
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.388
tail_b.389 :
	sw.s	%r0 %f2 540
	addi	%r0 %r6 1
	j	branching_b.240
tail_b.388 :
	addi	%r0 %r6 0
branching_b.240 :
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.391
tail_b.392 :
	addi	%r0 %r7 3
	j	branching_b.253
tail_b.391 :
	addi	%r0 %r7 0
branching_b.253 :
	addi	%r0 %r1 0
	bne	%r7 %r1 branching_b.254
branching_b.259 :
	slli	%r5 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r5 24
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.425
tail_b.426 :
	addi	%r4 %r1 1
	mov	%r1 %r4
	j	solve_each_element_loop.0
tail_b.425 :
	j	postloop_b.10
branching_b.254 :
	lw.s	%r0 %f1 540
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f1 tail_b.417
tail_b.416 :
	addi	%r0 %r6 1
	j	branching_b.255
tail_b.417 :
	addi	%r0 %r6 0
branching_b.255 :
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.418
branching_b.256 :
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.420
tail_b.419 :
	addi	%r0 %r6 1
	j	branching_b.257
tail_b.420 :
	addi	%r0 %r6 0
	j	branching_b.257
tail_b.418 :
tail_b.424 :
	addi	%r4 %r1 1
	mov	%r1 %r4
	j	solve_each_element_loop.0
branching_b.257 :
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.421
branching_b.258 :
	ilw.s	%r0 %f0 l.47
	add.s	%f0 %f1 %f3
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f1
	lw.s	%r0 %f0 636
	add.s	%f0 %f1 %f1
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	lw.s	%r0 %f2 640
	add.s	%f2 %f0 %f4
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f2
	lw.s	%r0 %f0 644
	add.s	%f0 %f2 %f2
	addi	%r0 %r1 0
	sw.s	%r26 %f2 -32
	sw.s	%r26 %f4 -28
	sw.s	%r26 %f1 -24
	sw.s	%r26 %f3 -20
	sw	%r26 %r7 -16
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw	%r26 %r3 -4
	sw	%r26 %r2 0
	mov.s	%f1 %f0
	mov.s	%f4 %f1
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	check_all_inside.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw.s	%r26 %f2 -32
	lw.s	%r26 %f4 -28
	lw.s	%r26 %f1 -24
	lw.s	%r26 %f3 -20
	lw	%r26 %r7 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw	%r26 %r3 -4
	lw	%r26 %r2 0
	addi	%r0 %r6 0
	beq	%r1 %r6 tail_b.422
tail_b.423 :
	sw.s	%r0 %f3 548
	sw.s	%r0 %f1 552
	sw.s	%r0 %f4 556
	sw.s	%r0 %f2 560
	sw	%r0 %r5 564
	sw	%r0 %r7 544
	j	tail_b.424
tail_b.422 :
	j	tail_b.424
tail_b.421 :
	j	tail_b.424
branching_b.243 :
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.397
tail_b.398 :
	mov	%r6 %r1
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f2
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f1
	addi	%r6 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	div.s	%f5 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r7 1
	j	branching_b.253
tail_b.397 :
	addi	%r0 %r7 0
	j	branching_b.253
branching_b.245 :
	ilw.s	%r0 %f0 l.29
	fbne	%f5 %f0 tail_b.402
tail_b.401 :
	addi	%r0 %r6 1
	j	branching_b.246
tail_b.402 :
	addi	%r0 %r6 0
branching_b.246 :
	addi	%r0 %r1 0
	beq	%r6 %r1 branching_b.247
tail_b.415 :
	addi	%r0 %r7 0
	j	branching_b.253
branching_b.247 :
	mov	%r3 %r1
	lw.s	%r1 %f8 0
	addi	%r3 %r1 4
	lw.s	%r1 %f9 0
	addi	%r3 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f4 %f8 %f2
	lw	%r7 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	mul.s	%f1 %f9 %f7
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f3 %f6 %f0
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f7
	lw	%r7 %r6 12
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.403
tail_b.404 :
	mul.s	%f1 %f6 %f2
	mul.s	%f3 %f9 %f0
	add.s	%f0 %f2 %f0
	lw	%r7 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	mul.s	%f3 %f8 %f2
	mul.s	%f4 %f6 %f6
	add.s	%f6 %f2 %f6
	lw	%r7 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f6 %f2
	add.s	%f2 %f0 %f6
	mul.s	%f1 %f8 %f0
	mul.s	%f4 %f9 %f2
	add.s	%f2 %f0 %f2
	lw	%r7 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f2 l.45
	div.s	%f2 %f0 %f0
	add.s	%f0 %f7 %f6
	j	branching_b.248
tail_b.403 :
	mov.s	%f7 %f6
branching_b.248 :
	mul.s	%f4 %f4 %f2
	lw	%r7 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	mul.s	%f1 %f1 %f2
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f3 %f3 %f2
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f7
	lw	%r7 %r1 12
	addi	%r0 %r6 0
	beq	%r1 %r6 tail_b.405
tail_b.406 :
	mul.s	%f3 %f1 %f0
	lw	%r7 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f7 %f2
	mul.s	%f4 %f3 %f0
	lw	%r7 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f1 %f4 %f0
	lw	%r7 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	j	branching_b.249
tail_b.405 :
	mov.s	%f7 %f0
branching_b.249 :
	lw	%r7 %r1 4
	addi	%r0 %r6 3
	beq	%r1 %r6 tail_b.407
tail_b.408 :
	j	branching_b.250
tail_b.407 :
	ilw.s	%r0 %f1 l.34
	sub.s	%f1 %f0 %f0
branching_b.250 :
	mul.s	%f6 %f6 %f1
	mul.s	%f0 %f5 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f1 %f0 tail_b.410
tail_b.409 :
	addi	%r0 %r6 1
	j	branching_b.251
tail_b.410 :
	addi	%r0 %r6 0
branching_b.251 :
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.411
branching_b.252 :
	sqrt.s	%f0 %f0
	lw	%r7 %r6 24
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.412
tail_b.413 :
	j	tail_b.414
tail_b.412 :
	neg.s	%f0 %f0
	j	tail_b.414
tail_b.411 :
	addi	%r0 %r7 0
	j	branching_b.253
tail_b.414 :
	sub.s	%f6 %f0 %f0
	div.s	%f5 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r7 1
	j	branching_b.253
solve_one_or_network.0 :
	mov	%r3 %r5
	mov	%r2 %r3
	mov	%r1 %r2
preloop_b.11 :
solve_one_or_network_loop.0 :
	slli	%r2 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r4 0
	addi	%r0 %r1 -1
	bne	%r4 %r1 tail_b.427
tail_b.428 :
	j	postloop_b.11
tail_b.427 :
	slli	%r4 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r4 0
	addi	%r0 %r1 0
	sw	%r26 %r2 -8
	sw	%r26 %r5 -4
	sw	%r26 %r3 0
	mov	%r5 %r3
	mov	%r4 %r2
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	solve_each_element.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r2 -8
	lw	%r26 %r5 -4
	lw	%r26 %r3 0
	addi	%r2 %r1 1
	mov	%r1 %r2
	j	solve_one_or_network_loop.0
postloop_b.11 :
return_point.13 :
	retl
trace_or_matrix.0 :
	mov	%r3 %r5
	mov	%r2 %r4
	mov	%r1 %r2
preloop_b.12 :
trace_or_matrix_loop.0 :
	slli	%r2 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r3 0
	mov	%r3 %r1
	lw	%r1 %r6 0
	addi	%r0 %r1 -1
	beq	%r6 %r1 tail_b.429
branching_b.262 :
	addi	%r0 %r1 99
	beq	%r6 %r1 tail_b.430
branching_b.263 :
	slli	%r6 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r6 0
	lw.s	%r0 %f1 636
	lw	%r6 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw.s	%r0 %f0 640
	lw	%r6 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f3
	lw.s	%r0 %f2 644
	lw	%r6 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f4
	lw	%r6 %r7 4
	addi	%r0 %r1 1
	beq	%r7 %r1 branching_b.264
branching_b.303 :
	addi	%r0 %r1 2
	beq	%r7 %r1 branching_b.304
branching_b.306 :
	mov	%r5 %r1
	lw.s	%r1 %f5 0
	addi	%r5 %r1 4
	lw.s	%r1 %f6 0
	addi	%r5 %r1 8
	lw.s	%r1 %f8 0
	mul.s	%f5 %f5 %f2
	lw	%r6 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	mul.s	%f6 %f6 %f0
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f8 %f8 %f7
	lw	%r6 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	lw	%r6 %r7 12
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.502
tail_b.503 :
	mul.s	%f8 %f6 %f2
	lw	%r6 %r1 36
	lw.s	%r1 %f7 0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f7
	mul.s	%f5 %f8 %f2
	lw	%r6 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f6 %f5 %f5
	lw	%r6 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f5 %f2
	add.s	%f2 %f0 %f8
	j	branching_b.307
tail_b.502 :
	mov.s	%f0 %f8
	j	branching_b.307
branching_b.304 :
	lw	%r6 %r6 16
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mov	%r6 %r1
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f5
	addi	%r5 %r1 4
	lw.s	%r1 %f2 0
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f5 %f5
	addi	%r5 %r1 8
	lw.s	%r1 %f2 0
	addi	%r6 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f5 %f2
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f2 tail_b.499
tail_b.498 :
	addi	%r0 %r7 1
	j	branching_b.305
tail_b.499 :
	addi	%r0 %r7 0
	j	branching_b.305
branching_b.264 :
	mov	%r5 %r1
	lw.s	%r1 %f2 0
	ilw.s	%r0 %f0 l.29
	fbne	%f2 %f0 tail_b.432
tail_b.431 :
	addi	%r0 %r7 1
	j	branching_b.265
tail_b.432 :
	addi	%r0 %r7 0
	j	branching_b.265
tail_b.430 :
	addi	%r0 %r1 1
	sw	%r26 %r2 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov	%r3 %r2
	mov	%r5 %r3
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	solve_one_or_network.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r2 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	j	tail_b.524
tail_b.429 :
postloop_b.12 :
return_point.14 :
	retl
tail_b.524 :
	addi	%r2 %r1 1
	mov	%r1 %r2
	j	trace_or_matrix_loop.0
branching_b.265 :
	addi	%r0 %r1 0
	beq	%r7 %r1 branching_b.266
tail_b.451 :
	addi	%r0 %r1 0
	j	branching_b.276
branching_b.266 :
	lw	%r6 %r8 16
	lw	%r6 %r7 24
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.434
tail_b.433 :
	addi	%r0 %r9 1
	j	branching_b.267
tail_b.434 :
	addi	%r0 %r9 0
branching_b.267 :
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.435
branching_b.268 :
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.436
tail_b.437 :
	addi	%r0 %r1 0
	j	branching_b.269
tail_b.436 :
	addi	%r0 %r1 1
	j	branching_b.269
tail_b.435 :
	mov	%r9 %r1
branching_b.269 :
	mov	%r8 %r7
	lw.s	%r7 %f0 0
	addi	%r0 %r7 0
	beq	%r1 %r7 tail_b.438
tail_b.439 :
	j	branching_b.270
tail_b.438 :
	neg.s	%f0 %f0
branching_b.270 :
	sub.s	%f1 %f0 %f2
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f5
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f3 %f0 %f2
	ilw.s	%r0 %f0 l.29
	fbge	%f2 %f0 tail_b.441
tail_b.440 :
	neg.s	%f2 %f2
	j	branching_b.271
tail_b.441 :
branching_b.271 :
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.443
tail_b.442 :
	addi	%r0 %r7 1
	j	branching_b.272
tail_b.443 :
	addi	%r0 %r7 0
branching_b.272 :
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.444
branching_b.273 :
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.446
tail_b.445 :
	neg.s	%f0 %f2
	j	branching_b.274
tail_b.446 :
	mov.s	%f0 %f2
	j	branching_b.274
tail_b.444 :
	addi	%r0 %r1 0
	j	branching_b.276
branching_b.274 :
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.448
tail_b.447 :
	addi	%r0 %r1 1
	j	branching_b.275
tail_b.448 :
	addi	%r0 %r1 0
branching_b.275 :
	addi	%r0 %r7 0
	beq	%r1 %r7 tail_b.449
tail_b.450 :
	sw.s	%r0 %f5 540
	addi	%r0 %r1 1
	j	branching_b.276
tail_b.449 :
	addi	%r0 %r1 0
branching_b.276 :
	addi	%r0 %r7 0
	beq	%r1 %r7 branching_b.277
tail_b.497 :
	addi	%r0 %r1 1
	j	branching_b.315
branching_b.277 :
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbne	%f0 %f2 tail_b.453
tail_b.452 :
	addi	%r0 %r1 1
	j	branching_b.278
tail_b.453 :
	addi	%r0 %r1 0
branching_b.278 :
	addi	%r0 %r7 0
	beq	%r1 %r7 branching_b.279
tail_b.472 :
	addi	%r0 %r7 0
	j	branching_b.289
branching_b.279 :
	lw	%r6 %r8 16
	lw	%r6 %r7 24
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.455
tail_b.454 :
	addi	%r0 %r9 1
	j	branching_b.280
tail_b.455 :
	addi	%r0 %r9 0
branching_b.280 :
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.456
branching_b.281 :
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.457
tail_b.458 :
	addi	%r0 %r1 0
	j	branching_b.282
tail_b.457 :
	addi	%r0 %r1 1
	j	branching_b.282
tail_b.456 :
	mov	%r9 %r1
branching_b.282 :
	addi	%r8 %r7 4
	lw.s	%r7 %f0 0
	addi	%r0 %r7 0
	beq	%r1 %r7 tail_b.459
tail_b.460 :
	j	branching_b.283
tail_b.459 :
	neg.s	%f0 %f0
branching_b.283 :
	sub.s	%f3 %f0 %f0
	addi	%r5 %r1 4
	lw.s	%r1 %f2 0
	div.s	%f2 %f0 %f5
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.462
tail_b.461 :
	neg.s	%f0 %f0
	j	branching_b.284
tail_b.462 :
branching_b.284 :
	addi	%r8 %r1 8
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.464
tail_b.463 :
	addi	%r0 %r7 1
	j	branching_b.285
tail_b.464 :
	addi	%r0 %r7 0
branching_b.285 :
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.465
branching_b.286 :
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.467
tail_b.466 :
	neg.s	%f0 %f0
	j	branching_b.287
tail_b.467 :
	j	branching_b.287
tail_b.465 :
	addi	%r0 %r7 0
	j	branching_b.289
branching_b.287 :
	mov	%r8 %r1
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.469
tail_b.468 :
	addi	%r0 %r7 1
	j	branching_b.288
tail_b.469 :
	addi	%r0 %r7 0
branching_b.288 :
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.470
tail_b.471 :
	sw.s	%r0 %f5 540
	addi	%r0 %r7 1
	j	branching_b.289
tail_b.470 :
	addi	%r0 %r7 0
branching_b.289 :
	addi	%r0 %r1 0
	beq	%r7 %r1 branching_b.290
tail_b.496 :
	addi	%r0 %r1 2
	j	branching_b.315
branching_b.290 :
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbne	%f0 %f2 tail_b.474
tail_b.473 :
	addi	%r0 %r7 1
	j	branching_b.291
tail_b.474 :
	addi	%r0 %r7 0
branching_b.291 :
	addi	%r0 %r1 0
	beq	%r7 %r1 branching_b.292
tail_b.493 :
	addi	%r0 %r1 0
	j	branching_b.302
branching_b.292 :
	lw	%r6 %r7 16
	lw	%r6 %r6 24
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.476
tail_b.475 :
	addi	%r0 %r8 1
	j	branching_b.293
tail_b.476 :
	addi	%r0 %r8 0
branching_b.293 :
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.477
branching_b.294 :
	addi	%r0 %r1 0
	beq	%r8 %r1 tail_b.478
tail_b.479 :
	addi	%r0 %r1 0
	j	branching_b.295
tail_b.478 :
	addi	%r0 %r1 1
	j	branching_b.295
tail_b.477 :
	mov	%r8 %r1
branching_b.295 :
	addi	%r7 %r6 8
	lw.s	%r6 %f0 0
	addi	%r0 %r6 0
	beq	%r1 %r6 tail_b.480
tail_b.481 :
	j	branching_b.296
tail_b.480 :
	neg.s	%f0 %f0
branching_b.296 :
	sub.s	%f4 %f0 %f0
	addi	%r5 %r1 8
	lw.s	%r1 %f2 0
	div.s	%f2 %f0 %f0
	mov	%r5 %r1
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f1 %f2 %f2
	ilw.s	%r0 %f1 l.29
	fbge	%f2 %f1 tail_b.483
tail_b.482 :
	neg.s	%f2 %f2
	j	branching_b.297
tail_b.483 :
branching_b.297 :
	mov	%r7 %r1
	lw.s	%r1 %f1 0
	fbge	%f2 %f1 tail_b.485
tail_b.484 :
	addi	%r0 %r6 1
	j	branching_b.298
tail_b.485 :
	addi	%r0 %r6 0
branching_b.298 :
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.486
branching_b.299 :
	addi	%r5 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	add.s	%f3 %f1 %f2
	ilw.s	%r0 %f1 l.29
	fbge	%f2 %f1 tail_b.488
tail_b.487 :
	neg.s	%f2 %f2
	j	branching_b.300
tail_b.488 :
	j	branching_b.300
tail_b.486 :
	addi	%r0 %r1 0
	j	branching_b.302
branching_b.300 :
	addi	%r7 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f2 %f1 tail_b.490
tail_b.489 :
	addi	%r0 %r1 1
	j	branching_b.301
tail_b.490 :
	addi	%r0 %r1 0
branching_b.301 :
	addi	%r0 %r6 0
	beq	%r1 %r6 tail_b.491
tail_b.492 :
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.302
tail_b.491 :
	addi	%r0 %r1 0
branching_b.302 :
	addi	%r0 %r6 0
	beq	%r1 %r6 tail_b.494
tail_b.495 :
	addi	%r0 %r1 3
	j	branching_b.315
tail_b.494 :
	addi	%r0 %r1 0
branching_b.315 :
	addi	%r0 %r6 0
	bne	%r1 %r6 branching_b.316
tail_b.523 :
	j	tail_b.524
branching_b.316 :
	lw.s	%r0 %f1 540
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.520
tail_b.519 :
	addi	%r0 %r1 1
	j	branching_b.317
tail_b.520 :
	addi	%r0 %r1 0
branching_b.317 :
	addi	%r0 %r6 0
	beq	%r1 %r6 tail_b.521
tail_b.522 :
	addi	%r0 %r1 1
	sw	%r26 %r2 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov	%r3 %r2
	mov	%r5 %r3
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	solve_one_or_network.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r2 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	j	tail_b.524
tail_b.521 :
	j	tail_b.524
branching_b.305 :
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.500
tail_b.501 :
	mov	%r6 %r1
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f1
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r6 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f2 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.315
tail_b.500 :
	addi	%r0 %r1 0
	j	branching_b.315
branching_b.307 :
	ilw.s	%r0 %f0 l.29
	fbne	%f8 %f0 tail_b.505
tail_b.504 :
	addi	%r0 %r1 1
	j	branching_b.308
tail_b.505 :
	addi	%r0 %r1 0
branching_b.308 :
	addi	%r0 %r7 0
	beq	%r1 %r7 branching_b.309
tail_b.518 :
	addi	%r0 %r1 0
	j	branching_b.315
branching_b.309 :
	mov	%r5 %r1
	lw.s	%r1 %f6 0
	addi	%r5 %r1 4
	lw.s	%r1 %f2 0
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f1 %f6 %f5
	lw	%r6 %r1 16
	lw.s	%r1 %f7 0
	mul.s	%f7 %f5 %f7
	mul.s	%f3 %f2 %f5
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f9 0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f7 %f5
	mul.s	%f4 %f0 %f9
	lw	%r6 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f9 %f7
	add.s	%f7 %f5 %f5
	lw	%r6 %r7 12
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.506
tail_b.507 :
	mul.s	%f3 %f0 %f7
	mul.s	%f4 %f2 %f9
	add.s	%f9 %f7 %f7
	lw	%r6 %r1 36
	lw.s	%r1 %f9 0
	mul.s	%f9 %f7 %f9
	mul.s	%f4 %f6 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f7
	lw	%r6 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f7
	mul.s	%f3 %f6 %f6
	mul.s	%f1 %f2 %f0
	add.s	%f0 %f6 %f2
	lw	%r6 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f2 l.45
	div.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f5
	j	branching_b.310
tail_b.506 :
branching_b.310 :
	mul.s	%f1 %f1 %f0
	lw	%r6 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	mul.s	%f3 %f3 %f6
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f6
	mul.s	%f4 %f4 %f0
	lw	%r6 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f6 %f0
	lw	%r6 %r7 12
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.508
tail_b.509 :
	mul.s	%f4 %f3 %f6
	lw	%r6 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f6 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f4 %f2
	lw	%r6 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	mul.s	%f3 %f1 %f1
	lw	%r6 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	j	branching_b.311
tail_b.508 :
branching_b.311 :
	lw	%r6 %r7 4
	addi	%r0 %r1 3
	beq	%r7 %r1 tail_b.510
tail_b.511 :
	mov.s	%f0 %f1
	j	branching_b.312
tail_b.510 :
	ilw.s	%r0 %f1 l.34
	sub.s	%f1 %f0 %f1
branching_b.312 :
	mul.s	%f5 %f5 %f0
	mul.s	%f1 %f8 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f1 %f0 tail_b.513
tail_b.512 :
	addi	%r0 %r1 1
	j	branching_b.313
tail_b.513 :
	addi	%r0 %r1 0
branching_b.313 :
	addi	%r0 %r7 0
	beq	%r1 %r7 tail_b.514
branching_b.314 :
	sqrt.s	%f0 %f0
	lw	%r6 %r6 24
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.515
tail_b.516 :
	j	tail_b.517
tail_b.515 :
	neg.s	%f0 %f0
	j	tail_b.517
tail_b.514 :
	addi	%r0 %r1 0
	j	branching_b.315
tail_b.517 :
	sub.s	%f5 %f0 %f0
	div.s	%f8 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.315
solve_each_element_fast.0 :
	mov	%r2 %r5
	mov	%r1 %r6
preloop_b.13 :
solve_each_element_fast_loop.0 :
	lw	%r3 %r7 0
	slli	%r6 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r4 0
	addi	%r0 %r1 -1
	beq	%r4 %r1 tail_b.525
branching_b.319 :
	slli	%r4 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r10 0
	lw	%r10 %r8 40
	mov	%r8 %r1
	lw.s	%r1 %f1 0
	addi	%r8 %r1 4
	lw.s	%r1 %f3 0
	addi	%r8 %r1 8
	lw.s	%r1 %f4 0
	lw	%r3 %r2 4
	slli	%r4 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r9 0
	lw	%r10 %r1 4
	addi	%r0 %r2 1
	beq	%r1 %r2 branching_b.320
branching_b.347 :
	addi	%r0 %r2 2
	beq	%r1 %r2 branching_b.348
branching_b.350 :
	mov	%r9 %r1
	lw.s	%r1 %f5 0
	ilw.s	%r0 %f0 l.29
	fbne	%f5 %f0 tail_b.577
tail_b.576 :
	addi	%r0 %r2 1
	j	branching_b.351
tail_b.577 :
	addi	%r0 %r2 0
	j	branching_b.351
branching_b.348 :
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.573
tail_b.572 :
	addi	%r0 %r2 1
	j	branching_b.349
tail_b.573 :
	addi	%r0 %r2 0
	j	branching_b.349
branching_b.320 :
	lw	%r3 %r8 0
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f2
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f5
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f3 %f0 %f2
	ilw.s	%r0 %f0 l.29
	fbge	%f2 %f0 tail_b.527
tail_b.526 :
	neg.s	%f2 %f2
	j	branching_b.321
tail_b.527 :
	j	branching_b.321
tail_b.525 :
postloop_b.13 :
return_point.15 :
	retl
branching_b.321 :
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.529
tail_b.528 :
	addi	%r0 %r2 1
	j	branching_b.322
tail_b.529 :
	addi	%r0 %r2 0
branching_b.322 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.530
branching_b.323 :
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f4 %f0 %f2
	ilw.s	%r0 %f0 l.29
	fbge	%f2 %f0 tail_b.532
tail_b.531 :
	neg.s	%f2 %f0
	j	branching_b.324
tail_b.532 :
	mov.s	%f2 %f0
	j	branching_b.324
tail_b.530 :
	addi	%r0 %r1 0
branching_b.328 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.329
tail_b.571 :
	sw.s	%r0 %f5 540
	addi	%r0 %r8 1
	j	branching_b.355
branching_b.329 :
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f3 %f0 %f2
	addi	%r9 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f5
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f1 %f0 %f2
	ilw.s	%r0 %f0 l.29
	fbge	%f2 %f0 tail_b.541
tail_b.540 :
	neg.s	%f2 %f2
	j	branching_b.330
tail_b.541 :
branching_b.330 :
	lw	%r10 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.543
tail_b.542 :
	addi	%r0 %r2 1
	j	branching_b.331
tail_b.543 :
	addi	%r0 %r2 0
branching_b.331 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.544
branching_b.332 :
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.546
tail_b.545 :
	neg.s	%f0 %f2
	j	branching_b.333
tail_b.546 :
	mov.s	%f0 %f2
	j	branching_b.333
tail_b.544 :
	addi	%r0 %r1 0
branching_b.337 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.338
tail_b.570 :
	sw.s	%r0 %f5 540
	addi	%r0 %r8 2
	j	branching_b.355
branching_b.338 :
	addi	%r9 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f4 %f0 %f2
	addi	%r9 %r1 20
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.555
tail_b.554 :
	neg.s	%f0 %f1
	j	branching_b.339
tail_b.555 :
	mov.s	%f0 %f1
branching_b.339 :
	lw	%r10 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.557
tail_b.556 :
	addi	%r0 %r2 1
	j	branching_b.340
tail_b.557 :
	addi	%r0 %r2 0
branching_b.340 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.558
branching_b.341 :
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.560
tail_b.559 :
	neg.s	%f0 %f0
	j	branching_b.342
tail_b.560 :
	j	branching_b.342
tail_b.558 :
	addi	%r0 %r2 0
branching_b.346 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.568
tail_b.569 :
	sw.s	%r0 %f2 540
	addi	%r0 %r8 3
	j	branching_b.355
tail_b.568 :
	addi	%r0 %r8 0
	j	branching_b.355
branching_b.342 :
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.562
tail_b.561 :
	addi	%r0 %r2 1
	j	branching_b.343
tail_b.562 :
	addi	%r0 %r2 0
branching_b.343 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.563
branching_b.344 :
	addi	%r9 %r1 20
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.29
	fbne	%f1 %f0 tail_b.565
tail_b.564 :
	addi	%r0 %r2 1
	j	branching_b.345
tail_b.565 :
	addi	%r0 %r2 0
	j	branching_b.345
tail_b.563 :
	addi	%r0 %r2 0
	j	branching_b.346
branching_b.345 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.566
tail_b.567 :
	addi	%r0 %r2 0
	j	branching_b.346
tail_b.566 :
	addi	%r0 %r2 1
	j	branching_b.346
branching_b.333 :
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.548
tail_b.547 :
	addi	%r0 %r1 1
	j	branching_b.334
tail_b.548 :
	addi	%r0 %r1 0
branching_b.334 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.549
branching_b.335 :
	addi	%r9 %r1 12
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbne	%f0 %f2 tail_b.551
tail_b.550 :
	addi	%r0 %r2 1
	j	branching_b.336
tail_b.551 :
	addi	%r0 %r2 0
	j	branching_b.336
tail_b.549 :
	addi	%r0 %r1 0
	j	branching_b.337
branching_b.336 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.552
tail_b.553 :
	addi	%r0 %r1 0
	j	branching_b.337
tail_b.552 :
	addi	%r0 %r1 1
	j	branching_b.337
branching_b.355 :
	addi	%r0 %r1 0
	bne	%r8 %r1 branching_b.356
branching_b.361 :
	slli	%r4 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.594
tail_b.595 :
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	solve_each_element_fast_loop.0
tail_b.594 :
	j	postloop_b.13
branching_b.356 :
	lw.s	%r0 %f1 540
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f1 tail_b.586
tail_b.585 :
	addi	%r0 %r2 1
	j	branching_b.357
tail_b.586 :
	addi	%r0 %r2 0
branching_b.357 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.587
branching_b.358 :
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.589
tail_b.588 :
	addi	%r0 %r1 1
	j	branching_b.359
tail_b.589 :
	addi	%r0 %r1 0
	j	branching_b.359
tail_b.587 :
tail_b.593 :
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	solve_each_element_fast_loop.0
branching_b.359 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.590
branching_b.360 :
	ilw.s	%r0 %f0 l.47
	add.s	%f0 %f1 %f4
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	lw.s	%r0 %f1 648
	add.s	%f1 %f0 %f3
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f1
	lw.s	%r0 %f0 652
	add.s	%f0 %f1 %f5
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f1
	lw.s	%r0 %f0 656
	add.s	%f0 %f1 %f2
	addi	%r0 %r1 0
	sw.s	%r26 %f2 -32
	sw.s	%r26 %f5 -28
	sw.s	%r26 %f3 -24
	sw.s	%r26 %f4 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r3 -4
	sw	%r26 %r5 0
	mov	%r5 %r2
	mov.s	%f5 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	check_all_inside.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	mov	%r1 %r2
	lw.s	%r26 %f2 -32
	lw.s	%r26 %f5 -28
	lw.s	%r26 %f3 -24
	lw.s	%r26 %f4 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r3 -4
	lw	%r26 %r5 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.591
tail_b.592 :
	sw.s	%r0 %f4 548
	sw.s	%r0 %f3 552
	sw.s	%r0 %f5 556
	sw.s	%r0 %f2 560
	sw	%r0 %r4 564
	sw	%r0 %r8 544
	j	tail_b.593
tail_b.591 :
	j	tail_b.593
tail_b.590 :
	j	tail_b.593
branching_b.324 :
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.534
tail_b.533 :
	addi	%r0 %r2 1
	j	branching_b.325
tail_b.534 :
	addi	%r0 %r2 0
branching_b.325 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.535
branching_b.326 :
	addi	%r9 %r1 4
	lw.s	%r1 %f2 0
	ilw.s	%r0 %f0 l.29
	fbne	%f2 %f0 tail_b.537
tail_b.536 :
	addi	%r0 %r1 1
	j	branching_b.327
tail_b.537 :
	addi	%r0 %r1 0
	j	branching_b.327
tail_b.535 :
	addi	%r0 %r1 0
	j	branching_b.328
branching_b.327 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.538
tail_b.539 :
	addi	%r0 %r1 0
	j	branching_b.328
tail_b.538 :
	addi	%r0 %r1 1
	j	branching_b.328
branching_b.349 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.574
tail_b.575 :
	mov	%r9 %r1
	lw.s	%r1 %f1 0
	addi	%r8 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r8 1
	j	branching_b.355
tail_b.574 :
	addi	%r0 %r8 0
	j	branching_b.355
branching_b.351 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.352
tail_b.584 :
	addi	%r0 %r8 0
	j	branching_b.355
branching_b.352 :
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	addi	%r9 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r9 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r8 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f1 %f1 %f2
	mul.s	%f0 %f5 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.29
	fbge	%f2 %f0 tail_b.579
tail_b.578 :
	addi	%r0 %r2 1
	j	branching_b.353
tail_b.579 :
	addi	%r0 %r2 0
branching_b.353 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.580
branching_b.354 :
	lw	%r10 %r1 24
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.581
tail_b.582 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r9 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.583
tail_b.581 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f1 %f0
	addi	%r9 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.583
tail_b.580 :
	addi	%r0 %r8 0
	j	branching_b.355
tail_b.583 :
	addi	%r0 %r8 1
	j	branching_b.355
solve_one_or_network_fast.0 :
	mov	%r2 %r4
preloop_b.14 :
solve_one_or_network_fast_loop.0 :
	slli	%r1 %r2 2
	add	%r4 %r2 %r2
	lw	%r2 %r2 0
	addi	%r0 %r5 -1
	bne	%r2 %r5 tail_b.596
tail_b.597 :
	j	postloop_b.14
tail_b.596 :
	slli	%r2 %r2 2
	addi	%r2 %r2 332
	lw	%r2 %r5 0
	addi	%r0 %r2 0
	sw	%r26 %r1 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	solve_each_element_fast.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	mov	%r1 %r2
	lw	%r26 %r1 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	addi	%r1 %r1 1
	j	solve_one_or_network_fast_loop.0
postloop_b.14 :
return_point.16 :
	retl
trace_or_matrix_fast.0 :
	mov	%r3 %r4
	mov	%r2 %r6
	mov	%r1 %r3
preloop_b.15 :
trace_or_matrix_fast_loop.0 :
	slli	%r3 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r5 0
	mov	%r5 %r1
	lw	%r1 %r7 0
	addi	%r0 %r1 -1
	beq	%r7 %r1 tail_b.598
branching_b.364 :
	addi	%r0 %r1 99
	beq	%r7 %r1 tail_b.599
branching_b.365 :
	slli	%r7 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r8 0
	lw	%r8 %r2 40
	mov	%r2 %r1
	lw.s	%r1 %f5 0
	addi	%r2 %r1 4
	lw.s	%r1 %f3 0
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	lw	%r4 %r9 4
	slli	%r7 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r7 0
	lw	%r8 %r9 4
	addi	%r0 %r1 1
	beq	%r9 %r1 branching_b.366
branching_b.393 :
	addi	%r0 %r1 2
	beq	%r9 %r1 branching_b.394
branching_b.396 :
	mov	%r7 %r1
	lw.s	%r1 %f2 0
	ilw.s	%r0 %f0 l.29
	fbne	%f2 %f0 tail_b.651
tail_b.650 :
	addi	%r0 %r1 1
	j	branching_b.397
tail_b.651 :
	addi	%r0 %r1 0
	j	branching_b.397
branching_b.394 :
	mov	%r7 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.647
tail_b.646 :
	addi	%r0 %r8 1
	j	branching_b.395
tail_b.647 :
	addi	%r0 %r8 0
	j	branching_b.395
branching_b.366 :
	lw	%r4 %r2 0
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f0
	addi	%r7 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f4
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.601
tail_b.600 :
	neg.s	%f0 %f0
	j	branching_b.367
tail_b.601 :
	j	branching_b.367
tail_b.599 :
	addi	%r0 %r1 1
	sw	%r26 %r3 -8
	sw	%r26 %r4 -4
	sw	%r26 %r6 0
	mov	%r4 %r3
	mov	%r5 %r2
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r3 -8
	lw	%r26 %r4 -4
	lw	%r26 %r6 0
	j	tail_b.664
tail_b.598 :
postloop_b.15 :
return_point.17 :
	retl
tail_b.664 :
	addi	%r3 %r1 1
	mov	%r1 %r3
	j	trace_or_matrix_fast_loop.0
branching_b.367 :
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.603
tail_b.602 :
	addi	%r0 %r1 1
	j	branching_b.368
tail_b.603 :
	addi	%r0 %r1 0
branching_b.368 :
	addi	%r0 %r9 0
	beq	%r1 %r9 tail_b.604
branching_b.369 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f2 l.29
	fbge	%f0 %f2 tail_b.606
tail_b.605 :
	neg.s	%f0 %f2
	j	branching_b.370
tail_b.606 :
	mov.s	%f0 %f2
	j	branching_b.370
tail_b.604 :
	addi	%r0 %r1 0
branching_b.374 :
	addi	%r0 %r9 0
	beq	%r1 %r9 branching_b.375
tail_b.645 :
	sw.s	%r0 %f4 540
	addi	%r0 %r1 1
	j	branching_b.401
branching_b.375 :
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f3 %f0 %f2
	addi	%r7 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f5 %f0 %f4
	ilw.s	%r0 %f0 l.29
	fbge	%f4 %f0 tail_b.615
tail_b.614 :
	neg.s	%f4 %f4
	j	branching_b.376
tail_b.615 :
branching_b.376 :
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f4 %f0 tail_b.617
tail_b.616 :
	addi	%r0 %r1 1
	j	branching_b.377
tail_b.617 :
	addi	%r0 %r1 0
branching_b.377 :
	addi	%r0 %r9 0
	beq	%r1 %r9 tail_b.618
branching_b.378 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f4
	ilw.s	%r0 %f0 l.29
	fbge	%f4 %f0 tail_b.620
tail_b.619 :
	neg.s	%f4 %f0
	j	branching_b.379
tail_b.620 :
	mov.s	%f4 %f0
	j	branching_b.379
tail_b.618 :
	addi	%r0 %r9 0
branching_b.383 :
	addi	%r0 %r1 0
	beq	%r9 %r1 branching_b.384
tail_b.644 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 2
	j	branching_b.401
branching_b.384 :
	addi	%r7 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f0
	addi	%r7 %r1 20
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f2
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.629
tail_b.628 :
	neg.s	%f0 %f1
	j	branching_b.385
tail_b.629 :
	mov.s	%f0 %f1
branching_b.385 :
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.631
tail_b.630 :
	addi	%r0 %r9 1
	j	branching_b.386
tail_b.631 :
	addi	%r0 %r9 0
branching_b.386 :
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.632
branching_b.387 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f3 %f0 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.634
tail_b.633 :
	neg.s	%f1 %f1
	j	branching_b.388
tail_b.634 :
	j	branching_b.388
tail_b.632 :
	addi	%r0 %r2 0
branching_b.392 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.642
tail_b.643 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 3
	j	branching_b.401
tail_b.642 :
	addi	%r0 %r1 0
	j	branching_b.401
branching_b.388 :
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.636
tail_b.635 :
	addi	%r0 %r1 1
	j	branching_b.389
tail_b.636 :
	addi	%r0 %r1 0
branching_b.389 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.637
branching_b.390 :
	addi	%r7 %r1 20
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.29
	fbne	%f0 %f1 tail_b.639
tail_b.638 :
	addi	%r0 %r2 1
	j	branching_b.391
tail_b.639 :
	addi	%r0 %r2 0
	j	branching_b.391
tail_b.637 :
	addi	%r0 %r2 0
	j	branching_b.392
branching_b.391 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.640
tail_b.641 :
	addi	%r0 %r2 0
	j	branching_b.392
tail_b.640 :
	addi	%r0 %r2 1
	j	branching_b.392
branching_b.379 :
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	fbge	%f0 %f4 tail_b.622
tail_b.621 :
	addi	%r0 %r9 1
	j	branching_b.380
tail_b.622 :
	addi	%r0 %r9 0
branching_b.380 :
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.623
branching_b.381 :
	addi	%r7 %r1 12
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f4 l.29
	fbne	%f0 %f4 tail_b.625
tail_b.624 :
	addi	%r0 %r1 1
	j	branching_b.382
tail_b.625 :
	addi	%r0 %r1 0
	j	branching_b.382
tail_b.623 :
	addi	%r0 %r9 0
	j	branching_b.383
branching_b.382 :
	addi	%r0 %r9 0
	beq	%r1 %r9 tail_b.626
tail_b.627 :
	addi	%r0 %r9 0
	j	branching_b.383
tail_b.626 :
	addi	%r0 %r9 1
	j	branching_b.383
branching_b.401 :
	addi	%r0 %r2 0
	bne	%r1 %r2 branching_b.402
tail_b.663 :
	j	tail_b.664
branching_b.402 :
	lw.s	%r0 %f0 540
	lw.s	%r0 %f1 548
	fbge	%f0 %f1 tail_b.660
tail_b.659 :
	addi	%r0 %r2 1
	j	branching_b.403
tail_b.660 :
	addi	%r0 %r2 0
branching_b.403 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.661
tail_b.662 :
	addi	%r0 %r1 1
	sw	%r26 %r3 -8
	sw	%r26 %r4 -4
	sw	%r26 %r6 0
	mov	%r4 %r3
	mov	%r5 %r2
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r3 -8
	lw	%r26 %r4 -4
	lw	%r26 %r6 0
	j	tail_b.664
tail_b.661 :
	j	tail_b.664
branching_b.370 :
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.608
tail_b.607 :
	addi	%r0 %r1 1
	j	branching_b.371
tail_b.608 :
	addi	%r0 %r1 0
branching_b.371 :
	addi	%r0 %r9 0
	beq	%r1 %r9 tail_b.609
branching_b.372 :
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.29
	fbne	%f0 %f2 tail_b.611
tail_b.610 :
	addi	%r0 %r9 1
	j	branching_b.373
tail_b.611 :
	addi	%r0 %r9 0
	j	branching_b.373
tail_b.609 :
	addi	%r0 %r1 0
	j	branching_b.374
branching_b.373 :
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.612
tail_b.613 :
	addi	%r0 %r1 0
	j	branching_b.374
tail_b.612 :
	addi	%r0 %r1 1
	j	branching_b.374
branching_b.395 :
	addi	%r0 %r1 0
	beq	%r8 %r1 tail_b.648
tail_b.649 :
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	addi	%r2 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.401
tail_b.648 :
	addi	%r0 %r1 0
	j	branching_b.401
branching_b.397 :
	addi	%r0 %r9 0
	beq	%r1 %r9 branching_b.398
tail_b.658 :
	addi	%r0 %r1 0
	j	branching_b.401
branching_b.398 :
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f4
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f4 %f3
	addi	%r7 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f3
	addi	%r2 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f3 %f3 %f0
	mul.s	%f1 %f2 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f1 %f0 tail_b.653
tail_b.652 :
	addi	%r0 %r2 1
	j	branching_b.399
tail_b.653 :
	addi	%r0 %r2 0
branching_b.399 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.654
branching_b.400 :
	lw	%r8 %r2 24
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.655
tail_b.656 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f3 %f1
	addi	%r7 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.657
tail_b.655 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f3 %f1
	addi	%r7 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.657
tail_b.654 :
	addi	%r0 %r1 0
	j	branching_b.401
tail_b.657 :
	addi	%r0 %r1 1
	j	branching_b.401
trace_reflections.0 :
	mov	%r2 %r3
	mov	%r1 %r5
	mov.s	%f1 %f3
	mov.s	%f0 %f4
preloop_b.16 :
trace_reflections_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r5 branching_b.405
tail_b.682 :
	j	postloop_b.16
branching_b.405 :
	slli	%r5 %r1 2
	addi	%r1 %r1 1016
	lw	%r1 %r4 0
	lw	%r4 %r6 4
	ilw.s	%r0 %f0 l.31
	sw.s	%r0 %f0 548
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw	%r26 %r6 -20
	sw	%r26 %r4 -16
	sw	%r26 %r5 -12
	sw.s	%r26 %f3 -8
	sw.s	%r26 %f4 -4
	sw	%r26 %r3 0
	mov	%r6 %r3
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r6 -20
	lw	%r26 %r4 -16
	lw	%r26 %r5 -12
	lw.s	%r26 %f3 -8
	lw.s	%r26 %f4 -4
	lw	%r26 %r3 0
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.48
	fbge	%f0 %f1 tail_b.666
tail_b.665 :
	addi	%r0 %r2 1
	j	branching_b.406
tail_b.666 :
	addi	%r0 %r2 0
branching_b.406 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.667
branching_b.407 :
	ilw.s	%r0 %f0 l.49
	fbge	%f1 %f0 tail_b.669
tail_b.668 :
	addi	%r0 %r2 1
	j	branching_b.408
tail_b.669 :
	addi	%r0 %r2 0
	j	branching_b.408
tail_b.667 :
	addi	%r0 %r2 0
branching_b.408 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.670
branching_b.409 :
	lw	%r0 %r1 564
	addi	%r0 %r2 4
	mul	%r1 %r2 %r2
	lw	%r0 %r1 544
	add	%r2 %r1 %r2
	lw	%r4 %r1 0
	beq	%r2 %r1 branching_b.410
tail_b.680 :
	j	tail_b.681
branching_b.410 :
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw	%r26 %r6 -20
	sw	%r26 %r4 -16
	sw	%r26 %r5 -12
	sw.s	%r26 %f3 -8
	sw.s	%r26 %f4 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r6 -20
	lw	%r26 %r4 -16
	lw	%r26 %r5 -12
	lw.s	%r26 %f3 -8
	lw.s	%r26 %f4 -4
	lw	%r26 %r3 0
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.411
tail_b.679 :
	j	tail_b.681
branching_b.411 :
	lw	%r6 %r2 0
	lw.s	%r0 %f0 568
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f2
	lw.s	%r0 %f1 572
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	lw.s	%r0 %f2 576
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r4 %f5 8
	mul.s	%f4 %f5 %f1
	mul.s	%f0 %f1 %f0
	lw	%r6 %r2 0
	mov	%r3 %r1
	lw.s	%r1 %f1 0
	mov	%r2 %r1
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f6
	addi	%r3 %r1 4
	lw.s	%r1 %f2 0
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f6 %f1
	addi	%r3 %r1 8
	lw.s	%r1 %f6 0
	addi	%r2 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f6 %f2
	add.s	%f2 %f1 %f1
	mul.s	%f1 %f5 %f5
	ilw.s	%r0 %f1 l.29
	fbge	%f1 %f0 tail_b.672
tail_b.671 :
	addi	%r0 %r1 1
	j	branching_b.412
tail_b.672 :
	addi	%r0 %r1 0
	j	branching_b.412
tail_b.670 :
	j	tail_b.681
branching_b.412 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.673
tail_b.674 :
	lw.s	%r0 %f2 604
	lw.s	%r0 %f1 580
	mul.s	%f1 %f0 %f1
	add.s	%f1 %f2 %f1
	sw.s	%r0 %f1 604
	lw.s	%r0 %f1 608
	lw.s	%r0 %f2 584
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r0 %f1 608
	lw.s	%r0 %f1 612
	lw.s	%r0 %f2 588
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 612
	j	branching_b.413
tail_b.673 :
branching_b.413 :
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f5 tail_b.676
tail_b.675 :
	addi	%r0 %r2 1
	j	branching_b.414
tail_b.676 :
	addi	%r0 %r2 0
branching_b.414 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.677
tail_b.678 :
	mul.s	%f5 %f5 %f0
	mul.s	%f0 %f0 %f0
	mul.s	%f3 %f0 %f1
	lw.s	%r0 %f0 604
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
	j	tail_b.681
tail_b.677 :
tail_b.681 :
	addi	%r5 %r1 -1
	mov	%r1 %r5
	j	trace_reflections_loop.0
postloop_b.16 :
return_point.18 :
	retl
trace_ray.0 :
	mov	%r3 %r7
	mov	%r2 %r6
	mov	%r1 %r2
	mov.s	%f1 %f2
	mov.s	%f0 %f3
preloop_b.17 :
trace_ray_loop.0 :
	addi	%r0 %r5 552
	addi	%r0 %r1 4
	ble	%r2 %r1 branching_b.416
tail_b.775 :
	j	postloop_b.17
branching_b.416 :
	lw	%r7 %r8 8
	ilw.s	%r0 %f0 l.31
	sw.s	%r0 %f0 548
	addi	%r0 %r1 0
	lw	%r0 %r3 536
	sw	%r26 %r8 -24
	sw	%r26 %r5 -20
	sw.s	%r26 %f2 -16
	sw.s	%r26 %f3 -12
	sw	%r26 %r2 -8
	sw	%r26 %r7 -4
	sw	%r26 %r6 0
	mov	%r3 %r2
	mov	%r6 %r3
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	trace_or_matrix.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw	%r26 %r8 -24
	lw	%r26 %r5 -20
	lw.s	%r26 %f2 -16
	lw.s	%r26 %f3 -12
	lw	%r26 %r2 -8
	lw	%r26 %r7 -4
	lw	%r26 %r6 0
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.48
	fbge	%f0 %f1 tail_b.684
tail_b.683 :
	addi	%r0 %r1 1
	j	branching_b.417
tail_b.684 :
	addi	%r0 %r1 0
branching_b.417 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.685
branching_b.418 :
	ilw.s	%r0 %f0 l.49
	fbge	%f1 %f0 tail_b.687
tail_b.686 :
	addi	%r0 %r3 1
	j	branching_b.419
tail_b.687 :
	addi	%r0 %r3 0
	j	branching_b.419
tail_b.685 :
	addi	%r0 %r3 0
branching_b.419 :
	addi	%r0 %r1 0
	beq	%r3 %r1 branching_b.420
branching_b.423 :
	lw	%r0 %r10 564
	slli	%r10 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r9 0
	lw	%r9 %r3 8
	lw	%r9 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f4
	lw	%r9 %r4 4
	addi	%r0 %r1 1
	beq	%r4 %r1 branching_b.424
branching_b.428 :
	addi	%r0 %r1 2
	beq	%r4 %r1 tail_b.701
branching_b.429 :
	lw.s	%r0 %f0 552
	lw	%r9 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r0 %f1 556
	lw	%r9 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	sub.s	%f5 %f1 %f9
	lw.s	%r0 %f1 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	sub.s	%f5 %f1 %f8
	lw	%r9 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f10
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f9 %f7
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f5
	lw	%r9 %r1 12
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.702
tail_b.703 :
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f9 %f1
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f6 0
	mul.s	%f6 %f8 %f6
	add.s	%f6 %f1 %f1
	ilw.s	%r0 %f6 l.45
	div.s	%f6 %f1 %f1
	add.s	%f1 %f10 %f1
	sw.s	%r0 %f1 568
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f6
	lw	%r9 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f1
	add.s	%f1 %f6 %f6
	ilw.s	%r0 %f1 l.45
	div.s	%f1 %f6 %f1
	add.s	%f1 %f7 %f1
	sw.s	%r0 %f1 572
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r9 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f9 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.45
	div.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 576
	j	branching_b.430
tail_b.702 :
	sw.s	%r0 %f10 568
	sw.s	%r0 %f7 572
	sw.s	%r0 %f5 576
	j	branching_b.430
tail_b.701 :
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.433
branching_b.424 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.29
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r11 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r6 %r1 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.29
	fbne	%f0 %f1 tail_b.694
tail_b.693 :
	addi	%r0 %r4 1
	j	branching_b.425
tail_b.694 :
	addi	%r0 %r4 0
	j	branching_b.425
branching_b.420 :
	addi	%r0 %r1 -1
	slli	%r2 %r3 2
	add	%r8 %r3 %r3
	sw	%r3 %r1 0
	addi	%r0 %r1 0
	bne	%r2 %r1 branching_b.421
tail_b.692 :
	j	postloop_b.17
branching_b.421 :
	mov	%r6 %r1
	lw.s	%r1 %f0 0
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f1
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	lw.s	%r0 %f2 316
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f2
	addi	%r6 %r1 8
	lw.s	%r1 %f0 0
	lw.s	%r0 %f1 320
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f1 tail_b.689
tail_b.688 :
	addi	%r0 %r2 1
	j	branching_b.422
tail_b.689 :
	addi	%r0 %r2 0
branching_b.422 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.690
tail_b.691 :
	mul.s	%f1 %f1 %f0
	mul.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f1
	lw.s	%r0 %f0 324
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 604
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
	j	postloop_b.17
tail_b.690 :
	j	postloop_b.17
branching_b.425 :
	addi	%r0 %r1 0
	beq	%r4 %r1 branching_b.426
tail_b.699 :
	ilw.s	%r0 %f0 l.29
	j	tail_b.700
branching_b.426 :
	ilw.s	%r0 %f1 l.29
	fbge	%f1 %f0 tail_b.696
tail_b.695 :
	addi	%r0 %r4 1
	j	branching_b.427
tail_b.696 :
	addi	%r0 %r4 0
branching_b.427 :
	addi	%r0 %r1 0
	beq	%r4 %r1 tail_b.697
tail_b.698 :
	ilw.s	%r0 %f0 l.34
	j	tail_b.700
tail_b.697 :
	ilw.s	%r0 %f0 l.36
tail_b.700 :
	neg.s	%f0 %f0
	slli	%r11 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.433 :
	lw.s	%r0 %f0 552
	sw.s	%r0 %f0 636
	lw.s	%r0 %f0 556
	sw.s	%r0 %f0 640
	lw.s	%r0 %f0 560
	sw.s	%r0 %f0 644
	lw	%r9 %r4 0
	lw	%r9 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r9 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r9 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	addi	%r0 %r1 1
	beq	%r4 %r1 branching_b.434
branching_b.439 :
	addi	%r0 %r1 2
	beq	%r4 %r1 tail_b.719
branching_b.440 :
	addi	%r0 %r1 3
	beq	%r4 %r1 tail_b.720
branching_b.441 :
	addi	%r0 %r1 4
	beq	%r4 %r1 branching_b.442
tail_b.754 :
	j	branching_b.462
branching_b.442 :
	lw.s	%r0 %f1 552
	lw	%r9 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f5
	lw.s	%r0 %f0 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	mul.s	%f5 %f5 %f6
	mul.s	%f1 %f1 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.29
	fbge	%f5 %f0 tail_b.722
tail_b.721 :
	neg.s	%f5 %f7
	j	branching_b.443
tail_b.722 :
	mov.s	%f5 %f7
	j	branching_b.443
tail_b.720 :
	lw.s	%r0 %f1 552
	lw	%r9 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw.s	%r0 %f5 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f5 %f1
	mul.s	%f0 %f0 %f5
	mul.s	%f1 %f1 %f0
	add.s	%f0 %f5 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.52
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.54
	mul.s	%f0 %f1 %f0
	sw.s	%r26 %f4 -40
	sw	%r26 %r3 -36
	sw	%r26 %r9 -32
	sw	%r26 %r10 -28
	sw	%r26 %r8 -24
	sw	%r26 %r5 -20
	sw.s	%r26 %f2 -16
	sw.s	%r26 %f3 -12
	sw	%r26 %r2 -8
	sw	%r26 %r7 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	cos.0
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	lw.s	%r26 %f4 -40
	lw	%r26 %r3 -36
	lw	%r26 %r9 -32
	lw	%r26 %r10 -28
	lw	%r26 %r8 -24
	lw	%r26 %r5 -20
	lw.s	%r26 %f2 -16
	lw.s	%r26 %f3 -12
	lw	%r26 %r2 -8
	lw	%r26 %r7 -4
	lw	%r26 %r6 0
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f1 l.30
	mul.s	%f1 %f0 %f1
	sw.s	%r0 %f1 584
	ilw.s	%r0 %f1 l.34
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.30
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
	j	branching_b.462
tail_b.719 :
	lw.s	%r0 %f1 556
	ilw.s	%r0 %f0 l.53
	mul.s	%f0 %f1 %f0
	sw.s	%r26 %f4 -40
	sw	%r26 %r3 -36
	sw	%r26 %r9 -32
	sw	%r26 %r10 -28
	sw	%r26 %r8 -24
	sw	%r26 %r5 -20
	sw.s	%r26 %f2 -16
	sw.s	%r26 %f3 -12
	sw	%r26 %r2 -8
	sw	%r26 %r7 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	sin.0
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	lw.s	%r26 %f4 -40
	lw	%r26 %r3 -36
	lw	%r26 %r9 -32
	lw	%r26 %r10 -28
	lw	%r26 %r8 -24
	lw	%r26 %r5 -20
	lw.s	%r26 %f2 -16
	lw.s	%r26 %f3 -12
	lw	%r26 %r2 -8
	lw	%r26 %r7 -4
	lw	%r26 %r6 0
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f1 l.30
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f5 l.30
	ilw.s	%r0 %f1 l.34
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f5 %f0
	sw.s	%r0 %f0 584
	j	branching_b.462
branching_b.434 :
	lw.s	%r0 %f0 552
	lw	%r9 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.50
	mul.s	%f0 %f5 %f0
	floor.w.s	%f0 %f1
	ilw.s	%r0 %f0 l.51
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f5 %f1
	ilw.s	%r0 %f0 l.52
	fbge	%f1 %f0 tail_b.711
tail_b.710 :
	addi	%r0 %r4 1
	j	branching_b.435
tail_b.711 :
	addi	%r0 %r4 0
branching_b.435 :
	lw.s	%r0 %f1 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.50
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f5
	ilw.s	%r0 %f1 l.51
	mul.s	%f1 %f5 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.52
	fbge	%f0 %f1 tail_b.713
tail_b.712 :
	addi	%r0 %r11 1
	j	branching_b.436
tail_b.713 :
	addi	%r0 %r11 0
branching_b.436 :
	addi	%r0 %r1 0
	beq	%r4 %r1 branching_b.437
branching_b.438 :
	addi	%r0 %r1 0
	beq	%r11 %r1 tail_b.716
tail_b.717 :
	ilw.s	%r0 %f0 l.30
	j	tail_b.718
tail_b.716 :
	ilw.s	%r0 %f0 l.29
	j	tail_b.718
branching_b.437 :
	addi	%r0 %r1 0
	beq	%r11 %r1 tail_b.714
tail_b.715 :
	ilw.s	%r0 %f0 l.29
	j	tail_b.718
tail_b.714 :
	ilw.s	%r0 %f0 l.30
tail_b.718 :
	sw.s	%r0 %f0 584
	j	branching_b.462
branching_b.443 :
	ilw.s	%r0 %f0 l.56
	fbge	%f7 %f0 tail_b.724
tail_b.723 :
	addi	%r0 %r4 1
	j	branching_b.444
tail_b.724 :
	addi	%r0 %r4 0
branching_b.444 :
	addi	%r0 %r1 0
	beq	%r4 %r1 branching_b.445
tail_b.734 :
	ilw.s	%r0 %f1 l.59
	j	branching_b.451
branching_b.445 :
	div.s	%f5 %f1 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.726
tail_b.725 :
	neg.s	%f1 %f8
	j	branching_b.446
tail_b.726 :
	mov.s	%f1 %f8
branching_b.446 :
	ilw.s	%r0 %f0 l.29
	fbg	%f0 %f8 branching_b.449
branching_b.447 :
	ilw.s	%r0 %f0 l.60
	fbge	%f8 %f0 branching_b.448
tail_b.727 :
	ilw.s	%r0 %f1 l.34
	ilw.s	%r0 %f9 l.29
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.62
	mul.s	%f8 %f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.64
	mul.s	%f8 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.65
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f10
	ilw.s	%r0 %f0 l.66
	mul.s	%f8 %f0 %f5
	mul.s	%f7 %f10 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.67
	mul.s	%f8 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f1 %f0 %f1
	j	tail_b.733
branching_b.448 :
	ilw.s	%r0 %f0 l.61
	fbge	%f8 %f0 tail_b.729
tail_b.728 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f8 %f1
	ilw.s	%r0 %f0 l.34
	add.s	%f0 %f8 %f0
	div.s	%f0 %f1 %f7
	ilw.s	%r0 %f8 l.34
	ilw.s	%r0 %f5 l.37
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f10
	ilw.s	%r0 %f0 l.62
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f9
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f1 l.66
	mul.s	%f7 %f1 %f1
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.67
	mul.s	%f7 %f1 %f1
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.733
tail_b.729 :
	ilw.s	%r0 %f0 l.34
	div.s	%f8 %f0 %f5
	ilw.s	%r0 %f1 l.36
	ilw.s	%r0 %f9 l.69
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.62
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f7 l.63
	mul.s	%f5 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.64
	mul.s	%f5 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.65
	mul.s	%f5 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.66
	mul.s	%f5 %f0 %f10
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f7 l.67
	mul.s	%f5 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f1 %f0 %f1
	j	tail_b.733
branching_b.449 :
	neg.s	%f8 %f5
	ilw.s	%r0 %f0 l.60
	fbge	%f5 %f0 branching_b.450
tail_b.730 :
	ilw.s	%r0 %f1 l.36
	ilw.s	%r0 %f9 l.29
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.62
	mul.s	%f5 %f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.64
	mul.s	%f5 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.65
	mul.s	%f5 %f0 %f10
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f10 %f7
	ilw.s	%r0 %f0 l.66
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.67
	mul.s	%f5 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f1 %f0 %f1
	j	tail_b.733
branching_b.450 :
	ilw.s	%r0 %f0 l.61
	fbge	%f5 %f0 tail_b.732
tail_b.731 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f5 %f1
	ilw.s	%r0 %f0 l.34
	add.s	%f0 %f5 %f0
	div.s	%f0 %f1 %f10
	ilw.s	%r0 %f5 l.36
	ilw.s	%r0 %f8 l.37
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f9
	ilw.s	%r0 %f0 l.62
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f10 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f10 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f10 %f0 %f7
	mul.s	%f9 %f1 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.66
	mul.s	%f10 %f0 %f1
	mul.s	%f9 %f7 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.67
	mul.s	%f10 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.733
tail_b.732 :
	ilw.s	%r0 %f0 l.34
	div.s	%f5 %f0 %f9
	ilw.s	%r0 %f5 l.34
	ilw.s	%r0 %f8 l.69
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f9 %f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.66
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.67
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f1
tail_b.733 :
	ilw.s	%r0 %f0 l.68
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.54
	div.s	%f1 %f0 %f1
branching_b.451 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f0 556
	lw	%r9 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f6 %f1 tail_b.736
tail_b.735 :
	neg.s	%f6 %f7
	j	branching_b.452
tail_b.736 :
	mov.s	%f6 %f7
branching_b.452 :
	ilw.s	%r0 %f1 l.56
	fbge	%f7 %f1 tail_b.738
tail_b.737 :
	addi	%r0 %r4 1
	j	branching_b.453
tail_b.738 :
	addi	%r0 %r4 0
branching_b.453 :
	addi	%r0 %r1 0
	beq	%r4 %r1 branching_b.454
tail_b.748 :
	ilw.s	%r0 %f0 l.59
	j	branching_b.460
branching_b.454 :
	div.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.740
tail_b.739 :
	neg.s	%f1 %f9
	j	branching_b.455
tail_b.740 :
	mov.s	%f1 %f9
branching_b.455 :
	ilw.s	%r0 %f0 l.29
	fbg	%f0 %f9 branching_b.458
branching_b.456 :
	ilw.s	%r0 %f0 l.60
	fbge	%f9 %f0 branching_b.457
tail_b.741 :
	ilw.s	%r0 %f8 l.34
	ilw.s	%r0 %f1 l.29
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.62
	mul.s	%f9 %f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.64
	mul.s	%f9 %f7 %f7
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.65
	mul.s	%f9 %f7 %f7
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.66
	mul.s	%f9 %f7 %f7
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f10
	ilw.s	%r0 %f0 l.67
	mul.s	%f9 %f0 %f7
	mul.s	%f6 %f10 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.747
branching_b.457 :
	ilw.s	%r0 %f0 l.61
	fbge	%f9 %f0 tail_b.743
tail_b.742 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f9 %f0
	ilw.s	%r0 %f1 l.34
	add.s	%f1 %f9 %f1
	div.s	%f1 %f0 %f10
	ilw.s	%r0 %f9 l.34
	ilw.s	%r0 %f6 l.37
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f7
	ilw.s	%r0 %f0 l.62
	mul.s	%f10 %f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f10 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f10 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f10 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.66
	mul.s	%f10 %f0 %f1
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.67
	mul.s	%f10 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.747
tail_b.743 :
	ilw.s	%r0 %f0 l.34
	div.s	%f9 %f0 %f9
	ilw.s	%r0 %f7 l.36
	ilw.s	%r0 %f6 l.69
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.62
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f10
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f10 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f10
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f10 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f10
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f10 %f1
	ilw.s	%r0 %f0 l.66
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f10
	ilw.s	%r0 %f0 l.67
	mul.s	%f9 %f0 %f1
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.747
branching_b.458 :
	neg.s	%f9 %f10
	ilw.s	%r0 %f0 l.60
	fbge	%f10 %f0 branching_b.459
tail_b.744 :
	ilw.s	%r0 %f1 l.36
	ilw.s	%r0 %f9 l.29
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f7
	ilw.s	%r0 %f0 l.62
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f6 l.63
	mul.s	%f10 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f10 %f0 %f6
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.65
	mul.s	%f10 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.66
	mul.s	%f10 %f0 %f8
	mul.s	%f7 %f6 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.67
	mul.s	%f10 %f0 %f6
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.747
branching_b.459 :
	ilw.s	%r0 %f0 l.61
	fbge	%f10 %f0 tail_b.746
tail_b.745 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f10 %f1
	ilw.s	%r0 %f0 l.34
	add.s	%f0 %f10 %f0
	div.s	%f0 %f1 %f7
	ilw.s	%r0 %f6 l.36
	ilw.s	%r0 %f8 l.37
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.62
	mul.s	%f7 %f0 %f10
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f1
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f7 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.66
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.67
	mul.s	%f7 %f0 %f10
	mul.s	%f9 %f1 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.747
tail_b.746 :
	ilw.s	%r0 %f0 l.34
	div.s	%f10 %f0 %f7
	ilw.s	%r0 %f1 l.34
	ilw.s	%r0 %f9 l.69
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.62
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.65
	mul.s	%f7 %f6 %f6
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.66
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.67
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f1 %f0 %f0
tail_b.747 :
	ilw.s	%r0 %f1 l.68
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.54
	div.s	%f1 %f0 %f0
branching_b.460 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f6
	ilw.s	%r0 %f1 l.70
	ilw.s	%r0 %f0 l.40
	sub.s	%f5 %f0 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.40
	sub.s	%f6 %f0 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.750
tail_b.749 :
	addi	%r0 %r1 1
	j	branching_b.461
tail_b.750 :
	addi	%r0 %r1 0
branching_b.461 :
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.751
tail_b.752 :
	ilw.s	%r0 %f0 l.29
	j	tail_b.753
tail_b.751 :
tail_b.753 :
	ilw.s	%r0 %f1 l.30
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.71
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.462 :
	addi	%r0 %r1 4
	mul	%r10 %r1 %r4
	lw	%r0 %r1 544
	add	%r4 %r1 %r4
	slli	%r2 %r1 2
	add	%r8 %r1 %r1
	sw	%r1 %r4 0
	lw	%r7 %r4 4
	slli	%r2 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r4 0
	lw.s	%r0 %f0 552
	mov	%r4 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 556
	addi	%r4 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 560
	addi	%r4 %r1 8
	sw.s	%r1 %f0 0
	lw	%r7 %r4 12
	lw	%r9 %r1 28
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.40
	fbge	%f0 %f1 tail_b.756
tail_b.755 :
	addi	%r0 %r1 1
	j	branching_b.463
tail_b.756 :
	addi	%r0 %r1 0
branching_b.463 :
	addi	%r0 %r10 0
	beq	%r1 %r10 tail_b.757
tail_b.758 :
	addi	%r0 %r10 0
	slli	%r2 %r1 2
	add	%r4 %r1 %r1
	sw	%r1 %r10 0
	j	branching_b.464
tail_b.757 :
	addi	%r0 %r10 1
	slli	%r2 %r1 2
	add	%r4 %r1 %r1
	sw	%r1 %r10 0
	lw	%r7 %r10 16
	slli	%r2 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r4 0
	lw.s	%r0 %f0 580
	mov	%r4 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 584
	addi	%r4 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 588
	addi	%r4 %r1 8
	sw.s	%r1 %f0 0
	slli	%r2 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r4 0
	ilw.s	%r0 %f0 l.55
	mul.s	%f4 %f0 %f0
	mov	%r4 %r1
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	mov	%r4 %r1
	sw.s	%r1 %f1 0
	addi	%r4 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r4 %r1 4
	sw.s	%r1 %f1 0
	addi	%r4 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r4 %r1 8
	sw.s	%r1 %f0 0
	lw	%r7 %r4 28
	slli	%r2 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f0 568
	mov	%r1 %r4
	sw.s	%r4 %f0 0
	lw.s	%r0 %f0 572
	addi	%r1 %r4 4
	sw.s	%r4 %f0 0
	lw.s	%r0 %f0 576
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
branching_b.464 :
	ilw.s	%r0 %f6 l.57
	mov	%r6 %r1
	lw.s	%r1 %f0 0
	lw.s	%r0 %f1 568
	mul.s	%f1 %f0 %f5
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	lw.s	%r0 %f1 572
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	addi	%r6 %r1 8
	lw.s	%r1 %f5 0
	lw.s	%r0 %f1 576
	mul.s	%f1 %f5 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f0 %f6 %f1
	mov	%r6 %r1
	lw.s	%r1 %f5 0
	lw.s	%r0 %f0 568
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	mov	%r6 %r1
	sw.s	%r1 %f0 0
	addi	%r6 %r1 4
	lw.s	%r1 %f5 0
	lw.s	%r0 %f0 572
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	addi	%r6 %r1 4
	sw.s	%r1 %f0 0
	addi	%r6 %r1 8
	lw.s	%r1 %f0 0
	lw.s	%r0 %f5 576
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r6 %r1 8
	sw.s	%r1 %f0 0
	lw	%r9 %r1 28
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f7
	addi	%r0 %r1 0
	lw	%r0 %r4 536
	sw.s	%r26 %f7 -40
	sw.s	%r26 %f4 -36
	sw	%r26 %r3 -32
	sw	%r26 %r9 -28
	sw	%r26 %r8 -24
	sw	%r26 %r5 -20
	sw.s	%r26 %f2 -16
	sw.s	%r26 %f3 -12
	sw	%r26 %r2 -8
	sw	%r26 %r7 -4
	sw	%r26 %r6 0
	mov	%r4 %r2
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	mov	%r1 %r4
	lw.s	%r26 %f7 -40
	lw.s	%r26 %f4 -36
	lw	%r26 %r3 -32
	lw	%r26 %r9 -28
	lw	%r26 %r8 -24
	lw	%r26 %r5 -20
	lw.s	%r26 %f2 -16
	lw.s	%r26 %f3 -12
	lw	%r26 %r2 -8
	lw	%r26 %r7 -4
	lw	%r26 %r6 0
	addi	%r0 %r1 0
	beq	%r4 %r1 branching_b.465
tail_b.767 :
	j	branching_b.469
branching_b.465 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f5 572
	lw.s	%r0 %f1 316
	mul.s	%f1 %f5 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r0 %f1 576
	lw.s	%r0 %f5 320
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	mul.s	%f4 %f0 %f5
	mov	%r6 %r1
	lw.s	%r1 %f1 0
	lw.s	%r0 %f0 312
	mul.s	%f0 %f1 %f0
	addi	%r6 %r1 4
	lw.s	%r1 %f6 0
	lw.s	%r0 %f1 316
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f0 %f1
	addi	%r6 %r1 8
	lw.s	%r1 %f6 0
	lw.s	%r0 %f0 320
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f5 tail_b.760
tail_b.759 :
	addi	%r0 %r4 1
	j	branching_b.466
tail_b.760 :
	addi	%r0 %r4 0
branching_b.466 :
	addi	%r0 %r1 0
	beq	%r4 %r1 tail_b.761
tail_b.762 :
	lw.s	%r0 %f0 604
	lw.s	%r0 %f1 580
	mul.s	%f1 %f5 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	lw.s	%r0 %f1 584
	mul.s	%f1 %f5 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f1 612
	lw.s	%r0 %f0 588
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 612
	j	branching_b.467
tail_b.761 :
branching_b.467 :
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f6 tail_b.764
tail_b.763 :
	addi	%r0 %r1 1
	j	branching_b.468
tail_b.764 :
	addi	%r0 %r1 0
branching_b.468 :
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.765
tail_b.766 :
	mul.s	%f6 %f6 %f0
	mul.s	%f0 %f0 %f0
	mul.s	%f7 %f0 %f1
	lw.s	%r0 %f0 604
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
	j	branching_b.469
tail_b.765 :
branching_b.469 :
	lw.s	%r0 %f0 552
	sw.s	%r0 %f0 648
	lw.s	%r0 %f0 556
	sw.s	%r0 %f0 652
	lw.s	%r0 %f0 560
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw.s	%r26 %f7 -36
	sw.s	%r26 %f4 -32
	sw	%r26 %r3 -28
	sw	%r26 %r9 -24
	sw	%r26 %r8 -20
	sw.s	%r26 %f2 -16
	sw.s	%r26 %f3 -12
	sw	%r26 %r2 -8
	sw	%r26 %r7 -4
	sw	%r26 %r6 0
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	setup_startp_constants.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw.s	%r26 %f7 -36
	lw.s	%r26 %f4 -32
	lw	%r26 %r3 -28
	lw	%r26 %r9 -24
	lw	%r26 %r8 -20
	lw.s	%r26 %f2 -16
	lw.s	%r26 %f3 -12
	lw	%r26 %r2 -8
	lw	%r26 %r7 -4
	lw	%r26 %r6 0
	lw	%r0 %r1 1736
	addi	%r1 %r1 -1
	sw	%r26 %r3 -28
	sw	%r26 %r9 -24
	sw	%r26 %r8 -20
	sw.s	%r26 %f2 -16
	sw.s	%r26 %f3 -12
	sw	%r26 %r2 -8
	sw	%r26 %r7 -4
	sw	%r26 %r6 0
	mov	%r6 %r2
	mov.s	%f7 %f1
	mov.s	%f4 %f0
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	trace_reflections.0
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	lw	%r26 %r3 -28
	lw	%r26 %r9 -24
	lw	%r26 %r8 -20
	lw.s	%r26 %f2 -16
	lw.s	%r26 %f3 -12
	lw	%r26 %r2 -8
	lw	%r26 %r7 -4
	lw	%r26 %r6 0
	ilw.s	%r0 %f0 l.58
	fbge	%f0 %f3 tail_b.769
tail_b.768 :
	addi	%r0 %r1 1
	j	branching_b.470
tail_b.769 :
	addi	%r0 %r1 0
branching_b.470 :
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.770
branching_b.471 :
	addi	%r0 %r1 4
	bl	%r2 %r1 tail_b.771
tail_b.772 :
	j	branching_b.472
tail_b.771 :
	addi	%r2 %r1 1
	addi	%r0 %r4 -1
	slli	%r1 %r1 2
	add	%r8 %r1 %r1
	sw	%r1 %r4 0
	j	branching_b.472
tail_b.770 :
	j	postloop_b.17
branching_b.472 :
	addi	%r0 %r1 2
	beq	%r3 %r1 tail_b.773
tail_b.774 :
	j	postloop_b.17
tail_b.773 :
	ilw.s	%r0 %f0 l.34
	lw	%r9 %r1 28
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f3 %f0
	addi	%r2 %r1 1
	lw.s	%r0 %f1 548
	add.s	%f1 %f2 %f1
	mov	%r1 %r2
	mov.s	%f0 %f3
	mov.s	%f1 %f2
	j	trace_ray_loop.0
branching_b.430 :
	lw	%r9 %r4 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f1 572
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.29
	fbne	%f1 %f0 tail_b.705
tail_b.704 :
	addi	%r0 %r1 1
	j	branching_b.431
tail_b.705 :
	addi	%r0 %r1 0
branching_b.431 :
	addi	%r0 %r11 0
	beq	%r1 %r11 branching_b.432
tail_b.708 :
	ilw.s	%r0 %f1 l.34
	j	tail_b.709
branching_b.432 :
	addi	%r0 %r1 0
	beq	%r4 %r1 tail_b.706
tail_b.707 :
	ilw.s	%r0 %f0 l.36
	div.s	%f1 %f0 %f1
	j	tail_b.709
tail_b.706 :
	ilw.s	%r0 %f0 l.34
	div.s	%f1 %f0 %f1
tail_b.709 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.433
postloop_b.17 :
return_point.19 :
	retl
iter_trace_diffuse_rays.0 :
	mov	%r4 %r6
	mov	%r1 %r5
	mov	%r2 %r4
preloop_b.18 :
iter_trace_diffuse_rays_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r6 branching_b.474
tail_b.927 :
	j	postloop_b.18
branching_b.474 :
	slli	%r6 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	mov	%r4 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	addi	%r4 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f1
	addi	%r2 %r1 8
	lw.s	%r1 %f2 0
	addi	%r4 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.777
tail_b.776 :
	addi	%r0 %r2 1
	j	branching_b.475
tail_b.777 :
	addi	%r0 %r2 0
branching_b.475 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.476
branching_b.522 :
	addi	%r6 %r1 1
	slli	%r1 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r3 0
	ilw.s	%r0 %f0 l.72
	div.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.31
	sw.s	%r0 %f0 548
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw.s	%r26 %f3 -16
	sw	%r26 %r3 -12
	sw	%r26 %r6 -8
	sw	%r26 %r4 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw.s	%r26 %f3 -16
	lw	%r26 %r3 -12
	lw	%r26 %r6 -8
	lw	%r26 %r4 -4
	lw	%r26 %r5 0
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f1 l.48
	fbge	%f1 %f0 tail_b.853
tail_b.852 :
	addi	%r0 %r1 1
	j	branching_b.523
tail_b.853 :
	addi	%r0 %r1 0
	j	branching_b.523
branching_b.476 :
	slli	%r6 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r3 0
	ilw.s	%r0 %f0 l.73
	div.s	%f0 %f1 %f2
	ilw.s	%r0 %f0 l.31
	sw.s	%r0 %f0 548
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw.s	%r26 %f2 -16
	sw	%r26 %r3 -12
	sw	%r26 %r6 -8
	sw	%r26 %r4 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw.s	%r26 %f2 -16
	lw	%r26 %r3 -12
	lw	%r26 %r6 -8
	lw	%r26 %r4 -4
	lw	%r26 %r5 0
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.48
	fbge	%f0 %f1 tail_b.779
tail_b.778 :
	addi	%r0 %r2 1
	j	branching_b.477
tail_b.779 :
	addi	%r0 %r2 0
branching_b.477 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.780
branching_b.478 :
	ilw.s	%r0 %f0 l.49
	fbge	%f1 %f0 tail_b.782
tail_b.781 :
	addi	%r0 %r1 1
	j	branching_b.479
tail_b.782 :
	addi	%r0 %r1 0
	j	branching_b.479
tail_b.780 :
	addi	%r0 %r1 0
branching_b.479 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.783
branching_b.480 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r7 0
	lw	%r3 %r2 0
	lw	%r7 %r1 4
	addi	%r0 %r3 1
	beq	%r1 %r3 branching_b.481
branching_b.485 :
	addi	%r0 %r2 2
	beq	%r1 %r2 tail_b.792
branching_b.486 :
	lw.s	%r0 %f1 552
	lw	%r7 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f0 556
	lw	%r7 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f6
	lw.s	%r0 %f1 560
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f8
	lw	%r7 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f7
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f3
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f4
	lw	%r7 %r2 12
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.793
tail_b.794 :
	lw	%r7 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f1
	lw	%r7 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.45
	div.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 568
	lw	%r7 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f1
	lw	%r7 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.45
	div.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	sw.s	%r0 %f0 572
	lw	%r7 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	lw	%r7 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.45
	div.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	sw.s	%r0 %f0 576
	j	branching_b.487
tail_b.793 :
	sw.s	%r0 %f7 568
	sw.s	%r0 %f3 572
	sw.s	%r0 %f4 576
	j	branching_b.487
tail_b.792 :
	lw	%r7 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.490
branching_b.481 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.29
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r3 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r2 %r1 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.29
	fbne	%f1 %f0 tail_b.785
tail_b.784 :
	addi	%r0 %r2 1
	j	branching_b.482
tail_b.785 :
	addi	%r0 %r2 0
	j	branching_b.482
tail_b.783 :
tail_b.926 :
	addi	%r6 %r1 -2
	mov	%r1 %r6
	j	iter_trace_diffuse_rays_loop.0
branching_b.482 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.483
tail_b.790 :
	ilw.s	%r0 %f0 l.29
	j	tail_b.791
branching_b.483 :
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f1 tail_b.787
tail_b.786 :
	addi	%r0 %r2 1
	j	branching_b.484
tail_b.787 :
	addi	%r0 %r2 0
branching_b.484 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.788
tail_b.789 :
	ilw.s	%r0 %f0 l.34
	j	tail_b.791
tail_b.788 :
	ilw.s	%r0 %f0 l.36
tail_b.791 :
	neg.s	%f0 %f0
	slli	%r3 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.490 :
	lw	%r7 %r2 0
	lw	%r7 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r7 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r7 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	addi	%r0 %r1 1
	beq	%r2 %r1 branching_b.491
branching_b.496 :
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.810
branching_b.497 :
	addi	%r0 %r1 3
	beq	%r2 %r1 tail_b.811
branching_b.498 :
	addi	%r0 %r1 4
	beq	%r2 %r1 branching_b.499
tail_b.845 :
	j	branching_b.519
branching_b.499 :
	lw.s	%r0 %f1 552
	lw	%r7 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r7 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f4
	lw.s	%r0 %f1 560
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	mul.s	%f4 %f4 %f3
	mul.s	%f0 %f0 %f1
	add.s	%f1 %f3 %f3
	ilw.s	%r0 %f1 l.29
	fbge	%f4 %f1 tail_b.813
tail_b.812 :
	neg.s	%f4 %f1
	j	branching_b.500
tail_b.813 :
	mov.s	%f4 %f1
	j	branching_b.500
tail_b.811 :
	lw.s	%r0 %f1 552
	lw	%r7 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw.s	%r0 %f0 560
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	sub.s	%f3 %f0 %f0
	mul.s	%f1 %f1 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.52
	div.s	%f0 %f1 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.54
	mul.s	%f1 %f0 %f0
	sw	%r26 %r7 -16
	sw.s	%r26 %f2 -12
	sw	%r26 %r6 -8
	sw	%r26 %r4 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	cos.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r7 -16
	lw.s	%r26 %f2 -12
	lw	%r26 %r6 -8
	lw	%r26 %r4 -4
	lw	%r26 %r5 0
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f0 l.30
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.34
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.30
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.519
tail_b.810 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.53
	mul.s	%f1 %f0 %f0
	sw	%r26 %r7 -16
	sw.s	%r26 %f2 -12
	sw	%r26 %r6 -8
	sw	%r26 %r4 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	sin.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r7 -16
	lw.s	%r26 %f2 -12
	lw	%r26 %r6 -8
	lw	%r26 %r4 -4
	lw	%r26 %r5 0
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f1 l.30
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f3 l.30
	ilw.s	%r0 %f1 l.34
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f3 %f0
	sw.s	%r0 %f0 584
	j	branching_b.519
branching_b.491 :
	lw.s	%r0 %f1 552
	lw	%r7 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.50
	mul.s	%f0 %f3 %f0
	floor.w.s	%f0 %f1
	ilw.s	%r0 %f0 l.51
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f3 %f1
	ilw.s	%r0 %f0 l.52
	fbge	%f1 %f0 tail_b.802
tail_b.801 :
	addi	%r0 %r3 1
	j	branching_b.492
tail_b.802 :
	addi	%r0 %r3 0
branching_b.492 :
	lw.s	%r0 %f0 560
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f3
	ilw.s	%r0 %f0 l.50
	mul.s	%f0 %f3 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f1 l.51
	mul.s	%f1 %f0 %f0
	sub.s	%f0 %f3 %f0
	ilw.s	%r0 %f1 l.52
	fbge	%f0 %f1 tail_b.804
tail_b.803 :
	addi	%r0 %r2 1
	j	branching_b.493
tail_b.804 :
	addi	%r0 %r2 0
branching_b.493 :
	addi	%r0 %r1 0
	beq	%r3 %r1 branching_b.494
branching_b.495 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.807
tail_b.808 :
	ilw.s	%r0 %f0 l.30
	j	tail_b.809
tail_b.807 :
	ilw.s	%r0 %f0 l.29
	j	tail_b.809
branching_b.494 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.805
tail_b.806 :
	ilw.s	%r0 %f0 l.29
	j	tail_b.809
tail_b.805 :
	ilw.s	%r0 %f0 l.30
tail_b.809 :
	sw.s	%r0 %f0 584
	j	branching_b.519
branching_b.500 :
	ilw.s	%r0 %f5 l.56
	fbge	%f1 %f5 tail_b.815
tail_b.814 :
	addi	%r0 %r2 1
	j	branching_b.501
tail_b.815 :
	addi	%r0 %r2 0
branching_b.501 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.502
tail_b.825 :
	ilw.s	%r0 %f0 l.59
	j	branching_b.508
branching_b.502 :
	div.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.817
tail_b.816 :
	neg.s	%f1 %f7
	j	branching_b.503
tail_b.817 :
	mov.s	%f1 %f7
branching_b.503 :
	ilw.s	%r0 %f0 l.29
	fbg	%f0 %f7 branching_b.506
branching_b.504 :
	ilw.s	%r0 %f0 l.60
	fbge	%f7 %f0 branching_b.505
tail_b.818 :
	ilw.s	%r0 %f1 l.34
	ilw.s	%r0 %f6 l.29
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.62
	mul.s	%f7 %f0 %f4
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f5
	mul.s	%f8 %f4 %f0
	add.s	%f0 %f5 %f4
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.65
	mul.s	%f7 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.66
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.67
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.824
branching_b.505 :
	ilw.s	%r0 %f0 l.61
	fbge	%f7 %f0 tail_b.820
tail_b.819 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f7 %f0
	ilw.s	%r0 %f1 l.34
	add.s	%f1 %f7 %f1
	div.s	%f1 %f0 %f8
	ilw.s	%r0 %f6 l.34
	ilw.s	%r0 %f5 l.37
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.62
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f8 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.66
	mul.s	%f8 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.67
	mul.s	%f8 %f0 %f7
	mul.s	%f4 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.824
tail_b.820 :
	ilw.s	%r0 %f0 l.34
	div.s	%f7 %f0 %f5
	ilw.s	%r0 %f7 l.36
	ilw.s	%r0 %f8 l.69
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f6
	ilw.s	%r0 %f0 l.62
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f5 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f4
	ilw.s	%r0 %f0 l.65
	mul.s	%f5 %f0 %f1
	mul.s	%f6 %f4 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.66
	mul.s	%f5 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.67
	mul.s	%f5 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.824
branching_b.506 :
	neg.s	%f7 %f5
	ilw.s	%r0 %f0 l.60
	fbge	%f5 %f0 branching_b.507
tail_b.821 :
	ilw.s	%r0 %f7 l.36
	ilw.s	%r0 %f6 l.29
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f4
	ilw.s	%r0 %f0 l.62
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f5 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f5 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.65
	mul.s	%f5 %f0 %f1
	mul.s	%f4 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.66
	mul.s	%f5 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.67
	mul.s	%f5 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.824
branching_b.507 :
	ilw.s	%r0 %f0 l.61
	fbge	%f5 %f0 tail_b.823
tail_b.822 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f5 %f1
	ilw.s	%r0 %f0 l.34
	add.s	%f0 %f5 %f0
	div.s	%f0 %f1 %f8
	ilw.s	%r0 %f5 l.36
	ilw.s	%r0 %f7 l.37
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f8 %f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f4
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f6
	mul.s	%f1 %f4 %f0
	add.s	%f0 %f6 %f4
	ilw.s	%r0 %f0 l.65
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.66
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f6
	ilw.s	%r0 %f0 l.67
	mul.s	%f8 %f0 %f4
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.824
tail_b.823 :
	ilw.s	%r0 %f0 l.34
	div.s	%f5 %f0 %f6
	ilw.s	%r0 %f4 l.34
	ilw.s	%r0 %f8 l.69
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f1
	mul.s	%f7 %f5 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f6 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f5
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f1
	mul.s	%f7 %f5 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.66
	mul.s	%f6 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f5
	ilw.s	%r0 %f0 l.67
	mul.s	%f6 %f0 %f1
	mul.s	%f7 %f5 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f4 %f0 %f0
tail_b.824 :
	ilw.s	%r0 %f1 l.68
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.54
	div.s	%f1 %f0 %f0
branching_b.508 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f5
	lw.s	%r0 %f0 556
	lw	%r7 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f4
	ilw.s	%r0 %f0 l.29
	fbge	%f3 %f0 tail_b.827
tail_b.826 :
	neg.s	%f3 %f1
	j	branching_b.509
tail_b.827 :
	mov.s	%f3 %f1
branching_b.509 :
	ilw.s	%r0 %f0 l.56
	fbge	%f1 %f0 tail_b.829
tail_b.828 :
	addi	%r0 %r1 1
	j	branching_b.510
tail_b.829 :
	addi	%r0 %r1 0
branching_b.510 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.511
tail_b.839 :
	ilw.s	%r0 %f0 l.59
	j	branching_b.517
branching_b.511 :
	div.s	%f3 %f4 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.831
tail_b.830 :
	neg.s	%f1 %f6
	j	branching_b.512
tail_b.831 :
	mov.s	%f1 %f6
branching_b.512 :
	ilw.s	%r0 %f0 l.29
	fbg	%f0 %f6 branching_b.515
branching_b.513 :
	ilw.s	%r0 %f0 l.60
	fbge	%f6 %f0 branching_b.514
tail_b.832 :
	ilw.s	%r0 %f4 l.34
	ilw.s	%r0 %f8 l.29
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f3
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f1
	mul.s	%f3 %f7 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f7
	mul.s	%f3 %f1 %f0
	add.s	%f0 %f7 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f7
	mul.s	%f3 %f1 %f0
	add.s	%f0 %f7 %f1
	ilw.s	%r0 %f0 l.66
	mul.s	%f6 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.67
	mul.s	%f6 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f4 %f0 %f1
	j	tail_b.838
branching_b.514 :
	ilw.s	%r0 %f0 l.61
	fbge	%f6 %f0 tail_b.834
tail_b.833 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f6 %f1
	ilw.s	%r0 %f0 l.34
	add.s	%f0 %f6 %f0
	div.s	%f0 %f1 %f1
	ilw.s	%r0 %f3 l.34
	ilw.s	%r0 %f4 l.37
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f6
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f7 l.63
	mul.s	%f1 %f7 %f7
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f8
	mul.s	%f6 %f7 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f7 l.65
	mul.s	%f1 %f7 %f7
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.66
	mul.s	%f1 %f7 %f7
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f8
	ilw.s	%r0 %f0 l.67
	mul.s	%f1 %f0 %f7
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f3 %f0 %f1
	j	tail_b.838
tail_b.834 :
	ilw.s	%r0 %f0 l.34
	div.s	%f6 %f0 %f4
	ilw.s	%r0 %f7 l.36
	ilw.s	%r0 %f6 l.69
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f3 l.63
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.64
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.65
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.66
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.67
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.838
branching_b.515 :
	neg.s	%f6 %f8
	ilw.s	%r0 %f0 l.60
	fbge	%f8 %f0 branching_b.516
tail_b.835 :
	ilw.s	%r0 %f6 l.36
	ilw.s	%r0 %f1 l.29
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.62
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f3 l.63
	mul.s	%f8 %f3 %f3
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f7
	mul.s	%f4 %f3 %f0
	add.s	%f0 %f7 %f3
	ilw.s	%r0 %f0 l.65
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.66
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.67
	mul.s	%f8 %f0 %f7
	mul.s	%f4 %f3 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f1
	j	tail_b.838
branching_b.516 :
	ilw.s	%r0 %f0 l.61
	fbge	%f8 %f0 tail_b.837
tail_b.836 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f8 %f0
	ilw.s	%r0 %f1 l.34
	add.s	%f1 %f8 %f1
	div.s	%f1 %f0 %f8
	ilw.s	%r0 %f6 l.36
	ilw.s	%r0 %f1 l.37
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.62
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f3 l.63
	mul.s	%f8 %f3 %f3
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.65
	mul.s	%f8 %f0 %f4
	mul.s	%f7 %f3 %f0
	add.s	%f0 %f4 %f3
	ilw.s	%r0 %f0 l.66
	mul.s	%f8 %f0 %f4
	mul.s	%f7 %f3 %f0
	add.s	%f0 %f4 %f3
	ilw.s	%r0 %f0 l.67
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f3 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f1
	j	tail_b.838
tail_b.837 :
	ilw.s	%r0 %f0 l.34
	div.s	%f8 %f0 %f4
	ilw.s	%r0 %f6 l.34
	ilw.s	%r0 %f7 l.69
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f3 l.63
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.64
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.65
	mul.s	%f4 %f0 %f0
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.66
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.67
	mul.s	%f4 %f0 %f0
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f6 %f0 %f1
tail_b.838 :
	ilw.s	%r0 %f0 l.68
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.54
	div.s	%f0 %f1 %f0
branching_b.517 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f3
	ilw.s	%r0 %f0 l.70
	ilw.s	%r0 %f1 l.40
	sub.s	%f5 %f1 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.40
	sub.s	%f3 %f1 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f0 %f1 tail_b.841
tail_b.840 :
	addi	%r0 %r2 1
	j	branching_b.518
tail_b.841 :
	addi	%r0 %r2 0
branching_b.518 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.842
tail_b.843 :
	ilw.s	%r0 %f1 l.29
	j	tail_b.844
tail_b.842 :
	mov.s	%f0 %f1
tail_b.844 :
	ilw.s	%r0 %f0 l.30
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.71
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.519 :
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw	%r26 %r7 -16
	sw.s	%r26 %f2 -12
	sw	%r26 %r6 -8
	sw	%r26 %r4 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r7 -16
	lw.s	%r26 %f2 -12
	lw	%r26 %r6 -8
	lw	%r26 %r4 -4
	lw	%r26 %r5 0
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.520
tail_b.851 :
	j	tail_b.926
branching_b.520 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 572
	lw.s	%r0 %f3 316
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f3
	lw.s	%r0 %f0 576
	lw.s	%r0 %f1 320
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f1 %f0 tail_b.847
tail_b.846 :
	addi	%r0 %r1 1
	j	branching_b.521
tail_b.847 :
	addi	%r0 %r1 0
branching_b.521 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.848
tail_b.849 :
	j	tail_b.850
tail_b.848 :
	ilw.s	%r0 %f0 l.29
tail_b.850 :
	mul.s	%f0 %f2 %f1
	lw	%r7 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f1 592
	lw.s	%r0 %f0 580
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	lw.s	%r0 %f0 584
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	lw.s	%r0 %f0 588
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	j	tail_b.926
branching_b.487 :
	lw	%r7 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f1 572
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.29
	fbne	%f1 %f0 tail_b.796
tail_b.795 :
	addi	%r0 %r3 1
	j	branching_b.488
tail_b.796 :
	addi	%r0 %r3 0
branching_b.488 :
	addi	%r0 %r2 0
	beq	%r3 %r2 branching_b.489
tail_b.799 :
	ilw.s	%r0 %f1 l.34
	j	tail_b.800
branching_b.489 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.797
tail_b.798 :
	ilw.s	%r0 %f0 l.36
	div.s	%f1 %f0 %f1
	j	tail_b.800
tail_b.797 :
	ilw.s	%r0 %f0 l.34
	div.s	%f1 %f0 %f1
tail_b.800 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.490
branching_b.523 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.854
branching_b.524 :
	ilw.s	%r0 %f1 l.49
	fbge	%f0 %f1 tail_b.856
tail_b.855 :
	addi	%r0 %r1 1
	j	branching_b.525
tail_b.856 :
	addi	%r0 %r1 0
	j	branching_b.525
tail_b.854 :
	addi	%r0 %r1 0
branching_b.525 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.857
branching_b.526 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r2 0
	lw	%r3 %r1 0
	lw	%r2 %r7 4
	addi	%r0 %r3 1
	beq	%r7 %r3 branching_b.527
branching_b.531 :
	addi	%r0 %r1 2
	beq	%r7 %r1 tail_b.866
branching_b.532 :
	lw.s	%r0 %f1 552
	lw	%r2 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f2
	lw.s	%r0 %f1 556
	lw	%r2 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f6
	lw.s	%r0 %f0 560
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r2 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f6 %f7
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f1 %f8
	lw	%r2 %r1 12
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.867
tail_b.868 :
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f6 %f4
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f1 %f5
	add.s	%f5 %f4 %f4
	ilw.s	%r0 %f5 l.45
	div.s	%f5 %f4 %f4
	add.s	%f4 %f0 %f0
	sw.s	%r0 %f0 568
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f4
	lw	%r2 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f1
	ilw.s	%r0 %f0 l.45
	div.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 572
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f1
	lw	%r2 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.45
	div.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	sw.s	%r0 %f0 576
	j	branching_b.533
tail_b.867 :
	sw.s	%r0 %f0 568
	sw.s	%r0 %f7 572
	sw.s	%r0 %f8 576
	j	branching_b.533
tail_b.866 :
	lw	%r2 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.536
branching_b.527 :
	lw	%r0 %r3 544
	ilw.s	%r0 %f0 l.29
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r3 %r7 -1
	addi	%r3 %r3 -1
	slli	%r3 %r3 2
	add	%r1 %r3 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.29
	fbne	%f0 %f1 tail_b.859
tail_b.858 :
	addi	%r0 %r3 1
	j	branching_b.528
tail_b.859 :
	addi	%r0 %r3 0
	j	branching_b.528
tail_b.857 :
	j	tail_b.926
branching_b.528 :
	addi	%r0 %r1 0
	beq	%r3 %r1 branching_b.529
tail_b.864 :
	ilw.s	%r0 %f0 l.29
	j	tail_b.865
branching_b.529 :
	ilw.s	%r0 %f1 l.29
	fbge	%f1 %f0 tail_b.861
tail_b.860 :
	addi	%r0 %r1 1
	j	branching_b.530
tail_b.861 :
	addi	%r0 %r1 0
branching_b.530 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.862
tail_b.863 :
	ilw.s	%r0 %f0 l.34
	j	tail_b.865
tail_b.862 :
	ilw.s	%r0 %f0 l.36
tail_b.865 :
	neg.s	%f0 %f0
	slli	%r7 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.536 :
	lw	%r2 %r3 0
	lw	%r2 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r2 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r2 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	addi	%r0 %r1 1
	beq	%r3 %r1 branching_b.537
branching_b.542 :
	addi	%r0 %r1 2
	beq	%r3 %r1 tail_b.884
branching_b.543 :
	addi	%r0 %r1 3
	beq	%r3 %r1 tail_b.885
branching_b.544 :
	addi	%r0 %r1 4
	beq	%r3 %r1 branching_b.545
tail_b.919 :
	j	branching_b.565
branching_b.545 :
	lw.s	%r0 %f0 552
	lw	%r2 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r2 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f4
	lw.s	%r0 %f1 560
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f5
	mul.s	%f4 %f4 %f0
	mul.s	%f5 %f5 %f1
	add.s	%f1 %f0 %f2
	ilw.s	%r0 %f0 l.29
	fbge	%f4 %f0 tail_b.887
tail_b.886 :
	neg.s	%f4 %f0
	j	branching_b.546
tail_b.887 :
	mov.s	%f4 %f0
	j	branching_b.546
tail_b.885 :
	lw.s	%r0 %f0 552
	lw	%r2 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r0 %f2 560
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f2 %f2
	mul.s	%f0 %f0 %f1
	mul.s	%f2 %f2 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.52
	div.s	%f0 %f1 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.54
	mul.s	%f0 %f1 %f0
	sw	%r26 %r2 -16
	sw.s	%r26 %f3 -12
	sw	%r26 %r6 -8
	sw	%r26 %r4 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	cos.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r2 -16
	lw.s	%r26 %f3 -12
	lw	%r26 %r6 -8
	lw	%r26 %r4 -4
	lw	%r26 %r5 0
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f0 l.30
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.34
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.30
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.565
tail_b.884 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.53
	mul.s	%f1 %f0 %f0
	sw	%r26 %r2 -16
	sw.s	%r26 %f3 -12
	sw	%r26 %r6 -8
	sw	%r26 %r4 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	sin.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r2 -16
	lw.s	%r26 %f3 -12
	lw	%r26 %r6 -8
	lw	%r26 %r4 -4
	lw	%r26 %r5 0
	mul.s	%f0 %f0 %f2
	ilw.s	%r0 %f0 l.30
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.30
	ilw.s	%r0 %f1 l.34
	sub.s	%f2 %f1 %f1
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 584
	j	branching_b.565
branching_b.537 :
	lw.s	%r0 %f0 552
	lw	%r2 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.50
	mul.s	%f0 %f1 %f0
	floor.w.s	%f0 %f2
	ilw.s	%r0 %f0 l.51
	mul.s	%f0 %f2 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.52
	fbge	%f1 %f0 tail_b.876
tail_b.875 :
	addi	%r0 %r1 1
	j	branching_b.538
tail_b.876 :
	addi	%r0 %r1 0
branching_b.538 :
	lw.s	%r0 %f1 560
	lw	%r2 %r3 20
	addi	%r3 %r3 8
	lw.s	%r3 %f0 0
	sub.s	%f0 %f1 %f2
	ilw.s	%r0 %f0 l.50
	mul.s	%f0 %f2 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f1 l.51
	mul.s	%f1 %f0 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f1 l.52
	fbge	%f0 %f1 tail_b.878
tail_b.877 :
	addi	%r0 %r7 1
	j	branching_b.539
tail_b.878 :
	addi	%r0 %r7 0
branching_b.539 :
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.540
branching_b.541 :
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.881
tail_b.882 :
	ilw.s	%r0 %f0 l.30
	j	tail_b.883
tail_b.881 :
	ilw.s	%r0 %f0 l.29
	j	tail_b.883
branching_b.540 :
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.879
tail_b.880 :
	ilw.s	%r0 %f0 l.29
	j	tail_b.883
tail_b.879 :
	ilw.s	%r0 %f0 l.30
tail_b.883 :
	sw.s	%r0 %f0 584
	j	branching_b.565
branching_b.546 :
	ilw.s	%r0 %f1 l.56
	fbge	%f0 %f1 tail_b.889
tail_b.888 :
	addi	%r0 %r1 1
	j	branching_b.547
tail_b.889 :
	addi	%r0 %r1 0
branching_b.547 :
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.548
tail_b.899 :
	ilw.s	%r0 %f0 l.59
	j	branching_b.554
branching_b.548 :
	div.s	%f4 %f5 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.891
tail_b.890 :
	neg.s	%f1 %f6
	j	branching_b.549
tail_b.891 :
	mov.s	%f1 %f6
branching_b.549 :
	ilw.s	%r0 %f0 l.29
	fbg	%f0 %f6 branching_b.552
branching_b.550 :
	ilw.s	%r0 %f0 l.60
	fbge	%f6 %f0 branching_b.551
tail_b.892 :
	ilw.s	%r0 %f4 l.34
	ilw.s	%r0 %f5 l.29
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f6 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f6 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.66
	mul.s	%f6 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.67
	mul.s	%f6 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f4 %f0 %f1
	j	tail_b.898
branching_b.551 :
	ilw.s	%r0 %f0 l.61
	fbge	%f6 %f0 tail_b.894
tail_b.893 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f6 %f1
	ilw.s	%r0 %f0 l.34
	add.s	%f0 %f6 %f0
	div.s	%f0 %f1 %f5
	ilw.s	%r0 %f6 l.34
	ilw.s	%r0 %f4 l.37
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f7
	ilw.s	%r0 %f0 l.62
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f5 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f5 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f5 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.66
	mul.s	%f5 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.67
	mul.s	%f5 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f6 %f0 %f1
	j	tail_b.898
tail_b.894 :
	ilw.s	%r0 %f0 l.34
	div.s	%f6 %f0 %f1
	ilw.s	%r0 %f5 l.36
	ilw.s	%r0 %f7 l.69
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f6
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f0 %f4
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.64
	mul.s	%f1 %f4 %f4
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.65
	mul.s	%f1 %f4 %f4
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.66
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.67
	mul.s	%f1 %f4 %f4
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.898
branching_b.552 :
	neg.s	%f6 %f6
	ilw.s	%r0 %f0 l.60
	fbge	%f6 %f0 branching_b.553
tail_b.895 :
	ilw.s	%r0 %f4 l.36
	ilw.s	%r0 %f7 l.29
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f5
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f6 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.66
	mul.s	%f6 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.67
	mul.s	%f6 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f4 %f0 %f1
	j	tail_b.898
branching_b.553 :
	ilw.s	%r0 %f0 l.61
	fbge	%f6 %f0 tail_b.897
tail_b.896 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f6 %f0
	ilw.s	%r0 %f1 l.34
	add.s	%f1 %f6 %f1
	div.s	%f1 %f0 %f7
	ilw.s	%r0 %f5 l.36
	ilw.s	%r0 %f4 l.37
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.62
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f7 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.66
	mul.s	%f7 %f0 %f8
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f8 %f1
	ilw.s	%r0 %f0 l.67
	mul.s	%f7 %f0 %f8
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.898
tail_b.897 :
	ilw.s	%r0 %f0 l.34
	div.s	%f6 %f0 %f8
	ilw.s	%r0 %f1 l.34
	ilw.s	%r0 %f5 l.69
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.62
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f4 l.63
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f6
	mul.s	%f7 %f4 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.65
	mul.s	%f8 %f0 %f4
	mul.s	%f7 %f6 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.66
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.67
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f1
tail_b.898 :
	ilw.s	%r0 %f0 l.68
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.54
	div.s	%f1 %f0 %f0
branching_b.554 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f5
	lw.s	%r0 %f1 556
	lw	%r2 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.29
	fbge	%f2 %f1 tail_b.901
tail_b.900 :
	neg.s	%f2 %f4
	j	branching_b.555
tail_b.901 :
	mov.s	%f2 %f4
branching_b.555 :
	ilw.s	%r0 %f1 l.56
	fbge	%f4 %f1 tail_b.903
tail_b.902 :
	addi	%r0 %r1 1
	j	branching_b.556
tail_b.903 :
	addi	%r0 %r1 0
branching_b.556 :
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.557
tail_b.913 :
	ilw.s	%r0 %f0 l.59
	j	branching_b.563
branching_b.557 :
	div.s	%f2 %f0 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.905
tail_b.904 :
	neg.s	%f1 %f6
	j	branching_b.558
tail_b.905 :
	mov.s	%f1 %f6
branching_b.558 :
	ilw.s	%r0 %f0 l.29
	fbg	%f0 %f6 branching_b.561
branching_b.559 :
	ilw.s	%r0 %f0 l.60
	fbge	%f6 %f0 branching_b.560
tail_b.906 :
	ilw.s	%r0 %f8 l.34
	ilw.s	%r0 %f4 l.29
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f2
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f1
	mul.s	%f2 %f7 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f7
	mul.s	%f2 %f1 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f1
	mul.s	%f2 %f7 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.66
	mul.s	%f6 %f0 %f0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.67
	mul.s	%f6 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.912
branching_b.560 :
	ilw.s	%r0 %f0 l.61
	fbge	%f6 %f0 tail_b.908
tail_b.907 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f6 %f0
	ilw.s	%r0 %f1 l.34
	add.s	%f1 %f6 %f1
	div.s	%f1 %f0 %f7
	ilw.s	%r0 %f4 l.34
	ilw.s	%r0 %f6 l.37
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f2
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.64
	mul.s	%f7 %f2 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.65
	mul.s	%f7 %f2 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.66
	mul.s	%f7 %f2 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.67
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.912
tail_b.908 :
	ilw.s	%r0 %f0 l.34
	div.s	%f6 %f0 %f1
	ilw.s	%r0 %f7 l.36
	ilw.s	%r0 %f6 l.69
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f4
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f0 %f2
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.66
	mul.s	%f1 %f2 %f2
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.67
	mul.s	%f1 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.912
branching_b.561 :
	neg.s	%f6 %f6
	ilw.s	%r0 %f0 l.60
	fbge	%f6 %f0 branching_b.562
tail_b.909 :
	ilw.s	%r0 %f1 l.36
	ilw.s	%r0 %f2 l.29
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f0 %f4
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f7
	mul.s	%f8 %f4 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f4 l.65
	mul.s	%f6 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.66
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.67
	mul.s	%f6 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.912
branching_b.562 :
	ilw.s	%r0 %f0 l.61
	fbge	%f6 %f0 tail_b.911
tail_b.910 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f6 %f1
	ilw.s	%r0 %f0 l.34
	add.s	%f0 %f6 %f0
	div.s	%f0 %f1 %f6
	ilw.s	%r0 %f4 l.36
	ilw.s	%r0 %f1 l.37
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f0 %f2
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.66
	mul.s	%f6 %f2 %f2
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.67
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.912
tail_b.911 :
	ilw.s	%r0 %f0 l.34
	div.s	%f6 %f0 %f0
	ilw.s	%r0 %f2 l.34
	ilw.s	%r0 %f7 l.69
	neg.s	%f0 %f1
	mul.s	%f0 %f1 %f6
	ilw.s	%r0 %f1 l.62
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f4 l.63
	mul.s	%f0 %f4 %f4
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.64
	mul.s	%f0 %f1 %f1
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f1 %f4
	ilw.s	%r0 %f1 l.65
	mul.s	%f0 %f1 %f1
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f1 %f4
	ilw.s	%r0 %f1 l.66
	mul.s	%f0 %f1 %f1
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f1 %f1
	ilw.s	%r0 %f4 l.67
	mul.s	%f0 %f4 %f4
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f4 %f1
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f2 %f0 %f0
tail_b.912 :
	ilw.s	%r0 %f1 l.68
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.54
	div.s	%f0 %f1 %f0
branching_b.563 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f2
	ilw.s	%r0 %f0 l.70
	ilw.s	%r0 %f1 l.40
	sub.s	%f5 %f1 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.40
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f1 %f0 tail_b.915
tail_b.914 :
	addi	%r0 %r3 1
	j	branching_b.564
tail_b.915 :
	addi	%r0 %r3 0
branching_b.564 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.916
tail_b.917 :
	ilw.s	%r0 %f0 l.29
	j	tail_b.918
tail_b.916 :
	mov.s	%f1 %f0
tail_b.918 :
	ilw.s	%r0 %f1 l.30
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.71
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.565 :
	addi	%r0 %r1 0
	lw	%r0 %r3 536
	sw	%r26 %r2 -16
	sw.s	%r26 %f3 -12
	sw	%r26 %r6 -8
	sw	%r26 %r4 -4
	sw	%r26 %r5 0
	mov	%r3 %r2
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r2 -16
	lw.s	%r26 %f3 -12
	lw	%r26 %r6 -8
	lw	%r26 %r4 -4
	lw	%r26 %r5 0
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.566
tail_b.925 :
	j	tail_b.926
branching_b.566 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f2
	lw.s	%r0 %f0 572
	lw.s	%r0 %f1 316
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	lw.s	%r0 %f1 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.29
	fbge	%f0 %f1 tail_b.921
tail_b.920 :
	addi	%r0 %r1 1
	j	branching_b.567
tail_b.921 :
	addi	%r0 %r1 0
branching_b.567 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.922
tail_b.923 :
	mov.s	%f1 %f0
	j	tail_b.924
tail_b.922 :
	ilw.s	%r0 %f0 l.29
tail_b.924 :
	mul.s	%f0 %f3 %f0
	lw	%r2 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f2
	lw.s	%r0 %f0 592
	lw.s	%r0 %f1 580
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	lw.s	%r0 %f0 584
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	lw.s	%r0 %f0 588
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	j	tail_b.926
branching_b.533 :
	lw	%r2 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.29
	fbne	%f1 %f0 tail_b.870
tail_b.869 :
	addi	%r0 %r3 1
	j	branching_b.534
tail_b.870 :
	addi	%r0 %r3 0
branching_b.534 :
	addi	%r0 %r7 0
	beq	%r3 %r7 branching_b.535
tail_b.873 :
	ilw.s	%r0 %f1 l.34
	j	tail_b.874
branching_b.535 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.871
tail_b.872 :
	ilw.s	%r0 %f0 l.36
	div.s	%f1 %f0 %f1
	j	tail_b.874
tail_b.871 :
	ilw.s	%r0 %f0 l.34
	div.s	%f1 %f0 %f1
tail_b.874 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.536
postloop_b.18 :
return_point.20 :
	retl
do_without_neighbors.0 :
	mov	%r2 %r5
	mov	%r1 %r6
preloop_b.19 :
do_without_neighbors_loop.0 :
	addi	%r0 %r1 4
	ble	%r5 %r1 branching_b.569
tail_b.942 :
	j	postloop_b.19
branching_b.569 :
	lw	%r6 %r3 8
	addi	%r0 %r2 0
	slli	%r5 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	ble	%r2 %r1 branching_b.570
tail_b.941 :
	j	postloop_b.19
branching_b.570 :
	lw	%r6 %r2 12
	slli	%r5 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r2 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.928
branching_b.571 :
	lw	%r6 %r1 20
	lw	%r6 %r2 28
	lw	%r6 %r4 4
	lw	%r6 %r7 16
	slli	%r5 %r3 2
	add	%r1 %r3 %r1
	lw	%r1 %r3 0
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 592
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 596
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 600
	lw	%r6 %r1 24
	lw	%r1 %r9 0
	slli	%r5 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r3 0
	slli	%r5 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r8 0
	addi	%r0 %r1 0
	bne	%r9 %r1 tail_b.929
tail_b.930 :
	j	branching_b.572
tail_b.929 :
	lw	%r0 %r10 716
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r2 -1
	sw	%r26 %r10 -24
	sw	%r26 %r8 -20
	sw	%r26 %r3 -16
	sw	%r26 %r9 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r8 %r1
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	setup_startp_constants.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw	%r26 %r10 -24
	lw	%r26 %r8 -20
	lw	%r26 %r3 -16
	lw	%r26 %r9 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
	addi	%r0 %r4 118
	sw	%r26 %r8 -20
	sw	%r26 %r3 -16
	sw	%r26 %r9 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r3 %r2
	mov	%r10 %r1
	mov	%r8 %r3
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r8 -20
	lw	%r26 %r3 -16
	lw	%r26 %r9 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
	j	branching_b.572
tail_b.928 :
tail_b.940 :
	addi	%r5 %r1 1
	mov	%r1 %r5
	j	do_without_neighbors_loop.0
branching_b.572 :
	addi	%r0 %r1 1
	bne	%r9 %r1 tail_b.931
tail_b.932 :
	j	branching_b.573
tail_b.931 :
	lw	%r0 %r2 720
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r2 -24
	sw	%r26 %r8 -20
	sw	%r26 %r3 -16
	sw	%r26 %r9 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r1 %r2
	mov	%r8 %r1
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	setup_startp_constants.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw	%r26 %r2 -24
	lw	%r26 %r8 -20
	lw	%r26 %r3 -16
	lw	%r26 %r9 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
	addi	%r0 %r4 118
	sw	%r26 %r8 -20
	sw	%r26 %r3 -16
	sw	%r26 %r9 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r2 %r1
	mov	%r3 %r2
	mov	%r8 %r3
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r8 -20
	lw	%r26 %r3 -16
	lw	%r26 %r9 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
branching_b.573 :
	addi	%r0 %r1 2
	bne	%r9 %r1 tail_b.933
tail_b.934 :
	j	branching_b.574
tail_b.933 :
	lw	%r0 %r2 724
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r2 -24
	sw	%r26 %r8 -20
	sw	%r26 %r3 -16
	sw	%r26 %r9 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r1 %r2
	mov	%r8 %r1
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	setup_startp_constants.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw	%r26 %r2 -24
	lw	%r26 %r8 -20
	lw	%r26 %r3 -16
	lw	%r26 %r9 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
	addi	%r0 %r4 118
	sw	%r26 %r8 -20
	sw	%r26 %r3 -16
	sw	%r26 %r9 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r2 %r1
	mov	%r3 %r2
	mov	%r8 %r3
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r8 -20
	lw	%r26 %r3 -16
	lw	%r26 %r9 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
branching_b.574 :
	addi	%r0 %r1 3
	bne	%r9 %r1 tail_b.935
tail_b.936 :
	j	branching_b.575
tail_b.935 :
	lw	%r0 %r2 728
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r2 -24
	sw	%r26 %r8 -20
	sw	%r26 %r3 -16
	sw	%r26 %r9 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r1 %r2
	mov	%r8 %r1
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	setup_startp_constants.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw	%r26 %r2 -24
	lw	%r26 %r8 -20
	lw	%r26 %r3 -16
	lw	%r26 %r9 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
	addi	%r0 %r4 118
	sw	%r26 %r8 -20
	sw	%r26 %r3 -16
	sw	%r26 %r9 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r2 %r1
	mov	%r3 %r2
	mov	%r8 %r3
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r8 -20
	lw	%r26 %r3 -16
	lw	%r26 %r9 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
branching_b.575 :
	addi	%r0 %r1 4
	bne	%r9 %r1 tail_b.937
tail_b.938 :
	j	tail_b.939
tail_b.937 :
	lw	%r0 %r2 732
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r2 -20
	sw	%r26 %r8 -16
	sw	%r26 %r3 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r1 %r2
	mov	%r8 %r1
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	setup_startp_constants.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r2 -20
	lw	%r26 %r8 -16
	lw	%r26 %r3 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
	addi	%r0 %r4 118
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r2 %r1
	mov	%r3 %r2
	mov	%r8 %r3
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
tail_b.939 :
	slli	%r5 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f1 604
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	lw.s	%r0 %f2 592
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f1 608
	addi	%r2 %r1 4
	lw.s	%r1 %f2 0
	lw.s	%r0 %f0 596
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f2 612
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	lw.s	%r0 %f0 600
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 612
	j	tail_b.940
postloop_b.19 :
return_point.21 :
	retl
try_exploit_neighbors.0 :
	mov	%r6 %r7
	mov	%r5 %r8
	mov	%r4 %r6
	mov	%r1 %r5
	mov	%r3 %r4
preloop_b.20 :
try_exploit_neighbors_loop.0 :
	slli	%r5 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r3 0
	addi	%r0 %r1 4
	ble	%r7 %r1 branching_b.577
tail_b.953 :
	j	postloop_b.20
branching_b.577 :
	addi	%r0 %r1 0
	lw	%r3 %r2 8
	slli	%r7 %r9 2
	add	%r2 %r9 %r2
	lw	%r2 %r2 0
	ble	%r1 %r2 branching_b.578
tail_b.952 :
	j	postloop_b.20
branching_b.578 :
	slli	%r5 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 8
	slli	%r7 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r2 0
	slli	%r5 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 8
	slli	%r7 %r9 2
	add	%r1 %r9 %r1
	lw	%r1 %r1 0
	beq	%r1 %r2 branching_b.579
tail_b.947 :
	addi	%r0 %r2 0
	j	branching_b.582
branching_b.579 :
	slli	%r5 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 8
	slli	%r7 %r9 2
	add	%r1 %r9 %r1
	lw	%r1 %r1 0
	beq	%r1 %r2 branching_b.580
tail_b.946 :
	addi	%r0 %r2 0
	j	branching_b.582
branching_b.580 :
	addi	%r5 %r1 -1
	slli	%r1 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 8
	slli	%r7 %r9 2
	add	%r1 %r9 %r1
	lw	%r1 %r1 0
	beq	%r1 %r2 branching_b.581
tail_b.945 :
	addi	%r0 %r2 0
	j	branching_b.582
branching_b.581 :
	addi	%r5 %r1 1
	slli	%r1 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r9 8
	slli	%r7 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r2 tail_b.943
tail_b.944 :
	addi	%r0 %r2 0
	j	branching_b.582
tail_b.943 :
	addi	%r0 %r2 1
branching_b.582 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.948
branching_b.583 :
	lw	%r3 %r2 12
	slli	%r7 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r2 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.949
tail_b.950 :
	slli	%r5 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r11 20
	addi	%r5 %r1 -1
	slli	%r1 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r9 20
	slli	%r5 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r10 20
	addi	%r5 %r1 1
	slli	%r1 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r3 20
	slli	%r5 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 20
	slli	%r7 %r1 2
	add	%r11 %r1 %r1
	lw	%r1 %r1 0
	mov	%r1 %r11
	lw.s	%r11 %f0 0
	sw.s	%r0 %f0 592
	addi	%r1 %r11 4
	lw.s	%r11 %f0 0
	sw.s	%r0 %f0 596
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 600
	slli	%r7 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r9 0
	lw.s	%r0 %f0 592
	mov	%r9 %r1
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	slli	%r7 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f1 592
	mov	%r1 %r9
	lw.s	%r9 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f0 596
	addi	%r1 %r9 4
	lw.s	%r9 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f0 600
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	slli	%r7 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r3 0
	lw.s	%r0 %f1 592
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f0 596
	addi	%r3 %r1 4
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f0 600
	addi	%r3 %r1 8
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	slli	%r7 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f1 592
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f0 596
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f0 600
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	slli	%r5 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 16
	slli	%r7 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f1 604
	mov	%r2 %r1
	lw.s	%r1 %f2 0
	lw.s	%r0 %f0 592
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f2 608
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	lw.s	%r0 %f0 596
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	addi	%r2 %r1 8
	lw.s	%r1 %f2 0
	lw.s	%r0 %f1 600
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
	j	tail_b.951
tail_b.949 :
	j	tail_b.951
tail_b.948 :
	slli	%r5 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	mov	%r7 %r2
	sw	%r26 %r28 0
	addi	%r26 %r26 -4
	jal	do_without_neighbors.0
	addi	%r26 %r26 4
	lw	%r26 %r28 0
	j	postloop_b.20
tail_b.951 :
	addi	%r7 %r1 1
	mov	%r1 %r7
	j	try_exploit_neighbors_loop.0
postloop_b.20 :
return_point.22 :
	retl
pretrace_diffuse_rays.0 :
	mov	%r1 %r6
preloop_b.21 :
pretrace_diffuse_rays_loop.0 :
	addi	%r0 %r1 4
	ble	%r2 %r1 branching_b.585
tail_b.958 :
	j	postloop_b.21
branching_b.585 :
	lw	%r6 %r3 8
	slli	%r2 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r3 0
	addi	%r0 %r1 0
	ble	%r1 %r3 branching_b.586
tail_b.957 :
	j	postloop_b.21
branching_b.586 :
	lw	%r6 %r1 12
	slli	%r2 %r3 2
	add	%r1 %r3 %r1
	lw	%r1 %r1 0
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.954
tail_b.955 :
	lw	%r6 %r1 24
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.29
	sw.s	%r0 %f0 592
	sw.s	%r0 %f0 596
	sw.s	%r0 %f0 600
	lw	%r6 %r4 28
	lw	%r6 %r5 4
	slli	%r1 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r1 0
	slli	%r2 %r3 2
	add	%r4 %r3 %r3
	lw	%r3 %r3 0
	slli	%r2 %r4 2
	add	%r5 %r4 %r4
	lw	%r4 %r5 0
	mov	%r5 %r4
	lw.s	%r4 %f0 0
	sw.s	%r0 %f0 648
	addi	%r5 %r4 4
	lw.s	%r4 %f0 0
	sw.s	%r0 %f0 652
	addi	%r5 %r4 8
	lw.s	%r4 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r4 0
	addi	%r4 %r4 -1
	sw	%r26 %r5 -16
	sw	%r26 %r3 -12
	sw	%r26 %r1 -8
	sw	%r26 %r2 -4
	sw	%r26 %r6 0
	mov	%r4 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	setup_startp_constants.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	mov	%r1 %r4
	lw	%r26 %r5 -16
	lw	%r26 %r3 -12
	lw	%r26 %r1 -8
	lw	%r26 %r2 -4
	lw	%r26 %r6 0
	addi	%r0 %r4 118
	sw	%r26 %r2 -4
	sw	%r26 %r6 0
	mov	%r3 %r2
	mov	%r5 %r3
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r2 -4
	lw	%r26 %r6 0
	lw	%r6 %r3 20
	slli	%r2 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f0 592
	mov	%r1 %r3
	sw.s	%r3 %f0 0
	lw.s	%r0 %f0 596
	addi	%r1 %r3 4
	sw.s	%r3 %f0 0
	lw.s	%r0 %f0 600
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	j	tail_b.956
tail_b.954 :
tail_b.956 :
	addi	%r2 %r1 1
	mov	%r1 %r2
	j	pretrace_diffuse_rays_loop.0
postloop_b.21 :
return_point.23 :
	retl
pretrace_pixels.0 :
	mov	%r3 %r6
	mov	%r2 %r4
	mov	%r1 %r5
	mov.s	%f2 %f4
	mov.s	%f1 %f3
	mov.s	%f0 %f2
preloop_b.22 :
pretrace_pixels_loop.0 :
	addi	%r0 %r2 696
	addi	%r0 %r1 0
	ble	%r1 %r4 branching_b.588
tail_b.966 :
	j	postloop_b.22
branching_b.588 :
	lw.s	%r0 %f0 632
	lw	%r0 %r1 624
	sub	%r4 %r1 %r1
	mtc1	%r1 %f1
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 660
	mul.s	%f0 %f1 %f0
	add.s	%f2 %f0 %f0
	sw.s	%r0 %f0 696
	lw.s	%r0 %f0 664
	mul.s	%f0 %f1 %f0
	add.s	%f3 %f0 %f0
	sw.s	%r0 %f0 700
	lw.s	%r0 %f0 668
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	sw.s	%r0 %f0 704
	lw.s	%r0 %f0 696
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 700
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 704
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.29
	fbne	%f1 %f0 tail_b.960
tail_b.959 :
	addi	%r0 %r3 1
	j	branching_b.589
tail_b.960 :
	addi	%r0 %r3 0
branching_b.589 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.961
tail_b.962 :
	ilw.s	%r0 %f1 l.34
	j	branching_b.590
tail_b.961 :
	ilw.s	%r0 %f0 l.34
	div.s	%f1 %f0 %f1
branching_b.590 :
	lw.s	%r0 %f0 696
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 696
	lw.s	%r0 %f0 700
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 700
	lw.s	%r0 %f0 704
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 704
	ilw.s	%r0 %f0 l.29
	sw.s	%r0 %f0 604
	sw.s	%r0 %f0 608
	sw.s	%r0 %f0 612
	lw.s	%r0 %f0 300
	sw.s	%r0 %f0 636
	lw.s	%r0 %f0 304
	sw.s	%r0 %f0 640
	lw.s	%r0 %f0 308
	sw.s	%r0 %f0 644
	addi	%r0 %r7 0
	ilw.s	%r0 %f0 l.34
	slli	%r4 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r3 0
	ilw.s	%r0 %f1 l.29
	sw	%r26 %r6 -20
	sw	%r26 %r4 -16
	sw.s	%r26 %f4 -12
	sw.s	%r26 %f3 -8
	sw.s	%r26 %f2 -4
	sw	%r26 %r5 0
	mov	%r7 %r1
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	trace_ray.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r6 -20
	lw	%r26 %r4 -16
	lw.s	%r26 %f4 -12
	lw.s	%r26 %f3 -8
	lw.s	%r26 %f2 -4
	lw	%r26 %r5 0
	slli	%r4 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	lw.s	%r0 %f0 604
	mov	%r2 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 608
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 612
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	slli	%r4 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	sw	%r1 %r6 0
	slli	%r4 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	addi	%r0 %r2 0
	sw	%r26 %r6 -20
	sw	%r26 %r4 -16
	sw.s	%r26 %f4 -12
	sw.s	%r26 %f3 -8
	sw.s	%r26 %f2 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	pretrace_diffuse_rays.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r6 -20
	lw	%r26 %r4 -16
	lw.s	%r26 %f4 -12
	lw.s	%r26 %f3 -8
	lw.s	%r26 %f2 -4
	lw	%r26 %r5 0
	addi	%r4 %r3 -1
	addi	%r6 %r1 1
	addi	%r0 %r2 5
	ble	%r2 %r1 tail_b.963
tail_b.964 :
	j	tail_b.965
tail_b.963 :
	addi	%r1 %r1 -5
tail_b.965 :
	mov	%r3 %r4
	mov	%r1 %r6
	j	pretrace_pixels_loop.0
postloop_b.22 :
return_point.24 :
	retl
scan_pixel.0 :
	mov	%r5 %r6
	mov	%r1 %r7
	mov	%r3 %r5
preloop_b.23 :
scan_pixel_loop.0 :
	lw	%r0 %r1 616
	bl	%r7 %r1 branching_b.592
tail_b.993 :
	j	postloop_b.23
branching_b.592 :
	slli	%r7 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r3 0
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 604
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 608
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 612
	addi	%r2 %r1 1
	lw	%r0 %r3 620
	bl	%r1 %r3 branching_b.593
tail_b.971 :
	addi	%r0 %r3 0
	j	branching_b.596
branching_b.593 :
	addi	%r0 %r1 0
	bl	%r1 %r2 branching_b.594
tail_b.970 :
	addi	%r0 %r3 0
	j	branching_b.596
branching_b.594 :
	addi	%r7 %r3 1
	lw	%r0 %r1 616
	bl	%r3 %r1 branching_b.595
tail_b.969 :
	addi	%r0 %r3 0
	j	branching_b.596
branching_b.595 :
	addi	%r0 %r1 0
	bl	%r1 %r7 tail_b.967
tail_b.968 :
	addi	%r0 %r3 0
	j	branching_b.596
tail_b.967 :
	addi	%r0 %r3 1
branching_b.596 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.972
tail_b.973 :
	addi	%r0 %r1 0
	sw	%r26 %r7 -16
	sw	%r26 %r6 -12
	sw	%r26 %r4 -8
	sw	%r26 %r5 -4
	sw	%r26 %r2 0
	mov	%r5 %r3
	mov	%r6 %r5
	mov	%r1 %r6
	mov	%r7 %r1
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	try_exploit_neighbors.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r7 -16
	lw	%r26 %r6 -12
	lw	%r26 %r4 -8
	lw	%r26 %r5 -4
	lw	%r26 %r2 0
	j	branching_b.597
tail_b.972 :
	slli	%r7 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	addi	%r0 %r3 0
	sw	%r26 %r7 -16
	sw	%r26 %r6 -12
	sw	%r26 %r4 -8
	sw	%r26 %r5 -4
	sw	%r26 %r2 0
	mov	%r3 %r2
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	do_without_neighbors.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r7 -16
	lw	%r26 %r6 -12
	lw	%r26 %r4 -8
	lw	%r26 %r5 -4
	lw	%r26 %r2 0
branching_b.597 :
	lw.s	%r0 %f0 604
	mfc1	%r3 %f0
	addi	%r0 %r1 255
	bl	%r1 %r3 tail_b.974
branching_b.598 :
	addi	%r0 %r1 0
	bl	%r3 %r1 tail_b.975
tail_b.976 :
	mov	%r3 %r1
	j	branching_b.599
tail_b.975 :
	addi	%r0 %r1 0
	j	branching_b.599
tail_b.974 :
	addi	%r0 %r1 255
branching_b.599 :
	addi	%r0 %r3 100
	div	%r1 %r3 %r9
	addi	%r0 %r3 100
	mul	%r9 %r3 %r3
	sub	%r1 %r3 %r3
	addi	%r0 %r8 10
	div	%r3 %r8 %r8
	addi	%r0 %r3 100
	mul	%r9 %r3 %r3
	sub	%r1 %r3 %r1
	addi	%r0 %r3 10
	mul	%r8 %r3 %r3
	sub	%r1 %r3 %r3
	addi	%r0 %r1 0
	bl	%r1 %r9 tail_b.977
branching_b.600 :
	addi	%r0 %r1 0
	bl	%r1 %r8 tail_b.978
tail_b.979 :
	addi	%r3 %r1 48
	out	%r1
	j	branching_b.601
tail_b.978 :
	addi	%r8 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
	j	branching_b.601
tail_b.977 :
	addi	%r9 %r1 48
	out	%r1
	addi	%r8 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
branching_b.601 :
	addi	%r0 %r1 32
	out	%r1
	lw.s	%r0 %f0 608
	mfc1	%r1 %f0
	addi	%r0 %r3 255
	bl	%r3 %r1 tail_b.980
branching_b.602 :
	addi	%r0 %r3 0
	bl	%r1 %r3 tail_b.981
tail_b.982 :
	mov	%r1 %r3
	j	branching_b.603
tail_b.981 :
	addi	%r0 %r3 0
	j	branching_b.603
tail_b.980 :
	addi	%r0 %r3 255
branching_b.603 :
	addi	%r0 %r1 100
	div	%r3 %r1 %r8
	addi	%r0 %r1 100
	mul	%r8 %r1 %r1
	sub	%r3 %r1 %r1
	addi	%r0 %r9 10
	div	%r1 %r9 %r9
	addi	%r0 %r1 100
	mul	%r8 %r1 %r1
	sub	%r3 %r1 %r3
	addi	%r0 %r1 10
	mul	%r9 %r1 %r1
	sub	%r3 %r1 %r3
	addi	%r0 %r1 0
	bl	%r1 %r8 tail_b.983
branching_b.604 :
	addi	%r0 %r1 0
	bl	%r1 %r9 tail_b.984
tail_b.985 :
	addi	%r3 %r1 48
	out	%r1
	j	branching_b.605
tail_b.984 :
	addi	%r9 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
	j	branching_b.605
tail_b.983 :
	addi	%r8 %r1 48
	out	%r1
	addi	%r9 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
branching_b.605 :
	addi	%r0 %r1 32
	out	%r1
	lw.s	%r0 %f0 612
	mfc1	%r3 %f0
	addi	%r0 %r1 255
	bl	%r1 %r3 tail_b.986
branching_b.606 :
	addi	%r0 %r1 0
	bl	%r3 %r1 tail_b.987
tail_b.988 :
	j	branching_b.607
tail_b.987 :
	addi	%r0 %r3 0
	j	branching_b.607
tail_b.986 :
	addi	%r0 %r3 255
branching_b.607 :
	addi	%r0 %r1 100
	div	%r3 %r1 %r9
	addi	%r0 %r1 100
	mul	%r9 %r1 %r1
	sub	%r3 %r1 %r1
	addi	%r0 %r8 10
	div	%r1 %r8 %r8
	addi	%r0 %r1 100
	mul	%r9 %r1 %r1
	sub	%r3 %r1 %r3
	addi	%r0 %r1 10
	mul	%r8 %r1 %r1
	sub	%r3 %r1 %r1
	addi	%r0 %r3 0
	bl	%r3 %r9 tail_b.989
branching_b.608 :
	addi	%r0 %r3 0
	bl	%r3 %r8 tail_b.990
tail_b.991 :
	addi	%r1 %r1 48
	out	%r1
	j	tail_b.992
tail_b.990 :
	addi	%r8 %r3 48
	out	%r3
	addi	%r1 %r1 48
	out	%r1
	j	tail_b.992
tail_b.989 :
	addi	%r9 %r3 48
	out	%r3
	addi	%r8 %r3 48
	out	%r3
	addi	%r1 %r1 48
	out	%r1
tail_b.992 :
	addi	%r0 %r1 10
	out	%r1
	addi	%r7 %r1 1
	mov	%r1 %r7
	j	scan_pixel_loop.0
postloop_b.23 :
return_point.25 :
	retl
scan_line.0 :
	mov	%r5 %r6
	mov	%r2 %r7
	mov	%r4 %r5
	mov	%r1 %r2
	mov	%r3 %r4
preloop_b.24 :
scan_line_loop.0 :
	lw	%r0 %r1 620
	bl	%r2 %r1 branching_b.610
tail_b.999 :
	j	postloop_b.24
branching_b.610 :
	lw	%r0 %r1 620
	addi	%r1 %r1 -1
	bl	%r2 %r1 tail_b.994
tail_b.995 :
	j	branching_b.611
tail_b.994 :
	addi	%r2 %r1 1
	lw.s	%r0 %f1 632
	lw	%r0 %r3 628
	sub	%r1 %r3 %r1
	mtc1	%r1 %f0
	mul.s	%f0 %f1 %f3
	lw.s	%r0 %f0 672
	mul.s	%f0 %f3 %f1
	lw.s	%r0 %f0 684
	add.s	%f0 %f1 %f2
	lw.s	%r0 %f0 676
	mul.s	%f0 %f3 %f0
	lw.s	%r0 %f1 688
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f0 680
	mul.s	%f0 %f3 %f0
	lw.s	%r0 %f3 692
	add.s	%f3 %f0 %f0
	lw	%r0 %r1 616
	addi	%r1 %r1 -1
	sw	%r26 %r6 -16
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw	%r26 %r7 -4
	sw	%r26 %r2 0
	mov	%r6 %r3
	mov	%r1 %r2
	mov	%r5 %r1
	mov.s	%f2 %f30
	mov.s	%f0 %f2
	mov.s	%f30 %f0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	pretrace_pixels.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r6 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw	%r26 %r7 -4
	lw	%r26 %r2 0
branching_b.611 :
	addi	%r0 %r1 0
	sw	%r26 %r6 -12
	sw	%r26 %r5 -8
	sw	%r26 %r4 -4
	sw	%r26 %r2 0
	mov	%r7 %r3
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	scan_pixel.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r6 -12
	lw	%r26 %r5 -8
	lw	%r26 %r4 -4
	lw	%r26 %r2 0
	addi	%r2 %r1 1
	addi	%r6 %r2 2
	addi	%r0 %r3 5
	ble	%r3 %r2 tail_b.996
tail_b.997 :
	mov	%r2 %r3
	j	tail_b.998
tail_b.996 :
	addi	%r2 %r3 -5
tail_b.998 :
	mov	%r1 %r2
	mov	%r4 %r7
	mov	%r5 %r4
	mov	%r7 %r5
	mov	%r3 %r6
	j	scan_line_loop.0
postloop_b.24 :
return_point.26 :
	retl
init_line_elements.0 :
	mov	%r2 %r5
	mov	%r1 %r6
preloop_b.25 :
init_line_elements_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r5 tail_b.1000
tail_b.1001 :
	mov	%r6 %r1
	j	postloop_b.25
tail_b.1000 :
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r7
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r1 %r3 4
	sw	%r3 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r3
	lw	%r26 %r1 0
	addi	%r1 %r2 8
	sw	%r2 %r3 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r3
	lw	%r26 %r1 0
	addi	%r1 %r2 12
	sw	%r2 %r3 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r1 %r3 16
	sw	%r3 %r2 0
	addi	%r0 %r3 5
	addi	%r0 %r2 0
	sw	%r26 %r1 0
	mov	%r3 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r8
	lw	%r26 %r1 0
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r9
	lw	%r26 %r1 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r3
	lw	%r26 %r1 0
	addi	%r0 %r2 5
	sw	%r26 %r1 0
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r3
	lw	%r26 %r1 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r4
	lw	%r26 %r1 0
	addi	%r3 %r2 4
	sw	%r2 %r4 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r3 %r4 8
	sw	%r4 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r3 %r4 12
	sw	%r4 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r3 %r4 16
	sw	%r4 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r0 %r4 5
	sw	%r26 %r1 0
	mov	%r4 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r10
	lw	%r26 %r1 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r4
	lw	%r26 %r1 0
	addi	%r10 %r2 4
	sw	%r2 %r4 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r4
	lw	%r26 %r1 0
	addi	%r10 %r2 8
	sw	%r2 %r4 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r4
	lw	%r26 %r1 0
	addi	%r10 %r2 12
	sw	%r2 %r4 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r4
	lw	%r26 %r1 0
	addi	%r10 %r2 16
	sw	%r2 %r4 0
	addi	%r0 %r2 1
	addi	%r0 %r4 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r12
	lw	%r26 %r1 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r0 %r4 5
	sw	%r26 %r1 0
	mov	%r4 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r11
	lw	%r26 %r1 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r11 %r4 4
	sw	%r4 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r11 %r4 8
	sw	%r4 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r4
	lw	%r26 %r1 0
	addi	%r11 %r2 12
	sw	%r2 %r4 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r11 %r4 16
	sw	%r4 %r2 0
	mov	%r27 %r2
	addi	%r27 %r27 32
	sw	%r2 %r11 28
	sw	%r2 %r12 24
	sw	%r2 %r10 20
	sw	%r2 %r3 16
	sw	%r2 %r9 12
	sw	%r2 %r8 8
	sw	%r2 %r1 4
	sw	%r2 %r7 0
	slli	%r5 %r1 2
	add	%r6 %r1 %r1
	sw	%r1 %r2 0
	addi	%r5 %r1 -1
	mov	%r1 %r5
	j	init_line_elements_loop.0
postloop_b.25 :
return_point.27 :
	retl
calc_dirvec.0 :
	mov	%r2 %r4
	mov	%r1 %r2
	mov.s	%f2 %f4
	mov.s	%f1 %f2
	mov.s	%f0 %f1
preloop_b.26 :
calc_dirvec_loop.0 :
	addi	%r0 %r1 5
	ble	%r1 %r2 tail_b.1002
branching_b.614 :
	mul.s	%f2 %f2 %f1
	ilw.s	%r0 %f0 l.58
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f5
	ilw.s	%r0 %f0 l.34
	div.s	%f5 %f0 %f6
	ilw.s	%r0 %f0 l.29
	fbg	%f0 %f6 branching_b.617
branching_b.615 :
	ilw.s	%r0 %f0 l.60
	fbge	%f6 %f0 branching_b.616
tail_b.1003 :
	ilw.s	%r0 %f8 l.34
	ilw.s	%r0 %f1 l.29
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f2 l.63
	mul.s	%f6 %f2 %f2
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.65
	mul.s	%f6 %f2 %f2
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.66
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.67
	mul.s	%f6 %f2 %f2
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	j	branching_b.619
branching_b.616 :
	ilw.s	%r0 %f0 l.61
	fbge	%f6 %f0 tail_b.1005
tail_b.1004 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f6 %f1
	ilw.s	%r0 %f0 l.34
	add.s	%f0 %f6 %f0
	div.s	%f0 %f1 %f1
	ilw.s	%r0 %f6 l.34
	ilw.s	%r0 %f7 l.37
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f0 %f2
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.66
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.67
	mul.s	%f1 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f6 %f0 %f0
	j	branching_b.619
tail_b.1005 :
	ilw.s	%r0 %f0 l.34
	div.s	%f6 %f0 %f0
	ilw.s	%r0 %f8 l.36
	ilw.s	%r0 %f7 l.69
	neg.s	%f0 %f1
	mul.s	%f0 %f1 %f2
	ilw.s	%r0 %f1 l.62
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f6 l.63
	mul.s	%f0 %f6 %f6
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f6 %f9
	ilw.s	%r0 %f1 l.64
	mul.s	%f0 %f1 %f6
	mul.s	%f2 %f9 %f1
	add.s	%f1 %f6 %f6
	ilw.s	%r0 %f1 l.65
	mul.s	%f0 %f1 %f1
	mul.s	%f2 %f6 %f6
	add.s	%f6 %f1 %f6
	ilw.s	%r0 %f1 l.66
	mul.s	%f0 %f1 %f1
	mul.s	%f2 %f6 %f6
	add.s	%f6 %f1 %f6
	ilw.s	%r0 %f1 l.67
	mul.s	%f0 %f1 %f1
	mul.s	%f2 %f6 %f6
	add.s	%f6 %f1 %f1
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	j	branching_b.619
branching_b.617 :
	neg.s	%f6 %f7
	ilw.s	%r0 %f0 l.60
	fbge	%f7 %f0 branching_b.618
tail_b.1006 :
	ilw.s	%r0 %f2 l.36
	ilw.s	%r0 %f9 l.29
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.62
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f8
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f1
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.66
	mul.s	%f7 %f0 %f1
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.67
	mul.s	%f7 %f0 %f8
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f2 %f0 %f0
	j	branching_b.619
branching_b.618 :
	ilw.s	%r0 %f0 l.61
	fbge	%f7 %f0 tail_b.1008
tail_b.1007 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f7 %f1
	ilw.s	%r0 %f0 l.34
	add.s	%f0 %f7 %f0
	div.s	%f0 %f1 %f2
	ilw.s	%r0 %f8 l.36
	ilw.s	%r0 %f7 l.37
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f6
	ilw.s	%r0 %f0 l.62
	mul.s	%f2 %f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f2 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f2 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f2 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.66
	mul.s	%f2 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.67
	mul.s	%f2 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	j	branching_b.619
tail_b.1008 :
	ilw.s	%r0 %f0 l.34
	div.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.34
	ilw.s	%r0 %f2 l.69
	neg.s	%f8 %f1
	mul.s	%f8 %f1 %f7
	ilw.s	%r0 %f1 l.62
	mul.s	%f8 %f1 %f1
	ilw.s	%r0 %f6 l.63
	mul.s	%f8 %f6 %f6
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f6 %f6
	ilw.s	%r0 %f1 l.64
	mul.s	%f8 %f1 %f9
	mul.s	%f7 %f6 %f1
	add.s	%f1 %f9 %f1
	ilw.s	%r0 %f6 l.65
	mul.s	%f8 %f6 %f6
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f6 %f1
	ilw.s	%r0 %f6 l.66
	mul.s	%f8 %f6 %f6
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f6 %f6
	ilw.s	%r0 %f1 l.67
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f1 %f1
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f8 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f0 %f1 %f0
	j	branching_b.619
tail_b.1002 :
	mul.s	%f1 %f1 %f3
	mul.s	%f2 %f2 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.34
	add.s	%f0 %f3 %f0
	sqrt.s	%f0 %f4
	div.s	%f4 %f1 %f0
	div.s	%f4 %f2 %f3
	ilw.s	%r0 %f1 l.34
	div.s	%f4 %f1 %f2
	slli	%r4 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r2 0
	slli	%r3 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	mov	%r1 %r4
	sw.s	%r4 %f0 0
	addi	%r1 %r4 4
	sw.s	%r4 %f3 0
	addi	%r1 %r1 8
	sw.s	%r1 %f2 0
	addi	%r3 %r1 40
	slli	%r1 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r4 0
	neg.s	%f3 %f1
	mov	%r4 %r1
	sw.s	%r1 %f0 0
	addi	%r4 %r1 4
	sw.s	%r1 %f2 0
	addi	%r4 %r1 8
	sw.s	%r1 %f1 0
	addi	%r3 %r1 80
	slli	%r1 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r4 0
	neg.s	%f0 %f4
	neg.s	%f3 %f1
	mov	%r4 %r1
	sw.s	%r1 %f2 0
	addi	%r4 %r1 4
	sw.s	%r1 %f4 0
	addi	%r4 %r1 8
	sw.s	%r1 %f1 0
	addi	%r3 %r1 1
	slli	%r1 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	neg.s	%f0 %f1
	neg.s	%f3 %f4
	neg.s	%f2 %f5
	mov	%r1 %r4
	sw.s	%r4 %f1 0
	addi	%r1 %r4 4
	sw.s	%r4 %f4 0
	addi	%r1 %r1 8
	sw.s	%r1 %f5 0
	addi	%r3 %r1 41
	slli	%r1 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	neg.s	%f0 %f4
	neg.s	%f2 %f1
	mov	%r1 %r4
	sw.s	%r4 %f4 0
	addi	%r1 %r4 4
	sw.s	%r4 %f1 0
	addi	%r1 %r1 8
	sw.s	%r1 %f3 0
	addi	%r3 %r1 81
	slli	%r1 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	neg.s	%f2 %f1
	mov	%r1 %r2
	sw.s	%r2 %f1 0
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	addi	%r1 %r1 8
	sw.s	%r1 %f3 0
postloop_b.26 :
return_point.28 :
	retl
branching_b.619 :
	mul.s	%f4 %f0 %f0
	sw.s	%r26 %f0 -24
	sw.s	%r26 %f5 -20
	sw	%r26 %r2 -16
	sw.s	%r26 %f3 -12
	sw.s	%r26 %f4 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	sin.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	mov.s	%f0 %f1
	lw.s	%r26 %f0 -24
	lw.s	%r26 %f5 -20
	lw	%r26 %r2 -16
	lw.s	%r26 %f3 -12
	lw.s	%r26 %f4 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	sw.s	%r26 %f1 -24
	sw.s	%r26 %f5 -20
	sw	%r26 %r2 -16
	sw.s	%r26 %f3 -12
	sw.s	%r26 %f4 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	cos.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw.s	%r26 %f1 -24
	lw.s	%r26 %f5 -20
	lw	%r26 %r2 -16
	lw.s	%r26 %f3 -12
	lw.s	%r26 %f4 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	div.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f5
	addi	%r2 %r1 1
	mul.s	%f5 %f5 %f1
	ilw.s	%r0 %f0 l.58
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f6
	ilw.s	%r0 %f0 l.34
	div.s	%f6 %f0 %f9
	ilw.s	%r0 %f0 l.29
	fbg	%f0 %f9 branching_b.622
branching_b.620 :
	ilw.s	%r0 %f0 l.60
	fbge	%f9 %f0 branching_b.621
tail_b.1009 :
	ilw.s	%r0 %f10 l.34
	ilw.s	%r0 %f8 l.29
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f2
	ilw.s	%r0 %f0 l.62
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f9 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f7
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f1
	mul.s	%f2 %f7 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f7
	mul.s	%f2 %f1 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f1 l.66
	mul.s	%f9 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.67
	mul.s	%f9 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f10 %f0 %f0
	j	tail_b.1015
branching_b.621 :
	ilw.s	%r0 %f0 l.61
	fbge	%f9 %f0 tail_b.1011
tail_b.1010 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f9 %f0
	ilw.s	%r0 %f1 l.34
	add.s	%f1 %f9 %f1
	div.s	%f1 %f0 %f0
	ilw.s	%r0 %f8 l.34
	ilw.s	%r0 %f9 l.37
	neg.s	%f0 %f1
	mul.s	%f0 %f1 %f7
	ilw.s	%r0 %f1 l.62
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f2 l.63
	mul.s	%f0 %f2 %f2
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.64
	mul.s	%f0 %f2 %f2
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f2 %f2
	ilw.s	%r0 %f1 l.65
	mul.s	%f0 %f1 %f1
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f1 %f2
	ilw.s	%r0 %f1 l.66
	mul.s	%f0 %f1 %f1
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f1 %f10
	ilw.s	%r0 %f1 l.67
	mul.s	%f0 %f1 %f2
	mul.s	%f7 %f10 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.1015
tail_b.1011 :
	ilw.s	%r0 %f0 l.34
	div.s	%f9 %f0 %f8
	ilw.s	%r0 %f7 l.36
	ilw.s	%r0 %f1 l.69
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f10
	ilw.s	%r0 %f0 l.62
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f2 l.63
	mul.s	%f8 %f2 %f2
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f0
	mul.s	%f10 %f2 %f2
	add.s	%f2 %f0 %f9
	ilw.s	%r0 %f0 l.65
	mul.s	%f8 %f0 %f2
	mul.s	%f10 %f9 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.66
	mul.s	%f8 %f2 %f2
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f2 %f9
	ilw.s	%r0 %f0 l.67
	mul.s	%f8 %f0 %f2
	mul.s	%f10 %f9 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.1015
branching_b.622 :
	neg.s	%f9 %f8
	ilw.s	%r0 %f0 l.60
	fbge	%f8 %f0 branching_b.623
tail_b.1012 :
	ilw.s	%r0 %f7 l.36
	ilw.s	%r0 %f2 l.29
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f10
	ilw.s	%r0 %f0 l.62
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.65
	mul.s	%f8 %f0 %f1
	mul.s	%f10 %f9 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.66
	mul.s	%f8 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.67
	mul.s	%f8 %f0 %f9
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.1015
branching_b.623 :
	ilw.s	%r0 %f0 l.61
	fbge	%f8 %f0 tail_b.1014
tail_b.1013 :
	ilw.s	%r0 %f0 l.34
	sub.s	%f0 %f8 %f1
	ilw.s	%r0 %f0 l.34
	add.s	%f0 %f8 %f0
	div.s	%f0 %f1 %f9
	ilw.s	%r0 %f0 l.36
	ilw.s	%r0 %f2 l.37
	neg.s	%f9 %f1
	mul.s	%f9 %f1 %f8
	ilw.s	%r0 %f1 l.62
	mul.s	%f9 %f1 %f1
	ilw.s	%r0 %f7 l.63
	mul.s	%f9 %f7 %f7
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f7 %f10
	ilw.s	%r0 %f1 l.64
	mul.s	%f9 %f1 %f7
	mul.s	%f8 %f10 %f1
	add.s	%f1 %f7 %f1
	ilw.s	%r0 %f7 l.65
	mul.s	%f9 %f7 %f7
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f7 %f7
	ilw.s	%r0 %f1 l.66
	mul.s	%f9 %f1 %f1
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f1 %f1
	ilw.s	%r0 %f7 l.67
	mul.s	%f9 %f7 %f7
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f7 %f1
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f9 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f0 %f1 %f0
	j	tail_b.1015
tail_b.1014 :
	ilw.s	%r0 %f0 l.34
	div.s	%f8 %f0 %f9
	ilw.s	%r0 %f1 l.34
	ilw.s	%r0 %f7 l.69
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f2
	ilw.s	%r0 %f0 l.62
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f0
	mul.s	%f2 %f8 %f8
	add.s	%f8 %f0 %f10
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f8
	mul.s	%f2 %f10 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f0
	mul.s	%f2 %f8 %f8
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f8 l.66
	mul.s	%f9 %f8 %f8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.67
	mul.s	%f9 %f0 %f10
	mul.s	%f2 %f8 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f1 %f0 %f0
tail_b.1015 :
	mul.s	%f3 %f0 %f0
	sw.s	%r26 %f0 -28
	sw.s	%r26 %f6 -24
	sw	%r26 %r1 -20
	sw.s	%r26 %f5 -16
	sw.s	%r26 %f3 -12
	sw.s	%r26 %f4 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	sin.0
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	mov.s	%f0 %f1
	lw.s	%r26 %f0 -28
	lw.s	%r26 %f6 -24
	lw	%r26 %r1 -20
	lw.s	%r26 %f5 -16
	lw.s	%r26 %f3 -12
	lw.s	%r26 %f4 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	sw.s	%r26 %f1 -28
	sw.s	%r26 %f6 -24
	sw	%r26 %r1 -20
	sw.s	%r26 %f5 -16
	sw.s	%r26 %f3 -12
	sw.s	%r26 %f4 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	cos.0
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	lw.s	%r26 %f1 -28
	lw.s	%r26 %f6 -24
	lw	%r26 %r1 -20
	lw.s	%r26 %f5 -16
	lw.s	%r26 %f3 -12
	lw.s	%r26 %f4 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	div.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	mov	%r1 %r2
	mov.s	%f5 %f1
	mov.s	%f0 %f2
	j	calc_dirvec_loop.0
calc_dirvecs.0 :
	mov	%r2 %r5
	mov	%r1 %r4
	mov.s	%f0 %f3
preloop_b.27 :
calc_dirvecs_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r4 branching_b.625
tail_b.1019 :
	j	postloop_b.27
branching_b.625 :
	mtc1	%r4 %f0
	ilw.s	%r0 %f1 l.66
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.74
	sub.s	%f1 %f0 %f2
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.29
	ilw.s	%r0 %f1 l.29
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw.s	%r26 %f3 -4
	sw	%r26 %r3 0
	mov	%r5 %r2
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	calc_dirvec.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw.s	%r26 %f3 -4
	lw	%r26 %r3 0
	mtc1	%r4 %f1
	ilw.s	%r0 %f0 l.66
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.58
	add.s	%f0 %f1 %f2
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.29
	ilw.s	%r0 %f1 l.29
	addi	%r3 %r2 2
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw.s	%r26 %f3 -4
	sw	%r26 %r3 0
	mov	%r2 %r3
	mov	%r5 %r2
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	calc_dirvec.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw.s	%r26 %f3 -4
	lw	%r26 %r3 0
	addi	%r4 %r2 -1
	addi	%r5 %r1 1
	addi	%r0 %r4 5
	ble	%r4 %r1 tail_b.1016
tail_b.1017 :
	j	tail_b.1018
tail_b.1016 :
	addi	%r1 %r1 -5
tail_b.1018 :
	mov	%r2 %r4
	mov	%r1 %r5
	j	calc_dirvecs_loop.0
postloop_b.27 :
return_point.29 :
	retl
calc_dirvec_rows.0 :
	mov	%r3 %r4
	mov	%r2 %r3
	mov	%r1 %r2
preloop_b.28 :
calc_dirvec_rows_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r2 branching_b.627
tail_b.1023 :
	j	postloop_b.28
branching_b.627 :
	mtc1	%r2 %f1
	ilw.s	%r0 %f0 l.66
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.74
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 4
	sw	%r26 %r4 -8
	sw	%r26 %r3 -4
	sw	%r26 %r2 0
	mov	%r3 %r2
	mov	%r4 %r3
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	calc_dirvecs.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	lw	%r26 %r4 -8
	lw	%r26 %r3 -4
	lw	%r26 %r2 0
	addi	%r2 %r2 -1
	addi	%r3 %r1 2
	addi	%r0 %r3 5
	ble	%r3 %r1 tail_b.1020
tail_b.1021 :
	j	tail_b.1022
tail_b.1020 :
	addi	%r1 %r1 -5
tail_b.1022 :
	addi	%r4 %r4 4
	mov	%r1 %r3
	j	calc_dirvec_rows_loop.0
postloop_b.28 :
return_point.30 :
	retl
create_dirvec_elements.0 :
	mov	%r2 %r4
	mov	%r1 %r3
preloop_b.29 :
create_dirvec_elements_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r4 tail_b.1024
tail_b.1025 :
	j	postloop_b.29
tail_b.1024 :
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	lw	%r0 %r1 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r27 %r5
	addi	%r27 %r27 8
	sw	%r5 %r1 4
	sw	%r5 %r2 0
	mov	%r5 %r2
	slli	%r4 %r1 2
	add	%r3 %r1 %r1
	sw	%r1 %r2 0
	addi	%r4 %r1 -1
	mov	%r1 %r4
	j	create_dirvec_elements_loop.0
postloop_b.29 :
return_point.31 :
	retl
create_dirvecs.0 :
	mov	%r1 %r2
preloop_b.30 :
create_dirvecs_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r2 tail_b.1026
tail_b.1027 :
	j	postloop_b.30
tail_b.1026 :
	addi	%r0 %r5 120
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.29
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r3
	lw	%r0 %r1 0
	sw	%r26 %r2 0
	mov	%r3 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r2 %r3
	lw	%r26 %r2 0
	mov	%r27 %r4
	addi	%r27 %r27 8
	sw	%r4 %r1 4
	sw	%r4 %r3 0
	mov	%r4 %r1
	sw	%r26 %r2 0
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r3
	lw	%r26 %r2 0
	slli	%r2 %r1 2
	addi	%r1 %r1 716
	sw	%r1 %r3 0
	slli	%r2 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r1 0
	addi	%r0 %r3 118
	sw	%r26 %r2 0
	mov	%r3 %r2
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	create_dirvec_elements.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r2 0
	addi	%r2 %r1 -1
	mov	%r1 %r2
	j	create_dirvecs_loop.0
postloop_b.30 :
return_point.32 :
	retl
init_dirvec_constants.0 :
	mov	%r1 %r4
preloop_b.31 :
init_dirvec_constants_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r2 tail_b.1028
tail_b.1029 :
	j	postloop_b.31
tail_b.1028 :
	slli	%r2 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r3 0
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r2 -4
	sw	%r26 %r4 0
	mov	%r1 %r2
	mov	%r3 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	iter_setup_dirvec_constants.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r2 -4
	lw	%r26 %r4 0
	addi	%r2 %r1 -1
	mov	%r1 %r2
	j	init_dirvec_constants_loop.0
postloop_b.31 :
return_point.33 :
	retl
init_vecset_constants.0 :
	mov	%r1 %r3
preloop_b.32 :
init_vecset_constants_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r3 tail_b.1030
tail_b.1031 :
	j	postloop_b.32
tail_b.1030 :
	slli	%r3 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r1 0
	addi	%r0 %r2 119
	sw	%r26 %r3 0
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	init_dirvec_constants.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	lw	%r26 %r3 0
	addi	%r3 %r1 -1
	mov	%r1 %r3
	j	init_vecset_constants_loop.0
postloop_b.32 :
return_point.34 :
	retl
#libraries
min_caml_create_array :
	bl	%r1 %r0 program_end
	mov	%r1 %r30
	mov	%r1 %r31
	mov	%r27 %r1
create_array_loop :
	beq     %r31 %r0 create_array_ret
	sw	%r27 %r2 0
	addi 	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_array_loop
create_array_ret :
	retl
min_caml_create_float_array :
	bl	%r1 %r0 program_end
	mov	%r1 %r30
	mov	%r1 %r31
	mov	%r27 %r1
create_float_array_loop :
	beq	%r31 %r0 create_float_array_ret
	sw.s	%r27 %f0 0
	addi	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_float_array_loop
create_float_array_ret :
	retl
