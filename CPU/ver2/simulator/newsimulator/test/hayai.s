#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
l.99 :	# -200.000000
	.float	0xc3480000
l.98 :	# 200.000000
	.float	0x43480000
l.97 :	# 128.000000
	.float	0x43000000
l.96 :	# 0.900000
	.float	0x3f666666
l.95 :	# 150.000000
	.float	0x43160000
l.94 :	# -150.000000
	.float	0xc3160000
l.93 :	# 0.100000
	.float	0x3dcccccd
l.92 :	# 0.300000
	.float	0x3e99999a
l.91 :	# 0.150000
	.float	0x3e19999a
l.90 :	# -1.570796
	.float	0xbfc90fdb
l.89 :	# 30.000000
	.float	0x41f00000
l.88 :	# 0.333333
	.float	0x3eaaaaaa
l.87 :	# 0.200000
	.float	0x3e4ccccd
l.86 :	# 0.142857
	.float	0x3e124925
l.85 :	# 0.111111
	.float	0x3de38e38
l.84 :	# 0.089764
	.float	0x3db7d66e
l.83 :	# 0.060035
	.float	0x3d75e7c5
l.82 :	# 2.437500
	.float	0x401c0000
l.81 :	# 0.437500
	.float	0x3ee00000
l.80 :	# -2.000000
	.float	0xc0000000
l.79 :	# 15.000000
	.float	0x41700000
l.78 :	# 0.003906
	.float	0x3b800000
l.77 :	# 0.000100
	.float	0x38d1b717
l.76 :	# 3.141593
	.float	0x40490fdb
l.75 :	# 0.250000
	.float	0x3e800000
l.74 :	# 10.000000
	.float	0x41200000
l.73 :	# 20.000000
	.float	0x41a00000
l.72 :	# 0.050000
	.float	0x3d4ccccd
l.71 :	# 100000000.000000
	.float	0x4cbebc20
l.70 :	# -0.100000
	.float	0xbdcccccd
l.69 :	# 0.010000
	.float	0x3c23d70a
l.68 :	# -0.200000
	.float	0xbe4ccccd
l.67 :	# 2.000000
	.float	0x40000000
l.66 :	# 0.017453
	.float	0x3c8efa35
l.65 :	# 0.166667
	.float	0x3e2aaaac
l.64 :	# 0.008333
	.float	0x3c088666
l.63 :	# 0.000196
	.float	0x394d64b6
l.62 :	# 0.500000
	.float	0x3f000000
l.61 :	# 0.041664
	.float	0x3d2aa789
l.60 :	# 0.001370
	.float	0x3ab38106
l.59 :	# 0.785398
	.float	0x3f490fdb
l.58 :	# -1.000000
	.float	0xbf800000
l.57 :	# 1.570796
	.float	0x3fc90fdb
l.56 :	# 1.000000
	.float	0x3f800000
l.55 :	# 6.283185
	.float	0x40c90fdb
l.54 :	# 3.141593
	.float	0x40490fdb
l.53 :	# 1000000000.000000
	.float	0x4e6e6b28
l.52 :	# 255.000000
	.float	0x437f0000
l.51 :	# 0.000000
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
	ilw.s	%r0 %f0 l.51
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
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 300
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 312
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 324
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.52
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
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 544
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 548
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.53
	jal	min_caml_create_float_array
	addi	%r0 %r1 552
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 564
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 568
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 580
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 592
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 604
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
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
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 636
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 648
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 660
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 672
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 684
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 696
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 708
	bne	%r1 %r27 program_end
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.51
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
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 736
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
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
	ilw.s	%r0 %f0 l.51
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
	ilw.s	%r0 %f0 l.51
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
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1752
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1764
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 1752
	jal	min_caml_create_array
	addi	%r0 %r1 1784
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1796
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1808
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1820
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
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
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1884
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 1872
	jal	min_caml_create_array
	addi	%r0 %r1 1904
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1916
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1928
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1940
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1952
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1964
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 1952
	jal	min_caml_create_array
	addi	%r0 %r1 1984
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1996
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2008
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2020
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2032
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2036
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2048
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2036
	jal	min_caml_create_array
	addi	%r0 %r1 2068
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2080
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2092
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2104
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
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
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2160
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2172
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2160
	jal	min_caml_create_array
	addi	%r0 %r1 2192
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2204
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2216
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2228
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
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
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2292
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2280
	jal	min_caml_create_array
	addi	%r0 %r1 2312
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2324
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2336
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2348
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2360
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2372
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2360
	jal	min_caml_create_array
	addi	%r0 %r1 2392
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2404
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2416
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2428
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2440
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2444
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2456
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2444
	jal	min_caml_create_array
	addi	%r0 %r1 2476
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2488
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2500
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2512
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
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
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2568
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2580
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2568
	jal	min_caml_create_array
	addi	%r0 %r1 2600
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2612
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2624
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2636
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
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
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2700
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2688
	jal	min_caml_create_array
	addi	%r0 %r1 2720
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2732
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2744
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2756
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2768
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2780
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2768
	jal	min_caml_create_array
	addi	%r0 %r1 2800
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2812
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2824
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2836
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2848
	bne	%r1 %r27 program_end
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2852
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2864
	bne	%r1 %r27 program_end
	addi	%r0 %r1 5
	addi	%r0 %r2 2852
	jal	min_caml_create_array
	addi	%r0 %r1 2884
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2896
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2908
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2920
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
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
preloop_b.96 :
	addi	%r0 %r2 128
	addi	%r0 %r1 128
	sw	%r0 %r2 616
	sw	%r0 %r1 620
	addi	%r0 %r1 64
	sw	%r0 %r1 624
	addi	%r0 %r1 64
	sw	%r0 %r1 628
	ilw.s	%r0 %f1 l.97
	mtc1	%r2 %f0
	div.s	%f0 %f1 %f0
	sw.s	%r0 %f0 632
	lw	%r0 %r3 616
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
	addi	%r0 %r2 2116
	mov	%r3 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r6
	lw	%r0 %r1 616
	addi	%r1 %r1 -2
	mov	%r1 %r5
init_line_elements_loop.3 :
	addi	%r0 %r1 0
	ble	%r1 %r5 tail_b.3395
tail_b.3396 :
	mov	%r6 %r4
	j	postloop_b.96
tail_b.3395 :
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r8
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r7
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r7 %r1 4
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r7 %r1 8
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r7 %r2 12
	sw	%r2 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r7 %r2 16
	sw	%r2 %r1 0
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r10
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r3
	addi	%r0 %r1 5
	sw	%r26 %r2 0
	mov	%r3 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r9
	lw	%r26 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r9 %r3 4
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r3
	addi	%r9 %r1 8
	sw	%r1 %r3 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r3
	addi	%r9 %r1 12
	sw	%r1 %r3 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r9 %r3 16
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r3
	addi	%r0 %r1 5
	sw	%r26 %r2 0
	mov	%r3 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r4
	lw	%r26 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r4 %r3 4
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r4 %r3 8
	sw	%r3 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r3
	addi	%r4 %r1 12
	sw	%r1 %r3 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r4 %r3 16
	sw	%r3 %r1 0
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	sw	%r26 %r2 0
	mov	%r3 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r3
	lw	%r26 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r0 %r11 5
	sw	%r26 %r2 0
	mov	%r1 %r2
	mov	%r11 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r11
	lw	%r26 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r11 %r12 4
	sw	%r12 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r12
	addi	%r11 %r1 8
	sw	%r1 %r12 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r11 %r12 12
	sw	%r12 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r12
	addi	%r11 %r1 16
	sw	%r1 %r12 0
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r11 28
	sw	%r1 %r3 24
	sw	%r1 %r4 20
	sw	%r1 %r9 16
	sw	%r1 %r2 12
	sw	%r1 %r10 8
	sw	%r1 %r7 4
	sw	%r1 %r8 0
	mov	%r1 %r2
	slli	%r5 %r1 2
	add	%r6 %r1 %r1
	sw	%r1 %r2 0
	addi	%r5 %r1 -1
	mov	%r1 %r5
	j	init_line_elements_loop.3
postloop_b.96 :
preloop_b.97 :
	lw	%r0 %r2 616
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
	addi	%r0 %r1 2524
	mov	%r2 %r31
	mov	%r1 %r2
	mov	%r31 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r3
	lw	%r0 %r1 616
	addi	%r1 %r1 -2
	mov	%r1 %r2
init_line_elements_loop.2 :
	addi	%r0 %r1 0
	ble	%r1 %r2 tail_b.3397
tail_b.3398 :
	j	postloop_b.97
tail_b.3397 :
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r6
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r0 %r5 5
	sw	%r26 %r2 0
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r7
	lw	%r26 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r7 %r5 4
	sw	%r5 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r7 %r5 8
	sw	%r5 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r5
	addi	%r7 %r1 12
	sw	%r1 %r5 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r7 %r5 16
	sw	%r5 %r1 0
	addi	%r0 %r5 5
	addi	%r0 %r1 0
	sw	%r26 %r2 0
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r9
	lw	%r26 %r2 0
	addi	%r0 %r5 5
	addi	%r0 %r1 0
	sw	%r26 %r2 0
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r8
	lw	%r26 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r5
	addi	%r0 %r1 5
	sw	%r26 %r2 0
	mov	%r5 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r10
	lw	%r26 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r5
	addi	%r10 %r1 4
	sw	%r1 %r5 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r5
	addi	%r10 %r1 8
	sw	%r1 %r5 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r5
	addi	%r10 %r1 12
	sw	%r1 %r5 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r10 %r5 16
	sw	%r5 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r0 %r5 5
	sw	%r26 %r2 0
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r11
	lw	%r26 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r5
	addi	%r11 %r1 4
	sw	%r1 %r5 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r11 %r5 8
	sw	%r5 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r5
	addi	%r11 %r1 12
	sw	%r1 %r5 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r11 %r5 16
	sw	%r5 %r1 0
	addi	%r0 %r5 1
	addi	%r0 %r1 0
	sw	%r26 %r2 0
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r12
	lw	%r26 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r0 %r5 5
	sw	%r26 %r2 0
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r5
	lw	%r26 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r5 %r13 4
	sw	%r13 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r5 %r13 8
	sw	%r13 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r5 %r13 12
	sw	%r13 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r13
	addi	%r5 %r1 16
	sw	%r1 %r13 0
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r5 28
	sw	%r1 %r12 24
	sw	%r1 %r11 20
	sw	%r1 %r10 16
	sw	%r1 %r8 12
	sw	%r1 %r9 8
	sw	%r1 %r7 4
	sw	%r1 %r6 0
	mov	%r1 %r5
	slli	%r2 %r1 2
	add	%r3 %r1 %r1
	sw	%r1 %r5 0
	addi	%r2 %r1 -1
	mov	%r1 %r2
	j	init_line_elements_loop.2
postloop_b.97 :
preloop_b.98 :
	lw	%r0 %r2 616
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
	addi	%r0 %r1 2932
	mov	%r2 %r31
	mov	%r1 %r2
	mov	%r31 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r8
	lw	%r0 %r1 616
	addi	%r1 %r1 -2
	mov	%r1 %r9
init_line_elements_loop.1 :
	addi	%r0 %r1 0
	ble	%r1 %r9 tail_b.3399
tail_b.3400 :
	mov	%r8 %r6
	j	postloop_b.98
tail_b.3399 :
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r10
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r11
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r11 %r2 4
	sw	%r2 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r11 %r1 8
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r11 %r1 12
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r11 %r1 16
	sw	%r1 %r2 0
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r12
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r7
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r6
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r6 %r1 4
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r6 %r2 8
	sw	%r2 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r6 %r2 12
	sw	%r2 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r6 %r1 16
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r13
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r13 %r1 4
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r13 %r2 8
	sw	%r2 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r13 %r2 12
	sw	%r2 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r13 %r2 16
	sw	%r2 %r1 0
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r0 %r5 5
	sw	%r26 %r1 0
	mov	%r5 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r14
	lw	%r26 %r1 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r5
	lw	%r26 %r1 0
	addi	%r14 %r2 4
	sw	%r2 %r5 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r14 %r5 8
	sw	%r5 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r14 %r5 12
	sw	%r5 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r5
	lw	%r26 %r1 0
	addi	%r14 %r2 16
	sw	%r2 %r5 0
	mov	%r27 %r2
	addi	%r27 %r27 32
	sw	%r2 %r14 28
	sw	%r2 %r1 24
	sw	%r2 %r13 20
	sw	%r2 %r6 16
	sw	%r2 %r7 12
	sw	%r2 %r12 8
	sw	%r2 %r11 4
	sw	%r2 %r10 0
	slli	%r9 %r1 2
	add	%r8 %r1 %r1
	sw	%r1 %r2 0
	addi	%r9 %r1 -1
	mov	%r1 %r9
	j	init_line_elements_loop.1
postloop_b.98 :
preloop_b.99 :
	fin	%f0
	sw.s	%r0 %f0 288
	fin	%f0
	sw.s	%r0 %f0 292
	fin	%f0
	sw.s	%r0 %f0 296
	fin	%f0
	ilw.s	%r0 %f2 l.66
	mul.s	%f2 %f0 %f5
	mov.s	%f5 %f3
cos_loop.4 :
	ilw.s	%r0 %f0 l.54
	ilw.s	%r0 %f4 l.55
	fbg	%f4 %f3 branching_b.2148
tail_b.3401 :
	sub.s	%f4 %f3 %f0
	mov.s	%f0 %f3
	j	cos_loop.4
branching_b.2148 :
	ilw.s	%r0 %f1 l.51
	fbge	%f3 %f1 branching_b.2149
tail_b.3402 :
	add.s	%f4 %f3 %f0
	mov.s	%f0 %f3
	j	cos_loop.4
branching_b.2149 :
	fbg	%f0 %f3 branching_b.2153
branching_b.2150 :
	sub.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.58
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f3 branching_b.2152
branching_b.2151 :
	sub.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.56
	ilw.s	%r0 %f4 l.59
	fbg	%f0 %f4 tail_b.3404
tail_b.3403 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f3 %f0 %f4
	j	postloop_b.99
tail_b.3404 :
	sub.s	%f0 %f1 %f4
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f4 %f3 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f4
	j	postloop_b.99
branching_b.2152 :
	ilw.s	%r0 %f0 l.59
	fbg	%f3 %f0 tail_b.3406
tail_b.3405 :
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.99
tail_b.3406 :
	sub.s	%f3 %f1 %f6
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f7
	mul.s	%f3 %f1 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f1
	mul.s	%f3 %f7 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.56
	mul.s	%f6 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.99
branching_b.2153 :
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f7 l.57
	fbg	%f7 %f3 branching_b.2155
branching_b.2154 :
	sub.s	%f3 %f0 %f0
	ilw.s	%r0 %f4 l.58
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.3408
tail_b.3407 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f3 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.99
tail_b.3408 :
	sub.s	%f0 %f7 %f3
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f3 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f3 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f3 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f3 %f6 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.99
branching_b.2155 :
	ilw.s	%r0 %f0 l.59
	fbg	%f3 %f0 tail_b.3410
tail_b.3409 :
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f3 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f4
	j	postloop_b.99
tail_b.3410 :
	sub.s	%f3 %f7 %f3
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.63
	mul.s	%f3 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f3 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f3 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f6 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f4
postloop_b.99 :
preloop_b.100 :
	mov.s	%f5 %f6
sin_loop.4 :
	ilw.s	%r0 %f0 l.54
	ilw.s	%r0 %f3 l.55
	fbg	%f3 %f6 branching_b.2157
tail_b.3411 :
	sub.s	%f3 %f6 %f0
	mov.s	%f0 %f6
	j	sin_loop.4
branching_b.2157 :
	ilw.s	%r0 %f1 l.51
	fbge	%f6 %f1 branching_b.2158
tail_b.3412 :
	add.s	%f3 %f6 %f0
	mov.s	%f0 %f6
	j	sin_loop.4
branching_b.2158 :
	fbg	%f0 %f6 branching_b.2162
branching_b.2159 :
	sub.s	%f0 %f6 %f3
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f3 branching_b.2161
branching_b.2160 :
	sub.s	%f3 %f0 %f6
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.3414
tail_b.3413 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f3
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f7
	mul.s	%f5 %f3 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f3 l.65
	mul.s	%f6 %f3 %f3
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.56
	mul.s	%f6 %f3 %f3
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f5
	j	postloop_b.100
tail_b.3414 :
	sub.s	%f6 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.56
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f5
	j	postloop_b.100
branching_b.2161 :
	ilw.s	%r0 %f0 l.59
	fbg	%f3 %f0 tail_b.3416
tail_b.3415 :
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f3 %f0 %f6
	ilw.s	%r0 %f0 l.64
	mul.s	%f3 %f0 %f7
	mul.s	%f5 %f6 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f6 l.65
	mul.s	%f3 %f6 %f6
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.56
	mul.s	%f3 %f0 %f0
	mul.s	%f5 %f6 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f1 %f0 %f5
	j	postloop_b.100
tail_b.3416 :
	sub.s	%f3 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f3 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.56
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f1 %f0 %f5
	j	postloop_b.100
branching_b.2162 :
	ilw.s	%r0 %f3 l.56
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f6 branching_b.2164
branching_b.2163 :
	sub.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.3418
tail_b.3417 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.65
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f3 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f3 %f0 %f5
	j	postloop_b.100
tail_b.3418 :
	sub.s	%f6 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f1
	ilw.s	%r0 %f5 l.62
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f3 %f0 %f5
	j	postloop_b.100
branching_b.2164 :
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.3420
tail_b.3419 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.65
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f3 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f3 %f0 %f5
	j	postloop_b.100
tail_b.3420 :
	sub.s	%f6 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f3 %f0 %f5
postloop_b.100 :
preloop_b.101 :
	fin	%f0
	mul.s	%f2 %f0 %f6
	mov.s	%f6 %f0
cos_loop.3 :
	ilw.s	%r0 %f3 l.54
	ilw.s	%r0 %f7 l.55
	fbg	%f7 %f0 branching_b.2166
tail_b.3421 :
	sub.s	%f7 %f0 %f0
	j	cos_loop.3
branching_b.2166 :
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 branching_b.2167
tail_b.3422 :
	add.s	%f7 %f0 %f0
	j	cos_loop.3
branching_b.2167 :
	fbg	%f3 %f0 branching_b.2171
branching_b.2168 :
	sub.s	%f3 %f0 %f0
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f8 l.57
	fbg	%f8 %f0 branching_b.2170
branching_b.2169 :
	sub.s	%f0 %f3 %f0
	ilw.s	%r0 %f1 l.56
	ilw.s	%r0 %f3 l.59
	fbg	%f0 %f3 tail_b.3424
tail_b.3423 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f7 l.60
	ilw.s	%r0 %f3 l.61
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f3 %f7
	ilw.s	%r0 %f3 l.62
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f3 %f3
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f1 %f0 %f7
	j	postloop_b.101
tail_b.3424 :
	sub.s	%f0 %f8 %f7
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f3
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f9
	mul.s	%f8 %f3 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f1 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f7
	j	postloop_b.101
branching_b.2170 :
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.3426
tail_b.3425 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f7
	j	postloop_b.101
tail_b.3426 :
	sub.s	%f0 %f8 %f8
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f8 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f8 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f8 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f7
	j	postloop_b.101
branching_b.2171 :
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f0 branching_b.2173
branching_b.2172 :
	sub.s	%f0 %f3 %f3
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f0 l.59
	fbg	%f3 %f0 tail_b.3428
tail_b.3427 :
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f3 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f7
	j	postloop_b.101
tail_b.3428 :
	sub.s	%f3 %f1 %f10
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f10 %f1 %f3
	ilw.s	%r0 %f1 l.64
	mul.s	%f10 %f1 %f9
	mul.s	%f0 %f3 %f1
	add.s	%f1 %f9 %f1
	ilw.s	%r0 %f3 l.65
	mul.s	%f10 %f3 %f3
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f3
	mul.s	%f10 %f7 %f1
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f7
	j	postloop_b.101
branching_b.2173 :
	ilw.s	%r0 %f3 l.59
	fbg	%f0 %f3 tail_b.3430
tail_b.3429 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f7
	j	postloop_b.101
tail_b.3430 :
	sub.s	%f0 %f1 %f8
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f3
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.65
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f8 %f7 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f7
postloop_b.101 :
preloop_b.102 :
	mov.s	%f6 %f9
sin_loop.3 :
	ilw.s	%r0 %f0 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f9 branching_b.2175
tail_b.3431 :
	sub.s	%f1 %f9 %f0
	mov.s	%f0 %f9
	j	sin_loop.3
branching_b.2175 :
	ilw.s	%r0 %f3 l.51
	fbge	%f9 %f3 branching_b.2176
tail_b.3432 :
	add.s	%f1 %f9 %f0
	mov.s	%f0 %f9
	j	sin_loop.3
branching_b.2176 :
	fbg	%f0 %f9 branching_b.2180
branching_b.2177 :
	sub.s	%f0 %f9 %f1
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f3 l.57
	fbg	%f3 %f1 branching_b.2179
branching_b.2178 :
	sub.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.59
	fbg	%f9 %f0 tail_b.3434
tail_b.3433 :
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f1
	mul.s	%f3 %f8 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f9 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f8
	ilw.s	%r0 %f0 l.56
	mul.s	%f9 %f0 %f1
	mul.s	%f3 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f6
	j	postloop_b.102
tail_b.3434 :
	sub.s	%f9 %f3 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f6
	j	postloop_b.102
branching_b.2179 :
	ilw.s	%r0 %f0 l.59
	fbg	%f1 %f0 tail_b.3436
tail_b.3435 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f3
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.56
	mul.s	%f1 %f3 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f6
	j	postloop_b.102
tail_b.3436 :
	sub.s	%f1 %f3 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f3 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.56
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f6
	j	postloop_b.102
branching_b.2180 :
	ilw.s	%r0 %f3 l.56
	ilw.s	%r0 %f6 l.57
	fbg	%f6 %f9 branching_b.2182
branching_b.2181 :
	sub.s	%f9 %f0 %f0
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.3438
tail_b.3437 :
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f8
	ilw.s	%r0 %f1 l.63
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f6 l.64
	mul.s	%f0 %f6 %f6
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f6 %f1
	ilw.s	%r0 %f6 l.65
	mul.s	%f0 %f6 %f6
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f6 %f1
	mul.s	%f0 %f3 %f6
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f3 %f0 %f6
	j	postloop_b.102
tail_b.3438 :
	sub.s	%f0 %f6 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f6 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f3 %f0 %f6
	j	postloop_b.102
branching_b.2182 :
	ilw.s	%r0 %f0 l.59
	fbg	%f9 %f0 tail_b.3440
tail_b.3439 :
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f8
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f8 %f6
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f8
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f8 %f6
	mul.s	%f9 %f3 %f0
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f6
	j	postloop_b.102
tail_b.3440 :
	sub.s	%f9 %f6 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f6 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f3 %f0 %f6
postloop_b.102 :
preloop_b.103 :
	mul.s	%f6 %f4 %f0
	ilw.s	%r0 %f1 l.98
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 684
	ilw.s	%r0 %f0 l.99
	mul.s	%f0 %f5 %f0
	sw.s	%r0 %f0 688
	mul.s	%f7 %f4 %f0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 692
	sw.s	%r0 %f7 660
	ilw.s	%r0 %f3 l.51
	sw.s	%r0 %f3 664
	neg.s	%f6 %f0
	sw.s	%r0 %f0 668
	neg.s	%f5 %f0
	mul.s	%f6 %f0 %f0
	sw.s	%r0 %f0 672
	neg.s	%f4 %f0
	sw.s	%r0 %f0 676
	neg.s	%f5 %f0
	mul.s	%f7 %f0 %f0
	sw.s	%r0 %f0 680
	lw.s	%r0 %f1 288
	lw.s	%r0 %f0 684
	sub.s	%f0 %f1 %f0
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
	mul.s	%f2 %f0 %f4
	mov.s	%f4 %f5
sin_loop.2 :
	ilw.s	%r0 %f0 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f5 branching_b.2184
tail_b.3441 :
	sub.s	%f1 %f5 %f0
	mov.s	%f0 %f5
	j	sin_loop.2
branching_b.2184 :
	fbge	%f5 %f3 branching_b.2185
tail_b.3442 :
	add.s	%f1 %f5 %f0
	mov.s	%f0 %f5
	j	sin_loop.2
branching_b.2185 :
	fbg	%f0 %f5 branching_b.2189
branching_b.2186 :
	sub.s	%f0 %f5 %f7
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f7 branching_b.2188
branching_b.2187 :
	sub.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.3444
tail_b.3443 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f5 %f0 %f1
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f5 %f0 %f8
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f8 %f1
	ilw.s	%r0 %f0 l.56
	mul.s	%f5 %f0 %f5
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.103
tail_b.3444 :
	sub.s	%f5 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.103
branching_b.2188 :
	ilw.s	%r0 %f0 l.59
	fbg	%f7 %f0 tail_b.3446
tail_b.3445 :
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f5
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f5 %f8
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f5
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.56
	mul.s	%f7 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.103
tail_b.3446 :
	sub.s	%f7 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f5 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f1 %f1
	ilw.s	%r0 %f5 l.62
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f5
	ilw.s	%r0 %f1 l.56
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.103
branching_b.2189 :
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f5 branching_b.2191
branching_b.2190 :
	sub.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.3448
tail_b.3447 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f7
	ilw.s	%r0 %f0 l.64
	mul.s	%f5 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.65
	mul.s	%f5 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f5 %f6 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.103
tail_b.3448 :
	sub.s	%f5 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f5 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.103
branching_b.2191 :
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.3450
tail_b.3449 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f5 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f5 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f6 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.103
tail_b.3450 :
	sub.s	%f5 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f0
postloop_b.103 :
preloop_b.104 :
	neg.s	%f0 %f0
	sw.s	%r0 %f0 316
	fin	%f0
	mul.s	%f2 %f0 %f6
	mov.s	%f4 %f0
cos_loop.2 :
	ilw.s	%r0 %f7 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f0 branching_b.2193
tail_b.3451 :
	sub.s	%f1 %f0 %f0
	j	cos_loop.2
branching_b.2193 :
	fbge	%f0 %f3 branching_b.2194
tail_b.3452 :
	add.s	%f1 %f0 %f0
	j	cos_loop.2
branching_b.2194 :
	fbg	%f7 %f0 branching_b.2198
branching_b.2195 :
	sub.s	%f7 %f0 %f0
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f0 branching_b.2197
branching_b.2196 :
	sub.s	%f0 %f7 %f4
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f0 l.59
	fbg	%f4 %f0 tail_b.3454
tail_b.3453 :
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f4
	j	postloop_b.104
tail_b.3454 :
	sub.s	%f4 %f1 %f1
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f4
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f0 %f4
	mul.s	%f1 %f7 %f0
	mul.s	%f5 %f4 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f4
	j	postloop_b.104
branching_b.2197 :
	ilw.s	%r0 %f4 l.59
	fbg	%f0 %f4 tail_b.3456
tail_b.3455 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f4 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.56
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f5 %f0 %f4
	j	postloop_b.104
tail_b.3456 :
	sub.s	%f0 %f1 %f7
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f7 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.56
	mul.s	%f7 %f0 %f7
	mul.s	%f4 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f4
	j	postloop_b.104
branching_b.2198 :
	ilw.s	%r0 %f4 l.56
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f0 branching_b.2200
branching_b.2199 :
	sub.s	%f0 %f7 %f0
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f7 l.59
	fbg	%f0 %f7 tail_b.3458
tail_b.3457 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f5 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f1 %f0 %f4
	j	postloop_b.104
tail_b.3458 :
	sub.s	%f0 %f5 %f0
	mul.s	%f0 %f0 %f5
	neg.s	%f5 %f8
	ilw.s	%r0 %f5 l.63
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f7 l.64
	mul.s	%f0 %f7 %f7
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f7 %f7
	ilw.s	%r0 %f5 l.65
	mul.s	%f0 %f5 %f5
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f5 %f5
	mul.s	%f0 %f4 %f4
	mul.s	%f8 %f5 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f1 %f0 %f4
	j	postloop_b.104
branching_b.2200 :
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.3460
tail_b.3459 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.104
tail_b.3460 :
	sub.s	%f0 %f5 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f7
	ilw.s	%r0 %f1 l.63
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f5 l.64
	mul.s	%f0 %f5 %f5
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f5 %f1
	ilw.s	%r0 %f5 l.65
	mul.s	%f0 %f5 %f5
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f0 %f4 %f5
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f4 %f0 %f4
postloop_b.104 :
preloop_b.105 :
	mov.s	%f6 %f9
sin_loop.1 :
	ilw.s	%r0 %f8 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f9 branching_b.2202
tail_b.3461 :
	sub.s	%f0 %f9 %f0
	mov.s	%f0 %f9
	j	sin_loop.1
branching_b.2202 :
	fbge	%f9 %f3 branching_b.2203
tail_b.3462 :
	add.s	%f0 %f9 %f0
	mov.s	%f0 %f9
	j	sin_loop.1
branching_b.2203 :
	fbg	%f8 %f9 branching_b.2207
branching_b.2204 :
	sub.s	%f8 %f9 %f7
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f7 branching_b.2206
branching_b.2205 :
	sub.s	%f7 %f8 %f1
	ilw.s	%r0 %f7 l.59
	fbg	%f1 %f7 tail_b.3464
tail_b.3463 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f7
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f9
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f9 %f7
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f9
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f9 %f7
	ilw.s	%r0 %f0 l.56
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f7 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.105
tail_b.3464 :
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.105
branching_b.2206 :
	ilw.s	%r0 %f1 l.59
	fbg	%f7 %f1 tail_b.3466
tail_b.3465 :
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f8
	mul.s	%f1 %f9 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.56
	mul.s	%f7 %f8 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.105
tail_b.3466 :
	sub.s	%f7 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.105
branching_b.2207 :
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f9 branching_b.2209
branching_b.2208 :
	sub.s	%f9 %f8 %f5
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.3468
tail_b.3467 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f7 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.105
tail_b.3468 :
	sub.s	%f5 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f1
	ilw.s	%r0 %f5 l.62
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.105
branching_b.2209 :
	ilw.s	%r0 %f0 l.59
	fbg	%f9 %f0 tail_b.3470
tail_b.3469 :
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f5
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.65
	mul.s	%f9 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f9 %f7 %f0
	mul.s	%f1 %f5 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.105
tail_b.3470 :
	sub.s	%f9 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f0
postloop_b.105 :
preloop_b.106 :
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 312
cos_loop.1 :
	ilw.s	%r0 %f1 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f6 branching_b.2211
tail_b.3471 :
	sub.s	%f0 %f6 %f0
	mov.s	%f0 %f6
	j	cos_loop.1
branching_b.2211 :
	fbge	%f6 %f3 branching_b.2212
tail_b.3472 :
	add.s	%f0 %f6 %f0
	mov.s	%f0 %f6
	j	cos_loop.1
branching_b.2212 :
	fbg	%f1 %f6 branching_b.2216
branching_b.2213 :
	sub.s	%f1 %f6 %f5
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f5 branching_b.2215
branching_b.2214 :
	sub.s	%f5 %f1 %f5
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f1 l.59
	fbg	%f5 %f1 tail_b.3474
tail_b.3473 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.106
tail_b.3474 :
	sub.s	%f5 %f0 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f5
	ilw.s	%r0 %f1 l.63
	mul.s	%f0 %f1 %f7
	ilw.s	%r0 %f1 l.64
	mul.s	%f0 %f1 %f8
	mul.s	%f5 %f7 %f1
	add.s	%f1 %f8 %f7
	ilw.s	%r0 %f1 l.65
	mul.s	%f0 %f1 %f8
	mul.s	%f5 %f7 %f1
	add.s	%f1 %f8 %f1
	mul.s	%f0 %f6 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.106
branching_b.2215 :
	ilw.s	%r0 %f1 l.59
	fbg	%f5 %f1 tail_b.3476
tail_b.3475 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.56
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.106
tail_b.3476 :
	sub.s	%f5 %f0 %f7
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f8
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f1
	mul.s	%f5 %f8 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.106
branching_b.2216 :
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f6 branching_b.2218
branching_b.2217 :
	sub.s	%f6 %f1 %f6
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.3478
tail_b.3477 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f6 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f5 %f5
	ilw.s	%r0 %f6 l.62
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.106
tail_b.3478 :
	sub.s	%f6 %f5 %f9
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f6
	mul.s	%f5 %f8 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f8
	mul.s	%f5 %f6 %f0
	add.s	%f0 %f8 %f6
	mul.s	%f9 %f7 %f0
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.106
branching_b.2218 :
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.3480
tail_b.3479 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f5 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f1 %f5
	ilw.s	%r0 %f1 l.62
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f1 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.106
tail_b.3480 :
	sub.s	%f6 %f5 %f5
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f5 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f7 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
postloop_b.106 :
preloop_b.107 :
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 320
	fin	%f0
	sw.s	%r0 %f0 324
	addi	%r0 %r5 0
	mov	%r5 %r7
read_object_loop.1 :
	addi	%r0 %r1 60
	bl	%r7 %r1 branching_b.2220
tail_b.3536 :
	j	postloop_b.107
branching_b.2220 :
	in	%r14
	addi	%r0 %r1 -1
	bne	%r14 %r1 branching_b.2221
tail_b.3533 :
	addi	%r0 %r1 0
	j	branching_b.2249
branching_b.2221 :
	in	%r13
	in	%r15
	in	%r9
	addi	%r0 %r12 3
	ilw.s	%r0 %f0 l.51
	mov	%r12 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r10
	mov	%r30 %r12
	fin	%f0
	mov	%r10 %r1
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r10 %r1 4
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r10 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r16
	fin	%f0
	mov	%r16 %r1
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r16 %r1 4
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r16 %r1 8
	sw.s	%r1 %f0 0
	fin	%f0
	fbge	%f0 %f3 tail_b.3482
tail_b.3481 :
	addi	%r0 %r2 1
	j	branching_b.2222
tail_b.3482 :
	addi	%r0 %r2 0
branching_b.2222 :
	addi	%r0 %r17 2
	ilw.s	%r0 %f0 l.51
	mov	%r17 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r18
	mov	%r30 %r17
	fin	%f0
	mov	%r18 %r1
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r18 %r1 4
	sw.s	%r1 %f0 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r8
	fin	%f0
	mov	%r8 %r1
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r8 %r1 4
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r8 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r11
	bne	%r9 %r5 tail_b.3483
tail_b.3484 :
	j	branching_b.2223
tail_b.3483 :
	fin	%f0
	mul.s	%f2 %f0 %f0
	mov	%r11 %r1
	sw.s	%r1 %f0 0
	fin	%f0
	mul.s	%f2 %f0 %f0
	addi	%r11 %r1 4
	sw.s	%r1 %f0 0
	fin	%f0
	mul.s	%f2 %f0 %f0
	addi	%r11 %r1 8
	sw.s	%r1 %f0 0
branching_b.2223 :
	beq	%r13 %r17 tail_b.3485
tail_b.3486 :
	mov	%r2 %r19
	j	branching_b.2224
tail_b.3485 :
	addi	%r0 %r19 1
branching_b.2224 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r27 %r20
	addi	%r27 %r27 44
	sw	%r20 %r1 40
	sw	%r20 %r11 36
	sw	%r20 %r8 32
	sw	%r20 %r18 28
	sw	%r20 %r19 24
	sw	%r20 %r16 20
	sw	%r20 %r10 16
	sw	%r20 %r9 12
	sw	%r20 %r15 8
	sw	%r20 %r13 4
	sw	%r20 %r14 0
	mov	%r20 %r1
	slli	%r7 %r8 2
	addi	%r8 %r8 48
	sw	%r8 %r1 0
	beq	%r13 %r12 branching_b.2225
branching_b.2243 :
	beq	%r13 %r17 branching_b.2244
tail_b.3529 :
	j	branching_b.2248
branching_b.2244 :
	beq	%r2 %r5 tail_b.3521
tail_b.3522 :
	addi	%r0 %r2 0
	j	branching_b.2245
tail_b.3521 :
	addi	%r0 %r2 1
	j	branching_b.2245
branching_b.2225 :
	mov	%r10 %r1
	lw.s	%r1 %f1 0
	fbne	%f1 %f3 tail_b.3488
tail_b.3487 :
	addi	%r0 %r1 1
	j	branching_b.2226
tail_b.3488 :
	addi	%r0 %r1 0
branching_b.2226 :
	beq	%r1 %r5 branching_b.2227
tail_b.3497 :
	ilw.s	%r0 %f0 l.51
	j	branching_b.2231
branching_b.2227 :
	fbne	%f1 %f3 tail_b.3490
tail_b.3489 :
	addi	%r0 %r1 1
	j	branching_b.2228
tail_b.3490 :
	addi	%r0 %r1 0
branching_b.2228 :
	beq	%r1 %r5 branching_b.2229
tail_b.3495 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.3496
branching_b.2229 :
	fbge	%f3 %f1 tail_b.3492
tail_b.3491 :
	addi	%r0 %r1 1
	j	branching_b.2230
tail_b.3492 :
	addi	%r0 %r1 0
branching_b.2230 :
	beq	%r1 %r5 tail_b.3493
tail_b.3494 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.3496
tail_b.3493 :
	ilw.s	%r0 %f0 l.58
tail_b.3496 :
	mul.s	%f1 %f1 %f1
	div.s	%f1 %f0 %f0
branching_b.2231 :
	mov	%r10 %r1
	sw.s	%r1 %f0 0
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3499
tail_b.3498 :
	addi	%r0 %r1 1
	j	branching_b.2232
tail_b.3499 :
	addi	%r0 %r1 0
branching_b.2232 :
	beq	%r1 %r5 branching_b.2233
tail_b.3508 :
	ilw.s	%r0 %f0 l.51
	j	branching_b.2237
branching_b.2233 :
	fbne	%f0 %f3 tail_b.3501
tail_b.3500 :
	addi	%r0 %r1 1
	j	branching_b.2234
tail_b.3501 :
	addi	%r0 %r1 0
branching_b.2234 :
	beq	%r1 %r5 branching_b.2235
tail_b.3506 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.3507
branching_b.2235 :
	fbge	%f3 %f0 tail_b.3503
tail_b.3502 :
	addi	%r0 %r1 1
	j	branching_b.2236
tail_b.3503 :
	addi	%r0 %r1 0
branching_b.2236 :
	beq	%r1 %r5 tail_b.3504
tail_b.3505 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.3507
tail_b.3504 :
	ilw.s	%r0 %f1 l.58
tail_b.3507 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
branching_b.2237 :
	addi	%r10 %r1 4
	sw.s	%r1 %f0 0
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3510
tail_b.3509 :
	addi	%r0 %r1 1
	j	branching_b.2238
tail_b.3510 :
	addi	%r0 %r1 0
branching_b.2238 :
	beq	%r1 %r5 branching_b.2239
tail_b.3519 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.3520
branching_b.2239 :
	fbne	%f0 %f3 tail_b.3512
tail_b.3511 :
	addi	%r0 %r1 1
	j	branching_b.2240
tail_b.3512 :
	addi	%r0 %r1 0
branching_b.2240 :
	beq	%r1 %r5 branching_b.2241
tail_b.3517 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.3518
branching_b.2241 :
	fbge	%f3 %f0 tail_b.3514
tail_b.3513 :
	addi	%r0 %r1 1
	j	branching_b.2242
tail_b.3514 :
	addi	%r0 %r1 0
branching_b.2242 :
	beq	%r1 %r5 tail_b.3515
tail_b.3516 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.3518
tail_b.3515 :
	ilw.s	%r0 %f1 l.58
tail_b.3518 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
tail_b.3520 :
	addi	%r10 %r1 8
	sw.s	%r1 %f0 0
	j	branching_b.2248
branching_b.2245 :
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f0 %f1
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f3 tail_b.3524
tail_b.3523 :
	addi	%r0 %r1 1
	j	branching_b.2246
tail_b.3524 :
	addi	%r0 %r1 0
branching_b.2246 :
	beq	%r1 %r5 branching_b.2247
tail_b.3527 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.3528
branching_b.2247 :
	beq	%r2 %r5 tail_b.3525
tail_b.3526 :
	ilw.s	%r0 %f1 l.58
	div.s	%f0 %f1 %f0
	j	tail_b.3528
tail_b.3525 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f0
tail_b.3528 :
	mov	%r10 %r1
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	mov	%r10 %r1
	sw.s	%r1 %f1 0
	addi	%r10 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r10 %r1 4
	sw.s	%r1 %f1 0
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r10 %r1 8
	sw.s	%r1 %f0 0
branching_b.2248 :
	bne	%r9 %r5 tail_b.3530
tail_b.3531 :
	j	tail_b.3532
tail_b.3530 :
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	sw.s	%r26 %f3 -32
	sw.s	%r26 %f2 -28
	sw	%r26 %r6 -24
	sw	%r26 %r3 -20
	sw	%r26 %r11 -16
	sw	%r26 %r10 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	cos.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	mov.s	%f0 %f7
	lw.s	%r26 %f3 -32
	lw.s	%r26 %f2 -28
	lw	%r26 %r6 -24
	lw	%r26 %r3 -20
	lw	%r26 %r11 -16
	lw	%r26 %r10 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	sw.s	%r26 %f3 -36
	sw.s	%r26 %f2 -32
	sw	%r26 %r6 -28
	sw	%r26 %r3 -24
	sw.s	%r26 %f7 -20
	sw	%r26 %r11 -16
	sw	%r26 %r10 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	sin.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw.s	%r26 %f3 -36
	lw.s	%r26 %f2 -32
	lw	%r26 %r6 -28
	lw	%r26 %r3 -24
	lw.s	%r26 %f7 -20
	lw	%r26 %r11 -16
	lw	%r26 %r10 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	addi	%r11 %r1 4
	lw.s	%r1 %f1 0
	sw.s	%r26 %f3 -40
	sw.s	%r26 %f2 -36
	sw	%r26 %r6 -32
	sw	%r26 %r3 -28
	sw.s	%r26 %f0 -24
	sw.s	%r26 %f7 -20
	sw	%r26 %r11 -16
	sw	%r26 %r10 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	cos.0
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	mov.s	%f0 %f6
	lw.s	%r26 %f3 -40
	lw.s	%r26 %f2 -36
	lw	%r26 %r6 -32
	lw	%r26 %r3 -28
	lw.s	%r26 %f0 -24
	lw.s	%r26 %f7 -20
	lw	%r26 %r11 -16
	lw	%r26 %r10 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	addi	%r11 %r1 4
	lw.s	%r1 %f1 0
	sw.s	%r26 %f3 -44
	sw.s	%r26 %f2 -40
	sw	%r26 %r6 -36
	sw	%r26 %r3 -32
	sw.s	%r26 %f6 -28
	sw.s	%r26 %f0 -24
	sw.s	%r26 %f7 -20
	sw	%r26 %r11 -16
	sw	%r26 %r10 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	sin.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	mov.s	%f0 %f14
	lw.s	%r26 %f3 -44
	lw.s	%r26 %f2 -40
	lw	%r26 %r6 -36
	lw	%r26 %r3 -32
	lw.s	%r26 %f6 -28
	lw.s	%r26 %f0 -24
	lw.s	%r26 %f7 -20
	lw	%r26 %r11 -16
	lw	%r26 %r10 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	addi	%r11 %r1 8
	lw.s	%r1 %f1 0
	sw.s	%r26 %f3 -48
	sw.s	%r26 %f2 -44
	sw	%r26 %r6 -40
	sw	%r26 %r3 -36
	sw.s	%r26 %f14 -32
	sw.s	%r26 %f6 -28
	sw.s	%r26 %f0 -24
	sw.s	%r26 %f7 -20
	sw	%r26 %r11 -16
	sw	%r26 %r10 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	cos.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	mov.s	%f0 %f9
	lw.s	%r26 %f3 -48
	lw.s	%r26 %f2 -44
	lw	%r26 %r6 -40
	lw	%r26 %r3 -36
	lw.s	%r26 %f14 -32
	lw.s	%r26 %f6 -28
	lw.s	%r26 %f0 -24
	lw.s	%r26 %f7 -20
	lw	%r26 %r11 -16
	lw	%r26 %r10 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	addi	%r11 %r1 8
	lw.s	%r1 %f1 0
	sw.s	%r26 %f3 -52
	sw.s	%r26 %f2 -48
	sw	%r26 %r6 -44
	sw	%r26 %r3 -40
	sw.s	%r26 %f9 -36
	sw.s	%r26 %f14 -32
	sw.s	%r26 %f6 -28
	sw.s	%r26 %f0 -24
	sw.s	%r26 %f7 -20
	sw	%r26 %r11 -16
	sw	%r26 %r10 -12
	sw	%r26 %r7 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	sin.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	mov.s	%f0 %f4
	lw.s	%r26 %f3 -52
	lw.s	%r26 %f2 -48
	lw	%r26 %r6 -44
	lw	%r26 %r3 -40
	lw.s	%r26 %f9 -36
	lw.s	%r26 %f14 -32
	lw.s	%r26 %f6 -28
	lw.s	%r26 %f0 -24
	lw.s	%r26 %f7 -20
	lw	%r26 %r11 -16
	lw	%r26 %r10 -12
	lw	%r26 %r7 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	mul.s	%f9 %f6 %f10
	mul.s	%f14 %f0 %f1
	mul.s	%f9 %f1 %f5
	mul.s	%f4 %f7 %f1
	sub.s	%f1 %f5 %f11
	mul.s	%f14 %f7 %f1
	mul.s	%f9 %f1 %f1
	mul.s	%f4 %f0 %f5
	add.s	%f5 %f1 %f5
	mul.s	%f4 %f6 %f12
	mul.s	%f14 %f0 %f1
	mul.s	%f4 %f1 %f8
	mul.s	%f9 %f7 %f1
	add.s	%f1 %f8 %f8
	mul.s	%f14 %f7 %f1
	mul.s	%f4 %f1 %f1
	mul.s	%f9 %f0 %f4
	sub.s	%f4 %f1 %f13
	neg.s	%f14 %f1
	mul.s	%f6 %f0 %f9
	mul.s	%f6 %f7 %f15
	mov	%r10 %r1
	lw.s	%r1 %f7 0
	addi	%r10 %r1 4
	lw.s	%r1 %f6 0
	addi	%r10 %r1 8
	lw.s	%r1 %f14 0
	mul.s	%f10 %f10 %f0
	mul.s	%f0 %f7 %f4
	mul.s	%f12 %f12 %f0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f4 %f4
	mul.s	%f1 %f1 %f0
	mul.s	%f0 %f14 %f0
	add.s	%f0 %f4 %f0
	mov	%r10 %r1
	sw.s	%r1 %f0 0
	mul.s	%f11 %f11 %f0
	mul.s	%f0 %f7 %f4
	mul.s	%f8 %f8 %f0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f9 %f9 %f4
	mul.s	%f4 %f14 %f4
	add.s	%f4 %f0 %f0
	addi	%r10 %r1 4
	sw.s	%r1 %f0 0
	mul.s	%f5 %f5 %f0
	mul.s	%f0 %f7 %f4
	mul.s	%f13 %f13 %f0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f4 %f4
	mul.s	%f15 %f15 %f0
	mul.s	%f0 %f14 %f0
	add.s	%f0 %f4 %f0
	addi	%r10 %r1 8
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f4 l.67
	mul.s	%f11 %f7 %f0
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f6 %f16
	mul.s	%f13 %f16 %f16
	add.s	%f16 %f0 %f16
	mul.s	%f9 %f14 %f0
	mul.s	%f15 %f0 %f0
	add.s	%f0 %f16 %f0
	mul.s	%f0 %f4 %f0
	mov	%r11 %r1
	sw.s	%r1 %f0 0
	mul.s	%f10 %f7 %f0
	mul.s	%f5 %f0 %f5
	mul.s	%f12 %f6 %f0
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f14 %f5
	mul.s	%f15 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f0 %f4 %f0
	addi	%r11 %r1 4
	sw.s	%r1 %f0 0
	mul.s	%f10 %f7 %f0
	mul.s	%f11 %f0 %f5
	mul.s	%f12 %f6 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f14 %f1
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f0 %f4 %f0
	addi	%r11 %r1 8
	sw.s	%r1 %f0 0
tail_b.3532 :
	addi	%r0 %r1 1
branching_b.2249 :
	beq	%r1 %r5 tail_b.3534
tail_b.3535 :
	addi	%r7 %r1 1
	mov	%r1 %r7
	j	read_object_loop.1
tail_b.3534 :
	sw	%r0 %r7 0
postloop_b.107 :
preloop_b.108 :
	mov	%r5 %r1
read_and_network_loop.1 :
	addi	%r0 %r2 0
	sw.s	%r26 %f3 -20
	sw	%r26 %r6 -16
	sw	%r26 %r3 -12
	sw	%r26 %r1 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov	%r2 %r1
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	read_net_item.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	mov	%r1 %r8
	lw.s	%r26 %f3 -20
	lw	%r26 %r6 -16
	lw	%r26 %r3 -12
	lw	%r26 %r1 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	mov	%r8 %r2
	lw	%r2 %r2 0
	addi	%r0 %r7 -1
	beq	%r2 %r7 tail_b.3537
tail_b.3538 :
	slli	%r1 %r2 2
	addi	%r2 %r2 332
	sw	%r2 %r8 0
	addi	%r1 %r1 1
	j	read_and_network_loop.1
tail_b.3537 :
postloop_b.108 :
branching_b.2251 :
	addi	%r0 %r1 0
	sw.s	%r26 %f3 -16
	sw	%r26 %r6 -12
	sw	%r26 %r3 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	read_or_network.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw.s	%r26 %f3 -16
	lw	%r26 %r6 -12
	lw	%r26 %r3 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	sw	%r0 %r1 536
	addi	%r0 %r1 80
	out	%r1
	addi	%r0 %r1 51
	out	%r1
	addi	%r0 %r8 10
	out	%r8
	lw	%r0 %r2 616
	addi	%r2 %r1 1
	addi	%r0 %r9 655
	mul	%r1 %r9 %r1
	slli	%r1 %r11 -16
	addi	%r0 %r12 100
	mul	%r11 %r12 %r1
	sub	%r2 %r1 %r1
	addi	%r1 %r1 1
	addi	%r0 %r10 6553
	mul	%r1 %r10 %r1
	slli	%r1 %r1 -16
	mul	%r11 %r12 %r7
	sub	%r2 %r7 %r7
	mul	%r1 %r8 %r2
	sub	%r7 %r2 %r2
	bl	%r5 %r11 tail_b.3539
branching_b.2252 :
	bl	%r5 %r1 tail_b.3540
tail_b.3541 :
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.2253
tail_b.3540 :
	addi	%r1 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.2253
tail_b.3539 :
	addi	%r11 %r7 48
	out	%r7
	addi	%r1 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
branching_b.2253 :
	addi	%r0 %r1 32
	out	%r1
	lw	%r0 %r7 620
	addi	%r7 %r1 1
	mul	%r1 %r9 %r1
	slli	%r1 %r2 -16
	mul	%r2 %r12 %r1
	sub	%r7 %r1 %r1
	addi	%r1 %r1 1
	mul	%r1 %r10 %r1
	slli	%r1 %r9 -16
	mul	%r2 %r12 %r1
	sub	%r7 %r1 %r7
	mul	%r9 %r8 %r1
	sub	%r7 %r1 %r7
	bl	%r5 %r2 tail_b.3542
branching_b.2254 :
	bl	%r5 %r9 tail_b.3543
tail_b.3544 :
	addi	%r7 %r1 48
	out	%r1
	j	preloop_b.109
tail_b.3543 :
	addi	%r9 %r1 48
	out	%r1
	addi	%r7 %r1 48
	out	%r1
	j	preloop_b.109
tail_b.3542 :
	addi	%r2 %r1 48
	out	%r1
	addi	%r9 %r1 48
	out	%r1
	addi	%r7 %r1 48
	out	%r1
preloop_b.109 :
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
	addi	%r0 %r9 4
	mov	%r9 %r8
create_dirvecs_loop.1 :
	ble	%r5 %r8 tail_b.3545
tail_b.3546 :
	j	postloop_b.109
tail_b.3545 :
	addi	%r0 %r7 120
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	lw	%r0 %r1 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r27 %r10
	addi	%r27 %r27 8
	sw	%r10 %r1 4
	sw	%r10 %r2 0
	mov	%r10 %r2
	mov	%r7 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	slli	%r8 %r2 2
	addi	%r2 %r2 716
	sw	%r2 %r1 0
	slli	%r8 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r1 0
	addi	%r0 %r2 118
	sw.s	%r26 %f3 -24
	sw	%r26 %r6 -20
	sw	%r26 %r3 -16
	sw	%r26 %r8 -12
	sw	%r26 %r9 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	create_dirvec_elements.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw.s	%r26 %f3 -24
	lw	%r26 %r6 -20
	lw	%r26 %r3 -16
	lw	%r26 %r8 -12
	lw	%r26 %r9 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	addi	%r8 %r1 -1
	mov	%r1 %r8
	j	create_dirvecs_loop.1
postloop_b.109 :
preloop_b.110 :
	addi	%r0 %r1 9
	mov	%r1 %r2
	mov	%r5 %r7
	mov	%r5 %r8
calc_dirvec_rows_loop.1 :
	ble	%r5 %r2 branching_b.2257
tail_b.3550 :
	j	postloop_b.110
branching_b.2257 :
	mtc1	%r2 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.96
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 4
	sw.s	%r26 %f3 -32
	sw	%r26 %r6 -28
	sw	%r26 %r3 -24
	sw	%r26 %r8 -20
	sw	%r26 %r7 -16
	sw	%r26 %r2 -12
	sw	%r26 %r9 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov	%r8 %r3
	mov	%r7 %r2
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	calc_dirvecs.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw.s	%r26 %f3 -32
	lw	%r26 %r6 -28
	lw	%r26 %r3 -24
	lw	%r26 %r8 -20
	lw	%r26 %r7 -16
	lw	%r26 %r2 -12
	lw	%r26 %r9 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	addi	%r2 %r2 -1
	addi	%r7 %r7 2
	addi	%r0 %r1 5
	ble	%r1 %r7 tail_b.3547
tail_b.3548 :
	j	tail_b.3549
tail_b.3547 :
	addi	%r7 %r7 -5
tail_b.3549 :
	addi	%r8 %r1 4
	mov	%r1 %r8
	j	calc_dirvec_rows_loop.1
postloop_b.110 :
preloop_b.111 :
	mov	%r9 %r7
init_vecset_constants_loop.1 :
	ble	%r5 %r7 tail_b.3551
tail_b.3552 :
	j	postloop_b.111
tail_b.3551 :
	slli	%r7 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r1 0
	addi	%r0 %r2 119
	sw.s	%r26 %f3 -24
	sw	%r26 %r6 -20
	sw	%r26 %r3 -16
	sw	%r26 %r7 -12
	sw	%r26 %r9 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	init_dirvec_constants.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw.s	%r26 %f3 -24
	lw	%r26 %r6 -20
	lw	%r26 %r3 -16
	lw	%r26 %r7 -12
	lw	%r26 %r9 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	addi	%r7 %r1 -1
	mov	%r1 %r7
	j	init_vecset_constants_loop.1
postloop_b.111 :
preloop_b.112 :
	lw.s	%r0 %f0 312
	sw.s	%r0 %f0 736
	lw.s	%r0 %f0 316
	sw.s	%r0 %f0 740
	lw.s	%r0 %f0 320
	sw.s	%r0 %f0 744
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r7
iter_setup_dirvec_constants_loop.5 :
	ble	%r5 %r7 branching_b.2260
tail_b.3602 :
	j	postloop_b.112
branching_b.2260 :
	slli	%r7 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r8 0
	lw	%r0 %r2 992
	lw	%r0 %r10 988
	lw	%r8 %r1 4
	addi	%r0 %r11 1
	beq	%r1 %r11 branching_b.2261
branching_b.2279 :
	addi	%r0 %r11 2
	beq	%r1 %r11 branching_b.2280
branching_b.2282 :
	addi	%r0 %r1 5
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r11
	mov	%r10 %r1
	lw.s	%r1 %f6 0
	addi	%r10 %r1 4
	lw.s	%r1 %f5 0
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f6 %f6 %f1
	lw	%r8 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f2
	mul.s	%f5 %f5 %f1
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f0 %f0 %f4
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f4 %f2
	add.s	%f2 %f1 %f4
	lw	%r8 %r1 12
	beq	%r1 %r5 tail_b.3592
tail_b.3593 :
	mul.s	%f0 %f5 %f1
	lw	%r8 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f4 %f2
	mul.s	%f6 %f0 %f1
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f6 %f2
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f5
	j	branching_b.2283
tail_b.3592 :
	mov.s	%f4 %f5
	j	branching_b.2283
branching_b.2280 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r11
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	lw	%r8 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r10 %r1 4
	lw.s	%r1 %f1 0
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f2
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	fbge	%f3 %f1 tail_b.3588
tail_b.3587 :
	addi	%r0 %r1 1
	j	branching_b.2281
tail_b.3588 :
	addi	%r0 %r1 0
	j	branching_b.2281
branching_b.2261 :
	addi	%r0 %r1 6
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r12
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3554
tail_b.3553 :
	addi	%r0 %r1 1
	j	branching_b.2262
tail_b.3554 :
	addi	%r0 %r1 0
branching_b.2262 :
	beq	%r1 %r5 branching_b.2263
tail_b.3563 :
	ilw.s	%r0 %f0 l.51
	addi	%r12 %r1 4
	sw.s	%r1 %f0 0
	j	branching_b.2267
branching_b.2263 :
	lw	%r8 %r11 24
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.3556
tail_b.3555 :
	addi	%r0 %r1 1
	j	branching_b.2264
tail_b.3556 :
	addi	%r0 %r1 0
branching_b.2264 :
	beq	%r11 %r5 tail_b.3557
branching_b.2265 :
	beq	%r1 %r5 tail_b.3558
tail_b.3559 :
	addi	%r0 %r1 0
	j	branching_b.2266
tail_b.3558 :
	addi	%r0 %r1 1
	j	branching_b.2266
tail_b.3557 :
branching_b.2266 :
	lw	%r8 %r11 16
	lw.s	%r11 %f0 0
	beq	%r1 %r5 tail_b.3560
tail_b.3561 :
	j	tail_b.3562
tail_b.3560 :
	neg.s	%f0 %f0
tail_b.3562 :
	mov	%r12 %r1
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f0 l.56
	mov	%r10 %r1
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r12 %r1 4
	sw.s	%r1 %f0 0
branching_b.2267 :
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3565
tail_b.3564 :
	addi	%r0 %r1 1
	j	branching_b.2268
tail_b.3565 :
	addi	%r0 %r1 0
branching_b.2268 :
	beq	%r1 %r5 branching_b.2269
tail_b.3574 :
	ilw.s	%r0 %f0 l.51
	addi	%r12 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.2273
branching_b.2269 :
	lw	%r8 %r11 24
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.3567
tail_b.3566 :
	addi	%r0 %r1 1
	j	branching_b.2270
tail_b.3567 :
	addi	%r0 %r1 0
branching_b.2270 :
	beq	%r11 %r5 tail_b.3568
branching_b.2271 :
	beq	%r1 %r5 tail_b.3569
tail_b.3570 :
	addi	%r0 %r11 0
	j	branching_b.2272
tail_b.3569 :
	addi	%r0 %r11 1
	j	branching_b.2272
tail_b.3568 :
	mov	%r1 %r11
branching_b.2272 :
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	beq	%r11 %r5 tail_b.3571
tail_b.3572 :
	j	tail_b.3573
tail_b.3571 :
	neg.s	%f0 %f0
tail_b.3573 :
	addi	%r12 %r1 8
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f0 l.56
	addi	%r10 %r1 4
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r12 %r1 12
	sw.s	%r1 %f0 0
branching_b.2273 :
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3576
tail_b.3575 :
	addi	%r0 %r1 1
	j	branching_b.2274
tail_b.3576 :
	addi	%r0 %r1 0
branching_b.2274 :
	beq	%r1 %r5 branching_b.2275
tail_b.3585 :
	ilw.s	%r0 %f0 l.51
	addi	%r12 %r1 20
	sw.s	%r1 %f0 0
	j	tail_b.3586
branching_b.2275 :
	lw	%r8 %r1 24
	addi	%r10 %r11 8
	lw.s	%r11 %f0 0
	fbge	%f0 %f3 tail_b.3578
tail_b.3577 :
	addi	%r0 %r11 1
	j	branching_b.2276
tail_b.3578 :
	addi	%r0 %r11 0
branching_b.2276 :
	beq	%r1 %r5 tail_b.3579
branching_b.2277 :
	beq	%r11 %r5 tail_b.3580
tail_b.3581 :
	addi	%r0 %r11 0
	j	branching_b.2278
tail_b.3580 :
	addi	%r0 %r11 1
	j	branching_b.2278
tail_b.3579 :
branching_b.2278 :
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	beq	%r11 %r5 tail_b.3582
tail_b.3583 :
	j	tail_b.3584
tail_b.3582 :
	neg.s	%f0 %f0
tail_b.3584 :
	addi	%r12 %r1 16
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f0 l.56
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r12 %r1 20
	sw.s	%r1 %f0 0
tail_b.3586 :
	slli	%r7 %r1 2
	add	%r2 %r1 %r1
	sw	%r1 %r12 0
tail_b.3601 :
	addi	%r7 %r1 -1
	mov	%r1 %r7
	j	iter_setup_dirvec_constants_loop.5
branching_b.2281 :
	beq	%r1 %r5 tail_b.3589
tail_b.3590 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f0
	mov	%r11 %r1
	sw.s	%r1 %f0 0
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r11 %r1 4
	sw.s	%r1 %f0 0
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r11 %r1 8
	sw.s	%r1 %f0 0
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r11 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.3591
tail_b.3589 :
	ilw.s	%r0 %f0 l.51
	mov	%r11 %r1
	sw.s	%r1 %f0 0
tail_b.3591 :
	slli	%r7 %r1 2
	add	%r2 %r1 %r1
	sw	%r1 %r11 0
	j	tail_b.3601
branching_b.2283 :
	mov	%r10 %r1
	lw.s	%r1 %f1 0
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	neg.s	%f0 %f2
	addi	%r10 %r1 4
	lw.s	%r1 %f1 0
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	neg.s	%f0 %f6
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f4
	mov	%r11 %r1
	sw.s	%r1 %f5 0
	lw	%r8 %r1 12
	bne	%r1 %r5 tail_b.3594
tail_b.3595 :
	addi	%r11 %r1 4
	sw.s	%r1 %f2 0
	addi	%r11 %r1 8
	sw.s	%r1 %f6 0
	addi	%r11 %r1 12
	sw.s	%r1 %f4 0
	j	branching_b.2284
tail_b.3594 :
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f7
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.67
	div.s	%f7 %f0 %f0
	sub.s	%f0 %f2 %f0
	addi	%r11 %r1 4
	sw.s	%r1 %f0 0
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	lw	%r8 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	mov	%r10 %r1
	lw.s	%r1 %f1 0
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	div.s	%f7 %f0 %f0
	sub.s	%f0 %f6 %f0
	addi	%r11 %r1 8
	sw.s	%r1 %f0 0
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	lw	%r8 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	mov	%r10 %r1
	lw.s	%r1 %f2 0
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	div.s	%f7 %f0 %f0
	sub.s	%f0 %f4 %f0
	addi	%r11 %r1 12
	sw.s	%r1 %f0 0
branching_b.2284 :
	fbne	%f5 %f3 tail_b.3597
tail_b.3596 :
	addi	%r0 %r1 1
	j	branching_b.2285
tail_b.3597 :
	addi	%r0 %r1 0
branching_b.2285 :
	beq	%r1 %r5 tail_b.3598
tail_b.3599 :
	j	tail_b.3600
tail_b.3598 :
	ilw.s	%r0 %f0 l.56
	div.s	%f5 %f0 %f0
	addi	%r11 %r1 16
	sw.s	%r1 %f0 0
tail_b.3600 :
	slli	%r7 %r1 2
	add	%r2 %r1 %r1
	sw	%r1 %r11 0
	j	tail_b.3601
postloop_b.112 :
branching_b.2286 :
	lw	%r0 %r1 0
	addi	%r1 %r2 -1
	ble	%r5 %r2 branching_b.2287
tail_b.3810 :
	j	preloop_b.117
branching_b.2287 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r11 0
	lw	%r11 %r1 8
	addi	%r0 %r7 2
	beq	%r1 %r7 branching_b.2288
tail_b.3809 :
	j	preloop_b.117
branching_b.2288 :
	lw	%r11 %r1 28
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.56
	fbge	%f0 %f2 tail_b.3604
tail_b.3603 :
	addi	%r0 %r1 1
	j	branching_b.2289
tail_b.3604 :
	addi	%r0 %r1 0
branching_b.2289 :
	beq	%r1 %r5 tail_b.3605
branching_b.2290 :
	lw	%r11 %r1 4
	addi	%r0 %r8 1
	beq	%r1 %r8 preloop_b.113
branching_b.2372 :
	beq	%r1 %r7 preloop_b.116
tail_b.3808 :
	j	preloop_b.117
preloop_b.116 :
	mul	%r2 %r9 %r1
	addi	%r1 %r10 1
	lw	%r0 %r9 1736
	lw	%r11 %r1 28
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f6
	lw	%r11 %r2 16
	lw.s	%r0 %f1 312
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 316
	addi	%r2 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f4 320
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f7
	ilw.s	%r0 %f1 l.67
	lw	%r11 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	lw.s	%r0 %f4 312
	sub.s	%f4 %f0 %f8
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	lw.s	%r0 %f4 316
	sub.s	%f4 %f0 %f5
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f4
	lw.s	%r0 %f0 320
	sub.s	%f0 %f4 %f0
	addi	%r0 %r1 3
	ilw.s	%r0 %f4 l.51
	sw.s	%r26 %f0 0
	mov.s	%f4 %f0
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r11
	lw.s	%r26 %f0 0
	lw	%r0 %r1 0
	mov	%r11 %r2
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r2 %r11
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	sw	%r2 %r11 0
	mov	%r2 %r12
	mov	%r11 %r1
	sw.s	%r1 %f8 0
	addi	%r11 %r1 4
	sw.s	%r1 %f5 0
	addi	%r11 %r1 8
	sw.s	%r1 %f0 0
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r11
iter_setup_dirvec_constants_loop.1 :
	ble	%r5 %r11 branching_b.2374
tail_b.3806 :
	j	postloop_b.116
branching_b.2374 :
	slli	%r11 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r15 0
	lw	%r12 %r13 4
	lw	%r12 %r14 0
	lw	%r15 %r1 4
	beq	%r1 %r8 branching_b.2375
branching_b.2393 :
	beq	%r1 %r7 branching_b.2394
branching_b.2396 :
	addi	%r0 %r1 5
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	mov	%r14 %r1
	lw.s	%r1 %f8 0
	addi	%r14 %r1 4
	lw.s	%r1 %f7 0
	addi	%r14 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f8 %f8 %f4
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f9
	mul.s	%f7 %f7 %f4
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f9 %f4
	mul.s	%f5 %f5 %f0
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f9
	lw	%r15 %r1 12
	beq	%r1 %r5 tail_b.3796
tail_b.3797 :
	mul.s	%f5 %f7 %f4
	lw	%r15 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f9 %f9
	mul.s	%f8 %f5 %f4
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f8 %f5
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f9
	j	branching_b.2397
tail_b.3796 :
	j	branching_b.2397
branching_b.2394 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	mov	%r14 %r1
	lw.s	%r1 %f4 0
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f5
	addi	%r14 %r1 4
	lw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f0
	addi	%r14 %r1 8
	lw.s	%r1 %f5 0
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f4
	fbge	%f3 %f4 tail_b.3792
tail_b.3791 :
	addi	%r0 %r1 1
	j	branching_b.2395
tail_b.3792 :
	addi	%r0 %r1 0
	j	branching_b.2395
branching_b.2375 :
	addi	%r0 %r1 6
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r16
	mov	%r14 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3758
tail_b.3757 :
	addi	%r0 %r1 1
	j	branching_b.2376
tail_b.3758 :
	addi	%r0 %r1 0
	j	branching_b.2376
preloop_b.113 :
	mul	%r2 %r9 %r10
	lw	%r0 %r9 1736
	lw	%r11 %r1 28
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f6
	lw.s	%r0 %f0 312
	neg.s	%f0 %f7
	lw.s	%r0 %f0 316
	neg.s	%f0 %f5
	lw.s	%r0 %f0 320
	neg.s	%f0 %f8
	addi	%r10 %r13 1
	lw.s	%r0 %f0 312
	addi	%r0 %r1 3
	ilw.s	%r0 %f1 l.51
	sw.s	%r26 %f0 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r11
	lw.s	%r26 %f0 0
	lw	%r0 %r1 0
	mov	%r11 %r2
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r2 %r11
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	sw	%r2 %r11 0
	mov	%r2 %r1
	mov	%r11 %r2
	sw.s	%r2 %f0 0
	addi	%r11 %r2 4
	sw.s	%r2 %f5 0
	addi	%r11 %r2 8
	sw.s	%r2 %f8 0
	lw	%r0 %r2 0
	addi	%r2 %r2 -1
	mov	%r2 %r14
iter_setup_dirvec_constants_loop.4 :
	ble	%r5 %r14 branching_b.2292
tail_b.3655 :
	j	postloop_b.113
branching_b.2292 :
	slli	%r14 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r15 0
	lw	%r1 %r12 4
	lw	%r1 %r11 0
	lw	%r15 %r2 4
	beq	%r2 %r8 branching_b.2293
branching_b.2311 :
	beq	%r2 %r7 branching_b.2312
branching_b.2314 :
	addi	%r0 %r2 5
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r16
	lw	%r26 %r1 0
	mov	%r11 %r2
	lw.s	%r2 %f1 0
	addi	%r11 %r2 4
	lw.s	%r2 %f10 0
	addi	%r11 %r2 8
	lw.s	%r2 %f4 0
	mul.s	%f1 %f1 %f9
	lw	%r15 %r2 16
	lw.s	%r2 %f0 0
	mul.s	%f0 %f9 %f9
	mul.s	%f10 %f10 %f0
	lw	%r15 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f11 0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f9 %f9
	mul.s	%f4 %f4 %f11
	lw	%r15 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f11 %f0
	add.s	%f0 %f9 %f9
	lw	%r15 %r2 12
	beq	%r2 %r5 tail_b.3645
tail_b.3646 :
	mul.s	%f4 %f10 %f11
	lw	%r15 %r2 36
	lw.s	%r2 %f0 0
	mul.s	%f0 %f11 %f0
	add.s	%f0 %f9 %f9
	mul.s	%f1 %f4 %f4
	lw	%r15 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f9 %f4
	mul.s	%f10 %f1 %f0
	lw	%r15 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	j	branching_b.2315
tail_b.3645 :
	mov.s	%f9 %f4
	j	branching_b.2315
branching_b.2312 :
	addi	%r0 %r2 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r16
	lw	%r26 %r1 0
	mov	%r11 %r2
	lw.s	%r2 %f1 0
	lw	%r15 %r2 16
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f4
	addi	%r11 %r2 4
	lw.s	%r2 %f1 0
	lw	%r15 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f4
	addi	%r11 %r2 8
	lw.s	%r2 %f0 0
	lw	%r15 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f1
	fbge	%f3 %f1 tail_b.3641
tail_b.3640 :
	addi	%r0 %r2 1
	j	branching_b.2313
tail_b.3641 :
	addi	%r0 %r2 0
	j	branching_b.2313
branching_b.2293 :
	addi	%r0 %r2 6
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r16
	lw	%r26 %r1 0
	mov	%r11 %r2
	lw.s	%r2 %f0 0
	fbne	%f0 %f3 tail_b.3607
tail_b.3606 :
	addi	%r0 %r2 1
	j	branching_b.2294
tail_b.3607 :
	addi	%r0 %r2 0
	j	branching_b.2294
tail_b.3605 :
	j	preloop_b.117
branching_b.2294 :
	beq	%r2 %r5 branching_b.2295
tail_b.3616 :
	ilw.s	%r0 %f0 l.51
	addi	%r16 %r2 4
	sw.s	%r2 %f0 0
	j	branching_b.2299
branching_b.2295 :
	lw	%r15 %r17 24
	mov	%r11 %r2
	lw.s	%r2 %f0 0
	fbge	%f0 %f3 tail_b.3609
tail_b.3608 :
	addi	%r0 %r2 1
	j	branching_b.2296
tail_b.3609 :
	addi	%r0 %r2 0
branching_b.2296 :
	beq	%r17 %r5 tail_b.3610
branching_b.2297 :
	beq	%r2 %r5 tail_b.3611
tail_b.3612 :
	addi	%r0 %r17 0
	j	branching_b.2298
tail_b.3611 :
	addi	%r0 %r17 1
	j	branching_b.2298
tail_b.3610 :
	mov	%r2 %r17
branching_b.2298 :
	lw	%r15 %r2 16
	lw.s	%r2 %f0 0
	beq	%r17 %r5 tail_b.3613
tail_b.3614 :
	j	tail_b.3615
tail_b.3613 :
	neg.s	%f0 %f0
tail_b.3615 :
	mov	%r16 %r2
	sw.s	%r2 %f0 0
	mov	%r11 %r2
	lw.s	%r2 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r16 %r2 4
	sw.s	%r2 %f0 0
branching_b.2299 :
	addi	%r11 %r2 4
	lw.s	%r2 %f0 0
	fbne	%f0 %f3 tail_b.3618
tail_b.3617 :
	addi	%r0 %r2 1
	j	branching_b.2300
tail_b.3618 :
	addi	%r0 %r2 0
branching_b.2300 :
	beq	%r2 %r5 branching_b.2301
tail_b.3627 :
	ilw.s	%r0 %f0 l.51
	addi	%r16 %r2 12
	sw.s	%r2 %f0 0
	j	branching_b.2305
branching_b.2301 :
	lw	%r15 %r17 24
	addi	%r11 %r2 4
	lw.s	%r2 %f0 0
	fbge	%f0 %f3 tail_b.3620
tail_b.3619 :
	addi	%r0 %r2 1
	j	branching_b.2302
tail_b.3620 :
	addi	%r0 %r2 0
branching_b.2302 :
	beq	%r17 %r5 tail_b.3621
branching_b.2303 :
	beq	%r2 %r5 tail_b.3622
tail_b.3623 :
	addi	%r0 %r17 0
	j	branching_b.2304
tail_b.3622 :
	addi	%r0 %r17 1
	j	branching_b.2304
tail_b.3621 :
	mov	%r2 %r17
branching_b.2304 :
	lw	%r15 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	beq	%r17 %r5 tail_b.3624
tail_b.3625 :
	j	tail_b.3626
tail_b.3624 :
	neg.s	%f0 %f0
tail_b.3626 :
	addi	%r16 %r2 8
	sw.s	%r2 %f0 0
	addi	%r11 %r2 4
	lw.s	%r2 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r16 %r2 12
	sw.s	%r2 %f0 0
branching_b.2305 :
	addi	%r11 %r2 8
	lw.s	%r2 %f0 0
	fbne	%f0 %f3 tail_b.3629
tail_b.3628 :
	addi	%r0 %r2 1
	j	branching_b.2306
tail_b.3629 :
	addi	%r0 %r2 0
branching_b.2306 :
	beq	%r2 %r5 branching_b.2307
tail_b.3638 :
	ilw.s	%r0 %f0 l.51
	addi	%r16 %r2 20
	sw.s	%r2 %f0 0
	j	tail_b.3639
branching_b.2307 :
	lw	%r15 %r17 24
	addi	%r11 %r2 8
	lw.s	%r2 %f0 0
	fbge	%f0 %f3 tail_b.3631
tail_b.3630 :
	addi	%r0 %r2 1
	j	branching_b.2308
tail_b.3631 :
	addi	%r0 %r2 0
branching_b.2308 :
	beq	%r17 %r5 tail_b.3632
branching_b.2309 :
	beq	%r2 %r5 tail_b.3633
tail_b.3634 :
	addi	%r0 %r2 0
	j	branching_b.2310
tail_b.3633 :
	addi	%r0 %r2 1
	j	branching_b.2310
tail_b.3632 :
branching_b.2310 :
	lw	%r15 %r15 16
	addi	%r15 %r15 8
	lw.s	%r15 %f0 0
	beq	%r2 %r5 tail_b.3635
tail_b.3636 :
	j	tail_b.3637
tail_b.3635 :
	neg.s	%f0 %f0
tail_b.3637 :
	addi	%r16 %r2 16
	sw.s	%r2 %f0 0
	addi	%r11 %r2 8
	lw.s	%r2 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r16 %r2 20
	sw.s	%r2 %f0 0
tail_b.3639 :
	slli	%r14 %r2 2
	add	%r12 %r2 %r2
	sw	%r2 %r16 0
tail_b.3654 :
	addi	%r14 %r2 -1
	mov	%r2 %r14
	j	iter_setup_dirvec_constants_loop.4
branching_b.2313 :
	beq	%r2 %r5 tail_b.3642
tail_b.3643 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f0
	mov	%r16 %r2
	sw.s	%r2 %f0 0
	lw	%r15 %r2 16
	lw.s	%r2 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r16 %r2 4
	sw.s	%r2 %f0 0
	lw	%r15 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r16 %r2 8
	sw.s	%r2 %f0 0
	lw	%r15 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r16 %r2 12
	sw.s	%r2 %f0 0
	j	tail_b.3644
tail_b.3642 :
	ilw.s	%r0 %f0 l.51
	mov	%r16 %r2
	sw.s	%r2 %f0 0
tail_b.3644 :
	slli	%r14 %r2 2
	add	%r12 %r2 %r2
	sw	%r2 %r16 0
	j	tail_b.3654
branching_b.2315 :
	mov	%r11 %r2
	lw.s	%r2 %f1 0
	lw	%r15 %r2 16
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	neg.s	%f0 %f1
	addi	%r11 %r2 4
	lw.s	%r2 %f0 0
	lw	%r15 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f9 0
	mul.s	%f9 %f0 %f0
	neg.s	%f0 %f12
	addi	%r11 %r2 8
	lw.s	%r2 %f9 0
	lw	%r15 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f9 %f0
	neg.s	%f0 %f11
	mov	%r16 %r2
	sw.s	%r2 %f4 0
	lw	%r15 %r2 12
	bne	%r2 %r5 tail_b.3647
tail_b.3648 :
	addi	%r16 %r2 4
	sw.s	%r2 %f1 0
	addi	%r16 %r2 8
	sw.s	%r2 %f12 0
	addi	%r16 %r2 12
	sw.s	%r2 %f11 0
	j	branching_b.2316
tail_b.3647 :
	addi	%r11 %r2 8
	lw.s	%r2 %f0 0
	lw	%r15 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f9 0
	mul.s	%f9 %f0 %f9
	addi	%r11 %r2 4
	lw.s	%r2 %f10 0
	lw	%r15 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f10 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.67
	div.s	%f0 %f9 %f9
	sub.s	%f9 %f1 %f1
	addi	%r16 %r2 4
	sw.s	%r2 %f1 0
	addi	%r11 %r2 8
	lw.s	%r2 %f1 0
	lw	%r15 %r2 36
	lw.s	%r2 %f9 0
	mul.s	%f9 %f1 %f1
	mov	%r11 %r2
	lw.s	%r2 %f10 0
	lw	%r15 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f9 0
	mul.s	%f9 %f10 %f9
	add.s	%f9 %f1 %f1
	div.s	%f0 %f1 %f1
	sub.s	%f1 %f12 %f1
	addi	%r16 %r2 8
	sw.s	%r2 %f1 0
	addi	%r11 %r2 4
	lw.s	%r2 %f9 0
	lw	%r15 %r2 36
	lw.s	%r2 %f1 0
	mul.s	%f1 %f9 %f1
	mov	%r11 %r2
	lw.s	%r2 %f9 0
	lw	%r15 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f10 0
	mul.s	%f10 %f9 %f9
	add.s	%f9 %f1 %f1
	div.s	%f0 %f1 %f0
	sub.s	%f0 %f11 %f0
	addi	%r16 %r2 12
	sw.s	%r2 %f0 0
branching_b.2316 :
	fbne	%f4 %f3 tail_b.3650
tail_b.3649 :
	addi	%r0 %r2 1
	j	branching_b.2317
tail_b.3650 :
	addi	%r0 %r2 0
branching_b.2317 :
	beq	%r2 %r5 tail_b.3651
tail_b.3652 :
	j	tail_b.3653
tail_b.3651 :
	div.s	%f4 %f2 %f0
	addi	%r16 %r2 16
	sw.s	%r2 %f0 0
tail_b.3653 :
	slli	%r14 %r2 2
	add	%r12 %r2 %r2
	sw	%r2 %r16 0
	j	tail_b.3654
postloop_b.113 :
preloop_b.114 :
	mov	%r27 %r2
	addi	%r27 %r27 12
	sw.s	%r2 %f6 8
	sw	%r2 %r1 4
	sw	%r2 %r13 0
	slli	%r9 %r1 2
	addi	%r1 %r1 1016
	sw	%r1 %r2 0
	addi	%r9 %r12 1
	addi	%r10 %r11 2
	lw.s	%r0 %f0 316
	addi	%r0 %r1 3
	ilw.s	%r0 %f1 l.51
	sw.s	%r26 %f0 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw.s	%r26 %f0 0
	lw	%r0 %r1 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r13
	mov	%r27 %r1
	addi	%r27 %r27 8
	sw	%r1 %r13 4
	sw	%r1 %r2 0
	mov	%r1 %r14
	mov	%r2 %r1
	sw.s	%r1 %f7 0
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	addi	%r2 %r1 8
	sw.s	%r1 %f8 0
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r2
iter_setup_dirvec_constants_loop.3 :
	ble	%r5 %r2 branching_b.2319
tail_b.3705 :
	j	postloop_b.114
branching_b.2319 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r15 0
	lw	%r14 %r13 4
	lw	%r14 %r16 0
	lw	%r15 %r1 4
	beq	%r1 %r8 branching_b.2320
branching_b.2338 :
	beq	%r1 %r7 branching_b.2339
branching_b.2341 :
	addi	%r0 %r1 5
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r17
	mov	%r16 %r1
	lw.s	%r1 %f9 0
	addi	%r16 %r1 4
	lw.s	%r1 %f4 0
	addi	%r16 %r1 8
	lw.s	%r1 %f10 0
	mul.s	%f9 %f9 %f1
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f8
	mul.s	%f4 %f4 %f1
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f8
	mul.s	%f10 %f10 %f0
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f8
	lw	%r15 %r1 12
	beq	%r1 %r5 tail_b.3695
tail_b.3696 :
	mul.s	%f10 %f4 %f1
	lw	%r15 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f8
	mul.s	%f9 %f10 %f0
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f8
	mul.s	%f4 %f9 %f1
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f9
	j	branching_b.2342
tail_b.3695 :
	mov.s	%f8 %f9
	j	branching_b.2342
branching_b.2339 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r17
	mov	%r16 %r1
	lw.s	%r1 %f1 0
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	addi	%r16 %r1 4
	lw.s	%r1 %f4 0
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f1
	addi	%r16 %r1 8
	lw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	fbge	%f3 %f1 tail_b.3691
tail_b.3690 :
	addi	%r0 %r1 1
	j	branching_b.2340
tail_b.3691 :
	addi	%r0 %r1 0
	j	branching_b.2340
branching_b.2320 :
	addi	%r0 %r1 6
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r18
	mov	%r16 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3657
tail_b.3656 :
	addi	%r0 %r1 1
	j	branching_b.2321
tail_b.3657 :
	addi	%r0 %r1 0
branching_b.2321 :
	beq	%r1 %r5 branching_b.2322
tail_b.3666 :
	ilw.s	%r0 %f0 l.51
	addi	%r18 %r1 4
	sw.s	%r1 %f0 0
	j	branching_b.2326
branching_b.2322 :
	lw	%r15 %r17 24
	mov	%r16 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.3659
tail_b.3658 :
	addi	%r0 %r1 1
	j	branching_b.2323
tail_b.3659 :
	addi	%r0 %r1 0
branching_b.2323 :
	beq	%r17 %r5 tail_b.3660
branching_b.2324 :
	beq	%r1 %r5 tail_b.3661
tail_b.3662 :
	addi	%r0 %r17 0
	j	branching_b.2325
tail_b.3661 :
	addi	%r0 %r17 1
	j	branching_b.2325
tail_b.3660 :
	mov	%r1 %r17
branching_b.2325 :
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	beq	%r17 %r5 tail_b.3663
tail_b.3664 :
	j	tail_b.3665
tail_b.3663 :
	neg.s	%f0 %f0
tail_b.3665 :
	mov	%r18 %r1
	sw.s	%r1 %f0 0
	mov	%r16 %r1
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r18 %r1 4
	sw.s	%r1 %f0 0
branching_b.2326 :
	addi	%r16 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3668
tail_b.3667 :
	addi	%r0 %r1 1
	j	branching_b.2327
tail_b.3668 :
	addi	%r0 %r1 0
branching_b.2327 :
	beq	%r1 %r5 branching_b.2328
tail_b.3677 :
	ilw.s	%r0 %f0 l.51
	addi	%r18 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.2332
branching_b.2328 :
	lw	%r15 %r1 24
	addi	%r16 %r17 4
	lw.s	%r17 %f0 0
	fbge	%f0 %f3 tail_b.3670
tail_b.3669 :
	addi	%r0 %r17 1
	j	branching_b.2329
tail_b.3670 :
	addi	%r0 %r17 0
branching_b.2329 :
	beq	%r1 %r5 tail_b.3671
branching_b.2330 :
	beq	%r17 %r5 tail_b.3672
tail_b.3673 :
	addi	%r0 %r17 0
	j	branching_b.2331
tail_b.3672 :
	addi	%r0 %r17 1
	j	branching_b.2331
tail_b.3671 :
branching_b.2331 :
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	beq	%r17 %r5 tail_b.3674
tail_b.3675 :
	j	tail_b.3676
tail_b.3674 :
	neg.s	%f0 %f0
tail_b.3676 :
	addi	%r18 %r1 8
	sw.s	%r1 %f0 0
	addi	%r16 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r18 %r1 12
	sw.s	%r1 %f0 0
branching_b.2332 :
	addi	%r16 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3679
tail_b.3678 :
	addi	%r0 %r1 1
	j	branching_b.2333
tail_b.3679 :
	addi	%r0 %r1 0
branching_b.2333 :
	beq	%r1 %r5 branching_b.2334
tail_b.3688 :
	ilw.s	%r0 %f0 l.51
	addi	%r18 %r1 20
	sw.s	%r1 %f0 0
	j	tail_b.3689
branching_b.2334 :
	lw	%r15 %r1 24
	addi	%r16 %r17 8
	lw.s	%r17 %f0 0
	fbge	%f0 %f3 tail_b.3681
tail_b.3680 :
	addi	%r0 %r17 1
	j	branching_b.2335
tail_b.3681 :
	addi	%r0 %r17 0
branching_b.2335 :
	beq	%r1 %r5 tail_b.3682
branching_b.2336 :
	beq	%r17 %r5 tail_b.3683
tail_b.3684 :
	addi	%r0 %r17 0
	j	branching_b.2337
tail_b.3683 :
	addi	%r0 %r17 1
	j	branching_b.2337
tail_b.3682 :
branching_b.2337 :
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	beq	%r17 %r5 tail_b.3685
tail_b.3686 :
	j	tail_b.3687
tail_b.3685 :
	neg.s	%f0 %f0
tail_b.3687 :
	addi	%r18 %r1 16
	sw.s	%r1 %f0 0
	addi	%r16 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r18 %r1 20
	sw.s	%r1 %f0 0
tail_b.3689 :
	slli	%r2 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r18 0
tail_b.3704 :
	addi	%r2 %r1 -1
	mov	%r1 %r2
	j	iter_setup_dirvec_constants_loop.3
branching_b.2340 :
	beq	%r1 %r5 tail_b.3692
tail_b.3693 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f0
	mov	%r17 %r1
	sw.s	%r1 %f0 0
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r17 %r1 4
	sw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r17 %r1 8
	sw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r17 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.3694
tail_b.3692 :
	ilw.s	%r0 %f0 l.51
	mov	%r17 %r1
	sw.s	%r1 %f0 0
tail_b.3694 :
	slli	%r2 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r17 0
	j	tail_b.3704
branching_b.2342 :
	mov	%r16 %r1
	lw.s	%r1 %f0 0
	lw	%r15 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f8
	addi	%r16 %r1 4
	lw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f4
	addi	%r16 %r1 8
	lw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f11
	mov	%r17 %r1
	sw.s	%r1 %f9 0
	lw	%r15 %r1 12
	bne	%r1 %r5 tail_b.3697
tail_b.3698 :
	addi	%r17 %r1 4
	sw.s	%r1 %f8 0
	addi	%r17 %r1 8
	sw.s	%r1 %f4 0
	addi	%r17 %r1 12
	sw.s	%r1 %f11 0
	j	branching_b.2343
tail_b.3697 :
	addi	%r16 %r1 8
	lw.s	%r1 %f0 0
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r16 %r1 4
	lw.s	%r1 %f1 0
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f10 0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.67
	div.s	%f1 %f0 %f0
	sub.s	%f0 %f8 %f0
	addi	%r17 %r1 4
	sw.s	%r1 %f0 0
	addi	%r16 %r1 8
	lw.s	%r1 %f8 0
	lw	%r15 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f8
	mov	%r16 %r1
	lw.s	%r1 %f0 0
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f10 0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f8 %f0
	div.s	%f1 %f0 %f0
	sub.s	%f0 %f4 %f0
	addi	%r17 %r1 8
	sw.s	%r1 %f0 0
	addi	%r16 %r1 4
	lw.s	%r1 %f0 0
	lw	%r15 %r1 36
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f4
	mov	%r16 %r1
	lw.s	%r1 %f0 0
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f8 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	div.s	%f1 %f0 %f0
	sub.s	%f0 %f11 %f0
	addi	%r17 %r1 12
	sw.s	%r1 %f0 0
branching_b.2343 :
	fbne	%f9 %f3 tail_b.3700
tail_b.3699 :
	addi	%r0 %r1 1
	j	branching_b.2344
tail_b.3700 :
	addi	%r0 %r1 0
branching_b.2344 :
	beq	%r1 %r5 tail_b.3701
tail_b.3702 :
	j	tail_b.3703
tail_b.3701 :
	div.s	%f9 %f2 %f0
	addi	%r17 %r1 16
	sw.s	%r1 %f0 0
tail_b.3703 :
	slli	%r2 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r17 0
	j	tail_b.3704
postloop_b.114 :
preloop_b.115 :
	mov	%r27 %r1
	addi	%r27 %r27 12
	sw.s	%r1 %f6 8
	sw	%r1 %r14 4
	sw	%r1 %r11 0
	mov	%r1 %r2
	slli	%r12 %r1 2
	addi	%r1 %r1 1016
	sw	%r1 %r2 0
	addi	%r9 %r11 2
	addi	%r10 %r10 3
	lw.s	%r0 %f0 320
	addi	%r0 %r1 3
	ilw.s	%r0 %f1 l.51
	sw.s	%r26 %f0 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw.s	%r26 %f0 0
	lw	%r0 %r1 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r12
	mov	%r27 %r1
	addi	%r27 %r27 8
	sw	%r1 %r12 4
	sw	%r1 %r2 0
	mov	%r1 %r12
	mov	%r2 %r1
	sw.s	%r1 %f7 0
	addi	%r2 %r1 4
	sw.s	%r1 %f5 0
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r14
iter_setup_dirvec_constants_loop.2 :
	ble	%r5 %r14 branching_b.2346
tail_b.3755 :
	j	postloop_b.115
branching_b.2346 :
	slli	%r14 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r15 0
	lw	%r12 %r13 4
	lw	%r12 %r2 0
	lw	%r15 %r1 4
	beq	%r1 %r8 branching_b.2347
branching_b.2365 :
	beq	%r1 %r7 branching_b.2366
branching_b.2368 :
	addi	%r0 %r1 5
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r16
	mov	%r2 %r1
	lw.s	%r1 %f4 0
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	addi	%r2 %r1 8
	lw.s	%r1 %f8 0
	mul.s	%f4 %f4 %f1
	lw	%r15 %r1 16
	lw.s	%r1 %f5 0
	mul.s	%f5 %f1 %f1
	mul.s	%f0 %f0 %f7
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f7 %f5
	add.s	%f5 %f1 %f7
	mul.s	%f8 %f8 %f1
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f7 %f5
	lw	%r15 %r1 12
	beq	%r1 %r5 tail_b.3745
tail_b.3746 :
	mul.s	%f8 %f0 %f1
	lw	%r15 %r1 36
	lw.s	%r1 %f7 0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f8 %f7
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f7 %f5
	add.s	%f5 %f1 %f1
	mul.s	%f0 %f4 %f0
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f8
	j	branching_b.2369
tail_b.3745 :
	mov.s	%f5 %f8
	j	branching_b.2369
branching_b.2366 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r16
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	fbge	%f3 %f1 tail_b.3741
tail_b.3740 :
	addi	%r0 %r1 1
	j	branching_b.2367
tail_b.3741 :
	addi	%r0 %r1 0
	j	branching_b.2367
branching_b.2347 :
	addi	%r0 %r1 6
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r17
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3707
tail_b.3706 :
	addi	%r0 %r1 1
	j	branching_b.2348
tail_b.3707 :
	addi	%r0 %r1 0
branching_b.2348 :
	beq	%r1 %r5 branching_b.2349
tail_b.3716 :
	ilw.s	%r0 %f0 l.51
	addi	%r17 %r1 4
	sw.s	%r1 %f0 0
	j	branching_b.2353
branching_b.2349 :
	lw	%r15 %r16 24
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.3709
tail_b.3708 :
	addi	%r0 %r1 1
	j	branching_b.2350
tail_b.3709 :
	addi	%r0 %r1 0
branching_b.2350 :
	beq	%r16 %r5 tail_b.3710
branching_b.2351 :
	beq	%r1 %r5 tail_b.3711
tail_b.3712 :
	addi	%r0 %r16 0
	j	branching_b.2352
tail_b.3711 :
	addi	%r0 %r16 1
	j	branching_b.2352
tail_b.3710 :
	mov	%r1 %r16
branching_b.2352 :
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	beq	%r16 %r5 tail_b.3713
tail_b.3714 :
	j	tail_b.3715
tail_b.3713 :
	neg.s	%f0 %f0
tail_b.3715 :
	mov	%r17 %r1
	sw.s	%r1 %f0 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r17 %r1 4
	sw.s	%r1 %f0 0
branching_b.2353 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3718
tail_b.3717 :
	addi	%r0 %r1 1
	j	branching_b.2354
tail_b.3718 :
	addi	%r0 %r1 0
branching_b.2354 :
	beq	%r1 %r5 branching_b.2355
tail_b.3727 :
	ilw.s	%r0 %f0 l.51
	addi	%r17 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.2359
branching_b.2355 :
	lw	%r15 %r16 24
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.3720
tail_b.3719 :
	addi	%r0 %r1 1
	j	branching_b.2356
tail_b.3720 :
	addi	%r0 %r1 0
branching_b.2356 :
	beq	%r16 %r5 tail_b.3721
branching_b.2357 :
	beq	%r1 %r5 tail_b.3722
tail_b.3723 :
	addi	%r0 %r1 0
	j	branching_b.2358
tail_b.3722 :
	addi	%r0 %r1 1
	j	branching_b.2358
tail_b.3721 :
branching_b.2358 :
	lw	%r15 %r16 16
	addi	%r16 %r16 4
	lw.s	%r16 %f0 0
	beq	%r1 %r5 tail_b.3724
tail_b.3725 :
	j	tail_b.3726
tail_b.3724 :
	neg.s	%f0 %f0
tail_b.3726 :
	addi	%r17 %r1 8
	sw.s	%r1 %f0 0
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r17 %r1 12
	sw.s	%r1 %f0 0
branching_b.2359 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3729
tail_b.3728 :
	addi	%r0 %r1 1
	j	branching_b.2360
tail_b.3729 :
	addi	%r0 %r1 0
branching_b.2360 :
	beq	%r1 %r5 branching_b.2361
tail_b.3738 :
	ilw.s	%r0 %f0 l.51
	addi	%r17 %r1 20
	sw.s	%r1 %f0 0
	j	tail_b.3739
branching_b.2361 :
	lw	%r15 %r16 24
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.3731
tail_b.3730 :
	addi	%r0 %r1 1
	j	branching_b.2362
tail_b.3731 :
	addi	%r0 %r1 0
branching_b.2362 :
	beq	%r16 %r5 tail_b.3732
branching_b.2363 :
	beq	%r1 %r5 tail_b.3733
tail_b.3734 :
	addi	%r0 %r16 0
	j	branching_b.2364
tail_b.3733 :
	addi	%r0 %r16 1
	j	branching_b.2364
tail_b.3732 :
	mov	%r1 %r16
branching_b.2364 :
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	beq	%r16 %r5 tail_b.3735
tail_b.3736 :
	j	tail_b.3737
tail_b.3735 :
	neg.s	%f0 %f0
tail_b.3737 :
	addi	%r17 %r1 16
	sw.s	%r1 %f0 0
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r17 %r1 20
	sw.s	%r1 %f0 0
tail_b.3739 :
	slli	%r14 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r17 0
tail_b.3754 :
	addi	%r14 %r1 -1
	mov	%r1 %r14
	j	iter_setup_dirvec_constants_loop.2
branching_b.2367 :
	beq	%r1 %r5 tail_b.3742
tail_b.3743 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f0
	mov	%r16 %r1
	sw.s	%r1 %f0 0
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r16 %r1 4
	sw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r16 %r1 8
	sw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r16 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.3744
tail_b.3742 :
	ilw.s	%r0 %f0 l.51
	mov	%r16 %r1
	sw.s	%r1 %f0 0
tail_b.3744 :
	slli	%r14 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r16 0
	j	tail_b.3754
branching_b.2369 :
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	lw	%r15 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f7
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	neg.s	%f0 %f9
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	mov	%r16 %r1
	sw.s	%r1 %f8 0
	lw	%r15 %r1 12
	bne	%r1 %r5 tail_b.3747
tail_b.3748 :
	addi	%r16 %r1 4
	sw.s	%r1 %f7 0
	addi	%r16 %r1 8
	sw.s	%r1 %f9 0
	addi	%r16 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.2370
tail_b.3747 :
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f1 %f1
	addi	%r2 %r1 4
	lw.s	%r1 %f4 0
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f1 %f1
	ilw.s	%r0 %f5 l.67
	div.s	%f5 %f1 %f1
	sub.s	%f1 %f7 %f1
	addi	%r16 %r1 4
	sw.s	%r1 %f1 0
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	lw	%r15 %r1 36
	lw.s	%r1 %f4 0
	mul.s	%f4 %f1 %f4
	mov	%r2 %r1
	lw.s	%r1 %f7 0
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f7 %f1
	add.s	%f1 %f4 %f1
	div.s	%f5 %f1 %f1
	sub.s	%f1 %f9 %f1
	addi	%r16 %r1 8
	sw.s	%r1 %f1 0
	addi	%r2 %r1 4
	lw.s	%r1 %f4 0
	lw	%r15 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f4 %f1
	mov	%r2 %r1
	lw.s	%r1 %f4 0
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f1 %f1
	div.s	%f5 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r16 %r1 12
	sw.s	%r1 %f0 0
branching_b.2370 :
	fbne	%f8 %f3 tail_b.3750
tail_b.3749 :
	addi	%r0 %r1 1
	j	branching_b.2371
tail_b.3750 :
	addi	%r0 %r1 0
branching_b.2371 :
	beq	%r1 %r5 tail_b.3751
tail_b.3752 :
	j	tail_b.3753
tail_b.3751 :
	div.s	%f8 %f2 %f0
	addi	%r16 %r1 16
	sw.s	%r1 %f0 0
tail_b.3753 :
	slli	%r14 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r16 0
	j	tail_b.3754
postloop_b.115 :
tail_b.3756 :
	mov	%r27 %r1
	addi	%r27 %r27 12
	sw.s	%r1 %f6 8
	sw	%r1 %r12 4
	sw	%r1 %r10 0
	mov	%r1 %r2
	slli	%r11 %r1 2
	addi	%r1 %r1 1016
	sw	%r1 %r2 0
	addi	%r9 %r1 3
	sw	%r0 %r1 1736
	j	preloop_b.117
branching_b.2376 :
	beq	%r1 %r5 branching_b.2377
tail_b.3767 :
	ilw.s	%r0 %f0 l.51
	addi	%r16 %r1 4
	sw.s	%r1 %f0 0
	j	branching_b.2381
branching_b.2377 :
	lw	%r15 %r2 24
	mov	%r14 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.3760
tail_b.3759 :
	addi	%r0 %r1 1
	j	branching_b.2378
tail_b.3760 :
	addi	%r0 %r1 0
branching_b.2378 :
	beq	%r2 %r5 tail_b.3761
branching_b.2379 :
	beq	%r1 %r5 tail_b.3762
tail_b.3763 :
	addi	%r0 %r2 0
	j	branching_b.2380
tail_b.3762 :
	addi	%r0 %r2 1
	j	branching_b.2380
tail_b.3761 :
	mov	%r1 %r2
branching_b.2380 :
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	beq	%r2 %r5 tail_b.3764
tail_b.3765 :
	j	tail_b.3766
tail_b.3764 :
	neg.s	%f0 %f0
tail_b.3766 :
	mov	%r16 %r1
	sw.s	%r1 %f0 0
	mov	%r14 %r1
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r16 %r1 4
	sw.s	%r1 %f0 0
branching_b.2381 :
	addi	%r14 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3769
tail_b.3768 :
	addi	%r0 %r1 1
	j	branching_b.2382
tail_b.3769 :
	addi	%r0 %r1 0
branching_b.2382 :
	beq	%r1 %r5 branching_b.2383
tail_b.3778 :
	ilw.s	%r0 %f0 l.51
	addi	%r16 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.2387
branching_b.2383 :
	lw	%r15 %r1 24
	addi	%r14 %r2 4
	lw.s	%r2 %f0 0
	fbge	%f0 %f3 tail_b.3771
tail_b.3770 :
	addi	%r0 %r2 1
	j	branching_b.2384
tail_b.3771 :
	addi	%r0 %r2 0
branching_b.2384 :
	beq	%r1 %r5 tail_b.3772
branching_b.2385 :
	beq	%r2 %r5 tail_b.3773
tail_b.3774 :
	addi	%r0 %r2 0
	j	branching_b.2386
tail_b.3773 :
	addi	%r0 %r2 1
	j	branching_b.2386
tail_b.3772 :
branching_b.2386 :
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	beq	%r2 %r5 tail_b.3775
tail_b.3776 :
	j	tail_b.3777
tail_b.3775 :
	neg.s	%f0 %f0
tail_b.3777 :
	addi	%r16 %r1 8
	sw.s	%r1 %f0 0
	addi	%r14 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r16 %r1 12
	sw.s	%r1 %f0 0
branching_b.2387 :
	addi	%r14 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3780
tail_b.3779 :
	addi	%r0 %r1 1
	j	branching_b.2388
tail_b.3780 :
	addi	%r0 %r1 0
branching_b.2388 :
	beq	%r1 %r5 branching_b.2389
tail_b.3789 :
	ilw.s	%r0 %f0 l.51
	addi	%r16 %r1 20
	sw.s	%r1 %f0 0
	j	tail_b.3790
branching_b.2389 :
	lw	%r15 %r1 24
	addi	%r14 %r2 8
	lw.s	%r2 %f0 0
	fbge	%f0 %f3 tail_b.3782
tail_b.3781 :
	addi	%r0 %r2 1
	j	branching_b.2390
tail_b.3782 :
	addi	%r0 %r2 0
branching_b.2390 :
	beq	%r1 %r5 tail_b.3783
branching_b.2391 :
	beq	%r2 %r5 tail_b.3784
tail_b.3785 :
	addi	%r0 %r1 0
	j	branching_b.2392
tail_b.3784 :
	addi	%r0 %r1 1
	j	branching_b.2392
tail_b.3783 :
	mov	%r2 %r1
branching_b.2392 :
	lw	%r15 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	beq	%r1 %r5 tail_b.3786
tail_b.3787 :
	j	tail_b.3788
tail_b.3786 :
	neg.s	%f0 %f0
tail_b.3788 :
	addi	%r16 %r1 16
	sw.s	%r1 %f0 0
	addi	%r14 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r16 %r1 20
	sw.s	%r1 %f0 0
tail_b.3790 :
	slli	%r11 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r16 0
tail_b.3805 :
	addi	%r11 %r1 -1
	mov	%r1 %r11
	j	iter_setup_dirvec_constants_loop.1
branching_b.2395 :
	beq	%r1 %r5 tail_b.3793
tail_b.3794 :
	ilw.s	%r0 %f0 l.58
	div.s	%f4 %f0 %f0
	mov	%r2 %r1
	sw.s	%r1 %f0 0
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	div.s	%f4 %f0 %f0
	neg.s	%f0 %f0
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f4 %f0 %f0
	neg.s	%f0 %f0
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f4 %f0 %f0
	neg.s	%f0 %f0
	addi	%r2 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.3795
tail_b.3793 :
	ilw.s	%r0 %f0 l.51
	mov	%r2 %r1
	sw.s	%r1 %f0 0
tail_b.3795 :
	slli	%r11 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r2 0
	j	tail_b.3805
branching_b.2397 :
	mov	%r14 %r1
	lw.s	%r1 %f0 0
	lw	%r15 %r1 16
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	neg.s	%f0 %f7
	addi	%r14 %r1 4
	lw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	neg.s	%f0 %f5
	addi	%r14 %r1 8
	lw.s	%r1 %f0 0
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	neg.s	%f0 %f8
	mov	%r2 %r1
	sw.s	%r1 %f9 0
	lw	%r15 %r1 12
	bne	%r1 %r5 tail_b.3798
tail_b.3799 :
	addi	%r2 %r1 4
	sw.s	%r1 %f7 0
	addi	%r2 %r1 8
	sw.s	%r1 %f5 0
	addi	%r2 %r1 12
	sw.s	%r1 %f8 0
	j	branching_b.2398
tail_b.3798 :
	addi	%r14 %r1 8
	lw.s	%r1 %f4 0
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f10
	addi	%r14 %r1 4
	lw.s	%r1 %f0 0
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f10 %f0
	div.s	%f1 %f0 %f0
	sub.s	%f0 %f7 %f0
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	addi	%r14 %r1 8
	lw.s	%r1 %f0 0
	lw	%r15 %r1 36
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	mov	%r14 %r1
	lw.s	%r1 %f4 0
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f0
	div.s	%f1 %f0 %f0
	sub.s	%f0 %f5 %f0
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	addi	%r14 %r1 4
	lw.s	%r1 %f0 0
	lw	%r15 %r1 36
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f4
	mov	%r14 %r1
	lw.s	%r1 %f5 0
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f4 %f0
	div.s	%f1 %f0 %f0
	sub.s	%f0 %f8 %f0
	addi	%r2 %r1 12
	sw.s	%r1 %f0 0
branching_b.2398 :
	fbne	%f9 %f3 tail_b.3801
tail_b.3800 :
	addi	%r0 %r1 1
	j	branching_b.2399
tail_b.3801 :
	addi	%r0 %r1 0
branching_b.2399 :
	beq	%r1 %r5 tail_b.3802
tail_b.3803 :
	j	tail_b.3804
tail_b.3802 :
	div.s	%f9 %f2 %f0
	addi	%r2 %r1 16
	sw.s	%r1 %f0 0
tail_b.3804 :
	slli	%r11 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r2 0
	j	tail_b.3805
postloop_b.116 :
tail_b.3807 :
	mov	%r27 %r1
	addi	%r27 %r27 12
	sw.s	%r1 %f6 8
	sw	%r1 %r12 4
	sw	%r1 %r10 0
	mov	%r1 %r2
	slli	%r9 %r1 2
	addi	%r1 %r1 1016
	sw	%r1 %r2 0
	addi	%r9 %r1 1
	sw	%r0 %r1 1736
preloop_b.117 :
	lw.s	%r0 %f1 632
	lw	%r0 %r1 628
	sub	%r5 %r1 %r1
	mtc1	%r1 %f0
	mul.s	%f0 %f1 %f5
	lw.s	%r0 %f0 672
	mul.s	%f0 %f5 %f0
	lw.s	%r0 %f1 684
	add.s	%f1 %f0 %f4
	lw.s	%r0 %f0 676
	mul.s	%f0 %f5 %f1
	lw.s	%r0 %f0 688
	add.s	%f0 %f1 %f2
	lw.s	%r0 %f0 680
	mul.s	%f0 %f5 %f0
	lw.s	%r0 %f1 692
	add.s	%f1 %f0 %f5
	lw	%r0 %r1 616
	addi	%r1 %r1 -1
	mov	%r1 %r8
	mov	%r5 %r7
pretrace_pixels_loop.1 :
	addi	%r0 %r2 696
	ble	%r5 %r8 branching_b.2401
tail_b.3818 :
	j	postloop_b.117
branching_b.2401 :
	lw.s	%r0 %f1 632
	lw	%r0 %r1 624
	sub	%r8 %r1 %r1
	mtc1	%r1 %f0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 660
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	sw.s	%r0 %f0 696
	lw.s	%r0 %f0 664
	mul.s	%f0 %f1 %f0
	add.s	%f2 %f0 %f0
	sw.s	%r0 %f0 700
	lw.s	%r0 %f0 668
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	sw.s	%r0 %f0 704
	lw.s	%r0 %f0 696
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 700
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	lw.s	%r0 %f1 704
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f3 tail_b.3812
tail_b.3811 :
	addi	%r0 %r1 1
	j	branching_b.2402
tail_b.3812 :
	addi	%r0 %r1 0
branching_b.2402 :
	beq	%r1 %r5 tail_b.3813
tail_b.3814 :
	ilw.s	%r0 %f1 l.56
	j	branching_b.2403
tail_b.3813 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f1
branching_b.2403 :
	lw.s	%r0 %f0 696
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 696
	lw.s	%r0 %f0 700
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 700
	lw.s	%r0 %f0 704
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 704
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 604
	sw.s	%r0 %f0 608
	sw.s	%r0 %f0 612
	lw.s	%r0 %f0 300
	sw.s	%r0 %f0 636
	lw.s	%r0 %f0 304
	sw.s	%r0 %f0 640
	lw.s	%r0 %f0 308
	sw.s	%r0 %f0 644
	addi	%r0 %r9 0
	ilw.s	%r0 %f0 l.56
	slli	%r8 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	ilw.s	%r0 %f1 l.51
	sw.s	%r26 %f3 -36
	sw	%r26 %r6 -32
	sw	%r26 %r3 -28
	sw	%r26 %r7 -24
	sw	%r26 %r8 -20
	sw.s	%r26 %f5 -16
	sw.s	%r26 %f2 -12
	sw.s	%r26 %f4 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov	%r1 %r3
	mov	%r9 %r1
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	trace_ray.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw.s	%r26 %f3 -36
	lw	%r26 %r6 -32
	lw	%r26 %r3 -28
	lw	%r26 %r7 -24
	lw	%r26 %r8 -20
	lw.s	%r26 %f5 -16
	lw.s	%r26 %f2 -12
	lw.s	%r26 %f4 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	slli	%r8 %r1 2
	add	%r3 %r1 %r1
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
	slli	%r8 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	sw	%r1 %r7 0
	slli	%r8 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	addi	%r0 %r2 0
	sw.s	%r26 %f3 -36
	sw	%r26 %r6 -32
	sw	%r26 %r3 -28
	sw	%r26 %r7 -24
	sw	%r26 %r8 -20
	sw.s	%r26 %f5 -16
	sw.s	%r26 %f2 -12
	sw.s	%r26 %f4 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	pretrace_diffuse_rays.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw.s	%r26 %f3 -36
	lw	%r26 %r6 -32
	lw	%r26 %r3 -28
	lw	%r26 %r7 -24
	lw	%r26 %r8 -20
	lw.s	%r26 %f5 -16
	lw.s	%r26 %f2 -12
	lw.s	%r26 %f4 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	addi	%r8 %r1 -1
	addi	%r7 %r2 1
	addi	%r0 %r7 5
	ble	%r7 %r2 tail_b.3815
tail_b.3816 :
	j	tail_b.3817
tail_b.3815 :
	addi	%r2 %r2 -5
tail_b.3817 :
	mov	%r1 %r8
	mov	%r2 %r7
	j	pretrace_pixels_loop.1
postloop_b.117 :
preloop_b.118 :
	addi	%r0 %r1 2
	mov	%r4 %r2
	mov	%r3 %r4
	mov	%r1 %r3
scan_line_loop.1 :
	lw	%r0 %r1 620
	bl	%r5 %r1 branching_b.2405
tail_b.3824 :
	j	postloop_b.118
branching_b.2405 :
	lw	%r0 %r1 620
	addi	%r1 %r1 -1
	bl	%r5 %r1 tail_b.3819
tail_b.3820 :
	j	branching_b.2406
tail_b.3819 :
	addi	%r5 %r1 1
	lw.s	%r0 %f0 632
	lw	%r0 %r7 628
	sub	%r1 %r7 %r1
	mtc1	%r1 %f1
	mul.s	%f1 %f0 %f2
	lw.s	%r0 %f0 672
	mul.s	%f0 %f2 %f0
	lw.s	%r0 %f1 684
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f0 676
	mul.s	%f0 %f2 %f3
	lw.s	%r0 %f0 688
	add.s	%f0 %f3 %f3
	lw.s	%r0 %f0 680
	mul.s	%f0 %f2 %f2
	lw.s	%r0 %f0 692
	add.s	%f0 %f2 %f2
	lw	%r0 %r1 616
	addi	%r1 %r1 -1
	sw	%r26 %r3 -16
	sw	%r26 %r6 -12
	sw	%r26 %r4 -8
	sw	%r26 %r2 -4
	sw	%r26 %r5 0
	mov	%r1 %r2
	mov	%r6 %r1
	mov.s	%f1 %f0
	mov.s	%f3 %f1
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	pretrace_pixels.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r3 -16
	lw	%r26 %r6 -12
	lw	%r26 %r4 -8
	lw	%r26 %r2 -4
	lw	%r26 %r5 0
branching_b.2406 :
	addi	%r0 %r1 0
	sw	%r26 %r3 -12
	sw	%r26 %r6 -8
	sw	%r26 %r4 -4
	sw	%r26 %r5 0
	mov	%r2 %r3
	mov	%r5 %r2
	mov	%r6 %r5
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	scan_pixel.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r3 -12
	lw	%r26 %r6 -8
	lw	%r26 %r4 -4
	lw	%r26 %r5 0
	addi	%r5 %r1 1
	addi	%r3 %r2 2
	addi	%r0 %r3 5
	ble	%r3 %r2 tail_b.3821
tail_b.3822 :
	mov	%r2 %r3
	j	tail_b.3823
tail_b.3821 :
	addi	%r2 %r3 -5
tail_b.3823 :
	mov	%r1 %r5
	mov	%r4 %r2
	mov	%r6 %r4
	mov	%r2 %r6
	j	scan_line_loop.1
postloop_b.118 :
tail_b.3825 :
	addi	%r0 %r1 0
return_point.35 :
program_end :
	add	%r0 %r0 %r0
	ret
sin.0 :
preloop_b.0 :
	mov.s	%f0 %f3
sin_loop.0 :
	ilw.s	%r0 %f0 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f3 branching_b.1
tail_b.0 :
	sub.s	%f1 %f3 %f0
	mov.s	%f0 %f3
	j	sin_loop.0
branching_b.1 :
	ilw.s	%r0 %f2 l.51
	fbge	%f3 %f2 branching_b.2
tail_b.1 :
	add.s	%f1 %f3 %f0
	mov.s	%f0 %f3
	j	sin_loop.0
branching_b.2 :
	fbg	%f0 %f3 branching_b.6
branching_b.3 :
	sub.s	%f0 %f3 %f4
	ilw.s	%r0 %f3 l.58
	ilw.s	%r0 %f2 l.57
	fbg	%f2 %f4 branching_b.5
branching_b.4 :
	sub.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.59
	fbg	%f1 %f0 tail_b.3
tail_b.2 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f2
	mul.s	%f4 %f5 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.56
	mul.s	%f1 %f2 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.3 :
	sub.s	%f1 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
branching_b.5 :
	ilw.s	%r0 %f0 l.59
	fbg	%f4 %f0 tail_b.5
tail_b.4 :
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f2 l.64
	mul.s	%f4 %f2 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.65
	mul.s	%f4 %f2 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.56
	mul.s	%f4 %f2 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.5 :
	sub.s	%f4 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
branching_b.6 :
	ilw.s	%r0 %f1 l.56
	ilw.s	%r0 %f2 l.57
	fbg	%f2 %f3 branching_b.8
branching_b.7 :
	sub.s	%f3 %f0 %f4
	ilw.s	%r0 %f0 l.59
	fbg	%f4 %f0 tail_b.7
tail_b.6 :
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.63
	mul.s	%f4 %f0 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f4 %f0 %f5
	mul.s	%f3 %f2 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f2 l.65
	mul.s	%f4 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f4 %f1 %f0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.0
tail_b.7 :
	sub.s	%f4 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f2 l.61
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.62
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.0
branching_b.8 :
	ilw.s	%r0 %f0 l.59
	fbg	%f3 %f0 tail_b.9
tail_b.8 :
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.63
	mul.s	%f3 %f0 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f3 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.65
	mul.s	%f3 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f3 %f1 %f2
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.0
tail_b.9 :
	sub.s	%f3 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f3 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.62
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f1 %f0 %f0
postloop_b.0 :
return_point.0 :
	retl
cos.0 :
preloop_b.1 :
cos_loop.0 :
	ilw.s	%r0 %f3 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f0 branching_b.10
tail_b.10 :
	sub.s	%f1 %f0 %f0
	j	cos_loop.0
branching_b.10 :
	ilw.s	%r0 %f2 l.51
	fbge	%f0 %f2 branching_b.11
tail_b.11 :
	add.s	%f1 %f0 %f0
	j	cos_loop.0
branching_b.11 :
	fbg	%f3 %f0 branching_b.15
branching_b.12 :
	sub.s	%f3 %f0 %f1
	ilw.s	%r0 %f2 l.58
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f1 branching_b.14
branching_b.13 :
	sub.s	%f1 %f3 %f1
	ilw.s	%r0 %f4 l.56
	ilw.s	%r0 %f0 l.59
	fbg	%f1 %f0 tail_b.13
tail_b.12 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f2 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.1
tail_b.13 :
	sub.s	%f1 %f5 %f2
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f2 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f2 %f0 %f3
	mul.s	%f1 %f5 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.65
	mul.s	%f2 %f3 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f4 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.1
branching_b.14 :
	ilw.s	%r0 %f0 l.59
	fbg	%f1 %f0 tail_b.15
tail_b.14 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.56
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.1
tail_b.15 :
	sub.s	%f1 %f5 %f3
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f3 %f0 %f4
	ilw.s	%r0 %f0 l.64
	mul.s	%f3 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.65
	mul.s	%f3 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.56
	mul.s	%f3 %f4 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.1
branching_b.15 :
	ilw.s	%r0 %f4 l.56
	ilw.s	%r0 %f2 l.57
	fbg	%f2 %f0 branching_b.17
branching_b.16 :
	sub.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.58
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.17
tail_b.16 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.1
tail_b.17 :
	sub.s	%f0 %f2 %f5
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f5 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f5 %f0 %f0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f4 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.1
branching_b.17 :
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.19
tail_b.18 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.1
tail_b.19 :
	sub.s	%f0 %f2 %f3
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f3 %f0 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f3 %f0 %f5
	mul.s	%f1 %f2 %f0
	add.s	%f0 %f5 %f2
	ilw.s	%r0 %f0 l.65
	mul.s	%f3 %f0 %f5
	mul.s	%f1 %f2 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f3 %f4 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f4 %f0 %f0
postloop_b.1 :
return_point.1 :
	retl
read_object.0 :
preloop_b.2 :
	mov	%r1 %r7
read_object_loop.0 :
	addi	%r0 %r1 60
	bl	%r7 %r1 branching_b.19
tail_b.135 :
	j	postloop_b.8
branching_b.19 :
	in	%r1
	addi	%r0 %r2 -1
	bne	%r1 %r2 branching_b.20
tail_b.132 :
	addi	%r0 %r1 0
	j	branching_b.102
branching_b.20 :
	in	%r2
	in	%r15
	in	%r9
	addi	%r0 %r4 3
	ilw.s	%r0 %f2 l.51
	sw	%r26 %r1 0
	mov	%r4 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r6
	mov	%r30 %r4
	lw	%r26 %r1 0
	fin	%f0
	mov	%r6 %r3
	sw.s	%r3 %f0 0
	fin	%f0
	addi	%r6 %r3 4
	sw.s	%r3 %f0 0
	fin	%f0
	addi	%r6 %r3 8
	sw.s	%r3 %f0 0
	addi	%r0 %r3 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r3 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r12
	lw	%r26 %r1 0
	fin	%f0
	mov	%r12 %r3
	sw.s	%r3 %f0 0
	fin	%f0
	addi	%r12 %r3 4
	sw.s	%r3 %f0 0
	fin	%f0
	addi	%r12 %r3 8
	sw.s	%r3 %f0 0
	fin	%f0
	fbge	%f0 %f2 tail_b.21
tail_b.20 :
	addi	%r0 %r14 1
	j	branching_b.21
tail_b.21 :
	addi	%r0 %r14 0
branching_b.21 :
	addi	%r0 %r5 2
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r5 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r16
	mov	%r30 %r5
	lw	%r26 %r1 0
	fin	%f0
	mov	%r16 %r3
	sw.s	%r3 %f0 0
	fin	%f0
	addi	%r16 %r3 4
	sw.s	%r3 %f0 0
	addi	%r0 %r3 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r3 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r17
	lw	%r26 %r1 0
	fin	%f0
	mov	%r17 %r3
	sw.s	%r3 %f0 0
	fin	%f0
	addi	%r17 %r3 4
	sw.s	%r3 %f0 0
	fin	%f0
	addi	%r17 %r3 8
	sw.s	%r3 %f0 0
	addi	%r0 %r3 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r3 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r10
	lw	%r26 %r1 0
	addi	%r0 %r11 0
	bne	%r9 %r11 tail_b.22
tail_b.23 :
	j	branching_b.22
tail_b.22 :
	fin	%f0
	ilw.s	%r0 %f1 l.66
	mul.s	%f1 %f0 %f0
	mov	%r10 %r3
	sw.s	%r3 %f0 0
	fin	%f0
	mul.s	%f1 %f0 %f0
	addi	%r10 %r3 4
	sw.s	%r3 %f0 0
	fin	%f0
	mul.s	%f1 %f0 %f0
	addi	%r10 %r3 8
	sw.s	%r3 %f0 0
branching_b.22 :
	beq	%r2 %r5 tail_b.24
tail_b.25 :
	mov	%r14 %r8
	j	branching_b.23
tail_b.24 :
	addi	%r0 %r8 1
branching_b.23 :
	addi	%r0 %r3 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r3 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r13
	lw	%r26 %r1 0
	mov	%r27 %r3
	addi	%r27 %r27 44
	sw	%r3 %r13 40
	sw	%r3 %r10 36
	sw	%r3 %r17 32
	sw	%r3 %r16 28
	sw	%r3 %r8 24
	sw	%r3 %r12 20
	sw	%r3 %r6 16
	sw	%r3 %r9 12
	sw	%r3 %r15 8
	sw	%r3 %r2 4
	sw	%r3 %r1 0
	mov	%r3 %r1
	slli	%r7 %r3 2
	addi	%r3 %r3 48
	sw	%r3 %r1 0
	beq	%r2 %r4 branching_b.24
branching_b.42 :
	beq	%r2 %r5 branching_b.43
tail_b.68 :
	j	branching_b.47
branching_b.43 :
	beq	%r14 %r11 tail_b.60
tail_b.61 :
	addi	%r0 %r2 0
	j	branching_b.44
tail_b.60 :
	addi	%r0 %r2 1
	j	branching_b.44
branching_b.24 :
	mov	%r6 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.27
tail_b.26 :
	addi	%r0 %r1 1
	j	branching_b.25
tail_b.27 :
	addi	%r0 %r1 0
branching_b.25 :
	beq	%r1 %r11 branching_b.26
tail_b.36 :
	ilw.s	%r0 %f0 l.51
	j	branching_b.30
branching_b.26 :
	fbne	%f0 %f2 tail_b.29
tail_b.28 :
	addi	%r0 %r1 1
	j	branching_b.27
tail_b.29 :
	addi	%r0 %r1 0
branching_b.27 :
	beq	%r1 %r11 branching_b.28
tail_b.34 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.35
branching_b.28 :
	fbge	%f2 %f0 tail_b.31
tail_b.30 :
	addi	%r0 %r1 1
	j	branching_b.29
tail_b.31 :
	addi	%r0 %r1 0
branching_b.29 :
	beq	%r1 %r11 tail_b.32
tail_b.33 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.35
tail_b.32 :
	ilw.s	%r0 %f1 l.58
tail_b.35 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
branching_b.30 :
	mov	%r6 %r1
	sw.s	%r1 %f0 0
	addi	%r6 %r1 4
	lw.s	%r1 %f1 0
	fbne	%f1 %f2 tail_b.38
tail_b.37 :
	addi	%r0 %r1 1
	j	branching_b.31
tail_b.38 :
	addi	%r0 %r1 0
branching_b.31 :
	beq	%r1 %r11 branching_b.32
tail_b.47 :
	ilw.s	%r0 %f0 l.51
	j	branching_b.36
branching_b.32 :
	fbne	%f1 %f2 tail_b.40
tail_b.39 :
	addi	%r0 %r1 1
	j	branching_b.33
tail_b.40 :
	addi	%r0 %r1 0
branching_b.33 :
	beq	%r1 %r11 branching_b.34
tail_b.45 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.46
branching_b.34 :
	fbge	%f2 %f1 tail_b.42
tail_b.41 :
	addi	%r0 %r1 1
	j	branching_b.35
tail_b.42 :
	addi	%r0 %r1 0
branching_b.35 :
	beq	%r1 %r11 tail_b.43
tail_b.44 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.46
tail_b.43 :
	ilw.s	%r0 %f0 l.58
tail_b.46 :
	mul.s	%f1 %f1 %f1
	div.s	%f1 %f0 %f0
branching_b.36 :
	addi	%r6 %r1 4
	sw.s	%r1 %f0 0
	addi	%r6 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.49
tail_b.48 :
	addi	%r0 %r1 1
	j	branching_b.37
tail_b.49 :
	addi	%r0 %r1 0
branching_b.37 :
	beq	%r1 %r11 branching_b.38
tail_b.58 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.59
branching_b.38 :
	fbne	%f0 %f2 tail_b.51
tail_b.50 :
	addi	%r0 %r1 1
	j	branching_b.39
tail_b.51 :
	addi	%r0 %r1 0
branching_b.39 :
	beq	%r1 %r11 branching_b.40
tail_b.56 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.57
branching_b.40 :
	fbge	%f2 %f0 tail_b.53
tail_b.52 :
	addi	%r0 %r1 1
	j	branching_b.41
tail_b.53 :
	addi	%r0 %r1 0
branching_b.41 :
	beq	%r1 %r11 tail_b.54
tail_b.55 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.57
tail_b.54 :
	ilw.s	%r0 %f1 l.58
tail_b.57 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
tail_b.59 :
	addi	%r6 %r1 8
	sw.s	%r1 %f0 0
	j	branching_b.47
branching_b.44 :
	mov	%r6 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f0 %f1
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r6 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f2 tail_b.63
tail_b.62 :
	addi	%r0 %r1 1
	j	branching_b.45
tail_b.63 :
	addi	%r0 %r1 0
branching_b.45 :
	beq	%r1 %r11 branching_b.46
tail_b.66 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.67
branching_b.46 :
	beq	%r2 %r11 tail_b.64
tail_b.65 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f1
	j	tail_b.67
tail_b.64 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f1
tail_b.67 :
	mov	%r6 %r1
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	mov	%r6 %r1
	sw.s	%r1 %f0 0
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	addi	%r6 %r1 4
	sw.s	%r1 %f0 0
	addi	%r6 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	addi	%r6 %r1 8
	sw.s	%r1 %f0 0
branching_b.47 :
	bne	%r9 %r11 preloop_b.3
tail_b.130 :
	j	tail_b.131
preloop_b.3 :
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	mov.s	%f0 %f3
cos_loop.12 :
	ilw.s	%r0 %f0 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f3 branching_b.49
tail_b.69 :
	sub.s	%f1 %f3 %f0
	mov.s	%f0 %f3
	j	cos_loop.12
branching_b.49 :
	fbge	%f3 %f2 branching_b.50
tail_b.70 :
	add.s	%f1 %f3 %f0
	mov.s	%f0 %f3
	j	cos_loop.12
branching_b.50 :
	fbg	%f0 %f3 branching_b.54
branching_b.51 :
	sub.s	%f0 %f3 %f4
	ilw.s	%r0 %f3 l.58
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f4 branching_b.53
branching_b.52 :
	sub.s	%f4 %f0 %f0
	ilw.s	%r0 %f5 l.56
	ilw.s	%r0 %f3 l.59
	fbg	%f0 %f3 tail_b.72
tail_b.71 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f5 %f0 %f3
	j	postloop_b.2
tail_b.72 :
	sub.s	%f0 %f1 %f3
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f3 %f0 %f4
	ilw.s	%r0 %f0 l.64
	mul.s	%f3 %f0 %f6
	mul.s	%f1 %f4 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f4 l.65
	mul.s	%f3 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f3 %f5 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f5 %f0 %f3
	j	postloop_b.2
branching_b.53 :
	ilw.s	%r0 %f0 l.59
	fbg	%f4 %f0 tail_b.74
tail_b.73 :
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f3
	j	postloop_b.2
tail_b.74 :
	sub.s	%f4 %f1 %f5
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f4 l.64
	mul.s	%f5 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.65
	mul.s	%f5 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.56
	mul.s	%f5 %f0 %f5
	mul.s	%f1 %f4 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f3 %f0 %f3
	j	postloop_b.2
branching_b.54 :
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f3 branching_b.56
branching_b.55 :
	sub.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.58
	ilw.s	%r0 %f4 l.59
	fbg	%f0 %f4 tail_b.76
tail_b.75 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f4 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f3 %f0 %f3
	j	postloop_b.2
tail_b.76 :
	sub.s	%f0 %f1 %f4
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f4 %f0 %f5
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f4 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f6 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f3
	j	postloop_b.2
branching_b.56 :
	ilw.s	%r0 %f0 l.59
	fbg	%f3 %f0 tail_b.78
tail_b.77 :
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f3
	j	postloop_b.2
tail_b.78 :
	sub.s	%f3 %f1 %f1
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f3
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f4
	mul.s	%f5 %f3 %f0
	add.s	%f0 %f4 %f3
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f0
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f0 %f3
	mul.s	%f1 %f6 %f0
	mul.s	%f5 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f3
postloop_b.2 :
preloop_b.4 :
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	mov.s	%f0 %f7
sin_loop.12 :
	ilw.s	%r0 %f5 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f7 branching_b.58
tail_b.79 :
	sub.s	%f0 %f7 %f0
	mov.s	%f0 %f7
	j	sin_loop.12
branching_b.58 :
	fbge	%f7 %f2 branching_b.59
tail_b.80 :
	add.s	%f0 %f7 %f0
	mov.s	%f0 %f7
	j	sin_loop.12
branching_b.59 :
	fbg	%f5 %f7 branching_b.63
branching_b.60 :
	sub.s	%f5 %f7 %f6
	ilw.s	%r0 %f4 l.58
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f6 branching_b.62
branching_b.61 :
	sub.s	%f6 %f5 %f5
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.82
tail_b.81 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f5 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f6
	ilw.s	%r0 %f0 l.65
	mul.s	%f5 %f0 %f1
	mul.s	%f7 %f6 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f5 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.3
tail_b.82 :
	sub.s	%f5 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f1
	ilw.s	%r0 %f5 l.62
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f1
	ilw.s	%r0 %f5 l.56
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.3
branching_b.62 :
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.84
tail_b.83 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f1
	mul.s	%f5 %f7 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f6 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.56
	mul.s	%f6 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.3
tail_b.84 :
	sub.s	%f6 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f5 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.56
	mul.s	%f1 %f5 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.3
branching_b.63 :
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f4 l.57
	fbg	%f4 %f7 branching_b.65
branching_b.64 :
	sub.s	%f7 %f5 %f0
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.86
tail_b.85 :
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f4
	ilw.s	%r0 %f1 l.63
	mul.s	%f0 %f1 %f5
	ilw.s	%r0 %f1 l.64
	mul.s	%f0 %f1 %f1
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f1 %f1
	ilw.s	%r0 %f5 l.65
	mul.s	%f0 %f5 %f5
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f5 %f5
	mul.s	%f0 %f6 %f1
	mul.s	%f4 %f5 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f4
	j	postloop_b.3
tail_b.86 :
	sub.s	%f0 %f4 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f4 l.61
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f4 %f1
	ilw.s	%r0 %f4 l.62
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f4 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f4
	j	postloop_b.3
branching_b.65 :
	ilw.s	%r0 %f0 l.59
	fbg	%f7 %f0 tail_b.88
tail_b.87 :
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f7 %f1 %f1
	ilw.s	%r0 %f4 l.64
	mul.s	%f7 %f4 %f4
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.65
	mul.s	%f7 %f1 %f1
	mul.s	%f0 %f4 %f4
	add.s	%f4 %f1 %f1
	mul.s	%f7 %f6 %f4
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f6 %f0 %f4
	j	postloop_b.3
tail_b.88 :
	sub.s	%f7 %f4 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f4
postloop_b.3 :
preloop_b.5 :
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
cos_loop.11 :
	ilw.s	%r0 %f5 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f0 branching_b.67
tail_b.89 :
	sub.s	%f1 %f0 %f0
	j	cos_loop.11
branching_b.67 :
	fbge	%f0 %f2 branching_b.68
tail_b.90 :
	add.s	%f1 %f0 %f0
	j	cos_loop.11
branching_b.68 :
	fbg	%f5 %f0 branching_b.72
branching_b.69 :
	sub.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f6 l.57
	fbg	%f6 %f0 branching_b.71
branching_b.70 :
	sub.s	%f0 %f5 %f5
	ilw.s	%r0 %f1 l.56
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.92
tail_b.91 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f1 %f0 %f5
	j	postloop_b.4
tail_b.92 :
	sub.s	%f5 %f6 %f6
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f7
	mul.s	%f8 %f5 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f5 l.65
	mul.s	%f6 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f6 %f1 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f5
	j	postloop_b.4
branching_b.71 :
	ilw.s	%r0 %f5 l.59
	fbg	%f0 %f5 tail_b.94
tail_b.93 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f6 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.56
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f5
	j	postloop_b.4
tail_b.94 :
	sub.s	%f0 %f6 %f7
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f5 l.64
	mul.s	%f7 %f5 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.65
	mul.s	%f7 %f5 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.56
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f5
	j	postloop_b.4
branching_b.72 :
	ilw.s	%r0 %f8 l.56
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f0 branching_b.74
branching_b.73 :
	sub.s	%f0 %f5 %f0
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f5 l.59
	fbg	%f0 %f5 tail_b.96
tail_b.95 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f5
	j	postloop_b.4
tail_b.96 :
	sub.s	%f0 %f1 %f1
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f8 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f5
	j	postloop_b.4
branching_b.74 :
	ilw.s	%r0 %f5 l.59
	fbg	%f0 %f5 tail_b.98
tail_b.97 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f8 %f0 %f5
	j	postloop_b.4
tail_b.98 :
	sub.s	%f0 %f1 %f1
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f7
	mul.s	%f6 %f5 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f1 %f8 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f5
postloop_b.4 :
preloop_b.6 :
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	mov.s	%f0 %f7
sin_loop.11 :
	ilw.s	%r0 %f8 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f7 branching_b.76
tail_b.99 :
	sub.s	%f0 %f7 %f0
	mov.s	%f0 %f7
	j	sin_loop.11
branching_b.76 :
	fbge	%f7 %f2 branching_b.77
tail_b.100 :
	add.s	%f0 %f7 %f0
	mov.s	%f0 %f7
	j	sin_loop.11
branching_b.77 :
	fbg	%f8 %f7 branching_b.81
branching_b.78 :
	sub.s	%f8 %f7 %f6
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f6 branching_b.80
branching_b.79 :
	sub.s	%f6 %f8 %f9
	ilw.s	%r0 %f0 l.59
	fbg	%f9 %f0 tail_b.102
tail_b.101 :
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f9 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f6
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f1
	mul.s	%f8 %f6 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f9 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f6
	j	postloop_b.5
tail_b.102 :
	sub.s	%f9 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f6
	j	postloop_b.5
branching_b.80 :
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.104
tail_b.103 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f9
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f1
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.56
	mul.s	%f6 %f0 %f1
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f6
	j	postloop_b.5
tail_b.104 :
	sub.s	%f6 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f6
	j	postloop_b.5
branching_b.81 :
	ilw.s	%r0 %f1 l.56
	ilw.s	%r0 %f6 l.57
	fbg	%f6 %f7 branching_b.83
branching_b.82 :
	sub.s	%f7 %f8 %f9
	ilw.s	%r0 %f0 l.59
	fbg	%f9 %f0 tail_b.106
tail_b.105 :
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f7
	mul.s	%f8 %f6 %f0
	add.s	%f0 %f7 %f6
	mul.s	%f9 %f1 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f1 %f0 %f6
	j	postloop_b.5
tail_b.106 :
	sub.s	%f9 %f6 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f6 l.61
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.62
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f1 %f0 %f6
	j	postloop_b.5
branching_b.83 :
	ilw.s	%r0 %f0 l.59
	fbg	%f7 %f0 tail_b.108
tail_b.107 :
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f6
	mul.s	%f7 %f1 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f1 %f0 %f6
	j	postloop_b.5
tail_b.108 :
	sub.s	%f7 %f6 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f7 l.61
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.62
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f1 %f0 %f6
postloop_b.5 :
preloop_b.7 :
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	mov.s	%f0 %f7
cos_loop.10 :
	ilw.s	%r0 %f9 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f7 branching_b.85
tail_b.109 :
	sub.s	%f0 %f7 %f0
	mov.s	%f0 %f7
	j	cos_loop.10
branching_b.85 :
	fbge	%f7 %f2 branching_b.86
tail_b.110 :
	add.s	%f0 %f7 %f0
	mov.s	%f0 %f7
	j	cos_loop.10
branching_b.86 :
	fbg	%f9 %f7 branching_b.90
branching_b.87 :
	sub.s	%f9 %f7 %f0
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f8 l.57
	fbg	%f8 %f0 branching_b.89
branching_b.88 :
	sub.s	%f0 %f9 %f0
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.112
tail_b.111 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f8 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f7
	j	postloop_b.6
tail_b.112 :
	sub.s	%f0 %f8 %f9
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f9 %f1 %f8
	ilw.s	%r0 %f1 l.64
	mul.s	%f9 %f1 %f1
	mul.s	%f0 %f8 %f8
	add.s	%f8 %f1 %f8
	ilw.s	%r0 %f1 l.65
	mul.s	%f9 %f1 %f10
	mul.s	%f0 %f8 %f1
	add.s	%f1 %f10 %f8
	mul.s	%f9 %f7 %f1
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f7
	j	postloop_b.6
branching_b.89 :
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.114
tail_b.113 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f7
	j	postloop_b.6
tail_b.114 :
	sub.s	%f0 %f8 %f1
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f9
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f9 %f8
	ilw.s	%r0 %f0 l.56
	mul.s	%f1 %f0 %f1
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f7
	j	postloop_b.6
branching_b.90 :
	ilw.s	%r0 %f8 l.56
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f7 branching_b.92
branching_b.91 :
	sub.s	%f7 %f9 %f0
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f9 l.59
	fbg	%f0 %f9 tail_b.116
tail_b.115 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f9 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f9 %f9
	add.s	%f9 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f7
	j	postloop_b.6
tail_b.116 :
	sub.s	%f0 %f1 %f9
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f10
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f11
	mul.s	%f1 %f10 %f0
	add.s	%f0 %f11 %f10
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f11
	mul.s	%f1 %f10 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f9 %f8 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f7
	j	postloop_b.6
branching_b.92 :
	ilw.s	%r0 %f0 l.59
	fbg	%f7 %f0 tail_b.118
tail_b.117 :
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f7 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f8 %f0 %f7
	j	postloop_b.6
tail_b.118 :
	sub.s	%f7 %f1 %f9
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f9 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f9 %f8 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f7
postloop_b.6 :
preloop_b.8 :
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	mov.s	%f0 %f9
sin_loop.10 :
	ilw.s	%r0 %f1 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f9 branching_b.94
tail_b.119 :
	sub.s	%f0 %f9 %f0
	mov.s	%f0 %f9
	j	sin_loop.10
branching_b.94 :
	fbge	%f9 %f2 branching_b.95
tail_b.120 :
	add.s	%f0 %f9 %f0
	mov.s	%f0 %f9
	j	sin_loop.10
branching_b.95 :
	fbg	%f1 %f9 branching_b.99
branching_b.96 :
	sub.s	%f1 %f9 %f0
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f8 l.57
	fbg	%f8 %f0 branching_b.98
branching_b.97 :
	sub.s	%f0 %f1 %f2
	ilw.s	%r0 %f0 l.59
	fbg	%f2 %f0 tail_b.122
tail_b.121 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f10
	ilw.s	%r0 %f0 l.63
	mul.s	%f2 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f2 %f0 %f8
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f8 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f2 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.56
	mul.s	%f2 %f0 %f2
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f2
	j	postloop_b.7
tail_b.122 :
	sub.s	%f2 %f8 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f9 %f0 %f2
	j	postloop_b.7
branching_b.98 :
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.124
tail_b.123 :
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f8
	ilw.s	%r0 %f1 l.63
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f2 l.64
	mul.s	%f0 %f2 %f2
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f2 %f2
	ilw.s	%r0 %f1 l.65
	mul.s	%f0 %f1 %f1
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.56
	mul.s	%f0 %f2 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f9 %f0 %f2
	j	postloop_b.7
tail_b.124 :
	sub.s	%f0 %f8 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f9 %f0 %f2
	j	postloop_b.7
branching_b.99 :
	ilw.s	%r0 %f2 l.56
	ilw.s	%r0 %f10 l.57
	fbg	%f10 %f9 branching_b.101
branching_b.100 :
	sub.s	%f9 %f1 %f8
	ilw.s	%r0 %f0 l.59
	fbg	%f8 %f0 tail_b.126
tail_b.125 :
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f8 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f2 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f2
	j	postloop_b.7
tail_b.126 :
	sub.s	%f8 %f10 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f8 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f2 %f0 %f2
	j	postloop_b.7
branching_b.101 :
	ilw.s	%r0 %f0 l.59
	fbg	%f9 %f0 tail_b.128
tail_b.127 :
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f8 l.64
	mul.s	%f9 %f8 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.65
	mul.s	%f9 %f8 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f2 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f2 %f0 %f2
	j	postloop_b.7
tail_b.128 :
	sub.s	%f9 %f10 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f8 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f2 %f0 %f2
postloop_b.7 :
tail_b.129 :
	mul.s	%f7 %f5 %f9
	mul.s	%f6 %f4 %f0
	mul.s	%f7 %f0 %f0
	mul.s	%f2 %f3 %f1
	sub.s	%f1 %f0 %f10
	mul.s	%f6 %f3 %f0
	mul.s	%f7 %f0 %f0
	mul.s	%f2 %f4 %f1
	add.s	%f1 %f0 %f11
	mul.s	%f2 %f5 %f8
	mul.s	%f6 %f4 %f0
	mul.s	%f2 %f0 %f1
	mul.s	%f7 %f3 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f6 %f3 %f0
	mul.s	%f2 %f0 %f2
	mul.s	%f7 %f4 %f0
	sub.s	%f0 %f2 %f2
	neg.s	%f6 %f6
	mul.s	%f5 %f4 %f4
	mul.s	%f5 %f3 %f13
	mov	%r6 %r1
	lw.s	%r1 %f12 0
	addi	%r6 %r1 4
	lw.s	%r1 %f7 0
	addi	%r6 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f9 %f9 %f0
	mul.s	%f0 %f12 %f3
	mul.s	%f8 %f8 %f0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f3 %f3
	mul.s	%f6 %f6 %f0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f3 %f0
	mov	%r6 %r1
	sw.s	%r1 %f0 0
	mul.s	%f10 %f10 %f0
	mul.s	%f0 %f12 %f0
	mul.s	%f1 %f1 %f3
	mul.s	%f3 %f7 %f3
	add.s	%f3 %f0 %f3
	mul.s	%f4 %f4 %f0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f3 %f0
	addi	%r6 %r1 4
	sw.s	%r1 %f0 0
	mul.s	%f11 %f11 %f0
	mul.s	%f0 %f12 %f0
	mul.s	%f2 %f2 %f3
	mul.s	%f3 %f7 %f3
	add.s	%f3 %f0 %f3
	mul.s	%f13 %f13 %f0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f3 %f0
	addi	%r6 %r1 8
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f3 l.67
	mul.s	%f10 %f12 %f0
	mul.s	%f11 %f0 %f14
	mul.s	%f1 %f7 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f14 %f14
	mul.s	%f4 %f5 %f0
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f14 %f0
	mul.s	%f0 %f3 %f0
	mov	%r10 %r1
	sw.s	%r1 %f0 0
	mul.s	%f9 %f12 %f0
	mul.s	%f11 %f0 %f11
	mul.s	%f8 %f7 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f11 %f2
	mul.s	%f6 %f5 %f0
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f0 %f3 %f0
	addi	%r10 %r1 4
	sw.s	%r1 %f0 0
	mul.s	%f9 %f12 %f0
	mul.s	%f10 %f0 %f2
	mul.s	%f8 %f7 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f1
	mul.s	%f6 %f5 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f0 %f3 %f0
	addi	%r10 %r1 8
	sw.s	%r1 %f0 0
tail_b.131 :
	addi	%r0 %r1 1
branching_b.102 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.133
tail_b.134 :
	addi	%r7 %r1 1
	mov	%r1 %r7
	j	read_object_loop.0
tail_b.133 :
	sw	%r0 %r7 0
postloop_b.8 :
return_point.2 :
	retl
read_net_item.0 :
branching_b.103 :
	in	%r3
	addi	%r0 %r2 -1
	beq	%r3 %r2 tail_b.136
tail_b.137 :
	addi	%r1 %r2 1
	sw	%r26 %r3 -4
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	read_net_item.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov	%r1 %r2
	lw	%r26 %r3 -4
	lw	%r26 %r1 0
	slli	%r1 %r1 2
	add	%r2 %r1 %r1
	sw	%r1 %r3 0
	mov	%r2 %r1
	j	return_point.3
tail_b.136 :
	addi	%r1 %r1 1
	addi	%r0 %r2 -1
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
return_point.3 :
	retl
read_or_network.0 :
	mov	%r1 %r3
branching_b.104 :
	addi	%r0 %r1 0
	sw	%r26 %r3 0
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	read_net_item.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	mov	%r1 %r4
	lw	%r26 %r3 0
	mov	%r4 %r1
	lw	%r1 %r2 0
	addi	%r0 %r1 -1
	beq	%r2 %r1 tail_b.138
tail_b.139 :
	addi	%r3 %r1 1
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	read_or_network.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	mov	%r1 %r2
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	slli	%r3 %r1 2
	add	%r2 %r1 %r1
	sw	%r1 %r4 0
	mov	%r2 %r1
	j	return_point.4
tail_b.138 :
	addi	%r3 %r1 1
	mov	%r4 %r2
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
return_point.4 :
	retl
read_and_network.0 :
preloop_b.9 :
	mov	%r1 %r2
read_and_network_loop.0 :
	addi	%r0 %r1 0
	sw	%r26 %r2 0
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	read_net_item.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	mov	%r1 %r3
	lw	%r26 %r2 0
	mov	%r3 %r1
	lw	%r1 %r4 0
	addi	%r0 %r1 -1
	beq	%r4 %r1 tail_b.140
tail_b.141 :
	slli	%r2 %r1 2
	addi	%r1 %r1 332
	sw	%r1 %r3 0
	addi	%r2 %r1 1
	mov	%r1 %r2
	j	read_and_network_loop.0
tail_b.140 :
postloop_b.9 :
return_point.5 :
	retl
iter_setup_dirvec_constants.0 :
	mov	%r1 %r5
preloop_b.10 :
	mov	%r2 %r4
iter_setup_dirvec_constants_loop.0 :
	addi	%r0 %r3 0
	ble	%r3 %r4 branching_b.107
tail_b.191 :
	j	postloop_b.10
branching_b.107 :
	slli	%r4 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r7 0
	lw	%r5 %r6 4
	lw	%r5 %r1 0
	lw	%r7 %r2 4
	addi	%r0 %r8 1
	beq	%r2 %r8 branching_b.108
branching_b.126 :
	addi	%r0 %r8 2
	beq	%r2 %r8 branching_b.127
branching_b.129 :
	addi	%r0 %r2 5
	ilw.s	%r0 %f5 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	mov.s	%f5 %f0
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r8
	lw	%r26 %r1 0
	mov	%r1 %r2
	lw.s	%r2 %f4 0
	addi	%r1 %r2 4
	lw.s	%r2 %f6 0
	addi	%r1 %r2 8
	lw.s	%r2 %f3 0
	mul.s	%f4 %f4 %f0
	lw	%r7 %r2 16
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f2
	mul.s	%f6 %f6 %f1
	lw	%r7 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	mul.s	%f3 %f3 %f2
	lw	%r7 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	lw	%r7 %r2 12
	beq	%r2 %r3 tail_b.181
tail_b.182 :
	mul.s	%f3 %f6 %f0
	lw	%r7 %r2 36
	lw.s	%r2 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f3 %f1
	lw	%r7 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f4 %f1
	lw	%r7 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f6
	j	branching_b.130
tail_b.181 :
	mov.s	%f1 %f6
	j	branching_b.130
branching_b.127 :
	addi	%r0 %r2 4
	ilw.s	%r0 %f2 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r8
	lw	%r26 %r1 0
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	lw	%r7 %r2 16
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	addi	%r1 %r2 4
	lw.s	%r2 %f0 0
	lw	%r7 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	fbge	%f2 %f1 tail_b.177
tail_b.176 :
	addi	%r0 %r1 1
	j	branching_b.128
tail_b.177 :
	addi	%r0 %r1 0
	j	branching_b.128
branching_b.108 :
	addi	%r0 %r2 6
	ilw.s	%r0 %f2 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r8
	lw	%r26 %r1 0
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	fbne	%f0 %f2 tail_b.143
tail_b.142 :
	addi	%r0 %r2 1
	j	branching_b.109
tail_b.143 :
	addi	%r0 %r2 0
branching_b.109 :
	beq	%r2 %r3 branching_b.110
tail_b.152 :
	ilw.s	%r0 %f0 l.51
	addi	%r8 %r2 4
	sw.s	%r2 %f0 0
	j	branching_b.114
branching_b.110 :
	lw	%r7 %r9 24
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	fbge	%f0 %f2 tail_b.145
tail_b.144 :
	addi	%r0 %r2 1
	j	branching_b.111
tail_b.145 :
	addi	%r0 %r2 0
branching_b.111 :
	beq	%r9 %r3 tail_b.146
branching_b.112 :
	beq	%r2 %r3 tail_b.147
tail_b.148 :
	addi	%r0 %r2 0
	j	branching_b.113
tail_b.147 :
	addi	%r0 %r2 1
	j	branching_b.113
tail_b.146 :
branching_b.113 :
	lw	%r7 %r9 16
	lw.s	%r9 %f0 0
	beq	%r2 %r3 tail_b.149
tail_b.150 :
	j	tail_b.151
tail_b.149 :
	neg.s	%f0 %f0
tail_b.151 :
	mov	%r8 %r2
	sw.s	%r2 %f0 0
	ilw.s	%r0 %f0 l.56
	mov	%r1 %r2
	lw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r8 %r2 4
	sw.s	%r2 %f0 0
branching_b.114 :
	addi	%r1 %r2 4
	lw.s	%r2 %f0 0
	fbne	%f0 %f2 tail_b.154
tail_b.153 :
	addi	%r0 %r2 1
	j	branching_b.115
tail_b.154 :
	addi	%r0 %r2 0
branching_b.115 :
	beq	%r2 %r3 branching_b.116
tail_b.163 :
	ilw.s	%r0 %f0 l.51
	addi	%r8 %r2 12
	sw.s	%r2 %f0 0
	j	branching_b.120
branching_b.116 :
	lw	%r7 %r9 24
	addi	%r1 %r2 4
	lw.s	%r2 %f0 0
	fbge	%f0 %f2 tail_b.156
tail_b.155 :
	addi	%r0 %r2 1
	j	branching_b.117
tail_b.156 :
	addi	%r0 %r2 0
branching_b.117 :
	beq	%r9 %r3 tail_b.157
branching_b.118 :
	beq	%r2 %r3 tail_b.158
tail_b.159 :
	addi	%r0 %r9 0
	j	branching_b.119
tail_b.158 :
	addi	%r0 %r9 1
	j	branching_b.119
tail_b.157 :
	mov	%r2 %r9
branching_b.119 :
	lw	%r7 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	beq	%r9 %r3 tail_b.160
tail_b.161 :
	j	tail_b.162
tail_b.160 :
	neg.s	%f0 %f0
tail_b.162 :
	addi	%r8 %r2 8
	sw.s	%r2 %f0 0
	ilw.s	%r0 %f0 l.56
	addi	%r1 %r2 4
	lw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r8 %r2 12
	sw.s	%r2 %f0 0
branching_b.120 :
	addi	%r1 %r2 8
	lw.s	%r2 %f0 0
	fbne	%f0 %f2 tail_b.165
tail_b.164 :
	addi	%r0 %r2 1
	j	branching_b.121
tail_b.165 :
	addi	%r0 %r2 0
branching_b.121 :
	beq	%r2 %r3 branching_b.122
tail_b.174 :
	ilw.s	%r0 %f0 l.51
	addi	%r8 %r1 20
	sw.s	%r1 %f0 0
	j	tail_b.175
branching_b.122 :
	lw	%r7 %r9 24
	addi	%r1 %r2 8
	lw.s	%r2 %f0 0
	fbge	%f0 %f2 tail_b.167
tail_b.166 :
	addi	%r0 %r2 1
	j	branching_b.123
tail_b.167 :
	addi	%r0 %r2 0
branching_b.123 :
	beq	%r9 %r3 tail_b.168
branching_b.124 :
	beq	%r2 %r3 tail_b.169
tail_b.170 :
	addi	%r0 %r2 0
	j	branching_b.125
tail_b.169 :
	addi	%r0 %r2 1
	j	branching_b.125
tail_b.168 :
branching_b.125 :
	lw	%r7 %r7 16
	addi	%r7 %r7 8
	lw.s	%r7 %f0 0
	beq	%r2 %r3 tail_b.171
tail_b.172 :
	j	tail_b.173
tail_b.171 :
	neg.s	%f0 %f0
tail_b.173 :
	addi	%r8 %r2 16
	sw.s	%r2 %f0 0
	ilw.s	%r0 %f1 l.56
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f0 %f1 %f0
	addi	%r8 %r1 20
	sw.s	%r1 %f0 0
tail_b.175 :
	slli	%r4 %r1 2
	add	%r6 %r1 %r1
	sw	%r1 %r8 0
tail_b.190 :
	addi	%r4 %r1 -1
	mov	%r1 %r4
	j	iter_setup_dirvec_constants_loop.0
branching_b.128 :
	beq	%r1 %r3 tail_b.178
tail_b.179 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f0
	mov	%r8 %r1
	sw.s	%r1 %f0 0
	lw	%r7 %r1 16
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r8 %r1 4
	sw.s	%r1 %f0 0
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r8 %r1 8
	sw.s	%r1 %f0 0
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r8 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.180
tail_b.178 :
	ilw.s	%r0 %f0 l.51
	mov	%r8 %r1
	sw.s	%r1 %f0 0
tail_b.180 :
	slli	%r4 %r1 2
	add	%r6 %r1 %r1
	sw	%r1 %r8 0
	j	tail_b.190
branching_b.130 :
	mov	%r1 %r2
	lw.s	%r2 %f1 0
	lw	%r7 %r2 16
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	neg.s	%f0 %f7
	addi	%r1 %r2 4
	lw.s	%r2 %f0 0
	lw	%r7 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f3
	addi	%r1 %r2 8
	lw.s	%r2 %f1 0
	lw	%r7 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	neg.s	%f0 %f1
	mov	%r8 %r2
	sw.s	%r2 %f6 0
	lw	%r7 %r2 12
	bne	%r2 %r3 tail_b.183
tail_b.184 :
	addi	%r8 %r1 4
	sw.s	%r1 %f7 0
	addi	%r8 %r1 8
	sw.s	%r1 %f3 0
	addi	%r8 %r1 12
	sw.s	%r1 %f1 0
	j	branching_b.131
tail_b.183 :
	addi	%r1 %r2 8
	lw.s	%r2 %f2 0
	lw	%r7 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f2 %f2
	addi	%r1 %r2 4
	lw.s	%r2 %f0 0
	lw	%r7 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f4 l.67
	div.s	%f4 %f0 %f0
	sub.s	%f0 %f7 %f0
	addi	%r8 %r2 4
	sw.s	%r2 %f0 0
	addi	%r1 %r2 8
	lw.s	%r2 %f2 0
	lw	%r7 %r2 36
	lw.s	%r2 %f0 0
	mul.s	%f0 %f2 %f2
	mov	%r1 %r2
	lw.s	%r2 %f7 0
	lw	%r7 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	div.s	%f4 %f0 %f0
	sub.s	%f0 %f3 %f0
	addi	%r8 %r2 8
	sw.s	%r2 %f0 0
	addi	%r1 %r2 4
	lw.s	%r2 %f0 0
	lw	%r7 %r2 36
	lw.s	%r2 %f2 0
	mul.s	%f2 %f0 %f2
	lw.s	%r1 %f3 0
	lw	%r7 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f2 %f0
	div.s	%f4 %f0 %f0
	sub.s	%f0 %f1 %f0
	addi	%r8 %r1 12
	sw.s	%r1 %f0 0
branching_b.131 :
	fbne	%f6 %f5 tail_b.186
tail_b.185 :
	addi	%r0 %r1 1
	j	branching_b.132
tail_b.186 :
	addi	%r0 %r1 0
branching_b.132 :
	beq	%r1 %r3 tail_b.187
tail_b.188 :
	j	tail_b.189
tail_b.187 :
	ilw.s	%r0 %f0 l.56
	div.s	%f6 %f0 %f0
	addi	%r8 %r1 16
	sw.s	%r1 %f0 0
tail_b.189 :
	slli	%r4 %r1 2
	add	%r6 %r1 %r1
	sw	%r1 %r8 0
	j	tail_b.190
postloop_b.10 :
return_point.6 :
	retl
setup_startp_constants.0 :
preloop_b.11 :
	mov	%r2 %r6
setup_startp_constants_loop.0 :
	addi	%r0 %r7 0
	ble	%r7 %r6 branching_b.134
tail_b.200 :
	j	postloop_b.11
branching_b.134 :
	slli	%r6 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r3 0
	lw	%r3 %r4 40
	lw	%r3 %r5 4
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	lw	%r3 %r2 20
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	mov	%r4 %r2
	sw.s	%r2 %f0 0
	addi	%r1 %r2 4
	lw.s	%r2 %f0 0
	lw	%r3 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r4 %r2 4
	sw.s	%r2 %f0 0
	addi	%r1 %r2 8
	lw.s	%r2 %f1 0
	lw	%r3 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r4 %r2 8
	sw.s	%r2 %f0 0
	addi	%r0 %r2 2
	beq	%r5 %r2 tail_b.192
branching_b.135 :
	bl	%r2 %r5 branching_b.136
tail_b.198 :
	j	tail_b.199
branching_b.136 :
	mov	%r4 %r2
	lw.s	%r2 %f5 0
	addi	%r4 %r2 4
	lw.s	%r2 %f1 0
	addi	%r4 %r2 8
	lw.s	%r2 %f2 0
	mul.s	%f5 %f5 %f3
	lw	%r3 %r2 16
	lw.s	%r2 %f0 0
	mul.s	%f0 %f3 %f3
	mul.s	%f1 %f1 %f0
	lw	%r3 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f2 %f3
	lw	%r3 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f0 %f0
	lw	%r3 %r2 12
	beq	%r2 %r7 tail_b.193
tail_b.194 :
	mul.s	%f2 %f1 %f4
	lw	%r3 %r2 36
	lw.s	%r2 %f3 0
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f3
	mul.s	%f5 %f2 %f2
	lw	%r3 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f2
	mul.s	%f1 %f5 %f1
	lw	%r3 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	j	branching_b.137
tail_b.193 :
	mov.s	%f0 %f1
	j	branching_b.137
tail_b.192 :
	lw	%r3 %r2 16
	mov	%r4 %r3
	lw.s	%r3 %f2 0
	addi	%r4 %r3 4
	lw.s	%r3 %f0 0
	addi	%r4 %r3 8
	lw.s	%r3 %f3 0
	mov	%r2 %r3
	lw.s	%r3 %f1 0
	mul.s	%f2 %f1 %f2
	addi	%r2 %r3 4
	lw.s	%r3 %f1 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r4 %r2 12
	sw.s	%r2 %f0 0
	j	tail_b.199
branching_b.137 :
	addi	%r0 %r2 3
	beq	%r5 %r2 tail_b.195
tail_b.196 :
	mov.s	%f1 %f0
	j	tail_b.197
tail_b.195 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f0
tail_b.197 :
	addi	%r4 %r2 12
	sw.s	%r2 %f0 0
tail_b.199 :
	addi	%r6 %r2 -1
	mov	%r2 %r6
	j	setup_startp_constants_loop.0
postloop_b.11 :
return_point.7 :
	retl
check_all_inside.0 :
	mov	%r2 %r3
	mov.s	%f1 %f3
	mov.s	%f0 %f5
preloop_b.12 :
	mov	%r1 %r4
check_all_inside_loop.0 :
	slli	%r4 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r2 0
	addi	%r0 %r1 -1
	beq	%r2 %r1 tail_b.201
branching_b.139 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r6 0
	lw	%r6 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f5 %f8
	lw	%r6 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f7
	lw	%r6 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f6
	lw	%r6 %r1 4
	addi	%r0 %r2 1
	beq	%r1 %r2 branching_b.140
branching_b.150 :
	addi	%r0 %r2 2
	beq	%r1 %r2 branching_b.151
branching_b.155 :
	mul.s	%f8 %f8 %f1
	lw	%r6 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	mul.s	%f7 %f7 %f1
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f6 %f4
	lw	%r6 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f1
	lw	%r6 %r1 12
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.226
tail_b.227 :
	mul.s	%f6 %f7 %f0
	lw	%r6 %r1 36
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f4
	mul.s	%f8 %f6 %f1
	lw	%r6 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f1
	mul.s	%f7 %f8 %f0
	lw	%r6 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	j	branching_b.156
tail_b.226 :
	j	branching_b.156
branching_b.151 :
	lw	%r6 %r1 16
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	mul.s	%f8 %f0 %f0
	addi	%r1 %r2 4
	lw.s	%r2 %f1 0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	lw	%r6 %r5 24
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.220
tail_b.219 :
	addi	%r0 %r2 1
	j	branching_b.152
tail_b.220 :
	addi	%r0 %r2 0
	j	branching_b.152
branching_b.140 :
	ilw.s	%r0 %f0 l.51
	fbge	%f8 %f0 tail_b.203
tail_b.202 :
	neg.s	%f8 %f1
	j	branching_b.141
tail_b.203 :
	mov.s	%f8 %f1
	j	branching_b.141
tail_b.201 :
	addi	%r0 %r1 1
postloop_b.12 :
return_point.8 :
	retl
branching_b.141 :
	lw	%r6 %r1 16
	lw.s	%r1 %f4 0
	fbge	%f1 %f4 tail_b.205
tail_b.204 :
	addi	%r0 %r1 1
	j	branching_b.142
tail_b.205 :
	addi	%r0 %r1 0
branching_b.142 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.206
branching_b.143 :
	fbge	%f7 %f0 tail_b.208
tail_b.207 :
	neg.s	%f7 %f4
	j	branching_b.144
tail_b.208 :
	mov.s	%f7 %f4
	j	branching_b.144
tail_b.206 :
	addi	%r0 %r1 0
branching_b.148 :
	beq	%r1 %r2 branching_b.149
tail_b.218 :
	lw	%r6 %r1 24
	mov	%r1 %r2
	j	branching_b.161
branching_b.149 :
	lw	%r6 %r1 24
	beq	%r1 %r2 tail_b.216
tail_b.217 :
	addi	%r0 %r2 0
	j	branching_b.161
tail_b.216 :
	addi	%r0 %r2 1
branching_b.161 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.237
tail_b.238 :
	addi	%r0 %r1 0
	j	postloop_b.12
tail_b.237 :
	addi	%r4 %r1 1
	mov	%r1 %r4
	j	check_all_inside_loop.0
branching_b.144 :
	lw	%r6 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f4 %f1 tail_b.210
tail_b.209 :
	addi	%r0 %r1 1
	j	branching_b.145
tail_b.210 :
	addi	%r0 %r1 0
branching_b.145 :
	beq	%r1 %r2 tail_b.211
branching_b.146 :
	fbge	%f6 %f0 tail_b.213
tail_b.212 :
	neg.s	%f6 %f0
	j	branching_b.147
tail_b.213 :
	mov.s	%f6 %f0
	j	branching_b.147
tail_b.211 :
	addi	%r0 %r1 0
	j	branching_b.148
branching_b.147 :
	lw	%r6 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.215
tail_b.214 :
	addi	%r0 %r1 1
	j	branching_b.148
tail_b.215 :
	addi	%r0 %r1 0
	j	branching_b.148
branching_b.152 :
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.221
branching_b.153 :
	beq	%r2 %r1 tail_b.222
tail_b.223 :
	addi	%r0 %r2 0
	j	branching_b.154
tail_b.222 :
	addi	%r0 %r2 1
	j	branching_b.154
tail_b.221 :
branching_b.154 :
	beq	%r2 %r1 tail_b.224
tail_b.225 :
	addi	%r0 %r2 0
	j	branching_b.161
tail_b.224 :
	addi	%r0 %r2 1
	j	branching_b.161
branching_b.156 :
	lw	%r6 %r1 4
	addi	%r0 %r2 3
	beq	%r1 %r2 tail_b.228
tail_b.229 :
	mov.s	%f1 %f0
	j	branching_b.157
tail_b.228 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f0
branching_b.157 :
	lw	%r6 %r2 24
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.231
tail_b.230 :
	addi	%r0 %r1 1
	j	branching_b.158
tail_b.231 :
	addi	%r0 %r1 0
branching_b.158 :
	beq	%r2 %r5 tail_b.232
branching_b.159 :
	beq	%r1 %r5 tail_b.233
tail_b.234 :
	addi	%r0 %r1 0
	j	branching_b.160
tail_b.233 :
	addi	%r0 %r1 1
	j	branching_b.160
tail_b.232 :
branching_b.160 :
	beq	%r1 %r5 tail_b.235
tail_b.236 :
	addi	%r0 %r2 0
	j	branching_b.161
tail_b.235 :
	addi	%r0 %r2 1
	j	branching_b.161
shadow_check_and_group.0 :
	mov	%r2 %r4
preloop_b.13 :
	mov	%r1 %r6
shadow_check_and_group_loop.0 :
	slli	%r6 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r2 0
	addi	%r0 %r1 -1
	beq	%r2 %r1 tail_b.239
branching_b.163 :
	slli	%r6 %r2 2
	add	%r4 %r2 %r2
	lw	%r2 %r7 0
	slli	%r7 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r8 0
	lw.s	%r0 %f0 552
	lw	%r8 %r2 20
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f1 556
	lw	%r8 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f0 560
	lw	%r8 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f3
	slli	%r7 %r2 2
	addi	%r2 %r2 748
	lw	%r2 %r9 0
	lw	%r8 %r5 4
	addi	%r0 %r2 1
	beq	%r5 %r2 branching_b.164
branching_b.191 :
	addi	%r0 %r3 2
	beq	%r5 %r3 branching_b.192
branching_b.194 :
	mov	%r9 %r3
	lw.s	%r3 %f7 0
	ilw.s	%r0 %f2 l.51
	fbne	%f7 %f2 tail_b.291
tail_b.290 :
	addi	%r0 %r3 1
	j	branching_b.195
tail_b.291 :
	addi	%r0 %r3 0
	j	branching_b.195
branching_b.192 :
	mov	%r9 %r3
	lw.s	%r3 %f1 0
	ilw.s	%r0 %f0 l.51
	fbge	%f1 %f0 tail_b.287
tail_b.286 :
	addi	%r0 %r3 1
	j	branching_b.193
tail_b.287 :
	addi	%r0 %r3 0
	j	branching_b.193
branching_b.164 :
	mov	%r9 %r3
	lw.s	%r3 %f0 0
	sub.s	%f4 %f0 %f0
	addi	%r9 %r3 4
	lw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 740
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f6 l.51
	fbge	%f0 %f6 tail_b.241
tail_b.240 :
	neg.s	%f0 %f2
	j	branching_b.165
tail_b.241 :
	mov.s	%f0 %f2
	j	branching_b.165
tail_b.239 :
	addi	%r0 %r1 0
postloop_b.14 :
return_point.9 :
	retl
branching_b.165 :
	lw	%r8 %r3 16
	addi	%r3 %r3 4
	lw.s	%r3 %f0 0
	fbge	%f2 %f0 tail_b.243
tail_b.242 :
	addi	%r0 %r3 1
	j	branching_b.166
tail_b.243 :
	addi	%r0 %r3 0
branching_b.166 :
	addi	%r0 %r5 0
	beq	%r3 %r5 tail_b.244
branching_b.167 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f1 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f6 tail_b.246
tail_b.245 :
	neg.s	%f0 %f0
	j	branching_b.168
tail_b.246 :
	j	branching_b.168
tail_b.244 :
	addi	%r0 %r3 0
branching_b.172 :
	beq	%r3 %r5 branching_b.173
tail_b.285 :
	sw.s	%r0 %f1 540
	addi	%r0 %r3 1
	j	branching_b.201
branching_b.173 :
	addi	%r9 %r3 8
	lw.s	%r3 %f0 0
	sub.s	%f5 %f0 %f1
	addi	%r9 %r3 12
	lw.s	%r3 %f0 0
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f0 736
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f6 tail_b.255
tail_b.254 :
	neg.s	%f0 %f1
	j	branching_b.174
tail_b.255 :
	mov.s	%f0 %f1
branching_b.174 :
	lw	%r8 %r3 16
	lw.s	%r3 %f0 0
	fbge	%f1 %f0 tail_b.257
tail_b.256 :
	addi	%r0 %r3 1
	j	branching_b.175
tail_b.257 :
	addi	%r0 %r3 0
branching_b.175 :
	beq	%r3 %r5 tail_b.258
branching_b.176 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f2 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f6 tail_b.260
tail_b.259 :
	neg.s	%f0 %f1
	j	branching_b.177
tail_b.260 :
	mov.s	%f0 %f1
	j	branching_b.177
tail_b.258 :
	addi	%r0 %r3 0
branching_b.181 :
	beq	%r3 %r5 branching_b.182
tail_b.284 :
	sw.s	%r0 %f2 540
	addi	%r0 %r3 2
	j	branching_b.201
branching_b.182 :
	addi	%r9 %r3 16
	lw.s	%r3 %f0 0
	sub.s	%f3 %f0 %f1
	addi	%r9 %r3 20
	lw.s	%r3 %f0 0
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f0 736
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f6 tail_b.269
tail_b.268 :
	neg.s	%f0 %f0
	j	branching_b.183
tail_b.269 :
branching_b.183 :
	lw	%r8 %r3 16
	lw.s	%r3 %f1 0
	fbge	%f0 %f1 tail_b.271
tail_b.270 :
	addi	%r0 %r3 1
	j	branching_b.184
tail_b.271 :
	addi	%r0 %r3 0
branching_b.184 :
	beq	%r3 %r5 tail_b.272
branching_b.185 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f2 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f6 tail_b.274
tail_b.273 :
	neg.s	%f0 %f1
	j	branching_b.186
tail_b.274 :
	mov.s	%f0 %f1
	j	branching_b.186
tail_b.272 :
	addi	%r0 %r3 0
branching_b.190 :
	beq	%r3 %r5 tail_b.282
tail_b.283 :
	sw.s	%r0 %f2 540
	addi	%r0 %r3 3
	j	branching_b.201
tail_b.282 :
	addi	%r0 %r3 0
	j	branching_b.201
branching_b.186 :
	lw	%r8 %r3 16
	addi	%r3 %r3 4
	lw.s	%r3 %f0 0
	fbge	%f1 %f0 tail_b.276
tail_b.275 :
	addi	%r0 %r3 1
	j	branching_b.187
tail_b.276 :
	addi	%r0 %r3 0
branching_b.187 :
	beq	%r3 %r5 tail_b.277
branching_b.188 :
	addi	%r9 %r3 20
	lw.s	%r3 %f0 0
	fbne	%f0 %f6 tail_b.279
tail_b.278 :
	addi	%r0 %r3 1
	j	branching_b.189
tail_b.279 :
	addi	%r0 %r3 0
	j	branching_b.189
tail_b.277 :
	addi	%r0 %r3 0
	j	branching_b.190
branching_b.189 :
	beq	%r3 %r5 tail_b.280
tail_b.281 :
	addi	%r0 %r3 0
	j	branching_b.190
tail_b.280 :
	addi	%r0 %r3 1
	j	branching_b.190
branching_b.177 :
	lw	%r8 %r3 16
	addi	%r3 %r3 8
	lw.s	%r3 %f0 0
	fbge	%f1 %f0 tail_b.262
tail_b.261 :
	addi	%r0 %r3 1
	j	branching_b.178
tail_b.262 :
	addi	%r0 %r3 0
branching_b.178 :
	beq	%r3 %r5 tail_b.263
branching_b.179 :
	addi	%r9 %r3 12
	lw.s	%r3 %f0 0
	fbne	%f0 %f6 tail_b.265
tail_b.264 :
	addi	%r0 %r3 1
	j	branching_b.180
tail_b.265 :
	addi	%r0 %r3 0
	j	branching_b.180
tail_b.263 :
	addi	%r0 %r3 0
	j	branching_b.181
branching_b.180 :
	beq	%r3 %r5 tail_b.266
tail_b.267 :
	addi	%r0 %r3 0
	j	branching_b.181
tail_b.266 :
	addi	%r0 %r3 1
	j	branching_b.181
branching_b.201 :
	lw.s	%r0 %f0 540
	addi	%r0 %r8 0
	bne	%r3 %r8 branching_b.202
tail_b.305 :
	addi	%r0 %r3 0
	j	branching_b.203
branching_b.202 :
	ilw.s	%r0 %f1 l.68
	fbge	%f0 %f1 tail_b.304
tail_b.303 :
	addi	%r0 %r3 1
	j	branching_b.203
tail_b.304 :
	addi	%r0 %r3 0
branching_b.203 :
	beq	%r3 %r8 branching_b.204
preloop_b.14 :
	ilw.s	%r0 %f1 l.69
	add.s	%f1 %f0 %f2
	lw.s	%r0 %f0 312
	mul.s	%f2 %f0 %f1
	lw.s	%r0 %f0 552
	add.s	%f0 %f1 %f3
	lw.s	%r0 %f0 316
	mul.s	%f2 %f0 %f0
	lw.s	%r0 %f1 556
	add.s	%f1 %f0 %f4
	lw.s	%r0 %f0 320
	mul.s	%f2 %f0 %f0
	lw.s	%r0 %f1 560
	add.s	%f1 %f0 %f5
	mov	%r8 %r7
check_all_inside_loop.3 :
	slli	%r7 %r3 2
	add	%r4 %r3 %r3
	lw	%r3 %r3 0
	beq	%r3 %r1 tail_b.308
branching_b.206 :
	slli	%r3 %r3 2
	addi	%r3 %r3 48
	lw	%r3 %r9 0
	lw	%r9 %r3 20
	lw.s	%r3 %f0 0
	sub.s	%f0 %f3 %f6
	lw	%r9 %r3 20
	addi	%r3 %r3 4
	lw.s	%r3 %f0 0
	sub.s	%f0 %f4 %f8
	lw	%r9 %r3 20
	addi	%r3 %r3 8
	lw.s	%r3 %f0 0
	sub.s	%f0 %f5 %f7
	lw	%r9 %r3 4
	beq	%r3 %r2 branching_b.207
branching_b.217 :
	addi	%r0 %r5 2
	beq	%r3 %r5 branching_b.218
branching_b.222 :
	mul.s	%f6 %f6 %f0
	lw	%r9 %r3 16
	lw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f8 %f2
	lw	%r9 %r3 16
	addi	%r3 %r3 4
	lw.s	%r3 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f7 %f1
	lw	%r9 %r3 16
	addi	%r3 %r3 8
	lw.s	%r3 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f2
	lw	%r9 %r3 12
	beq	%r3 %r8 tail_b.333
tail_b.334 :
	mul.s	%f7 %f8 %f1
	lw	%r9 %r3 36
	lw.s	%r3 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f6 %f7 %f1
	lw	%r9 %r3 36
	addi	%r3 %r3 4
	lw.s	%r3 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	mul.s	%f8 %f6 %f0
	lw	%r9 %r3 36
	addi	%r3 %r3 8
	lw.s	%r3 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	j	branching_b.223
tail_b.333 :
	mov.s	%f2 %f1
	j	branching_b.223
branching_b.218 :
	lw	%r9 %r5 16
	mov	%r5 %r3
	lw.s	%r3 %f0 0
	mul.s	%f6 %f0 %f0
	addi	%r5 %r3 4
	lw.s	%r3 %f1 0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r5 %r3 8
	lw.s	%r3 %f0 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	lw	%r9 %r3 24
	ilw.s	%r0 %f0 l.51
	fbge	%f1 %f0 tail_b.327
tail_b.326 :
	addi	%r0 %r5 1
	j	branching_b.219
tail_b.327 :
	addi	%r0 %r5 0
	j	branching_b.219
branching_b.207 :
	ilw.s	%r0 %f0 l.51
	fbge	%f6 %f0 tail_b.310
tail_b.309 :
	neg.s	%f6 %f2
	j	branching_b.208
tail_b.310 :
	mov.s	%f6 %f2
	j	branching_b.208
tail_b.308 :
	addi	%r0 %r1 1
	j	postloop_b.13
branching_b.204 :
	slli	%r7 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	beq	%r1 %r8 tail_b.306
tail_b.307 :
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	shadow_check_and_group_loop.0
tail_b.306 :
	addi	%r0 %r1 0
	j	postloop_b.14
postloop_b.13 :
branching_b.229 :
	beq	%r1 %r8 tail_b.346
tail_b.347 :
	addi	%r0 %r1 1
	j	postloop_b.14
tail_b.346 :
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	shadow_check_and_group_loop.0
branching_b.208 :
	lw	%r9 %r3 16
	lw.s	%r3 %f1 0
	fbge	%f2 %f1 tail_b.312
tail_b.311 :
	addi	%r0 %r3 1
	j	branching_b.209
tail_b.312 :
	addi	%r0 %r3 0
branching_b.209 :
	beq	%r3 %r8 tail_b.313
branching_b.210 :
	fbge	%f8 %f0 tail_b.315
tail_b.314 :
	neg.s	%f8 %f1
	j	branching_b.211
tail_b.315 :
	mov.s	%f8 %f1
	j	branching_b.211
tail_b.313 :
	addi	%r0 %r3 0
branching_b.215 :
	beq	%r3 %r8 branching_b.216
tail_b.325 :
	lw	%r9 %r3 24
	j	branching_b.228
branching_b.216 :
	lw	%r9 %r3 24
	beq	%r3 %r8 tail_b.323
tail_b.324 :
	addi	%r0 %r3 0
	j	branching_b.228
tail_b.323 :
	addi	%r0 %r3 1
branching_b.228 :
	beq	%r3 %r8 tail_b.344
tail_b.345 :
	addi	%r0 %r1 0
	j	postloop_b.13
tail_b.344 :
	addi	%r7 %r3 1
	mov	%r3 %r7
	j	check_all_inside_loop.3
branching_b.211 :
	lw	%r9 %r3 16
	addi	%r3 %r3 4
	lw.s	%r3 %f2 0
	fbge	%f1 %f2 tail_b.317
tail_b.316 :
	addi	%r0 %r3 1
	j	branching_b.212
tail_b.317 :
	addi	%r0 %r3 0
branching_b.212 :
	beq	%r3 %r8 tail_b.318
branching_b.213 :
	fbge	%f7 %f0 tail_b.320
tail_b.319 :
	neg.s	%f7 %f1
	j	branching_b.214
tail_b.320 :
	mov.s	%f7 %f1
	j	branching_b.214
tail_b.318 :
	addi	%r0 %r3 0
	j	branching_b.215
branching_b.214 :
	lw	%r9 %r3 16
	addi	%r3 %r3 8
	lw.s	%r3 %f0 0
	fbge	%f1 %f0 tail_b.322
tail_b.321 :
	addi	%r0 %r3 1
	j	branching_b.215
tail_b.322 :
	addi	%r0 %r3 0
	j	branching_b.215
branching_b.219 :
	beq	%r3 %r8 tail_b.328
branching_b.220 :
	beq	%r5 %r8 tail_b.329
tail_b.330 :
	addi	%r0 %r3 0
	j	branching_b.221
tail_b.329 :
	addi	%r0 %r3 1
	j	branching_b.221
tail_b.328 :
	mov	%r5 %r3
branching_b.221 :
	beq	%r3 %r8 tail_b.331
tail_b.332 :
	addi	%r0 %r3 0
	j	branching_b.228
tail_b.331 :
	addi	%r0 %r3 1
	j	branching_b.228
branching_b.223 :
	lw	%r9 %r3 4
	addi	%r0 %r5 3
	beq	%r3 %r5 tail_b.335
tail_b.336 :
	mov.s	%f1 %f0
	j	branching_b.224
tail_b.335 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f0
branching_b.224 :
	lw	%r9 %r5 24
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.338
tail_b.337 :
	addi	%r0 %r3 1
	j	branching_b.225
tail_b.338 :
	addi	%r0 %r3 0
branching_b.225 :
	beq	%r5 %r8 tail_b.339
branching_b.226 :
	beq	%r3 %r8 tail_b.340
tail_b.341 :
	addi	%r0 %r3 0
	j	branching_b.227
tail_b.340 :
	addi	%r0 %r3 1
	j	branching_b.227
tail_b.339 :
branching_b.227 :
	beq	%r3 %r8 tail_b.342
tail_b.343 :
	addi	%r0 %r3 0
	j	branching_b.228
tail_b.342 :
	addi	%r0 %r3 1
	j	branching_b.228
branching_b.168 :
	lw	%r8 %r3 16
	addi	%r3 %r3 8
	lw.s	%r3 %f2 0
	fbge	%f0 %f2 tail_b.248
tail_b.247 :
	addi	%r0 %r3 1
	j	branching_b.169
tail_b.248 :
	addi	%r0 %r3 0
branching_b.169 :
	beq	%r3 %r5 tail_b.249
branching_b.170 :
	addi	%r9 %r3 4
	lw.s	%r3 %f0 0
	fbne	%f0 %f6 tail_b.251
tail_b.250 :
	addi	%r0 %r3 1
	j	branching_b.171
tail_b.251 :
	addi	%r0 %r3 0
	j	branching_b.171
tail_b.249 :
	addi	%r0 %r3 0
	j	branching_b.172
branching_b.171 :
	beq	%r3 %r5 tail_b.252
tail_b.253 :
	addi	%r0 %r3 0
	j	branching_b.172
tail_b.252 :
	addi	%r0 %r3 1
	j	branching_b.172
branching_b.193 :
	addi	%r0 %r5 0
	beq	%r3 %r5 tail_b.288
tail_b.289 :
	addi	%r9 %r3 4
	lw.s	%r3 %f0 0
	mul.s	%f4 %f0 %f0
	addi	%r9 %r3 8
	lw.s	%r3 %f1 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r9 %r3 12
	lw.s	%r3 %f1 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r3 1
	j	branching_b.201
tail_b.288 :
	addi	%r0 %r3 0
	j	branching_b.201
branching_b.195 :
	addi	%r0 %r5 0
	beq	%r3 %r5 branching_b.196
tail_b.302 :
	addi	%r0 %r3 0
	j	branching_b.201
branching_b.196 :
	addi	%r9 %r3 4
	lw.s	%r3 %f0 0
	mul.s	%f4 %f0 %f1
	addi	%r9 %r3 8
	lw.s	%r3 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r9 %r3 12
	lw.s	%r3 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f4 %f4 %f0
	lw	%r8 %r3 16
	lw.s	%r3 %f6 0
	mul.s	%f6 %f0 %f8
	mul.s	%f5 %f5 %f6
	lw	%r8 %r3 16
	addi	%r3 %r3 4
	lw.s	%r3 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f3 %f3 %f8
	lw	%r8 %r3 16
	addi	%r3 %r3 8
	lw.s	%r3 %f6 0
	mul.s	%f6 %f8 %f6
	add.s	%f6 %f0 %f0
	lw	%r8 %r3 12
	beq	%r3 %r5 tail_b.292
tail_b.293 :
	mul.s	%f3 %f5 %f6
	lw	%r8 %r3 36
	lw.s	%r3 %f8 0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f6
	mul.s	%f4 %f3 %f3
	lw	%r8 %r3 36
	addi	%r3 %r3 4
	lw.s	%r3 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f6 %f6
	mul.s	%f5 %f4 %f3
	lw	%r8 %r3 36
	addi	%r3 %r3 8
	lw.s	%r3 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f6 %f0
	j	branching_b.197
tail_b.292 :
branching_b.197 :
	lw	%r8 %r3 4
	addi	%r0 %r10 3
	beq	%r3 %r10 tail_b.294
tail_b.295 :
	mov.s	%f0 %f3
	j	branching_b.198
tail_b.294 :
	ilw.s	%r0 %f3 l.56
	sub.s	%f3 %f0 %f3
branching_b.198 :
	mul.s	%f1 %f1 %f0
	mul.s	%f3 %f7 %f3
	sub.s	%f3 %f0 %f0
	fbge	%f2 %f0 tail_b.297
tail_b.296 :
	addi	%r0 %r3 1
	j	branching_b.199
tail_b.297 :
	addi	%r0 %r3 0
branching_b.199 :
	beq	%r3 %r5 tail_b.298
branching_b.200 :
	lw	%r8 %r3 24
	beq	%r3 %r5 tail_b.299
tail_b.300 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r9 %r3 16
	lw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.301
tail_b.299 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f1 %f1
	addi	%r9 %r3 16
	lw.s	%r3 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.301
tail_b.298 :
	addi	%r0 %r3 0
	j	branching_b.201
tail_b.301 :
	addi	%r0 %r3 1
	j	branching_b.201
shadow_check_one_or_group.0 :
	mov	%r2 %r3
preloop_b.15 :
	mov	%r1 %r5
shadow_check_one_or_group_loop.0 :
	slli	%r5 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	addi	%r0 %r2 -1
	beq	%r1 %r2 tail_b.348
preloop_b.16 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r4 0
	addi	%r0 %r6 0
	mov	%r6 %r7
shadow_check_and_group_loop.1 :
	slli	%r7 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r2 tail_b.349
branching_b.232 :
	slli	%r7 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r8 0
	slli	%r8 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r11 0
	lw.s	%r0 %f1 552
	lw	%r11 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f1 556
	lw	%r11 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw.s	%r0 %f2 560
	lw	%r11 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f4
	slli	%r8 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r10 0
	lw	%r11 %r1 4
	addi	%r0 %r9 1
	beq	%r1 %r9 branching_b.233
branching_b.260 :
	addi	%r0 %r9 2
	beq	%r1 %r9 branching_b.261
branching_b.263 :
	mov	%r10 %r1
	lw.s	%r1 %f8 0
	ilw.s	%r0 %f3 l.51
	fbne	%f8 %f3 tail_b.401
tail_b.400 :
	addi	%r0 %r1 1
	j	branching_b.264
tail_b.401 :
	addi	%r0 %r1 0
	j	branching_b.264
branching_b.261 :
	mov	%r10 %r1
	lw.s	%r1 %f2 0
	ilw.s	%r0 %f0 l.51
	fbge	%f2 %f0 tail_b.397
tail_b.396 :
	addi	%r0 %r1 1
	j	branching_b.262
tail_b.397 :
	addi	%r0 %r1 0
	j	branching_b.262
branching_b.233 :
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f2
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f6
	lw.s	%r0 %f0 740
	mul.s	%f0 %f6 %f0
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f3 l.51
	fbge	%f0 %f3 tail_b.351
tail_b.350 :
	neg.s	%f0 %f2
	j	branching_b.234
tail_b.351 :
	mov.s	%f0 %f2
	j	branching_b.234
tail_b.349 :
	addi	%r0 %r1 0
	j	postloop_b.15
tail_b.348 :
	addi	%r0 %r1 0
postloop_b.16 :
return_point.10 :
	retl
postloop_b.15 :
branching_b.275 :
	beq	%r1 %r6 tail_b.420
tail_b.421 :
	addi	%r0 %r1 1
	j	postloop_b.16
tail_b.420 :
	addi	%r5 %r1 1
	mov	%r1 %r5
	j	shadow_check_one_or_group_loop.0
branching_b.234 :
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.353
tail_b.352 :
	addi	%r0 %r1 1
	j	branching_b.235
tail_b.353 :
	addi	%r0 %r1 0
branching_b.235 :
	beq	%r1 %r6 tail_b.354
branching_b.236 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f6 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f3 tail_b.356
tail_b.355 :
	neg.s	%f0 %f0
	j	branching_b.237
tail_b.356 :
	j	branching_b.237
tail_b.354 :
	addi	%r0 %r1 0
branching_b.241 :
	beq	%r1 %r6 branching_b.242
tail_b.395 :
	sw.s	%r0 %f6 540
	addi	%r0 %r1 1
	j	branching_b.270
branching_b.242 :
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f2
	addi	%r10 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	lw.s	%r0 %f0 736
	mul.s	%f0 %f2 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.365
tail_b.364 :
	neg.s	%f0 %f0
	j	branching_b.243
tail_b.365 :
branching_b.243 :
	lw	%r11 %r1 16
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.367
tail_b.366 :
	addi	%r0 %r1 1
	j	branching_b.244
tail_b.367 :
	addi	%r0 %r1 0
branching_b.244 :
	beq	%r1 %r6 tail_b.368
branching_b.245 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f3 tail_b.370
tail_b.369 :
	neg.s	%f0 %f0
	j	branching_b.246
tail_b.370 :
	j	branching_b.246
tail_b.368 :
	addi	%r0 %r1 0
branching_b.250 :
	beq	%r1 %r6 branching_b.251
tail_b.394 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 2
	j	branching_b.270
branching_b.251 :
	addi	%r10 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f4 %f0 %f2
	addi	%r10 %r1 20
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	lw.s	%r0 %f0 736
	mul.s	%f0 %f2 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.379
tail_b.378 :
	neg.s	%f0 %f4
	j	branching_b.252
tail_b.379 :
	mov.s	%f0 %f4
branching_b.252 :
	lw	%r11 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f4 %f0 tail_b.381
tail_b.380 :
	addi	%r0 %r1 1
	j	branching_b.253
tail_b.381 :
	addi	%r0 %r1 0
branching_b.253 :
	beq	%r1 %r6 tail_b.382
branching_b.254 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	fbge	%f0 %f3 tail_b.384
tail_b.383 :
	neg.s	%f0 %f0
	j	branching_b.255
tail_b.384 :
	j	branching_b.255
tail_b.382 :
	addi	%r0 %r1 0
branching_b.259 :
	beq	%r1 %r6 tail_b.392
tail_b.393 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 3
	j	branching_b.270
tail_b.392 :
	addi	%r0 %r1 0
	j	branching_b.270
branching_b.255 :
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.386
tail_b.385 :
	addi	%r0 %r1 1
	j	branching_b.256
tail_b.386 :
	addi	%r0 %r1 0
branching_b.256 :
	beq	%r1 %r6 tail_b.387
branching_b.257 :
	addi	%r10 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.389
tail_b.388 :
	addi	%r0 %r1 1
	j	branching_b.258
tail_b.389 :
	addi	%r0 %r1 0
	j	branching_b.258
tail_b.387 :
	addi	%r0 %r1 0
	j	branching_b.259
branching_b.258 :
	beq	%r1 %r6 tail_b.390
tail_b.391 :
	addi	%r0 %r1 0
	j	branching_b.259
tail_b.390 :
	addi	%r0 %r1 1
	j	branching_b.259
branching_b.246 :
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.372
tail_b.371 :
	addi	%r0 %r1 1
	j	branching_b.247
tail_b.372 :
	addi	%r0 %r1 0
branching_b.247 :
	beq	%r1 %r6 tail_b.373
branching_b.248 :
	addi	%r10 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.375
tail_b.374 :
	addi	%r0 %r1 1
	j	branching_b.249
tail_b.375 :
	addi	%r0 %r1 0
	j	branching_b.249
tail_b.373 :
	addi	%r0 %r1 0
	j	branching_b.250
branching_b.249 :
	beq	%r1 %r6 tail_b.376
tail_b.377 :
	addi	%r0 %r1 0
	j	branching_b.250
tail_b.376 :
	addi	%r0 %r1 1
	j	branching_b.250
branching_b.270 :
	lw.s	%r0 %f1 540
	bne	%r1 %r6 branching_b.271
tail_b.415 :
	addi	%r0 %r1 0
	j	branching_b.272
branching_b.271 :
	ilw.s	%r0 %f0 l.68
	fbge	%f1 %f0 tail_b.414
tail_b.413 :
	addi	%r0 %r1 1
	j	branching_b.272
tail_b.414 :
	addi	%r0 %r1 0
branching_b.272 :
	beq	%r1 %r6 branching_b.273
branching_b.274 :
	ilw.s	%r0 %f0 l.69
	add.s	%f0 %f1 %f3
	lw.s	%r0 %f0 312
	mul.s	%f3 %f0 %f1
	lw.s	%r0 %f0 552
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 316
	mul.s	%f3 %f0 %f0
	lw.s	%r0 %f2 556
	add.s	%f2 %f0 %f2
	lw.s	%r0 %f0 320
	mul.s	%f3 %f0 %f3
	lw.s	%r0 %f0 560
	add.s	%f0 %f3 %f0
	addi	%r0 %r1 0
	sw	%r26 %r7 -20
	sw	%r26 %r6 -16
	sw	%r26 %r4 -12
	sw	%r26 %r2 -8
	sw	%r26 %r5 -4
	sw	%r26 %r3 0
	mov	%r4 %r2
	mov.s	%f2 %f30
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f30 %f1
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	check_all_inside.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r7 -20
	lw	%r26 %r6 -16
	lw	%r26 %r4 -12
	lw	%r26 %r2 -8
	lw	%r26 %r5 -4
	lw	%r26 %r3 0
	beq	%r1 %r6 tail_b.418
tail_b.419 :
	addi	%r0 %r1 1
	j	postloop_b.15
tail_b.418 :
	addi	%r7 %r1 1
	mov	%r1 %r7
	j	shadow_check_and_group_loop.1
branching_b.273 :
	slli	%r8 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	beq	%r1 %r6 tail_b.416
tail_b.417 :
	addi	%r7 %r1 1
	mov	%r1 %r7
	j	shadow_check_and_group_loop.1
tail_b.416 :
	addi	%r0 %r1 0
	j	postloop_b.15
branching_b.237 :
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.358
tail_b.357 :
	addi	%r0 %r1 1
	j	branching_b.238
tail_b.358 :
	addi	%r0 %r1 0
branching_b.238 :
	beq	%r1 %r6 tail_b.359
branching_b.239 :
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.361
tail_b.360 :
	addi	%r0 %r1 1
	j	branching_b.240
tail_b.361 :
	addi	%r0 %r1 0
	j	branching_b.240
tail_b.359 :
	addi	%r0 %r1 0
	j	branching_b.241
branching_b.240 :
	beq	%r1 %r6 tail_b.362
tail_b.363 :
	addi	%r0 %r1 0
	j	branching_b.241
tail_b.362 :
	addi	%r0 %r1 1
	j	branching_b.241
branching_b.262 :
	beq	%r1 %r6 tail_b.398
tail_b.399 :
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f2
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f1
	addi	%r10 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.270
tail_b.398 :
	addi	%r0 %r1 0
	j	branching_b.270
branching_b.264 :
	beq	%r1 %r6 branching_b.265
tail_b.412 :
	addi	%r0 %r1 0
	j	branching_b.270
branching_b.265 :
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f2
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	addi	%r10 %r1 12
	lw.s	%r1 %f2 0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f7
	mul.s	%f5 %f5 %f2
	lw	%r11 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f6
	mul.s	%f1 %f1 %f2
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f6 %f2
	mul.s	%f4 %f4 %f6
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	lw	%r11 %r1 12
	beq	%r1 %r6 tail_b.402
tail_b.403 :
	mul.s	%f4 %f1 %f2
	lw	%r11 %r1 36
	lw.s	%r1 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f5 %f4 %f4
	lw	%r11 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f4 %f2
	add.s	%f2 %f0 %f2
	mul.s	%f1 %f5 %f0
	lw	%r11 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	j	branching_b.266
tail_b.402 :
branching_b.266 :
	lw	%r11 %r1 4
	addi	%r0 %r9 3
	beq	%r1 %r9 tail_b.404
tail_b.405 :
	j	branching_b.267
tail_b.404 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f0 %f0
branching_b.267 :
	mul.s	%f7 %f7 %f1
	mul.s	%f0 %f8 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f3 %f0 tail_b.407
tail_b.406 :
	addi	%r0 %r1 1
	j	branching_b.268
tail_b.407 :
	addi	%r0 %r1 0
branching_b.268 :
	beq	%r1 %r6 tail_b.408
branching_b.269 :
	lw	%r11 %r1 24
	beq	%r1 %r6 tail_b.409
tail_b.410 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f7 %f1
	addi	%r10 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.411
tail_b.409 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f7 %f1
	addi	%r10 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.411
tail_b.408 :
	addi	%r0 %r1 0
	j	branching_b.270
tail_b.411 :
	addi	%r0 %r1 1
	j	branching_b.270
shadow_check_one_or_matrix.0 :
	mov	%r2 %r4
preloop_b.17 :
	mov	%r1 %r5
shadow_check_one_or_matrix_loop.0 :
	slli	%r5 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r2 0
	mov	%r2 %r1
	lw	%r1 %r7 0
	addi	%r0 %r6 -1
	beq	%r7 %r6 tail_b.422
branching_b.277 :
	addi	%r0 %r1 99
	beq	%r7 %r1 tail_b.423
branching_b.278 :
	slli	%r7 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r3 0
	lw.s	%r0 %f1 552
	lw	%r3 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw.s	%r0 %f1 556
	lw	%r3 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	sub.s	%f2 %f1 %f4
	lw.s	%r0 %f1 560
	lw	%r3 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f1 %f6
	slli	%r7 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r8 0
	lw	%r3 %r9 4
	addi	%r0 %r7 1
	beq	%r9 %r7 branching_b.279
branching_b.306 :
	addi	%r0 %r1 2
	beq	%r9 %r1 branching_b.307
branching_b.309 :
	mov	%r8 %r1
	lw.s	%r1 %f3 0
	ilw.s	%r0 %f5 l.51
	fbne	%f3 %f5 tail_b.475
tail_b.474 :
	addi	%r0 %r1 1
	j	branching_b.310
tail_b.475 :
	addi	%r0 %r1 0
	j	branching_b.310
branching_b.307 :
	mov	%r8 %r1
	lw.s	%r1 %f2 0
	ilw.s	%r0 %f1 l.51
	fbge	%f2 %f1 tail_b.471
tail_b.470 :
	addi	%r0 %r3 1
	j	branching_b.308
tail_b.471 :
	addi	%r0 %r3 0
	j	branching_b.308
branching_b.279 :
	mov	%r8 %r1
	lw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f1
	addi	%r8 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f2
	lw.s	%r0 %f1 740
	mul.s	%f1 %f2 %f1
	add.s	%f4 %f1 %f1
	ilw.s	%r0 %f3 l.51
	fbge	%f1 %f3 tail_b.425
tail_b.424 :
	neg.s	%f1 %f1
	j	branching_b.280
tail_b.425 :
	j	branching_b.280
tail_b.423 :
	addi	%r0 %r1 1
	j	branching_b.322
tail_b.422 :
	addi	%r0 %r1 0
postloop_b.19 :
return_point.11 :
	retl
branching_b.322 :
	addi	%r0 %r8 0
	beq	%r1 %r8 tail_b.496
preloop_b.19 :
	addi	%r0 %r1 1
	mov	%r1 %r3
shadow_check_one_or_group_loop.1 :
	slli	%r3 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r6 tail_b.497
branching_b.324 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r7 0
	addi	%r0 %r1 0
	sw	%r26 %r3 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r2 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov	%r7 %r2
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	shadow_check_and_group.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r3 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r2 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	beq	%r1 %r8 tail_b.498
tail_b.499 :
	addi	%r0 %r1 1
	j	postloop_b.18
tail_b.498 :
	addi	%r3 %r1 1
	mov	%r1 %r3
	j	shadow_check_one_or_group_loop.1
tail_b.497 :
	addi	%r0 %r1 0
	j	postloop_b.18
tail_b.496 :
	addi	%r5 %r1 1
	mov	%r1 %r5
	j	shadow_check_one_or_matrix_loop.0
postloop_b.18 :
branching_b.325 :
	beq	%r1 %r8 tail_b.500
tail_b.501 :
	addi	%r0 %r1 1
	j	postloop_b.19
tail_b.500 :
	addi	%r5 %r1 1
	mov	%r1 %r5
	j	shadow_check_one_or_matrix_loop.0
branching_b.280 :
	lw	%r3 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	fbge	%f1 %f5 tail_b.427
tail_b.426 :
	addi	%r0 %r1 1
	j	branching_b.281
tail_b.427 :
	addi	%r0 %r1 0
branching_b.281 :
	addi	%r0 %r9 0
	beq	%r1 %r9 tail_b.428
branching_b.282 :
	lw.s	%r0 %f1 744
	mul.s	%f1 %f2 %f1
	add.s	%f6 %f1 %f1
	fbge	%f1 %f3 tail_b.430
tail_b.429 :
	neg.s	%f1 %f1
	j	branching_b.283
tail_b.430 :
	j	branching_b.283
tail_b.428 :
	addi	%r0 %r1 0
branching_b.287 :
	beq	%r1 %r9 branching_b.288
tail_b.469 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 1
	j	branching_b.316
branching_b.288 :
	addi	%r8 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f4 %f1 %f1
	addi	%r8 %r1 12
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f5
	lw.s	%r0 %f1 736
	mul.s	%f1 %f5 %f1
	add.s	%f0 %f1 %f1
	fbge	%f1 %f3 tail_b.439
tail_b.438 :
	neg.s	%f1 %f1
	j	branching_b.289
tail_b.439 :
branching_b.289 :
	lw	%r3 %r1 16
	lw.s	%r1 %f2 0
	fbge	%f1 %f2 tail_b.441
tail_b.440 :
	addi	%r0 %r1 1
	j	branching_b.290
tail_b.441 :
	addi	%r0 %r1 0
branching_b.290 :
	beq	%r1 %r9 tail_b.442
branching_b.291 :
	lw.s	%r0 %f1 744
	mul.s	%f1 %f5 %f1
	add.s	%f6 %f1 %f1
	fbge	%f1 %f3 tail_b.444
tail_b.443 :
	neg.s	%f1 %f1
	j	branching_b.292
tail_b.444 :
	j	branching_b.292
tail_b.442 :
	addi	%r0 %r1 0
branching_b.296 :
	beq	%r1 %r9 branching_b.297
tail_b.468 :
	sw.s	%r0 %f5 540
	addi	%r0 %r1 2
	j	branching_b.316
branching_b.297 :
	addi	%r8 %r1 16
	lw.s	%r1 %f1 0
	sub.s	%f6 %f1 %f2
	addi	%r8 %r1 20
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f2
	lw.s	%r0 %f1 736
	mul.s	%f1 %f2 %f1
	add.s	%f0 %f1 %f0
	fbge	%f0 %f3 tail_b.453
tail_b.452 :
	neg.s	%f0 %f0
	j	branching_b.298
tail_b.453 :
branching_b.298 :
	lw	%r3 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.455
tail_b.454 :
	addi	%r0 %r1 1
	j	branching_b.299
tail_b.455 :
	addi	%r0 %r1 0
branching_b.299 :
	beq	%r1 %r9 tail_b.456
branching_b.300 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f3 tail_b.458
tail_b.457 :
	neg.s	%f0 %f1
	j	branching_b.301
tail_b.458 :
	mov.s	%f0 %f1
	j	branching_b.301
tail_b.456 :
	addi	%r0 %r1 0
branching_b.305 :
	beq	%r1 %r9 tail_b.466
tail_b.467 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 3
	j	branching_b.316
tail_b.466 :
	addi	%r0 %r1 0
	j	branching_b.316
branching_b.301 :
	lw	%r3 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.460
tail_b.459 :
	addi	%r0 %r1 1
	j	branching_b.302
tail_b.460 :
	addi	%r0 %r1 0
branching_b.302 :
	beq	%r1 %r9 tail_b.461
branching_b.303 :
	addi	%r8 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.463
tail_b.462 :
	addi	%r0 %r1 1
	j	branching_b.304
tail_b.463 :
	addi	%r0 %r1 0
	j	branching_b.304
tail_b.461 :
	addi	%r0 %r1 0
	j	branching_b.305
branching_b.304 :
	beq	%r1 %r9 tail_b.464
tail_b.465 :
	addi	%r0 %r1 0
	j	branching_b.305
tail_b.464 :
	addi	%r0 %r1 1
	j	branching_b.305
branching_b.292 :
	lw	%r3 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	fbge	%f1 %f2 tail_b.446
tail_b.445 :
	addi	%r0 %r1 1
	j	branching_b.293
tail_b.446 :
	addi	%r0 %r1 0
branching_b.293 :
	beq	%r1 %r9 tail_b.447
branching_b.294 :
	addi	%r8 %r1 12
	lw.s	%r1 %f1 0
	fbne	%f1 %f3 tail_b.449
tail_b.448 :
	addi	%r0 %r1 1
	j	branching_b.295
tail_b.449 :
	addi	%r0 %r1 0
	j	branching_b.295
tail_b.447 :
	addi	%r0 %r1 0
	j	branching_b.296
branching_b.295 :
	beq	%r1 %r9 tail_b.450
tail_b.451 :
	addi	%r0 %r1 0
	j	branching_b.296
tail_b.450 :
	addi	%r0 %r1 1
	j	branching_b.296
branching_b.316 :
	addi	%r0 %r8 0
	bne	%r1 %r8 branching_b.317
tail_b.495 :
	addi	%r0 %r1 0
	j	branching_b.322
branching_b.317 :
	lw.s	%r0 %f0 540
	ilw.s	%r0 %f1 l.70
	fbge	%f0 %f1 tail_b.488
tail_b.487 :
	addi	%r0 %r1 1
	j	branching_b.318
tail_b.488 :
	addi	%r0 %r1 0
branching_b.318 :
	beq	%r1 %r8 tail_b.489
preloop_b.18 :
shadow_check_one_or_group_loop.2 :
	slli	%r7 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r6 tail_b.490
branching_b.320 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r3 0
	addi	%r0 %r1 0
	sw	%r26 %r7 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r2 -8
	sw	%r26 %r5 -4
	sw	%r26 %r4 0
	mov	%r3 %r2
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	shadow_check_and_group.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r7 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r2 -8
	lw	%r26 %r5 -4
	lw	%r26 %r4 0
	beq	%r1 %r8 tail_b.491
tail_b.492 :
	addi	%r0 %r1 1
	j	postloop_b.17
tail_b.491 :
	addi	%r7 %r1 1
	mov	%r1 %r7
	j	shadow_check_one_or_group_loop.2
tail_b.490 :
	addi	%r0 %r1 0
	j	postloop_b.17
tail_b.489 :
	addi	%r0 %r1 0
	j	branching_b.322
postloop_b.17 :
branching_b.321 :
	beq	%r1 %r8 tail_b.493
tail_b.494 :
	addi	%r0 %r1 1
	j	branching_b.322
tail_b.493 :
	addi	%r0 %r1 0
	j	branching_b.322
branching_b.283 :
	lw	%r3 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	fbge	%f1 %f5 tail_b.432
tail_b.431 :
	addi	%r0 %r1 1
	j	branching_b.284
tail_b.432 :
	addi	%r0 %r1 0
branching_b.284 :
	beq	%r1 %r9 tail_b.433
branching_b.285 :
	addi	%r8 %r1 4
	lw.s	%r1 %f1 0
	fbne	%f1 %f3 tail_b.435
tail_b.434 :
	addi	%r0 %r1 1
	j	branching_b.286
tail_b.435 :
	addi	%r0 %r1 0
	j	branching_b.286
tail_b.433 :
	addi	%r0 %r1 0
	j	branching_b.287
branching_b.286 :
	beq	%r1 %r9 tail_b.436
tail_b.437 :
	addi	%r0 %r1 0
	j	branching_b.287
tail_b.436 :
	addi	%r0 %r1 1
	j	branching_b.287
branching_b.308 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.472
tail_b.473 :
	addi	%r8 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r8 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r8 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.316
tail_b.472 :
	addi	%r0 %r1 0
	j	branching_b.316
branching_b.310 :
	addi	%r0 %r9 0
	beq	%r1 %r9 branching_b.311
tail_b.486 :
	addi	%r0 %r1 0
	j	branching_b.316
branching_b.311 :
	addi	%r8 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f2
	addi	%r8 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f2 %f1
	addi	%r8 %r1 12
	lw.s	%r1 %f2 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f1 %f8
	mul.s	%f0 %f0 %f2
	lw	%r3 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	mul.s	%f4 %f4 %f2
	lw	%r3 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f1 %f2
	mul.s	%f6 %f6 %f1
	lw	%r3 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f2 %f7
	lw	%r3 %r1 12
	beq	%r1 %r9 tail_b.476
tail_b.477 :
	mul.s	%f6 %f4 %f2
	lw	%r3 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f7 %f1
	mul.s	%f0 %f6 %f6
	lw	%r3 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f6 %f2
	add.s	%f2 %f1 %f1
	mul.s	%f4 %f0 %f2
	lw	%r3 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	j	branching_b.312
tail_b.476 :
	mov.s	%f7 %f1
branching_b.312 :
	lw	%r3 %r1 4
	addi	%r0 %r10 3
	beq	%r1 %r10 tail_b.478
tail_b.479 :
	mov.s	%f1 %f0
	j	branching_b.313
tail_b.478 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f0
branching_b.313 :
	mul.s	%f8 %f8 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f5 %f0 tail_b.481
tail_b.480 :
	addi	%r0 %r1 1
	j	branching_b.314
tail_b.481 :
	addi	%r0 %r1 0
branching_b.314 :
	beq	%r1 %r9 tail_b.482
branching_b.315 :
	lw	%r3 %r1 24
	beq	%r1 %r9 tail_b.483
tail_b.484 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f8 %f1
	addi	%r8 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.485
tail_b.483 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f8 %f0
	addi	%r8 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.485
tail_b.482 :
	addi	%r0 %r1 0
	j	branching_b.316
tail_b.485 :
	addi	%r0 %r1 1
	j	branching_b.316
solve_each_element.0 :
	mov	%r3 %r5
	mov	%r2 %r4
preloop_b.20 :
	mov	%r1 %r6
solve_each_element_loop.0 :
	slli	%r6 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r2 0
	addi	%r0 %r3 -1
	beq	%r2 %r3 tail_b.502
branching_b.327 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r8 0
	lw.s	%r0 %f1 636
	lw	%r8 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f1 640
	lw	%r8 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f4
	lw.s	%r0 %f1 644
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f6
	lw	%r8 %r9 4
	addi	%r0 %r7 1
	beq	%r9 %r7 branching_b.328
branching_b.367 :
	addi	%r0 %r1 2
	beq	%r9 %r1 branching_b.368
branching_b.370 :
	mov	%r5 %r1
	lw.s	%r1 %f7 0
	addi	%r5 %r1 4
	lw.s	%r1 %f8 0
	addi	%r5 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f7 %f7 %f1
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mul.s	%f8 %f8 %f0
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f3 %f3 %f2
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	lw	%r8 %r1 12
	addi	%r0 %r9 0
	beq	%r1 %r9 tail_b.574
tail_b.575 :
	mul.s	%f3 %f8 %f0
	lw	%r8 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f7 %f3 %f2
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f8 %f7 %f2
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f7
	j	branching_b.371
tail_b.574 :
	mov.s	%f1 %f7
	j	branching_b.371
branching_b.368 :
	lw	%r8 %r8 16
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mov	%r8 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	addi	%r5 %r1 4
	lw.s	%r1 %f2 0
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	addi	%r5 %r1 8
	lw.s	%r1 %f2 0
	addi	%r8 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f2
	ilw.s	%r0 %f0 l.51
	fbge	%f0 %f2 tail_b.571
tail_b.570 :
	addi	%r0 %r1 1
	j	branching_b.369
tail_b.571 :
	addi	%r0 %r1 0
	j	branching_b.369
branching_b.328 :
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.51
	fbne	%f0 %f2 tail_b.504
tail_b.503 :
	addi	%r0 %r1 1
	j	branching_b.329
tail_b.504 :
	addi	%r0 %r1 0
	j	branching_b.329
tail_b.502 :
postloop_b.21 :
return_point.12 :
	retl
branching_b.329 :
	addi	%r0 %r9 0
	beq	%r1 %r9 branching_b.330
tail_b.523 :
	addi	%r0 %r1 0
	j	branching_b.340
branching_b.330 :
	lw	%r8 %r11 16
	lw	%r8 %r10 24
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.506
tail_b.505 :
	addi	%r0 %r1 1
	j	branching_b.331
tail_b.506 :
	addi	%r0 %r1 0
branching_b.331 :
	beq	%r10 %r9 tail_b.507
branching_b.332 :
	beq	%r1 %r9 tail_b.508
tail_b.509 :
	addi	%r0 %r1 0
	j	branching_b.333
tail_b.508 :
	addi	%r0 %r1 1
	j	branching_b.333
tail_b.507 :
branching_b.333 :
	mov	%r11 %r10
	lw.s	%r10 %f0 0
	beq	%r1 %r9 tail_b.510
tail_b.511 :
	j	branching_b.334
tail_b.510 :
	neg.s	%f0 %f0
branching_b.334 :
	sub.s	%f5 %f0 %f1
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	div.s	%f0 %f1 %f0
	addi	%r5 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	add.s	%f4 %f1 %f1
	fbge	%f1 %f2 tail_b.513
tail_b.512 :
	neg.s	%f1 %f3
	j	branching_b.335
tail_b.513 :
	mov.s	%f1 %f3
branching_b.335 :
	addi	%r11 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f3 %f1 tail_b.515
tail_b.514 :
	addi	%r0 %r1 1
	j	branching_b.336
tail_b.515 :
	addi	%r0 %r1 0
branching_b.336 :
	beq	%r1 %r9 tail_b.516
branching_b.337 :
	addi	%r5 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	add.s	%f6 %f1 %f1
	fbge	%f1 %f2 tail_b.518
tail_b.517 :
	neg.s	%f1 %f1
	j	branching_b.338
tail_b.518 :
	j	branching_b.338
tail_b.516 :
	addi	%r0 %r1 0
	j	branching_b.340
branching_b.338 :
	addi	%r11 %r1 8
	lw.s	%r1 %f3 0
	fbge	%f1 %f3 tail_b.520
tail_b.519 :
	addi	%r0 %r1 1
	j	branching_b.339
tail_b.520 :
	addi	%r0 %r1 0
branching_b.339 :
	beq	%r1 %r9 tail_b.521
tail_b.522 :
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.340
tail_b.521 :
	addi	%r0 %r1 0
branching_b.340 :
	beq	%r1 %r9 branching_b.341
tail_b.569 :
	addi	%r0 %r10 1
	j	branching_b.379
branching_b.341 :
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.525
tail_b.524 :
	addi	%r0 %r1 1
	j	branching_b.342
tail_b.525 :
	addi	%r0 %r1 0
branching_b.342 :
	beq	%r1 %r9 branching_b.343
tail_b.544 :
	addi	%r0 %r1 0
	j	branching_b.353
branching_b.343 :
	lw	%r8 %r10 16
	lw	%r8 %r1 24
	addi	%r5 %r11 4
	lw.s	%r11 %f0 0
	fbge	%f0 %f2 tail_b.527
tail_b.526 :
	addi	%r0 %r11 1
	j	branching_b.344
tail_b.527 :
	addi	%r0 %r11 0
branching_b.344 :
	beq	%r1 %r9 tail_b.528
branching_b.345 :
	beq	%r11 %r9 tail_b.529
tail_b.530 :
	addi	%r0 %r11 0
	j	branching_b.346
tail_b.529 :
	addi	%r0 %r11 1
	j	branching_b.346
tail_b.528 :
branching_b.346 :
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	beq	%r11 %r9 tail_b.531
tail_b.532 :
	j	branching_b.347
tail_b.531 :
	neg.s	%f0 %f0
branching_b.347 :
	sub.s	%f4 %f0 %f0
	addi	%r5 %r1 4
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f1
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f2 tail_b.534
tail_b.533 :
	neg.s	%f0 %f3
	j	branching_b.348
tail_b.534 :
	mov.s	%f0 %f3
branching_b.348 :
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f3 %f0 tail_b.536
tail_b.535 :
	addi	%r0 %r1 1
	j	branching_b.349
tail_b.536 :
	addi	%r0 %r1 0
branching_b.349 :
	beq	%r1 %r9 tail_b.537
branching_b.350 :
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f2 tail_b.539
tail_b.538 :
	neg.s	%f0 %f0
	j	branching_b.351
tail_b.539 :
	j	branching_b.351
tail_b.537 :
	addi	%r0 %r1 0
	j	branching_b.353
branching_b.351 :
	mov	%r10 %r1
	lw.s	%r1 %f3 0
	fbge	%f0 %f3 tail_b.541
tail_b.540 :
	addi	%r0 %r1 1
	j	branching_b.352
tail_b.541 :
	addi	%r0 %r1 0
branching_b.352 :
	beq	%r1 %r9 tail_b.542
tail_b.543 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 1
	j	branching_b.353
tail_b.542 :
	addi	%r0 %r1 0
branching_b.353 :
	beq	%r1 %r9 branching_b.354
tail_b.568 :
	addi	%r0 %r10 2
	j	branching_b.379
branching_b.354 :
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.546
tail_b.545 :
	addi	%r0 %r1 1
	j	branching_b.355
tail_b.546 :
	addi	%r0 %r1 0
branching_b.355 :
	beq	%r1 %r9 branching_b.356
tail_b.565 :
	addi	%r0 %r1 0
	j	branching_b.366
branching_b.356 :
	lw	%r8 %r10 16
	lw	%r8 %r8 24
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.548
tail_b.547 :
	addi	%r0 %r1 1
	j	branching_b.357
tail_b.548 :
	addi	%r0 %r1 0
branching_b.357 :
	beq	%r8 %r9 tail_b.549
branching_b.358 :
	beq	%r1 %r9 tail_b.550
tail_b.551 :
	addi	%r0 %r1 0
	j	branching_b.359
tail_b.550 :
	addi	%r0 %r1 1
	j	branching_b.359
tail_b.549 :
branching_b.359 :
	addi	%r10 %r8 8
	lw.s	%r8 %f0 0
	beq	%r1 %r9 tail_b.552
tail_b.553 :
	j	branching_b.360
tail_b.552 :
	neg.s	%f0 %f0
branching_b.360 :
	sub.s	%f6 %f0 %f0
	addi	%r5 %r1 8
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f1
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f2 tail_b.555
tail_b.554 :
	neg.s	%f0 %f3
	j	branching_b.361
tail_b.555 :
	mov.s	%f0 %f3
branching_b.361 :
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	fbge	%f3 %f0 tail_b.557
tail_b.556 :
	addi	%r0 %r1 1
	j	branching_b.362
tail_b.557 :
	addi	%r0 %r1 0
branching_b.362 :
	beq	%r1 %r9 tail_b.558
branching_b.363 :
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f2 tail_b.560
tail_b.559 :
	neg.s	%f0 %f0
	j	branching_b.364
tail_b.560 :
	j	branching_b.364
tail_b.558 :
	addi	%r0 %r1 0
	j	branching_b.366
branching_b.364 :
	addi	%r10 %r1 4
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.562
tail_b.561 :
	addi	%r0 %r1 1
	j	branching_b.365
tail_b.562 :
	addi	%r0 %r1 0
branching_b.365 :
	beq	%r1 %r9 tail_b.563
tail_b.564 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 1
	j	branching_b.366
tail_b.563 :
	addi	%r0 %r1 0
branching_b.366 :
	beq	%r1 %r9 tail_b.566
tail_b.567 :
	addi	%r0 %r10 3
	j	branching_b.379
tail_b.566 :
	addi	%r0 %r10 0
branching_b.379 :
	addi	%r0 %r9 0
	bne	%r10 %r9 branching_b.380
branching_b.409 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	beq	%r1 %r9 tail_b.638
tail_b.639 :
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	solve_each_element_loop.0
tail_b.638 :
	j	postloop_b.21
branching_b.380 :
	lw.s	%r0 %f1 540
	ilw.s	%r0 %f3 l.51
	fbge	%f3 %f1 tail_b.592
tail_b.591 :
	addi	%r0 %r1 1
	j	branching_b.381
tail_b.592 :
	addi	%r0 %r1 0
branching_b.381 :
	beq	%r1 %r9 tail_b.593
branching_b.382 :
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.595
tail_b.594 :
	addi	%r0 %r1 1
	j	branching_b.383
tail_b.595 :
	addi	%r0 %r1 0
	j	branching_b.383
tail_b.593 :
tail_b.637 :
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	solve_each_element_loop.0
branching_b.383 :
	beq	%r1 %r9 tail_b.596
preloop_b.21 :
	ilw.s	%r0 %f0 l.69
	add.s	%f0 %f1 %f7
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	lw.s	%r0 %f1 636
	add.s	%f1 %f0 %f4
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f1
	lw.s	%r0 %f0 640
	add.s	%f0 %f1 %f6
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f1
	lw.s	%r0 %f0 644
	add.s	%f0 %f1 %f8
	mov	%r9 %r8
check_all_inside_loop.2 :
	slli	%r8 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r3 tail_b.597
branching_b.385 :
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r11 0
	lw	%r11 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f2
	lw	%r11 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f6 %f10
	lw	%r11 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f8 %f1
	lw	%r11 %r12 4
	beq	%r12 %r7 branching_b.386
branching_b.396 :
	addi	%r0 %r1 2
	beq	%r12 %r1 branching_b.397
branching_b.401 :
	mul.s	%f2 %f2 %f0
	lw	%r11 %r1 16
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f9
	mul.s	%f10 %f10 %f0
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f1 %f1 %f5
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f9 0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f5
	lw	%r11 %r1 12
	beq	%r1 %r9 tail_b.622
tail_b.623 :
	mul.s	%f1 %f10 %f0
	lw	%r11 %r1 36
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f2 %f1 %f1
	lw	%r11 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f10 %f2 %f1
	lw	%r11 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	j	branching_b.402
tail_b.622 :
	mov.s	%f5 %f0
	j	branching_b.402
branching_b.397 :
	lw	%r11 %r12 16
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f2
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f2 %f0
	addi	%r12 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	lw	%r11 %r1 24
	fbge	%f0 %f3 tail_b.616
tail_b.615 :
	addi	%r0 %r11 1
	j	branching_b.398
tail_b.616 :
	addi	%r0 %r11 0
	j	branching_b.398
branching_b.386 :
	fbge	%f2 %f3 tail_b.599
tail_b.598 :
	neg.s	%f2 %f2
	j	branching_b.387
tail_b.599 :
	j	branching_b.387
tail_b.597 :
	addi	%r0 %r1 1
	j	postloop_b.20
tail_b.596 :
	j	tail_b.637
postloop_b.20 :
branching_b.408 :
	beq	%r1 %r9 tail_b.635
tail_b.636 :
	sw.s	%r0 %f7 548
	sw.s	%r0 %f4 552
	sw.s	%r0 %f6 556
	sw.s	%r0 %f8 560
	sw	%r0 %r2 564
	sw	%r0 %r10 544
	j	tail_b.637
tail_b.635 :
	j	tail_b.637
branching_b.387 :
	lw	%r11 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.601
tail_b.600 :
	addi	%r0 %r1 1
	j	branching_b.388
tail_b.601 :
	addi	%r0 %r1 0
branching_b.388 :
	beq	%r1 %r9 tail_b.602
branching_b.389 :
	fbge	%f10 %f3 tail_b.604
tail_b.603 :
	neg.s	%f10 %f0
	j	branching_b.390
tail_b.604 :
	mov.s	%f10 %f0
	j	branching_b.390
tail_b.602 :
	addi	%r0 %r1 0
branching_b.394 :
	beq	%r1 %r9 branching_b.395
tail_b.614 :
	lw	%r11 %r1 24
	j	branching_b.407
branching_b.395 :
	lw	%r11 %r1 24
	beq	%r1 %r9 tail_b.612
tail_b.613 :
	addi	%r0 %r1 0
	j	branching_b.407
tail_b.612 :
	addi	%r0 %r1 1
branching_b.407 :
	beq	%r1 %r9 tail_b.633
tail_b.634 :
	addi	%r0 %r1 0
	j	postloop_b.20
tail_b.633 :
	addi	%r8 %r1 1
	mov	%r1 %r8
	j	check_all_inside_loop.2
branching_b.390 :
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.606
tail_b.605 :
	addi	%r0 %r1 1
	j	branching_b.391
tail_b.606 :
	addi	%r0 %r1 0
branching_b.391 :
	beq	%r1 %r9 tail_b.607
branching_b.392 :
	fbge	%f1 %f3 tail_b.609
tail_b.608 :
	neg.s	%f1 %f1
	j	branching_b.393
tail_b.609 :
	j	branching_b.393
tail_b.607 :
	addi	%r0 %r1 0
	j	branching_b.394
branching_b.393 :
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.611
tail_b.610 :
	addi	%r0 %r1 1
	j	branching_b.394
tail_b.611 :
	addi	%r0 %r1 0
	j	branching_b.394
branching_b.398 :
	beq	%r1 %r9 tail_b.617
branching_b.399 :
	beq	%r11 %r9 tail_b.618
tail_b.619 :
	addi	%r0 %r1 0
	j	branching_b.400
tail_b.618 :
	addi	%r0 %r1 1
	j	branching_b.400
tail_b.617 :
	mov	%r11 %r1
branching_b.400 :
	beq	%r1 %r9 tail_b.620
tail_b.621 :
	addi	%r0 %r1 0
	j	branching_b.407
tail_b.620 :
	addi	%r0 %r1 1
	j	branching_b.407
branching_b.402 :
	lw	%r11 %r1 4
	addi	%r0 %r12 3
	beq	%r1 %r12 tail_b.624
tail_b.625 :
	j	branching_b.403
tail_b.624 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f0 %f0
branching_b.403 :
	lw	%r11 %r11 24
	fbge	%f0 %f3 tail_b.627
tail_b.626 :
	addi	%r0 %r1 1
	j	branching_b.404
tail_b.627 :
	addi	%r0 %r1 0
branching_b.404 :
	beq	%r11 %r9 tail_b.628
branching_b.405 :
	beq	%r1 %r9 tail_b.629
tail_b.630 :
	addi	%r0 %r1 0
	j	branching_b.406
tail_b.629 :
	addi	%r0 %r1 1
	j	branching_b.406
tail_b.628 :
branching_b.406 :
	beq	%r1 %r9 tail_b.631
tail_b.632 :
	addi	%r0 %r1 0
	j	branching_b.407
tail_b.631 :
	addi	%r0 %r1 1
	j	branching_b.407
branching_b.369 :
	addi	%r0 %r9 0
	beq	%r1 %r9 tail_b.572
tail_b.573 :
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f1
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r8 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f2 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r10 1
	j	branching_b.379
tail_b.572 :
	addi	%r0 %r10 0
	j	branching_b.379
branching_b.371 :
	ilw.s	%r0 %f1 l.51
	fbne	%f7 %f1 tail_b.577
tail_b.576 :
	addi	%r0 %r1 1
	j	branching_b.372
tail_b.577 :
	addi	%r0 %r1 0
branching_b.372 :
	beq	%r1 %r9 branching_b.373
tail_b.590 :
	addi	%r0 %r10 0
	j	branching_b.379
branching_b.373 :
	mov	%r5 %r1
	lw.s	%r1 %f9 0
	addi	%r5 %r1 4
	lw.s	%r1 %f2 0
	addi	%r5 %r1 8
	lw.s	%r1 %f10 0
	mul.s	%f5 %f9 %f0
	lw	%r8 %r1 16
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f3
	mul.s	%f4 %f2 %f8
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f3 %f8
	mul.s	%f6 %f10 %f0
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f8 %f8
	lw	%r8 %r1 12
	beq	%r1 %r9 tail_b.578
tail_b.579 :
	mul.s	%f4 %f10 %f0
	mul.s	%f6 %f2 %f3
	add.s	%f3 %f0 %f3
	lw	%r8 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f11
	mul.s	%f6 %f9 %f0
	mul.s	%f5 %f10 %f3
	add.s	%f3 %f0 %f3
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f11 %f3
	mul.s	%f4 %f9 %f0
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f2
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f2 l.67
	div.s	%f2 %f0 %f0
	add.s	%f0 %f8 %f8
	j	branching_b.374
tail_b.578 :
branching_b.374 :
	mul.s	%f5 %f5 %f0
	lw	%r8 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	mul.s	%f4 %f4 %f2
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f0 %f2
	mul.s	%f6 %f6 %f0
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	lw	%r8 %r1 12
	beq	%r1 %r9 tail_b.580
tail_b.581 :
	mul.s	%f6 %f4 %f2
	lw	%r8 %r1 36
	lw.s	%r1 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f0 %f3
	mul.s	%f5 %f6 %f2
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f2
	mul.s	%f4 %f5 %f0
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f2
	j	branching_b.375
tail_b.580 :
	mov.s	%f0 %f2
branching_b.375 :
	lw	%r8 %r10 4
	addi	%r0 %r1 3
	beq	%r10 %r1 tail_b.582
tail_b.583 :
	j	branching_b.376
tail_b.582 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f2 %f2
branching_b.376 :
	mul.s	%f8 %f8 %f0
	mul.s	%f2 %f7 %f2
	sub.s	%f2 %f0 %f0
	fbge	%f1 %f0 tail_b.585
tail_b.584 :
	addi	%r0 %r1 1
	j	branching_b.377
tail_b.585 :
	addi	%r0 %r1 0
branching_b.377 :
	beq	%r1 %r9 tail_b.586
branching_b.378 :
	sqrt.s	%f0 %f0
	lw	%r8 %r1 24
	beq	%r1 %r9 tail_b.587
tail_b.588 :
	j	tail_b.589
tail_b.587 :
	neg.s	%f0 %f0
	j	tail_b.589
tail_b.586 :
	addi	%r0 %r10 0
	j	branching_b.379
tail_b.589 :
	sub.s	%f8 %f0 %f0
	div.s	%f7 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r10 1
	j	branching_b.379
solve_one_or_network.0 :
	mov	%r3 %r9
	mov	%r2 %r7
preloop_b.22 :
	mov	%r1 %r6
solve_one_or_network_loop.0 :
	slli	%r6 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	addi	%r0 %r4 -1
	bne	%r1 %r4 preloop_b.23
tail_b.741 :
	j	postloop_b.23
preloop_b.23 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r8 0
	addi	%r0 %r3 0
	mov	%r3 %r5
solve_each_element_loop.1 :
	slli	%r5 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r10 0
	beq	%r10 %r4 tail_b.640
branching_b.412 :
	slli	%r10 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r2 0
	lw.s	%r0 %f1 636
	lw	%r2 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f4
	lw.s	%r0 %f1 640
	lw	%r2 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f0 644
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r2 %r11 4
	addi	%r0 %r1 1
	beq	%r11 %r1 branching_b.413
branching_b.452 :
	addi	%r0 %r1 2
	beq	%r11 %r1 branching_b.453
branching_b.455 :
	mov	%r9 %r1
	lw.s	%r1 %f6 0
	addi	%r9 %r1 4
	lw.s	%r1 %f2 0
	addi	%r9 %r1 8
	lw.s	%r1 %f8 0
	mul.s	%f6 %f6 %f0
	lw	%r2 %r1 16
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f3
	mul.s	%f2 %f2 %f0
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f3 %f3
	mul.s	%f8 %f8 %f0
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f3 %f3
	lw	%r2 %r1 12
	beq	%r1 %r3 tail_b.712
tail_b.713 :
	mul.s	%f8 %f2 %f7
	lw	%r2 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f6 %f8 %f3
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f3 %f3
	add.s	%f3 %f0 %f3
	mul.s	%f2 %f6 %f0
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f2
	j	branching_b.456
tail_b.712 :
	mov.s	%f3 %f2
	j	branching_b.456
branching_b.453 :
	lw	%r2 %r2 16
	mov	%r9 %r1
	lw.s	%r1 %f2 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f3
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	addi	%r2 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f0
	addi	%r9 %r1 8
	lw.s	%r1 %f3 0
	addi	%r2 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.51
	fbge	%f0 %f2 tail_b.709
tail_b.708 :
	addi	%r0 %r1 1
	j	branching_b.454
tail_b.709 :
	addi	%r0 %r1 0
	j	branching_b.454
branching_b.413 :
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f3 l.51
	fbne	%f0 %f3 tail_b.642
tail_b.641 :
	addi	%r0 %r1 1
	j	branching_b.414
tail_b.642 :
	addi	%r0 %r1 0
	j	branching_b.414
tail_b.640 :
postloop_b.22 :
tail_b.740 :
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	solve_one_or_network_loop.0
branching_b.414 :
	beq	%r1 %r3 branching_b.415
tail_b.661 :
	addi	%r0 %r1 0
	j	branching_b.425
branching_b.415 :
	lw	%r2 %r11 16
	lw	%r2 %r12 24
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.644
tail_b.643 :
	addi	%r0 %r1 1
	j	branching_b.416
tail_b.644 :
	addi	%r0 %r1 0
branching_b.416 :
	beq	%r12 %r3 tail_b.645
branching_b.417 :
	beq	%r1 %r3 tail_b.646
tail_b.647 :
	addi	%r0 %r1 0
	j	branching_b.418
tail_b.646 :
	addi	%r0 %r1 1
	j	branching_b.418
tail_b.645 :
branching_b.418 :
	mov	%r11 %r12
	lw.s	%r12 %f0 0
	beq	%r1 %r3 tail_b.648
tail_b.649 :
	j	branching_b.419
tail_b.648 :
	neg.s	%f0 %f0
branching_b.419 :
	sub.s	%f4 %f0 %f2
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f0
	addi	%r9 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f5 %f2 %f2
	fbge	%f2 %f3 tail_b.651
tail_b.650 :
	neg.s	%f2 %f6
	j	branching_b.420
tail_b.651 :
	mov.s	%f2 %f6
branching_b.420 :
	addi	%r11 %r1 4
	lw.s	%r1 %f2 0
	fbge	%f6 %f2 tail_b.653
tail_b.652 :
	addi	%r0 %r1 1
	j	branching_b.421
tail_b.653 :
	addi	%r0 %r1 0
branching_b.421 :
	beq	%r1 %r3 tail_b.654
branching_b.422 :
	addi	%r9 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f1 %f2 %f2
	fbge	%f2 %f3 tail_b.656
tail_b.655 :
	neg.s	%f2 %f2
	j	branching_b.423
tail_b.656 :
	j	branching_b.423
tail_b.654 :
	addi	%r0 %r1 0
	j	branching_b.425
branching_b.423 :
	addi	%r11 %r1 8
	lw.s	%r1 %f6 0
	fbge	%f2 %f6 tail_b.658
tail_b.657 :
	addi	%r0 %r1 1
	j	branching_b.424
tail_b.658 :
	addi	%r0 %r1 0
branching_b.424 :
	beq	%r1 %r3 tail_b.659
tail_b.660 :
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.425
tail_b.659 :
	addi	%r0 %r1 0
branching_b.425 :
	beq	%r1 %r3 branching_b.426
tail_b.707 :
	addi	%r0 %r1 1
	j	branching_b.464
branching_b.426 :
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.663
tail_b.662 :
	addi	%r0 %r1 1
	j	branching_b.427
tail_b.663 :
	addi	%r0 %r1 0
branching_b.427 :
	beq	%r1 %r3 branching_b.428
tail_b.682 :
	addi	%r0 %r1 0
	j	branching_b.438
branching_b.428 :
	lw	%r2 %r11 16
	lw	%r2 %r12 24
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.665
tail_b.664 :
	addi	%r0 %r1 1
	j	branching_b.429
tail_b.665 :
	addi	%r0 %r1 0
branching_b.429 :
	beq	%r12 %r3 tail_b.666
branching_b.430 :
	beq	%r1 %r3 tail_b.667
tail_b.668 :
	addi	%r0 %r1 0
	j	branching_b.431
tail_b.667 :
	addi	%r0 %r1 1
	j	branching_b.431
tail_b.666 :
branching_b.431 :
	addi	%r11 %r12 4
	lw.s	%r12 %f0 0
	beq	%r1 %r3 tail_b.669
tail_b.670 :
	j	branching_b.432
tail_b.669 :
	neg.s	%f0 %f0
branching_b.432 :
	sub.s	%f5 %f0 %f2
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f2 %f2
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	fbge	%f0 %f3 tail_b.672
tail_b.671 :
	neg.s	%f0 %f0
	j	branching_b.433
tail_b.672 :
branching_b.433 :
	addi	%r11 %r1 8
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.674
tail_b.673 :
	addi	%r0 %r1 1
	j	branching_b.434
tail_b.674 :
	addi	%r0 %r1 0
branching_b.434 :
	beq	%r1 %r3 tail_b.675
branching_b.435 :
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f3 tail_b.677
tail_b.676 :
	neg.s	%f0 %f6
	j	branching_b.436
tail_b.677 :
	mov.s	%f0 %f6
	j	branching_b.436
tail_b.675 :
	addi	%r0 %r1 0
	j	branching_b.438
branching_b.436 :
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	fbge	%f6 %f0 tail_b.679
tail_b.678 :
	addi	%r0 %r1 1
	j	branching_b.437
tail_b.679 :
	addi	%r0 %r1 0
branching_b.437 :
	beq	%r1 %r3 tail_b.680
tail_b.681 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 1
	j	branching_b.438
tail_b.680 :
	addi	%r0 %r1 0
branching_b.438 :
	beq	%r1 %r3 branching_b.439
tail_b.706 :
	addi	%r0 %r1 2
	j	branching_b.464
branching_b.439 :
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.684
tail_b.683 :
	addi	%r0 %r1 1
	j	branching_b.440
tail_b.684 :
	addi	%r0 %r1 0
branching_b.440 :
	beq	%r1 %r3 branching_b.441
tail_b.703 :
	addi	%r0 %r1 0
	j	branching_b.451
branching_b.441 :
	lw	%r2 %r1 16
	lw	%r2 %r2 24
	addi	%r9 %r11 8
	lw.s	%r11 %f0 0
	fbge	%f0 %f3 tail_b.686
tail_b.685 :
	addi	%r0 %r11 1
	j	branching_b.442
tail_b.686 :
	addi	%r0 %r11 0
branching_b.442 :
	beq	%r2 %r3 tail_b.687
branching_b.443 :
	beq	%r11 %r3 tail_b.688
tail_b.689 :
	addi	%r0 %r2 0
	j	branching_b.444
tail_b.688 :
	addi	%r0 %r2 1
	j	branching_b.444
tail_b.687 :
	mov	%r11 %r2
branching_b.444 :
	addi	%r1 %r11 8
	lw.s	%r11 %f0 0
	beq	%r2 %r3 tail_b.690
tail_b.691 :
	j	branching_b.445
tail_b.690 :
	neg.s	%f0 %f0
branching_b.445 :
	sub.s	%f1 %f0 %f0
	addi	%r9 %r2 8
	lw.s	%r2 %f1 0
	div.s	%f1 %f0 %f2
	mov	%r9 %r2
	lw.s	%r2 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f3 tail_b.693
tail_b.692 :
	neg.s	%f0 %f1
	j	branching_b.446
tail_b.693 :
	mov.s	%f0 %f1
branching_b.446 :
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	fbge	%f1 %f0 tail_b.695
tail_b.694 :
	addi	%r0 %r2 1
	j	branching_b.447
tail_b.695 :
	addi	%r0 %r2 0
branching_b.447 :
	beq	%r2 %r3 tail_b.696
branching_b.448 :
	addi	%r9 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.698
tail_b.697 :
	neg.s	%f0 %f0
	j	branching_b.449
tail_b.698 :
	j	branching_b.449
tail_b.696 :
	addi	%r0 %r1 0
	j	branching_b.451
branching_b.449 :
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.700
tail_b.699 :
	addi	%r0 %r1 1
	j	branching_b.450
tail_b.700 :
	addi	%r0 %r1 0
branching_b.450 :
	beq	%r1 %r3 tail_b.701
tail_b.702 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 1
	j	branching_b.451
tail_b.701 :
	addi	%r0 %r1 0
branching_b.451 :
	beq	%r1 %r3 tail_b.704
tail_b.705 :
	addi	%r0 %r1 3
	j	branching_b.464
tail_b.704 :
	addi	%r0 %r1 0
branching_b.464 :
	bne	%r1 %r3 branching_b.465
branching_b.470 :
	slli	%r10 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	beq	%r1 %r3 tail_b.738
tail_b.739 :
	addi	%r5 %r1 1
	mov	%r1 %r5
	j	solve_each_element_loop.1
tail_b.738 :
	j	postloop_b.22
branching_b.465 :
	lw.s	%r0 %f1 540
	ilw.s	%r0 %f0 l.51
	fbge	%f0 %f1 tail_b.730
tail_b.729 :
	addi	%r0 %r2 1
	j	branching_b.466
tail_b.730 :
	addi	%r0 %r2 0
branching_b.466 :
	beq	%r2 %r3 tail_b.731
branching_b.467 :
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.733
tail_b.732 :
	addi	%r0 %r2 1
	j	branching_b.468
tail_b.733 :
	addi	%r0 %r2 0
	j	branching_b.468
tail_b.731 :
tail_b.737 :
	addi	%r5 %r1 1
	mov	%r1 %r5
	j	solve_each_element_loop.1
branching_b.468 :
	beq	%r2 %r3 tail_b.734
branching_b.469 :
	ilw.s	%r0 %f0 l.69
	add.s	%f0 %f1 %f5
	mov	%r9 %r2
	lw.s	%r2 %f0 0
	mul.s	%f5 %f0 %f1
	lw.s	%r0 %f0 636
	add.s	%f0 %f1 %f4
	addi	%r9 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f5 %f0 %f1
	lw.s	%r0 %f0 640
	add.s	%f0 %f1 %f3
	addi	%r9 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f5 %f0 %f1
	lw.s	%r0 %f0 644
	add.s	%f0 %f1 %f2
	addi	%r0 %r2 0
	sw.s	%r26 %f2 -48
	sw.s	%r26 %f3 -44
	sw.s	%r26 %f4 -40
	sw.s	%r26 %f5 -36
	sw	%r26 %r1 -32
	sw	%r26 %r10 -28
	sw	%r26 %r5 -24
	sw	%r26 %r3 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r9 -4
	sw	%r26 %r7 0
	mov	%r2 %r1
	mov	%r8 %r2
	mov.s	%f3 %f1
	mov.s	%f4 %f0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	check_all_inside.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	mov	%r1 %r2
	lw.s	%r26 %f2 -48
	lw.s	%r26 %f3 -44
	lw.s	%r26 %f4 -40
	lw.s	%r26 %f5 -36
	lw	%r26 %r1 -32
	lw	%r26 %r10 -28
	lw	%r26 %r5 -24
	lw	%r26 %r3 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r9 -4
	lw	%r26 %r7 0
	beq	%r2 %r3 tail_b.735
tail_b.736 :
	sw.s	%r0 %f5 548
	sw.s	%r0 %f4 552
	sw.s	%r0 %f3 556
	sw.s	%r0 %f2 560
	sw	%r0 %r10 564
	sw	%r0 %r1 544
	j	tail_b.737
tail_b.735 :
	j	tail_b.737
tail_b.734 :
	j	tail_b.737
branching_b.454 :
	beq	%r1 %r3 tail_b.710
tail_b.711 :
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	addi	%r2 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f0 %f3
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	neg.s	%f0 %f0
	div.s	%f2 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.464
tail_b.710 :
	addi	%r0 %r1 0
	j	branching_b.464
branching_b.456 :
	ilw.s	%r0 %f8 l.51
	fbne	%f2 %f8 tail_b.715
tail_b.714 :
	addi	%r0 %r1 1
	j	branching_b.457
tail_b.715 :
	addi	%r0 %r1 0
branching_b.457 :
	beq	%r1 %r3 branching_b.458
tail_b.728 :
	addi	%r0 %r1 0
	j	branching_b.464
branching_b.458 :
	mov	%r9 %r1
	lw.s	%r1 %f3 0
	addi	%r9 %r1 4
	lw.s	%r1 %f9 0
	addi	%r9 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f4 %f3 %f7
	lw	%r2 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f10
	mul.s	%f5 %f9 %f7
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f10 %f7
	mul.s	%f1 %f6 %f10
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f10 %f0
	add.s	%f0 %f7 %f7
	lw	%r2 %r1 12
	beq	%r1 %r3 tail_b.716
tail_b.717 :
	mul.s	%f5 %f6 %f10
	mul.s	%f1 %f9 %f0
	add.s	%f0 %f10 %f0
	lw	%r2 %r1 36
	lw.s	%r1 %f10 0
	mul.s	%f10 %f0 %f10
	mul.s	%f1 %f3 %f0
	mul.s	%f4 %f6 %f6
	add.s	%f6 %f0 %f6
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f10 %f6
	mul.s	%f5 %f3 %f0
	mul.s	%f4 %f9 %f3
	add.s	%f3 %f0 %f0
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f3 l.67
	div.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f0
	j	branching_b.459
tail_b.716 :
	mov.s	%f7 %f0
branching_b.459 :
	mul.s	%f4 %f4 %f6
	lw	%r2 %r1 16
	lw.s	%r1 %f3 0
	mul.s	%f3 %f6 %f7
	mul.s	%f5 %f5 %f6
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f6 %f3
	add.s	%f3 %f7 %f7
	mul.s	%f1 %f1 %f3
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f7 %f7
	lw	%r2 %r1 12
	beq	%r1 %r3 tail_b.718
tail_b.719 :
	mul.s	%f1 %f5 %f3
	lw	%r2 %r1 36
	lw.s	%r1 %f6 0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f7 %f3
	mul.s	%f4 %f1 %f1
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f6 0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f5 %f4 %f3
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f1 %f1
	j	branching_b.460
tail_b.718 :
	mov.s	%f7 %f1
branching_b.460 :
	lw	%r2 %r1 4
	addi	%r0 %r11 3
	beq	%r1 %r11 tail_b.720
tail_b.721 :
	mov.s	%f1 %f3
	j	branching_b.461
tail_b.720 :
	ilw.s	%r0 %f3 l.56
	sub.s	%f3 %f1 %f3
branching_b.461 :
	mul.s	%f0 %f0 %f1
	mul.s	%f3 %f2 %f3
	sub.s	%f3 %f1 %f1
	fbge	%f8 %f1 tail_b.723
tail_b.722 :
	addi	%r0 %r1 1
	j	branching_b.462
tail_b.723 :
	addi	%r0 %r1 0
branching_b.462 :
	beq	%r1 %r3 tail_b.724
branching_b.463 :
	sqrt.s	%f1 %f1
	lw	%r2 %r1 24
	beq	%r1 %r3 tail_b.725
tail_b.726 :
	j	tail_b.727
tail_b.725 :
	neg.s	%f1 %f1
	j	tail_b.727
tail_b.724 :
	addi	%r0 %r1 0
	j	branching_b.464
tail_b.727 :
	sub.s	%f0 %f1 %f0
	div.s	%f2 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.464
postloop_b.23 :
return_point.13 :
	retl
trace_or_matrix.0 :
	mov	%r3 %r5
	mov	%r2 %r6
preloop_b.24 :
	mov	%r1 %r3
trace_or_matrix_loop.0 :
	slli	%r3 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r7 0
	mov	%r7 %r1
	lw	%r1 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 tail_b.742
branching_b.472 :
	addi	%r0 %r1 99
	beq	%r2 %r1 preloop_b.25
branching_b.474 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r8 0
	lw.s	%r0 %f0 636
	lw	%r8 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f3
	lw.s	%r0 %f1 640
	lw	%r8 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f4
	lw.s	%r0 %f1 644
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	lw	%r8 %r9 4
	addi	%r0 %r2 1
	beq	%r9 %r2 branching_b.475
branching_b.514 :
	addi	%r0 %r1 2
	beq	%r9 %r1 branching_b.515
branching_b.517 :
	mov	%r5 %r1
	lw.s	%r1 %f7 0
	addi	%r5 %r1 4
	lw.s	%r1 %f8 0
	addi	%r5 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f7 %f7 %f2
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f6
	mul.s	%f8 %f8 %f2
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f1 %f6
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f6 %f2
	add.s	%f2 %f0 %f2
	lw	%r8 %r1 12
	addi	%r0 %r9 0
	beq	%r1 %r9 tail_b.816
tail_b.817 :
	mul.s	%f1 %f8 %f6
	lw	%r8 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f7 %f1 %f0
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f8 %f7 %f0
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f1
	j	branching_b.518
tail_b.816 :
	mov.s	%f2 %f1
	j	branching_b.518
branching_b.515 :
	lw	%r8 %r9 16
	mov	%r5 %r1
	lw.s	%r1 %f1 0
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
	addi	%r5 %r1 4
	lw.s	%r1 %f1 0
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	addi	%r5 %r1 8
	lw.s	%r1 %f2 0
	addi	%r9 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.51
	fbge	%f0 %f1 tail_b.813
tail_b.812 :
	addi	%r0 %r8 1
	j	branching_b.516
tail_b.813 :
	addi	%r0 %r8 0
	j	branching_b.516
branching_b.475 :
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f2 l.51
	fbne	%f0 %f2 tail_b.746
tail_b.745 :
	addi	%r0 %r1 1
	j	branching_b.476
tail_b.746 :
	addi	%r0 %r1 0
	j	branching_b.476
preloop_b.25 :
	addi	%r0 %r1 1
	mov	%r1 %r2
solve_one_or_network_loop.2 :
	slli	%r2 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	bne	%r1 %r4 tail_b.743
tail_b.744 :
	j	postloop_b.24
tail_b.743 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r8 0
	addi	%r0 %r1 0
	sw	%r26 %r2 -20
	sw	%r26 %r4 -16
	sw	%r26 %r7 -12
	sw	%r26 %r3 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r5 %r3
	mov	%r8 %r2
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	solve_each_element.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r2 -20
	lw	%r26 %r4 -16
	lw	%r26 %r7 -12
	lw	%r26 %r3 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
	addi	%r2 %r1 1
	mov	%r1 %r2
	j	solve_one_or_network_loop.2
tail_b.742 :
postloop_b.26 :
return_point.14 :
	retl
postloop_b.24 :
tail_b.839 :
	addi	%r3 %r1 1
	mov	%r1 %r3
	j	trace_or_matrix_loop.0
branching_b.476 :
	addi	%r0 %r10 0
	beq	%r1 %r10 branching_b.477
tail_b.765 :
	addi	%r0 %r1 0
	j	branching_b.487
branching_b.477 :
	lw	%r8 %r11 16
	lw	%r8 %r9 24
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.748
tail_b.747 :
	addi	%r0 %r1 1
	j	branching_b.478
tail_b.748 :
	addi	%r0 %r1 0
branching_b.478 :
	beq	%r9 %r10 tail_b.749
branching_b.479 :
	beq	%r1 %r10 tail_b.750
tail_b.751 :
	addi	%r0 %r1 0
	j	branching_b.480
tail_b.750 :
	addi	%r0 %r1 1
	j	branching_b.480
tail_b.749 :
branching_b.480 :
	mov	%r11 %r9
	lw.s	%r9 %f0 0
	beq	%r1 %r10 tail_b.752
tail_b.753 :
	j	branching_b.481
tail_b.752 :
	neg.s	%f0 %f0
branching_b.481 :
	sub.s	%f3 %f0 %f0
	mov	%r5 %r1
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f6
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f2 tail_b.755
tail_b.754 :
	neg.s	%f0 %f0
	j	branching_b.482
tail_b.755 :
branching_b.482 :
	addi	%r11 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.757
tail_b.756 :
	addi	%r0 %r1 1
	j	branching_b.483
tail_b.757 :
	addi	%r0 %r1 0
branching_b.483 :
	beq	%r1 %r10 tail_b.758
branching_b.484 :
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f2 tail_b.760
tail_b.759 :
	neg.s	%f0 %f0
	j	branching_b.485
tail_b.760 :
	j	branching_b.485
tail_b.758 :
	addi	%r0 %r1 0
	j	branching_b.487
branching_b.485 :
	addi	%r11 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.762
tail_b.761 :
	addi	%r0 %r1 1
	j	branching_b.486
tail_b.762 :
	addi	%r0 %r1 0
branching_b.486 :
	beq	%r1 %r10 tail_b.763
tail_b.764 :
	sw.s	%r0 %f6 540
	addi	%r0 %r1 1
	j	branching_b.487
tail_b.763 :
	addi	%r0 %r1 0
branching_b.487 :
	beq	%r1 %r10 branching_b.488
tail_b.811 :
	addi	%r0 %r1 1
	j	branching_b.526
branching_b.488 :
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.767
tail_b.766 :
	addi	%r0 %r1 1
	j	branching_b.489
tail_b.767 :
	addi	%r0 %r1 0
branching_b.489 :
	beq	%r1 %r10 branching_b.490
tail_b.786 :
	addi	%r0 %r1 0
	j	branching_b.500
branching_b.490 :
	lw	%r8 %r11 16
	lw	%r8 %r9 24
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.769
tail_b.768 :
	addi	%r0 %r1 1
	j	branching_b.491
tail_b.769 :
	addi	%r0 %r1 0
branching_b.491 :
	beq	%r9 %r10 tail_b.770
branching_b.492 :
	beq	%r1 %r10 tail_b.771
tail_b.772 :
	addi	%r0 %r9 0
	j	branching_b.493
tail_b.771 :
	addi	%r0 %r9 1
	j	branching_b.493
tail_b.770 :
	mov	%r1 %r9
branching_b.493 :
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	beq	%r9 %r10 tail_b.773
tail_b.774 :
	j	branching_b.494
tail_b.773 :
	neg.s	%f0 %f0
branching_b.494 :
	sub.s	%f4 %f0 %f1
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f1 %f6
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f2 tail_b.776
tail_b.775 :
	neg.s	%f0 %f0
	j	branching_b.495
tail_b.776 :
branching_b.495 :
	addi	%r11 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.778
tail_b.777 :
	addi	%r0 %r1 1
	j	branching_b.496
tail_b.778 :
	addi	%r0 %r1 0
branching_b.496 :
	beq	%r1 %r10 tail_b.779
branching_b.497 :
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f2 tail_b.781
tail_b.780 :
	neg.s	%f0 %f0
	j	branching_b.498
tail_b.781 :
	j	branching_b.498
tail_b.779 :
	addi	%r0 %r1 0
	j	branching_b.500
branching_b.498 :
	mov	%r11 %r1
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.783
tail_b.782 :
	addi	%r0 %r1 1
	j	branching_b.499
tail_b.783 :
	addi	%r0 %r1 0
branching_b.499 :
	beq	%r1 %r10 tail_b.784
tail_b.785 :
	sw.s	%r0 %f6 540
	addi	%r0 %r1 1
	j	branching_b.500
tail_b.784 :
	addi	%r0 %r1 0
branching_b.500 :
	beq	%r1 %r10 branching_b.501
tail_b.810 :
	addi	%r0 %r1 2
	j	branching_b.526
branching_b.501 :
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.788
tail_b.787 :
	addi	%r0 %r1 1
	j	branching_b.502
tail_b.788 :
	addi	%r0 %r1 0
branching_b.502 :
	beq	%r1 %r10 branching_b.503
tail_b.807 :
	addi	%r0 %r1 0
	j	branching_b.513
branching_b.503 :
	lw	%r8 %r9 16
	lw	%r8 %r1 24
	addi	%r5 %r8 8
	lw.s	%r8 %f0 0
	fbge	%f0 %f2 tail_b.790
tail_b.789 :
	addi	%r0 %r8 1
	j	branching_b.504
tail_b.790 :
	addi	%r0 %r8 0
branching_b.504 :
	beq	%r1 %r10 tail_b.791
branching_b.505 :
	beq	%r8 %r10 tail_b.792
tail_b.793 :
	addi	%r0 %r1 0
	j	branching_b.506
tail_b.792 :
	addi	%r0 %r1 1
	j	branching_b.506
tail_b.791 :
	mov	%r8 %r1
branching_b.506 :
	addi	%r9 %r8 8
	lw.s	%r8 %f0 0
	beq	%r1 %r10 tail_b.794
tail_b.795 :
	j	branching_b.507
tail_b.794 :
	neg.s	%f0 %f0
branching_b.507 :
	sub.s	%f5 %f0 %f0
	addi	%r5 %r1 8
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f5
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f2 tail_b.797
tail_b.796 :
	neg.s	%f0 %f0
	j	branching_b.508
tail_b.797 :
branching_b.508 :
	mov	%r9 %r1
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.799
tail_b.798 :
	addi	%r0 %r1 1
	j	branching_b.509
tail_b.799 :
	addi	%r0 %r1 0
branching_b.509 :
	beq	%r1 %r10 tail_b.800
branching_b.510 :
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f2 tail_b.802
tail_b.801 :
	neg.s	%f0 %f0
	j	branching_b.511
tail_b.802 :
	j	branching_b.511
tail_b.800 :
	addi	%r0 %r1 0
	j	branching_b.513
branching_b.511 :
	addi	%r9 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.804
tail_b.803 :
	addi	%r0 %r1 1
	j	branching_b.512
tail_b.804 :
	addi	%r0 %r1 0
branching_b.512 :
	beq	%r1 %r10 tail_b.805
tail_b.806 :
	sw.s	%r0 %f5 540
	addi	%r0 %r1 1
	j	branching_b.513
tail_b.805 :
	addi	%r0 %r1 0
branching_b.513 :
	beq	%r1 %r10 tail_b.808
tail_b.809 :
	addi	%r0 %r1 3
	j	branching_b.526
tail_b.808 :
	addi	%r0 %r1 0
branching_b.526 :
	addi	%r0 %r8 0
	bne	%r1 %r8 branching_b.527
tail_b.838 :
	j	tail_b.839
branching_b.527 :
	lw.s	%r0 %f1 540
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.834
tail_b.833 :
	addi	%r0 %r1 1
	j	branching_b.528
tail_b.834 :
	addi	%r0 %r1 0
branching_b.528 :
	beq	%r1 %r8 tail_b.835
preloop_b.26 :
solve_one_or_network_loop.1 :
	slli	%r2 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	bne	%r1 %r4 tail_b.836
tail_b.837 :
	j	postloop_b.25
tail_b.836 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r8 0
	addi	%r0 %r1 0
	sw	%r26 %r2 -20
	sw	%r26 %r4 -16
	sw	%r26 %r7 -12
	sw	%r26 %r3 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r5 %r3
	mov	%r8 %r2
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	solve_each_element.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r2 -20
	lw	%r26 %r4 -16
	lw	%r26 %r7 -12
	lw	%r26 %r3 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
	addi	%r2 %r1 1
	mov	%r1 %r2
	j	solve_one_or_network_loop.1
tail_b.835 :
	j	tail_b.839
postloop_b.25 :
	j	tail_b.839
branching_b.516 :
	addi	%r0 %r1 0
	beq	%r8 %r1 tail_b.814
tail_b.815 :
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	addi	%r9 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	neg.s	%f0 %f0
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.526
tail_b.814 :
	addi	%r0 %r1 0
	j	branching_b.526
branching_b.518 :
	ilw.s	%r0 %f6 l.51
	fbne	%f1 %f6 tail_b.819
tail_b.818 :
	addi	%r0 %r1 1
	j	branching_b.519
tail_b.819 :
	addi	%r0 %r1 0
branching_b.519 :
	beq	%r1 %r9 branching_b.520
tail_b.832 :
	addi	%r0 %r1 0
	j	branching_b.526
branching_b.520 :
	mov	%r5 %r1
	lw.s	%r1 %f11 0
	addi	%r5 %r1 4
	lw.s	%r1 %f2 0
	addi	%r5 %r1 8
	lw.s	%r1 %f8 0
	mul.s	%f3 %f11 %f7
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f7
	mul.s	%f4 %f2 %f0
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f9
	mul.s	%f5 %f8 %f0
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f9 %f9
	lw	%r8 %r1 12
	beq	%r1 %r9 tail_b.820
tail_b.821 :
	mul.s	%f4 %f8 %f0
	mul.s	%f5 %f2 %f7
	add.s	%f7 %f0 %f0
	lw	%r8 %r1 36
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f10
	mul.s	%f5 %f11 %f0
	mul.s	%f3 %f8 %f7
	add.s	%f7 %f0 %f7
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f10 %f7
	mul.s	%f4 %f11 %f8
	mul.s	%f3 %f2 %f0
	add.s	%f0 %f8 %f2
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f2 l.67
	div.s	%f2 %f0 %f0
	add.s	%f0 %f9 %f8
	j	branching_b.521
tail_b.820 :
	mov.s	%f9 %f8
branching_b.521 :
	mul.s	%f3 %f3 %f0
	lw	%r8 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	mul.s	%f4 %f4 %f2
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f5 %f5 %f2
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f7
	lw	%r8 %r1 12
	beq	%r1 %r9 tail_b.822
tail_b.823 :
	mul.s	%f5 %f4 %f2
	lw	%r8 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f7 %f2
	mul.s	%f3 %f5 %f5
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f4 %f3 %f3
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f2 %f2
	j	branching_b.522
tail_b.822 :
	mov.s	%f7 %f2
branching_b.522 :
	lw	%r8 %r10 4
	addi	%r0 %r1 3
	beq	%r10 %r1 tail_b.824
tail_b.825 :
	mov.s	%f2 %f0
	j	branching_b.523
tail_b.824 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f2 %f0
branching_b.523 :
	mul.s	%f8 %f8 %f2
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f2 %f0
	fbge	%f6 %f0 tail_b.827
tail_b.826 :
	addi	%r0 %r1 1
	j	branching_b.524
tail_b.827 :
	addi	%r0 %r1 0
branching_b.524 :
	beq	%r1 %r9 tail_b.828
branching_b.525 :
	sqrt.s	%f0 %f0
	lw	%r8 %r1 24
	beq	%r1 %r9 tail_b.829
tail_b.830 :
	j	tail_b.831
tail_b.829 :
	neg.s	%f0 %f0
	j	tail_b.831
tail_b.828 :
	addi	%r0 %r1 0
	j	branching_b.526
tail_b.831 :
	sub.s	%f8 %f0 %f0
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.526
solve_each_element_fast.0 :
	mov	%r3 %r7
	mov	%r2 %r8
preloop_b.27 :
solve_each_element_fast_loop.0 :
	lw	%r7 %r10 0
	slli	%r1 %r2 2
	add	%r8 %r2 %r2
	lw	%r2 %r6 0
	addi	%r0 %r4 -1
	beq	%r6 %r4 tail_b.840
branching_b.531 :
	slli	%r6 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r5 0
	lw	%r5 %r12 40
	mov	%r12 %r2
	lw.s	%r2 %f6 0
	addi	%r12 %r2 4
	lw.s	%r2 %f4 0
	addi	%r12 %r2 8
	lw.s	%r2 %f5 0
	lw	%r7 %r2 4
	slli	%r6 %r3 2
	add	%r2 %r3 %r2
	lw	%r2 %r11 0
	lw	%r5 %r3 4
	addi	%r0 %r9 1
	beq	%r3 %r9 branching_b.532
branching_b.559 :
	addi	%r0 %r2 2
	beq	%r3 %r2 branching_b.560
branching_b.562 :
	mov	%r11 %r2
	lw.s	%r2 %f3 0
	ilw.s	%r0 %f7 l.51
	fbne	%f3 %f7 tail_b.892
tail_b.891 :
	addi	%r0 %r2 1
	j	branching_b.563
tail_b.892 :
	addi	%r0 %r2 0
	j	branching_b.563
branching_b.560 :
	mov	%r11 %r2
	lw.s	%r2 %f1 0
	ilw.s	%r0 %f0 l.51
	fbge	%f1 %f0 tail_b.888
tail_b.887 :
	addi	%r0 %r3 1
	j	branching_b.561
tail_b.888 :
	addi	%r0 %r3 0
	j	branching_b.561
branching_b.532 :
	lw	%r7 %r3 0
	mov	%r11 %r2
	lw.s	%r2 %f0 0
	sub.s	%f6 %f0 %f0
	addi	%r11 %r2 4
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	addi	%r3 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f3 l.51
	fbge	%f0 %f3 tail_b.842
tail_b.841 :
	neg.s	%f0 %f0
	j	branching_b.533
tail_b.842 :
	j	branching_b.533
tail_b.840 :
postloop_b.28 :
return_point.15 :
	retl
branching_b.533 :
	lw	%r5 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	fbge	%f0 %f2 tail_b.844
tail_b.843 :
	addi	%r0 %r2 1
	j	branching_b.534
tail_b.844 :
	addi	%r0 %r2 0
branching_b.534 :
	addi	%r0 %r12 0
	beq	%r2 %r12 tail_b.845
branching_b.535 :
	addi	%r3 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.847
tail_b.846 :
	neg.s	%f0 %f2
	j	branching_b.536
tail_b.847 :
	mov.s	%f0 %f2
	j	branching_b.536
tail_b.845 :
	addi	%r0 %r2 0
branching_b.540 :
	beq	%r2 %r12 branching_b.541
tail_b.886 :
	sw.s	%r0 %f1 540
	addi	%r0 %r5 1
	j	branching_b.567
branching_b.541 :
	addi	%r11 %r2 8
	lw.s	%r2 %f0 0
	sub.s	%f4 %f0 %f0
	addi	%r11 %r2 12
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	mov	%r3 %r2
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	add.s	%f6 %f1 %f1
	fbge	%f1 %f3 tail_b.856
tail_b.855 :
	neg.s	%f1 %f1
	j	branching_b.542
tail_b.856 :
branching_b.542 :
	lw	%r5 %r2 16
	lw.s	%r2 %f2 0
	fbge	%f1 %f2 tail_b.858
tail_b.857 :
	addi	%r0 %r2 1
	j	branching_b.543
tail_b.858 :
	addi	%r0 %r2 0
branching_b.543 :
	beq	%r2 %r12 tail_b.859
branching_b.544 :
	addi	%r3 %r2 8
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	add.s	%f5 %f1 %f1
	fbge	%f1 %f3 tail_b.861
tail_b.860 :
	neg.s	%f1 %f2
	j	branching_b.545
tail_b.861 :
	mov.s	%f1 %f2
	j	branching_b.545
tail_b.859 :
	addi	%r0 %r2 0
branching_b.549 :
	beq	%r2 %r12 branching_b.550
tail_b.885 :
	sw.s	%r0 %f0 540
	addi	%r0 %r5 2
	j	branching_b.567
branching_b.550 :
	addi	%r11 %r2 16
	lw.s	%r2 %f0 0
	sub.s	%f5 %f0 %f0
	addi	%r11 %r2 20
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	mov	%r3 %r2
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f3 tail_b.870
tail_b.869 :
	neg.s	%f0 %f2
	j	branching_b.551
tail_b.870 :
	mov.s	%f0 %f2
branching_b.551 :
	lw	%r5 %r2 16
	lw.s	%r2 %f0 0
	fbge	%f2 %f0 tail_b.872
tail_b.871 :
	addi	%r0 %r2 1
	j	branching_b.552
tail_b.872 :
	addi	%r0 %r2 0
branching_b.552 :
	beq	%r2 %r12 tail_b.873
branching_b.553 :
	addi	%r3 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f3 tail_b.875
tail_b.874 :
	neg.s	%f0 %f0
	j	branching_b.554
tail_b.875 :
	j	branching_b.554
tail_b.873 :
	addi	%r0 %r2 0
branching_b.558 :
	beq	%r2 %r12 tail_b.883
tail_b.884 :
	sw.s	%r0 %f1 540
	addi	%r0 %r5 3
	j	branching_b.567
tail_b.883 :
	addi	%r0 %r5 0
	j	branching_b.567
branching_b.554 :
	lw	%r5 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	fbge	%f0 %f2 tail_b.877
tail_b.876 :
	addi	%r0 %r2 1
	j	branching_b.555
tail_b.877 :
	addi	%r0 %r2 0
branching_b.555 :
	beq	%r2 %r12 tail_b.878
branching_b.556 :
	addi	%r11 %r2 20
	lw.s	%r2 %f0 0
	fbne	%f0 %f3 tail_b.880
tail_b.879 :
	addi	%r0 %r2 1
	j	branching_b.557
tail_b.880 :
	addi	%r0 %r2 0
	j	branching_b.557
tail_b.878 :
	addi	%r0 %r2 0
	j	branching_b.558
branching_b.557 :
	beq	%r2 %r12 tail_b.881
tail_b.882 :
	addi	%r0 %r2 0
	j	branching_b.558
tail_b.881 :
	addi	%r0 %r2 1
	j	branching_b.558
branching_b.545 :
	lw	%r5 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f1 0
	fbge	%f2 %f1 tail_b.863
tail_b.862 :
	addi	%r0 %r2 1
	j	branching_b.546
tail_b.863 :
	addi	%r0 %r2 0
branching_b.546 :
	beq	%r2 %r12 tail_b.864
branching_b.547 :
	addi	%r11 %r2 12
	lw.s	%r2 %f1 0
	fbne	%f1 %f3 tail_b.866
tail_b.865 :
	addi	%r0 %r2 1
	j	branching_b.548
tail_b.866 :
	addi	%r0 %r2 0
	j	branching_b.548
tail_b.864 :
	addi	%r0 %r2 0
	j	branching_b.549
branching_b.548 :
	beq	%r2 %r12 tail_b.867
tail_b.868 :
	addi	%r0 %r2 0
	j	branching_b.549
tail_b.867 :
	addi	%r0 %r2 1
	j	branching_b.549
branching_b.567 :
	addi	%r0 %r2 0
	bne	%r5 %r2 branching_b.568
branching_b.597 :
	slli	%r6 %r3 2
	addi	%r3 %r3 48
	lw	%r3 %r3 0
	lw	%r3 %r3 24
	beq	%r3 %r2 tail_b.947
tail_b.948 :
	addi	%r1 %r1 1
	j	solve_each_element_fast_loop.0
tail_b.947 :
	j	postloop_b.28
branching_b.568 :
	lw.s	%r0 %f1 540
	ilw.s	%r0 %f8 l.51
	fbge	%f8 %f1 tail_b.901
tail_b.900 :
	addi	%r0 %r3 1
	j	branching_b.569
tail_b.901 :
	addi	%r0 %r3 0
branching_b.569 :
	beq	%r3 %r2 tail_b.902
branching_b.570 :
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.904
tail_b.903 :
	addi	%r0 %r3 1
	j	branching_b.571
tail_b.904 :
	addi	%r0 %r3 0
	j	branching_b.571
tail_b.902 :
tail_b.946 :
	addi	%r1 %r1 1
	j	solve_each_element_fast_loop.0
branching_b.571 :
	beq	%r3 %r2 tail_b.905
preloop_b.28 :
	ilw.s	%r0 %f0 l.69
	add.s	%f0 %f1 %f3
	mov	%r10 %r3
	lw.s	%r3 %f0 0
	mul.s	%f3 %f0 %f0
	lw.s	%r0 %f1 648
	add.s	%f1 %f0 %f9
	addi	%r10 %r3 4
	lw.s	%r3 %f0 0
	mul.s	%f3 %f0 %f0
	lw.s	%r0 %f1 652
	add.s	%f1 %f0 %f4
	addi	%r10 %r3 8
	lw.s	%r3 %f0 0
	mul.s	%f3 %f0 %f0
	lw.s	%r0 %f1 656
	add.s	%f1 %f0 %f6
	mov	%r2 %r10
check_all_inside_loop.1 :
	slli	%r10 %r3 2
	add	%r8 %r3 %r3
	lw	%r3 %r3 0
	beq	%r3 %r4 tail_b.906
branching_b.573 :
	slli	%r3 %r3 2
	addi	%r3 %r3 48
	lw	%r3 %r12 0
	lw	%r12 %r3 20
	lw.s	%r3 %f0 0
	sub.s	%f0 %f9 %f10
	lw	%r12 %r3 20
	addi	%r3 %r3 4
	lw.s	%r3 %f0 0
	sub.s	%f0 %f4 %f0
	lw	%r12 %r3 20
	addi	%r3 %r3 8
	lw.s	%r3 %f1 0
	sub.s	%f1 %f6 %f7
	lw	%r12 %r3 4
	beq	%r3 %r9 branching_b.574
branching_b.584 :
	addi	%r0 %r11 2
	beq	%r3 %r11 branching_b.585
branching_b.589 :
	mul.s	%f10 %f10 %f1
	lw	%r12 %r3 16
	lw.s	%r3 %f2 0
	mul.s	%f2 %f1 %f5
	mul.s	%f0 %f0 %f1
	lw	%r12 %r3 16
	addi	%r3 %r3 4
	lw.s	%r3 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f5 %f2
	mul.s	%f7 %f7 %f1
	lw	%r12 %r3 16
	addi	%r3 %r3 8
	lw.s	%r3 %f5 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f2 %f2
	lw	%r12 %r3 12
	beq	%r3 %r2 tail_b.931
tail_b.932 :
	mul.s	%f7 %f0 %f5
	lw	%r12 %r3 36
	lw.s	%r3 %f1 0
	mul.s	%f1 %f5 %f1
	add.s	%f1 %f2 %f2
	mul.s	%f10 %f7 %f1
	lw	%r12 %r3 36
	addi	%r3 %r3 4
	lw.s	%r3 %f5 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f0 %f10 %f2
	lw	%r12 %r3 36
	addi	%r3 %r3 8
	lw.s	%r3 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	j	branching_b.590
tail_b.931 :
	mov.s	%f2 %f0
	j	branching_b.590
branching_b.585 :
	lw	%r12 %r11 16
	mov	%r11 %r3
	lw.s	%r3 %f1 0
	mul.s	%f10 %f1 %f1
	addi	%r11 %r3 4
	lw.s	%r3 %f2 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	addi	%r11 %r3 8
	lw.s	%r3 %f0 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	lw	%r12 %r11 24
	fbge	%f0 %f8 tail_b.925
tail_b.924 :
	addi	%r0 %r3 1
	j	branching_b.586
tail_b.925 :
	addi	%r0 %r3 0
	j	branching_b.586
branching_b.574 :
	fbge	%f10 %f8 tail_b.908
tail_b.907 :
	neg.s	%f10 %f1
	j	branching_b.575
tail_b.908 :
	mov.s	%f10 %f1
	j	branching_b.575
tail_b.906 :
	addi	%r0 %r3 1
	j	postloop_b.27
tail_b.905 :
	j	tail_b.946
postloop_b.27 :
branching_b.596 :
	beq	%r3 %r2 tail_b.944
tail_b.945 :
	sw.s	%r0 %f3 548
	sw.s	%r0 %f9 552
	sw.s	%r0 %f4 556
	sw.s	%r0 %f6 560
	sw	%r0 %r6 564
	sw	%r0 %r5 544
	j	tail_b.946
tail_b.944 :
	j	tail_b.946
branching_b.575 :
	lw	%r12 %r3 16
	lw.s	%r3 %f2 0
	fbge	%f1 %f2 tail_b.910
tail_b.909 :
	addi	%r0 %r3 1
	j	branching_b.576
tail_b.910 :
	addi	%r0 %r3 0
branching_b.576 :
	beq	%r3 %r2 tail_b.911
branching_b.577 :
	fbge	%f0 %f8 tail_b.913
tail_b.912 :
	neg.s	%f0 %f1
	j	branching_b.578
tail_b.913 :
	mov.s	%f0 %f1
	j	branching_b.578
tail_b.911 :
	addi	%r0 %r3 0
branching_b.582 :
	beq	%r3 %r2 branching_b.583
tail_b.923 :
	lw	%r12 %r3 24
	j	branching_b.595
branching_b.583 :
	lw	%r12 %r3 24
	beq	%r3 %r2 tail_b.921
tail_b.922 :
	addi	%r0 %r3 0
	j	branching_b.595
tail_b.921 :
	addi	%r0 %r3 1
branching_b.595 :
	beq	%r3 %r2 tail_b.942
tail_b.943 :
	addi	%r0 %r3 0
	j	postloop_b.27
tail_b.942 :
	addi	%r10 %r3 1
	mov	%r3 %r10
	j	check_all_inside_loop.1
branching_b.578 :
	lw	%r12 %r3 16
	addi	%r3 %r3 4
	lw.s	%r3 %f0 0
	fbge	%f1 %f0 tail_b.915
tail_b.914 :
	addi	%r0 %r3 1
	j	branching_b.579
tail_b.915 :
	addi	%r0 %r3 0
branching_b.579 :
	beq	%r3 %r2 tail_b.916
branching_b.580 :
	fbge	%f7 %f8 tail_b.918
tail_b.917 :
	neg.s	%f7 %f0
	j	branching_b.581
tail_b.918 :
	mov.s	%f7 %f0
	j	branching_b.581
tail_b.916 :
	addi	%r0 %r3 0
	j	branching_b.582
branching_b.581 :
	lw	%r12 %r3 16
	addi	%r3 %r3 8
	lw.s	%r3 %f1 0
	fbge	%f0 %f1 tail_b.920
tail_b.919 :
	addi	%r0 %r3 1
	j	branching_b.582
tail_b.920 :
	addi	%r0 %r3 0
	j	branching_b.582
branching_b.586 :
	beq	%r11 %r2 tail_b.926
branching_b.587 :
	beq	%r3 %r2 tail_b.927
tail_b.928 :
	addi	%r0 %r3 0
	j	branching_b.588
tail_b.927 :
	addi	%r0 %r3 1
	j	branching_b.588
tail_b.926 :
branching_b.588 :
	beq	%r3 %r2 tail_b.929
tail_b.930 :
	addi	%r0 %r3 0
	j	branching_b.595
tail_b.929 :
	addi	%r0 %r3 1
	j	branching_b.595
branching_b.590 :
	lw	%r12 %r11 4
	addi	%r0 %r3 3
	beq	%r11 %r3 tail_b.933
tail_b.934 :
	j	branching_b.591
tail_b.933 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f0 %f0
branching_b.591 :
	lw	%r12 %r3 24
	fbge	%f0 %f8 tail_b.936
tail_b.935 :
	addi	%r0 %r11 1
	j	branching_b.592
tail_b.936 :
	addi	%r0 %r11 0
branching_b.592 :
	beq	%r3 %r2 tail_b.937
branching_b.593 :
	beq	%r11 %r2 tail_b.938
tail_b.939 :
	addi	%r0 %r3 0
	j	branching_b.594
tail_b.938 :
	addi	%r0 %r3 1
	j	branching_b.594
tail_b.937 :
	mov	%r11 %r3
branching_b.594 :
	beq	%r3 %r2 tail_b.940
tail_b.941 :
	addi	%r0 %r3 0
	j	branching_b.595
tail_b.940 :
	addi	%r0 %r3 1
	j	branching_b.595
branching_b.536 :
	lw	%r5 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	fbge	%f2 %f0 tail_b.849
tail_b.848 :
	addi	%r0 %r2 1
	j	branching_b.537
tail_b.849 :
	addi	%r0 %r2 0
branching_b.537 :
	beq	%r2 %r12 tail_b.850
branching_b.538 :
	addi	%r11 %r2 4
	lw.s	%r2 %f0 0
	fbne	%f0 %f3 tail_b.852
tail_b.851 :
	addi	%r0 %r2 1
	j	branching_b.539
tail_b.852 :
	addi	%r0 %r2 0
	j	branching_b.539
tail_b.850 :
	addi	%r0 %r2 0
	j	branching_b.540
branching_b.539 :
	beq	%r2 %r12 tail_b.853
tail_b.854 :
	addi	%r0 %r2 0
	j	branching_b.540
tail_b.853 :
	addi	%r0 %r2 1
	j	branching_b.540
branching_b.561 :
	addi	%r0 %r2 0
	beq	%r3 %r2 tail_b.889
tail_b.890 :
	mov	%r11 %r2
	lw.s	%r2 %f1 0
	addi	%r12 %r2 12
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r5 1
	j	branching_b.567
tail_b.889 :
	addi	%r0 %r5 0
	j	branching_b.567
branching_b.563 :
	addi	%r0 %r3 0
	beq	%r2 %r3 branching_b.564
tail_b.899 :
	addi	%r0 %r5 0
	j	branching_b.567
branching_b.564 :
	addi	%r11 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f6 %f0 %f0
	addi	%r11 %r2 8
	lw.s	%r2 %f1 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r11 %r2 12
	lw.s	%r2 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r12 %r2 12
	lw.s	%r2 %f2 0
	mul.s	%f1 %f1 %f0
	mul.s	%f2 %f3 %f2
	sub.s	%f2 %f0 %f0
	fbge	%f7 %f0 tail_b.894
tail_b.893 :
	addi	%r0 %r2 1
	j	branching_b.565
tail_b.894 :
	addi	%r0 %r2 0
branching_b.565 :
	beq	%r2 %r3 tail_b.895
branching_b.566 :
	lw	%r5 %r2 24
	beq	%r2 %r3 tail_b.896
tail_b.897 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r11 %r2 16
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.898
tail_b.896 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f1 %f1
	addi	%r11 %r2 16
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.898
tail_b.895 :
	addi	%r0 %r5 0
	j	branching_b.567
tail_b.898 :
	addi	%r0 %r5 1
	j	branching_b.567
solve_one_or_network_fast.0 :
	mov	%r2 %r7
preloop_b.29 :
	mov	%r1 %r4
solve_one_or_network_fast_loop.0 :
	slli	%r4 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	addi	%r0 %r6 -1
	bne	%r1 %r6 preloop_b.30
tail_b.1021 :
	j	postloop_b.30
preloop_b.30 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r8 0
	addi	%r0 %r5 0
	mov	%r5 %r9
solve_each_element_fast_loop.1 :
	lw	%r3 %r11 0
	slli	%r9 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r10 0
	beq	%r10 %r6 tail_b.949
branching_b.600 :
	slli	%r10 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r2 0
	lw	%r2 %r13 40
	mov	%r13 %r1
	lw.s	%r1 %f4 0
	addi	%r13 %r1 4
	lw.s	%r1 %f5 0
	addi	%r13 %r1 8
	lw.s	%r1 %f1 0
	lw	%r3 %r1 4
	slli	%r10 %r12 2
	add	%r1 %r12 %r1
	lw	%r1 %r12 0
	lw	%r2 %r1 4
	addi	%r0 %r14 1
	beq	%r1 %r14 branching_b.601
branching_b.628 :
	addi	%r0 %r14 2
	beq	%r1 %r14 branching_b.629
branching_b.631 :
	mov	%r12 %r1
	lw.s	%r1 %f6 0
	ilw.s	%r0 %f2 l.51
	fbne	%f6 %f2 tail_b.1001
tail_b.1000 :
	addi	%r0 %r1 1
	j	branching_b.632
tail_b.1001 :
	addi	%r0 %r1 0
	j	branching_b.632
branching_b.629 :
	mov	%r12 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.51
	fbge	%f1 %f0 tail_b.997
tail_b.996 :
	addi	%r0 %r1 1
	j	branching_b.630
tail_b.997 :
	addi	%r0 %r1 0
	j	branching_b.630
branching_b.601 :
	lw	%r3 %r13 0
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	sub.s	%f4 %f0 %f2
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f3
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f6 l.51
	fbge	%f0 %f6 tail_b.951
tail_b.950 :
	neg.s	%f0 %f2
	j	branching_b.602
tail_b.951 :
	mov.s	%f0 %f2
	j	branching_b.602
tail_b.949 :
postloop_b.29 :
tail_b.1020 :
	addi	%r4 %r1 1
	mov	%r1 %r4
	j	solve_one_or_network_fast_loop.0
branching_b.602 :
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.953
tail_b.952 :
	addi	%r0 %r1 1
	j	branching_b.603
tail_b.953 :
	addi	%r0 %r1 0
branching_b.603 :
	beq	%r1 %r5 tail_b.954
branching_b.604 :
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f1 %f0 %f0
	fbge	%f0 %f6 tail_b.956
tail_b.955 :
	neg.s	%f0 %f0
	j	branching_b.605
tail_b.956 :
	j	branching_b.605
tail_b.954 :
	addi	%r0 %r1 0
branching_b.609 :
	beq	%r1 %r5 branching_b.610
tail_b.995 :
	sw.s	%r0 %f3 540
	addi	%r0 %r2 1
	j	branching_b.636
branching_b.610 :
	addi	%r12 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f2
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	mov	%r13 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f6 tail_b.965
tail_b.964 :
	neg.s	%f0 %f0
	j	branching_b.611
tail_b.965 :
branching_b.611 :
	lw	%r2 %r1 16
	lw.s	%r1 %f3 0
	fbge	%f0 %f3 tail_b.967
tail_b.966 :
	addi	%r0 %r1 1
	j	branching_b.612
tail_b.967 :
	addi	%r0 %r1 0
branching_b.612 :
	beq	%r1 %r5 tail_b.968
branching_b.613 :
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	fbge	%f0 %f6 tail_b.970
tail_b.969 :
	neg.s	%f0 %f3
	j	branching_b.614
tail_b.970 :
	mov.s	%f0 %f3
	j	branching_b.614
tail_b.968 :
	addi	%r0 %r1 0
branching_b.618 :
	beq	%r1 %r5 branching_b.619
tail_b.994 :
	sw.s	%r0 %f2 540
	addi	%r0 %r2 2
	j	branching_b.636
branching_b.619 :
	addi	%r12 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f0
	addi	%r12 %r1 20
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	mov	%r13 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	add.s	%f4 %f1 %f1
	fbge	%f1 %f6 tail_b.979
tail_b.978 :
	neg.s	%f1 %f2
	j	branching_b.620
tail_b.979 :
	mov.s	%f1 %f2
branching_b.620 :
	lw	%r2 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f2 %f1 tail_b.981
tail_b.980 :
	addi	%r0 %r1 1
	j	branching_b.621
tail_b.981 :
	addi	%r0 %r1 0
branching_b.621 :
	beq	%r1 %r5 tail_b.982
branching_b.622 :
	addi	%r13 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	add.s	%f5 %f1 %f1
	fbge	%f1 %f6 tail_b.984
tail_b.983 :
	neg.s	%f1 %f2
	j	branching_b.623
tail_b.984 :
	mov.s	%f1 %f2
	j	branching_b.623
tail_b.982 :
	addi	%r0 %r1 0
branching_b.627 :
	beq	%r1 %r5 tail_b.992
tail_b.993 :
	sw.s	%r0 %f0 540
	addi	%r0 %r2 3
	j	branching_b.636
tail_b.992 :
	addi	%r0 %r2 0
	j	branching_b.636
branching_b.623 :
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f2 %f1 tail_b.986
tail_b.985 :
	addi	%r0 %r1 1
	j	branching_b.624
tail_b.986 :
	addi	%r0 %r1 0
branching_b.624 :
	beq	%r1 %r5 tail_b.987
branching_b.625 :
	addi	%r12 %r1 20
	lw.s	%r1 %f1 0
	fbne	%f1 %f6 tail_b.989
tail_b.988 :
	addi	%r0 %r1 1
	j	branching_b.626
tail_b.989 :
	addi	%r0 %r1 0
	j	branching_b.626
tail_b.987 :
	addi	%r0 %r1 0
	j	branching_b.627
branching_b.626 :
	beq	%r1 %r5 tail_b.990
tail_b.991 :
	addi	%r0 %r1 0
	j	branching_b.627
tail_b.990 :
	addi	%r0 %r1 1
	j	branching_b.627
branching_b.614 :
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f3 %f0 tail_b.972
tail_b.971 :
	addi	%r0 %r1 1
	j	branching_b.615
tail_b.972 :
	addi	%r0 %r1 0
branching_b.615 :
	beq	%r1 %r5 tail_b.973
branching_b.616 :
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f6 tail_b.975
tail_b.974 :
	addi	%r0 %r1 1
	j	branching_b.617
tail_b.975 :
	addi	%r0 %r1 0
	j	branching_b.617
tail_b.973 :
	addi	%r0 %r1 0
	j	branching_b.618
branching_b.617 :
	beq	%r1 %r5 tail_b.976
tail_b.977 :
	addi	%r0 %r1 0
	j	branching_b.618
tail_b.976 :
	addi	%r0 %r1 1
	j	branching_b.618
branching_b.636 :
	bne	%r2 %r5 branching_b.637
branching_b.642 :
	slli	%r10 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	beq	%r1 %r5 tail_b.1018
tail_b.1019 :
	addi	%r9 %r1 1
	mov	%r1 %r9
	j	solve_each_element_fast_loop.1
tail_b.1018 :
	j	postloop_b.29
branching_b.637 :
	lw.s	%r0 %f0 540
	ilw.s	%r0 %f1 l.51
	fbge	%f1 %f0 tail_b.1010
tail_b.1009 :
	addi	%r0 %r1 1
	j	branching_b.638
tail_b.1010 :
	addi	%r0 %r1 0
branching_b.638 :
	beq	%r1 %r5 tail_b.1011
branching_b.639 :
	lw.s	%r0 %f1 548
	fbge	%f0 %f1 tail_b.1013
tail_b.1012 :
	addi	%r0 %r1 1
	j	branching_b.640
tail_b.1013 :
	addi	%r0 %r1 0
	j	branching_b.640
tail_b.1011 :
tail_b.1017 :
	addi	%r9 %r1 1
	mov	%r1 %r9
	j	solve_each_element_fast_loop.1
branching_b.640 :
	beq	%r1 %r5 tail_b.1014
branching_b.641 :
	ilw.s	%r0 %f1 l.69
	add.s	%f1 %f0 %f4
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f1
	lw.s	%r0 %f0 648
	add.s	%f0 %f1 %f1
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f2
	lw.s	%r0 %f0 652
	add.s	%f0 %f2 %f3
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	lw.s	%r0 %f2 656
	add.s	%f2 %f0 %f2
	addi	%r0 %r1 0
	sw.s	%r26 %f2 -48
	sw.s	%r26 %f3 -44
	sw.s	%r26 %f1 -40
	sw.s	%r26 %f4 -36
	sw	%r26 %r2 -32
	sw	%r26 %r10 -28
	sw	%r26 %r9 -24
	sw	%r26 %r5 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r4 -8
	sw	%r26 %r3 -4
	sw	%r26 %r7 0
	mov	%r8 %r2
	mov.s	%f1 %f0
	mov.s	%f3 %f1
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	check_all_inside.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw.s	%r26 %f2 -48
	lw.s	%r26 %f3 -44
	lw.s	%r26 %f1 -40
	lw.s	%r26 %f4 -36
	lw	%r26 %r2 -32
	lw	%r26 %r10 -28
	lw	%r26 %r9 -24
	lw	%r26 %r5 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r4 -8
	lw	%r26 %r3 -4
	lw	%r26 %r7 0
	beq	%r1 %r5 tail_b.1015
tail_b.1016 :
	sw.s	%r0 %f4 548
	sw.s	%r0 %f1 552
	sw.s	%r0 %f3 556
	sw.s	%r0 %f2 560
	sw	%r0 %r10 564
	sw	%r0 %r2 544
	j	tail_b.1017
tail_b.1015 :
	j	tail_b.1017
tail_b.1014 :
	j	tail_b.1017
branching_b.605 :
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.958
tail_b.957 :
	addi	%r0 %r1 1
	j	branching_b.606
tail_b.958 :
	addi	%r0 %r1 0
branching_b.606 :
	beq	%r1 %r5 tail_b.959
branching_b.607 :
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f6 tail_b.961
tail_b.960 :
	addi	%r0 %r1 1
	j	branching_b.608
tail_b.961 :
	addi	%r0 %r1 0
	j	branching_b.608
tail_b.959 :
	addi	%r0 %r1 0
	j	branching_b.609
branching_b.608 :
	beq	%r1 %r5 tail_b.962
tail_b.963 :
	addi	%r0 %r1 0
	j	branching_b.609
tail_b.962 :
	addi	%r0 %r1 1
	j	branching_b.609
branching_b.630 :
	beq	%r1 %r5 tail_b.998
tail_b.999 :
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	addi	%r13 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r2 1
	j	branching_b.636
tail_b.998 :
	addi	%r0 %r2 0
	j	branching_b.636
branching_b.632 :
	beq	%r1 %r5 branching_b.633
tail_b.1008 :
	addi	%r0 %r2 0
	j	branching_b.636
branching_b.633 :
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f3
	addi	%r12 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f3
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f3
	addi	%r13 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f3 %f3 %f1
	mul.s	%f0 %f6 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f2 %f0 tail_b.1003
tail_b.1002 :
	addi	%r0 %r1 1
	j	branching_b.634
tail_b.1003 :
	addi	%r0 %r1 0
branching_b.634 :
	beq	%r1 %r5 tail_b.1004
branching_b.635 :
	lw	%r2 %r1 24
	beq	%r1 %r5 tail_b.1005
tail_b.1006 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f3 %f0
	addi	%r12 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1007
tail_b.1005 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f3 %f0
	addi	%r12 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1007
tail_b.1004 :
	addi	%r0 %r2 0
	j	branching_b.636
tail_b.1007 :
	addi	%r0 %r2 1
	j	branching_b.636
postloop_b.30 :
return_point.16 :
	retl
trace_or_matrix_fast.0 :
	mov	%r3 %r5
	mov	%r2 %r6
preloop_b.31 :
	mov	%r1 %r4
trace_or_matrix_fast_loop.0 :
	slli	%r4 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r7 0
	mov	%r7 %r1
	lw	%r1 %r2 0
	addi	%r0 %r3 -1
	beq	%r2 %r3 tail_b.1022
branching_b.644 :
	addi	%r0 %r1 99
	beq	%r2 %r1 preloop_b.32
branching_b.646 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r10 0
	lw	%r10 %r11 40
	mov	%r11 %r1
	lw.s	%r1 %f5 0
	addi	%r11 %r1 4
	lw.s	%r1 %f6 0
	addi	%r11 %r1 8
	lw.s	%r1 %f2 0
	lw	%r5 %r1 4
	slli	%r2 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r9 0
	lw	%r10 %r1 4
	addi	%r0 %r8 1
	beq	%r1 %r8 branching_b.647
branching_b.674 :
	addi	%r0 %r2 2
	beq	%r1 %r2 branching_b.675
branching_b.677 :
	mov	%r9 %r1
	lw.s	%r1 %f4 0
	ilw.s	%r0 %f0 l.51
	fbne	%f4 %f0 tail_b.1076
tail_b.1075 :
	addi	%r0 %r1 1
	j	branching_b.678
tail_b.1076 :
	addi	%r0 %r1 0
	j	branching_b.678
branching_b.675 :
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.1072
tail_b.1071 :
	addi	%r0 %r2 1
	j	branching_b.676
tail_b.1072 :
	addi	%r0 %r2 0
	j	branching_b.676
branching_b.647 :
	lw	%r5 %r11 0
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f1
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f4
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f3 l.51
	fbge	%f0 %f3 tail_b.1026
tail_b.1025 :
	neg.s	%f0 %f1
	j	branching_b.648
tail_b.1026 :
	mov.s	%f0 %f1
	j	branching_b.648
preloop_b.32 :
	addi	%r0 %r1 1
	mov	%r1 %r8
solve_one_or_network_fast_loop.2 :
	slli	%r8 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	bne	%r1 %r3 tail_b.1023
tail_b.1024 :
	j	postloop_b.31
tail_b.1023 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r2 0
	addi	%r0 %r1 0
	sw	%r26 %r8 -20
	sw	%r26 %r3 -16
	sw	%r26 %r7 -12
	sw	%r26 %r4 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r5 %r3
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	solve_each_element_fast.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r8 -20
	lw	%r26 %r3 -16
	lw	%r26 %r7 -12
	lw	%r26 %r4 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
	addi	%r8 %r1 1
	mov	%r1 %r8
	j	solve_one_or_network_fast_loop.2
tail_b.1022 :
postloop_b.33 :
return_point.17 :
	retl
postloop_b.31 :
tail_b.1090 :
	addi	%r4 %r1 1
	mov	%r1 %r4
	j	trace_or_matrix_fast_loop.0
branching_b.648 :
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1028
tail_b.1027 :
	addi	%r0 %r1 1
	j	branching_b.649
tail_b.1028 :
	addi	%r0 %r1 0
branching_b.649 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.1029
branching_b.650 :
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f2 %f0 %f0
	fbge	%f0 %f3 tail_b.1031
tail_b.1030 :
	neg.s	%f0 %f0
	j	branching_b.651
tail_b.1031 :
	j	branching_b.651
tail_b.1029 :
	addi	%r0 %r1 0
branching_b.655 :
	beq	%r1 %r2 branching_b.656
tail_b.1070 :
	sw.s	%r0 %f4 540
	addi	%r0 %r1 1
	j	branching_b.682
branching_b.656 :
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f6 %f0 %f1
	addi	%r9 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.1040
tail_b.1039 :
	neg.s	%f0 %f0
	j	branching_b.657
tail_b.1040 :
branching_b.657 :
	lw	%r10 %r1 16
	lw.s	%r1 %f4 0
	fbge	%f0 %f4 tail_b.1042
tail_b.1041 :
	addi	%r0 %r1 1
	j	branching_b.658
tail_b.1042 :
	addi	%r0 %r1 0
branching_b.658 :
	beq	%r1 %r2 tail_b.1043
branching_b.659 :
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f2 %f0 %f0
	fbge	%f0 %f3 tail_b.1045
tail_b.1044 :
	neg.s	%f0 %f4
	j	branching_b.660
tail_b.1045 :
	mov.s	%f0 %f4
	j	branching_b.660
tail_b.1043 :
	addi	%r0 %r1 0
branching_b.664 :
	beq	%r1 %r2 branching_b.665
tail_b.1069 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 2
	j	branching_b.682
branching_b.665 :
	addi	%r9 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f2 %f0 %f0
	addi	%r9 %r1 20
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.1054
tail_b.1053 :
	neg.s	%f0 %f0
	j	branching_b.666
tail_b.1054 :
branching_b.666 :
	lw	%r10 %r1 16
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.1056
tail_b.1055 :
	addi	%r0 %r1 1
	j	branching_b.667
tail_b.1056 :
	addi	%r0 %r1 0
branching_b.667 :
	beq	%r1 %r2 tail_b.1057
branching_b.668 :
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f3 tail_b.1059
tail_b.1058 :
	neg.s	%f0 %f2
	j	branching_b.669
tail_b.1059 :
	mov.s	%f0 %f2
	j	branching_b.669
tail_b.1057 :
	addi	%r0 %r1 0
branching_b.673 :
	beq	%r1 %r2 tail_b.1067
tail_b.1068 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 3
	j	branching_b.682
tail_b.1067 :
	addi	%r0 %r1 0
	j	branching_b.682
branching_b.669 :
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.1061
tail_b.1060 :
	addi	%r0 %r1 1
	j	branching_b.670
tail_b.1061 :
	addi	%r0 %r1 0
branching_b.670 :
	beq	%r1 %r2 tail_b.1062
branching_b.671 :
	addi	%r9 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1064
tail_b.1063 :
	addi	%r0 %r1 1
	j	branching_b.672
tail_b.1064 :
	addi	%r0 %r1 0
	j	branching_b.672
tail_b.1062 :
	addi	%r0 %r1 0
	j	branching_b.673
branching_b.672 :
	beq	%r1 %r2 tail_b.1065
tail_b.1066 :
	addi	%r0 %r1 0
	j	branching_b.673
tail_b.1065 :
	addi	%r0 %r1 1
	j	branching_b.673
branching_b.660 :
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f4 %f0 tail_b.1047
tail_b.1046 :
	addi	%r0 %r1 1
	j	branching_b.661
tail_b.1047 :
	addi	%r0 %r1 0
branching_b.661 :
	beq	%r1 %r2 tail_b.1048
branching_b.662 :
	addi	%r9 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1050
tail_b.1049 :
	addi	%r0 %r1 1
	j	branching_b.663
tail_b.1050 :
	addi	%r0 %r1 0
	j	branching_b.663
tail_b.1048 :
	addi	%r0 %r1 0
	j	branching_b.664
branching_b.663 :
	beq	%r1 %r2 tail_b.1051
tail_b.1052 :
	addi	%r0 %r1 0
	j	branching_b.664
tail_b.1051 :
	addi	%r0 %r1 1
	j	branching_b.664
branching_b.682 :
	addi	%r0 %r2 0
	bne	%r1 %r2 branching_b.683
tail_b.1089 :
	j	tail_b.1090
branching_b.683 :
	lw.s	%r0 %f1 540
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.1085
tail_b.1084 :
	addi	%r0 %r1 1
	j	branching_b.684
tail_b.1085 :
	addi	%r0 %r1 0
branching_b.684 :
	beq	%r1 %r2 tail_b.1086
preloop_b.33 :
solve_one_or_network_fast_loop.1 :
	slli	%r8 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	bne	%r1 %r3 tail_b.1087
tail_b.1088 :
	j	postloop_b.32
tail_b.1087 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r2 0
	addi	%r0 %r1 0
	sw	%r26 %r8 -20
	sw	%r26 %r3 -16
	sw	%r26 %r7 -12
	sw	%r26 %r4 -8
	sw	%r26 %r5 -4
	sw	%r26 %r6 0
	mov	%r5 %r3
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	solve_each_element_fast.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r8 -20
	lw	%r26 %r3 -16
	lw	%r26 %r7 -12
	lw	%r26 %r4 -8
	lw	%r26 %r5 -4
	lw	%r26 %r6 0
	addi	%r8 %r1 1
	mov	%r1 %r8
	j	solve_one_or_network_fast_loop.1
tail_b.1086 :
	j	tail_b.1090
postloop_b.32 :
	j	tail_b.1090
branching_b.651 :
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.1033
tail_b.1032 :
	addi	%r0 %r1 1
	j	branching_b.652
tail_b.1033 :
	addi	%r0 %r1 0
branching_b.652 :
	beq	%r1 %r2 tail_b.1034
branching_b.653 :
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1036
tail_b.1035 :
	addi	%r0 %r1 1
	j	branching_b.654
tail_b.1036 :
	addi	%r0 %r1 0
	j	branching_b.654
tail_b.1034 :
	addi	%r0 %r1 0
	j	branching_b.655
branching_b.654 :
	beq	%r1 %r2 tail_b.1037
tail_b.1038 :
	addi	%r0 %r1 0
	j	branching_b.655
tail_b.1037 :
	addi	%r0 %r1 1
	j	branching_b.655
branching_b.676 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.1073
tail_b.1074 :
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	addi	%r11 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.682
tail_b.1073 :
	addi	%r0 %r1 0
	j	branching_b.682
branching_b.678 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.679
tail_b.1083 :
	addi	%r0 %r1 0
	j	branching_b.682
branching_b.679 :
	addi	%r9 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f5 %f1 %f1
	addi	%r9 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f1 %f3
	addi	%r9 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f3 %f2
	addi	%r11 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f2 %f2 %f3
	mul.s	%f1 %f4 %f1
	sub.s	%f1 %f3 %f1
	fbge	%f0 %f1 tail_b.1078
tail_b.1077 :
	addi	%r0 %r1 1
	j	branching_b.680
tail_b.1078 :
	addi	%r0 %r1 0
branching_b.680 :
	beq	%r1 %r2 tail_b.1079
branching_b.681 :
	lw	%r10 %r1 24
	beq	%r1 %r2 tail_b.1080
tail_b.1081 :
	sqrt.s	%f1 %f0
	add.s	%f0 %f2 %f1
	addi	%r9 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1082
tail_b.1080 :
	sqrt.s	%f1 %f0
	sub.s	%f0 %f2 %f1
	addi	%r9 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1082
tail_b.1079 :
	addi	%r0 %r1 0
	j	branching_b.682
tail_b.1082 :
	addi	%r0 %r1 1
	j	branching_b.682
trace_reflections.0 :
	mov	%r2 %r6
	mov.s	%f1 %f4
	mov.s	%f0 %f6
preloop_b.34 :
	mov	%r1 %r7
trace_reflections_loop.0 :
	addi	%r0 %r5 0
	ble	%r5 %r7 preloop_b.35
tail_b.1249 :
	j	postloop_b.36
preloop_b.35 :
	slli	%r7 %r1 2
	addi	%r1 %r1 1016
	lw	%r1 %r8 0
	lw	%r8 %r3 4
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r9 536
	mov	%r5 %r10
trace_or_matrix_fast_loop.3 :
	slli	%r10 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r11 0
	mov	%r11 %r1
	lw	%r1 %r2 0
	addi	%r0 %r1 -1
	beq	%r2 %r1 tail_b.1091
branching_b.688 :
	addi	%r0 %r1 99
	beq	%r2 %r1 tail_b.1092
branching_b.689 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r12 0
	lw	%r12 %r4 40
	mov	%r4 %r1
	lw.s	%r1 %f5 0
	addi	%r4 %r1 4
	lw.s	%r1 %f7 0
	addi	%r4 %r1 8
	lw.s	%r1 %f8 0
	lw	%r3 %r1 4
	slli	%r2 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r2 0
	lw	%r12 %r13 4
	addi	%r0 %r1 1
	beq	%r13 %r1 branching_b.690
branching_b.717 :
	addi	%r0 %r1 2
	beq	%r13 %r1 branching_b.718
branching_b.720 :
	mov	%r2 %r1
	lw.s	%r1 %f3 0
	ilw.s	%r0 %f2 l.51
	fbne	%f3 %f2 tail_b.1144
tail_b.1143 :
	addi	%r0 %r1 1
	j	branching_b.721
tail_b.1144 :
	addi	%r0 %r1 0
	j	branching_b.721
branching_b.718 :
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.51
	fbge	%f1 %f0 tail_b.1140
tail_b.1139 :
	addi	%r0 %r1 1
	j	branching_b.719
tail_b.1140 :
	addi	%r0 %r1 0
	j	branching_b.719
branching_b.690 :
	lw	%r3 %r4 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f0
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f2
	addi	%r4 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f3 l.51
	fbge	%f0 %f3 tail_b.1094
tail_b.1093 :
	neg.s	%f0 %f1
	j	branching_b.691
tail_b.1094 :
	mov.s	%f0 %f1
	j	branching_b.691
tail_b.1092 :
	addi	%r0 %r1 1
	sw	%r26 %r10 -32
	sw	%r26 %r9 -28
	sw	%r26 %r3 -24
	sw	%r26 %r8 -20
	sw	%r26 %r5 -16
	sw	%r26 %r7 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f6 -4
	sw	%r26 %r6 0
	mov	%r11 %r2
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r10 -32
	lw	%r26 %r9 -28
	lw	%r26 %r3 -24
	lw	%r26 %r8 -20
	lw	%r26 %r5 -16
	lw	%r26 %r7 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f6 -4
	lw	%r26 %r6 0
	j	tail_b.1157
tail_b.1091 :
postloop_b.34 :
branching_b.728 :
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f2 l.70
	fbge	%f2 %f0 tail_b.1159
tail_b.1158 :
	addi	%r0 %r1 1
	j	branching_b.729
tail_b.1159 :
	addi	%r0 %r1 0
branching_b.729 :
	beq	%r1 %r5 tail_b.1160
branching_b.730 :
	ilw.s	%r0 %f1 l.71
	fbge	%f0 %f1 tail_b.1162
tail_b.1161 :
	addi	%r0 %r1 1
	j	branching_b.731
tail_b.1162 :
	addi	%r0 %r1 0
	j	branching_b.731
tail_b.1160 :
	addi	%r0 %r1 0
branching_b.731 :
	beq	%r1 %r5 tail_b.1163
branching_b.732 :
	lw	%r0 %r2 564
	addi	%r0 %r1 4
	mul	%r2 %r1 %r2
	lw	%r0 %r1 544
	add	%r2 %r1 %r1
	lw	%r8 %r2 0
	beq	%r1 %r2 preloop_b.36
tail_b.1247 :
	j	tail_b.1248
preloop_b.36 :
	lw	%r0 %r10 536
	mov	%r5 %r11
shadow_check_one_or_matrix_loop.4 :
	slli	%r11 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r9 0
	mov	%r9 %r1
	lw	%r1 %r2 0
	addi	%r0 %r1 -1
	beq	%r2 %r1 tail_b.1164
branching_b.734 :
	addi	%r0 %r1 99
	beq	%r2 %r1 tail_b.1165
branching_b.735 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r12 0
	lw.s	%r0 %f1 552
	lw	%r12 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f1 556
	lw	%r12 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw.s	%r0 %f1 560
	lw	%r12 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	sub.s	%f3 %f1 %f8
	slli	%r2 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r4 0
	lw	%r12 %r2 4
	addi	%r0 %r1 1
	beq	%r2 %r1 branching_b.736
branching_b.763 :
	addi	%r0 %r1 2
	beq	%r2 %r1 branching_b.764
branching_b.766 :
	mov	%r4 %r1
	lw.s	%r1 %f10 0
	ilw.s	%r0 %f9 l.51
	fbne	%f10 %f9 tail_b.1217
tail_b.1216 :
	addi	%r0 %r1 1
	j	branching_b.767
tail_b.1217 :
	addi	%r0 %r1 0
	j	branching_b.767
branching_b.764 :
	mov	%r4 %r1
	lw.s	%r1 %f3 0
	ilw.s	%r0 %f1 l.51
	fbge	%f3 %f1 tail_b.1213
tail_b.1212 :
	addi	%r0 %r1 1
	j	branching_b.765
tail_b.1213 :
	addi	%r0 %r1 0
	j	branching_b.765
branching_b.736 :
	mov	%r4 %r1
	lw.s	%r1 %f1 0
	sub.s	%f5 %f1 %f1
	addi	%r4 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f1 %f9
	lw.s	%r0 %f1 740
	mul.s	%f1 %f9 %f1
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f7 l.51
	fbge	%f1 %f7 tail_b.1167
tail_b.1166 :
	neg.s	%f1 %f1
	j	branching_b.737
tail_b.1167 :
	j	branching_b.737
tail_b.1165 :
	addi	%r0 %r1 1
	j	branching_b.777
tail_b.1164 :
	addi	%r0 %r1 0
	j	postloop_b.35
tail_b.1163 :
	j	tail_b.1248
postloop_b.35 :
branching_b.779 :
	beq	%r1 %r5 branching_b.780
tail_b.1246 :
	j	tail_b.1248
branching_b.780 :
	lw	%r3 %r1 0
	lw.s	%r0 %f1 568
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f2 572
	addi	%r1 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	lw.s	%r8 %f3 8
	mul.s	%f6 %f3 %f1
	mul.s	%f0 %f1 %f5
	lw	%r3 %r2 0
	mov	%r6 %r1
	lw.s	%r1 %f0 0
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f2
	addi	%r6 %r1 4
	lw.s	%r1 %f0 0
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f1
	addi	%r6 %r1 8
	lw.s	%r1 %f0 0
	addi	%r2 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f1 l.51
	fbge	%f1 %f5 tail_b.1239
tail_b.1238 :
	addi	%r0 %r1 1
	j	branching_b.781
tail_b.1239 :
	addi	%r0 %r1 0
branching_b.781 :
	beq	%r1 %r5 tail_b.1240
tail_b.1241 :
	lw.s	%r0 %f2 604
	lw.s	%r0 %f0 580
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f2 608
	lw.s	%r0 %f0 584
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f2 612
	lw.s	%r0 %f0 588
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 612
	j	branching_b.782
tail_b.1240 :
branching_b.782 :
	fbge	%f1 %f3 tail_b.1243
tail_b.1242 :
	addi	%r0 %r1 1
	j	branching_b.783
tail_b.1243 :
	addi	%r0 %r1 0
branching_b.783 :
	beq	%r1 %r5 tail_b.1244
tail_b.1245 :
	mul.s	%f3 %f3 %f0
	mul.s	%f0 %f0 %f0
	mul.s	%f4 %f0 %f1
	lw.s	%r0 %f0 604
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
	j	tail_b.1248
tail_b.1244 :
	j	tail_b.1248
branching_b.777 :
	beq	%r1 %r5 tail_b.1235
branching_b.778 :
	addi	%r0 %r1 1
	sw	%r26 %r11 -36
	sw	%r26 %r10 -32
	sw.s	%r26 %f2 -28
	sw	%r26 %r3 -24
	sw	%r26 %r8 -20
	sw	%r26 %r5 -16
	sw	%r26 %r7 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f6 -4
	sw	%r26 %r6 0
	mov	%r9 %r2
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r11 -36
	lw	%r26 %r10 -32
	lw.s	%r26 %f2 -28
	lw	%r26 %r3 -24
	lw	%r26 %r8 -20
	lw	%r26 %r5 -16
	lw	%r26 %r7 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f6 -4
	lw	%r26 %r6 0
	beq	%r1 %r5 tail_b.1236
tail_b.1237 :
	addi	%r0 %r1 1
	j	postloop_b.35
tail_b.1236 :
	addi	%r11 %r1 1
	mov	%r1 %r11
	j	shadow_check_one_or_matrix_loop.4
tail_b.1235 :
	addi	%r11 %r1 1
	mov	%r1 %r11
	j	shadow_check_one_or_matrix_loop.4
branching_b.737 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	fbge	%f1 %f3 tail_b.1169
tail_b.1168 :
	addi	%r0 %r1 1
	j	branching_b.738
tail_b.1169 :
	addi	%r0 %r1 0
branching_b.738 :
	beq	%r1 %r5 tail_b.1170
branching_b.739 :
	lw.s	%r0 %f1 744
	mul.s	%f1 %f9 %f1
	add.s	%f8 %f1 %f1
	fbge	%f1 %f7 tail_b.1172
tail_b.1171 :
	neg.s	%f1 %f1
	j	branching_b.740
tail_b.1172 :
	j	branching_b.740
tail_b.1170 :
	addi	%r0 %r1 0
branching_b.744 :
	beq	%r1 %r5 branching_b.745
tail_b.1211 :
	sw.s	%r0 %f9 540
	addi	%r0 %r1 1
	j	branching_b.773
branching_b.745 :
	addi	%r4 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f1
	addi	%r4 %r1 12
	lw.s	%r1 %f3 0
	mul.s	%f3 %f1 %f3
	lw.s	%r0 %f1 736
	mul.s	%f1 %f3 %f1
	add.s	%f5 %f1 %f1
	fbge	%f1 %f7 tail_b.1181
tail_b.1180 :
	neg.s	%f1 %f9
	j	branching_b.746
tail_b.1181 :
	mov.s	%f1 %f9
branching_b.746 :
	lw	%r12 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f9 %f1 tail_b.1183
tail_b.1182 :
	addi	%r0 %r1 1
	j	branching_b.747
tail_b.1183 :
	addi	%r0 %r1 0
branching_b.747 :
	beq	%r1 %r5 tail_b.1184
branching_b.748 :
	lw.s	%r0 %f1 744
	mul.s	%f1 %f3 %f1
	add.s	%f8 %f1 %f1
	fbge	%f1 %f7 tail_b.1186
tail_b.1185 :
	neg.s	%f1 %f1
	j	branching_b.749
tail_b.1186 :
	j	branching_b.749
tail_b.1184 :
	addi	%r0 %r1 0
branching_b.753 :
	beq	%r1 %r5 branching_b.754
tail_b.1210 :
	sw.s	%r0 %f3 540
	addi	%r0 %r1 2
	j	branching_b.773
branching_b.754 :
	addi	%r4 %r1 16
	lw.s	%r1 %f1 0
	sub.s	%f8 %f1 %f3
	addi	%r4 %r1 20
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f1
	lw.s	%r0 %f3 736
	mul.s	%f3 %f1 %f3
	add.s	%f5 %f3 %f3
	fbge	%f3 %f7 tail_b.1195
tail_b.1194 :
	neg.s	%f3 %f5
	j	branching_b.755
tail_b.1195 :
	mov.s	%f3 %f5
branching_b.755 :
	lw	%r12 %r1 16
	lw.s	%r1 %f3 0
	fbge	%f5 %f3 tail_b.1197
tail_b.1196 :
	addi	%r0 %r1 1
	j	branching_b.756
tail_b.1197 :
	addi	%r0 %r1 0
branching_b.756 :
	beq	%r1 %r5 tail_b.1198
branching_b.757 :
	lw.s	%r0 %f3 740
	mul.s	%f3 %f1 %f3
	add.s	%f0 %f3 %f0
	fbge	%f0 %f7 tail_b.1200
tail_b.1199 :
	neg.s	%f0 %f0
	j	branching_b.758
tail_b.1200 :
	j	branching_b.758
tail_b.1198 :
	addi	%r0 %r1 0
branching_b.762 :
	beq	%r1 %r5 tail_b.1208
tail_b.1209 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 3
	j	branching_b.773
tail_b.1208 :
	addi	%r0 %r1 0
	j	branching_b.773
branching_b.758 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	fbge	%f0 %f3 tail_b.1202
tail_b.1201 :
	addi	%r0 %r1 1
	j	branching_b.759
tail_b.1202 :
	addi	%r0 %r1 0
branching_b.759 :
	beq	%r1 %r5 tail_b.1203
branching_b.760 :
	addi	%r4 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f7 tail_b.1205
tail_b.1204 :
	addi	%r0 %r1 1
	j	branching_b.761
tail_b.1205 :
	addi	%r0 %r1 0
	j	branching_b.761
tail_b.1203 :
	addi	%r0 %r1 0
	j	branching_b.762
branching_b.761 :
	beq	%r1 %r5 tail_b.1206
tail_b.1207 :
	addi	%r0 %r1 0
	j	branching_b.762
tail_b.1206 :
	addi	%r0 %r1 1
	j	branching_b.762
branching_b.749 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f9 0
	fbge	%f1 %f9 tail_b.1188
tail_b.1187 :
	addi	%r0 %r1 1
	j	branching_b.750
tail_b.1188 :
	addi	%r0 %r1 0
branching_b.750 :
	beq	%r1 %r5 tail_b.1189
branching_b.751 :
	addi	%r4 %r1 12
	lw.s	%r1 %f1 0
	fbne	%f1 %f7 tail_b.1191
tail_b.1190 :
	addi	%r0 %r1 1
	j	branching_b.752
tail_b.1191 :
	addi	%r0 %r1 0
	j	branching_b.752
tail_b.1189 :
	addi	%r0 %r1 0
	j	branching_b.753
branching_b.752 :
	beq	%r1 %r5 tail_b.1192
tail_b.1193 :
	addi	%r0 %r1 0
	j	branching_b.753
tail_b.1192 :
	addi	%r0 %r1 1
	j	branching_b.753
branching_b.773 :
	bne	%r1 %r5 branching_b.774
tail_b.1234 :
	addi	%r0 %r1 0
	j	branching_b.777
branching_b.774 :
	lw.s	%r0 %f0 540
	fbge	%f0 %f2 tail_b.1230
tail_b.1229 :
	addi	%r0 %r1 1
	j	branching_b.775
tail_b.1230 :
	addi	%r0 %r1 0
branching_b.775 :
	beq	%r1 %r5 tail_b.1231
branching_b.776 :
	addi	%r0 %r1 1
	sw	%r26 %r9 -40
	sw	%r26 %r11 -36
	sw	%r26 %r10 -32
	sw.s	%r26 %f2 -28
	sw	%r26 %r3 -24
	sw	%r26 %r8 -20
	sw	%r26 %r5 -16
	sw	%r26 %r7 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f6 -4
	sw	%r26 %r6 0
	mov	%r9 %r2
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	lw	%r26 %r9 -40
	lw	%r26 %r11 -36
	lw	%r26 %r10 -32
	lw.s	%r26 %f2 -28
	lw	%r26 %r3 -24
	lw	%r26 %r8 -20
	lw	%r26 %r5 -16
	lw	%r26 %r7 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f6 -4
	lw	%r26 %r6 0
	beq	%r1 %r5 tail_b.1232
tail_b.1233 :
	addi	%r0 %r1 1
	j	branching_b.777
tail_b.1232 :
	addi	%r0 %r1 0
	j	branching_b.777
tail_b.1231 :
	addi	%r0 %r1 0
	j	branching_b.777
branching_b.740 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	fbge	%f1 %f3 tail_b.1174
tail_b.1173 :
	addi	%r0 %r1 1
	j	branching_b.741
tail_b.1174 :
	addi	%r0 %r1 0
branching_b.741 :
	beq	%r1 %r5 tail_b.1175
branching_b.742 :
	addi	%r4 %r1 4
	lw.s	%r1 %f1 0
	fbne	%f1 %f7 tail_b.1177
tail_b.1176 :
	addi	%r0 %r1 1
	j	branching_b.743
tail_b.1177 :
	addi	%r0 %r1 0
	j	branching_b.743
tail_b.1175 :
	addi	%r0 %r1 0
	j	branching_b.744
branching_b.743 :
	beq	%r1 %r5 tail_b.1178
tail_b.1179 :
	addi	%r0 %r1 0
	j	branching_b.744
tail_b.1178 :
	addi	%r0 %r1 1
	j	branching_b.744
branching_b.765 :
	beq	%r1 %r5 tail_b.1214
tail_b.1215 :
	addi	%r4 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f5 %f1 %f1
	addi	%r4 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f1
	addi	%r4 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.773
tail_b.1214 :
	addi	%r0 %r1 0
	j	branching_b.773
branching_b.767 :
	beq	%r1 %r5 branching_b.768
tail_b.1228 :
	addi	%r0 %r1 0
	j	branching_b.773
branching_b.768 :
	addi	%r4 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f5 %f1 %f3
	addi	%r4 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r4 %r1 12
	lw.s	%r1 %f3 0
	mul.s	%f8 %f3 %f3
	add.s	%f3 %f1 %f1
	mul.s	%f5 %f5 %f7
	lw	%r12 %r1 16
	lw.s	%r1 %f3 0
	mul.s	%f3 %f7 %f3
	mul.s	%f0 %f0 %f11
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f11 %f7
	add.s	%f7 %f3 %f3
	mul.s	%f8 %f8 %f7
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f11 0
	mul.s	%f11 %f7 %f7
	add.s	%f7 %f3 %f3
	lw	%r12 %r1 12
	beq	%r1 %r5 tail_b.1218
tail_b.1219 :
	mul.s	%f8 %f0 %f11
	lw	%r12 %r1 36
	lw.s	%r1 %f7 0
	mul.s	%f7 %f11 %f7
	add.s	%f7 %f3 %f11
	mul.s	%f5 %f8 %f7
	lw	%r12 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f7 %f3
	add.s	%f3 %f11 %f3
	mul.s	%f0 %f5 %f0
	lw	%r12 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f3
	j	branching_b.769
tail_b.1218 :
branching_b.769 :
	lw	%r12 %r2 4
	addi	%r0 %r1 3
	beq	%r2 %r1 tail_b.1220
tail_b.1221 :
	mov.s	%f3 %f0
	j	branching_b.770
tail_b.1220 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f3 %f0
branching_b.770 :
	mul.s	%f1 %f1 %f3
	mul.s	%f0 %f10 %f0
	sub.s	%f0 %f3 %f0
	fbge	%f9 %f0 tail_b.1223
tail_b.1222 :
	addi	%r0 %r1 1
	j	branching_b.771
tail_b.1223 :
	addi	%r0 %r1 0
branching_b.771 :
	beq	%r1 %r5 tail_b.1224
branching_b.772 :
	lw	%r12 %r1 24
	beq	%r1 %r5 tail_b.1225
tail_b.1226 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r4 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1227
tail_b.1225 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f1 %f1
	addi	%r4 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1227
tail_b.1224 :
	addi	%r0 %r1 0
	j	branching_b.773
tail_b.1227 :
	addi	%r0 %r1 1
	j	branching_b.773
tail_b.1248 :
	addi	%r7 %r1 -1
	mov	%r1 %r7
	j	trace_reflections_loop.0
tail_b.1157 :
	addi	%r10 %r1 1
	mov	%r1 %r10
	j	trace_or_matrix_fast_loop.3
branching_b.691 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1096
tail_b.1095 :
	addi	%r0 %r1 1
	j	branching_b.692
tail_b.1096 :
	addi	%r0 %r1 0
branching_b.692 :
	beq	%r1 %r5 tail_b.1097
branching_b.693 :
	addi	%r4 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f8 %f0 %f0
	fbge	%f0 %f3 tail_b.1099
tail_b.1098 :
	neg.s	%f0 %f1
	j	branching_b.694
tail_b.1099 :
	mov.s	%f0 %f1
	j	branching_b.694
tail_b.1097 :
	addi	%r0 %r1 0
branching_b.698 :
	beq	%r1 %r5 branching_b.699
tail_b.1138 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 1
	j	branching_b.725
branching_b.699 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f7 %f0 %f1
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mov	%r4 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.1108
tail_b.1107 :
	neg.s	%f0 %f0
	j	branching_b.700
tail_b.1108 :
branching_b.700 :
	lw	%r12 %r1 16
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.1110
tail_b.1109 :
	addi	%r0 %r1 1
	j	branching_b.701
tail_b.1110 :
	addi	%r0 %r1 0
branching_b.701 :
	beq	%r1 %r5 tail_b.1111
branching_b.702 :
	addi	%r4 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f8 %f0 %f0
	fbge	%f0 %f3 tail_b.1113
tail_b.1112 :
	neg.s	%f0 %f0
	j	branching_b.703
tail_b.1113 :
	j	branching_b.703
tail_b.1111 :
	addi	%r0 %r1 0
branching_b.707 :
	beq	%r1 %r5 branching_b.708
tail_b.1137 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 2
	j	branching_b.725
branching_b.708 :
	addi	%r2 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f8 %f0 %f0
	addi	%r2 %r1 20
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	mov	%r4 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.1122
tail_b.1121 :
	neg.s	%f0 %f0
	j	branching_b.709
tail_b.1122 :
branching_b.709 :
	lw	%r12 %r1 16
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.1124
tail_b.1123 :
	addi	%r0 %r1 1
	j	branching_b.710
tail_b.1124 :
	addi	%r0 %r1 0
branching_b.710 :
	beq	%r1 %r5 tail_b.1125
branching_b.711 :
	addi	%r4 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f3 tail_b.1127
tail_b.1126 :
	neg.s	%f0 %f2
	j	branching_b.712
tail_b.1127 :
	mov.s	%f0 %f2
	j	branching_b.712
tail_b.1125 :
	addi	%r0 %r1 0
branching_b.716 :
	beq	%r1 %r5 tail_b.1135
tail_b.1136 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 3
	j	branching_b.725
tail_b.1135 :
	addi	%r0 %r1 0
	j	branching_b.725
branching_b.712 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.1129
tail_b.1128 :
	addi	%r0 %r1 1
	j	branching_b.713
tail_b.1129 :
	addi	%r0 %r1 0
branching_b.713 :
	beq	%r1 %r5 tail_b.1130
branching_b.714 :
	addi	%r2 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1132
tail_b.1131 :
	addi	%r0 %r1 1
	j	branching_b.715
tail_b.1132 :
	addi	%r0 %r1 0
	j	branching_b.715
tail_b.1130 :
	addi	%r0 %r1 0
	j	branching_b.716
branching_b.715 :
	beq	%r1 %r5 tail_b.1133
tail_b.1134 :
	addi	%r0 %r1 0
	j	branching_b.716
tail_b.1133 :
	addi	%r0 %r1 1
	j	branching_b.716
branching_b.703 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.1115
tail_b.1114 :
	addi	%r0 %r1 1
	j	branching_b.704
tail_b.1115 :
	addi	%r0 %r1 0
branching_b.704 :
	beq	%r1 %r5 tail_b.1116
branching_b.705 :
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1118
tail_b.1117 :
	addi	%r0 %r1 1
	j	branching_b.706
tail_b.1118 :
	addi	%r0 %r1 0
	j	branching_b.706
tail_b.1116 :
	addi	%r0 %r1 0
	j	branching_b.707
branching_b.706 :
	beq	%r1 %r5 tail_b.1119
tail_b.1120 :
	addi	%r0 %r1 0
	j	branching_b.707
tail_b.1119 :
	addi	%r0 %r1 1
	j	branching_b.707
branching_b.725 :
	bne	%r1 %r5 branching_b.726
tail_b.1156 :
	j	tail_b.1157
branching_b.726 :
	lw.s	%r0 %f1 540
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.1153
tail_b.1152 :
	addi	%r0 %r1 1
	j	branching_b.727
tail_b.1153 :
	addi	%r0 %r1 0
branching_b.727 :
	beq	%r1 %r5 tail_b.1154
tail_b.1155 :
	addi	%r0 %r1 1
	sw	%r26 %r10 -32
	sw	%r26 %r9 -28
	sw	%r26 %r3 -24
	sw	%r26 %r8 -20
	sw	%r26 %r5 -16
	sw	%r26 %r7 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f6 -4
	sw	%r26 %r6 0
	mov	%r11 %r2
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r10 -32
	lw	%r26 %r9 -28
	lw	%r26 %r3 -24
	lw	%r26 %r8 -20
	lw	%r26 %r5 -16
	lw	%r26 %r7 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f6 -4
	lw	%r26 %r6 0
	j	tail_b.1157
tail_b.1154 :
	j	tail_b.1157
branching_b.694 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1101
tail_b.1100 :
	addi	%r0 %r1 1
	j	branching_b.695
tail_b.1101 :
	addi	%r0 %r1 0
branching_b.695 :
	beq	%r1 %r5 tail_b.1102
branching_b.696 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1104
tail_b.1103 :
	addi	%r0 %r1 1
	j	branching_b.697
tail_b.1104 :
	addi	%r0 %r1 0
	j	branching_b.697
tail_b.1102 :
	addi	%r0 %r1 0
	j	branching_b.698
branching_b.697 :
	beq	%r1 %r5 tail_b.1105
tail_b.1106 :
	addi	%r0 %r1 0
	j	branching_b.698
tail_b.1105 :
	addi	%r0 %r1 1
	j	branching_b.698
branching_b.719 :
	beq	%r1 %r5 tail_b.1141
tail_b.1142 :
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	addi	%r4 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.725
tail_b.1141 :
	addi	%r0 %r1 0
	j	branching_b.725
branching_b.721 :
	beq	%r1 %r5 branching_b.722
tail_b.1151 :
	addi	%r0 %r1 0
	j	branching_b.725
branching_b.722 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f1
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r2 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r4 %r1 12
	lw.s	%r1 %f5 0
	mul.s	%f1 %f1 %f0
	mul.s	%f5 %f3 %f3
	sub.s	%f3 %f0 %f0
	fbge	%f2 %f0 tail_b.1146
tail_b.1145 :
	addi	%r0 %r1 1
	j	branching_b.723
tail_b.1146 :
	addi	%r0 %r1 0
branching_b.723 :
	beq	%r1 %r5 tail_b.1147
branching_b.724 :
	lw	%r12 %r1 24
	beq	%r1 %r5 tail_b.1148
tail_b.1149 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r2 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1150
tail_b.1148 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f1 %f1
	addi	%r2 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1150
tail_b.1147 :
	addi	%r0 %r1 0
	j	branching_b.725
tail_b.1150 :
	addi	%r0 %r1 1
	j	branching_b.725
postloop_b.36 :
return_point.18 :
	retl
trace_ray.0 :
	mov	%r3 %r4
	mov	%r2 %r3
preloop_b.37 :
	mov	%r1 %r6
	mov.s	%f0 %f2
	mov.s	%f1 %f3
trace_ray_loop.0 :
	addi	%r0 %r8 4
	ble	%r6 %r8 preloop_b.38
tail_b.1559 :
	j	postloop_b.43
preloop_b.38 :
	lw	%r4 %r5 8
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r7 0
	lw	%r0 %r2 536
	mov	%r7 %r9
trace_or_matrix_loop.1 :
	slli	%r9 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r10 0
	mov	%r10 %r1
	lw	%r1 %r11 0
	addi	%r0 %r1 -1
	beq	%r11 %r1 tail_b.1250
branching_b.786 :
	addi	%r0 %r1 99
	beq	%r11 %r1 tail_b.1251
branching_b.787 :
	slli	%r11 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r12 0
	lw.s	%r0 %f0 636
	lw	%r12 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f7
	lw.s	%r0 %f1 640
	lw	%r12 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f6
	lw.s	%r0 %f1 644
	lw	%r12 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	lw	%r12 %r11 4
	addi	%r0 %r1 1
	beq	%r11 %r1 branching_b.788
branching_b.827 :
	addi	%r0 %r1 2
	beq	%r11 %r1 branching_b.828
branching_b.830 :
	mov	%r3 %r1
	lw.s	%r1 %f10 0
	addi	%r3 %r1 4
	lw.s	%r1 %f9 0
	addi	%r3 %r1 8
	lw.s	%r1 %f8 0
	mul.s	%f10 %f10 %f0
	lw	%r12 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f9 %f1
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f4
	mul.s	%f8 %f8 %f1
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	lw	%r12 %r1 12
	beq	%r1 %r7 tail_b.1323
tail_b.1324 :
	mul.s	%f8 %f9 %f4
	lw	%r12 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f10 %f8 %f4
	lw	%r12 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f4
	mul.s	%f9 %f10 %f1
	lw	%r12 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f4
	j	branching_b.831
tail_b.1323 :
	mov.s	%f0 %f4
	j	branching_b.831
branching_b.828 :
	lw	%r12 %r11 16
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mov	%r11 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f4
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	addi	%r11 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r3 %r1 8
	lw.s	%r1 %f4 0
	addi	%r11 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.51
	fbge	%f1 %f0 tail_b.1320
tail_b.1319 :
	addi	%r0 %r1 1
	j	branching_b.829
tail_b.1320 :
	addi	%r0 %r1 0
	j	branching_b.829
branching_b.788 :
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f4 l.51
	fbne	%f0 %f4 tail_b.1253
tail_b.1252 :
	addi	%r0 %r1 1
	j	branching_b.789
tail_b.1253 :
	addi	%r0 %r1 0
	j	branching_b.789
tail_b.1251 :
	addi	%r0 %r1 1
	sw	%r26 %r9 -36
	sw	%r26 %r2 -32
	sw	%r26 %r7 -28
	sw	%r26 %r5 -24
	sw	%r26 %r8 -20
	sw.s	%r26 %f3 -16
	sw.s	%r26 %f2 -12
	sw	%r26 %r6 -8
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	mov	%r10 %r2
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	solve_one_or_network.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r9 -36
	lw	%r26 %r2 -32
	lw	%r26 %r7 -28
	lw	%r26 %r5 -24
	lw	%r26 %r8 -20
	lw.s	%r26 %f3 -16
	lw.s	%r26 %f2 -12
	lw	%r26 %r6 -8
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	j	tail_b.1345
tail_b.1250 :
postloop_b.37 :
branching_b.842 :
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f4 l.70
	fbge	%f4 %f1 tail_b.1347
tail_b.1346 :
	addi	%r0 %r1 1
	j	branching_b.843
tail_b.1347 :
	addi	%r0 %r1 0
branching_b.843 :
	beq	%r1 %r7 tail_b.1348
branching_b.844 :
	ilw.s	%r0 %f0 l.71
	fbge	%f1 %f0 tail_b.1350
tail_b.1349 :
	addi	%r0 %r1 1
	j	branching_b.845
tail_b.1350 :
	addi	%r0 %r1 0
	j	branching_b.845
tail_b.1348 :
	addi	%r0 %r1 0
branching_b.845 :
	beq	%r1 %r7 branching_b.846
branching_b.849 :
	lw	%r0 %r2 564
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r10 0
	lw	%r10 %r9 8
	lw	%r10 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f5
	lw	%r10 %r1 4
	addi	%r0 %r11 1
	beq	%r1 %r11 branching_b.850
branching_b.854 :
	addi	%r0 %r12 2
	beq	%r1 %r12 tail_b.1364
branching_b.855 :
	lw.s	%r0 %f0 552
	lw	%r10 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f11
	lw.s	%r0 %f0 556
	lw	%r10 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f10
	lw.s	%r0 %f0 560
	lw	%r10 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f6
	lw	%r10 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f11 %f0
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f10 %f8
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f7
	lw	%r10 %r1 12
	beq	%r1 %r7 tail_b.1365
tail_b.1366 :
	lw	%r10 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f10 %f9
	lw	%r10 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f9 %f9
	ilw.s	%r0 %f1 l.67
	div.s	%f1 %f9 %f9
	add.s	%f9 %f0 %f0
	sw.s	%r0 %f0 568
	lw	%r10 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f11 %f9
	lw	%r10 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f9 %f0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	sw.s	%r0 %f0 572
	lw	%r10 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f11 %f0
	lw	%r10 %r1 36
	lw.s	%r1 %f6 0
	mul.s	%f6 %f10 %f6
	add.s	%f6 %f0 %f0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 576
	j	branching_b.856
tail_b.1365 :
	sw.s	%r0 %f0 568
	sw.s	%r0 %f8 572
	sw.s	%r0 %f7 576
	j	branching_b.856
tail_b.1364 :
	lw	%r10 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.859
branching_b.850 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r12 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r3 %r1 %r1
	lw.s	%r1 %f1 0
	fbne	%f1 %f0 tail_b.1357
tail_b.1356 :
	addi	%r0 %r1 1
	j	branching_b.851
tail_b.1357 :
	addi	%r0 %r1 0
	j	branching_b.851
branching_b.846 :
	addi	%r0 %r2 -1
	slli	%r6 %r1 2
	add	%r5 %r1 %r1
	sw	%r1 %r2 0
	bne	%r6 %r7 branching_b.847
tail_b.1355 :
	j	postloop_b.43
branching_b.847 :
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f0
	addi	%r3 %r1 4
	lw.s	%r1 %f1 0
	lw.s	%r0 %f3 316
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r3 %r1 8
	lw.s	%r1 %f3 0
	lw.s	%r0 %f1 320
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.51
	fbge	%f1 %f0 tail_b.1352
tail_b.1351 :
	addi	%r0 %r1 1
	j	branching_b.848
tail_b.1352 :
	addi	%r0 %r1 0
branching_b.848 :
	beq	%r1 %r7 tail_b.1353
tail_b.1354 :
	mul.s	%f0 %f0 %f1
	mul.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f1
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
	j	postloop_b.43
tail_b.1353 :
	j	postloop_b.43
branching_b.851 :
	beq	%r1 %r7 branching_b.852
tail_b.1362 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1363
branching_b.852 :
	fbge	%f0 %f1 tail_b.1359
tail_b.1358 :
	addi	%r0 %r1 1
	j	branching_b.853
tail_b.1359 :
	addi	%r0 %r1 0
branching_b.853 :
	beq	%r1 %r7 tail_b.1360
tail_b.1361 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.1363
tail_b.1360 :
	ilw.s	%r0 %f0 l.58
tail_b.1363 :
	neg.s	%f0 %f0
	slli	%r12 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.859 :
	lw.s	%r0 %f0 552
	sw.s	%r0 %f0 636
	lw.s	%r0 %f0 556
	sw.s	%r0 %f0 640
	lw.s	%r0 %f0 560
	sw.s	%r0 %f0 644
	lw	%r10 %r12 0
	lw	%r10 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r10 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r10 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r12 %r11 branching_b.860
branching_b.865 :
	addi	%r0 %r1 2
	beq	%r12 %r1 preloop_b.39
branching_b.875 :
	addi	%r0 %r1 3
	beq	%r12 %r1 preloop_b.40
branching_b.885 :
	beq	%r12 %r8 branching_b.886
tail_b.1437 :
	j	branching_b.906
branching_b.886 :
	lw.s	%r0 %f0 552
	lw	%r10 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r10 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f9
	lw.s	%r0 %f0 560
	lw	%r10 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	mul.s	%f9 %f9 %f1
	mul.s	%f0 %f0 %f6
	add.s	%f6 %f1 %f6
	ilw.s	%r0 %f8 l.51
	fbge	%f9 %f8 tail_b.1405
tail_b.1404 :
	neg.s	%f9 %f1
	j	branching_b.887
tail_b.1405 :
	mov.s	%f9 %f1
	j	branching_b.887
preloop_b.40 :
	lw.s	%r0 %f1 552
	lw	%r10 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw.s	%r0 %f1 560
	lw	%r10 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	sub.s	%f6 %f1 %f6
	mul.s	%f0 %f0 %f1
	mul.s	%f6 %f6 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.74
	div.s	%f0 %f1 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.76
	mul.s	%f1 %f0 %f0
	mov.s	%f0 %f6
cos_loop.9 :
	ilw.s	%r0 %f8 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f6 branching_b.877
tail_b.1393 :
	sub.s	%f0 %f6 %f0
	mov.s	%f0 %f6
	j	cos_loop.9
branching_b.877 :
	ilw.s	%r0 %f1 l.51
	fbge	%f6 %f1 branching_b.878
tail_b.1394 :
	add.s	%f0 %f6 %f0
	mov.s	%f0 %f6
	j	cos_loop.9
branching_b.878 :
	fbg	%f8 %f6 branching_b.882
branching_b.879 :
	sub.s	%f8 %f6 %f1
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f6 l.57
	fbg	%f6 %f1 branching_b.881
branching_b.880 :
	sub.s	%f1 %f8 %f0
	ilw.s	%r0 %f1 l.56
	ilw.s	%r0 %f7 l.59
	fbg	%f0 %f7 tail_b.1396
tail_b.1395 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f7 l.61
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.39
tail_b.1396 :
	sub.s	%f0 %f6 %f7
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f7 %f1 %f6
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.39
branching_b.881 :
	ilw.s	%r0 %f0 l.59
	fbg	%f1 %f0 tail_b.1398
tail_b.1397 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.39
tail_b.1398 :
	sub.s	%f1 %f6 %f9
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f8
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f6 l.65
	mul.s	%f9 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.56
	mul.s	%f9 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.39
branching_b.882 :
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f9 l.57
	fbg	%f9 %f6 branching_b.884
branching_b.883 :
	sub.s	%f6 %f8 %f1
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f0 l.59
	fbg	%f1 %f0 tail_b.1400
tail_b.1399 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f6 l.61
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f1
	ilw.s	%r0 %f6 l.62
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.39
tail_b.1400 :
	sub.s	%f1 %f9 %f9
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f9 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f9 %f7 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.39
branching_b.884 :
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.1402
tail_b.1401 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f6 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f1 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.39
tail_b.1402 :
	sub.s	%f6 %f9 %f9
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f6
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.65
	mul.s	%f9 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f9 %f7 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.39
preloop_b.39 :
	lw.s	%r0 %f1 556
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f1 %f0
sin_loop.9 :
	ilw.s	%r0 %f9 l.54
	ilw.s	%r0 %f6 l.55
	fbg	%f6 %f0 branching_b.867
tail_b.1382 :
	sub.s	%f6 %f0 %f0
	j	sin_loop.9
branching_b.867 :
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 branching_b.868
tail_b.1383 :
	add.s	%f6 %f0 %f0
	j	sin_loop.9
branching_b.868 :
	fbg	%f9 %f0 branching_b.872
branching_b.869 :
	sub.s	%f9 %f0 %f6
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f7 l.57
	fbg	%f7 %f6 branching_b.871
branching_b.870 :
	sub.s	%f6 %f9 %f0
	ilw.s	%r0 %f6 l.59
	fbg	%f0 %f6 tail_b.1385
tail_b.1384 :
	mul.s	%f0 %f0 %f6
	neg.s	%f6 %f7
	ilw.s	%r0 %f6 l.63
	mul.s	%f0 %f6 %f8
	ilw.s	%r0 %f6 l.64
	mul.s	%f0 %f6 %f9
	mul.s	%f7 %f8 %f6
	add.s	%f6 %f9 %f6
	ilw.s	%r0 %f8 l.65
	mul.s	%f0 %f8 %f8
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f8 %f8
	ilw.s	%r0 %f6 l.56
	mul.s	%f0 %f6 %f6
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.38
tail_b.1385 :
	sub.s	%f0 %f7 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f6 l.61
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.62
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.56
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.38
branching_b.871 :
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.1387
tail_b.1386 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f7 l.64
	mul.s	%f6 %f7 %f7
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f8
	mul.s	%f9 %f7 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f7 l.56
	mul.s	%f6 %f7 %f6
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.38
tail_b.1387 :
	sub.s	%f6 %f7 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f6 l.60
	ilw.s	%r0 %f7 l.61
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.62
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f7 %f7
	ilw.s	%r0 %f6 l.56
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.38
branching_b.872 :
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f8 l.57
	fbg	%f8 %f0 branching_b.874
branching_b.873 :
	sub.s	%f0 %f9 %f6
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.1389
tail_b.1388 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f9
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f9 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f9
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f9 %f1
	mul.s	%f6 %f7 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.38
tail_b.1389 :
	sub.s	%f6 %f8 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.38
branching_b.874 :
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.1391
tail_b.1390 :
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f9
	ilw.s	%r0 %f1 l.63
	mul.s	%f0 %f1 %f6
	ilw.s	%r0 %f1 l.64
	mul.s	%f0 %f1 %f1
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f1 %f6
	ilw.s	%r0 %f1 l.65
	mul.s	%f0 %f1 %f8
	mul.s	%f9 %f6 %f1
	add.s	%f1 %f8 %f1
	mul.s	%f0 %f7 %f6
	mul.s	%f9 %f1 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.38
tail_b.1391 :
	sub.s	%f0 %f8 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f6 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f1 %f1
	ilw.s	%r0 %f6 l.62
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.38
branching_b.860 :
	lw.s	%r0 %f1 552
	lw	%r10 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f6
	ilw.s	%r0 %f7 l.72
	mul.s	%f7 %f6 %f0
	floor.w.s	%f0 %f1
	ilw.s	%r0 %f0 l.73
	mul.s	%f0 %f1 %f1
	sub.s	%f1 %f6 %f1
	ilw.s	%r0 %f6 l.74
	fbge	%f1 %f6 tail_b.1374
tail_b.1373 :
	addi	%r0 %r12 1
	j	branching_b.861
tail_b.1374 :
	addi	%r0 %r12 0
branching_b.861 :
	lw.s	%r0 %f8 560
	lw	%r10 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f8 %f8
	mul.s	%f7 %f8 %f1
	floor.w.s	%f1 %f1
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f8 %f0
	fbge	%f0 %f6 tail_b.1376
tail_b.1375 :
	addi	%r0 %r1 1
	j	branching_b.862
tail_b.1376 :
	addi	%r0 %r1 0
branching_b.862 :
	beq	%r12 %r7 branching_b.863
branching_b.864 :
	beq	%r1 %r7 tail_b.1379
tail_b.1380 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.1381
tail_b.1379 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1381
branching_b.863 :
	beq	%r1 %r7 tail_b.1377
tail_b.1378 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1381
tail_b.1377 :
	ilw.s	%r0 %f0 l.52
tail_b.1381 :
	sw.s	%r0 %f0 584
	j	branching_b.906
postloop_b.38 :
tail_b.1392 :
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f0 l.52
	mul.s	%f1 %f0 %f6
	sw.s	%r0 %f6 580
	ilw.s	%r0 %f6 l.56
	sub.s	%f1 %f6 %f1
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 584
	j	branching_b.906
postloop_b.39 :
tail_b.1403 :
	mul.s	%f0 %f0 %f6
	ilw.s	%r0 %f1 l.52
	mul.s	%f1 %f6 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f6 %f0 %f0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.906
branching_b.887 :
	ilw.s	%r0 %f7 l.77
	fbge	%f1 %f7 tail_b.1407
tail_b.1406 :
	addi	%r0 %r1 1
	j	branching_b.888
tail_b.1407 :
	addi	%r0 %r1 0
branching_b.888 :
	beq	%r1 %r7 branching_b.889
tail_b.1417 :
	ilw.s	%r0 %f1 l.79
	j	branching_b.895
branching_b.889 :
	div.s	%f9 %f0 %f0
	fbge	%f0 %f8 tail_b.1409
tail_b.1408 :
	neg.s	%f0 %f11
	j	branching_b.890
tail_b.1409 :
	mov.s	%f0 %f11
branching_b.890 :
	fbg	%f8 %f11 branching_b.893
branching_b.891 :
	ilw.s	%r0 %f0 l.81
	fbge	%f11 %f0 branching_b.892
tail_b.1410 :
	ilw.s	%r0 %f12 l.56
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f11 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f10
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f1
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f11 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f10
	ilw.s	%r0 %f0 l.88
	mul.s	%f11 %f0 %f1
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f12 %f0 %f1
	j	tail_b.1416
branching_b.892 :
	ilw.s	%r0 %f0 l.82
	fbge	%f11 %f0 tail_b.1412
tail_b.1411 :
	ilw.s	%r0 %f9 l.56
	sub.s	%f9 %f11 %f0
	add.s	%f9 %f11 %f1
	div.s	%f1 %f0 %f1
	ilw.s	%r0 %f12 l.59
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f11 %f10 %f10
	add.s	%f10 %f0 %f13
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f10
	mul.s	%f11 %f13 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f10 l.86
	mul.s	%f1 %f10 %f10
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f11 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.88
	mul.s	%f1 %f0 %f0
	mul.s	%f11 %f10 %f10
	add.s	%f10 %f0 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.1416
tail_b.1412 :
	ilw.s	%r0 %f0 l.56
	div.s	%f11 %f0 %f10
	ilw.s	%r0 %f13 l.58
	ilw.s	%r0 %f0 l.90
	neg.s	%f10 %f1
	mul.s	%f10 %f1 %f12
	ilw.s	%r0 %f1 l.83
	mul.s	%f10 %f1 %f9
	ilw.s	%r0 %f1 l.84
	mul.s	%f10 %f1 %f1
	mul.s	%f12 %f9 %f9
	add.s	%f9 %f1 %f1
	ilw.s	%r0 %f9 l.85
	mul.s	%f10 %f9 %f9
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f9 %f1
	ilw.s	%r0 %f9 l.86
	mul.s	%f10 %f9 %f9
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f9 %f9
	ilw.s	%r0 %f1 l.87
	mul.s	%f10 %f1 %f1
	mul.s	%f12 %f9 %f9
	add.s	%f9 %f1 %f11
	ilw.s	%r0 %f1 l.88
	mul.s	%f10 %f1 %f9
	mul.s	%f12 %f11 %f1
	add.s	%f1 %f9 %f1
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f10 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f13 %f0 %f1
	j	tail_b.1416
branching_b.893 :
	neg.s	%f11 %f10
	ilw.s	%r0 %f0 l.81
	fbge	%f10 %f0 branching_b.894
tail_b.1413 :
	ilw.s	%r0 %f9 l.58
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f10 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f12
	mul.s	%f11 %f1 %f0
	add.s	%f0 %f12 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.1416
branching_b.894 :
	ilw.s	%r0 %f0 l.82
	fbge	%f10 %f0 tail_b.1415
tail_b.1414 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f10 %f1
	add.s	%f0 %f10 %f0
	div.s	%f0 %f1 %f11
	ilw.s	%r0 %f13 l.58
	ilw.s	%r0 %f1 l.59
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f9 l.84
	mul.s	%f11 %f9 %f9
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f9 l.85
	mul.s	%f11 %f9 %f9
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f11 %f0 %f0
	mul.s	%f10 %f9 %f9
	add.s	%f9 %f0 %f0
	ilw.s	%r0 %f9 l.87
	mul.s	%f11 %f9 %f9
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f12
	ilw.s	%r0 %f0 l.88
	mul.s	%f11 %f0 %f9
	mul.s	%f10 %f12 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f13 %f0 %f1
	j	tail_b.1416
tail_b.1415 :
	ilw.s	%r0 %f12 l.56
	div.s	%f10 %f12 %f13
	ilw.s	%r0 %f10 l.90
	neg.s	%f13 %f0
	mul.s	%f13 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f13 %f0 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f13 %f0 %f11
	mul.s	%f1 %f9 %f0
	add.s	%f0 %f11 %f0
	ilw.s	%r0 %f9 l.85
	mul.s	%f13 %f9 %f9
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f13 %f0 %f0
	mul.s	%f1 %f9 %f9
	add.s	%f9 %f0 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f13 %f0 %f11
	mul.s	%f1 %f9 %f0
	add.s	%f0 %f11 %f9
	ilw.s	%r0 %f0 l.88
	mul.s	%f13 %f0 %f0
	mul.s	%f1 %f9 %f9
	add.s	%f9 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f13 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f12 %f0 %f1
tail_b.1416 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.76
	div.s	%f1 %f0 %f1
branching_b.895 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f9
	lw.s	%r0 %f0 556
	lw	%r10 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	fbge	%f6 %f8 tail_b.1419
tail_b.1418 :
	neg.s	%f6 %f1
	j	branching_b.896
tail_b.1419 :
	mov.s	%f6 %f1
branching_b.896 :
	fbge	%f1 %f7 tail_b.1421
tail_b.1420 :
	addi	%r0 %r1 1
	j	branching_b.897
tail_b.1421 :
	addi	%r0 %r1 0
branching_b.897 :
	beq	%r1 %r7 branching_b.898
tail_b.1431 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.904
branching_b.898 :
	div.s	%f6 %f0 %f0
	fbge	%f0 %f8 tail_b.1423
tail_b.1422 :
	neg.s	%f0 %f7
	j	branching_b.899
tail_b.1423 :
	mov.s	%f0 %f7
branching_b.899 :
	fbg	%f8 %f7 branching_b.902
branching_b.900 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.901
tail_b.1424 :
	ilw.s	%r0 %f6 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f11
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f11 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f11
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.1430
branching_b.901 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.1426
tail_b.1425 :
	ilw.s	%r0 %f10 l.56
	sub.s	%f10 %f7 %f1
	add.s	%f10 %f7 %f0
	div.s	%f0 %f1 %f11
	ilw.s	%r0 %f6 l.59
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f11 %f7 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f11 %f7 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f11 %f7 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.87
	mul.s	%f11 %f7 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f10 %f0 %f0
	j	tail_b.1430
tail_b.1426 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f11
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f10 l.90
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f11 %f7 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.1430
branching_b.902 :
	neg.s	%f7 %f1
	ilw.s	%r0 %f0 l.81
	fbge	%f1 %f0 branching_b.903
tail_b.1427 :
	ilw.s	%r0 %f10 l.58
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f6
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f1 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.86
	mul.s	%f1 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.88
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f10 %f0 %f0
	j	tail_b.1430
branching_b.903 :
	ilw.s	%r0 %f0 l.82
	fbge	%f1 %f0 tail_b.1429
tail_b.1428 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f6
	add.s	%f0 %f1 %f0
	div.s	%f0 %f6 %f11
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f1 l.59
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f6 l.84
	mul.s	%f11 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f11 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f11 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.88
	mul.s	%f11 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f0
	j	tail_b.1430
tail_b.1429 :
	ilw.s	%r0 %f6 l.56
	div.s	%f1 %f6 %f7
	ilw.s	%r0 %f10 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f12
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f7 %f1 %f1
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f11
	mul.s	%f12 %f1 %f0
	add.s	%f0 %f11 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f7 %f1 %f1
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f7 %f1 %f1
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f6 %f0 %f0
tail_b.1430 :
	ilw.s	%r0 %f1 l.89
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.76
	div.s	%f1 %f0 %f0
branching_b.904 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f6
	ilw.s	%r0 %f1 l.91
	ilw.s	%r0 %f7 l.62
	sub.s	%f9 %f7 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	sub.s	%f6 %f7 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f8 tail_b.1433
tail_b.1432 :
	addi	%r0 %r1 1
	j	branching_b.905
tail_b.1433 :
	addi	%r0 %r1 0
branching_b.905 :
	beq	%r1 %r7 tail_b.1434
tail_b.1435 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1436
tail_b.1434 :
tail_b.1436 :
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.92
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.906 :
	mul	%r2 %r8 %r1
	lw	%r0 %r2 544
	add	%r1 %r2 %r2
	slli	%r6 %r1 2
	add	%r5 %r1 %r1
	sw	%r1 %r2 0
	lw	%r4 %r2 4
	slli	%r6 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f0 552
	mov	%r1 %r2
	sw.s	%r2 %f0 0
	lw.s	%r0 %f0 556
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	lw.s	%r0 %f0 560
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	lw	%r4 %r12 12
	lw	%r10 %r1 28
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.62
	fbge	%f1 %f0 tail_b.1439
tail_b.1438 :
	addi	%r0 %r1 1
	j	branching_b.907
tail_b.1439 :
	addi	%r0 %r1 0
branching_b.907 :
	beq	%r1 %r7 tail_b.1440
tail_b.1441 :
	addi	%r0 %r2 0
	slli	%r6 %r1 2
	add	%r12 %r1 %r1
	sw	%r1 %r2 0
	j	preloop_b.41
tail_b.1440 :
	addi	%r0 %r2 1
	slli	%r6 %r1 2
	add	%r12 %r1 %r1
	sw	%r1 %r2 0
	lw	%r4 %r12 16
	slli	%r6 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f0 580
	mov	%r1 %r2
	sw.s	%r2 %f0 0
	lw.s	%r0 %f0 584
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	lw.s	%r0 %f0 588
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	slli	%r6 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r2 0
	ilw.s	%r0 %f0 l.78
	mul.s	%f5 %f0 %f1
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	mov	%r2 %r1
	sw.s	%r1 %f0 0
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	lw	%r4 %r1 28
	slli	%r6 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f0 568
	mov	%r2 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 572
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 576
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
preloop_b.41 :
	ilw.s	%r0 %f7 l.80
	mov	%r3 %r1
	lw.s	%r1 %f1 0
	lw.s	%r0 %f0 568
	mul.s	%f0 %f1 %f0
	addi	%r3 %r1 4
	lw.s	%r1 %f6 0
	lw.s	%r0 %f1 572
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f0 %f6
	addi	%r3 %r1 8
	lw.s	%r1 %f1 0
	lw.s	%r0 %f0 576
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f0 %f7 %f6
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	lw.s	%r0 %f1 568
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f0 %f0
	mov	%r3 %r1
	sw.s	%r1 %f0 0
	addi	%r3 %r1 4
	lw.s	%r1 %f1 0
	lw.s	%r0 %f0 572
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	addi	%r3 %r1 4
	sw.s	%r1 %f0 0
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	lw.s	%r0 %f1 576
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f0 %f0
	addi	%r3 %r1 8
	sw.s	%r1 %f0 0
	lw	%r10 %r1 28
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f7
	lw	%r0 %r13 536
	mov	%r7 %r15
shadow_check_one_or_matrix_loop.3 :
	slli	%r15 %r1 2
	add	%r13 %r1 %r1
	lw	%r1 %r14 0
	mov	%r14 %r1
	lw	%r1 %r1 0
	addi	%r0 %r2 -1
	beq	%r1 %r2 tail_b.1442
branching_b.909 :
	addi	%r0 %r2 99
	beq	%r1 %r2 tail_b.1443
branching_b.910 :
	slli	%r1 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r2 0
	lw.s	%r0 %f0 552
	lw	%r2 %r12 20
	lw.s	%r12 %f1 0
	sub.s	%f1 %f0 %f9
	lw.s	%r0 %f0 556
	lw	%r2 %r12 20
	addi	%r12 %r12 4
	lw.s	%r12 %f1 0
	sub.s	%f1 %f0 %f8
	lw.s	%r0 %f1 560
	lw	%r2 %r12 20
	addi	%r12 %r12 8
	lw.s	%r12 %f0 0
	sub.s	%f0 %f1 %f10
	slli	%r1 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r12 0
	lw	%r2 %r1 4
	beq	%r1 %r11 branching_b.911
branching_b.938 :
	addi	%r0 %r16 2
	beq	%r1 %r16 branching_b.939
branching_b.941 :
	mov	%r12 %r1
	lw.s	%r1 %f13 0
	ilw.s	%r0 %f6 l.51
	fbne	%f13 %f6 tail_b.1495
tail_b.1494 :
	addi	%r0 %r1 1
	j	branching_b.942
tail_b.1495 :
	addi	%r0 %r1 0
	j	branching_b.942
branching_b.939 :
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.1491
tail_b.1490 :
	addi	%r0 %r1 1
	j	branching_b.940
tail_b.1491 :
	addi	%r0 %r1 0
	j	branching_b.940
branching_b.911 :
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	sub.s	%f9 %f0 %f0
	addi	%r12 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f11
	lw.s	%r0 %f0 740
	mul.s	%f0 %f11 %f0
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.1445
tail_b.1444 :
	neg.s	%f0 %f6
	j	branching_b.912
tail_b.1445 :
	mov.s	%f0 %f6
	j	branching_b.912
tail_b.1443 :
	addi	%r0 %r1 1
	j	branching_b.952
tail_b.1442 :
	addi	%r0 %r1 0
postloop_b.40 :
branching_b.954 :
	beq	%r1 %r7 branching_b.955
tail_b.1524 :
	j	preloop_b.42
branching_b.955 :
	lw.s	%r0 %f1 568
	lw.s	%r0 %f0 312
	mul.s	%f0 %f1 %f6
	lw.s	%r0 %f1 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f6 %f1
	lw.s	%r0 %f0 576
	lw.s	%r0 %f6 320
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	mul.s	%f5 %f0 %f1
	mov	%r3 %r1
	lw.s	%r1 %f6 0
	lw.s	%r0 %f0 312
	mul.s	%f0 %f6 %f0
	addi	%r3 %r1 4
	lw.s	%r1 %f6 0
	lw.s	%r0 %f8 316
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f6
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	lw.s	%r0 %f8 320
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f6 l.51
	fbge	%f6 %f1 tail_b.1517
tail_b.1516 :
	addi	%r0 %r1 1
	j	branching_b.956
tail_b.1517 :
	addi	%r0 %r1 0
branching_b.956 :
	beq	%r1 %r7 tail_b.1518
tail_b.1519 :
	lw.s	%r0 %f9 604
	lw.s	%r0 %f0 580
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f9 608
	lw.s	%r0 %f0 584
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f9 612
	lw.s	%r0 %f0 588
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 612
	j	branching_b.957
tail_b.1518 :
branching_b.957 :
	fbge	%f6 %f8 tail_b.1521
tail_b.1520 :
	addi	%r0 %r1 1
	j	branching_b.958
tail_b.1521 :
	addi	%r0 %r1 0
branching_b.958 :
	beq	%r1 %r7 tail_b.1522
tail_b.1523 :
	mul.s	%f8 %f8 %f0
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
	j	preloop_b.42
tail_b.1522 :
preloop_b.42 :
	lw.s	%r0 %f0 552
	sw.s	%r0 %f0 648
	lw.s	%r0 %f0 556
	sw.s	%r0 %f0 652
	lw.s	%r0 %f0 560
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r11
setup_startp_constants_loop.7 :
	ble	%r7 %r11 branching_b.960
tail_b.1533 :
	j	postloop_b.41
branching_b.960 :
	slli	%r11 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r13 0
	lw	%r13 %r2 40
	lw	%r13 %r12 4
	lw.s	%r0 %f1 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mov	%r2 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f1 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	beq	%r12 %r1 tail_b.1525
branching_b.961 :
	bl	%r1 %r12 branching_b.962
tail_b.1531 :
	j	tail_b.1532
branching_b.962 :
	mov	%r2 %r1
	lw.s	%r1 %f10 0
	addi	%r2 %r1 4
	lw.s	%r1 %f6 0
	addi	%r2 %r1 8
	lw.s	%r1 %f9 0
	mul.s	%f10 %f10 %f1
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f8
	mul.s	%f6 %f6 %f1
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f1
	mul.s	%f9 %f9 %f8
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f8
	lw	%r13 %r1 12
	beq	%r1 %r7 tail_b.1526
tail_b.1527 :
	mul.s	%f9 %f6 %f0
	lw	%r13 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f8
	mul.s	%f10 %f9 %f0
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f1
	mul.s	%f6 %f10 %f0
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	j	branching_b.963
tail_b.1526 :
	mov.s	%f8 %f1
	j	branching_b.963
tail_b.1525 :
	lw	%r13 %r12 16
	mov	%r2 %r1
	lw.s	%r1 %f6 0
	addi	%r2 %r1 4
	lw.s	%r1 %f8 0
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	mul.s	%f6 %f0 %f6
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f6
	addi	%r12 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	addi	%r2 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.1532
branching_b.963 :
	addi	%r0 %r1 3
	beq	%r12 %r1 tail_b.1528
tail_b.1529 :
	mov.s	%f1 %f0
	j	tail_b.1530
tail_b.1528 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f0
tail_b.1530 :
	addi	%r2 %r1 12
	sw.s	%r1 %f0 0
tail_b.1532 :
	addi	%r11 %r1 -1
	mov	%r1 %r11
	j	setup_startp_constants_loop.7
postloop_b.41 :
preloop_b.43 :
	lw	%r0 %r1 1736
	addi	%r1 %r1 -1
	mov	%r1 %r11
trace_reflections_loop.1 :
	ble	%r7 %r11 branching_b.965
tail_b.1551 :
	j	postloop_b.42
branching_b.965 :
	slli	%r11 %r1 2
	addi	%r1 %r1 1016
	lw	%r1 %r12 0
	lw	%r12 %r13 4
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw.s	%r26 %f5 -60
	sw	%r26 %r9 -56
	sw	%r26 %r10 -52
	sw.s	%r26 %f4 -48
	sw	%r26 %r7 -44
	sw	%r26 %r5 -40
	sw	%r26 %r8 -36
	sw.s	%r26 %f3 -32
	sw.s	%r26 %f2 -28
	sw	%r26 %r6 -24
	sw	%r26 %r4 -20
	sw	%r26 %r3 -16
	sw	%r26 %r13 -12
	sw	%r26 %r12 -8
	sw	%r26 %r11 -4
	sw.s	%r26 %f7 0
	mov	%r13 %r3
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw.s	%r26 %f5 -60
	lw	%r26 %r9 -56
	lw	%r26 %r10 -52
	lw.s	%r26 %f4 -48
	lw	%r26 %r7 -44
	lw	%r26 %r5 -40
	lw	%r26 %r8 -36
	lw.s	%r26 %f3 -32
	lw.s	%r26 %f2 -28
	lw	%r26 %r6 -24
	lw	%r26 %r4 -20
	lw	%r26 %r3 -16
	lw	%r26 %r13 -12
	lw	%r26 %r12 -8
	lw	%r26 %r11 -4
	lw.s	%r26 %f7 0
	lw.s	%r0 %f1 548
	fbge	%f4 %f1 tail_b.1535
tail_b.1534 :
	addi	%r0 %r1 1
	j	branching_b.966
tail_b.1535 :
	addi	%r0 %r1 0
branching_b.966 :
	beq	%r1 %r7 tail_b.1536
branching_b.967 :
	ilw.s	%r0 %f0 l.71
	fbge	%f1 %f0 tail_b.1538
tail_b.1537 :
	addi	%r0 %r1 1
	j	branching_b.968
tail_b.1538 :
	addi	%r0 %r1 0
	j	branching_b.968
tail_b.1536 :
	addi	%r0 %r1 0
branching_b.968 :
	beq	%r1 %r7 tail_b.1539
branching_b.969 :
	lw	%r0 %r1 564
	mul	%r1 %r8 %r1
	lw	%r0 %r2 544
	add	%r1 %r2 %r2
	lw	%r12 %r1 0
	beq	%r2 %r1 branching_b.970
tail_b.1549 :
	j	tail_b.1550
branching_b.970 :
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw.s	%r26 %f5 -60
	sw	%r26 %r9 -56
	sw	%r26 %r10 -52
	sw.s	%r26 %f4 -48
	sw	%r26 %r7 -44
	sw	%r26 %r5 -40
	sw	%r26 %r8 -36
	sw.s	%r26 %f3 -32
	sw.s	%r26 %f2 -28
	sw	%r26 %r6 -24
	sw	%r26 %r4 -20
	sw	%r26 %r3 -16
	sw	%r26 %r13 -12
	sw	%r26 %r12 -8
	sw	%r26 %r11 -4
	sw.s	%r26 %f7 0
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw.s	%r26 %f5 -60
	lw	%r26 %r9 -56
	lw	%r26 %r10 -52
	lw.s	%r26 %f4 -48
	lw	%r26 %r7 -44
	lw	%r26 %r5 -40
	lw	%r26 %r8 -36
	lw.s	%r26 %f3 -32
	lw.s	%r26 %f2 -28
	lw	%r26 %r6 -24
	lw	%r26 %r4 -20
	lw	%r26 %r3 -16
	lw	%r26 %r13 -12
	lw	%r26 %r12 -8
	lw	%r26 %r11 -4
	lw.s	%r26 %f7 0
	beq	%r1 %r7 branching_b.971
tail_b.1548 :
	j	tail_b.1550
branching_b.971 :
	lw	%r13 %r2 0
	lw.s	%r0 %f0 568
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f1 572
	addi	%r2 %r1 4
	lw.s	%r1 %f6 0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f6 576
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	lw.s	%r12 %f9 8
	mul.s	%f5 %f9 %f1
	mul.s	%f0 %f1 %f8
	lw	%r13 %r2 0
	mov	%r3 %r1
	lw.s	%r1 %f1 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	addi	%r2 %r1 4
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f6
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f0 %f9 %f1
	ilw.s	%r0 %f6 l.51
	fbge	%f6 %f8 tail_b.1541
tail_b.1540 :
	addi	%r0 %r1 1
	j	branching_b.972
tail_b.1541 :
	addi	%r0 %r1 0
	j	branching_b.972
tail_b.1539 :
	j	tail_b.1550
branching_b.972 :
	beq	%r1 %r7 tail_b.1542
tail_b.1543 :
	lw.s	%r0 %f9 604
	lw.s	%r0 %f0 580
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f9 608
	lw.s	%r0 %f0 584
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	lw.s	%r0 %f9 588
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f0 %f0
	sw.s	%r0 %f0 612
	j	branching_b.973
tail_b.1542 :
branching_b.973 :
	fbge	%f6 %f1 tail_b.1545
tail_b.1544 :
	addi	%r0 %r1 1
	j	branching_b.974
tail_b.1545 :
	addi	%r0 %r1 0
branching_b.974 :
	beq	%r1 %r7 tail_b.1546
tail_b.1547 :
	mul.s	%f1 %f1 %f0
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
	j	tail_b.1550
tail_b.1546 :
tail_b.1550 :
	addi	%r11 %r1 -1
	mov	%r1 %r11
	j	trace_reflections_loop.1
postloop_b.42 :
branching_b.975 :
	ilw.s	%r0 %f0 l.93
	fbge	%f0 %f2 tail_b.1553
tail_b.1552 :
	addi	%r0 %r1 1
	j	branching_b.976
tail_b.1553 :
	addi	%r0 %r1 0
branching_b.976 :
	beq	%r1 %r7 tail_b.1554
branching_b.977 :
	bl	%r6 %r8 tail_b.1555
tail_b.1556 :
	j	branching_b.978
tail_b.1555 :
	addi	%r6 %r1 1
	addi	%r0 %r2 -1
	slli	%r1 %r1 2
	add	%r5 %r1 %r1
	sw	%r1 %r2 0
	j	branching_b.978
tail_b.1554 :
	j	postloop_b.43
branching_b.978 :
	addi	%r0 %r1 2
	beq	%r9 %r1 tail_b.1557
tail_b.1558 :
	j	postloop_b.43
tail_b.1557 :
	ilw.s	%r0 %f0 l.56
	lw	%r10 %r1 28
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f2 %f1
	addi	%r6 %r1 1
	lw.s	%r0 %f0 548
	add.s	%f0 %f3 %f0
	mov	%r1 %r6
	mov.s	%f1 %f2
	mov.s	%f0 %f3
	j	trace_ray_loop.0
branching_b.952 :
	beq	%r1 %r7 tail_b.1513
branching_b.953 :
	addi	%r0 %r1 1
	sw	%r26 %r11 -60
	sw.s	%r26 %f5 -56
	sw	%r26 %r9 -52
	sw	%r26 %r10 -48
	sw.s	%r26 %f4 -44
	sw	%r26 %r7 -40
	sw	%r26 %r5 -36
	sw	%r26 %r8 -32
	sw.s	%r26 %f3 -28
	sw.s	%r26 %f2 -24
	sw	%r26 %r6 -20
	sw	%r26 %r4 -16
	sw	%r26 %r3 -12
	sw	%r26 %r15 -8
	sw	%r26 %r13 -4
	sw.s	%r26 %f7 0
	mov	%r14 %r2
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw	%r26 %r11 -60
	lw.s	%r26 %f5 -56
	lw	%r26 %r9 -52
	lw	%r26 %r10 -48
	lw.s	%r26 %f4 -44
	lw	%r26 %r7 -40
	lw	%r26 %r5 -36
	lw	%r26 %r8 -32
	lw.s	%r26 %f3 -28
	lw.s	%r26 %f2 -24
	lw	%r26 %r6 -20
	lw	%r26 %r4 -16
	lw	%r26 %r3 -12
	lw	%r26 %r15 -8
	lw	%r26 %r13 -4
	lw.s	%r26 %f7 0
	beq	%r1 %r7 tail_b.1514
tail_b.1515 :
	addi	%r0 %r1 1
	j	postloop_b.40
tail_b.1514 :
	addi	%r15 %r1 1
	mov	%r1 %r15
	j	shadow_check_one_or_matrix_loop.3
tail_b.1513 :
	addi	%r15 %r1 1
	mov	%r1 %r15
	j	shadow_check_one_or_matrix_loop.3
branching_b.912 :
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f6 %f0 tail_b.1447
tail_b.1446 :
	addi	%r0 %r1 1
	j	branching_b.913
tail_b.1447 :
	addi	%r0 %r1 0
branching_b.913 :
	beq	%r1 %r7 tail_b.1448
branching_b.914 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f11 %f0
	add.s	%f10 %f0 %f0
	fbge	%f0 %f1 tail_b.1450
tail_b.1449 :
	neg.s	%f0 %f0
	j	branching_b.915
tail_b.1450 :
	j	branching_b.915
tail_b.1448 :
	addi	%r0 %r1 0
branching_b.919 :
	beq	%r1 %r7 branching_b.920
tail_b.1489 :
	sw.s	%r0 %f11 540
	addi	%r0 %r1 1
	j	branching_b.948
branching_b.920 :
	addi	%r12 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f8 %f0 %f6
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	lw.s	%r0 %f6 736
	mul.s	%f6 %f0 %f6
	add.s	%f9 %f6 %f6
	fbge	%f6 %f1 tail_b.1459
tail_b.1458 :
	neg.s	%f6 %f11
	j	branching_b.921
tail_b.1459 :
	mov.s	%f6 %f11
branching_b.921 :
	lw	%r2 %r1 16
	lw.s	%r1 %f6 0
	fbge	%f11 %f6 tail_b.1461
tail_b.1460 :
	addi	%r0 %r1 1
	j	branching_b.922
tail_b.1461 :
	addi	%r0 %r1 0
branching_b.922 :
	beq	%r1 %r7 tail_b.1462
branching_b.923 :
	lw.s	%r0 %f6 744
	mul.s	%f6 %f0 %f6
	add.s	%f10 %f6 %f6
	fbge	%f6 %f1 tail_b.1464
tail_b.1463 :
	neg.s	%f6 %f6
	j	branching_b.924
tail_b.1464 :
	j	branching_b.924
tail_b.1462 :
	addi	%r0 %r1 0
branching_b.928 :
	beq	%r1 %r7 branching_b.929
tail_b.1488 :
	sw.s	%r0 %f0 540
	addi	%r0 %r1 2
	j	branching_b.948
branching_b.929 :
	addi	%r12 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f10 %f0 %f6
	addi	%r12 %r1 20
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f10
	lw.s	%r0 %f0 736
	mul.s	%f0 %f10 %f0
	add.s	%f9 %f0 %f0
	fbge	%f0 %f1 tail_b.1473
tail_b.1472 :
	neg.s	%f0 %f0
	j	branching_b.930
tail_b.1473 :
branching_b.930 :
	lw	%r2 %r1 16
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.1475
tail_b.1474 :
	addi	%r0 %r1 1
	j	branching_b.931
tail_b.1475 :
	addi	%r0 %r1 0
branching_b.931 :
	beq	%r1 %r7 tail_b.1476
branching_b.932 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f10 %f0
	add.s	%f8 %f0 %f0
	fbge	%f0 %f1 tail_b.1478
tail_b.1477 :
	neg.s	%f0 %f0
	j	branching_b.933
tail_b.1478 :
	j	branching_b.933
tail_b.1476 :
	addi	%r0 %r1 0
branching_b.937 :
	beq	%r1 %r7 tail_b.1486
tail_b.1487 :
	sw.s	%r0 %f10 540
	addi	%r0 %r1 3
	j	branching_b.948
tail_b.1486 :
	addi	%r0 %r1 0
	j	branching_b.948
branching_b.933 :
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.1480
tail_b.1479 :
	addi	%r0 %r1 1
	j	branching_b.934
tail_b.1480 :
	addi	%r0 %r1 0
branching_b.934 :
	beq	%r1 %r7 tail_b.1481
branching_b.935 :
	addi	%r12 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.1483
tail_b.1482 :
	addi	%r0 %r1 1
	j	branching_b.936
tail_b.1483 :
	addi	%r0 %r1 0
	j	branching_b.936
tail_b.1481 :
	addi	%r0 %r1 0
	j	branching_b.937
branching_b.936 :
	beq	%r1 %r7 tail_b.1484
tail_b.1485 :
	addi	%r0 %r1 0
	j	branching_b.937
tail_b.1484 :
	addi	%r0 %r1 1
	j	branching_b.937
branching_b.924 :
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f11 0
	fbge	%f6 %f11 tail_b.1466
tail_b.1465 :
	addi	%r0 %r1 1
	j	branching_b.925
tail_b.1466 :
	addi	%r0 %r1 0
branching_b.925 :
	beq	%r1 %r7 tail_b.1467
branching_b.926 :
	addi	%r12 %r1 12
	lw.s	%r1 %f6 0
	fbne	%f6 %f1 tail_b.1469
tail_b.1468 :
	addi	%r0 %r1 1
	j	branching_b.927
tail_b.1469 :
	addi	%r0 %r1 0
	j	branching_b.927
tail_b.1467 :
	addi	%r0 %r1 0
	j	branching_b.928
branching_b.927 :
	beq	%r1 %r7 tail_b.1470
tail_b.1471 :
	addi	%r0 %r1 0
	j	branching_b.928
tail_b.1470 :
	addi	%r0 %r1 1
	j	branching_b.928
branching_b.948 :
	bne	%r1 %r7 branching_b.949
tail_b.1512 :
	addi	%r0 %r1 0
	j	branching_b.952
branching_b.949 :
	lw.s	%r0 %f0 540
	fbge	%f0 %f4 tail_b.1508
tail_b.1507 :
	addi	%r0 %r1 1
	j	branching_b.950
tail_b.1508 :
	addi	%r0 %r1 0
branching_b.950 :
	beq	%r1 %r7 tail_b.1509
branching_b.951 :
	addi	%r0 %r1 1
	sw	%r26 %r11 -64
	sw.s	%r26 %f5 -60
	sw	%r26 %r9 -56
	sw	%r26 %r10 -52
	sw.s	%r26 %f4 -48
	sw	%r26 %r7 -44
	sw	%r26 %r5 -40
	sw	%r26 %r8 -36
	sw.s	%r26 %f3 -32
	sw.s	%r26 %f2 -28
	sw	%r26 %r6 -24
	sw	%r26 %r4 -20
	sw	%r26 %r3 -16
	sw	%r26 %r14 -12
	sw	%r26 %r15 -8
	sw	%r26 %r13 -4
	sw.s	%r26 %f7 0
	mov	%r14 %r2
	sw	%r26 %r28 -68
	addi	%r26 %r26 -72
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 72
	lw	%r26 %r28 -68
	lw	%r26 %r11 -64
	lw.s	%r26 %f5 -60
	lw	%r26 %r9 -56
	lw	%r26 %r10 -52
	lw.s	%r26 %f4 -48
	lw	%r26 %r7 -44
	lw	%r26 %r5 -40
	lw	%r26 %r8 -36
	lw.s	%r26 %f3 -32
	lw.s	%r26 %f2 -28
	lw	%r26 %r6 -24
	lw	%r26 %r4 -20
	lw	%r26 %r3 -16
	lw	%r26 %r14 -12
	lw	%r26 %r15 -8
	lw	%r26 %r13 -4
	lw.s	%r26 %f7 0
	beq	%r1 %r7 tail_b.1510
tail_b.1511 :
	addi	%r0 %r1 1
	j	branching_b.952
tail_b.1510 :
	addi	%r0 %r1 0
	j	branching_b.952
tail_b.1509 :
	addi	%r0 %r1 0
	j	branching_b.952
branching_b.915 :
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.1452
tail_b.1451 :
	addi	%r0 %r1 1
	j	branching_b.916
tail_b.1452 :
	addi	%r0 %r1 0
branching_b.916 :
	beq	%r1 %r7 tail_b.1453
branching_b.917 :
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.1455
tail_b.1454 :
	addi	%r0 %r1 1
	j	branching_b.918
tail_b.1455 :
	addi	%r0 %r1 0
	j	branching_b.918
tail_b.1453 :
	addi	%r0 %r1 0
	j	branching_b.919
branching_b.918 :
	beq	%r1 %r7 tail_b.1456
tail_b.1457 :
	addi	%r0 %r1 0
	j	branching_b.919
tail_b.1456 :
	addi	%r0 %r1 1
	j	branching_b.919
branching_b.940 :
	beq	%r1 %r7 tail_b.1492
tail_b.1493 :
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f9 %f0 %f1
	addi	%r12 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r12 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.948
tail_b.1492 :
	addi	%r0 %r1 0
	j	branching_b.948
branching_b.942 :
	beq	%r1 %r7 branching_b.943
tail_b.1506 :
	addi	%r0 %r1 0
	j	branching_b.948
branching_b.943 :
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f9 %f0 %f1
	addi	%r12 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f11
	mul.s	%f9 %f9 %f0
	lw	%r2 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	mul.s	%f8 %f8 %f12
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f12 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f10 %f10 %f12
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f12 %f0
	add.s	%f0 %f1 %f0
	lw	%r2 %r1 12
	beq	%r1 %r7 tail_b.1496
tail_b.1497 :
	mul.s	%f10 %f8 %f12
	lw	%r2 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f12 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f9 %f10 %f0
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f10 0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f8 %f9 %f0
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f8 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	j	branching_b.944
tail_b.1496 :
	mov.s	%f0 %f1
branching_b.944 :
	lw	%r2 %r16 4
	addi	%r0 %r1 3
	beq	%r16 %r1 tail_b.1498
tail_b.1499 :
	j	branching_b.945
tail_b.1498 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f1
branching_b.945 :
	mul.s	%f11 %f11 %f0
	mul.s	%f1 %f13 %f1
	sub.s	%f1 %f0 %f0
	fbge	%f6 %f0 tail_b.1501
tail_b.1500 :
	addi	%r0 %r1 1
	j	branching_b.946
tail_b.1501 :
	addi	%r0 %r1 0
branching_b.946 :
	beq	%r1 %r7 tail_b.1502
branching_b.947 :
	lw	%r2 %r1 24
	beq	%r1 %r7 tail_b.1503
tail_b.1504 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f11 %f0
	addi	%r12 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1505
tail_b.1503 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f11 %f0
	addi	%r12 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1505
tail_b.1502 :
	addi	%r0 %r1 0
	j	branching_b.948
tail_b.1505 :
	addi	%r0 %r1 1
	j	branching_b.948
branching_b.856 :
	lw	%r10 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.51
	fbne	%f0 %f1 tail_b.1368
tail_b.1367 :
	addi	%r0 %r12 1
	j	branching_b.857
tail_b.1368 :
	addi	%r0 %r12 0
branching_b.857 :
	beq	%r12 %r7 branching_b.858
tail_b.1371 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.1372
branching_b.858 :
	beq	%r1 %r7 tail_b.1369
tail_b.1370 :
	ilw.s	%r0 %f1 l.58
	div.s	%f0 %f1 %f1
	j	tail_b.1372
tail_b.1369 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f1
tail_b.1372 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.859
tail_b.1345 :
	addi	%r9 %r1 1
	mov	%r1 %r9
	j	trace_or_matrix_loop.1
branching_b.789 :
	beq	%r1 %r7 branching_b.790
tail_b.1272 :
	addi	%r0 %r1 0
	j	branching_b.800
branching_b.790 :
	lw	%r12 %r1 16
	lw	%r12 %r13 24
	mov	%r3 %r11
	lw.s	%r11 %f0 0
	fbge	%f0 %f4 tail_b.1255
tail_b.1254 :
	addi	%r0 %r11 1
	j	branching_b.791
tail_b.1255 :
	addi	%r0 %r11 0
branching_b.791 :
	beq	%r13 %r7 tail_b.1256
branching_b.792 :
	beq	%r11 %r7 tail_b.1257
tail_b.1258 :
	addi	%r0 %r13 0
	j	branching_b.793
tail_b.1257 :
	addi	%r0 %r13 1
	j	branching_b.793
tail_b.1256 :
	mov	%r11 %r13
branching_b.793 :
	mov	%r1 %r11
	lw.s	%r11 %f0 0
	beq	%r13 %r7 tail_b.1259
tail_b.1260 :
	j	branching_b.794
tail_b.1259 :
	neg.s	%f0 %f0
branching_b.794 :
	sub.s	%f7 %f0 %f0
	mov	%r3 %r11
	lw.s	%r11 %f1 0
	div.s	%f1 %f0 %f8
	addi	%r3 %r11 4
	lw.s	%r11 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f4 tail_b.1262
tail_b.1261 :
	neg.s	%f0 %f1
	j	branching_b.795
tail_b.1262 :
	mov.s	%f0 %f1
branching_b.795 :
	addi	%r1 %r11 4
	lw.s	%r11 %f0 0
	fbge	%f1 %f0 tail_b.1264
tail_b.1263 :
	addi	%r0 %r11 1
	j	branching_b.796
tail_b.1264 :
	addi	%r0 %r11 0
branching_b.796 :
	beq	%r11 %r7 tail_b.1265
branching_b.797 :
	addi	%r3 %r11 8
	lw.s	%r11 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f4 tail_b.1267
tail_b.1266 :
	neg.s	%f0 %f0
	j	branching_b.798
tail_b.1267 :
	j	branching_b.798
tail_b.1265 :
	addi	%r0 %r1 0
	j	branching_b.800
branching_b.798 :
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.1269
tail_b.1268 :
	addi	%r0 %r1 1
	j	branching_b.799
tail_b.1269 :
	addi	%r0 %r1 0
branching_b.799 :
	beq	%r1 %r7 tail_b.1270
tail_b.1271 :
	sw.s	%r0 %f8 540
	addi	%r0 %r1 1
	j	branching_b.800
tail_b.1270 :
	addi	%r0 %r1 0
branching_b.800 :
	beq	%r1 %r7 branching_b.801
tail_b.1318 :
	addi	%r0 %r1 1
	j	branching_b.839
branching_b.801 :
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f4 tail_b.1274
tail_b.1273 :
	addi	%r0 %r1 1
	j	branching_b.802
tail_b.1274 :
	addi	%r0 %r1 0
branching_b.802 :
	beq	%r1 %r7 branching_b.803
tail_b.1293 :
	addi	%r0 %r1 0
	j	branching_b.813
branching_b.803 :
	lw	%r12 %r13 16
	lw	%r12 %r1 24
	addi	%r3 %r11 4
	lw.s	%r11 %f0 0
	fbge	%f0 %f4 tail_b.1276
tail_b.1275 :
	addi	%r0 %r11 1
	j	branching_b.804
tail_b.1276 :
	addi	%r0 %r11 0
branching_b.804 :
	beq	%r1 %r7 tail_b.1277
branching_b.805 :
	beq	%r11 %r7 tail_b.1278
tail_b.1279 :
	addi	%r0 %r1 0
	j	branching_b.806
tail_b.1278 :
	addi	%r0 %r1 1
	j	branching_b.806
tail_b.1277 :
	mov	%r11 %r1
branching_b.806 :
	addi	%r13 %r11 4
	lw.s	%r11 %f0 0
	beq	%r1 %r7 tail_b.1280
tail_b.1281 :
	j	branching_b.807
tail_b.1280 :
	neg.s	%f0 %f0
branching_b.807 :
	sub.s	%f6 %f0 %f1
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f1 %f8
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f4 tail_b.1283
tail_b.1282 :
	neg.s	%f0 %f1
	j	branching_b.808
tail_b.1283 :
	mov.s	%f0 %f1
branching_b.808 :
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1285
tail_b.1284 :
	addi	%r0 %r1 1
	j	branching_b.809
tail_b.1285 :
	addi	%r0 %r1 0
branching_b.809 :
	beq	%r1 %r7 tail_b.1286
branching_b.810 :
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f4 tail_b.1288
tail_b.1287 :
	neg.s	%f0 %f0
	j	branching_b.811
tail_b.1288 :
	j	branching_b.811
tail_b.1286 :
	addi	%r0 %r1 0
	j	branching_b.813
branching_b.811 :
	mov	%r13 %r1
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.1290
tail_b.1289 :
	addi	%r0 %r1 1
	j	branching_b.812
tail_b.1290 :
	addi	%r0 %r1 0
branching_b.812 :
	beq	%r1 %r7 tail_b.1291
tail_b.1292 :
	sw.s	%r0 %f8 540
	addi	%r0 %r1 1
	j	branching_b.813
tail_b.1291 :
	addi	%r0 %r1 0
branching_b.813 :
	beq	%r1 %r7 branching_b.814
tail_b.1317 :
	addi	%r0 %r1 2
	j	branching_b.839
branching_b.814 :
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f4 tail_b.1295
tail_b.1294 :
	addi	%r0 %r1 1
	j	branching_b.815
tail_b.1295 :
	addi	%r0 %r1 0
branching_b.815 :
	beq	%r1 %r7 branching_b.816
tail_b.1314 :
	addi	%r0 %r1 0
	j	branching_b.826
branching_b.816 :
	lw	%r12 %r11 16
	lw	%r12 %r12 24
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f0 %f4 tail_b.1297
tail_b.1296 :
	addi	%r0 %r1 1
	j	branching_b.817
tail_b.1297 :
	addi	%r0 %r1 0
branching_b.817 :
	beq	%r12 %r7 tail_b.1298
branching_b.818 :
	beq	%r1 %r7 tail_b.1299
tail_b.1300 :
	addi	%r0 %r12 0
	j	branching_b.819
tail_b.1299 :
	addi	%r0 %r12 1
	j	branching_b.819
tail_b.1298 :
	mov	%r1 %r12
branching_b.819 :
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	beq	%r12 %r7 tail_b.1301
tail_b.1302 :
	j	branching_b.820
tail_b.1301 :
	neg.s	%f0 %f0
branching_b.820 :
	sub.s	%f5 %f0 %f0
	addi	%r3 %r1 8
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f5
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f4 tail_b.1304
tail_b.1303 :
	neg.s	%f0 %f0
	j	branching_b.821
tail_b.1304 :
branching_b.821 :
	mov	%r11 %r1
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.1306
tail_b.1305 :
	addi	%r0 %r1 1
	j	branching_b.822
tail_b.1306 :
	addi	%r0 %r1 0
branching_b.822 :
	beq	%r1 %r7 tail_b.1307
branching_b.823 :
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f4 tail_b.1309
tail_b.1308 :
	neg.s	%f0 %f1
	j	branching_b.824
tail_b.1309 :
	mov.s	%f0 %f1
	j	branching_b.824
tail_b.1307 :
	addi	%r0 %r1 0
	j	branching_b.826
branching_b.824 :
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1311
tail_b.1310 :
	addi	%r0 %r1 1
	j	branching_b.825
tail_b.1311 :
	addi	%r0 %r1 0
branching_b.825 :
	beq	%r1 %r7 tail_b.1312
tail_b.1313 :
	sw.s	%r0 %f5 540
	addi	%r0 %r1 1
	j	branching_b.826
tail_b.1312 :
	addi	%r0 %r1 0
branching_b.826 :
	beq	%r1 %r7 tail_b.1315
tail_b.1316 :
	addi	%r0 %r1 3
	j	branching_b.839
tail_b.1315 :
	addi	%r0 %r1 0
branching_b.839 :
	bne	%r1 %r7 branching_b.840
tail_b.1344 :
	j	tail_b.1345
branching_b.840 :
	lw.s	%r0 %f0 540
	lw.s	%r0 %f1 548
	fbge	%f0 %f1 tail_b.1341
tail_b.1340 :
	addi	%r0 %r1 1
	j	branching_b.841
tail_b.1341 :
	addi	%r0 %r1 0
branching_b.841 :
	beq	%r1 %r7 tail_b.1342
tail_b.1343 :
	addi	%r0 %r1 1
	sw	%r26 %r9 -36
	sw	%r26 %r2 -32
	sw	%r26 %r7 -28
	sw	%r26 %r5 -24
	sw	%r26 %r8 -20
	sw.s	%r26 %f3 -16
	sw.s	%r26 %f2 -12
	sw	%r26 %r6 -8
	sw	%r26 %r4 -4
	sw	%r26 %r3 0
	mov	%r10 %r2
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	solve_one_or_network.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r9 -36
	lw	%r26 %r2 -32
	lw	%r26 %r7 -28
	lw	%r26 %r5 -24
	lw	%r26 %r8 -20
	lw.s	%r26 %f3 -16
	lw.s	%r26 %f2 -12
	lw	%r26 %r6 -8
	lw	%r26 %r4 -4
	lw	%r26 %r3 0
	j	tail_b.1345
tail_b.1342 :
	j	tail_b.1345
branching_b.829 :
	beq	%r1 %r7 tail_b.1321
tail_b.1322 :
	mov	%r11 %r1
	lw.s	%r1 %f1 0
	mul.s	%f7 %f1 %f1
	addi	%r11 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f1 %f4
	addi	%r11 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f4 %f1
	neg.s	%f1 %f1
	div.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.839
tail_b.1321 :
	addi	%r0 %r1 0
	j	branching_b.839
branching_b.831 :
	ilw.s	%r0 %f9 l.51
	fbne	%f4 %f9 tail_b.1326
tail_b.1325 :
	addi	%r0 %r1 1
	j	branching_b.832
tail_b.1326 :
	addi	%r0 %r1 0
branching_b.832 :
	beq	%r1 %r7 branching_b.833
tail_b.1339 :
	addi	%r0 %r1 0
	j	branching_b.839
branching_b.833 :
	mov	%r3 %r1
	lw.s	%r1 %f8 0
	addi	%r3 %r1 4
	lw.s	%r1 %f11 0
	addi	%r3 %r1 8
	lw.s	%r1 %f10 0
	mul.s	%f7 %f8 %f1
	lw	%r12 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mul.s	%f6 %f11 %f0
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f12 0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f12
	mul.s	%f5 %f10 %f1
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f12 %f1
	lw	%r12 %r1 12
	beq	%r1 %r7 tail_b.1327
tail_b.1328 :
	mul.s	%f6 %f10 %f12
	mul.s	%f5 %f11 %f0
	add.s	%f0 %f12 %f12
	lw	%r12 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f12 %f12
	mul.s	%f5 %f8 %f13
	mul.s	%f7 %f10 %f0
	add.s	%f0 %f13 %f0
	lw	%r12 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f10 0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f12 %f10
	mul.s	%f6 %f8 %f0
	mul.s	%f7 %f11 %f8
	add.s	%f8 %f0 %f0
	lw	%r12 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f8 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f8 l.67
	div.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f10
	j	branching_b.834
tail_b.1327 :
	mov.s	%f1 %f10
branching_b.834 :
	mul.s	%f7 %f7 %f1
	lw	%r12 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f8
	mul.s	%f6 %f6 %f0
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f5 %f1
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f8 0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	lw	%r12 %r1 12
	beq	%r1 %r7 tail_b.1329
tail_b.1330 :
	mul.s	%f5 %f6 %f8
	lw	%r12 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f5 %f1
	lw	%r12 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f7 %f1
	lw	%r12 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	j	branching_b.835
tail_b.1329 :
	mov.s	%f0 %f1
branching_b.835 :
	lw	%r12 %r11 4
	addi	%r0 %r1 3
	beq	%r11 %r1 tail_b.1331
tail_b.1332 :
	j	branching_b.836
tail_b.1331 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f1
branching_b.836 :
	mul.s	%f10 %f10 %f0
	mul.s	%f1 %f4 %f1
	sub.s	%f1 %f0 %f0
	fbge	%f9 %f0 tail_b.1334
tail_b.1333 :
	addi	%r0 %r1 1
	j	branching_b.837
tail_b.1334 :
	addi	%r0 %r1 0
branching_b.837 :
	beq	%r1 %r7 tail_b.1335
branching_b.838 :
	sqrt.s	%f0 %f0
	lw	%r12 %r1 24
	beq	%r1 %r7 tail_b.1336
tail_b.1337 :
	j	tail_b.1338
tail_b.1336 :
	neg.s	%f0 %f0
	j	tail_b.1338
tail_b.1335 :
	addi	%r0 %r1 0
	j	branching_b.839
tail_b.1338 :
	sub.s	%f10 %f0 %f0
	div.s	%f4 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.839
postloop_b.43 :
return_point.19 :
	retl
iter_trace_diffuse_rays.0 :
	mov	%r2 %r6
	mov	%r1 %r31
	mov	%r3 %r1
	mov	%r31 %r3
preloop_b.44 :
iter_trace_diffuse_rays_loop.0 :
	addi	%r0 %r5 0
	ble	%r5 %r4 branching_b.980
tail_b.2033 :
	j	postloop_b.52
branching_b.980 :
	slli	%r4 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	mov	%r6 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	addi	%r6 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f2
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	addi	%r6 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	ilw.s	%r0 %f2 l.51
	fbge	%f1 %f2 tail_b.1561
tail_b.1560 :
	addi	%r0 %r1 1
	j	branching_b.981
tail_b.1561 :
	addi	%r0 %r1 0
branching_b.981 :
	beq	%r1 %r5 preloop_b.45
preloop_b.49 :
	addi	%r4 %r1 1
	slli	%r1 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r2 0
	ilw.s	%r0 %f0 l.94
	div.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r8 536
	mov	%r5 %r10
trace_or_matrix_fast_loop.1 :
	slli	%r10 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r7 0
	mov	%r7 %r1
	lw	%r1 %r1 0
	addi	%r0 %r9 -1
	beq	%r1 %r9 tail_b.1797
branching_b.1134 :
	addi	%r0 %r9 99
	beq	%r1 %r9 tail_b.1798
branching_b.1135 :
	slli	%r1 %r9 2
	addi	%r9 %r9 48
	lw	%r9 %r12 0
	lw	%r12 %r11 40
	mov	%r11 %r9
	lw.s	%r9 %f4 0
	addi	%r11 %r9 4
	lw.s	%r9 %f5 0
	addi	%r11 %r9 8
	lw.s	%r9 %f6 0
	lw	%r2 %r9 4
	slli	%r1 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r9 0
	lw	%r12 %r13 4
	addi	%r0 %r1 1
	beq	%r13 %r1 branching_b.1136
branching_b.1163 :
	addi	%r0 %r1 2
	beq	%r13 %r1 branching_b.1164
branching_b.1166 :
	mov	%r9 %r1
	lw.s	%r1 %f7 0
	fbne	%f7 %f2 tail_b.1850
tail_b.1849 :
	addi	%r0 %r1 1
	j	branching_b.1167
tail_b.1850 :
	addi	%r0 %r1 0
	j	branching_b.1167
branching_b.1164 :
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.1846
tail_b.1845 :
	addi	%r0 %r1 1
	j	branching_b.1165
tail_b.1846 :
	addi	%r0 %r1 0
	j	branching_b.1165
branching_b.1136 :
	lw	%r2 %r11 0
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	sub.s	%f4 %f0 %f0
	addi	%r9 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f7
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f2 tail_b.1800
tail_b.1799 :
	neg.s	%f0 %f1
	j	branching_b.1137
tail_b.1800 :
	mov.s	%f0 %f1
	j	branching_b.1137
tail_b.1798 :
	addi	%r0 %r1 1
	sw	%r26 %r10 -32
	sw	%r26 %r8 -28
	sw.s	%r26 %f3 -24
	sw	%r26 %r2 -20
	sw.s	%r26 %f2 -16
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw	%r26 %r6 -4
	sw	%r26 %r3 0
	mov	%r2 %r3
	mov	%r7 %r2
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r10 -32
	lw	%r26 %r8 -28
	lw.s	%r26 %f3 -24
	lw	%r26 %r2 -20
	lw.s	%r26 %f2 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw	%r26 %r6 -4
	lw	%r26 %r3 0
	j	tail_b.1863
tail_b.1797 :
	j	postloop_b.48
preloop_b.45 :
	slli	%r4 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r9 0
	ilw.s	%r0 %f0 l.95
	div.s	%f0 %f1 %f4
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r2 536
	mov	%r5 %r8
trace_or_matrix_fast_loop.2 :
	slli	%r8 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r10 0
	mov	%r10 %r1
	lw	%r1 %r1 0
	addi	%r0 %r7 -1
	beq	%r1 %r7 tail_b.1562
branching_b.983 :
	addi	%r0 %r7 99
	beq	%r1 %r7 tail_b.1563
branching_b.984 :
	slli	%r1 %r7 2
	addi	%r7 %r7 48
	lw	%r7 %r12 0
	lw	%r12 %r11 40
	mov	%r11 %r7
	lw.s	%r7 %f6 0
	addi	%r11 %r7 4
	lw.s	%r7 %f0 0
	addi	%r11 %r7 8
	lw.s	%r7 %f7 0
	lw	%r9 %r7 4
	slli	%r1 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r13 0
	lw	%r12 %r7 4
	addi	%r0 %r1 1
	beq	%r7 %r1 branching_b.985
branching_b.1012 :
	addi	%r0 %r1 2
	beq	%r7 %r1 branching_b.1013
branching_b.1015 :
	mov	%r13 %r1
	lw.s	%r1 %f1 0
	fbne	%f1 %f2 tail_b.1615
tail_b.1614 :
	addi	%r0 %r1 1
	j	branching_b.1016
tail_b.1615 :
	addi	%r0 %r1 0
	j	branching_b.1016
branching_b.1013 :
	mov	%r13 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.1611
tail_b.1610 :
	addi	%r0 %r1 1
	j	branching_b.1014
tail_b.1611 :
	addi	%r0 %r1 0
	j	branching_b.1014
branching_b.985 :
	lw	%r9 %r7 0
	mov	%r13 %r1
	lw.s	%r1 %f1 0
	sub.s	%f6 %f1 %f3
	addi	%r13 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f1
	addi	%r7 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f1 %f3
	add.s	%f0 %f3 %f3
	fbge	%f3 %f2 tail_b.1565
tail_b.1564 :
	neg.s	%f3 %f5
	j	branching_b.986
tail_b.1565 :
	mov.s	%f3 %f5
	j	branching_b.986
tail_b.1563 :
	addi	%r0 %r1 1
	sw	%r26 %r8 -32
	sw	%r26 %r2 -28
	sw.s	%r26 %f4 -24
	sw	%r26 %r9 -20
	sw.s	%r26 %f2 -16
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw	%r26 %r6 -4
	sw	%r26 %r3 0
	mov	%r9 %r3
	mov	%r10 %r2
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r8 -32
	lw	%r26 %r2 -28
	lw.s	%r26 %f4 -24
	lw	%r26 %r9 -20
	lw.s	%r26 %f2 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw	%r26 %r6 -4
	lw	%r26 %r3 0
	j	tail_b.1628
tail_b.1562 :
postloop_b.44 :
branching_b.1023 :
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f3 l.70
	fbge	%f3 %f0 tail_b.1630
tail_b.1629 :
	addi	%r0 %r1 1
	j	branching_b.1024
tail_b.1630 :
	addi	%r0 %r1 0
branching_b.1024 :
	beq	%r1 %r5 tail_b.1631
branching_b.1025 :
	ilw.s	%r0 %f1 l.71
	fbge	%f0 %f1 tail_b.1633
tail_b.1632 :
	addi	%r0 %r1 1
	j	branching_b.1026
tail_b.1633 :
	addi	%r0 %r1 0
	j	branching_b.1026
tail_b.1631 :
	addi	%r0 %r1 0
branching_b.1026 :
	beq	%r1 %r5 tail_b.1634
branching_b.1027 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r8 0
	lw	%r9 %r9 0
	lw	%r8 %r2 4
	addi	%r0 %r7 1
	beq	%r2 %r7 branching_b.1028
branching_b.1032 :
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.1643
branching_b.1033 :
	lw.s	%r0 %f0 552
	lw	%r8 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f7
	lw.s	%r0 %f0 556
	lw	%r8 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r0 %f1 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	sub.s	%f5 %f1 %f10
	lw	%r8 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f7 %f6
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f9
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f10 %f5
	lw	%r8 %r1 12
	beq	%r1 %r5 tail_b.1644
tail_b.1645 :
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f8
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f10 %f1
	add.s	%f1 %f8 %f1
	ilw.s	%r0 %f8 l.67
	div.s	%f8 %f1 %f1
	add.s	%f1 %f6 %f1
	sw.s	%r0 %f1 568
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f7 %f6
	lw	%r8 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f10 %f1
	add.s	%f1 %f6 %f1
	div.s	%f8 %f1 %f1
	add.s	%f1 %f9 %f1
	sw.s	%r0 %f1 572
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f7 %f1
	lw	%r8 %r1 36
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	div.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1034
tail_b.1644 :
	sw.s	%r0 %f6 568
	sw.s	%r0 %f9 572
	sw.s	%r0 %f5 576
	j	branching_b.1034
tail_b.1643 :
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1037
branching_b.1028 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r2 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r9 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.1636
tail_b.1635 :
	addi	%r0 %r1 1
	j	branching_b.1029
tail_b.1636 :
	addi	%r0 %r1 0
	j	branching_b.1029
tail_b.1634 :
tail_b.2032 :
	addi	%r4 %r1 -2
	mov	%r1 %r4
	j	iter_trace_diffuse_rays_loop.0
branching_b.1029 :
	beq	%r1 %r5 branching_b.1030
tail_b.1641 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1642
branching_b.1030 :
	fbge	%f2 %f0 tail_b.1638
tail_b.1637 :
	addi	%r0 %r1 1
	j	branching_b.1031
tail_b.1638 :
	addi	%r0 %r1 0
branching_b.1031 :
	beq	%r1 %r5 tail_b.1639
tail_b.1640 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.1642
tail_b.1639 :
	ilw.s	%r0 %f0 l.58
tail_b.1642 :
	neg.s	%f0 %f0
	slli	%r2 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1037 :
	lw	%r8 %r2 0
	lw	%r8 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r8 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r8 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r2 %r7 branching_b.1038
branching_b.1043 :
	addi	%r0 %r1 2
	beq	%r2 %r1 preloop_b.46
branching_b.1053 :
	addi	%r0 %r1 3
	beq	%r2 %r1 preloop_b.47
branching_b.1063 :
	addi	%r0 %r1 4
	beq	%r2 %r1 branching_b.1064
tail_b.1716 :
	j	preloop_b.48
branching_b.1064 :
	lw.s	%r0 %f0 552
	lw	%r8 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	lw.s	%r0 %f1 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	sub.s	%f5 %f1 %f5
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f5 %f6
	mul.s	%f0 %f0 %f5
	mul.s	%f6 %f6 %f1
	add.s	%f1 %f5 %f5
	fbge	%f0 %f2 tail_b.1684
tail_b.1683 :
	neg.s	%f0 %f1
	j	branching_b.1065
tail_b.1684 :
	mov.s	%f0 %f1
	j	branching_b.1065
preloop_b.47 :
	lw.s	%r0 %f1 552
	lw	%r8 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f1 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	mul.s	%f5 %f5 %f0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.74
	div.s	%f0 %f1 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.76
	mul.s	%f0 %f1 %f0
	mov.s	%f0 %f1
cos_loop.8 :
	ilw.s	%r0 %f6 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f1 branching_b.1055
tail_b.1672 :
	sub.s	%f0 %f1 %f0
	mov.s	%f0 %f1
	j	cos_loop.8
branching_b.1055 :
	fbge	%f1 %f2 branching_b.1056
tail_b.1673 :
	add.s	%f0 %f1 %f0
	mov.s	%f0 %f1
	j	cos_loop.8
branching_b.1056 :
	fbg	%f6 %f1 branching_b.1060
branching_b.1057 :
	sub.s	%f6 %f1 %f1
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f1 branching_b.1059
branching_b.1058 :
	sub.s	%f1 %f6 %f0
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.1675
tail_b.1674 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f5 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.46
tail_b.1675 :
	sub.s	%f0 %f5 %f7
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f7 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f5
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f7 %f6 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.46
branching_b.1059 :
	ilw.s	%r0 %f0 l.59
	fbg	%f1 %f0 tail_b.1677
tail_b.1676 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.56
	mul.s	%f1 %f5 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.46
tail_b.1677 :
	sub.s	%f1 %f5 %f6
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.56
	mul.s	%f6 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.46
branching_b.1060 :
	ilw.s	%r0 %f5 l.56
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f1 branching_b.1062
branching_b.1061 :
	sub.s	%f1 %f6 %f7
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f1 l.59
	fbg	%f7 %f1 tail_b.1679
tail_b.1678 :
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f7 l.61
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f7 %f7
	ilw.s	%r0 %f1 l.62
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f1 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.46
tail_b.1679 :
	sub.s	%f7 %f0 %f1
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f7 l.64
	mul.s	%f1 %f7 %f7
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f8
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f7
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f1 %f5 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.46
branching_b.1062 :
	ilw.s	%r0 %f6 l.59
	fbg	%f1 %f6 tail_b.1681
tail_b.1680 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.46
tail_b.1681 :
	sub.s	%f1 %f0 %f1
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f7 l.64
	mul.s	%f1 %f7 %f7
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.65
	mul.s	%f1 %f7 %f7
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f1 %f5 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.46
preloop_b.46 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	mov.s	%f0 %f8
sin_loop.8 :
	ilw.s	%r0 %f6 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f8 branching_b.1045
tail_b.1661 :
	sub.s	%f0 %f8 %f0
	mov.s	%f0 %f8
	j	sin_loop.8
branching_b.1045 :
	fbge	%f8 %f2 branching_b.1046
tail_b.1662 :
	add.s	%f0 %f8 %f0
	mov.s	%f0 %f8
	j	sin_loop.8
branching_b.1046 :
	fbg	%f6 %f8 branching_b.1050
branching_b.1047 :
	sub.s	%f6 %f8 %f8
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f7 l.57
	fbg	%f7 %f8 branching_b.1049
branching_b.1048 :
	sub.s	%f8 %f6 %f1
	ilw.s	%r0 %f0 l.59
	fbg	%f1 %f0 tail_b.1664
tail_b.1663 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f7
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.65
	mul.s	%f1 %f7 %f7
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.56
	mul.s	%f1 %f7 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.45
tail_b.1664 :
	sub.s	%f1 %f7 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.45
branching_b.1049 :
	ilw.s	%r0 %f0 l.59
	fbg	%f8 %f0 tail_b.1666
tail_b.1665 :
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f6
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f1
	mul.s	%f7 %f6 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f8 %f0 %f6
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.56
	mul.s	%f8 %f0 %f1
	mul.s	%f7 %f6 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.45
tail_b.1666 :
	sub.s	%f8 %f7 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.45
branching_b.1050 :
	ilw.s	%r0 %f1 l.56
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f8 branching_b.1052
branching_b.1051 :
	sub.s	%f8 %f6 %f7
	ilw.s	%r0 %f5 l.59
	fbg	%f7 %f5 tail_b.1668
tail_b.1667 :
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f5 l.64
	mul.s	%f7 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f6
	mul.s	%f8 %f5 %f0
	add.s	%f0 %f6 %f5
	mul.s	%f7 %f1 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.45
tail_b.1668 :
	sub.s	%f7 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f6 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.62
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.45
branching_b.1052 :
	ilw.s	%r0 %f5 l.59
	fbg	%f8 %f5 tail_b.1670
tail_b.1669 :
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f5 l.64
	mul.s	%f8 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f6
	ilw.s	%r0 %f0 l.65
	mul.s	%f8 %f0 %f5
	mul.s	%f7 %f6 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f8 %f1 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.45
tail_b.1670 :
	sub.s	%f8 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.45
branching_b.1038 :
	lw.s	%r0 %f0 552
	lw	%r8 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f5
	ilw.s	%r0 %f1 l.72
	mul.s	%f1 %f5 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f7 l.73
	mul.s	%f7 %f0 %f0
	sub.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.74
	fbge	%f0 %f5 tail_b.1653
tail_b.1652 :
	addi	%r0 %r2 1
	j	branching_b.1039
tail_b.1653 :
	addi	%r0 %r2 0
branching_b.1039 :
	lw.s	%r0 %f6 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f6 %f6
	mul.s	%f1 %f6 %f0
	floor.w.s	%f0 %f0
	mul.s	%f7 %f0 %f0
	sub.s	%f0 %f6 %f0
	fbge	%f0 %f5 tail_b.1655
tail_b.1654 :
	addi	%r0 %r1 1
	j	branching_b.1040
tail_b.1655 :
	addi	%r0 %r1 0
branching_b.1040 :
	beq	%r2 %r5 branching_b.1041
branching_b.1042 :
	beq	%r1 %r5 tail_b.1658
tail_b.1659 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.1660
tail_b.1658 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1660
branching_b.1041 :
	beq	%r1 %r5 tail_b.1656
tail_b.1657 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1660
tail_b.1656 :
	ilw.s	%r0 %f0 l.52
tail_b.1660 :
	sw.s	%r0 %f0 584
	j	preloop_b.48
postloop_b.45 :
tail_b.1671 :
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f5
	sw.s	%r0 %f5 580
	ilw.s	%r0 %f5 l.56
	sub.s	%f0 %f5 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 584
	j	preloop_b.48
postloop_b.46 :
tail_b.1682 :
	mul.s	%f0 %f0 %f5
	ilw.s	%r0 %f0 l.52
	mul.s	%f0 %f5 %f1
	sw.s	%r0 %f1 584
	ilw.s	%r0 %f1 l.56
	sub.s	%f5 %f1 %f1
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
	j	preloop_b.48
branching_b.1065 :
	ilw.s	%r0 %f7 l.77
	fbge	%f1 %f7 tail_b.1686
tail_b.1685 :
	addi	%r0 %r1 1
	j	branching_b.1066
tail_b.1686 :
	addi	%r0 %r1 0
branching_b.1066 :
	beq	%r1 %r5 branching_b.1067
tail_b.1696 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1073
branching_b.1067 :
	div.s	%f0 %f6 %f0
	fbge	%f0 %f2 tail_b.1688
tail_b.1687 :
	neg.s	%f0 %f8
	j	branching_b.1068
tail_b.1688 :
	mov.s	%f0 %f8
branching_b.1068 :
	fbg	%f2 %f8 branching_b.1071
branching_b.1069 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1070
tail_b.1689 :
	ilw.s	%r0 %f9 l.56
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f6
	mul.s	%f1 %f10 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f10
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f6 l.86
	mul.s	%f8 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f8 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f10
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f6
	mul.s	%f1 %f10 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.1695
branching_b.1070 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.1691
tail_b.1690 :
	ilw.s	%r0 %f9 l.56
	sub.s	%f9 %f8 %f0
	add.s	%f9 %f8 %f1
	div.s	%f1 %f0 %f8
	ilw.s	%r0 %f11 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f6
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f1
	mul.s	%f10 %f6 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f6
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f1
	mul.s	%f10 %f6 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f6
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.1695
tail_b.1691 :
	ilw.s	%r0 %f0 l.56
	div.s	%f8 %f0 %f11
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f1 l.90
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f6
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f10
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f6
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f11 %f0 %f10
	mul.s	%f8 %f6 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f11 %f6 %f6
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.88
	mul.s	%f11 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.1695
branching_b.1071 :
	neg.s	%f8 %f1
	ilw.s	%r0 %f0 l.81
	fbge	%f1 %f0 branching_b.1072
tail_b.1692 :
	ilw.s	%r0 %f9 l.58
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f6
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.86
	mul.s	%f1 %f6 %f6
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f1 %f6 %f6
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.88
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.1695
branching_b.1072 :
	ilw.s	%r0 %f0 l.82
	fbge	%f1 %f0 tail_b.1694
tail_b.1693 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f6
	add.s	%f0 %f1 %f0
	div.s	%f0 %f6 %f9
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f6 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f11
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f11 %f11
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f1
	mul.s	%f8 %f11 %f0
	add.s	%f0 %f1 %f11
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f1
	mul.s	%f8 %f11 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f10 %f0 %f1
	j	tail_b.1695
tail_b.1694 :
	ilw.s	%r0 %f6 l.56
	div.s	%f1 %f6 %f9
	ilw.s	%r0 %f10 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f11
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f1
	mul.s	%f8 %f11 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f6 %f0 %f1
tail_b.1695 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f1 %f0
branching_b.1073 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f6
	lw.s	%r0 %f1 556
	lw	%r8 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	fbge	%f5 %f2 tail_b.1698
tail_b.1697 :
	neg.s	%f5 %f0
	j	branching_b.1074
tail_b.1698 :
	mov.s	%f5 %f0
branching_b.1074 :
	fbge	%f0 %f7 tail_b.1700
tail_b.1699 :
	addi	%r0 %r1 1
	j	branching_b.1075
tail_b.1700 :
	addi	%r0 %r1 0
branching_b.1075 :
	beq	%r1 %r5 branching_b.1076
tail_b.1710 :
	ilw.s	%r0 %f1 l.79
	j	branching_b.1082
branching_b.1076 :
	div.s	%f5 %f1 %f0
	fbge	%f0 %f2 tail_b.1702
tail_b.1701 :
	neg.s	%f0 %f7
	j	branching_b.1077
tail_b.1702 :
	mov.s	%f0 %f7
branching_b.1077 :
	fbg	%f2 %f7 branching_b.1080
branching_b.1078 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1079
tail_b.1703 :
	ilw.s	%r0 %f9 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f1
	mul.s	%f5 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.1709
branching_b.1079 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.1705
tail_b.1704 :
	ilw.s	%r0 %f5 l.56
	sub.s	%f5 %f7 %f0
	add.s	%f5 %f7 %f1
	div.s	%f1 %f0 %f8
	ilw.s	%r0 %f9 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.1709
tail_b.1705 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f7
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f8 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f7 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f10
	mul.s	%f9 %f5 %f0
	add.s	%f0 %f10 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f7 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f1 %f0 %f1
	j	tail_b.1709
branching_b.1080 :
	neg.s	%f7 %f7
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1081
tail_b.1706 :
	ilw.s	%r0 %f8 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.1709
branching_b.1081 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.1708
tail_b.1707 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f7 %f1
	add.s	%f0 %f7 %f0
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f10 l.59
	neg.s	%f0 %f1
	mul.s	%f0 %f1 %f5
	ilw.s	%r0 %f1 l.83
	mul.s	%f0 %f1 %f8
	ilw.s	%r0 %f1 l.84
	mul.s	%f0 %f1 %f9
	mul.s	%f5 %f8 %f1
	add.s	%f1 %f9 %f8
	ilw.s	%r0 %f1 l.85
	mul.s	%f0 %f1 %f1
	mul.s	%f5 %f8 %f8
	add.s	%f8 %f1 %f8
	ilw.s	%r0 %f1 l.86
	mul.s	%f0 %f1 %f9
	mul.s	%f5 %f8 %f1
	add.s	%f1 %f9 %f8
	ilw.s	%r0 %f1 l.87
	mul.s	%f0 %f1 %f1
	mul.s	%f5 %f8 %f8
	add.s	%f8 %f1 %f9
	ilw.s	%r0 %f1 l.88
	mul.s	%f0 %f1 %f8
	mul.s	%f5 %f9 %f1
	add.s	%f1 %f8 %f1
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.1709
tail_b.1708 :
	ilw.s	%r0 %f1 l.56
	div.s	%f7 %f1 %f7
	ilw.s	%r0 %f9 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f8 l.84
	mul.s	%f7 %f8 %f8
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f10
	mul.s	%f5 %f8 %f0
	add.s	%f0 %f10 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f8 %f8
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f8 l.88
	mul.s	%f7 %f8 %f8
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f1 %f0 %f1
tail_b.1709 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f1 %f1
branching_b.1082 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f7
	ilw.s	%r0 %f1 l.91
	ilw.s	%r0 %f0 l.62
	sub.s	%f6 %f0 %f5
	mul.s	%f5 %f5 %f5
	sub.s	%f5 %f1 %f1
	sub.s	%f7 %f0 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f2 tail_b.1712
tail_b.1711 :
	addi	%r0 %r1 1
	j	branching_b.1083
tail_b.1712 :
	addi	%r0 %r1 0
branching_b.1083 :
	beq	%r1 %r5 tail_b.1713
tail_b.1714 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.1715
tail_b.1713 :
	mov.s	%f0 %f1
tail_b.1715 :
	ilw.s	%r0 %f0 l.52
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.92
	div.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
preloop_b.48 :
	lw	%r0 %r10 536
	mov	%r5 %r9
shadow_check_one_or_matrix_loop.2 :
	slli	%r9 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r11 0
	mov	%r11 %r1
	lw	%r1 %r2 0
	addi	%r0 %r1 -1
	beq	%r2 %r1 tail_b.1717
branching_b.1085 :
	addi	%r0 %r1 99
	beq	%r2 %r1 tail_b.1718
branching_b.1086 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r12 0
	lw.s	%r0 %f1 552
	lw	%r12 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f7
	lw.s	%r0 %f0 556
	lw	%r12 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f6
	lw.s	%r0 %f1 560
	lw	%r12 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f8
	slli	%r2 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r2 0
	lw	%r12 %r13 4
	beq	%r13 %r7 branching_b.1087
branching_b.1114 :
	addi	%r0 %r1 2
	beq	%r13 %r1 branching_b.1115
branching_b.1117 :
	mov	%r2 %r1
	lw.s	%r1 %f5 0
	fbne	%f5 %f2 tail_b.1770
tail_b.1769 :
	addi	%r0 %r1 1
	j	branching_b.1118
tail_b.1770 :
	addi	%r0 %r1 0
	j	branching_b.1118
branching_b.1115 :
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.1766
tail_b.1765 :
	addi	%r0 %r1 1
	j	branching_b.1116
tail_b.1766 :
	addi	%r0 %r1 0
	j	branching_b.1116
branching_b.1087 :
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	sub.s	%f7 %f0 %f0
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f5
	lw.s	%r0 %f0 740
	mul.s	%f0 %f5 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f2 tail_b.1720
tail_b.1719 :
	neg.s	%f0 %f0
	j	branching_b.1088
tail_b.1720 :
	j	branching_b.1088
tail_b.1718 :
	addi	%r0 %r1 1
	j	branching_b.1128
tail_b.1717 :
	addi	%r0 %r1 0
postloop_b.47 :
branching_b.1130 :
	beq	%r1 %r5 branching_b.1131
tail_b.1796 :
	j	tail_b.2032
branching_b.1131 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f3 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	lw.s	%r0 %f3 320
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.1792
tail_b.1791 :
	addi	%r0 %r1 1
	j	branching_b.1132
tail_b.1792 :
	addi	%r0 %r1 0
branching_b.1132 :
	beq	%r1 %r5 tail_b.1793
tail_b.1794 :
	j	tail_b.1795
tail_b.1793 :
	ilw.s	%r0 %f0 l.51
tail_b.1795 :
	mul.s	%f0 %f4 %f1
	lw	%r8 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
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
	j	tail_b.2032
branching_b.1128 :
	beq	%r1 %r5 tail_b.1788
branching_b.1129 :
	addi	%r0 %r1 1
	sw	%r26 %r9 -40
	sw	%r26 %r10 -36
	sw	%r26 %r7 -32
	sw	%r26 %r8 -28
	sw.s	%r26 %f3 -24
	sw.s	%r26 %f4 -20
	sw.s	%r26 %f2 -16
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw	%r26 %r6 -4
	sw	%r26 %r3 0
	mov	%r11 %r2
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	lw	%r26 %r9 -40
	lw	%r26 %r10 -36
	lw	%r26 %r7 -32
	lw	%r26 %r8 -28
	lw.s	%r26 %f3 -24
	lw.s	%r26 %f4 -20
	lw.s	%r26 %f2 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw	%r26 %r6 -4
	lw	%r26 %r3 0
	beq	%r1 %r5 tail_b.1789
tail_b.1790 :
	addi	%r0 %r1 1
	j	postloop_b.47
tail_b.1789 :
	addi	%r9 %r1 1
	mov	%r1 %r9
	j	shadow_check_one_or_matrix_loop.2
tail_b.1788 :
	addi	%r9 %r1 1
	mov	%r1 %r9
	j	shadow_check_one_or_matrix_loop.2
branching_b.1088 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.1722
tail_b.1721 :
	addi	%r0 %r1 1
	j	branching_b.1089
tail_b.1722 :
	addi	%r0 %r1 0
branching_b.1089 :
	beq	%r1 %r5 tail_b.1723
branching_b.1090 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f5 %f0
	add.s	%f8 %f0 %f0
	fbge	%f0 %f2 tail_b.1725
tail_b.1724 :
	neg.s	%f0 %f1
	j	branching_b.1091
tail_b.1725 :
	mov.s	%f0 %f1
	j	branching_b.1091
tail_b.1723 :
	addi	%r0 %r1 0
branching_b.1095 :
	beq	%r1 %r5 branching_b.1096
tail_b.1764 :
	sw.s	%r0 %f5 540
	addi	%r0 %r1 1
	j	branching_b.1124
branching_b.1096 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f6 %f0 %f0
	addi	%r2 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 736
	mul.s	%f0 %f1 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f2 tail_b.1734
tail_b.1733 :
	neg.s	%f0 %f0
	j	branching_b.1097
tail_b.1734 :
branching_b.1097 :
	lw	%r12 %r1 16
	lw.s	%r1 %f5 0
	fbge	%f0 %f5 tail_b.1736
tail_b.1735 :
	addi	%r0 %r1 1
	j	branching_b.1098
tail_b.1736 :
	addi	%r0 %r1 0
branching_b.1098 :
	beq	%r1 %r5 tail_b.1737
branching_b.1099 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f1 %f0
	add.s	%f8 %f0 %f0
	fbge	%f0 %f2 tail_b.1739
tail_b.1738 :
	neg.s	%f0 %f5
	j	branching_b.1100
tail_b.1739 :
	mov.s	%f0 %f5
	j	branching_b.1100
tail_b.1737 :
	addi	%r0 %r1 0
branching_b.1104 :
	beq	%r1 %r5 branching_b.1105
tail_b.1763 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 2
	j	branching_b.1124
branching_b.1105 :
	addi	%r2 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f8 %f0 %f0
	addi	%r2 %r1 20
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f5
	lw.s	%r0 %f0 736
	mul.s	%f0 %f5 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f2 tail_b.1748
tail_b.1747 :
	neg.s	%f0 %f1
	j	branching_b.1106
tail_b.1748 :
	mov.s	%f0 %f1
branching_b.1106 :
	lw	%r12 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1750
tail_b.1749 :
	addi	%r0 %r1 1
	j	branching_b.1107
tail_b.1750 :
	addi	%r0 %r1 0
branching_b.1107 :
	beq	%r1 %r5 tail_b.1751
branching_b.1108 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f5 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f2 tail_b.1753
tail_b.1752 :
	neg.s	%f0 %f0
	j	branching_b.1109
tail_b.1753 :
	j	branching_b.1109
tail_b.1751 :
	addi	%r0 %r1 0
branching_b.1113 :
	beq	%r1 %r5 tail_b.1761
tail_b.1762 :
	sw.s	%r0 %f5 540
	addi	%r0 %r1 3
	j	branching_b.1124
tail_b.1761 :
	addi	%r0 %r1 0
	j	branching_b.1124
branching_b.1109 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.1755
tail_b.1754 :
	addi	%r0 %r1 1
	j	branching_b.1110
tail_b.1755 :
	addi	%r0 %r1 0
branching_b.1110 :
	beq	%r1 %r5 tail_b.1756
branching_b.1111 :
	addi	%r2 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.1758
tail_b.1757 :
	addi	%r0 %r1 1
	j	branching_b.1112
tail_b.1758 :
	addi	%r0 %r1 0
	j	branching_b.1112
tail_b.1756 :
	addi	%r0 %r1 0
	j	branching_b.1113
branching_b.1112 :
	beq	%r1 %r5 tail_b.1759
tail_b.1760 :
	addi	%r0 %r1 0
	j	branching_b.1113
tail_b.1759 :
	addi	%r0 %r1 1
	j	branching_b.1113
branching_b.1100 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f5 %f0 tail_b.1741
tail_b.1740 :
	addi	%r0 %r1 1
	j	branching_b.1101
tail_b.1741 :
	addi	%r0 %r1 0
branching_b.1101 :
	beq	%r1 %r5 tail_b.1742
branching_b.1102 :
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.1744
tail_b.1743 :
	addi	%r0 %r1 1
	j	branching_b.1103
tail_b.1744 :
	addi	%r0 %r1 0
	j	branching_b.1103
tail_b.1742 :
	addi	%r0 %r1 0
	j	branching_b.1104
branching_b.1103 :
	beq	%r1 %r5 tail_b.1745
tail_b.1746 :
	addi	%r0 %r1 0
	j	branching_b.1104
tail_b.1745 :
	addi	%r0 %r1 1
	j	branching_b.1104
branching_b.1124 :
	bne	%r1 %r5 branching_b.1125
tail_b.1787 :
	addi	%r0 %r1 0
	j	branching_b.1128
branching_b.1125 :
	lw.s	%r0 %f0 540
	fbge	%f0 %f3 tail_b.1783
tail_b.1782 :
	addi	%r0 %r1 1
	j	branching_b.1126
tail_b.1783 :
	addi	%r0 %r1 0
branching_b.1126 :
	beq	%r1 %r5 tail_b.1784
branching_b.1127 :
	addi	%r0 %r1 1
	sw	%r26 %r11 -44
	sw	%r26 %r9 -40
	sw	%r26 %r10 -36
	sw	%r26 %r7 -32
	sw	%r26 %r8 -28
	sw.s	%r26 %f3 -24
	sw.s	%r26 %f4 -20
	sw.s	%r26 %f2 -16
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw	%r26 %r6 -4
	sw	%r26 %r3 0
	mov	%r11 %r2
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw	%r26 %r11 -44
	lw	%r26 %r9 -40
	lw	%r26 %r10 -36
	lw	%r26 %r7 -32
	lw	%r26 %r8 -28
	lw.s	%r26 %f3 -24
	lw.s	%r26 %f4 -20
	lw.s	%r26 %f2 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw	%r26 %r6 -4
	lw	%r26 %r3 0
	beq	%r1 %r5 tail_b.1785
tail_b.1786 :
	addi	%r0 %r1 1
	j	branching_b.1128
tail_b.1785 :
	addi	%r0 %r1 0
	j	branching_b.1128
tail_b.1784 :
	addi	%r0 %r1 0
	j	branching_b.1128
branching_b.1091 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1727
tail_b.1726 :
	addi	%r0 %r1 1
	j	branching_b.1092
tail_b.1727 :
	addi	%r0 %r1 0
branching_b.1092 :
	beq	%r1 %r5 tail_b.1728
branching_b.1093 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.1730
tail_b.1729 :
	addi	%r0 %r1 1
	j	branching_b.1094
tail_b.1730 :
	addi	%r0 %r1 0
	j	branching_b.1094
tail_b.1728 :
	addi	%r0 %r1 0
	j	branching_b.1095
branching_b.1094 :
	beq	%r1 %r5 tail_b.1731
tail_b.1732 :
	addi	%r0 %r1 0
	j	branching_b.1095
tail_b.1731 :
	addi	%r0 %r1 1
	j	branching_b.1095
branching_b.1116 :
	beq	%r1 %r5 tail_b.1767
tail_b.1768 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.1124
tail_b.1767 :
	addi	%r0 %r1 0
	j	branching_b.1124
branching_b.1118 :
	beq	%r1 %r5 branching_b.1119
tail_b.1781 :
	addi	%r0 %r1 0
	j	branching_b.1124
branching_b.1119 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f10
	mul.s	%f7 %f7 %f0
	lw	%r12 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	mul.s	%f6 %f6 %f0
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f8 %f9
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f9 %f1
	add.s	%f1 %f0 %f0
	lw	%r12 %r1 12
	beq	%r1 %r5 tail_b.1771
tail_b.1772 :
	mul.s	%f8 %f6 %f9
	lw	%r12 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f9 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f8 %f1
	lw	%r12 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f8 0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f6 %f7 %f0
	lw	%r12 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	j	branching_b.1120
tail_b.1771 :
branching_b.1120 :
	lw	%r12 %r13 4
	addi	%r0 %r1 3
	beq	%r13 %r1 tail_b.1773
tail_b.1774 :
	j	branching_b.1121
tail_b.1773 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f0 %f0
branching_b.1121 :
	mul.s	%f10 %f10 %f1
	mul.s	%f0 %f5 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f2 %f0 tail_b.1776
tail_b.1775 :
	addi	%r0 %r1 1
	j	branching_b.1122
tail_b.1776 :
	addi	%r0 %r1 0
branching_b.1122 :
	beq	%r1 %r5 tail_b.1777
branching_b.1123 :
	lw	%r12 %r1 24
	beq	%r1 %r5 tail_b.1778
tail_b.1779 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f10 %f0
	addi	%r2 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1780
tail_b.1778 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f10 %f0
	addi	%r2 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1780
tail_b.1777 :
	addi	%r0 %r1 0
	j	branching_b.1124
tail_b.1780 :
	addi	%r0 %r1 1
	j	branching_b.1124
branching_b.1034 :
	lw	%r8 %r2 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f2 tail_b.1647
tail_b.1646 :
	addi	%r0 %r1 1
	j	branching_b.1035
tail_b.1647 :
	addi	%r0 %r1 0
branching_b.1035 :
	beq	%r1 %r5 branching_b.1036
tail_b.1650 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.1651
branching_b.1036 :
	beq	%r2 %r5 tail_b.1648
tail_b.1649 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f1
	j	tail_b.1651
tail_b.1648 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f1
tail_b.1651 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1037
tail_b.1628 :
	addi	%r8 %r1 1
	mov	%r1 %r8
	j	trace_or_matrix_fast_loop.2
branching_b.986 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	fbge	%f5 %f3 tail_b.1567
tail_b.1566 :
	addi	%r0 %r1 1
	j	branching_b.987
tail_b.1567 :
	addi	%r0 %r1 0
branching_b.987 :
	beq	%r1 %r5 tail_b.1568
branching_b.988 :
	addi	%r7 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f1 %f3
	add.s	%f7 %f3 %f3
	fbge	%f3 %f2 tail_b.1570
tail_b.1569 :
	neg.s	%f3 %f5
	j	branching_b.989
tail_b.1570 :
	mov.s	%f3 %f5
	j	branching_b.989
tail_b.1568 :
	addi	%r0 %r1 0
branching_b.993 :
	beq	%r1 %r5 branching_b.994
tail_b.1609 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 1
	j	branching_b.1020
branching_b.994 :
	addi	%r13 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f3
	addi	%r13 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f3
	mov	%r7 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f1
	add.s	%f6 %f1 %f1
	fbge	%f1 %f2 tail_b.1579
tail_b.1578 :
	neg.s	%f1 %f5
	j	branching_b.995
tail_b.1579 :
	mov.s	%f1 %f5
branching_b.995 :
	lw	%r12 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f5 %f1 tail_b.1581
tail_b.1580 :
	addi	%r0 %r1 1
	j	branching_b.996
tail_b.1581 :
	addi	%r0 %r1 0
branching_b.996 :
	beq	%r1 %r5 tail_b.1582
branching_b.997 :
	addi	%r7 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f1
	add.s	%f7 %f1 %f1
	fbge	%f1 %f2 tail_b.1584
tail_b.1583 :
	neg.s	%f1 %f5
	j	branching_b.998
tail_b.1584 :
	mov.s	%f1 %f5
	j	branching_b.998
tail_b.1582 :
	addi	%r0 %r1 0
branching_b.1002 :
	beq	%r1 %r5 branching_b.1003
tail_b.1608 :
	sw.s	%r0 %f3 540
	addi	%r0 %r1 2
	j	branching_b.1020
branching_b.1003 :
	addi	%r13 %r1 16
	lw.s	%r1 %f1 0
	sub.s	%f7 %f1 %f3
	addi	%r13 %r1 20
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f3
	mov	%r7 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f1
	add.s	%f6 %f1 %f1
	fbge	%f1 %f2 tail_b.1593
tail_b.1592 :
	neg.s	%f1 %f5
	j	branching_b.1004
tail_b.1593 :
	mov.s	%f1 %f5
branching_b.1004 :
	lw	%r12 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f5 %f1 tail_b.1595
tail_b.1594 :
	addi	%r0 %r1 1
	j	branching_b.1005
tail_b.1595 :
	addi	%r0 %r1 0
branching_b.1005 :
	beq	%r1 %r5 tail_b.1596
branching_b.1006 :
	addi	%r7 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f1
	add.s	%f0 %f1 %f0
	fbge	%f0 %f2 tail_b.1598
tail_b.1597 :
	neg.s	%f0 %f0
	j	branching_b.1007
tail_b.1598 :
	j	branching_b.1007
tail_b.1596 :
	addi	%r0 %r1 0
branching_b.1011 :
	beq	%r1 %r5 tail_b.1606
tail_b.1607 :
	sw.s	%r0 %f3 540
	addi	%r0 %r1 3
	j	branching_b.1020
tail_b.1606 :
	addi	%r0 %r1 0
	j	branching_b.1020
branching_b.1007 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.1600
tail_b.1599 :
	addi	%r0 %r1 1
	j	branching_b.1008
tail_b.1600 :
	addi	%r0 %r1 0
branching_b.1008 :
	beq	%r1 %r5 tail_b.1601
branching_b.1009 :
	addi	%r13 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.1603
tail_b.1602 :
	addi	%r0 %r1 1
	j	branching_b.1010
tail_b.1603 :
	addi	%r0 %r1 0
	j	branching_b.1010
tail_b.1601 :
	addi	%r0 %r1 0
	j	branching_b.1011
branching_b.1010 :
	beq	%r1 %r5 tail_b.1604
tail_b.1605 :
	addi	%r0 %r1 0
	j	branching_b.1011
tail_b.1604 :
	addi	%r0 %r1 1
	j	branching_b.1011
branching_b.998 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f5 %f1 tail_b.1586
tail_b.1585 :
	addi	%r0 %r1 1
	j	branching_b.999
tail_b.1586 :
	addi	%r0 %r1 0
branching_b.999 :
	beq	%r1 %r5 tail_b.1587
branching_b.1000 :
	addi	%r13 %r1 12
	lw.s	%r1 %f1 0
	fbne	%f1 %f2 tail_b.1589
tail_b.1588 :
	addi	%r0 %r1 1
	j	branching_b.1001
tail_b.1589 :
	addi	%r0 %r1 0
	j	branching_b.1001
tail_b.1587 :
	addi	%r0 %r1 0
	j	branching_b.1002
branching_b.1001 :
	beq	%r1 %r5 tail_b.1590
tail_b.1591 :
	addi	%r0 %r1 0
	j	branching_b.1002
tail_b.1590 :
	addi	%r0 %r1 1
	j	branching_b.1002
branching_b.1020 :
	bne	%r1 %r5 branching_b.1021
tail_b.1627 :
	j	tail_b.1628
branching_b.1021 :
	lw.s	%r0 %f0 540
	lw.s	%r0 %f1 548
	fbge	%f0 %f1 tail_b.1624
tail_b.1623 :
	addi	%r0 %r1 1
	j	branching_b.1022
tail_b.1624 :
	addi	%r0 %r1 0
branching_b.1022 :
	beq	%r1 %r5 tail_b.1625
tail_b.1626 :
	addi	%r0 %r1 1
	sw	%r26 %r8 -32
	sw	%r26 %r2 -28
	sw.s	%r26 %f4 -24
	sw	%r26 %r9 -20
	sw.s	%r26 %f2 -16
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw	%r26 %r6 -4
	sw	%r26 %r3 0
	mov	%r9 %r3
	mov	%r10 %r2
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r8 -32
	lw	%r26 %r2 -28
	lw.s	%r26 %f4 -24
	lw	%r26 %r9 -20
	lw.s	%r26 %f2 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw	%r26 %r6 -4
	lw	%r26 %r3 0
	j	tail_b.1628
tail_b.1625 :
	j	tail_b.1628
branching_b.989 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	fbge	%f5 %f3 tail_b.1572
tail_b.1571 :
	addi	%r0 %r1 1
	j	branching_b.990
tail_b.1572 :
	addi	%r0 %r1 0
branching_b.990 :
	beq	%r1 %r5 tail_b.1573
branching_b.991 :
	addi	%r13 %r1 4
	lw.s	%r1 %f3 0
	fbne	%f3 %f2 tail_b.1575
tail_b.1574 :
	addi	%r0 %r1 1
	j	branching_b.992
tail_b.1575 :
	addi	%r0 %r1 0
	j	branching_b.992
tail_b.1573 :
	addi	%r0 %r1 0
	j	branching_b.993
branching_b.992 :
	beq	%r1 %r5 tail_b.1576
tail_b.1577 :
	addi	%r0 %r1 0
	j	branching_b.993
tail_b.1576 :
	addi	%r0 %r1 1
	j	branching_b.993
branching_b.1014 :
	beq	%r1 %r5 tail_b.1612
tail_b.1613 :
	mov	%r13 %r1
	lw.s	%r1 %f0 0
	addi	%r11 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.1020
tail_b.1612 :
	addi	%r0 %r1 0
	j	branching_b.1020
branching_b.1016 :
	beq	%r1 %r5 branching_b.1017
tail_b.1622 :
	addi	%r0 %r1 0
	j	branching_b.1020
branching_b.1017 :
	addi	%r13 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f6 %f3 %f3
	addi	%r13 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f3 %f3
	addi	%r13 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f3 %f3
	addi	%r11 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f3 %f3 %f5
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f5 %f0
	fbge	%f2 %f0 tail_b.1617
tail_b.1616 :
	addi	%r0 %r1 1
	j	branching_b.1018
tail_b.1617 :
	addi	%r0 %r1 0
branching_b.1018 :
	beq	%r1 %r5 tail_b.1618
branching_b.1019 :
	lw	%r12 %r1 24
	beq	%r1 %r5 tail_b.1619
tail_b.1620 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f3 %f1
	addi	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1621
tail_b.1619 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f3 %f1
	addi	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1621
tail_b.1618 :
	addi	%r0 %r1 0
	j	branching_b.1020
tail_b.1621 :
	addi	%r0 %r1 1
	j	branching_b.1020
postloop_b.48 :
branching_b.1174 :
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f4 l.70
	fbge	%f4 %f1 tail_b.1865
tail_b.1864 :
	addi	%r0 %r1 1
	j	branching_b.1175
tail_b.1865 :
	addi	%r0 %r1 0
branching_b.1175 :
	beq	%r1 %r5 tail_b.1866
branching_b.1176 :
	ilw.s	%r0 %f0 l.71
	fbge	%f1 %f0 tail_b.1868
tail_b.1867 :
	addi	%r0 %r1 1
	j	branching_b.1177
tail_b.1868 :
	addi	%r0 %r1 0
	j	branching_b.1177
tail_b.1866 :
	addi	%r0 %r1 0
branching_b.1177 :
	beq	%r1 %r5 tail_b.1869
branching_b.1178 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r8 0
	lw	%r2 %r2 0
	lw	%r8 %r1 4
	addi	%r0 %r7 1
	beq	%r1 %r7 branching_b.1179
branching_b.1183 :
	addi	%r0 %r2 2
	beq	%r1 %r2 tail_b.1878
branching_b.1184 :
	lw.s	%r0 %f0 552
	lw	%r8 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f5
	lw.s	%r0 %f1 556
	lw	%r8 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f6
	lw.s	%r0 %f0 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f7
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f9
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f7 %f10
	lw	%r8 %r1 12
	beq	%r1 %r5 tail_b.1879
tail_b.1880 :
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f8
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f7 %f1
	add.s	%f1 %f8 %f1
	ilw.s	%r0 %f8 l.67
	div.s	%f8 %f1 %f1
	add.s	%f1 %f9 %f1
	sw.s	%r0 %f1 568
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f5 %f1
	lw	%r8 %r1 36
	lw.s	%r1 %f9 0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f1 %f1
	div.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f1
	lw	%r8 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	div.s	%f8 %f0 %f0
	add.s	%f0 %f10 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1185
tail_b.1879 :
	sw.s	%r0 %f9 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f10 576
	j	branching_b.1185
tail_b.1878 :
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1188
branching_b.1179 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r9 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r2 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.1871
tail_b.1870 :
	addi	%r0 %r1 1
	j	branching_b.1180
tail_b.1871 :
	addi	%r0 %r1 0
	j	branching_b.1180
tail_b.1869 :
	j	tail_b.2032
branching_b.1180 :
	beq	%r1 %r5 branching_b.1181
tail_b.1876 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1877
branching_b.1181 :
	fbge	%f2 %f0 tail_b.1873
tail_b.1872 :
	addi	%r0 %r1 1
	j	branching_b.1182
tail_b.1873 :
	addi	%r0 %r1 0
branching_b.1182 :
	beq	%r1 %r5 tail_b.1874
tail_b.1875 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.1877
tail_b.1874 :
	ilw.s	%r0 %f0 l.58
tail_b.1877 :
	neg.s	%f0 %f0
	slli	%r9 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1188 :
	lw	%r8 %r2 0
	lw	%r8 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r8 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r8 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r2 %r7 branching_b.1189
branching_b.1194 :
	addi	%r0 %r1 2
	beq	%r2 %r1 preloop_b.50
branching_b.1204 :
	addi	%r0 %r1 3
	beq	%r2 %r1 preloop_b.51
branching_b.1214 :
	addi	%r0 %r1 4
	beq	%r2 %r1 branching_b.1215
tail_b.1951 :
	j	preloop_b.52
branching_b.1215 :
	lw.s	%r0 %f0 552
	lw	%r8 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f7
	lw.s	%r0 %f1 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f1
	mul.s	%f7 %f7 %f5
	mul.s	%f1 %f1 %f0
	add.s	%f0 %f5 %f5
	fbge	%f7 %f2 tail_b.1919
tail_b.1918 :
	neg.s	%f7 %f0
	j	branching_b.1216
tail_b.1919 :
	mov.s	%f7 %f0
	j	branching_b.1216
preloop_b.51 :
	lw.s	%r0 %f0 552
	lw	%r8 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f5
	lw.s	%r0 %f0 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	mul.s	%f5 %f5 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.74
	div.s	%f1 %f0 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.76
	mul.s	%f0 %f1 %f0
	mov.s	%f0 %f5
cos_loop.7 :
	ilw.s	%r0 %f0 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f5 branching_b.1206
tail_b.1907 :
	sub.s	%f1 %f5 %f0
	mov.s	%f0 %f5
	j	cos_loop.7
branching_b.1206 :
	fbge	%f5 %f2 branching_b.1207
tail_b.1908 :
	add.s	%f1 %f5 %f0
	mov.s	%f0 %f5
	j	cos_loop.7
branching_b.1207 :
	fbg	%f0 %f5 branching_b.1211
branching_b.1208 :
	sub.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f5 branching_b.1210
branching_b.1209 :
	sub.s	%f5 %f0 %f0
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f5 l.59
	fbg	%f0 %f5 tail_b.1910
tail_b.1909 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.50
tail_b.1910 :
	sub.s	%f0 %f1 %f1
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f8
	mul.s	%f6 %f5 %f0
	add.s	%f0 %f8 %f5
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f7 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.50
branching_b.1210 :
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.1912
tail_b.1911 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.50
tail_b.1912 :
	sub.s	%f5 %f1 %f7
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f5 l.64
	mul.s	%f7 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.65
	mul.s	%f7 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.56
	mul.s	%f7 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.50
branching_b.1211 :
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f5 branching_b.1213
branching_b.1212 :
	sub.s	%f5 %f0 %f0
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f5 l.59
	fbg	%f0 %f5 tail_b.1914
tail_b.1913 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.50
tail_b.1914 :
	sub.s	%f0 %f1 %f1
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f9
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f5
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f1 %f6 %f0
	mul.s	%f8 %f5 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.50
branching_b.1213 :
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.1916
tail_b.1915 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f1
	ilw.s	%r0 %f5 l.62
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.50
tail_b.1916 :
	sub.s	%f5 %f1 %f7
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f7 %f1 %f8
	ilw.s	%r0 %f1 l.64
	mul.s	%f7 %f1 %f5
	mul.s	%f0 %f8 %f1
	add.s	%f1 %f5 %f5
	ilw.s	%r0 %f1 l.65
	mul.s	%f7 %f1 %f1
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f1 %f5
	mul.s	%f7 %f6 %f1
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.50
preloop_b.50 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	mov.s	%f0 %f1
sin_loop.7 :
	ilw.s	%r0 %f7 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f1 branching_b.1196
tail_b.1896 :
	sub.s	%f0 %f1 %f0
	mov.s	%f0 %f1
	j	sin_loop.7
branching_b.1196 :
	fbge	%f1 %f2 branching_b.1197
tail_b.1897 :
	add.s	%f0 %f1 %f0
	mov.s	%f0 %f1
	j	sin_loop.7
branching_b.1197 :
	fbg	%f7 %f1 branching_b.1201
branching_b.1198 :
	sub.s	%f7 %f1 %f0
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f0 branching_b.1200
branching_b.1199 :
	sub.s	%f0 %f7 %f1
	ilw.s	%r0 %f0 l.59
	fbg	%f1 %f0 tail_b.1899
tail_b.1898 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f7
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f0
	mul.s	%f5 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f0
	mul.s	%f5 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.56
	mul.s	%f1 %f0 %f0
	mul.s	%f5 %f7 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.49
tail_b.1899 :
	sub.s	%f1 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.56
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.49
branching_b.1200 :
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.1901
tail_b.1900 :
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f7
	ilw.s	%r0 %f1 l.63
	mul.s	%f0 %f1 %f5
	ilw.s	%r0 %f1 l.64
	mul.s	%f0 %f1 %f1
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f1 %f5
	ilw.s	%r0 %f1 l.65
	mul.s	%f0 %f1 %f1
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f1 %f5
	ilw.s	%r0 %f1 l.56
	mul.s	%f0 %f1 %f1
	mul.s	%f7 %f5 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.49
tail_b.1901 :
	sub.s	%f0 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.56
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.49
branching_b.1201 :
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f1 branching_b.1203
branching_b.1202 :
	sub.s	%f1 %f7 %f7
	ilw.s	%r0 %f0 l.59
	fbg	%f7 %f0 tail_b.1903
tail_b.1902 :
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f7 %f1 %f1
	ilw.s	%r0 %f5 l.64
	mul.s	%f7 %f5 %f5
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f8
	ilw.s	%r0 %f1 l.65
	mul.s	%f7 %f1 %f5
	mul.s	%f0 %f8 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f7 %f6 %f5
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.49
tail_b.1903 :
	sub.s	%f7 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.49
branching_b.1203 :
	ilw.s	%r0 %f0 l.59
	fbg	%f1 %f0 tail_b.1905
tail_b.1904 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f5 l.64
	mul.s	%f1 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.65
	mul.s	%f1 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f6 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.49
tail_b.1905 :
	sub.s	%f1 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.49
branching_b.1189 :
	lw.s	%r0 %f0 552
	lw	%r8 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f5
	ilw.s	%r0 %f7 l.72
	mul.s	%f7 %f5 %f0
	floor.w.s	%f0 %f1
	ilw.s	%r0 %f0 l.73
	mul.s	%f0 %f1 %f1
	sub.s	%f1 %f5 %f5
	ilw.s	%r0 %f1 l.74
	fbge	%f5 %f1 tail_b.1888
tail_b.1887 :
	addi	%r0 %r2 1
	j	branching_b.1190
tail_b.1888 :
	addi	%r0 %r2 0
branching_b.1190 :
	lw.s	%r0 %f6 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	sub.s	%f5 %f6 %f6
	mul.s	%f7 %f6 %f5
	floor.w.s	%f5 %f5
	mul.s	%f0 %f5 %f0
	sub.s	%f0 %f6 %f0
	fbge	%f0 %f1 tail_b.1890
tail_b.1889 :
	addi	%r0 %r1 1
	j	branching_b.1191
tail_b.1890 :
	addi	%r0 %r1 0
branching_b.1191 :
	beq	%r2 %r5 branching_b.1192
branching_b.1193 :
	beq	%r1 %r5 tail_b.1893
tail_b.1894 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.1895
tail_b.1893 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1895
branching_b.1192 :
	beq	%r1 %r5 tail_b.1891
tail_b.1892 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1895
tail_b.1891 :
	ilw.s	%r0 %f0 l.52
tail_b.1895 :
	sw.s	%r0 %f0 584
	j	preloop_b.52
postloop_b.49 :
tail_b.1906 :
	mul.s	%f0 %f0 %f5
	ilw.s	%r0 %f1 l.52
	mul.s	%f5 %f1 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f5 %f0 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 584
	j	preloop_b.52
postloop_b.50 :
tail_b.1917 :
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f5 l.52
	mul.s	%f5 %f1 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	sw.s	%r0 %f0 588
	j	preloop_b.52
branching_b.1216 :
	ilw.s	%r0 %f6 l.77
	fbge	%f0 %f6 tail_b.1921
tail_b.1920 :
	addi	%r0 %r1 1
	j	branching_b.1217
tail_b.1921 :
	addi	%r0 %r1 0
branching_b.1217 :
	beq	%r1 %r5 branching_b.1218
tail_b.1931 :
	ilw.s	%r0 %f1 l.79
	j	branching_b.1224
branching_b.1218 :
	div.s	%f7 %f1 %f0
	fbge	%f0 %f2 tail_b.1923
tail_b.1922 :
	neg.s	%f0 %f1
	j	branching_b.1219
tail_b.1923 :
	mov.s	%f0 %f1
branching_b.1219 :
	fbg	%f2 %f1 branching_b.1222
branching_b.1220 :
	ilw.s	%r0 %f0 l.81
	fbge	%f1 %f0 branching_b.1221
tail_b.1924 :
	ilw.s	%r0 %f9 l.56
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f1 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f10
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f10 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.88
	mul.s	%f1 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.1930
branching_b.1221 :
	ilw.s	%r0 %f0 l.82
	fbge	%f1 %f0 tail_b.1926
tail_b.1925 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f1 %f0
	add.s	%f7 %f1 %f1
	div.s	%f1 %f0 %f8
	ilw.s	%r0 %f10 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f9 l.84
	mul.s	%f8 %f9 %f9
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f9 l.85
	mul.s	%f8 %f9 %f9
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f9 %f9
	add.s	%f9 %f0 %f0
	ilw.s	%r0 %f9 l.87
	mul.s	%f8 %f9 %f9
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f9 %f9
	add.s	%f9 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.1930
tail_b.1926 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f11
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f10 l.90
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f11 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f8
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f8 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f11 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f11 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.1930
branching_b.1222 :
	neg.s	%f1 %f11
	ilw.s	%r0 %f0 l.81
	fbge	%f11 %f0 branching_b.1223
tail_b.1927 :
	ilw.s	%r0 %f0 l.58
	neg.s	%f11 %f1
	mul.s	%f11 %f1 %f7
	ilw.s	%r0 %f1 l.83
	mul.s	%f11 %f1 %f1
	ilw.s	%r0 %f8 l.84
	mul.s	%f11 %f8 %f8
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f8 %f1
	ilw.s	%r0 %f8 l.85
	mul.s	%f11 %f8 %f8
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f8 %f1
	ilw.s	%r0 %f8 l.86
	mul.s	%f11 %f8 %f8
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f8 %f9
	ilw.s	%r0 %f1 l.87
	mul.s	%f11 %f1 %f8
	mul.s	%f7 %f9 %f1
	add.s	%f1 %f8 %f9
	ilw.s	%r0 %f1 l.88
	mul.s	%f11 %f1 %f8
	mul.s	%f7 %f9 %f1
	add.s	%f1 %f8 %f1
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f11 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f0 %f1 %f0
	j	tail_b.1930
branching_b.1223 :
	ilw.s	%r0 %f0 l.82
	fbge	%f11 %f0 tail_b.1929
tail_b.1928 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f11 %f1
	add.s	%f0 %f11 %f0
	div.s	%f0 %f1 %f1
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f9 l.59
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f1 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f10 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f11
	mul.s	%f10 %f7 %f0
	add.s	%f0 %f11 %f0
	ilw.s	%r0 %f7 l.87
	mul.s	%f1 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f11
	ilw.s	%r0 %f0 l.88
	mul.s	%f1 %f0 %f7
	mul.s	%f10 %f11 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.1930
tail_b.1929 :
	ilw.s	%r0 %f10 l.56
	div.s	%f11 %f10 %f9
	ilw.s	%r0 %f8 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f9 %f7 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f11
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f7
	mul.s	%f1 %f11 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f10 %f0 %f0
tail_b.1930 :
	ilw.s	%r0 %f1 l.89
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.76
	div.s	%f1 %f0 %f1
branching_b.1224 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f7
	lw.s	%r0 %f1 556
	lw	%r8 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	fbge	%f5 %f2 tail_b.1933
tail_b.1932 :
	neg.s	%f5 %f1
	j	branching_b.1225
tail_b.1933 :
	mov.s	%f5 %f1
branching_b.1225 :
	fbge	%f1 %f6 tail_b.1935
tail_b.1934 :
	addi	%r0 %r1 1
	j	branching_b.1226
tail_b.1935 :
	addi	%r0 %r1 0
branching_b.1226 :
	beq	%r1 %r5 branching_b.1227
tail_b.1945 :
	ilw.s	%r0 %f1 l.79
	j	branching_b.1233
branching_b.1227 :
	div.s	%f5 %f0 %f0
	fbge	%f0 %f2 tail_b.1937
tail_b.1936 :
	neg.s	%f0 %f5
	j	branching_b.1228
tail_b.1937 :
	mov.s	%f0 %f5
branching_b.1228 :
	fbg	%f2 %f5 branching_b.1231
branching_b.1229 :
	ilw.s	%r0 %f0 l.81
	fbge	%f5 %f0 branching_b.1230
tail_b.1938 :
	ilw.s	%r0 %f6 l.56
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f8 l.84
	mul.s	%f5 %f8 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f8 l.86
	mul.s	%f5 %f8 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f8 l.88
	mul.s	%f5 %f8 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.1944
branching_b.1230 :
	ilw.s	%r0 %f0 l.82
	fbge	%f5 %f0 tail_b.1940
tail_b.1939 :
	ilw.s	%r0 %f9 l.56
	sub.s	%f9 %f5 %f0
	add.s	%f9 %f5 %f1
	div.s	%f1 %f0 %f8
	ilw.s	%r0 %f5 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f6 l.84
	mul.s	%f8 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f10
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f6 l.86
	mul.s	%f8 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f8 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.88
	mul.s	%f8 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.1944
tail_b.1940 :
	ilw.s	%r0 %f0 l.56
	div.s	%f5 %f0 %f0
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f6 l.90
	neg.s	%f0 %f1
	mul.s	%f0 %f1 %f10
	ilw.s	%r0 %f1 l.83
	mul.s	%f0 %f1 %f5
	ilw.s	%r0 %f1 l.84
	mul.s	%f0 %f1 %f1
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f1 %f1
	ilw.s	%r0 %f5 l.85
	mul.s	%f0 %f5 %f5
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f5 %f5
	ilw.s	%r0 %f1 l.86
	mul.s	%f0 %f1 %f8
	mul.s	%f10 %f5 %f1
	add.s	%f1 %f8 %f1
	ilw.s	%r0 %f5 l.87
	mul.s	%f0 %f5 %f5
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f5 %f1
	ilw.s	%r0 %f5 l.88
	mul.s	%f0 %f5 %f5
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.1944
branching_b.1231 :
	neg.s	%f5 %f6
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 branching_b.1232
tail_b.1941 :
	ilw.s	%r0 %f8 l.58
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f6 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.1944
branching_b.1232 :
	ilw.s	%r0 %f0 l.82
	fbge	%f6 %f0 tail_b.1943
tail_b.1942 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f6 %f0
	add.s	%f1 %f6 %f1
	div.s	%f1 %f0 %f10
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f9 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f1
	mul.s	%f5 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f10 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f10 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.1944
tail_b.1943 :
	ilw.s	%r0 %f8 l.56
	div.s	%f6 %f8 %f5
	ilw.s	%r0 %f9 l.90
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f10
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f5 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
tail_b.1944 :
	ilw.s	%r0 %f1 l.89
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.76
	div.s	%f1 %f0 %f1
branching_b.1233 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f6 l.91
	ilw.s	%r0 %f5 l.62
	sub.s	%f7 %f5 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f6 %f1
	sub.s	%f0 %f5 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f2 tail_b.1947
tail_b.1946 :
	addi	%r0 %r1 1
	j	branching_b.1234
tail_b.1947 :
	addi	%r0 %r1 0
branching_b.1234 :
	beq	%r1 %r5 tail_b.1948
tail_b.1949 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1950
tail_b.1948 :
tail_b.1950 :
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.92
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
preloop_b.52 :
	lw	%r0 %r9 536
	mov	%r5 %r11
shadow_check_one_or_matrix_loop.1 :
	slli	%r11 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r12 0
	mov	%r12 %r1
	lw	%r1 %r10 0
	addi	%r0 %r1 -1
	beq	%r10 %r1 tail_b.1952
branching_b.1236 :
	addi	%r0 %r1 99
	beq	%r10 %r1 tail_b.1953
branching_b.1237 :
	slli	%r10 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r2 0
	lw.s	%r0 %f0 552
	lw	%r2 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f8
	lw.s	%r0 %f0 556
	lw	%r2 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f6
	lw.s	%r0 %f1 560
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	slli	%r10 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r13 0
	lw	%r2 %r1 4
	beq	%r1 %r7 branching_b.1238
branching_b.1265 :
	addi	%r0 %r10 2
	beq	%r1 %r10 branching_b.1266
branching_b.1268 :
	mov	%r13 %r1
	lw.s	%r1 %f5 0
	fbne	%f5 %f2 tail_b.2005
tail_b.2004 :
	addi	%r0 %r1 1
	j	branching_b.1269
tail_b.2005 :
	addi	%r0 %r1 0
	j	branching_b.1269
branching_b.1266 :
	mov	%r13 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.2001
tail_b.2000 :
	addi	%r0 %r1 1
	j	branching_b.1267
tail_b.2001 :
	addi	%r0 %r1 0
	j	branching_b.1267
branching_b.1238 :
	mov	%r13 %r1
	lw.s	%r1 %f0 0
	sub.s	%f8 %f0 %f0
	addi	%r13 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f7
	lw.s	%r0 %f0 740
	mul.s	%f0 %f7 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f2 tail_b.1955
tail_b.1954 :
	neg.s	%f0 %f0
	j	branching_b.1239
tail_b.1955 :
	j	branching_b.1239
tail_b.1953 :
	addi	%r0 %r1 1
	j	branching_b.1279
tail_b.1952 :
	addi	%r0 %r1 0
postloop_b.51 :
branching_b.1281 :
	beq	%r1 %r5 branching_b.1282
tail_b.2031 :
	j	tail_b.2032
branching_b.1282 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f4 572
	lw.s	%r0 %f1 316
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f4
	lw.s	%r0 %f0 576
	lw.s	%r0 %f1 320
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2027
tail_b.2026 :
	addi	%r0 %r1 1
	j	branching_b.1283
tail_b.2027 :
	addi	%r0 %r1 0
branching_b.1283 :
	beq	%r1 %r5 tail_b.2028
tail_b.2029 :
	j	tail_b.2030
tail_b.2028 :
	ilw.s	%r0 %f0 l.51
tail_b.2030 :
	mul.s	%f0 %f3 %f0
	lw	%r8 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f2 592
	lw.s	%r0 %f0 580
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f0 596
	lw.s	%r0 %f2 584
	mul.s	%f2 %f1 %f2
	add.s	%f2 %f0 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f2 600
	lw.s	%r0 %f0 588
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2032
branching_b.1279 :
	beq	%r1 %r5 tail_b.2023
branching_b.1280 :
	addi	%r0 %r1 1
	sw	%r26 %r11 -40
	sw	%r26 %r9 -36
	sw	%r26 %r7 -32
	sw	%r26 %r8 -28
	sw.s	%r26 %f4 -24
	sw.s	%r26 %f3 -20
	sw.s	%r26 %f2 -16
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw	%r26 %r6 -4
	sw	%r26 %r3 0
	mov	%r12 %r2
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	lw	%r26 %r11 -40
	lw	%r26 %r9 -36
	lw	%r26 %r7 -32
	lw	%r26 %r8 -28
	lw.s	%r26 %f4 -24
	lw.s	%r26 %f3 -20
	lw.s	%r26 %f2 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw	%r26 %r6 -4
	lw	%r26 %r3 0
	beq	%r1 %r5 tail_b.2024
tail_b.2025 :
	addi	%r0 %r1 1
	j	postloop_b.51
tail_b.2024 :
	addi	%r11 %r1 1
	mov	%r1 %r11
	j	shadow_check_one_or_matrix_loop.1
tail_b.2023 :
	addi	%r11 %r1 1
	mov	%r1 %r11
	j	shadow_check_one_or_matrix_loop.1
branching_b.1239 :
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	fbge	%f0 %f5 tail_b.1957
tail_b.1956 :
	addi	%r0 %r1 1
	j	branching_b.1240
tail_b.1957 :
	addi	%r0 %r1 0
branching_b.1240 :
	beq	%r1 %r5 tail_b.1958
branching_b.1241 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f7 %f0
	add.s	%f1 %f0 %f0
	fbge	%f0 %f2 tail_b.1960
tail_b.1959 :
	neg.s	%f0 %f5
	j	branching_b.1242
tail_b.1960 :
	mov.s	%f0 %f5
	j	branching_b.1242
tail_b.1958 :
	addi	%r0 %r1 0
branching_b.1246 :
	beq	%r1 %r5 branching_b.1247
tail_b.1999 :
	sw.s	%r0 %f7 540
	addi	%r0 %r1 1
	j	branching_b.1275
branching_b.1247 :
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f6 %f0 %f5
	addi	%r13 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f5
	lw.s	%r0 %f0 736
	mul.s	%f0 %f5 %f0
	add.s	%f8 %f0 %f0
	fbge	%f0 %f2 tail_b.1969
tail_b.1968 :
	neg.s	%f0 %f7
	j	branching_b.1248
tail_b.1969 :
	mov.s	%f0 %f7
branching_b.1248 :
	lw	%r2 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f7 %f0 tail_b.1971
tail_b.1970 :
	addi	%r0 %r1 1
	j	branching_b.1249
tail_b.1971 :
	addi	%r0 %r1 0
branching_b.1249 :
	beq	%r1 %r5 tail_b.1972
branching_b.1250 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f5 %f0
	add.s	%f1 %f0 %f0
	fbge	%f0 %f2 tail_b.1974
tail_b.1973 :
	neg.s	%f0 %f0
	j	branching_b.1251
tail_b.1974 :
	j	branching_b.1251
tail_b.1972 :
	addi	%r0 %r1 0
branching_b.1255 :
	beq	%r1 %r5 branching_b.1256
tail_b.1998 :
	sw.s	%r0 %f5 540
	addi	%r0 %r1 2
	j	branching_b.1275
branching_b.1256 :
	addi	%r13 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f1
	addi	%r13 %r1 20
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f5
	lw.s	%r0 %f0 736
	mul.s	%f0 %f5 %f0
	add.s	%f8 %f0 %f0
	fbge	%f0 %f2 tail_b.1983
tail_b.1982 :
	neg.s	%f0 %f1
	j	branching_b.1257
tail_b.1983 :
	mov.s	%f0 %f1
branching_b.1257 :
	lw	%r2 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1985
tail_b.1984 :
	addi	%r0 %r1 1
	j	branching_b.1258
tail_b.1985 :
	addi	%r0 %r1 0
branching_b.1258 :
	beq	%r1 %r5 tail_b.1986
branching_b.1259 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f5 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f2 tail_b.1988
tail_b.1987 :
	neg.s	%f0 %f1
	j	branching_b.1260
tail_b.1988 :
	mov.s	%f0 %f1
	j	branching_b.1260
tail_b.1986 :
	addi	%r0 %r1 0
branching_b.1264 :
	beq	%r1 %r5 tail_b.1996
tail_b.1997 :
	sw.s	%r0 %f5 540
	addi	%r0 %r1 3
	j	branching_b.1275
tail_b.1996 :
	addi	%r0 %r1 0
	j	branching_b.1275
branching_b.1260 :
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1990
tail_b.1989 :
	addi	%r0 %r1 1
	j	branching_b.1261
tail_b.1990 :
	addi	%r0 %r1 0
branching_b.1261 :
	beq	%r1 %r5 tail_b.1991
branching_b.1262 :
	addi	%r13 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.1993
tail_b.1992 :
	addi	%r0 %r1 1
	j	branching_b.1263
tail_b.1993 :
	addi	%r0 %r1 0
	j	branching_b.1263
tail_b.1991 :
	addi	%r0 %r1 0
	j	branching_b.1264
branching_b.1263 :
	beq	%r1 %r5 tail_b.1994
tail_b.1995 :
	addi	%r0 %r1 0
	j	branching_b.1264
tail_b.1994 :
	addi	%r0 %r1 1
	j	branching_b.1264
branching_b.1251 :
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	fbge	%f0 %f7 tail_b.1976
tail_b.1975 :
	addi	%r0 %r1 1
	j	branching_b.1252
tail_b.1976 :
	addi	%r0 %r1 0
branching_b.1252 :
	beq	%r1 %r5 tail_b.1977
branching_b.1253 :
	addi	%r13 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.1979
tail_b.1978 :
	addi	%r0 %r1 1
	j	branching_b.1254
tail_b.1979 :
	addi	%r0 %r1 0
	j	branching_b.1254
tail_b.1977 :
	addi	%r0 %r1 0
	j	branching_b.1255
branching_b.1254 :
	beq	%r1 %r5 tail_b.1980
tail_b.1981 :
	addi	%r0 %r1 0
	j	branching_b.1255
tail_b.1980 :
	addi	%r0 %r1 1
	j	branching_b.1255
branching_b.1275 :
	bne	%r1 %r5 branching_b.1276
tail_b.2022 :
	addi	%r0 %r1 0
	j	branching_b.1279
branching_b.1276 :
	lw.s	%r0 %f0 540
	fbge	%f0 %f4 tail_b.2018
tail_b.2017 :
	addi	%r0 %r1 1
	j	branching_b.1277
tail_b.2018 :
	addi	%r0 %r1 0
branching_b.1277 :
	beq	%r1 %r5 tail_b.2019
branching_b.1278 :
	addi	%r0 %r1 1
	sw	%r26 %r12 -44
	sw	%r26 %r11 -40
	sw	%r26 %r9 -36
	sw	%r26 %r7 -32
	sw	%r26 %r8 -28
	sw.s	%r26 %f4 -24
	sw.s	%r26 %f3 -20
	sw.s	%r26 %f2 -16
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw	%r26 %r6 -4
	sw	%r26 %r3 0
	mov	%r12 %r2
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw	%r26 %r12 -44
	lw	%r26 %r11 -40
	lw	%r26 %r9 -36
	lw	%r26 %r7 -32
	lw	%r26 %r8 -28
	lw.s	%r26 %f4 -24
	lw.s	%r26 %f3 -20
	lw.s	%r26 %f2 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw	%r26 %r6 -4
	lw	%r26 %r3 0
	beq	%r1 %r5 tail_b.2020
tail_b.2021 :
	addi	%r0 %r1 1
	j	branching_b.1279
tail_b.2020 :
	addi	%r0 %r1 0
	j	branching_b.1279
tail_b.2019 :
	addi	%r0 %r1 0
	j	branching_b.1279
branching_b.1242 :
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f5 %f0 tail_b.1962
tail_b.1961 :
	addi	%r0 %r1 1
	j	branching_b.1243
tail_b.1962 :
	addi	%r0 %r1 0
branching_b.1243 :
	beq	%r1 %r5 tail_b.1963
branching_b.1244 :
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.1965
tail_b.1964 :
	addi	%r0 %r1 1
	j	branching_b.1245
tail_b.1965 :
	addi	%r0 %r1 0
	j	branching_b.1245
tail_b.1963 :
	addi	%r0 %r1 0
	j	branching_b.1246
branching_b.1245 :
	beq	%r1 %r5 tail_b.1966
tail_b.1967 :
	addi	%r0 %r1 0
	j	branching_b.1246
tail_b.1966 :
	addi	%r0 %r1 1
	j	branching_b.1246
branching_b.1267 :
	beq	%r1 %r5 tail_b.2002
tail_b.2003 :
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f5
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f5
	addi	%r13 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.1275
tail_b.2002 :
	addi	%r0 %r1 0
	j	branching_b.1275
branching_b.1269 :
	beq	%r1 %r5 branching_b.1270
tail_b.2016 :
	addi	%r0 %r1 0
	j	branching_b.1275
branching_b.1270 :
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f7
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f7
	addi	%r13 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f9
	mul.s	%f8 %f8 %f7
	lw	%r2 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f10
	mul.s	%f6 %f6 %f7
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f10 %f10
	mul.s	%f1 %f1 %f7
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f10 %f10
	lw	%r2 %r1 12
	beq	%r1 %r5 tail_b.2006
tail_b.2007 :
	mul.s	%f1 %f6 %f0
	lw	%r2 %r1 36
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f10 %f7
	mul.s	%f8 %f1 %f1
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f1
	mul.s	%f6 %f8 %f0
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	j	branching_b.1271
tail_b.2006 :
	mov.s	%f10 %f0
branching_b.1271 :
	lw	%r2 %r1 4
	addi	%r0 %r10 3
	beq	%r1 %r10 tail_b.2008
tail_b.2009 :
	j	branching_b.1272
tail_b.2008 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f0 %f0
branching_b.1272 :
	mul.s	%f9 %f9 %f1
	mul.s	%f0 %f5 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f2 %f0 tail_b.2011
tail_b.2010 :
	addi	%r0 %r1 1
	j	branching_b.1273
tail_b.2011 :
	addi	%r0 %r1 0
branching_b.1273 :
	beq	%r1 %r5 tail_b.2012
branching_b.1274 :
	lw	%r2 %r1 24
	beq	%r1 %r5 tail_b.2013
tail_b.2014 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f9 %f1
	addi	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.2015
tail_b.2013 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f9 %f1
	addi	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.2015
tail_b.2012 :
	addi	%r0 %r1 0
	j	branching_b.1275
tail_b.2015 :
	addi	%r0 %r1 1
	j	branching_b.1275
branching_b.1185 :
	lw	%r8 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f1 572
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f2 tail_b.1882
tail_b.1881 :
	addi	%r0 %r2 1
	j	branching_b.1186
tail_b.1882 :
	addi	%r0 %r2 0
branching_b.1186 :
	beq	%r2 %r5 branching_b.1187
tail_b.1885 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.1886
branching_b.1187 :
	beq	%r1 %r5 tail_b.1883
tail_b.1884 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f1
	j	tail_b.1886
tail_b.1883 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f1
tail_b.1886 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1188
tail_b.1863 :
	addi	%r10 %r1 1
	mov	%r1 %r10
	j	trace_or_matrix_fast_loop.1
branching_b.1137 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1802
tail_b.1801 :
	addi	%r0 %r1 1
	j	branching_b.1138
tail_b.1802 :
	addi	%r0 %r1 0
branching_b.1138 :
	beq	%r1 %r5 tail_b.1803
branching_b.1139 :
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f2 tail_b.1805
tail_b.1804 :
	neg.s	%f0 %f0
	j	branching_b.1140
tail_b.1805 :
	j	branching_b.1140
tail_b.1803 :
	addi	%r0 %r1 0
branching_b.1144 :
	beq	%r1 %r5 branching_b.1145
tail_b.1844 :
	sw.s	%r0 %f7 540
	addi	%r0 %r1 1
	j	branching_b.1171
branching_b.1145 :
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f0
	addi	%r9 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f2 tail_b.1814
tail_b.1813 :
	neg.s	%f0 %f7
	j	branching_b.1146
tail_b.1814 :
	mov.s	%f0 %f7
branching_b.1146 :
	lw	%r12 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f7 %f0 tail_b.1816
tail_b.1815 :
	addi	%r0 %r1 1
	j	branching_b.1147
tail_b.1816 :
	addi	%r0 %r1 0
branching_b.1147 :
	beq	%r1 %r5 tail_b.1817
branching_b.1148 :
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f2 tail_b.1819
tail_b.1818 :
	neg.s	%f0 %f0
	j	branching_b.1149
tail_b.1819 :
	j	branching_b.1149
tail_b.1817 :
	addi	%r0 %r1 0
branching_b.1153 :
	beq	%r1 %r5 branching_b.1154
tail_b.1843 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 2
	j	branching_b.1171
branching_b.1154 :
	addi	%r9 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f6 %f0 %f1
	addi	%r9 %r1 20
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f2 tail_b.1828
tail_b.1827 :
	neg.s	%f0 %f4
	j	branching_b.1155
tail_b.1828 :
	mov.s	%f0 %f4
branching_b.1155 :
	lw	%r12 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f4 %f0 tail_b.1830
tail_b.1829 :
	addi	%r0 %r1 1
	j	branching_b.1156
tail_b.1830 :
	addi	%r0 %r1 0
branching_b.1156 :
	beq	%r1 %r5 tail_b.1831
branching_b.1157 :
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f2 tail_b.1833
tail_b.1832 :
	neg.s	%f0 %f0
	j	branching_b.1158
tail_b.1833 :
	j	branching_b.1158
tail_b.1831 :
	addi	%r0 %r1 0
branching_b.1162 :
	beq	%r1 %r5 tail_b.1841
tail_b.1842 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 3
	j	branching_b.1171
tail_b.1841 :
	addi	%r0 %r1 0
	j	branching_b.1171
branching_b.1158 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	fbge	%f0 %f4 tail_b.1835
tail_b.1834 :
	addi	%r0 %r1 1
	j	branching_b.1159
tail_b.1835 :
	addi	%r0 %r1 0
branching_b.1159 :
	beq	%r1 %r5 tail_b.1836
branching_b.1160 :
	addi	%r9 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.1838
tail_b.1837 :
	addi	%r0 %r1 1
	j	branching_b.1161
tail_b.1838 :
	addi	%r0 %r1 0
	j	branching_b.1161
tail_b.1836 :
	addi	%r0 %r1 0
	j	branching_b.1162
branching_b.1161 :
	beq	%r1 %r5 tail_b.1839
tail_b.1840 :
	addi	%r0 %r1 0
	j	branching_b.1162
tail_b.1839 :
	addi	%r0 %r1 1
	j	branching_b.1162
branching_b.1149 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	fbge	%f0 %f7 tail_b.1821
tail_b.1820 :
	addi	%r0 %r1 1
	j	branching_b.1150
tail_b.1821 :
	addi	%r0 %r1 0
branching_b.1150 :
	beq	%r1 %r5 tail_b.1822
branching_b.1151 :
	addi	%r9 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.1824
tail_b.1823 :
	addi	%r0 %r1 1
	j	branching_b.1152
tail_b.1824 :
	addi	%r0 %r1 0
	j	branching_b.1152
tail_b.1822 :
	addi	%r0 %r1 0
	j	branching_b.1153
branching_b.1152 :
	beq	%r1 %r5 tail_b.1825
tail_b.1826 :
	addi	%r0 %r1 0
	j	branching_b.1153
tail_b.1825 :
	addi	%r0 %r1 1
	j	branching_b.1153
branching_b.1171 :
	bne	%r1 %r5 branching_b.1172
tail_b.1862 :
	j	tail_b.1863
branching_b.1172 :
	lw.s	%r0 %f0 540
	lw.s	%r0 %f1 548
	fbge	%f0 %f1 tail_b.1859
tail_b.1858 :
	addi	%r0 %r1 1
	j	branching_b.1173
tail_b.1859 :
	addi	%r0 %r1 0
branching_b.1173 :
	beq	%r1 %r5 tail_b.1860
tail_b.1861 :
	addi	%r0 %r1 1
	sw	%r26 %r10 -32
	sw	%r26 %r8 -28
	sw.s	%r26 %f3 -24
	sw	%r26 %r2 -20
	sw.s	%r26 %f2 -16
	sw	%r26 %r5 -12
	sw	%r26 %r4 -8
	sw	%r26 %r6 -4
	sw	%r26 %r3 0
	mov	%r2 %r3
	mov	%r7 %r2
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r10 -32
	lw	%r26 %r8 -28
	lw.s	%r26 %f3 -24
	lw	%r26 %r2 -20
	lw.s	%r26 %f2 -16
	lw	%r26 %r5 -12
	lw	%r26 %r4 -8
	lw	%r26 %r6 -4
	lw	%r26 %r3 0
	j	tail_b.1863
tail_b.1860 :
	j	tail_b.1863
branching_b.1140 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.1807
tail_b.1806 :
	addi	%r0 %r1 1
	j	branching_b.1141
tail_b.1807 :
	addi	%r0 %r1 0
branching_b.1141 :
	beq	%r1 %r5 tail_b.1808
branching_b.1142 :
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.1810
tail_b.1809 :
	addi	%r0 %r1 1
	j	branching_b.1143
tail_b.1810 :
	addi	%r0 %r1 0
	j	branching_b.1143
tail_b.1808 :
	addi	%r0 %r1 0
	j	branching_b.1144
branching_b.1143 :
	beq	%r1 %r5 tail_b.1811
tail_b.1812 :
	addi	%r0 %r1 0
	j	branching_b.1144
tail_b.1811 :
	addi	%r0 %r1 1
	j	branching_b.1144
branching_b.1165 :
	beq	%r1 %r5 tail_b.1847
tail_b.1848 :
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	addi	%r11 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.1171
tail_b.1847 :
	addi	%r0 %r1 0
	j	branching_b.1171
branching_b.1167 :
	beq	%r1 %r5 branching_b.1168
tail_b.1857 :
	addi	%r0 %r1 0
	j	branching_b.1171
branching_b.1168 :
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	addi	%r9 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r9 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f4
	addi	%r11 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f4 %f4 %f0
	mul.s	%f1 %f7 %f1
	sub.s	%f1 %f0 %f0
	fbge	%f2 %f0 tail_b.1852
tail_b.1851 :
	addi	%r0 %r1 1
	j	branching_b.1169
tail_b.1852 :
	addi	%r0 %r1 0
branching_b.1169 :
	beq	%r1 %r5 tail_b.1853
branching_b.1170 :
	lw	%r12 %r1 24
	beq	%r1 %r5 tail_b.1854
tail_b.1855 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f1
	addi	%r9 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1856
tail_b.1854 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f1
	addi	%r9 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1856
tail_b.1853 :
	addi	%r0 %r1 0
	j	branching_b.1171
tail_b.1856 :
	addi	%r0 %r1 1
	j	branching_b.1171
postloop_b.52 :
return_point.20 :
	retl
do_without_neighbors.0 :
	mov	%r1 %r3
preloop_b.53 :
	mov	%r2 %r7
do_without_neighbors_loop.0 :
	addi	%r0 %r6 4
	ble	%r7 %r6 branching_b.1285
tail_b.2848 :
	j	postloop_b.63
branching_b.1285 :
	lw	%r3 %r2 8
	addi	%r0 %r4 0
	slli	%r7 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	ble	%r4 %r1 branching_b.1286
tail_b.2847 :
	j	postloop_b.63
branching_b.1286 :
	lw	%r3 %r1 12
	slli	%r7 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r1 0
	beq	%r1 %r4 tail_b.2034
branching_b.1287 :
	lw	%r3 %r5 20
	lw	%r3 %r2 28
	lw	%r3 %r9 4
	lw	%r3 %r8 16
	slli	%r7 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	mov	%r1 %r5
	lw.s	%r5 %f0 0
	sw.s	%r0 %f0 592
	addi	%r1 %r5 4
	lw.s	%r5 %f0 0
	sw.s	%r0 %f0 596
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 600
	lw	%r3 %r1 24
	lw	%r1 %r10 0
	slli	%r7 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r5 0
	slli	%r7 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r9 0
	bne	%r10 %r4 preloop_b.54
tail_b.2196 :
	j	branching_b.1388
preloop_b.54 :
	lw	%r0 %r12 716
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r2
setup_startp_constants_loop.6 :
	ble	%r4 %r2 branching_b.1289
tail_b.2043 :
	j	postloop_b.53
branching_b.1289 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r14 0
	lw	%r14 %r13 40
	lw	%r14 %r11 4
	mov	%r9 %r1
	lw.s	%r1 %f1 0
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mov	%r13 %r1
	sw.s	%r1 %f0 0
	addi	%r9 %r1 4
	lw.s	%r1 %f1 0
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r13 %r1 4
	sw.s	%r1 %f0 0
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r13 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	beq	%r11 %r1 tail_b.2035
branching_b.1290 :
	bl	%r1 %r11 branching_b.1291
tail_b.2041 :
	j	tail_b.2042
branching_b.1291 :
	mov	%r13 %r1
	lw.s	%r1 %f5 0
	addi	%r13 %r1 4
	lw.s	%r1 %f3 0
	addi	%r13 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f5 %f5 %f1
	lw	%r14 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mul.s	%f3 %f3 %f4
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f2 %f2 %f0
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f4
	lw	%r14 %r1 12
	beq	%r1 %r4 tail_b.2036
tail_b.2037 :
	mul.s	%f2 %f3 %f0
	lw	%r14 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f1
	mul.s	%f5 %f2 %f2
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f3 %f5 %f2
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	j	branching_b.1292
tail_b.2036 :
	mov.s	%f4 %f1
	j	branching_b.1292
tail_b.2035 :
	lw	%r14 %r11 16
	mov	%r13 %r1
	lw.s	%r1 %f1 0
	addi	%r13 %r1 4
	lw.s	%r1 %f2 0
	addi	%r13 %r1 8
	lw.s	%r1 %f3 0
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f1
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r11 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r13 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.2042
tail_b.2034 :
tail_b.2846 :
	addi	%r7 %r1 1
	mov	%r1 %r7
	j	do_without_neighbors_loop.0
branching_b.1292 :
	addi	%r0 %r1 3
	beq	%r11 %r1 tail_b.2038
tail_b.2039 :
	mov.s	%f1 %f0
	j	tail_b.2040
tail_b.2038 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f0
tail_b.2040 :
	addi	%r13 %r1 12
	sw.s	%r1 %f0 0
tail_b.2042 :
	addi	%r2 %r1 -1
	mov	%r1 %r2
	j	setup_startp_constants_loop.6
postloop_b.53 :
preloop_b.55 :
	addi	%r0 %r1 118
	mov	%r1 %r13
iter_trace_diffuse_rays_loop.6 :
	ble	%r4 %r13 branching_b.1294
tail_b.2195 :
	j	postloop_b.54
branching_b.1294 :
	slli	%r13 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	addi	%r2 %r1 4
	lw.s	%r1 %f2 0
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	addi	%r5 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f2 l.51
	fbge	%f1 %f2 tail_b.2045
tail_b.2044 :
	addi	%r0 %r1 1
	j	branching_b.1295
tail_b.2045 :
	addi	%r0 %r1 0
branching_b.1295 :
	beq	%r1 %r4 branching_b.1296
branching_b.1342 :
	addi	%r13 %r1 1
	slli	%r1 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r14 0
	ilw.s	%r0 %f0 l.94
	div.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw.s	%r26 %f3 -48
	sw	%r26 %r14 -44
	sw.s	%r26 %f2 -40
	sw	%r26 %r13 -36
	sw	%r26 %r12 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r14 %r3
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw.s	%r26 %f3 -48
	lw	%r26 %r14 -44
	lw.s	%r26 %f2 -40
	lw	%r26 %r13 -36
	lw	%r26 %r12 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f1 l.70
	fbge	%f1 %f0 tail_b.2121
tail_b.2120 :
	addi	%r0 %r1 1
	j	branching_b.1343
tail_b.2121 :
	addi	%r0 %r1 0
	j	branching_b.1343
branching_b.1296 :
	slli	%r13 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r2 0
	ilw.s	%r0 %f0 l.95
	div.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r11 0
	lw	%r0 %r1 536
	sw.s	%r26 %f3 -48
	sw	%r26 %r2 -44
	sw.s	%r26 %f2 -40
	sw	%r26 %r13 -36
	sw	%r26 %r12 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r2 %r3
	mov	%r1 %r2
	mov	%r11 %r1
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw.s	%r26 %f3 -48
	lw	%r26 %r2 -44
	lw.s	%r26 %f2 -40
	lw	%r26 %r13 -36
	lw	%r26 %r12 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f1 l.70
	fbge	%f1 %f0 tail_b.2047
tail_b.2046 :
	addi	%r0 %r1 1
	j	branching_b.1297
tail_b.2047 :
	addi	%r0 %r1 0
branching_b.1297 :
	beq	%r1 %r4 tail_b.2048
branching_b.1298 :
	ilw.s	%r0 %f1 l.71
	fbge	%f0 %f1 tail_b.2050
tail_b.2049 :
	addi	%r0 %r1 1
	j	branching_b.1299
tail_b.2050 :
	addi	%r0 %r1 0
	j	branching_b.1299
tail_b.2048 :
	addi	%r0 %r1 0
branching_b.1299 :
	beq	%r1 %r4 tail_b.2051
branching_b.1300 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r11 0
	lw	%r2 %r1 0
	lw	%r11 %r2 4
	addi	%r0 %r14 1
	beq	%r2 %r14 branching_b.1301
branching_b.1305 :
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.2060
branching_b.1306 :
	lw.s	%r0 %f0 552
	lw	%r11 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r0 %f1 556
	lw	%r11 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	sub.s	%f4 %f1 %f7
	lw.s	%r0 %f4 560
	lw	%r11 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f4 %f1
	lw	%r11 %r1 16
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f5
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f7 %f9
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f1 %f4
	lw	%r11 %r1 12
	beq	%r1 %r4 tail_b.2061
tail_b.2062 :
	lw	%r11 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f6 %f7 %f6
	lw	%r11 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f8 0
	mul.s	%f8 %f1 %f8
	add.s	%f8 %f6 %f6
	ilw.s	%r0 %f8 l.67
	div.s	%f8 %f6 %f6
	add.s	%f6 %f5 %f5
	sw.s	%r0 %f5 568
	lw	%r11 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f5
	lw	%r11 %r1 36
	lw.s	%r1 %f6 0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	div.s	%f8 %f1 %f1
	add.s	%f1 %f9 %f1
	sw.s	%r0 %f1 572
	lw	%r11 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r11 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	div.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1307
tail_b.2061 :
	sw.s	%r0 %f5 568
	sw.s	%r0 %f9 572
	sw.s	%r0 %f4 576
	j	branching_b.1307
tail_b.2060 :
	lw	%r11 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1310
branching_b.1301 :
	lw	%r0 %r2 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r2 %r15 -1
	addi	%r2 %r2 -1
	slli	%r2 %r2 2
	add	%r1 %r2 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.2053
tail_b.2052 :
	addi	%r0 %r1 1
	j	branching_b.1302
tail_b.2053 :
	addi	%r0 %r1 0
	j	branching_b.1302
tail_b.2051 :
tail_b.2194 :
	addi	%r13 %r1 -2
	mov	%r1 %r13
	j	iter_trace_diffuse_rays_loop.6
branching_b.1302 :
	beq	%r1 %r4 branching_b.1303
tail_b.2058 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2059
branching_b.1303 :
	fbge	%f2 %f0 tail_b.2055
tail_b.2054 :
	addi	%r0 %r1 1
	j	branching_b.1304
tail_b.2055 :
	addi	%r0 %r1 0
branching_b.1304 :
	beq	%r1 %r4 tail_b.2056
tail_b.2057 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2059
tail_b.2056 :
	ilw.s	%r0 %f0 l.58
tail_b.2059 :
	neg.s	%f0 %f0
	slli	%r15 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1310 :
	lw	%r11 %r2 0
	lw	%r11 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r11 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r11 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r2 %r14 branching_b.1311
branching_b.1316 :
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.2078
branching_b.1317 :
	addi	%r0 %r1 3
	beq	%r2 %r1 tail_b.2079
branching_b.1318 :
	beq	%r2 %r6 branching_b.1319
tail_b.2113 :
	j	branching_b.1339
branching_b.1319 :
	lw.s	%r0 %f0 552
	lw	%r11 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r11 %r1 16
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f4
	lw.s	%r0 %f0 560
	lw	%r11 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f1
	mul.s	%f4 %f4 %f0
	mul.s	%f1 %f1 %f5
	add.s	%f5 %f0 %f5
	fbge	%f4 %f2 tail_b.2081
tail_b.2080 :
	neg.s	%f4 %f0
	j	branching_b.1320
tail_b.2081 :
	mov.s	%f4 %f0
	j	branching_b.1320
tail_b.2079 :
	lw.s	%r0 %f0 552
	lw	%r11 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw.s	%r0 %f0 560
	lw	%r11 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sub.s	%f4 %f0 %f4
	mul.s	%f1 %f1 %f0
	mul.s	%f4 %f4 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.74
	div.s	%f1 %f0 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.76
	mul.s	%f1 %f0 %f0
	sw	%r26 %r11 -48
	sw.s	%r26 %f3 -44
	sw.s	%r26 %f2 -40
	sw	%r26 %r13 -36
	sw	%r26 %r12 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	cos.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw	%r26 %r11 -48
	lw.s	%r26 %f3 -44
	lw.s	%r26 %f2 -40
	lw	%r26 %r13 -36
	lw	%r26 %r12 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f1 l.52
	mul.s	%f1 %f4 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f4 %f0 %f0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1339
tail_b.2078 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	sw	%r26 %r11 -48
	sw.s	%r26 %f3 -44
	sw.s	%r26 %f2 -40
	sw	%r26 %r13 -36
	sw	%r26 %r12 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	sin.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw	%r26 %r11 -48
	lw.s	%r26 %f3 -44
	lw.s	%r26 %f2 -40
	lw	%r26 %r13 -36
	lw	%r26 %r12 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f1 l.52
	mul.s	%f4 %f1 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f4 %f0 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1339
branching_b.1311 :
	lw.s	%r0 %f0 552
	lw	%r11 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f4
	ilw.s	%r0 %f1 l.72
	mul.s	%f1 %f4 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f5 l.73
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f4 %f0
	ilw.s	%r0 %f6 l.74
	fbge	%f0 %f6 tail_b.2070
tail_b.2069 :
	addi	%r0 %r2 1
	j	branching_b.1312
tail_b.2070 :
	addi	%r0 %r2 0
branching_b.1312 :
	lw.s	%r0 %f0 560
	lw	%r11 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sub.s	%f4 %f0 %f4
	mul.s	%f1 %f4 %f0
	floor.w.s	%f0 %f0
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f4 %f0
	fbge	%f0 %f6 tail_b.2072
tail_b.2071 :
	addi	%r0 %r1 1
	j	branching_b.1313
tail_b.2072 :
	addi	%r0 %r1 0
branching_b.1313 :
	beq	%r2 %r4 branching_b.1314
branching_b.1315 :
	beq	%r1 %r4 tail_b.2075
tail_b.2076 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2077
tail_b.2075 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2077
branching_b.1314 :
	beq	%r1 %r4 tail_b.2073
tail_b.2074 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2077
tail_b.2073 :
	ilw.s	%r0 %f0 l.52
tail_b.2077 :
	sw.s	%r0 %f0 584
	j	branching_b.1339
branching_b.1320 :
	ilw.s	%r0 %f6 l.77
	fbge	%f0 %f6 tail_b.2083
tail_b.2082 :
	addi	%r0 %r1 1
	j	branching_b.1321
tail_b.2083 :
	addi	%r0 %r1 0
branching_b.1321 :
	beq	%r1 %r4 branching_b.1322
tail_b.2093 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1328
branching_b.1322 :
	div.s	%f4 %f1 %f0
	fbge	%f0 %f2 tail_b.2085
tail_b.2084 :
	neg.s	%f0 %f4
	j	branching_b.1323
tail_b.2085 :
	mov.s	%f0 %f4
branching_b.1323 :
	fbg	%f2 %f4 branching_b.1326
branching_b.1324 :
	ilw.s	%r0 %f0 l.81
	fbge	%f4 %f0 branching_b.1325
tail_b.2086 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f9
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f9 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f4 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2092
branching_b.1325 :
	ilw.s	%r0 %f0 l.82
	fbge	%f4 %f0 tail_b.2088
tail_b.2087 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f4 %f0
	add.s	%f1 %f4 %f4
	div.s	%f4 %f0 %f8
	ilw.s	%r0 %f9 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f4
	mul.s	%f7 %f10 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.88
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2092
tail_b.2088 :
	ilw.s	%r0 %f0 l.56
	div.s	%f4 %f0 %f7
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f4 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f1
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f7 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f10 %f0 %f0
	j	tail_b.2092
branching_b.1326 :
	neg.s	%f4 %f4
	ilw.s	%r0 %f0 l.81
	fbge	%f4 %f0 branching_b.1327
tail_b.2089 :
	ilw.s	%r0 %f9 l.58
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f8
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f8 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f8
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f4 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f1
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f4 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.2092
branching_b.1327 :
	ilw.s	%r0 %f0 l.82
	fbge	%f4 %f0 tail_b.2091
tail_b.2090 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f4 %f1
	add.s	%f0 %f4 %f0
	div.s	%f0 %f1 %f7
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f1 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f8
	mul.s	%f10 %f4 %f0
	add.s	%f0 %f8 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f0 %f8
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f4
	mul.s	%f10 %f8 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.2092
tail_b.2091 :
	ilw.s	%r0 %f10 l.56
	div.s	%f4 %f10 %f9
	ilw.s	%r0 %f1 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f8
	mul.s	%f7 %f4 %f0
	add.s	%f0 %f8 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f4
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f0
tail_b.2092 :
	ilw.s	%r0 %f1 l.89
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f1 %f0
branching_b.1328 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f1 556
	lw	%r11 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	fbge	%f5 %f2 tail_b.2095
tail_b.2094 :
	neg.s	%f5 %f1
	j	branching_b.1329
tail_b.2095 :
	mov.s	%f5 %f1
branching_b.1329 :
	fbge	%f1 %f6 tail_b.2097
tail_b.2096 :
	addi	%r0 %r1 1
	j	branching_b.1330
tail_b.2097 :
	addi	%r0 %r1 0
branching_b.1330 :
	beq	%r1 %r4 branching_b.1331
tail_b.2107 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1337
branching_b.1331 :
	div.s	%f5 %f0 %f0
	fbge	%f0 %f2 tail_b.2099
tail_b.2098 :
	neg.s	%f0 %f7
	j	branching_b.1332
tail_b.2099 :
	mov.s	%f0 %f7
branching_b.1332 :
	fbg	%f2 %f7 branching_b.1335
branching_b.1333 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1334
tail_b.2100 :
	ilw.s	%r0 %f8 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f7 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f7 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f5
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2106
branching_b.1334 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.2102
tail_b.2101 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f7 %f5
	add.s	%f1 %f7 %f0
	div.s	%f0 %f5 %f6
	ilw.s	%r0 %f7 l.59
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f9
	mul.s	%f8 %f5 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f6 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f6 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.88
	mul.s	%f6 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2106
tail_b.2102 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f8
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f5 l.90
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f1
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f1 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f1
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.2106
branching_b.1335 :
	neg.s	%f7 %f6
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 branching_b.1336
tail_b.2103 :
	ilw.s	%r0 %f1 l.58
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f6 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f6 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f6 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f6 %f0 %f8
	mul.s	%f7 %f5 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2106
branching_b.1336 :
	ilw.s	%r0 %f0 l.82
	fbge	%f6 %f0 tail_b.2105
tail_b.2104 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f6 %f0
	add.s	%f1 %f6 %f1
	div.s	%f1 %f0 %f5
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f7 l.59
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f1
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f1 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f1
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.2106
tail_b.2105 :
	ilw.s	%r0 %f8 l.56
	div.s	%f6 %f8 %f6
	ilw.s	%r0 %f5 l.90
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f6 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f6 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
tail_b.2106 :
	ilw.s	%r0 %f1 l.89
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.76
	div.s	%f1 %f0 %f0
branching_b.1337 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f6
	ilw.s	%r0 %f1 l.91
	ilw.s	%r0 %f5 l.62
	sub.s	%f4 %f5 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	sub.s	%f6 %f5 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f2 tail_b.2109
tail_b.2108 :
	addi	%r0 %r1 1
	j	branching_b.1338
tail_b.2109 :
	addi	%r0 %r1 0
branching_b.1338 :
	beq	%r1 %r4 tail_b.2110
tail_b.2111 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.2112
tail_b.2110 :
	mov.s	%f0 %f1
tail_b.2112 :
	ilw.s	%r0 %f0 l.52
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.92
	div.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
branching_b.1339 :
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw	%r26 %r11 -48
	sw.s	%r26 %f3 -44
	sw.s	%r26 %f2 -40
	sw	%r26 %r13 -36
	sw	%r26 %r12 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw	%r26 %r11 -48
	lw.s	%r26 %f3 -44
	lw.s	%r26 %f2 -40
	lw	%r26 %r13 -36
	lw	%r26 %r12 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	beq	%r1 %r4 branching_b.1340
tail_b.2119 :
	j	tail_b.2194
branching_b.1340 :
	lw.s	%r0 %f1 568
	lw.s	%r0 %f0 312
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 572
	lw.s	%r0 %f4 316
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f4 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2115
tail_b.2114 :
	addi	%r0 %r1 1
	j	branching_b.1341
tail_b.2115 :
	addi	%r0 %r1 0
branching_b.1341 :
	beq	%r1 %r4 tail_b.2116
tail_b.2117 :
	j	tail_b.2118
tail_b.2116 :
	ilw.s	%r0 %f0 l.51
tail_b.2118 :
	mul.s	%f0 %f3 %f1
	lw	%r11 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f2 592
	lw.s	%r0 %f0 580
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f2 596
	lw.s	%r0 %f0 584
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f2 600
	lw.s	%r0 %f0 588
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2194
branching_b.1307 :
	lw	%r11 %r2 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f2 tail_b.2064
tail_b.2063 :
	addi	%r0 %r1 1
	j	branching_b.1308
tail_b.2064 :
	addi	%r0 %r1 0
branching_b.1308 :
	beq	%r1 %r4 branching_b.1309
tail_b.2067 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.2068
branching_b.1309 :
	beq	%r2 %r4 tail_b.2065
tail_b.2066 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f1
	j	tail_b.2068
tail_b.2065 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f1
tail_b.2068 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1310
branching_b.1343 :
	beq	%r1 %r4 tail_b.2122
branching_b.1344 :
	ilw.s	%r0 %f1 l.71
	fbge	%f0 %f1 tail_b.2124
tail_b.2123 :
	addi	%r0 %r1 1
	j	branching_b.1345
tail_b.2124 :
	addi	%r0 %r1 0
	j	branching_b.1345
tail_b.2122 :
	addi	%r0 %r1 0
branching_b.1345 :
	beq	%r1 %r4 tail_b.2125
branching_b.1346 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r11 0
	lw	%r14 %r15 0
	lw	%r11 %r2 4
	addi	%r0 %r14 1
	beq	%r2 %r14 branching_b.1347
branching_b.1351 :
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.2134
branching_b.1352 :
	lw.s	%r0 %f1 552
	lw	%r11 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw.s	%r0 %f1 556
	lw	%r11 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	sub.s	%f4 %f1 %f5
	lw.s	%r0 %f4 560
	lw	%r11 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f4 %f8
	lw	%r11 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f7
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f5 %f9
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f6
	lw	%r11 %r1 12
	beq	%r1 %r4 tail_b.2135
tail_b.2136 :
	lw	%r11 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f5 %f1
	lw	%r11 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f8 %f4
	add.s	%f4 %f1 %f1
	ilw.s	%r0 %f4 l.67
	div.s	%f4 %f1 %f1
	add.s	%f1 %f7 %f1
	sw.s	%r0 %f1 568
	lw	%r11 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f7
	lw	%r11 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f1
	add.s	%f1 %f7 %f1
	div.s	%f4 %f1 %f1
	add.s	%f1 %f9 %f1
	sw.s	%r0 %f1 572
	lw	%r11 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r11 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f1 %f0
	div.s	%f4 %f0 %f0
	add.s	%f0 %f6 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1353
tail_b.2135 :
	sw.s	%r0 %f7 568
	sw.s	%r0 %f9 572
	sw.s	%r0 %f6 576
	j	branching_b.1353
tail_b.2134 :
	lw	%r11 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1356
branching_b.1347 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r2 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r15 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.2127
tail_b.2126 :
	addi	%r0 %r1 1
	j	branching_b.1348
tail_b.2127 :
	addi	%r0 %r1 0
	j	branching_b.1348
tail_b.2125 :
	j	tail_b.2194
branching_b.1348 :
	beq	%r1 %r4 branching_b.1349
tail_b.2132 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2133
branching_b.1349 :
	fbge	%f2 %f0 tail_b.2129
tail_b.2128 :
	addi	%r0 %r1 1
	j	branching_b.1350
tail_b.2129 :
	addi	%r0 %r1 0
branching_b.1350 :
	beq	%r1 %r4 tail_b.2130
tail_b.2131 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2133
tail_b.2130 :
	ilw.s	%r0 %f0 l.58
tail_b.2133 :
	neg.s	%f0 %f0
	slli	%r2 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1356 :
	lw	%r11 %r1 0
	lw	%r11 %r2 32
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 580
	lw	%r11 %r2 32
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 584
	lw	%r11 %r2 32
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 588
	beq	%r1 %r14 branching_b.1357
branching_b.1362 :
	addi	%r0 %r2 2
	beq	%r1 %r2 tail_b.2152
branching_b.1363 :
	addi	%r0 %r2 3
	beq	%r1 %r2 tail_b.2153
branching_b.1364 :
	beq	%r1 %r6 branching_b.1365
tail_b.2187 :
	j	branching_b.1385
branching_b.1365 :
	lw.s	%r0 %f1 552
	lw	%r11 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r11 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f4
	lw.s	%r0 %f1 560
	lw	%r11 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f5
	mul.s	%f4 %f4 %f0
	mul.s	%f5 %f5 %f1
	add.s	%f1 %f0 %f7
	fbge	%f4 %f2 tail_b.2155
tail_b.2154 :
	neg.s	%f4 %f0
	j	branching_b.1366
tail_b.2155 :
	mov.s	%f4 %f0
	j	branching_b.1366
tail_b.2153 :
	lw.s	%r0 %f0 552
	lw	%r11 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw.s	%r0 %f0 560
	lw	%r11 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sub.s	%f4 %f0 %f0
	mul.s	%f1 %f1 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.74
	div.s	%f0 %f1 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.76
	mul.s	%f1 %f0 %f0
	sw	%r26 %r11 -48
	sw.s	%r26 %f3 -44
	sw.s	%r26 %f2 -40
	sw	%r26 %r13 -36
	sw	%r26 %r12 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	cos.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw	%r26 %r11 -48
	lw.s	%r26 %f3 -44
	lw.s	%r26 %f2 -40
	lw	%r26 %r13 -36
	lw	%r26 %r12 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f4 l.52
	mul.s	%f4 %f1 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1385
tail_b.2152 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	sw	%r26 %r11 -48
	sw.s	%r26 %f3 -44
	sw.s	%r26 %f2 -40
	sw	%r26 %r13 -36
	sw	%r26 %r12 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	sin.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw	%r26 %r11 -48
	lw.s	%r26 %f3 -44
	lw.s	%r26 %f2 -40
	lw	%r26 %r13 -36
	lw	%r26 %r12 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f1 l.52
	mul.s	%f4 %f1 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f4 %f0 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1385
branching_b.1357 :
	lw.s	%r0 %f1 552
	lw	%r11 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.72
	mul.s	%f0 %f1 %f4
	floor.w.s	%f4 %f4
	ilw.s	%r0 %f6 l.73
	mul.s	%f6 %f4 %f4
	sub.s	%f4 %f1 %f1
	ilw.s	%r0 %f5 l.74
	fbge	%f1 %f5 tail_b.2144
tail_b.2143 :
	addi	%r0 %r2 1
	j	branching_b.1358
tail_b.2144 :
	addi	%r0 %r2 0
branching_b.1358 :
	lw.s	%r0 %f1 560
	lw	%r11 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sub.s	%f4 %f1 %f1
	mul.s	%f0 %f1 %f0
	floor.w.s	%f0 %f0
	mul.s	%f6 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f5 tail_b.2146
tail_b.2145 :
	addi	%r0 %r1 1
	j	branching_b.1359
tail_b.2146 :
	addi	%r0 %r1 0
branching_b.1359 :
	beq	%r2 %r4 branching_b.1360
branching_b.1361 :
	beq	%r1 %r4 tail_b.2149
tail_b.2150 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2151
tail_b.2149 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2151
branching_b.1360 :
	beq	%r1 %r4 tail_b.2147
tail_b.2148 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2151
tail_b.2147 :
	ilw.s	%r0 %f0 l.52
tail_b.2151 :
	sw.s	%r0 %f0 584
	j	branching_b.1385
branching_b.1366 :
	ilw.s	%r0 %f6 l.77
	fbge	%f0 %f6 tail_b.2157
tail_b.2156 :
	addi	%r0 %r1 1
	j	branching_b.1367
tail_b.2157 :
	addi	%r0 %r1 0
branching_b.1367 :
	beq	%r1 %r4 branching_b.1368
tail_b.2167 :
	ilw.s	%r0 %f1 l.79
	j	branching_b.1374
branching_b.1368 :
	div.s	%f4 %f5 %f0
	fbge	%f0 %f2 tail_b.2159
tail_b.2158 :
	neg.s	%f0 %f8
	j	branching_b.1369
tail_b.2159 :
	mov.s	%f0 %f8
branching_b.1369 :
	fbg	%f2 %f8 branching_b.1372
branching_b.1370 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1371
tail_b.2160 :
	ilw.s	%r0 %f5 l.56
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f8 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f8 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2166
branching_b.1371 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.2162
tail_b.2161 :
	ilw.s	%r0 %f4 l.56
	sub.s	%f4 %f8 %f0
	add.s	%f4 %f8 %f1
	div.s	%f1 %f0 %f9
	ilw.s	%r0 %f8 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f9 %f1 %f5
	ilw.s	%r0 %f1 l.84
	mul.s	%f9 %f1 %f1
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f1 %f5
	ilw.s	%r0 %f1 l.85
	mul.s	%f9 %f1 %f10
	mul.s	%f0 %f5 %f1
	add.s	%f1 %f10 %f1
	ilw.s	%r0 %f5 l.86
	mul.s	%f9 %f5 %f5
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f1
	ilw.s	%r0 %f5 l.87
	mul.s	%f9 %f5 %f5
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f5
	ilw.s	%r0 %f1 l.88
	mul.s	%f9 %f1 %f1
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f1 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f4 %f0 %f1
	j	tail_b.2166
tail_b.2162 :
	ilw.s	%r0 %f0 l.56
	div.s	%f8 %f0 %f4
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f8 l.90
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f10
	mul.s	%f9 %f1 %f0
	add.s	%f0 %f10 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f4 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f10
	ilw.s	%r0 %f0 l.88
	mul.s	%f4 %f0 %f1
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2166
branching_b.1372 :
	neg.s	%f8 %f4
	ilw.s	%r0 %f0 l.81
	fbge	%f4 %f0 branching_b.1373
tail_b.2163 :
	ilw.s	%r0 %f9 l.58
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f4 %f1 %f8
	ilw.s	%r0 %f1 l.84
	mul.s	%f4 %f1 %f5
	mul.s	%f0 %f8 %f1
	add.s	%f1 %f5 %f5
	ilw.s	%r0 %f1 l.85
	mul.s	%f4 %f1 %f8
	mul.s	%f0 %f5 %f1
	add.s	%f1 %f8 %f5
	ilw.s	%r0 %f1 l.86
	mul.s	%f4 %f1 %f8
	mul.s	%f0 %f5 %f1
	add.s	%f1 %f8 %f5
	ilw.s	%r0 %f1 l.87
	mul.s	%f4 %f1 %f8
	mul.s	%f0 %f5 %f1
	add.s	%f1 %f8 %f5
	ilw.s	%r0 %f1 l.88
	mul.s	%f4 %f1 %f1
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f1 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.2166
branching_b.1373 :
	ilw.s	%r0 %f0 l.82
	fbge	%f4 %f0 tail_b.2165
tail_b.2164 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f4 %f1
	add.s	%f0 %f4 %f0
	div.s	%f0 %f1 %f8
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f5 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f8 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f10
	mul.s	%f4 %f1 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.2166
tail_b.2165 :
	ilw.s	%r0 %f5 l.56
	div.s	%f4 %f5 %f4
	ilw.s	%r0 %f8 l.90
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f4 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f4 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f4 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f1
tail_b.2166 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.76
	div.s	%f1 %f0 %f1
branching_b.1374 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f1 556
	lw	%r11 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	fbge	%f7 %f2 tail_b.2169
tail_b.2168 :
	neg.s	%f7 %f0
	j	branching_b.1375
tail_b.2169 :
	mov.s	%f7 %f0
branching_b.1375 :
	fbge	%f0 %f6 tail_b.2171
tail_b.2170 :
	addi	%r0 %r1 1
	j	branching_b.1376
tail_b.2171 :
	addi	%r0 %r1 0
branching_b.1376 :
	beq	%r1 %r4 branching_b.1377
tail_b.2181 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1383
branching_b.1377 :
	div.s	%f7 %f1 %f0
	fbge	%f0 %f2 tail_b.2173
tail_b.2172 :
	neg.s	%f0 %f6
	j	branching_b.1378
tail_b.2173 :
	mov.s	%f0 %f6
branching_b.1378 :
	fbg	%f2 %f6 branching_b.1381
branching_b.1379 :
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 branching_b.1380
tail_b.2174 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f6 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f6 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f6 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f6 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2180
branching_b.1380 :
	ilw.s	%r0 %f0 l.82
	fbge	%f6 %f0 tail_b.2176
tail_b.2175 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f6 %f1
	add.s	%f7 %f6 %f0
	div.s	%f0 %f1 %f8
	ilw.s	%r0 %f1 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f8 %f4 %f4
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f8 %f4 %f4
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f6
	mul.s	%f9 %f4 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2180
tail_b.2176 :
	ilw.s	%r0 %f0 l.56
	div.s	%f6 %f0 %f9
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f4 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f6
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f6 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f6
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f9 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2180
branching_b.1381 :
	neg.s	%f6 %f6
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 branching_b.1382
tail_b.2177 :
	ilw.s	%r0 %f7 l.58
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f6 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f6 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f8
	mul.s	%f4 %f1 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f6 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f6 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2180
branching_b.1382 :
	ilw.s	%r0 %f0 l.82
	fbge	%f6 %f0 tail_b.2179
tail_b.2178 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f6 %f1
	add.s	%f0 %f6 %f0
	div.s	%f0 %f1 %f9
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f4 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f9 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f6
	mul.s	%f1 %f7 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f7
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f7 %f6
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f7
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2180
tail_b.2179 :
	ilw.s	%r0 %f4 l.56
	div.s	%f6 %f4 %f8
	ilw.s	%r0 %f6 l.90
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f9
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f1
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f4 %f0 %f0
tail_b.2180 :
	ilw.s	%r0 %f1 l.89
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.76
	div.s	%f1 %f0 %f0
branching_b.1383 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f6 l.91
	ilw.s	%r0 %f4 l.62
	sub.s	%f5 %f4 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f6 %f5
	sub.s	%f1 %f4 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f5 %f0
	fbge	%f0 %f2 tail_b.2183
tail_b.2182 :
	addi	%r0 %r1 1
	j	branching_b.1384
tail_b.2183 :
	addi	%r0 %r1 0
branching_b.1384 :
	beq	%r1 %r4 tail_b.2184
tail_b.2185 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2186
tail_b.2184 :
tail_b.2186 :
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.92
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1385 :
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw	%r26 %r11 -48
	sw.s	%r26 %f3 -44
	sw.s	%r26 %f2 -40
	sw	%r26 %r13 -36
	sw	%r26 %r12 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw	%r26 %r11 -48
	lw.s	%r26 %f3 -44
	lw.s	%r26 %f2 -40
	lw	%r26 %r13 -36
	lw	%r26 %r12 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	beq	%r1 %r4 branching_b.1386
tail_b.2193 :
	j	tail_b.2194
branching_b.1386 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f4
	lw.s	%r0 %f1 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	lw.s	%r0 %f1 576
	lw.s	%r0 %f4 320
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2189
tail_b.2188 :
	addi	%r0 %r1 1
	j	branching_b.1387
tail_b.2189 :
	addi	%r0 %r1 0
branching_b.1387 :
	beq	%r1 %r4 tail_b.2190
tail_b.2191 :
	j	tail_b.2192
tail_b.2190 :
	ilw.s	%r0 %f0 l.51
tail_b.2192 :
	mul.s	%f0 %f3 %f0
	lw	%r11 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f2 592
	lw.s	%r0 %f0 580
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f2 596
	lw.s	%r0 %f0 584
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f2 600
	lw.s	%r0 %f0 588
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2194
branching_b.1353 :
	lw	%r11 %r2 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f2 tail_b.2138
tail_b.2137 :
	addi	%r0 %r1 1
	j	branching_b.1354
tail_b.2138 :
	addi	%r0 %r1 0
branching_b.1354 :
	beq	%r1 %r4 branching_b.1355
tail_b.2141 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.2142
branching_b.1355 :
	beq	%r2 %r4 tail_b.2139
tail_b.2140 :
	ilw.s	%r0 %f1 l.58
	div.s	%f0 %f1 %f1
	j	tail_b.2142
tail_b.2139 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f1
tail_b.2142 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1356
postloop_b.54 :
branching_b.1388 :
	addi	%r0 %r11 1
	bne	%r10 %r11 preloop_b.56
tail_b.2358 :
	j	branching_b.1489
preloop_b.56 :
	lw	%r0 %r12 720
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r14
setup_startp_constants_loop.5 :
	ble	%r4 %r14 branching_b.1390
tail_b.2205 :
	j	postloop_b.55
branching_b.1390 :
	slli	%r14 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r2 0
	lw	%r2 %r15 40
	lw	%r2 %r1 4
	mov	%r9 %r13
	lw.s	%r13 %f1 0
	lw	%r2 %r13 20
	lw.s	%r13 %f0 0
	sub.s	%f0 %f1 %f0
	mov	%r15 %r13
	sw.s	%r13 %f0 0
	addi	%r9 %r13 4
	lw.s	%r13 %f0 0
	lw	%r2 %r13 20
	addi	%r13 %r13 4
	lw.s	%r13 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r15 %r13 4
	sw.s	%r13 %f0 0
	addi	%r9 %r13 8
	lw.s	%r13 %f1 0
	lw	%r2 %r13 20
	addi	%r13 %r13 8
	lw.s	%r13 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r15 %r13 8
	sw.s	%r13 %f0 0
	addi	%r0 %r13 2
	beq	%r1 %r13 tail_b.2197
branching_b.1391 :
	bl	%r13 %r1 branching_b.1392
tail_b.2203 :
	j	tail_b.2204
branching_b.1392 :
	mov	%r15 %r13
	lw.s	%r13 %f2 0
	addi	%r15 %r13 4
	lw.s	%r13 %f3 0
	addi	%r15 %r13 8
	lw.s	%r13 %f1 0
	mul.s	%f2 %f2 %f4
	lw	%r2 %r13 16
	lw.s	%r13 %f0 0
	mul.s	%f0 %f4 %f5
	mul.s	%f3 %f3 %f4
	lw	%r2 %r13 16
	addi	%r13 %r13 4
	lw.s	%r13 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f1 %f1 %f0
	lw	%r2 %r13 16
	addi	%r13 %r13 8
	lw.s	%r13 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f4
	lw	%r2 %r13 12
	beq	%r13 %r4 tail_b.2198
tail_b.2199 :
	mul.s	%f1 %f3 %f0
	lw	%r2 %r13 36
	lw.s	%r13 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f2 %f1 %f1
	lw	%r2 %r13 36
	addi	%r13 %r13 4
	lw.s	%r13 %f4 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f3 %f2 %f0
	lw	%r2 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	j	branching_b.1393
tail_b.2198 :
	mov.s	%f4 %f1
	j	branching_b.1393
tail_b.2197 :
	lw	%r2 %r2 16
	mov	%r15 %r1
	lw.s	%r1 %f1 0
	addi	%r15 %r1 4
	lw.s	%r1 %f0 0
	addi	%r15 %r1 8
	lw.s	%r1 %f2 0
	mov	%r2 %r1
	lw.s	%r1 %f3 0
	mul.s	%f1 %f3 %f3
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f1
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r15 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.2204
branching_b.1393 :
	addi	%r0 %r2 3
	beq	%r1 %r2 tail_b.2200
tail_b.2201 :
	mov.s	%f1 %f0
	j	tail_b.2202
tail_b.2200 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f0
tail_b.2202 :
	addi	%r15 %r1 12
	sw.s	%r1 %f0 0
tail_b.2204 :
	addi	%r14 %r1 -1
	mov	%r1 %r14
	j	setup_startp_constants_loop.5
postloop_b.55 :
preloop_b.57 :
	addi	%r0 %r1 118
	mov	%r1 %r13
iter_trace_diffuse_rays_loop.5 :
	ble	%r4 %r13 branching_b.1395
tail_b.2357 :
	j	postloop_b.56
branching_b.1395 :
	slli	%r13 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mov	%r5 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r2 %r1 4
	lw.s	%r1 %f2 0
	addi	%r5 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	addi	%r2 %r1 8
	lw.s	%r1 %f2 0
	addi	%r5 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.2207
tail_b.2206 :
	addi	%r0 %r1 1
	j	branching_b.1396
tail_b.2207 :
	addi	%r0 %r1 0
branching_b.1396 :
	beq	%r1 %r4 branching_b.1397
branching_b.1443 :
	addi	%r13 %r1 1
	slli	%r1 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r15 0
	ilw.s	%r0 %f2 l.94
	div.s	%f2 %f0 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw.s	%r26 %f3 -52
	sw	%r26 %r15 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r15 %r3
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw.s	%r26 %f3 -52
	lw	%r26 %r15 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	lw.s	%r0 %f2 548
	ilw.s	%r0 %f0 l.70
	fbge	%f0 %f2 tail_b.2283
tail_b.2282 :
	addi	%r0 %r1 1
	j	branching_b.1444
tail_b.2283 :
	addi	%r0 %r1 0
	j	branching_b.1444
branching_b.1397 :
	slli	%r13 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r14 0
	ilw.s	%r0 %f2 l.95
	div.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw.s	%r26 %f2 -52
	sw	%r26 %r14 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r14 %r3
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw.s	%r26 %f2 -52
	lw	%r26 %r14 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	lw.s	%r0 %f3 548
	ilw.s	%r0 %f0 l.70
	fbge	%f0 %f3 tail_b.2209
tail_b.2208 :
	addi	%r0 %r1 1
	j	branching_b.1398
tail_b.2209 :
	addi	%r0 %r1 0
branching_b.1398 :
	beq	%r1 %r4 tail_b.2210
branching_b.1399 :
	ilw.s	%r0 %f0 l.71
	fbge	%f3 %f0 tail_b.2212
tail_b.2211 :
	addi	%r0 %r1 1
	j	branching_b.1400
tail_b.2212 :
	addi	%r0 %r1 0
	j	branching_b.1400
tail_b.2210 :
	addi	%r0 %r1 0
branching_b.1400 :
	beq	%r1 %r4 tail_b.2213
branching_b.1401 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r2 0
	lw	%r14 %r14 0
	lw	%r2 %r15 4
	beq	%r15 %r11 branching_b.1402
branching_b.1406 :
	addi	%r0 %r1 2
	beq	%r15 %r1 tail_b.2222
branching_b.1407 :
	lw.s	%r0 %f3 552
	lw	%r2 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f4
	lw.s	%r0 %f0 556
	lw	%r2 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	sub.s	%f3 %f0 %f6
	lw.s	%r0 %f3 560
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f9
	lw	%r2 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f8
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f3
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f7
	lw	%r2 %r1 12
	beq	%r1 %r4 tail_b.2223
tail_b.2224 :
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f9 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f10 l.67
	div.s	%f10 %f0 %f0
	add.s	%f0 %f8 %f0
	sw.s	%r0 %f0 568
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f5
	lw	%r2 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f0
	add.s	%f0 %f5 %f0
	div.s	%f10 %f0 %f0
	add.s	%f0 %f3 %f0
	sw.s	%r0 %f0 572
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	lw	%r2 %r1 36
	lw.s	%r1 %f3 0
	mul.s	%f3 %f6 %f3
	add.s	%f3 %f0 %f0
	div.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1408
tail_b.2223 :
	sw.s	%r0 %f8 568
	sw.s	%r0 %f3 572
	sw.s	%r0 %f7 576
	j	branching_b.1408
tail_b.2222 :
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
	j	branching_b.1411
branching_b.1402 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r15 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r14 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.2215
tail_b.2214 :
	addi	%r0 %r1 1
	j	branching_b.1403
tail_b.2215 :
	addi	%r0 %r1 0
	j	branching_b.1403
tail_b.2213 :
tail_b.2356 :
	addi	%r13 %r1 -2
	mov	%r1 %r13
	j	iter_trace_diffuse_rays_loop.5
branching_b.1403 :
	beq	%r1 %r4 branching_b.1404
tail_b.2220 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2221
branching_b.1404 :
	fbge	%f1 %f0 tail_b.2217
tail_b.2216 :
	addi	%r0 %r1 1
	j	branching_b.1405
tail_b.2217 :
	addi	%r0 %r1 0
branching_b.1405 :
	beq	%r1 %r4 tail_b.2218
tail_b.2219 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2221
tail_b.2218 :
	ilw.s	%r0 %f0 l.58
tail_b.2221 :
	neg.s	%f0 %f0
	slli	%r15 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1411 :
	lw	%r2 %r14 0
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
	beq	%r14 %r11 branching_b.1412
branching_b.1417 :
	addi	%r0 %r1 2
	beq	%r14 %r1 tail_b.2240
branching_b.1418 :
	addi	%r0 %r1 3
	beq	%r14 %r1 tail_b.2241
branching_b.1419 :
	beq	%r14 %r6 branching_b.1420
tail_b.2275 :
	j	branching_b.1440
branching_b.1420 :
	lw.s	%r0 %f0 552
	lw	%r2 %r1 20
	lw.s	%r1 %f3 0
	sub.s	%f3 %f0 %f0
	lw	%r2 %r1 16
	lw.s	%r1 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f0 %f4
	lw.s	%r0 %f3 560
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f3
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f3 %f0
	mul.s	%f4 %f4 %f3
	mul.s	%f0 %f0 %f5
	add.s	%f5 %f3 %f5
	fbge	%f4 %f1 tail_b.2243
tail_b.2242 :
	neg.s	%f4 %f3
	j	branching_b.1421
tail_b.2243 :
	mov.s	%f4 %f3
	j	branching_b.1421
tail_b.2241 :
	lw.s	%r0 %f0 552
	lw	%r2 %r1 20
	lw.s	%r1 %f3 0
	sub.s	%f3 %f0 %f3
	lw.s	%r0 %f4 560
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f0
	mul.s	%f3 %f3 %f3
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f3 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f3 l.74
	div.s	%f3 %f0 %f0
	floor.w.s	%f0 %f3
	sub.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.76
	mul.s	%f3 %f0 %f0
	sw	%r26 %r2 -52
	sw.s	%r26 %f2 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	cos.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r2 -52
	lw.s	%r26 %f2 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f3
	ilw.s	%r0 %f4 l.52
	mul.s	%f4 %f3 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f3 %f0 %f0
	mul.s	%f4 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1440
tail_b.2240 :
	lw.s	%r0 %f3 556
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f3 %f0
	sw	%r26 %r2 -52
	sw.s	%r26 %f2 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	sin.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r2 -52
	lw.s	%r26 %f2 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f3 l.52
	mul.s	%f4 %f3 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f4 %f0 %f0
	mul.s	%f0 %f3 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1440
branching_b.1412 :
	lw.s	%r0 %f0 552
	lw	%r2 %r1 20
	lw.s	%r1 %f3 0
	sub.s	%f3 %f0 %f3
	ilw.s	%r0 %f5 l.72
	mul.s	%f5 %f3 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f6 l.73
	mul.s	%f6 %f0 %f0
	sub.s	%f0 %f3 %f0
	ilw.s	%r0 %f4 l.74
	fbge	%f0 %f4 tail_b.2232
tail_b.2231 :
	addi	%r0 %r1 1
	j	branching_b.1413
tail_b.2232 :
	addi	%r0 %r1 0
branching_b.1413 :
	lw.s	%r0 %f0 560
	lw	%r2 %r14 20
	addi	%r14 %r14 8
	lw.s	%r14 %f3 0
	sub.s	%f3 %f0 %f0
	mul.s	%f5 %f0 %f3
	floor.w.s	%f3 %f3
	mul.s	%f6 %f3 %f3
	sub.s	%f3 %f0 %f0
	fbge	%f0 %f4 tail_b.2234
tail_b.2233 :
	addi	%r0 %r14 1
	j	branching_b.1414
tail_b.2234 :
	addi	%r0 %r14 0
branching_b.1414 :
	beq	%r1 %r4 branching_b.1415
branching_b.1416 :
	beq	%r14 %r4 tail_b.2237
tail_b.2238 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2239
tail_b.2237 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2239
branching_b.1415 :
	beq	%r14 %r4 tail_b.2235
tail_b.2236 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2239
tail_b.2235 :
	ilw.s	%r0 %f0 l.52
tail_b.2239 :
	sw.s	%r0 %f0 584
	j	branching_b.1440
branching_b.1421 :
	ilw.s	%r0 %f6 l.77
	fbge	%f3 %f6 tail_b.2245
tail_b.2244 :
	addi	%r0 %r1 1
	j	branching_b.1422
tail_b.2245 :
	addi	%r0 %r1 0
branching_b.1422 :
	beq	%r1 %r4 branching_b.1423
tail_b.2255 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1429
branching_b.1423 :
	div.s	%f4 %f0 %f0
	fbge	%f0 %f1 tail_b.2247
tail_b.2246 :
	neg.s	%f0 %f4
	j	branching_b.1424
tail_b.2247 :
	mov.s	%f0 %f4
branching_b.1424 :
	fbg	%f1 %f4 branching_b.1427
branching_b.1425 :
	ilw.s	%r0 %f0 l.81
	fbge	%f4 %f0 branching_b.1426
tail_b.2248 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f3
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f8
	mul.s	%f9 %f3 %f0
	add.s	%f0 %f8 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f8
	mul.s	%f9 %f3 %f0
	add.s	%f0 %f8 %f3
	ilw.s	%r0 %f0 l.86
	mul.s	%f4 %f0 %f8
	mul.s	%f9 %f3 %f0
	add.s	%f0 %f8 %f3
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f0
	mul.s	%f9 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.88
	mul.s	%f4 %f3 %f3
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2254
branching_b.1426 :
	ilw.s	%r0 %f0 l.82
	fbge	%f4 %f0 tail_b.2250
tail_b.2249 :
	ilw.s	%r0 %f3 l.56
	sub.s	%f3 %f4 %f0
	add.s	%f3 %f4 %f4
	div.s	%f4 %f0 %f9
	ilw.s	%r0 %f4 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f7
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f9 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.88
	mul.s	%f9 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f3 %f0 %f0
	j	tail_b.2254
tail_b.2250 :
	ilw.s	%r0 %f0 l.56
	div.s	%f4 %f0 %f3
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f9 l.90
	neg.s	%f3 %f0
	mul.s	%f3 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f3 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f3 %f4 %f4
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f3 %f0 %f0
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f3 %f4 %f4
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f3 %f0 %f7
	mul.s	%f10 %f4 %f0
	add.s	%f0 %f7 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f3 %f0 %f0
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f3 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2254
branching_b.1427 :
	neg.s	%f4 %f8
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1428
tail_b.2251 :
	ilw.s	%r0 %f3 l.58
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f8 %f7 %f7
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f8 %f7 %f7
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f8 %f7 %f7
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f7 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f7
	mul.s	%f4 %f9 %f0
	add.s	%f0 %f7 %f9
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f7
	mul.s	%f4 %f9 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	tail_b.2254
branching_b.1428 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.2253
tail_b.2252 :
	ilw.s	%r0 %f3 l.56
	sub.s	%f3 %f8 %f0
	add.s	%f3 %f8 %f3
	div.s	%f3 %f0 %f9
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f3 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f9 %f4 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f10
	mul.s	%f7 %f4 %f0
	add.s	%f0 %f10 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f9 %f4 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f10
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f4
	mul.s	%f7 %f10 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2254
tail_b.2253 :
	ilw.s	%r0 %f7 l.56
	div.s	%f8 %f7 %f3
	ilw.s	%r0 %f9 l.90
	neg.s	%f3 %f0
	mul.s	%f3 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f3 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f3 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f3 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f3 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f3 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f3 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f0 %f0
tail_b.2254 :
	ilw.s	%r0 %f3 l.89
	mul.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f3 %f0
branching_b.1429 :
	floor.w.s	%f0 %f3
	sub.s	%f3 %f0 %f4
	lw.s	%r0 %f0 556
	lw	%r2 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	sub.s	%f3 %f0 %f3
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f3 %f0
	fbge	%f5 %f1 tail_b.2257
tail_b.2256 :
	neg.s	%f5 %f3
	j	branching_b.1430
tail_b.2257 :
	mov.s	%f5 %f3
branching_b.1430 :
	fbge	%f3 %f6 tail_b.2259
tail_b.2258 :
	addi	%r0 %r1 1
	j	branching_b.1431
tail_b.2259 :
	addi	%r0 %r1 0
branching_b.1431 :
	beq	%r1 %r4 branching_b.1432
tail_b.2269 :
	ilw.s	%r0 %f3 l.79
	j	branching_b.1438
branching_b.1432 :
	div.s	%f5 %f0 %f0
	fbge	%f0 %f1 tail_b.2261
tail_b.2260 :
	neg.s	%f0 %f6
	j	branching_b.1433
tail_b.2261 :
	mov.s	%f0 %f6
branching_b.1433 :
	fbg	%f1 %f6 branching_b.1436
branching_b.1434 :
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 branching_b.1435
tail_b.2262 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f3
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f6 %f5 %f5
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f3 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f0
	mul.s	%f3 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f0
	mul.s	%f3 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.88
	mul.s	%f6 %f5 %f5
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f3
	j	tail_b.2268
branching_b.1435 :
	ilw.s	%r0 %f0 l.82
	fbge	%f6 %f0 tail_b.2264
tail_b.2263 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f6 %f0
	add.s	%f7 %f6 %f3
	div.s	%f3 %f0 %f3
	ilw.s	%r0 %f9 l.59
	neg.s	%f3 %f0
	mul.s	%f3 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f3 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f3 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f3 %f5 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f3 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f3 %f0 %f5
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f3 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f3 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f0 %f3
	j	tail_b.2268
tail_b.2264 :
	ilw.s	%r0 %f0 l.56
	div.s	%f6 %f0 %f9
	ilw.s	%r0 %f3 l.58
	ilw.s	%r0 %f8 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f5
	mul.s	%f6 %f7 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f7
	mul.s	%f6 %f5 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f9 %f5 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f3 %f0 %f3
	j	tail_b.2268
branching_b.1436 :
	neg.s	%f6 %f7
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1437
tail_b.2265 :
	ilw.s	%r0 %f6 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f3
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f3 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f3 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f7 %f5 %f5
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f8
	mul.s	%f3 %f5 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f5
	mul.s	%f3 %f8 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f3
	j	tail_b.2268
branching_b.1437 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.2267
tail_b.2266 :
	ilw.s	%r0 %f3 l.56
	sub.s	%f3 %f7 %f0
	add.s	%f3 %f7 %f3
	div.s	%f3 %f0 %f9
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f6 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f3
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.86
	mul.s	%f9 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.87
	mul.s	%f9 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f7
	mul.s	%f8 %f3 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f5 %f0 %f3
	j	tail_b.2268
tail_b.2267 :
	ilw.s	%r0 %f6 l.56
	div.s	%f7 %f6 %f3
	ilw.s	%r0 %f7 l.90
	neg.s	%f3 %f0
	mul.s	%f3 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f3 %f0 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f3 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f3 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f3 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f3 %f0 %f5
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f3 %f0 %f8
	mul.s	%f9 %f5 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f3 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f6 %f0 %f3
tail_b.2268 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.76
	div.s	%f3 %f0 %f3
branching_b.1438 :
	floor.w.s	%f3 %f0
	sub.s	%f0 %f3 %f5
	ilw.s	%r0 %f6 l.91
	ilw.s	%r0 %f3 l.62
	sub.s	%f4 %f3 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f6 %f0
	sub.s	%f5 %f3 %f3
	mul.s	%f3 %f3 %f3
	sub.s	%f3 %f0 %f0
	fbge	%f0 %f1 tail_b.2271
tail_b.2270 :
	addi	%r0 %r1 1
	j	branching_b.1439
tail_b.2271 :
	addi	%r0 %r1 0
branching_b.1439 :
	beq	%r1 %r4 tail_b.2272
tail_b.2273 :
	ilw.s	%r0 %f3 l.51
	j	tail_b.2274
tail_b.2272 :
	mov.s	%f0 %f3
tail_b.2274 :
	ilw.s	%r0 %f0 l.52
	mul.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.92
	div.s	%f3 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1440 :
	addi	%r0 %r14 0
	lw	%r0 %r1 536
	sw	%r26 %r2 -52
	sw.s	%r26 %f2 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r1 %r2
	mov	%r14 %r1
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r2 -52
	lw.s	%r26 %f2 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	beq	%r1 %r4 branching_b.1441
tail_b.2281 :
	j	tail_b.2356
branching_b.1441 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f3 312
	mul.s	%f3 %f0 %f3
	lw.s	%r0 %f4 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f3 %f0
	lw.s	%r0 %f3 576
	lw.s	%r0 %f4 320
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f0 %f0
	neg.s	%f0 %f0
	fbge	%f1 %f0 tail_b.2277
tail_b.2276 :
	addi	%r0 %r1 1
	j	branching_b.1442
tail_b.2277 :
	addi	%r0 %r1 0
branching_b.1442 :
	beq	%r1 %r4 tail_b.2278
tail_b.2279 :
	j	tail_b.2280
tail_b.2278 :
	ilw.s	%r0 %f0 l.51
tail_b.2280 :
	mul.s	%f0 %f2 %f0
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
	j	tail_b.2356
branching_b.1408 :
	lw	%r2 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f3 572
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f0 %f3
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f3 %f0
	sqrt.s	%f0 %f3
	fbne	%f3 %f1 tail_b.2226
tail_b.2225 :
	addi	%r0 %r14 1
	j	branching_b.1409
tail_b.2226 :
	addi	%r0 %r14 0
branching_b.1409 :
	beq	%r14 %r4 branching_b.1410
tail_b.2229 :
	ilw.s	%r0 %f3 l.56
	j	tail_b.2230
branching_b.1410 :
	beq	%r1 %r4 tail_b.2227
tail_b.2228 :
	ilw.s	%r0 %f0 l.58
	div.s	%f3 %f0 %f3
	j	tail_b.2230
tail_b.2227 :
	ilw.s	%r0 %f0 l.56
	div.s	%f3 %f0 %f3
tail_b.2230 :
	lw.s	%r0 %f0 568
	mul.s	%f3 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f3 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f3 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1411
branching_b.1444 :
	beq	%r1 %r4 tail_b.2284
branching_b.1445 :
	ilw.s	%r0 %f0 l.71
	fbge	%f2 %f0 tail_b.2286
tail_b.2285 :
	addi	%r0 %r1 1
	j	branching_b.1446
tail_b.2286 :
	addi	%r0 %r1 0
	j	branching_b.1446
tail_b.2284 :
	addi	%r0 %r1 0
branching_b.1446 :
	beq	%r1 %r4 tail_b.2287
branching_b.1447 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r14 0
	lw	%r15 %r15 0
	lw	%r14 %r1 4
	beq	%r1 %r11 branching_b.1448
branching_b.1452 :
	addi	%r0 %r2 2
	beq	%r1 %r2 tail_b.2296
branching_b.1453 :
	lw.s	%r0 %f2 552
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f0
	lw.s	%r0 %f2 556
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	sub.s	%f4 %f2 %f7
	lw.s	%r0 %f4 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f4 %f9
	lw	%r14 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f7 %f6
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f9 %f4
	lw	%r14 %r1 12
	beq	%r1 %r4 tail_b.2297
tail_b.2298 :
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f7 %f8
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f9 %f5
	add.s	%f5 %f8 %f5
	ilw.s	%r0 %f8 l.67
	div.s	%f8 %f5 %f5
	add.s	%f5 %f2 %f2
	sw.s	%r0 %f2 568
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	lw	%r14 %r1 36
	lw.s	%r1 %f5 0
	mul.s	%f5 %f9 %f5
	add.s	%f5 %f2 %f2
	div.s	%f8 %f2 %f2
	add.s	%f2 %f6 %f2
	sw.s	%r0 %f2 572
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	lw	%r14 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	div.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1454
tail_b.2297 :
	sw.s	%r0 %f2 568
	sw.s	%r0 %f6 572
	sw.s	%r0 %f4 576
	j	branching_b.1454
tail_b.2296 :
	lw	%r14 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1457
branching_b.1448 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r2 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r15 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.2289
tail_b.2288 :
	addi	%r0 %r1 1
	j	branching_b.1449
tail_b.2289 :
	addi	%r0 %r1 0
	j	branching_b.1449
tail_b.2287 :
	j	tail_b.2356
branching_b.1449 :
	beq	%r1 %r4 branching_b.1450
tail_b.2294 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2295
branching_b.1450 :
	fbge	%f1 %f0 tail_b.2291
tail_b.2290 :
	addi	%r0 %r1 1
	j	branching_b.1451
tail_b.2291 :
	addi	%r0 %r1 0
branching_b.1451 :
	beq	%r1 %r4 tail_b.2292
tail_b.2293 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2295
tail_b.2292 :
	ilw.s	%r0 %f0 l.58
tail_b.2295 :
	neg.s	%f0 %f0
	slli	%r2 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1457 :
	lw	%r14 %r2 0
	lw	%r14 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r14 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r14 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r2 %r11 branching_b.1458
branching_b.1463 :
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.2314
branching_b.1464 :
	addi	%r0 %r1 3
	beq	%r2 %r1 tail_b.2315
branching_b.1465 :
	beq	%r2 %r6 branching_b.1466
tail_b.2349 :
	j	branching_b.1486
branching_b.1466 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f2
	lw	%r14 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f2 %f6
	lw.s	%r0 %f0 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f2
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f2 %f7
	mul.s	%f6 %f6 %f0
	mul.s	%f7 %f7 %f2
	add.s	%f2 %f0 %f5
	fbge	%f6 %f1 tail_b.2317
tail_b.2316 :
	neg.s	%f6 %f0
	j	branching_b.1467
tail_b.2317 :
	mov.s	%f6 %f0
	j	branching_b.1467
tail_b.2315 :
	lw.s	%r0 %f2 552
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f0
	lw.s	%r0 %f2 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sub.s	%f4 %f2 %f2
	mul.s	%f0 %f0 %f0
	mul.s	%f2 %f2 %f2
	add.s	%f2 %f0 %f0
	sqrt.s	%f0 %f2
	ilw.s	%r0 %f0 l.74
	div.s	%f0 %f2 %f0
	floor.w.s	%f0 %f2
	sub.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.76
	mul.s	%f2 %f0 %f0
	sw	%r26 %r14 -52
	sw.s	%r26 %f3 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	cos.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r14 -52
	lw.s	%r26 %f3 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f2
	ilw.s	%r0 %f0 l.52
	mul.s	%f0 %f2 %f4
	sw.s	%r0 %f4 584
	ilw.s	%r0 %f4 l.56
	sub.s	%f2 %f4 %f2
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1486
tail_b.2314 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f2 l.75
	mul.s	%f2 %f0 %f0
	sw	%r26 %r14 -52
	sw.s	%r26 %f3 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	sin.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r14 -52
	lw.s	%r26 %f3 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f0 l.52
	mul.s	%f4 %f0 %f2
	sw.s	%r0 %f2 580
	ilw.s	%r0 %f2 l.56
	sub.s	%f4 %f2 %f2
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1486
branching_b.1458 :
	lw.s	%r0 %f2 552
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f2
	ilw.s	%r0 %f4 l.72
	mul.s	%f4 %f2 %f0
	floor.w.s	%f0 %f5
	ilw.s	%r0 %f0 l.73
	mul.s	%f0 %f5 %f5
	sub.s	%f5 %f2 %f2
	ilw.s	%r0 %f5 l.74
	fbge	%f2 %f5 tail_b.2306
tail_b.2305 :
	addi	%r0 %r2 1
	j	branching_b.1459
tail_b.2306 :
	addi	%r0 %r2 0
branching_b.1459 :
	lw.s	%r0 %f6 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f6 %f2
	mul.s	%f4 %f2 %f4
	floor.w.s	%f4 %f4
	mul.s	%f0 %f4 %f0
	sub.s	%f0 %f2 %f0
	fbge	%f0 %f5 tail_b.2308
tail_b.2307 :
	addi	%r0 %r1 1
	j	branching_b.1460
tail_b.2308 :
	addi	%r0 %r1 0
branching_b.1460 :
	beq	%r2 %r4 branching_b.1461
branching_b.1462 :
	beq	%r1 %r4 tail_b.2311
tail_b.2312 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2313
tail_b.2311 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2313
branching_b.1461 :
	beq	%r1 %r4 tail_b.2309
tail_b.2310 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2313
tail_b.2309 :
	ilw.s	%r0 %f0 l.52
tail_b.2313 :
	sw.s	%r0 %f0 584
	j	branching_b.1486
branching_b.1467 :
	ilw.s	%r0 %f4 l.77
	fbge	%f0 %f4 tail_b.2319
tail_b.2318 :
	addi	%r0 %r1 1
	j	branching_b.1468
tail_b.2319 :
	addi	%r0 %r1 0
branching_b.1468 :
	beq	%r1 %r4 branching_b.1469
tail_b.2329 :
	ilw.s	%r0 %f2 l.79
	j	branching_b.1475
branching_b.1469 :
	div.s	%f6 %f7 %f0
	fbge	%f0 %f1 tail_b.2321
tail_b.2320 :
	neg.s	%f0 %f6
	j	branching_b.1470
tail_b.2321 :
	mov.s	%f0 %f6
branching_b.1470 :
	fbg	%f1 %f6 branching_b.1473
branching_b.1471 :
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 branching_b.1472
tail_b.2322 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f2 l.84
	mul.s	%f6 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.88
	mul.s	%f6 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f2
	j	tail_b.2328
branching_b.1472 :
	ilw.s	%r0 %f0 l.82
	fbge	%f6 %f0 tail_b.2324
tail_b.2323 :
	ilw.s	%r0 %f10 l.56
	sub.s	%f10 %f6 %f2
	add.s	%f10 %f6 %f0
	div.s	%f0 %f2 %f8
	ilw.s	%r0 %f2 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f6
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f8 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.86
	mul.s	%f8 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f6
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f10 %f0 %f2
	j	tail_b.2328
tail_b.2324 :
	ilw.s	%r0 %f0 l.56
	div.s	%f6 %f0 %f7
	ilw.s	%r0 %f2 l.58
	ilw.s	%r0 %f9 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f6 l.84
	mul.s	%f7 %f6 %f6
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f6 %f6
	add.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f6
	mul.s	%f10 %f8 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f2 %f0 %f2
	j	tail_b.2328
branching_b.1473 :
	neg.s	%f6 %f6
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 branching_b.1474
tail_b.2325 :
	ilw.s	%r0 %f2 l.58
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f9
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f9 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f9
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f9 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f9
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f7 l.87
	mul.s	%f6 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f2
	j	tail_b.2328
branching_b.1474 :
	ilw.s	%r0 %f0 l.82
	fbge	%f6 %f0 tail_b.2327
tail_b.2326 :
	ilw.s	%r0 %f2 l.56
	sub.s	%f2 %f6 %f0
	add.s	%f2 %f6 %f2
	div.s	%f2 %f0 %f2
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f9 l.59
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f6 l.84
	mul.s	%f2 %f6 %f6
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f2 %f0 %f8
	mul.s	%f10 %f6 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f2 %f0 %f6
	mul.s	%f10 %f8 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f2 %f0 %f0
	mul.s	%f10 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.88
	mul.s	%f2 %f6 %f6
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f0 %f2
	j	tail_b.2328
tail_b.2327 :
	ilw.s	%r0 %f8 l.56
	div.s	%f6 %f8 %f7
	ilw.s	%r0 %f6 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f10
	mul.s	%f9 %f2 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f2 l.86
	mul.s	%f7 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.87
	mul.s	%f7 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f8 %f0 %f2
tail_b.2328 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f2 %f2
branching_b.1475 :
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f6
	lw.s	%r0 %f0 556
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f0
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	sqrt.s	%f2 %f2
	mul.s	%f2 %f0 %f2
	fbge	%f5 %f1 tail_b.2331
tail_b.2330 :
	neg.s	%f5 %f0
	j	branching_b.1476
tail_b.2331 :
	mov.s	%f5 %f0
branching_b.1476 :
	fbge	%f0 %f4 tail_b.2333
tail_b.2332 :
	addi	%r0 %r1 1
	j	branching_b.1477
tail_b.2333 :
	addi	%r0 %r1 0
branching_b.1477 :
	beq	%r1 %r4 branching_b.1478
tail_b.2343 :
	ilw.s	%r0 %f2 l.79
	j	branching_b.1484
branching_b.1478 :
	div.s	%f5 %f2 %f0
	fbge	%f0 %f1 tail_b.2335
tail_b.2334 :
	neg.s	%f0 %f5
	j	branching_b.1479
tail_b.2335 :
	mov.s	%f0 %f5
branching_b.1479 :
	fbg	%f1 %f5 branching_b.1482
branching_b.1480 :
	ilw.s	%r0 %f0 l.81
	fbge	%f5 %f0 branching_b.1481
tail_b.2336 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.85
	mul.s	%f5 %f2 %f2
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.88
	mul.s	%f5 %f0 %f8
	mul.s	%f4 %f2 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f2
	j	tail_b.2342
branching_b.1481 :
	ilw.s	%r0 %f0 l.82
	fbge	%f5 %f0 tail_b.2338
tail_b.2337 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f5 %f2
	add.s	%f7 %f5 %f0
	div.s	%f0 %f2 %f2
	ilw.s	%r0 %f8 l.59
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f2 %f4 %f4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f2 %f0 %f0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f2 %f4 %f4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f2 %f0 %f0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.88
	mul.s	%f2 %f4 %f4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f2
	j	tail_b.2342
tail_b.2338 :
	ilw.s	%r0 %f0 l.56
	div.s	%f5 %f0 %f8
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f5 l.90
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f4
	mul.s	%f2 %f7 %f0
	add.s	%f0 %f4 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f4
	mul.s	%f2 %f7 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f8 %f4 %f4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f2 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f7
	mul.s	%f2 %f4 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f9 %f0 %f2
	j	tail_b.2342
branching_b.1482 :
	neg.s	%f5 %f8
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1483
tail_b.2339 :
	ilw.s	%r0 %f5 l.58
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f7
	mul.s	%f4 %f2 %f0
	add.s	%f0 %f7 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f2
	j	tail_b.2342
branching_b.1483 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.2341
tail_b.2340 :
	ilw.s	%r0 %f2 l.56
	sub.s	%f2 %f8 %f0
	add.s	%f2 %f8 %f2
	div.s	%f2 %f0 %f7
	ilw.s	%r0 %f2 l.58
	ilw.s	%r0 %f8 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f9
	mul.s	%f4 %f5 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f7 %f5 %f5
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f5
	mul.s	%f4 %f9 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f2 %f0 %f2
	j	tail_b.2342
tail_b.2341 :
	ilw.s	%r0 %f7 l.56
	div.s	%f8 %f7 %f8
	ilw.s	%r0 %f0 l.90
	neg.s	%f8 %f2
	mul.s	%f8 %f2 %f4
	ilw.s	%r0 %f2 l.83
	mul.s	%f8 %f2 %f2
	ilw.s	%r0 %f5 l.84
	mul.s	%f8 %f5 %f5
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f5 %f2
	ilw.s	%r0 %f5 l.85
	mul.s	%f8 %f5 %f5
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f5 %f2
	ilw.s	%r0 %f5 l.86
	mul.s	%f8 %f5 %f5
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f5 %f9
	ilw.s	%r0 %f2 l.87
	mul.s	%f8 %f2 %f5
	mul.s	%f4 %f9 %f2
	add.s	%f2 %f5 %f2
	ilw.s	%r0 %f5 l.88
	mul.s	%f8 %f5 %f5
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f8 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f7 %f0 %f2
tail_b.2342 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.76
	div.s	%f2 %f0 %f2
branching_b.1484 :
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f2
	ilw.s	%r0 %f5 l.91
	ilw.s	%r0 %f4 l.62
	sub.s	%f6 %f4 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f5 %f0
	sub.s	%f2 %f4 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f0 %f0
	fbge	%f0 %f1 tail_b.2345
tail_b.2344 :
	addi	%r0 %r1 1
	j	branching_b.1485
tail_b.2345 :
	addi	%r0 %r1 0
branching_b.1485 :
	beq	%r1 %r4 tail_b.2346
tail_b.2347 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2348
tail_b.2346 :
tail_b.2348 :
	ilw.s	%r0 %f2 l.52
	mul.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.92
	div.s	%f2 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1486 :
	addi	%r0 %r1 0
	lw	%r0 %r2 536
	sw	%r26 %r14 -52
	sw.s	%r26 %f3 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r14 -52
	lw.s	%r26 %f3 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	beq	%r1 %r4 branching_b.1487
tail_b.2355 :
	j	tail_b.2356
branching_b.1487 :
	lw.s	%r0 %f2 568
	lw.s	%r0 %f0 312
	mul.s	%f0 %f2 %f4
	lw.s	%r0 %f2 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f4 %f4
	lw.s	%r0 %f2 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f4 %f0
	neg.s	%f0 %f0
	fbge	%f1 %f0 tail_b.2351
tail_b.2350 :
	addi	%r0 %r1 1
	j	branching_b.1488
tail_b.2351 :
	addi	%r0 %r1 0
branching_b.1488 :
	beq	%r1 %r4 tail_b.2352
tail_b.2353 :
	j	tail_b.2354
tail_b.2352 :
	ilw.s	%r0 %f0 l.51
tail_b.2354 :
	mul.s	%f0 %f3 %f1
	lw	%r14 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f2 592
	lw.s	%r0 %f0 580
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f0 596
	lw.s	%r0 %f2 584
	mul.s	%f2 %f1 %f2
	add.s	%f2 %f0 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f2 600
	lw.s	%r0 %f0 588
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2356
branching_b.1454 :
	lw	%r14 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f2 572
	mul.s	%f2 %f2 %f2
	add.s	%f2 %f0 %f2
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	sqrt.s	%f0 %f2
	fbne	%f2 %f1 tail_b.2300
tail_b.2299 :
	addi	%r0 %r2 1
	j	branching_b.1455
tail_b.2300 :
	addi	%r0 %r2 0
branching_b.1455 :
	beq	%r2 %r4 branching_b.1456
tail_b.2303 :
	ilw.s	%r0 %f2 l.56
	j	tail_b.2304
branching_b.1456 :
	beq	%r1 %r4 tail_b.2301
tail_b.2302 :
	ilw.s	%r0 %f0 l.58
	div.s	%f2 %f0 %f2
	j	tail_b.2304
tail_b.2301 :
	ilw.s	%r0 %f0 l.56
	div.s	%f2 %f0 %f2
tail_b.2304 :
	lw.s	%r0 %f0 568
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1457
postloop_b.56 :
branching_b.1489 :
	addi	%r0 %r12 2
	bne	%r10 %r12 preloop_b.58
tail_b.2520 :
	j	branching_b.1590
preloop_b.58 :
	lw	%r0 %r13 724
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r15
setup_startp_constants_loop.4 :
	ble	%r4 %r15 branching_b.1491
tail_b.2367 :
	j	postloop_b.57
branching_b.1491 :
	slli	%r15 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r16 0
	lw	%r16 %r2 40
	lw	%r16 %r14 4
	mov	%r9 %r1
	lw.s	%r1 %f1 0
	lw	%r16 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mov	%r2 %r1
	sw.s	%r1 %f0 0
	addi	%r9 %r1 4
	lw.s	%r1 %f1 0
	lw	%r16 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	lw	%r16 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	beq	%r14 %r12 tail_b.2359
branching_b.1492 :
	bl	%r12 %r14 branching_b.1493
tail_b.2365 :
	j	tail_b.2366
branching_b.1493 :
	mov	%r2 %r1
	lw.s	%r1 %f2 0
	addi	%r2 %r1 4
	lw.s	%r1 %f5 0
	addi	%r2 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f2 %f2 %f1
	lw	%r16 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f4
	mul.s	%f5 %f5 %f1
	lw	%r16 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f1
	mul.s	%f3 %f3 %f0
	lw	%r16 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f4
	lw	%r16 %r1 12
	beq	%r1 %r4 tail_b.2360
tail_b.2361 :
	mul.s	%f3 %f5 %f0
	lw	%r16 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f0
	lw	%r16 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f5 %f2 %f1
	lw	%r16 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f1
	j	branching_b.1494
tail_b.2360 :
	mov.s	%f4 %f1
	j	branching_b.1494
tail_b.2359 :
	lw	%r16 %r14 16
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	addi	%r2 %r1 4
	lw.s	%r1 %f3 0
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	mov	%r14 %r1
	lw.s	%r1 %f2 0
	mul.s	%f0 %f2 %f2
	addi	%r14 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	addi	%r14 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	addi	%r2 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.2366
branching_b.1494 :
	addi	%r0 %r1 3
	beq	%r14 %r1 tail_b.2362
tail_b.2363 :
	mov.s	%f1 %f0
	j	tail_b.2364
tail_b.2362 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f0
tail_b.2364 :
	addi	%r2 %r1 12
	sw.s	%r1 %f0 0
tail_b.2366 :
	addi	%r15 %r1 -1
	mov	%r1 %r15
	j	setup_startp_constants_loop.4
postloop_b.57 :
preloop_b.59 :
	addi	%r0 %r1 118
	mov	%r1 %r2
iter_trace_diffuse_rays_loop.4 :
	ble	%r4 %r2 branching_b.1496
tail_b.2519 :
	j	postloop_b.58
branching_b.1496 :
	slli	%r2 %r1 2
	add	%r13 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r14 0
	mov	%r14 %r1
	lw.s	%r1 %f0 0
	mov	%r5 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	addi	%r14 %r1 4
	lw.s	%r1 %f2 0
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	addi	%r14 %r1 8
	lw.s	%r1 %f0 0
	addi	%r5 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f2 l.51
	fbge	%f1 %f2 tail_b.2369
tail_b.2368 :
	addi	%r0 %r1 1
	j	branching_b.1497
tail_b.2369 :
	addi	%r0 %r1 0
branching_b.1497 :
	beq	%r1 %r4 branching_b.1498
branching_b.1544 :
	addi	%r2 %r1 1
	slli	%r1 %r1 2
	add	%r13 %r1 %r1
	lw	%r1 %r14 0
	ilw.s	%r0 %f0 l.94
	div.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r15 0
	lw	%r0 %r1 536
	sw.s	%r26 %f3 -56
	sw	%r26 %r14 -52
	sw.s	%r26 %f2 -48
	sw	%r26 %r2 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r14 %r3
	mov	%r1 %r2
	mov	%r15 %r1
	sw	%r26 %r28 -60
	addi	%r26 %r26 -64
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 64
	lw	%r26 %r28 -60
	lw.s	%r26 %f3 -56
	lw	%r26 %r14 -52
	lw.s	%r26 %f2 -48
	lw	%r26 %r2 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f1 l.70
	fbge	%f1 %f0 tail_b.2445
tail_b.2444 :
	addi	%r0 %r1 1
	j	branching_b.1545
tail_b.2445 :
	addi	%r0 %r1 0
	j	branching_b.1545
branching_b.1498 :
	slli	%r2 %r1 2
	add	%r13 %r1 %r1
	lw	%r1 %r15 0
	ilw.s	%r0 %f0 l.95
	div.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r1 0
	lw	%r0 %r14 536
	sw.s	%r26 %f3 -56
	sw	%r26 %r15 -52
	sw.s	%r26 %f2 -48
	sw	%r26 %r2 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r15 %r3
	mov	%r14 %r2
	sw	%r26 %r28 -60
	addi	%r26 %r26 -64
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 64
	lw	%r26 %r28 -60
	lw.s	%r26 %f3 -56
	lw	%r26 %r15 -52
	lw.s	%r26 %f2 -48
	lw	%r26 %r2 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.70
	fbge	%f0 %f1 tail_b.2371
tail_b.2370 :
	addi	%r0 %r1 1
	j	branching_b.1499
tail_b.2371 :
	addi	%r0 %r1 0
branching_b.1499 :
	beq	%r1 %r4 tail_b.2372
branching_b.1500 :
	ilw.s	%r0 %f0 l.71
	fbge	%f1 %f0 tail_b.2374
tail_b.2373 :
	addi	%r0 %r1 1
	j	branching_b.1501
tail_b.2374 :
	addi	%r0 %r1 0
	j	branching_b.1501
tail_b.2372 :
	addi	%r0 %r1 0
branching_b.1501 :
	beq	%r1 %r4 tail_b.2375
branching_b.1502 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r14 0
	lw	%r15 %r16 0
	lw	%r14 %r1 4
	beq	%r1 %r11 branching_b.1503
branching_b.1507 :
	beq	%r1 %r12 tail_b.2384
branching_b.1508 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw.s	%r0 %f0 556
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	sub.s	%f4 %f0 %f10
	lw.s	%r0 %f4 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f8
	lw	%r14 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f5
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f10 %f6
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f7
	lw	%r14 %r1 12
	beq	%r1 %r4 tail_b.2385
tail_b.2386 :
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f10 %f0
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f8 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f9 l.67
	div.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 568
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f4
	lw	%r14 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f4 %f0
	div.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f0
	sw.s	%r0 %f0 572
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	lw	%r14 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f10 %f0
	add.s	%f0 %f1 %f0
	div.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1509
tail_b.2385 :
	sw.s	%r0 %f5 568
	sw.s	%r0 %f6 572
	sw.s	%r0 %f7 576
	j	branching_b.1509
tail_b.2384 :
	lw	%r14 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1512
branching_b.1503 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r15 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r16 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.2377
tail_b.2376 :
	addi	%r0 %r1 1
	j	branching_b.1504
tail_b.2377 :
	addi	%r0 %r1 0
	j	branching_b.1504
tail_b.2375 :
tail_b.2518 :
	addi	%r2 %r1 -2
	mov	%r1 %r2
	j	iter_trace_diffuse_rays_loop.4
branching_b.1504 :
	beq	%r1 %r4 branching_b.1505
tail_b.2382 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2383
branching_b.1505 :
	fbge	%f2 %f0 tail_b.2379
tail_b.2378 :
	addi	%r0 %r1 1
	j	branching_b.1506
tail_b.2379 :
	addi	%r0 %r1 0
branching_b.1506 :
	beq	%r1 %r4 tail_b.2380
tail_b.2381 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2383
tail_b.2380 :
	ilw.s	%r0 %f0 l.58
tail_b.2383 :
	neg.s	%f0 %f0
	slli	%r15 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1512 :
	lw	%r14 %r15 0
	lw	%r14 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r14 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r14 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r15 %r11 branching_b.1513
branching_b.1518 :
	beq	%r15 %r12 tail_b.2402
branching_b.1519 :
	addi	%r0 %r1 3
	beq	%r15 %r1 tail_b.2403
branching_b.1520 :
	beq	%r15 %r6 branching_b.1521
tail_b.2437 :
	j	branching_b.1541
branching_b.1521 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r14 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f4
	lw.s	%r0 %f0 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	mul.s	%f4 %f4 %f5
	mul.s	%f0 %f0 %f1
	add.s	%f1 %f5 %f5
	fbge	%f4 %f2 tail_b.2405
tail_b.2404 :
	neg.s	%f4 %f1
	j	branching_b.1522
tail_b.2405 :
	mov.s	%f4 %f1
	j	branching_b.1522
tail_b.2403 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw.s	%r0 %f0 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sub.s	%f4 %f0 %f0
	mul.s	%f1 %f1 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.74
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.76
	mul.s	%f0 %f1 %f0
	sw	%r26 %r14 -56
	sw.s	%r26 %f3 -52
	sw.s	%r26 %f2 -48
	sw	%r26 %r2 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -60
	addi	%r26 %r26 -64
	jal	cos.0
	addi	%r26 %r26 64
	lw	%r26 %r28 -60
	lw	%r26 %r14 -56
	lw.s	%r26 %f3 -52
	lw.s	%r26 %f2 -48
	lw	%r26 %r2 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f4 l.52
	mul.s	%f4 %f1 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1541
tail_b.2402 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	sw	%r26 %r14 -56
	sw.s	%r26 %f3 -52
	sw.s	%r26 %f2 -48
	sw	%r26 %r2 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -60
	addi	%r26 %r26 -64
	jal	sin.0
	addi	%r26 %r26 64
	lw	%r26 %r28 -60
	lw	%r26 %r14 -56
	lw.s	%r26 %f3 -52
	lw.s	%r26 %f2 -48
	lw	%r26 %r2 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f1 l.52
	mul.s	%f4 %f1 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f4 %f0 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1541
branching_b.1513 :
	lw.s	%r0 %f1 552
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f4
	ilw.s	%r0 %f0 l.72
	mul.s	%f0 %f4 %f1
	floor.w.s	%f1 %f1
	ilw.s	%r0 %f5 l.73
	mul.s	%f5 %f1 %f1
	sub.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.74
	fbge	%f4 %f1 tail_b.2394
tail_b.2393 :
	addi	%r0 %r15 1
	j	branching_b.1514
tail_b.2394 :
	addi	%r0 %r15 0
branching_b.1514 :
	lw.s	%r0 %f4 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	sub.s	%f6 %f4 %f4
	mul.s	%f0 %f4 %f0
	floor.w.s	%f0 %f0
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f4 %f0
	fbge	%f0 %f1 tail_b.2396
tail_b.2395 :
	addi	%r0 %r1 1
	j	branching_b.1515
tail_b.2396 :
	addi	%r0 %r1 0
branching_b.1515 :
	beq	%r15 %r4 branching_b.1516
branching_b.1517 :
	beq	%r1 %r4 tail_b.2399
tail_b.2400 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2401
tail_b.2399 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2401
branching_b.1516 :
	beq	%r1 %r4 tail_b.2397
tail_b.2398 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2401
tail_b.2397 :
	ilw.s	%r0 %f0 l.52
tail_b.2401 :
	sw.s	%r0 %f0 584
	j	branching_b.1541
branching_b.1522 :
	ilw.s	%r0 %f6 l.77
	fbge	%f1 %f6 tail_b.2407
tail_b.2406 :
	addi	%r0 %r1 1
	j	branching_b.1523
tail_b.2407 :
	addi	%r0 %r1 0
branching_b.1523 :
	beq	%r1 %r4 branching_b.1524
tail_b.2417 :
	ilw.s	%r0 %f1 l.79
	j	branching_b.1530
branching_b.1524 :
	div.s	%f4 %f0 %f0
	fbge	%f0 %f2 tail_b.2409
tail_b.2408 :
	neg.s	%f0 %f8
	j	branching_b.1525
tail_b.2409 :
	mov.s	%f0 %f8
branching_b.1525 :
	fbg	%f2 %f8 branching_b.1528
branching_b.1526 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1527
tail_b.2410 :
	ilw.s	%r0 %f4 l.56
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f8 %f1 %f7
	ilw.s	%r0 %f1 l.84
	mul.s	%f8 %f1 %f1
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f1 %f7
	ilw.s	%r0 %f1 l.85
	mul.s	%f8 %f1 %f1
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f1 %f1
	ilw.s	%r0 %f7 l.86
	mul.s	%f8 %f7 %f7
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f7 %f1
	ilw.s	%r0 %f7 l.87
	mul.s	%f8 %f7 %f7
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f7 %f1
	ilw.s	%r0 %f7 l.88
	mul.s	%f8 %f7 %f7
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f7 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.2416
branching_b.1527 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.2412
tail_b.2411 :
	ilw.s	%r0 %f9 l.56
	sub.s	%f9 %f8 %f0
	add.s	%f9 %f8 %f1
	div.s	%f1 %f0 %f4
	ilw.s	%r0 %f8 l.59
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f7
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f7 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f4 %f1 %f1
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f7
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f4 %f1 %f1
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.2416
tail_b.2412 :
	ilw.s	%r0 %f0 l.56
	div.s	%f8 %f0 %f7
	ilw.s	%r0 %f4 l.58
	ilw.s	%r0 %f9 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f7 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f7 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.2416
branching_b.1528 :
	neg.s	%f8 %f8
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1529
tail_b.2413 :
	ilw.s	%r0 %f4 l.58
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f9
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f9 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.2416
branching_b.1529 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.2415
tail_b.2414 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f8 %f1
	add.s	%f0 %f8 %f0
	div.s	%f0 %f1 %f9
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f8 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f4
	mul.s	%f1 %f10 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f9 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f9 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f10
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f4
	mul.s	%f1 %f10 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2416
tail_b.2415 :
	ilw.s	%r0 %f10 l.56
	div.s	%f8 %f10 %f0
	ilw.s	%r0 %f1 l.90
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f7 l.83
	mul.s	%f0 %f7 %f7
	ilw.s	%r0 %f8 l.84
	mul.s	%f0 %f8 %f8
	mul.s	%f4 %f7 %f7
	add.s	%f7 %f8 %f7
	ilw.s	%r0 %f8 l.85
	mul.s	%f0 %f8 %f8
	mul.s	%f4 %f7 %f7
	add.s	%f7 %f8 %f8
	ilw.s	%r0 %f7 l.86
	mul.s	%f0 %f7 %f9
	mul.s	%f4 %f8 %f7
	add.s	%f7 %f9 %f9
	ilw.s	%r0 %f7 l.87
	mul.s	%f0 %f7 %f8
	mul.s	%f4 %f9 %f7
	add.s	%f7 %f8 %f9
	ilw.s	%r0 %f7 l.88
	mul.s	%f0 %f7 %f8
	mul.s	%f4 %f9 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f4 %f7 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f0
tail_b.2416 :
	ilw.s	%r0 %f1 l.89
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.76
	div.s	%f1 %f0 %f1
branching_b.1530 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f4
	lw.s	%r0 %f1 556
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	fbge	%f5 %f2 tail_b.2419
tail_b.2418 :
	neg.s	%f5 %f0
	j	branching_b.1531
tail_b.2419 :
	mov.s	%f5 %f0
branching_b.1531 :
	fbge	%f0 %f6 tail_b.2421
tail_b.2420 :
	addi	%r0 %r1 1
	j	branching_b.1532
tail_b.2421 :
	addi	%r0 %r1 0
branching_b.1532 :
	beq	%r1 %r4 branching_b.1533
tail_b.2431 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1539
branching_b.1533 :
	div.s	%f5 %f1 %f0
	fbge	%f0 %f2 tail_b.2423
tail_b.2422 :
	neg.s	%f0 %f7
	j	branching_b.1534
tail_b.2423 :
	mov.s	%f0 %f7
branching_b.1534 :
	fbg	%f2 %f7 branching_b.1537
branching_b.1535 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1536
tail_b.2424 :
	ilw.s	%r0 %f5 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f1
	mul.s	%f8 %f6 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2430
branching_b.1536 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.2426
tail_b.2425 :
	ilw.s	%r0 %f6 l.56
	sub.s	%f6 %f7 %f0
	add.s	%f6 %f7 %f1
	div.s	%f1 %f0 %f7
	ilw.s	%r0 %f1 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f7 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f7 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.88
	mul.s	%f7 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f1
	j	tail_b.2430
tail_b.2426 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f9
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f7 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f9 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f1
	mul.s	%f5 %f8 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f9 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f9 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f6 %f0 %f1
	j	tail_b.2430
branching_b.1537 :
	neg.s	%f7 %f6
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 branching_b.1538
tail_b.2427 :
	ilw.s	%r0 %f1 l.58
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f6 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f1
	j	tail_b.2430
branching_b.1538 :
	ilw.s	%r0 %f0 l.82
	fbge	%f6 %f0 tail_b.2429
tail_b.2428 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f6 %f1
	add.s	%f0 %f6 %f0
	div.s	%f0 %f1 %f5
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f7 l.59
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f5 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2430
tail_b.2429 :
	ilw.s	%r0 %f1 l.56
	div.s	%f6 %f1 %f9
	ilw.s	%r0 %f8 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f6
	mul.s	%f5 %f7 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f9 %f6 %f6
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f9 %f6 %f6
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f7
	mul.s	%f5 %f6 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f1 %f0 %f1
tail_b.2430 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f1 %f0
branching_b.1539 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f6 l.91
	ilw.s	%r0 %f5 l.62
	sub.s	%f4 %f5 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f6 %f4
	sub.s	%f1 %f5 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f4 %f0
	fbge	%f0 %f2 tail_b.2433
tail_b.2432 :
	addi	%r0 %r1 1
	j	branching_b.1540
tail_b.2433 :
	addi	%r0 %r1 0
branching_b.1540 :
	beq	%r1 %r4 tail_b.2434
tail_b.2435 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.2436
tail_b.2434 :
	mov.s	%f0 %f1
tail_b.2436 :
	ilw.s	%r0 %f0 l.52
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.92
	div.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
branching_b.1541 :
	addi	%r0 %r15 0
	lw	%r0 %r1 536
	sw	%r26 %r14 -56
	sw.s	%r26 %f3 -52
	sw.s	%r26 %f2 -48
	sw	%r26 %r2 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r1 %r2
	mov	%r15 %r1
	sw	%r26 %r28 -60
	addi	%r26 %r26 -64
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 64
	lw	%r26 %r28 -60
	lw	%r26 %r14 -56
	lw.s	%r26 %f3 -52
	lw.s	%r26 %f2 -48
	lw	%r26 %r2 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	beq	%r1 %r4 branching_b.1542
tail_b.2443 :
	j	tail_b.2518
branching_b.1542 :
	lw.s	%r0 %f1 568
	lw.s	%r0 %f0 312
	mul.s	%f0 %f1 %f4
	lw.s	%r0 %f0 572
	lw.s	%r0 %f1 316
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f1
	lw.s	%r0 %f4 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2439
tail_b.2438 :
	addi	%r0 %r1 1
	j	branching_b.1543
tail_b.2439 :
	addi	%r0 %r1 0
branching_b.1543 :
	beq	%r1 %r4 tail_b.2440
tail_b.2441 :
	j	tail_b.2442
tail_b.2440 :
	ilw.s	%r0 %f0 l.51
tail_b.2442 :
	mul.s	%f0 %f3 %f1
	lw	%r14 %r1 28
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
	j	tail_b.2518
branching_b.1509 :
	lw	%r14 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f2 tail_b.2388
tail_b.2387 :
	addi	%r0 %r15 1
	j	branching_b.1510
tail_b.2388 :
	addi	%r0 %r15 0
branching_b.1510 :
	beq	%r15 %r4 branching_b.1511
tail_b.2391 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.2392
branching_b.1511 :
	beq	%r1 %r4 tail_b.2389
tail_b.2390 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f1
	j	tail_b.2392
tail_b.2389 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f1
tail_b.2392 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1512
branching_b.1545 :
	beq	%r1 %r4 tail_b.2446
branching_b.1546 :
	ilw.s	%r0 %f1 l.71
	fbge	%f0 %f1 tail_b.2448
tail_b.2447 :
	addi	%r0 %r1 1
	j	branching_b.1547
tail_b.2448 :
	addi	%r0 %r1 0
	j	branching_b.1547
tail_b.2446 :
	addi	%r0 %r1 0
branching_b.1547 :
	beq	%r1 %r4 tail_b.2449
branching_b.1548 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r15 0
	lw	%r14 %r14 0
	lw	%r15 %r1 4
	beq	%r1 %r11 branching_b.1549
branching_b.1553 :
	beq	%r1 %r12 tail_b.2458
branching_b.1554 :
	lw.s	%r0 %f0 552
	lw	%r15 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f0 556
	lw	%r15 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f8
	lw.s	%r0 %f1 560
	lw	%r15 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f1
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f6
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f7
	lw	%r15 %r1 12
	beq	%r1 %r4 tail_b.2459
tail_b.2460 :
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f9
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.67
	div.s	%f0 %f9 %f9
	add.s	%f9 %f1 %f1
	sw.s	%r0 %f1 568
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f4 %f1
	lw	%r15 %r1 36
	lw.s	%r1 %f9 0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f1 %f1
	div.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f1
	sw.s	%r0 %f1 572
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f4 %f1
	lw	%r15 %r1 36
	lw.s	%r1 %f4 0
	mul.s	%f4 %f8 %f4
	add.s	%f4 %f1 %f1
	div.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1555
tail_b.2459 :
	sw.s	%r0 %f1 568
	sw.s	%r0 %f6 572
	sw.s	%r0 %f7 576
	j	branching_b.1555
tail_b.2458 :
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1558
branching_b.1549 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r16 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r14 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.2451
tail_b.2450 :
	addi	%r0 %r1 1
	j	branching_b.1550
tail_b.2451 :
	addi	%r0 %r1 0
	j	branching_b.1550
tail_b.2449 :
	j	tail_b.2518
branching_b.1550 :
	beq	%r1 %r4 branching_b.1551
tail_b.2456 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2457
branching_b.1551 :
	fbge	%f2 %f0 tail_b.2453
tail_b.2452 :
	addi	%r0 %r1 1
	j	branching_b.1552
tail_b.2453 :
	addi	%r0 %r1 0
branching_b.1552 :
	beq	%r1 %r4 tail_b.2454
tail_b.2455 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2457
tail_b.2454 :
	ilw.s	%r0 %f0 l.58
tail_b.2457 :
	neg.s	%f0 %f0
	slli	%r16 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1558 :
	lw	%r15 %r14 0
	lw	%r15 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r15 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r15 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r14 %r11 branching_b.1559
branching_b.1564 :
	beq	%r14 %r12 tail_b.2476
branching_b.1565 :
	addi	%r0 %r1 3
	beq	%r14 %r1 tail_b.2477
branching_b.1566 :
	beq	%r14 %r6 branching_b.1567
tail_b.2511 :
	j	branching_b.1587
branching_b.1567 :
	lw.s	%r0 %f1 552
	lw	%r15 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw	%r15 %r1 16
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f4 560
	lw	%r15 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f0
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sqrt.s	%f4 %f4
	mul.s	%f4 %f0 %f5
	mul.s	%f1 %f1 %f0
	mul.s	%f5 %f5 %f4
	add.s	%f4 %f0 %f6
	fbge	%f1 %f2 tail_b.2479
tail_b.2478 :
	neg.s	%f1 %f0
	j	branching_b.1568
tail_b.2479 :
	mov.s	%f1 %f0
	j	branching_b.1568
tail_b.2477 :
	lw.s	%r0 %f0 552
	lw	%r15 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f1 560
	lw	%r15 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.74
	div.s	%f0 %f1 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.76
	mul.s	%f0 %f1 %f0
	sw	%r26 %r15 -56
	sw.s	%r26 %f3 -52
	sw.s	%r26 %f2 -48
	sw	%r26 %r2 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -60
	addi	%r26 %r26 -64
	jal	cos.0
	addi	%r26 %r26 64
	lw	%r26 %r28 -60
	lw	%r26 %r15 -56
	lw.s	%r26 %f3 -52
	lw.s	%r26 %f2 -48
	lw	%r26 %r2 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f0 l.52
	mul.s	%f0 %f4 %f1
	sw.s	%r0 %f1 584
	ilw.s	%r0 %f1 l.56
	sub.s	%f4 %f1 %f1
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1587
tail_b.2476 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	sw	%r26 %r15 -56
	sw.s	%r26 %f3 -52
	sw.s	%r26 %f2 -48
	sw	%r26 %r2 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -60
	addi	%r26 %r26 -64
	jal	sin.0
	addi	%r26 %r26 64
	lw	%r26 %r28 -60
	lw	%r26 %r15 -56
	lw.s	%r26 %f3 -52
	lw.s	%r26 %f2 -48
	lw	%r26 %r2 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f4 l.52
	mul.s	%f0 %f4 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f1 l.56
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1587
branching_b.1559 :
	lw.s	%r0 %f1 552
	lw	%r15 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f6 l.72
	mul.s	%f6 %f1 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f5 l.73
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.74
	fbge	%f0 %f1 tail_b.2468
tail_b.2467 :
	addi	%r0 %r14 1
	j	branching_b.1560
tail_b.2468 :
	addi	%r0 %r14 0
branching_b.1560 :
	lw.s	%r0 %f0 560
	lw	%r15 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sub.s	%f4 %f0 %f4
	mul.s	%f6 %f4 %f0
	floor.w.s	%f0 %f0
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f4 %f0
	fbge	%f0 %f1 tail_b.2470
tail_b.2469 :
	addi	%r0 %r1 1
	j	branching_b.1561
tail_b.2470 :
	addi	%r0 %r1 0
branching_b.1561 :
	beq	%r14 %r4 branching_b.1562
branching_b.1563 :
	beq	%r1 %r4 tail_b.2473
tail_b.2474 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2475
tail_b.2473 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2475
branching_b.1562 :
	beq	%r1 %r4 tail_b.2471
tail_b.2472 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2475
tail_b.2471 :
	ilw.s	%r0 %f0 l.52
tail_b.2475 :
	sw.s	%r0 %f0 584
	j	branching_b.1587
branching_b.1568 :
	ilw.s	%r0 %f7 l.77
	fbge	%f0 %f7 tail_b.2481
tail_b.2480 :
	addi	%r0 %r1 1
	j	branching_b.1569
tail_b.2481 :
	addi	%r0 %r1 0
branching_b.1569 :
	beq	%r1 %r4 branching_b.1570
tail_b.2491 :
	ilw.s	%r0 %f1 l.79
	j	branching_b.1576
branching_b.1570 :
	div.s	%f1 %f5 %f0
	fbge	%f0 %f2 tail_b.2483
tail_b.2482 :
	neg.s	%f0 %f5
	j	branching_b.1571
tail_b.2483 :
	mov.s	%f0 %f5
branching_b.1571 :
	fbg	%f2 %f5 branching_b.1574
branching_b.1572 :
	ilw.s	%r0 %f0 l.81
	fbge	%f5 %f0 branching_b.1573
tail_b.2484 :
	ilw.s	%r0 %f4 l.56
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f9
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f9 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f9
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f9 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.2490
branching_b.1573 :
	ilw.s	%r0 %f0 l.82
	fbge	%f5 %f0 tail_b.2486
tail_b.2485 :
	ilw.s	%r0 %f8 l.56
	sub.s	%f8 %f5 %f1
	add.s	%f8 %f5 %f0
	div.s	%f0 %f1 %f4
	ilw.s	%r0 %f10 l.59
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f1
	mul.s	%f5 %f9 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f4 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f9
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f4 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2490
tail_b.2486 :
	ilw.s	%r0 %f0 l.56
	div.s	%f5 %f0 %f10
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f4 l.90
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f1
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f10 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f10 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f8
	ilw.s	%r0 %f0 l.88
	mul.s	%f10 %f0 %f1
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.2490
branching_b.1574 :
	neg.s	%f5 %f1
	ilw.s	%r0 %f0 l.81
	fbge	%f1 %f0 branching_b.1575
tail_b.2487 :
	ilw.s	%r0 %f5 l.58
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f1 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f1 %f0 %f9
	mul.s	%f8 %f4 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.2490
branching_b.1575 :
	ilw.s	%r0 %f0 l.82
	fbge	%f1 %f0 tail_b.2489
tail_b.2488 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f4
	add.s	%f0 %f1 %f0
	div.s	%f0 %f4 %f5
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f10 l.59
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f5 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f1
	mul.s	%f4 %f9 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f5 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2490
tail_b.2489 :
	ilw.s	%r0 %f10 l.56
	div.s	%f1 %f10 %f8
	ilw.s	%r0 %f1 l.90
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f8 %f5 %f5
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f8 %f5 %f5
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f9
	mul.s	%f4 %f5 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f5
	mul.s	%f4 %f9 %f0
	add.s	%f0 %f5 %f9
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f5
	mul.s	%f4 %f9 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f0
tail_b.2490 :
	ilw.s	%r0 %f1 l.89
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.76
	div.s	%f1 %f0 %f1
branching_b.1576 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f0 556
	lw	%r15 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	fbge	%f6 %f2 tail_b.2493
tail_b.2492 :
	neg.s	%f6 %f1
	j	branching_b.1577
tail_b.2493 :
	mov.s	%f6 %f1
branching_b.1577 :
	fbge	%f1 %f7 tail_b.2495
tail_b.2494 :
	addi	%r0 %r1 1
	j	branching_b.1578
tail_b.2495 :
	addi	%r0 %r1 0
branching_b.1578 :
	beq	%r1 %r4 branching_b.1579
tail_b.2505 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1585
branching_b.1579 :
	div.s	%f6 %f0 %f0
	fbge	%f0 %f2 tail_b.2497
tail_b.2496 :
	neg.s	%f0 %f4
	j	branching_b.1580
tail_b.2497 :
	mov.s	%f0 %f4
branching_b.1580 :
	fbg	%f2 %f4 branching_b.1583
branching_b.1581 :
	ilw.s	%r0 %f0 l.81
	fbge	%f4 %f0 branching_b.1582
tail_b.2498 :
	ilw.s	%r0 %f8 l.56
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f4 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f4 %f0 %f1
	mul.s	%f6 %f7 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f7
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f7 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2504
branching_b.1582 :
	ilw.s	%r0 %f0 l.82
	fbge	%f4 %f0 tail_b.2500
tail_b.2499 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f4 %f0
	add.s	%f7 %f4 %f1
	div.s	%f1 %f0 %f4
	ilw.s	%r0 %f6 l.59
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f9
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f9 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f9
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f9 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.2504
tail_b.2500 :
	ilw.s	%r0 %f0 l.56
	div.s	%f4 %f0 %f1
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f9 l.90
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f7
	mul.s	%f8 %f4 %f0
	add.s	%f0 %f7 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f1 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f1 %f0 %f4
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f6 %f0 %f1
	j	tail_b.2504
branching_b.1583 :
	neg.s	%f4 %f7
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1584
tail_b.2501 :
	ilw.s	%r0 %f6 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f7 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f4
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f8
	mul.s	%f1 %f4 %f0
	add.s	%f0 %f8 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f1
	j	tail_b.2504
branching_b.1584 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.2503
tail_b.2502 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f7 %f1
	add.s	%f0 %f7 %f0
	div.s	%f0 %f1 %f4
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f7 l.59
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f4 %f1 %f1
	ilw.s	%r0 %f6 l.84
	mul.s	%f4 %f6 %f6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f1
	ilw.s	%r0 %f6 l.85
	mul.s	%f4 %f6 %f6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f6
	ilw.s	%r0 %f1 l.86
	mul.s	%f4 %f1 %f1
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f1 %f1
	ilw.s	%r0 %f6 l.87
	mul.s	%f4 %f6 %f6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f6
	ilw.s	%r0 %f1 l.88
	mul.s	%f4 %f1 %f9
	mul.s	%f0 %f6 %f1
	add.s	%f1 %f9 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2504
tail_b.2503 :
	ilw.s	%r0 %f6 l.56
	div.s	%f7 %f6 %f7
	ilw.s	%r0 %f4 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f1
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f7 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f6 %f0 %f1
tail_b.2504 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.76
	div.s	%f1 %f0 %f0
branching_b.1585 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f6
	ilw.s	%r0 %f1 l.91
	ilw.s	%r0 %f0 l.62
	sub.s	%f5 %f0 %f4
	mul.s	%f4 %f4 %f4
	sub.s	%f4 %f1 %f1
	sub.s	%f6 %f0 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f2 tail_b.2507
tail_b.2506 :
	addi	%r0 %r1 1
	j	branching_b.1586
tail_b.2507 :
	addi	%r0 %r1 0
branching_b.1586 :
	beq	%r1 %r4 tail_b.2508
tail_b.2509 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2510
tail_b.2508 :
tail_b.2510 :
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.92
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1587 :
	addi	%r0 %r1 0
	lw	%r0 %r14 536
	sw	%r26 %r15 -56
	sw.s	%r26 %f3 -52
	sw.s	%r26 %f2 -48
	sw	%r26 %r2 -44
	sw	%r26 %r13 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r14 %r2
	sw	%r26 %r28 -60
	addi	%r26 %r26 -64
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 64
	lw	%r26 %r28 -60
	lw	%r26 %r15 -56
	lw.s	%r26 %f3 -52
	lw.s	%r26 %f2 -48
	lw	%r26 %r2 -44
	lw	%r26 %r13 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	beq	%r1 %r4 branching_b.1588
tail_b.2517 :
	j	tail_b.2518
branching_b.1588 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 572
	lw.s	%r0 %f4 316
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	lw.s	%r0 %f4 320
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2513
tail_b.2512 :
	addi	%r0 %r1 1
	j	branching_b.1589
tail_b.2513 :
	addi	%r0 %r1 0
branching_b.1589 :
	beq	%r1 %r4 tail_b.2514
tail_b.2515 :
	j	tail_b.2516
tail_b.2514 :
	ilw.s	%r0 %f0 l.51
tail_b.2516 :
	mul.s	%f0 %f3 %f1
	lw	%r15 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
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
	j	tail_b.2518
branching_b.1555 :
	lw	%r15 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f1 572
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f2 tail_b.2462
tail_b.2461 :
	addi	%r0 %r14 1
	j	branching_b.1556
tail_b.2462 :
	addi	%r0 %r14 0
branching_b.1556 :
	beq	%r14 %r4 branching_b.1557
tail_b.2465 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.2466
branching_b.1557 :
	beq	%r1 %r4 tail_b.2463
tail_b.2464 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f1
	j	tail_b.2466
tail_b.2463 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f1
tail_b.2466 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1558
postloop_b.58 :
branching_b.1590 :
	addi	%r0 %r2 3
	bne	%r10 %r2 preloop_b.60
tail_b.2682 :
	j	branching_b.1691
preloop_b.60 :
	lw	%r0 %r14 728
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r16
setup_startp_constants_loop.3 :
	ble	%r4 %r16 branching_b.1592
tail_b.2529 :
	j	postloop_b.59
branching_b.1592 :
	slli	%r16 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r15 0
	lw	%r15 %r17 40
	lw	%r15 %r13 4
	mov	%r9 %r1
	lw.s	%r1 %f1 0
	lw	%r15 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mov	%r17 %r1
	sw.s	%r1 %f0 0
	addi	%r9 %r1 4
	lw.s	%r1 %f1 0
	lw	%r15 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r17 %r1 4
	sw.s	%r1 %f0 0
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	lw	%r15 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r17 %r1 8
	sw.s	%r1 %f0 0
	beq	%r13 %r12 tail_b.2521
branching_b.1593 :
	bl	%r12 %r13 branching_b.1594
tail_b.2527 :
	j	tail_b.2528
branching_b.1594 :
	mov	%r17 %r1
	lw.s	%r1 %f2 0
	addi	%r17 %r1 4
	lw.s	%r1 %f5 0
	addi	%r17 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f2 %f2 %f3
	lw	%r15 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f4
	mul.s	%f5 %f5 %f3
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f4 %f1
	mul.s	%f0 %f0 %f4
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f1 %f4
	lw	%r15 %r1 12
	beq	%r1 %r4 tail_b.2522
tail_b.2523 :
	mul.s	%f0 %f5 %f1
	lw	%r15 %r1 36
	lw.s	%r1 %f3 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f4 %f3
	mul.s	%f2 %f0 %f0
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f1
	mul.s	%f5 %f2 %f2
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	j	branching_b.1595
tail_b.2522 :
	mov.s	%f4 %f0
	j	branching_b.1595
tail_b.2521 :
	lw	%r15 %r13 16
	mov	%r17 %r1
	lw.s	%r1 %f1 0
	addi	%r17 %r1 4
	lw.s	%r1 %f2 0
	addi	%r17 %r1 8
	lw.s	%r1 %f3 0
	mov	%r13 %r1
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f1
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r17 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.2528
branching_b.1595 :
	beq	%r13 %r2 tail_b.2524
tail_b.2525 :
	j	tail_b.2526
tail_b.2524 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f0 %f0
tail_b.2526 :
	addi	%r17 %r1 12
	sw.s	%r1 %f0 0
tail_b.2528 :
	addi	%r16 %r1 -1
	mov	%r1 %r16
	j	setup_startp_constants_loop.3
postloop_b.59 :
preloop_b.61 :
	addi	%r0 %r1 118
	mov	%r1 %r15
iter_trace_diffuse_rays_loop.3 :
	ble	%r4 %r15 branching_b.1597
tail_b.2681 :
	j	postloop_b.60
branching_b.1597 :
	slli	%r15 %r1 2
	add	%r14 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	mov	%r1 %r13
	lw.s	%r13 %f0 0
	mov	%r5 %r13
	lw.s	%r13 %f1 0
	mul.s	%f1 %f0 %f2
	addi	%r1 %r13 4
	lw.s	%r13 %f0 0
	addi	%r5 %r13 4
	lw.s	%r13 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	addi	%r5 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f2 l.51
	fbge	%f1 %f2 tail_b.2531
tail_b.2530 :
	addi	%r0 %r1 1
	j	branching_b.1598
tail_b.2531 :
	addi	%r0 %r1 0
branching_b.1598 :
	beq	%r1 %r4 branching_b.1599
branching_b.1645 :
	addi	%r15 %r1 1
	slli	%r1 %r1 2
	add	%r14 %r1 %r1
	lw	%r1 %r16 0
	ilw.s	%r0 %f0 l.94
	div.s	%f0 %f1 %f4
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r13 0
	lw	%r0 %r1 536
	sw.s	%r26 %f4 -60
	sw	%r26 %r16 -56
	sw.s	%r26 %f2 -52
	sw	%r26 %r15 -48
	sw	%r26 %r14 -44
	sw	%r26 %r2 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r16 %r3
	mov	%r1 %r2
	mov	%r13 %r1
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw.s	%r26 %f4 -60
	lw	%r26 %r16 -56
	lw.s	%r26 %f2 -52
	lw	%r26 %r15 -48
	lw	%r26 %r14 -44
	lw	%r26 %r2 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f1 l.70
	fbge	%f1 %f0 tail_b.2607
tail_b.2606 :
	addi	%r0 %r1 1
	j	branching_b.1646
tail_b.2607 :
	addi	%r0 %r1 0
	j	branching_b.1646
branching_b.1599 :
	slli	%r15 %r1 2
	add	%r14 %r1 %r1
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.95
	div.s	%f0 %f1 %f4
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r13 0
	lw	%r0 %r16 536
	sw.s	%r26 %f4 -60
	sw	%r26 %r1 -56
	sw.s	%r26 %f2 -52
	sw	%r26 %r15 -48
	sw	%r26 %r14 -44
	sw	%r26 %r2 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r1 %r3
	mov	%r16 %r2
	mov	%r13 %r1
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	mov	%r1 %r13
	lw.s	%r26 %f4 -60
	lw	%r26 %r1 -56
	lw.s	%r26 %f2 -52
	lw	%r26 %r15 -48
	lw	%r26 %r14 -44
	lw	%r26 %r2 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.70
	fbge	%f0 %f1 tail_b.2533
tail_b.2532 :
	addi	%r0 %r13 1
	j	branching_b.1600
tail_b.2533 :
	addi	%r0 %r13 0
branching_b.1600 :
	beq	%r13 %r4 tail_b.2534
branching_b.1601 :
	ilw.s	%r0 %f0 l.71
	fbge	%f1 %f0 tail_b.2536
tail_b.2535 :
	addi	%r0 %r13 1
	j	branching_b.1602
tail_b.2536 :
	addi	%r0 %r13 0
	j	branching_b.1602
tail_b.2534 :
	addi	%r0 %r13 0
branching_b.1602 :
	beq	%r13 %r4 tail_b.2537
branching_b.1603 :
	lw	%r0 %r13 564
	slli	%r13 %r13 2
	addi	%r13 %r13 48
	lw	%r13 %r13 0
	lw	%r1 %r17 0
	lw	%r13 %r1 4
	beq	%r1 %r11 branching_b.1604
branching_b.1608 :
	beq	%r1 %r12 tail_b.2546
branching_b.1609 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f9
	lw.s	%r0 %f1 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f6
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f8
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f3
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f7
	lw	%r13 %r1 12
	beq	%r1 %r4 tail_b.2547
tail_b.2548 :
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f5
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f1
	add.s	%f1 %f5 %f1
	ilw.s	%r0 %f5 l.67
	div.s	%f5 %f1 %f1
	add.s	%f1 %f3 %f1
	sw.s	%r0 %f1 568
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f9 %f3
	lw	%r13 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f1
	add.s	%f1 %f3 %f1
	div.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f1
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	div.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1610
tail_b.2547 :
	sw.s	%r0 %f3 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f7 576
	j	branching_b.1610
tail_b.2546 :
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1613
branching_b.1604 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r16 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r17 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.2539
tail_b.2538 :
	addi	%r0 %r1 1
	j	branching_b.1605
tail_b.2539 :
	addi	%r0 %r1 0
	j	branching_b.1605
tail_b.2537 :
tail_b.2680 :
	addi	%r15 %r1 -2
	mov	%r1 %r15
	j	iter_trace_diffuse_rays_loop.3
branching_b.1605 :
	beq	%r1 %r4 branching_b.1606
tail_b.2544 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2545
branching_b.1606 :
	fbge	%f2 %f0 tail_b.2541
tail_b.2540 :
	addi	%r0 %r1 1
	j	branching_b.1607
tail_b.2541 :
	addi	%r0 %r1 0
branching_b.1607 :
	beq	%r1 %r4 tail_b.2542
tail_b.2543 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2545
tail_b.2542 :
	ilw.s	%r0 %f0 l.58
tail_b.2545 :
	neg.s	%f0 %f0
	slli	%r16 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1613 :
	lw	%r13 %r16 0
	lw	%r13 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r13 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r13 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r16 %r11 branching_b.1614
branching_b.1619 :
	beq	%r16 %r12 tail_b.2564
branching_b.1620 :
	beq	%r16 %r2 tail_b.2565
branching_b.1621 :
	beq	%r16 %r6 branching_b.1622
tail_b.2599 :
	j	branching_b.1642
branching_b.1622 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r13 %r1 16
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f3 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f0
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f0 %f6
	mul.s	%f1 %f1 %f0
	mul.s	%f6 %f6 %f3
	add.s	%f3 %f0 %f3
	fbge	%f1 %f2 tail_b.2567
tail_b.2566 :
	neg.s	%f1 %f0
	j	branching_b.1623
tail_b.2567 :
	mov.s	%f1 %f0
	j	branching_b.1623
tail_b.2565 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f3
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	mul.s	%f3 %f3 %f0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.74
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.76
	mul.s	%f1 %f0 %f0
	sw	%r26 %r13 -60
	sw.s	%r26 %f4 -56
	sw.s	%r26 %f2 -52
	sw	%r26 %r15 -48
	sw	%r26 %r14 -44
	sw	%r26 %r2 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	cos.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw	%r26 %r13 -60
	lw.s	%r26 %f4 -56
	lw.s	%r26 %f2 -52
	lw	%r26 %r15 -48
	lw	%r26 %r14 -44
	lw	%r26 %r2 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f3 l.52
	mul.s	%f3 %f1 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1642
tail_b.2564 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	sw	%r26 %r13 -60
	sw.s	%r26 %f4 -56
	sw.s	%r26 %f2 -52
	sw	%r26 %r15 -48
	sw	%r26 %r14 -44
	sw	%r26 %r2 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	sin.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw	%r26 %r13 -60
	lw.s	%r26 %f4 -56
	lw.s	%r26 %f2 -52
	lw	%r26 %r15 -48
	lw	%r26 %r14 -44
	lw	%r26 %r2 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f3 l.52
	mul.s	%f0 %f3 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f1 l.56
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f3 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1642
branching_b.1614 :
	lw.s	%r0 %f1 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	ilw.s	%r0 %f1 l.72
	mul.s	%f1 %f5 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f3 l.73
	mul.s	%f3 %f0 %f0
	sub.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.74
	fbge	%f0 %f5 tail_b.2556
tail_b.2555 :
	addi	%r0 %r16 1
	j	branching_b.1615
tail_b.2556 :
	addi	%r0 %r16 0
branching_b.1615 :
	lw.s	%r0 %f6 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f6 %f6
	mul.s	%f1 %f6 %f0
	floor.w.s	%f0 %f0
	mul.s	%f3 %f0 %f0
	sub.s	%f0 %f6 %f0
	fbge	%f0 %f5 tail_b.2558
tail_b.2557 :
	addi	%r0 %r1 1
	j	branching_b.1616
tail_b.2558 :
	addi	%r0 %r1 0
branching_b.1616 :
	beq	%r16 %r4 branching_b.1617
branching_b.1618 :
	beq	%r1 %r4 tail_b.2561
tail_b.2562 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2563
tail_b.2561 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2563
branching_b.1617 :
	beq	%r1 %r4 tail_b.2559
tail_b.2560 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2563
tail_b.2559 :
	ilw.s	%r0 %f0 l.52
tail_b.2563 :
	sw.s	%r0 %f0 584
	j	branching_b.1642
branching_b.1623 :
	ilw.s	%r0 %f5 l.77
	fbge	%f0 %f5 tail_b.2569
tail_b.2568 :
	addi	%r0 %r1 1
	j	branching_b.1624
tail_b.2569 :
	addi	%r0 %r1 0
branching_b.1624 :
	beq	%r1 %r4 branching_b.1625
tail_b.2579 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1631
branching_b.1625 :
	div.s	%f1 %f6 %f0
	fbge	%f0 %f2 tail_b.2571
tail_b.2570 :
	neg.s	%f0 %f1
	j	branching_b.1626
tail_b.2571 :
	mov.s	%f0 %f1
branching_b.1626 :
	fbg	%f2 %f1 branching_b.1629
branching_b.1627 :
	ilw.s	%r0 %f0 l.81
	fbge	%f1 %f0 branching_b.1628
tail_b.2572 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f6 l.84
	mul.s	%f1 %f6 %f6
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f8
	mul.s	%f9 %f6 %f0
	add.s	%f0 %f8 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f1 %f6 %f6
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.88
	mul.s	%f1 %f6 %f6
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2578
branching_b.1628 :
	ilw.s	%r0 %f0 l.82
	fbge	%f1 %f0 tail_b.2574
tail_b.2573 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f1 %f0
	add.s	%f7 %f1 %f1
	div.s	%f1 %f0 %f9
	ilw.s	%r0 %f10 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f1
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f8
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f1
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2578
tail_b.2574 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f9
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f7 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f6
	mul.s	%f1 %f10 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f9 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f6
	mul.s	%f1 %f10 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f10
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f6 l.88
	mul.s	%f9 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2578
branching_b.1629 :
	neg.s	%f1 %f8
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1630
tail_b.2575 :
	ilw.s	%r0 %f1 l.58
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f6
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f8 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f8 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2578
branching_b.1630 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.2577
tail_b.2576 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f8 %f1
	add.s	%f0 %f8 %f0
	div.s	%f0 %f1 %f7
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f10 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f7 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f9
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f9 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f7 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2578
tail_b.2577 :
	ilw.s	%r0 %f7 l.56
	div.s	%f8 %f7 %f1
	ilw.s	%r0 %f8 l.90
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f6
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f1 %f6 %f6
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f10
	mul.s	%f9 %f6 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f6
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.88
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f0
tail_b.2578 :
	ilw.s	%r0 %f1 l.89
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f1 %f0
branching_b.1631 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f1
	lw.s	%r0 %f6 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f6 %f6
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f6 %f0
	fbge	%f3 %f2 tail_b.2581
tail_b.2580 :
	neg.s	%f3 %f6
	j	branching_b.1632
tail_b.2581 :
	mov.s	%f3 %f6
branching_b.1632 :
	fbge	%f6 %f5 tail_b.2583
tail_b.2582 :
	addi	%r0 %r1 1
	j	branching_b.1633
tail_b.2583 :
	addi	%r0 %r1 0
branching_b.1633 :
	beq	%r1 %r4 branching_b.1634
tail_b.2593 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1640
branching_b.1634 :
	div.s	%f3 %f0 %f0
	fbge	%f0 %f2 tail_b.2585
tail_b.2584 :
	neg.s	%f0 %f6
	j	branching_b.1635
tail_b.2585 :
	mov.s	%f0 %f6
branching_b.1635 :
	fbg	%f2 %f6 branching_b.1638
branching_b.1636 :
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 branching_b.1637
tail_b.2586 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f3
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f0
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.86
	mul.s	%f6 %f3 %f3
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.87
	mul.s	%f6 %f3 %f3
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.88
	mul.s	%f6 %f3 %f3
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f3
	j	tail_b.2592
branching_b.1637 :
	ilw.s	%r0 %f0 l.82
	fbge	%f6 %f0 tail_b.2588
tail_b.2587 :
	ilw.s	%r0 %f5 l.56
	sub.s	%f5 %f6 %f3
	add.s	%f5 %f6 %f0
	div.s	%f0 %f3 %f8
	ilw.s	%r0 %f7 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f3
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f9
	mul.s	%f6 %f3 %f0
	add.s	%f0 %f9 %f3
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.87
	mul.s	%f8 %f3 %f3
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.88
	mul.s	%f8 %f3 %f3
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f3
	j	tail_b.2592
tail_b.2588 :
	ilw.s	%r0 %f0 l.56
	div.s	%f6 %f0 %f6
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f3 l.90
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f7
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f7 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f7
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f6 %f0 %f9
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f5 %f0 %f3
	j	tail_b.2592
branching_b.1638 :
	neg.s	%f6 %f8
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1639
tail_b.2589 :
	ilw.s	%r0 %f3 l.58
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f5
	mul.s	%f6 %f7 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f8 %f5 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f8 %f5 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f8 %f5 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f3 %f0 %f3
	j	tail_b.2592
branching_b.1639 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.2591
tail_b.2590 :
	ilw.s	%r0 %f3 l.56
	sub.s	%f3 %f8 %f0
	add.s	%f3 %f8 %f3
	div.s	%f3 %f0 %f9
	ilw.s	%r0 %f3 l.58
	ilw.s	%r0 %f8 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.86
	mul.s	%f9 %f6 %f6
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f7
	mul.s	%f5 %f6 %f0
	add.s	%f0 %f7 %f6
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f7
	mul.s	%f5 %f6 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f3 %f0 %f3
	j	tail_b.2592
tail_b.2591 :
	ilw.s	%r0 %f7 l.56
	div.s	%f8 %f7 %f8
	ilw.s	%r0 %f9 l.90
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f3 l.84
	mul.s	%f8 %f3 %f3
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f6
	mul.s	%f5 %f3 %f0
	add.s	%f0 %f6 %f3
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.88
	mul.s	%f8 %f3 %f3
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f0 %f3
tail_b.2592 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f3 %f0
branching_b.1640 :
	floor.w.s	%f0 %f3
	sub.s	%f3 %f0 %f5
	ilw.s	%r0 %f0 l.91
	ilw.s	%r0 %f3 l.62
	sub.s	%f1 %f3 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f1
	sub.s	%f5 %f3 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f2 tail_b.2595
tail_b.2594 :
	addi	%r0 %r1 1
	j	branching_b.1641
tail_b.2595 :
	addi	%r0 %r1 0
branching_b.1641 :
	beq	%r1 %r4 tail_b.2596
tail_b.2597 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2598
tail_b.2596 :
tail_b.2598 :
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.92
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1642 :
	addi	%r0 %r16 0
	lw	%r0 %r1 536
	sw	%r26 %r13 -60
	sw.s	%r26 %f4 -56
	sw.s	%r26 %f2 -52
	sw	%r26 %r15 -48
	sw	%r26 %r14 -44
	sw	%r26 %r2 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r1 %r2
	mov	%r16 %r1
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw	%r26 %r13 -60
	lw.s	%r26 %f4 -56
	lw.s	%r26 %f2 -52
	lw	%r26 %r15 -48
	lw	%r26 %r14 -44
	lw	%r26 %r2 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	beq	%r1 %r4 branching_b.1643
tail_b.2605 :
	j	tail_b.2680
branching_b.1643 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f3 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f0
	lw.s	%r0 %f1 576
	lw.s	%r0 %f3 320
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2601
tail_b.2600 :
	addi	%r0 %r1 1
	j	branching_b.1644
tail_b.2601 :
	addi	%r0 %r1 0
branching_b.1644 :
	beq	%r1 %r4 tail_b.2602
tail_b.2603 :
	j	tail_b.2604
tail_b.2602 :
	ilw.s	%r0 %f0 l.51
tail_b.2604 :
	mul.s	%f0 %f4 %f0
	lw	%r13 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 592
	lw.s	%r0 %f2 580
	mul.s	%f2 %f1 %f2
	add.s	%f2 %f0 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f2 596
	lw.s	%r0 %f0 584
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f0 600
	lw.s	%r0 %f2 588
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2680
branching_b.1610 :
	lw	%r13 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f1 572
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r0 %f1 576
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f2 tail_b.2550
tail_b.2549 :
	addi	%r0 %r16 1
	j	branching_b.1611
tail_b.2550 :
	addi	%r0 %r16 0
branching_b.1611 :
	beq	%r16 %r4 branching_b.1612
tail_b.2553 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.2554
branching_b.1612 :
	beq	%r1 %r4 tail_b.2551
tail_b.2552 :
	ilw.s	%r0 %f1 l.58
	div.s	%f0 %f1 %f1
	j	tail_b.2554
tail_b.2551 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f1
tail_b.2554 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1613
branching_b.1646 :
	beq	%r1 %r4 tail_b.2608
branching_b.1647 :
	ilw.s	%r0 %f1 l.71
	fbge	%f0 %f1 tail_b.2610
tail_b.2609 :
	addi	%r0 %r1 1
	j	branching_b.1648
tail_b.2610 :
	addi	%r0 %r1 0
	j	branching_b.1648
tail_b.2608 :
	addi	%r0 %r1 0
branching_b.1648 :
	beq	%r1 %r4 tail_b.2611
branching_b.1649 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r13 0
	lw	%r16 %r1 0
	lw	%r13 %r16 4
	beq	%r16 %r11 branching_b.1650
branching_b.1654 :
	beq	%r16 %r12 tail_b.2620
branching_b.1655 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f6
	lw.s	%r0 %f1 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f8
	lw.s	%r0 %f1 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f9
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f3
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f9 %f7
	lw	%r13 %r1 12
	beq	%r1 %r4 tail_b.2621
tail_b.2622 :
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f5
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f9 %f1
	add.s	%f1 %f5 %f1
	ilw.s	%r0 %f5 l.67
	div.s	%f5 %f1 %f1
	add.s	%f1 %f3 %f1
	sw.s	%r0 %f1 568
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f3
	lw	%r13 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f9 %f1
	add.s	%f1 %f3 %f1
	div.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f1
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	div.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1656
tail_b.2621 :
	sw.s	%r0 %f3 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f7 576
	j	branching_b.1656
tail_b.2620 :
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1659
branching_b.1650 :
	lw	%r0 %r17 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r17 %r16 -1
	addi	%r17 %r17 -1
	slli	%r17 %r17 2
	add	%r1 %r17 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.2613
tail_b.2612 :
	addi	%r0 %r1 1
	j	branching_b.1651
tail_b.2613 :
	addi	%r0 %r1 0
	j	branching_b.1651
tail_b.2611 :
	j	tail_b.2680
branching_b.1651 :
	beq	%r1 %r4 branching_b.1652
tail_b.2618 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2619
branching_b.1652 :
	fbge	%f2 %f0 tail_b.2615
tail_b.2614 :
	addi	%r0 %r1 1
	j	branching_b.1653
tail_b.2615 :
	addi	%r0 %r1 0
branching_b.1653 :
	beq	%r1 %r4 tail_b.2616
tail_b.2617 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2619
tail_b.2616 :
	ilw.s	%r0 %f0 l.58
tail_b.2619 :
	neg.s	%f0 %f0
	slli	%r16 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1659 :
	lw	%r13 %r16 0
	lw	%r13 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r13 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r13 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r16 %r11 branching_b.1660
branching_b.1665 :
	beq	%r16 %r12 tail_b.2638
branching_b.1666 :
	beq	%r16 %r2 tail_b.2639
branching_b.1667 :
	beq	%r16 %r6 branching_b.1668
tail_b.2673 :
	j	branching_b.1688
branching_b.1668 :
	lw.s	%r0 %f1 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	sub.s	%f3 %f0 %f0
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f0 %f0
	mul.s	%f1 %f1 %f3
	mul.s	%f0 %f0 %f5
	add.s	%f5 %f3 %f3
	fbge	%f1 %f2 tail_b.2641
tail_b.2640 :
	neg.s	%f1 %f5
	j	branching_b.1669
tail_b.2641 :
	mov.s	%f1 %f5
	j	branching_b.1669
tail_b.2639 :
	lw.s	%r0 %f1 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw.s	%r0 %f3 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f0
	mul.s	%f1 %f1 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.74
	div.s	%f1 %f0 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.76
	mul.s	%f1 %f0 %f0
	sw	%r26 %r13 -60
	sw.s	%r26 %f4 -56
	sw.s	%r26 %f2 -52
	sw	%r26 %r15 -48
	sw	%r26 %r14 -44
	sw	%r26 %r2 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	cos.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw	%r26 %r13 -60
	lw.s	%r26 %f4 -56
	lw.s	%r26 %f2 -52
	lw	%r26 %r15 -48
	lw	%r26 %r14 -44
	lw	%r26 %r2 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f0 l.52
	mul.s	%f0 %f1 %f3
	sw.s	%r0 %f3 584
	ilw.s	%r0 %f3 l.56
	sub.s	%f1 %f3 %f1
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1688
tail_b.2638 :
	lw.s	%r0 %f1 556
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f1 %f0
	sw	%r26 %r13 -60
	sw.s	%r26 %f4 -56
	sw.s	%r26 %f2 -52
	sw	%r26 %r15 -48
	sw	%r26 %r14 -44
	sw	%r26 %r2 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	sin.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw	%r26 %r13 -60
	lw.s	%r26 %f4 -56
	lw.s	%r26 %f2 -52
	lw	%r26 %r15 -48
	lw	%r26 %r14 -44
	lw	%r26 %r2 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f3 l.52
	mul.s	%f1 %f3 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f3 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1688
branching_b.1660 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f3
	ilw.s	%r0 %f1 l.72
	mul.s	%f1 %f3 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f6 l.73
	mul.s	%f6 %f0 %f0
	sub.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.74
	fbge	%f0 %f3 tail_b.2630
tail_b.2629 :
	addi	%r0 %r16 1
	j	branching_b.1661
tail_b.2630 :
	addi	%r0 %r16 0
branching_b.1661 :
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	sub.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	mul.s	%f6 %f1 %f1
	sub.s	%f1 %f0 %f0
	fbge	%f0 %f3 tail_b.2632
tail_b.2631 :
	addi	%r0 %r1 1
	j	branching_b.1662
tail_b.2632 :
	addi	%r0 %r1 0
branching_b.1662 :
	beq	%r16 %r4 branching_b.1663
branching_b.1664 :
	beq	%r1 %r4 tail_b.2635
tail_b.2636 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2637
tail_b.2635 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2637
branching_b.1663 :
	beq	%r1 %r4 tail_b.2633
tail_b.2634 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2637
tail_b.2633 :
	ilw.s	%r0 %f0 l.52
tail_b.2637 :
	sw.s	%r0 %f0 584
	j	branching_b.1688
branching_b.1669 :
	ilw.s	%r0 %f6 l.77
	fbge	%f5 %f6 tail_b.2643
tail_b.2642 :
	addi	%r0 %r1 1
	j	branching_b.1670
tail_b.2643 :
	addi	%r0 %r1 0
branching_b.1670 :
	beq	%r1 %r4 branching_b.1671
tail_b.2653 :
	ilw.s	%r0 %f1 l.79
	j	branching_b.1677
branching_b.1671 :
	div.s	%f1 %f0 %f0
	fbge	%f0 %f2 tail_b.2645
tail_b.2644 :
	neg.s	%f0 %f7
	j	branching_b.1672
tail_b.2645 :
	mov.s	%f0 %f7
branching_b.1672 :
	fbg	%f2 %f7 branching_b.1675
branching_b.1673 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1674
tail_b.2646 :
	ilw.s	%r0 %f8 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f9
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2652
branching_b.1674 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.2648
tail_b.2647 :
	ilw.s	%r0 %f5 l.56
	sub.s	%f5 %f7 %f1
	add.s	%f5 %f7 %f0
	div.s	%f0 %f1 %f10
	ilw.s	%r0 %f1 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f10 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f10 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f7
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f10 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2652
tail_b.2648 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f1
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f8 l.90
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f1 %f7 %f7
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f10
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f7
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f1 %f0 %f10
	mul.s	%f9 %f7 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2652
branching_b.1675 :
	neg.s	%f7 %f8
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1676
tail_b.2649 :
	ilw.s	%r0 %f5 l.58
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f1
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2652
branching_b.1676 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.2651
tail_b.2650 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f8 %f1
	add.s	%f0 %f8 %f0
	div.s	%f0 %f1 %f10
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f5 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f10 %f7 %f7
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f7
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f8
	mul.s	%f9 %f7 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.88
	mul.s	%f10 %f0 %f7
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f1
	j	tail_b.2652
tail_b.2651 :
	ilw.s	%r0 %f5 l.56
	div.s	%f8 %f5 %f8
	ilw.s	%r0 %f7 l.90
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f8 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f8 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f1
tail_b.2652 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f1 %f1
branching_b.1677 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f1 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	fbge	%f3 %f2 tail_b.2655
tail_b.2654 :
	neg.s	%f3 %f1
	j	branching_b.1678
tail_b.2655 :
	mov.s	%f3 %f1
branching_b.1678 :
	fbge	%f1 %f6 tail_b.2657
tail_b.2656 :
	addi	%r0 %r1 1
	j	branching_b.1679
tail_b.2657 :
	addi	%r0 %r1 0
branching_b.1679 :
	beq	%r1 %r4 branching_b.1680
tail_b.2667 :
	ilw.s	%r0 %f1 l.79
	j	branching_b.1686
branching_b.1680 :
	div.s	%f3 %f0 %f0
	fbge	%f0 %f2 tail_b.2659
tail_b.2658 :
	neg.s	%f0 %f7
	j	branching_b.1681
tail_b.2659 :
	mov.s	%f0 %f7
branching_b.1681 :
	fbg	%f2 %f7 branching_b.1684
branching_b.1682 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1683
tail_b.2660 :
	ilw.s	%r0 %f6 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f3 l.84
	mul.s	%f7 %f3 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f0 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f3
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f3 %f8
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f3
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f1
	j	tail_b.2666
branching_b.1683 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.2662
tail_b.2661 :
	ilw.s	%r0 %f9 l.56
	sub.s	%f9 %f7 %f0
	add.s	%f9 %f7 %f1
	div.s	%f1 %f0 %f7
	ilw.s	%r0 %f8 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f7 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f1
	mul.s	%f6 %f3 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f3
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f3 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f3
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f3 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f3
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.2666
tail_b.2662 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f6
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f3 l.90
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f6 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f6 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f6 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f6 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f6 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.2666
branching_b.1684 :
	neg.s	%f7 %f8
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1685
tail_b.2663 :
	ilw.s	%r0 %f6 l.58
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f3
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f8 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f8 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f8 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f7
	mul.s	%f3 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f1
	j	tail_b.2666
branching_b.1685 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.2665
tail_b.2664 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f8 %f1
	add.s	%f0 %f8 %f0
	div.s	%f0 %f1 %f9
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f6 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f3
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f9 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f7
	mul.s	%f3 %f1 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f9 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f1
	mul.s	%f3 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2666
tail_b.2665 :
	ilw.s	%r0 %f7 l.56
	div.s	%f8 %f7 %f8
	ilw.s	%r0 %f0 l.90
	neg.s	%f8 %f1
	mul.s	%f8 %f1 %f6
	ilw.s	%r0 %f1 l.83
	mul.s	%f8 %f1 %f9
	ilw.s	%r0 %f1 l.84
	mul.s	%f8 %f1 %f3
	mul.s	%f6 %f9 %f1
	add.s	%f1 %f3 %f3
	ilw.s	%r0 %f1 l.85
	mul.s	%f8 %f1 %f9
	mul.s	%f6 %f3 %f1
	add.s	%f1 %f9 %f1
	ilw.s	%r0 %f3 l.86
	mul.s	%f8 %f3 %f3
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.87
	mul.s	%f8 %f3 %f3
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.88
	mul.s	%f8 %f3 %f3
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f8 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f1
tail_b.2666 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.76
	div.s	%f1 %f0 %f1
branching_b.1686 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f3
	ilw.s	%r0 %f1 l.91
	ilw.s	%r0 %f6 l.62
	sub.s	%f5 %f6 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	sub.s	%f3 %f6 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f2 tail_b.2669
tail_b.2668 :
	addi	%r0 %r1 1
	j	branching_b.1687
tail_b.2669 :
	addi	%r0 %r1 0
branching_b.1687 :
	beq	%r1 %r4 tail_b.2670
tail_b.2671 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2672
tail_b.2670 :
tail_b.2672 :
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.92
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1688 :
	addi	%r0 %r16 0
	lw	%r0 %r1 536
	sw	%r26 %r13 -60
	sw.s	%r26 %f4 -56
	sw.s	%r26 %f2 -52
	sw	%r26 %r15 -48
	sw	%r26 %r14 -44
	sw	%r26 %r2 -40
	sw	%r26 %r12 -36
	sw	%r26 %r11 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r10 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r1 %r2
	mov	%r16 %r1
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw	%r26 %r13 -60
	lw.s	%r26 %f4 -56
	lw.s	%r26 %f2 -52
	lw	%r26 %r15 -48
	lw	%r26 %r14 -44
	lw	%r26 %r2 -40
	lw	%r26 %r12 -36
	lw	%r26 %r11 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r10 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	beq	%r1 %r4 branching_b.1689
tail_b.2679 :
	j	tail_b.2680
branching_b.1689 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f3
	lw.s	%r0 %f0 572
	lw.s	%r0 %f1 316
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	lw.s	%r0 %f3 576
	lw.s	%r0 %f1 320
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2675
tail_b.2674 :
	addi	%r0 %r1 1
	j	branching_b.1690
tail_b.2675 :
	addi	%r0 %r1 0
branching_b.1690 :
	beq	%r1 %r4 tail_b.2676
tail_b.2677 :
	j	tail_b.2678
tail_b.2676 :
	ilw.s	%r0 %f0 l.51
tail_b.2678 :
	mul.s	%f0 %f4 %f0
	lw	%r13 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f2
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
	j	tail_b.2680
branching_b.1656 :
	lw	%r13 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f2 tail_b.2624
tail_b.2623 :
	addi	%r0 %r16 1
	j	branching_b.1657
tail_b.2624 :
	addi	%r0 %r16 0
branching_b.1657 :
	beq	%r16 %r4 branching_b.1658
tail_b.2627 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2628
branching_b.1658 :
	beq	%r1 %r4 tail_b.2625
tail_b.2626 :
	ilw.s	%r0 %f1 l.58
	div.s	%f0 %f1 %f0
	j	tail_b.2628
tail_b.2625 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f0
tail_b.2628 :
	lw.s	%r0 %f1 568
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 568
	lw.s	%r0 %f1 572
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 572
	lw.s	%r0 %f1 576
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1659
postloop_b.60 :
branching_b.1691 :
	bne	%r10 %r6 preloop_b.62
tail_b.2844 :
	j	tail_b.2845
preloop_b.62 :
	lw	%r0 %r10 732
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r13
setup_startp_constants_loop.2 :
	ble	%r4 %r13 branching_b.1693
tail_b.2691 :
	j	postloop_b.61
branching_b.1693 :
	slli	%r13 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r14 0
	lw	%r14 %r16 40
	lw	%r14 %r15 4
	mov	%r9 %r1
	lw.s	%r1 %f1 0
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mov	%r16 %r1
	sw.s	%r1 %f0 0
	addi	%r9 %r1 4
	lw.s	%r1 %f1 0
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r16 %r1 4
	sw.s	%r1 %f0 0
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r16 %r1 8
	sw.s	%r1 %f0 0
	beq	%r15 %r12 tail_b.2683
branching_b.1694 :
	bl	%r12 %r15 branching_b.1695
tail_b.2689 :
	j	tail_b.2690
branching_b.1695 :
	mov	%r16 %r1
	lw.s	%r1 %f2 0
	addi	%r16 %r1 4
	lw.s	%r1 %f5 0
	addi	%r16 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f2 %f2 %f0
	lw	%r14 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	mul.s	%f5 %f5 %f0
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f4
	mul.s	%f3 %f3 %f0
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f1
	lw	%r14 %r1 12
	beq	%r1 %r4 tail_b.2684
tail_b.2685 :
	mul.s	%f3 %f5 %f0
	lw	%r14 %r1 36
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f3 %f1
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f5 %f2 %f0
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	j	branching_b.1696
tail_b.2684 :
	mov.s	%f1 %f0
	j	branching_b.1696
tail_b.2683 :
	lw	%r14 %r14 16
	mov	%r16 %r1
	lw.s	%r1 %f0 0
	addi	%r16 %r1 4
	lw.s	%r1 %f1 0
	addi	%r16 %r1 8
	lw.s	%r1 %f3 0
	mov	%r14 %r1
	lw.s	%r1 %f2 0
	mul.s	%f0 %f2 %f2
	addi	%r14 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f1
	addi	%r14 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r16 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.2690
branching_b.1696 :
	beq	%r15 %r2 tail_b.2686
tail_b.2687 :
	j	tail_b.2688
tail_b.2686 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f0 %f0
tail_b.2688 :
	addi	%r16 %r1 12
	sw.s	%r1 %f0 0
tail_b.2690 :
	addi	%r13 %r1 -1
	mov	%r1 %r13
	j	setup_startp_constants_loop.2
postloop_b.61 :
preloop_b.63 :
	addi	%r0 %r1 118
	mov	%r1 %r9
iter_trace_diffuse_rays_loop.2 :
	ble	%r4 %r9 branching_b.1698
tail_b.2843 :
	j	postloop_b.62
branching_b.1698 :
	slli	%r9 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r13 0
	mov	%r13 %r1
	lw.s	%r1 %f1 0
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
	addi	%r13 %r1 4
	lw.s	%r1 %f1 0
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	addi	%r13 %r1 8
	lw.s	%r1 %f2 0
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f2
	ilw.s	%r0 %f1 l.51
	fbge	%f2 %f1 tail_b.2693
tail_b.2692 :
	addi	%r0 %r1 1
	j	branching_b.1699
tail_b.2693 :
	addi	%r0 %r1 0
branching_b.1699 :
	beq	%r1 %r4 branching_b.1700
branching_b.1746 :
	addi	%r9 %r1 1
	slli	%r1 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r14 0
	ilw.s	%r0 %f0 l.94
	div.s	%f0 %f2 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r13 0
	lw	%r0 %r1 536
	sw.s	%r26 %f3 -52
	sw	%r26 %r14 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r9 -40
	sw	%r26 %r10 -36
	sw	%r26 %r2 -32
	sw	%r26 %r12 -28
	sw	%r26 %r11 -24
	sw	%r26 %r5 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r14 %r3
	mov	%r1 %r2
	mov	%r13 %r1
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw.s	%r26 %f3 -52
	lw	%r26 %r14 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r9 -40
	lw	%r26 %r10 -36
	lw	%r26 %r2 -32
	lw	%r26 %r12 -28
	lw	%r26 %r11 -24
	lw	%r26 %r5 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	lw.s	%r0 %f2 548
	ilw.s	%r0 %f0 l.70
	fbge	%f0 %f2 tail_b.2769
tail_b.2768 :
	addi	%r0 %r1 1
	j	branching_b.1747
tail_b.2769 :
	addi	%r0 %r1 0
	j	branching_b.1747
branching_b.1700 :
	slli	%r9 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r14 0
	ilw.s	%r0 %f0 l.95
	div.s	%f0 %f2 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r13 0
	lw	%r0 %r1 536
	sw.s	%r26 %f3 -52
	sw	%r26 %r14 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r9 -40
	sw	%r26 %r10 -36
	sw	%r26 %r2 -32
	sw	%r26 %r12 -28
	sw	%r26 %r11 -24
	sw	%r26 %r5 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r14 %r3
	mov	%r1 %r2
	mov	%r13 %r1
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw.s	%r26 %f3 -52
	lw	%r26 %r14 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r9 -40
	lw	%r26 %r10 -36
	lw	%r26 %r2 -32
	lw	%r26 %r12 -28
	lw	%r26 %r11 -24
	lw	%r26 %r5 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f2 l.70
	fbge	%f2 %f0 tail_b.2695
tail_b.2694 :
	addi	%r0 %r1 1
	j	branching_b.1701
tail_b.2695 :
	addi	%r0 %r1 0
branching_b.1701 :
	beq	%r1 %r4 tail_b.2696
branching_b.1702 :
	ilw.s	%r0 %f2 l.71
	fbge	%f0 %f2 tail_b.2698
tail_b.2697 :
	addi	%r0 %r1 1
	j	branching_b.1703
tail_b.2698 :
	addi	%r0 %r1 0
	j	branching_b.1703
tail_b.2696 :
	addi	%r0 %r1 0
branching_b.1703 :
	beq	%r1 %r4 tail_b.2699
branching_b.1704 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r13 0
	lw	%r14 %r14 0
	lw	%r13 %r1 4
	beq	%r1 %r11 branching_b.1705
branching_b.1709 :
	beq	%r1 %r12 tail_b.2708
branching_b.1710 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f8
	lw.s	%r0 %f2 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f7
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f9
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f5
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f2
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f6
	lw	%r13 %r1 12
	beq	%r1 %r4 tail_b.2709
tail_b.2710 :
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f4
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.67
	div.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 568
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f5
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f0
	add.s	%f0 %f5 %f0
	div.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f2
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	div.s	%f4 %f0 %f0
	add.s	%f0 %f6 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1711
tail_b.2709 :
	sw.s	%r0 %f5 568
	sw.s	%r0 %f2 572
	sw.s	%r0 %f6 576
	j	branching_b.1711
tail_b.2708 :
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1714
branching_b.1705 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r15 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r14 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.2701
tail_b.2700 :
	addi	%r0 %r1 1
	j	branching_b.1706
tail_b.2701 :
	addi	%r0 %r1 0
	j	branching_b.1706
tail_b.2699 :
tail_b.2842 :
	addi	%r9 %r1 -2
	mov	%r1 %r9
	j	iter_trace_diffuse_rays_loop.2
branching_b.1706 :
	beq	%r1 %r4 branching_b.1707
tail_b.2706 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2707
branching_b.1707 :
	fbge	%f1 %f0 tail_b.2703
tail_b.2702 :
	addi	%r0 %r1 1
	j	branching_b.1708
tail_b.2703 :
	addi	%r0 %r1 0
branching_b.1708 :
	beq	%r1 %r4 tail_b.2704
tail_b.2705 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2707
tail_b.2704 :
	ilw.s	%r0 %f0 l.58
tail_b.2707 :
	neg.s	%f0 %f0
	slli	%r15 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1714 :
	lw	%r13 %r14 0
	lw	%r13 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r13 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r13 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r14 %r11 branching_b.1715
branching_b.1720 :
	beq	%r14 %r12 tail_b.2726
branching_b.1721 :
	beq	%r14 %r2 tail_b.2727
branching_b.1722 :
	beq	%r14 %r6 branching_b.1723
tail_b.2761 :
	j	branching_b.1743
branching_b.1723 :
	lw.s	%r0 %f2 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f0
	lw	%r13 %r1 16
	lw.s	%r1 %f2 0
	sqrt.s	%f2 %f2
	mul.s	%f2 %f0 %f0
	lw.s	%r0 %f4 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f4 %f4
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sqrt.s	%f2 %f2
	mul.s	%f2 %f4 %f4
	mul.s	%f0 %f0 %f2
	mul.s	%f4 %f4 %f5
	add.s	%f5 %f2 %f6
	fbge	%f0 %f1 tail_b.2729
tail_b.2728 :
	neg.s	%f0 %f5
	j	branching_b.1724
tail_b.2729 :
	mov.s	%f0 %f5
	j	branching_b.1724
tail_b.2727 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f4
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f0
	mul.s	%f4 %f4 %f2
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	sqrt.s	%f0 %f2
	ilw.s	%r0 %f0 l.74
	div.s	%f0 %f2 %f2
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.76
	mul.s	%f0 %f2 %f0
	sw	%r26 %r13 -52
	sw.s	%r26 %f3 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r9 -40
	sw	%r26 %r10 -36
	sw	%r26 %r2 -32
	sw	%r26 %r12 -28
	sw	%r26 %r11 -24
	sw	%r26 %r5 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	cos.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r13 -52
	lw.s	%r26 %f3 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r9 -40
	lw	%r26 %r10 -36
	lw	%r26 %r2 -32
	lw	%r26 %r12 -28
	lw	%r26 %r11 -24
	lw	%r26 %r5 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f2
	ilw.s	%r0 %f4 l.52
	mul.s	%f4 %f2 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f2 %f0 %f0
	mul.s	%f4 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1743
tail_b.2726 :
	lw.s	%r0 %f2 556
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f2 %f0
	sw	%r26 %r13 -52
	sw.s	%r26 %f3 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r9 -40
	sw	%r26 %r10 -36
	sw	%r26 %r2 -32
	sw	%r26 %r12 -28
	sw	%r26 %r11 -24
	sw	%r26 %r5 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	sin.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r13 -52
	lw.s	%r26 %f3 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r9 -40
	lw	%r26 %r10 -36
	lw	%r26 %r2 -32
	lw	%r26 %r12 -28
	lw	%r26 %r11 -24
	lw	%r26 %r5 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f2 l.52
	mul.s	%f4 %f2 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f4 %f0 %f0
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1743
branching_b.1715 :
	lw.s	%r0 %f2 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f2
	ilw.s	%r0 %f6 l.72
	mul.s	%f6 %f2 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f4 l.73
	mul.s	%f4 %f0 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.74
	fbge	%f0 %f2 tail_b.2718
tail_b.2717 :
	addi	%r0 %r14 1
	j	branching_b.1716
tail_b.2718 :
	addi	%r0 %r14 0
branching_b.1716 :
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	sub.s	%f5 %f0 %f5
	mul.s	%f6 %f5 %f0
	floor.w.s	%f0 %f0
	mul.s	%f4 %f0 %f0
	sub.s	%f0 %f5 %f0
	fbge	%f0 %f2 tail_b.2720
tail_b.2719 :
	addi	%r0 %r1 1
	j	branching_b.1717
tail_b.2720 :
	addi	%r0 %r1 0
branching_b.1717 :
	beq	%r14 %r4 branching_b.1718
branching_b.1719 :
	beq	%r1 %r4 tail_b.2723
tail_b.2724 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2725
tail_b.2723 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2725
branching_b.1718 :
	beq	%r1 %r4 tail_b.2721
tail_b.2722 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2725
tail_b.2721 :
	ilw.s	%r0 %f0 l.52
tail_b.2725 :
	sw.s	%r0 %f0 584
	j	branching_b.1743
branching_b.1724 :
	ilw.s	%r0 %f2 l.77
	fbge	%f5 %f2 tail_b.2731
tail_b.2730 :
	addi	%r0 %r1 1
	j	branching_b.1725
tail_b.2731 :
	addi	%r0 %r1 0
branching_b.1725 :
	beq	%r1 %r4 branching_b.1726
tail_b.2741 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1732
branching_b.1726 :
	div.s	%f0 %f4 %f0
	fbge	%f0 %f1 tail_b.2733
tail_b.2732 :
	neg.s	%f0 %f7
	j	branching_b.1727
tail_b.2733 :
	mov.s	%f0 %f7
branching_b.1727 :
	fbg	%f1 %f7 branching_b.1730
branching_b.1728 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1729
tail_b.2734 :
	ilw.s	%r0 %f8 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f9
	mul.s	%f5 %f4 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f7 %f4 %f4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f7 %f4 %f4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f4
	j	tail_b.2740
branching_b.1729 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.2736
tail_b.2735 :
	ilw.s	%r0 %f9 l.56
	sub.s	%f9 %f7 %f4
	add.s	%f9 %f7 %f0
	div.s	%f0 %f4 %f8
	ilw.s	%r0 %f4 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f8 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f9 %f0 %f4
	j	tail_b.2740
tail_b.2736 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f0
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f7 l.90
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f8
	ilw.s	%r0 %f4 l.83
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f5 l.84
	mul.s	%f0 %f5 %f5
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f5 %f5
	ilw.s	%r0 %f4 l.85
	mul.s	%f0 %f4 %f10
	mul.s	%f8 %f5 %f4
	add.s	%f4 %f10 %f4
	ilw.s	%r0 %f5 l.86
	mul.s	%f0 %f5 %f5
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f5 %f5
	ilw.s	%r0 %f4 l.87
	mul.s	%f0 %f4 %f4
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f4 %f5
	ilw.s	%r0 %f4 l.88
	mul.s	%f0 %f4 %f4
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f4 %f4
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f9 %f0 %f4
	j	tail_b.2740
branching_b.1730 :
	neg.s	%f7 %f7
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1731
tail_b.2737 :
	ilw.s	%r0 %f8 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f4
	mul.s	%f5 %f9 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f7 %f4 %f4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.88
	mul.s	%f7 %f4 %f4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f4
	j	tail_b.2740
branching_b.1731 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.2739
tail_b.2738 :
	ilw.s	%r0 %f4 l.56
	sub.s	%f4 %f7 %f0
	add.s	%f4 %f7 %f4
	div.s	%f4 %f0 %f5
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f7 l.59
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f10
	mul.s	%f9 %f4 %f0
	add.s	%f0 %f10 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f9 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f0
	mul.s	%f9 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f9 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f5 %f0 %f0
	mul.s	%f9 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f4
	j	tail_b.2740
tail_b.2739 :
	ilw.s	%r0 %f8 l.56
	div.s	%f7 %f8 %f10
	ilw.s	%r0 %f7 l.90
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f10 %f5 %f5
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f9
	mul.s	%f4 %f5 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f5
	mul.s	%f4 %f9 %f0
	add.s	%f0 %f5 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f5
	mul.s	%f4 %f9 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.88
	mul.s	%f10 %f5 %f5
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f4
tail_b.2740 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f4 %f0
branching_b.1732 :
	floor.w.s	%f0 %f4
	sub.s	%f4 %f0 %f5
	lw.s	%r0 %f4 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f0
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	sqrt.s	%f4 %f4
	mul.s	%f4 %f0 %f0
	fbge	%f6 %f1 tail_b.2743
tail_b.2742 :
	neg.s	%f6 %f4
	j	branching_b.1733
tail_b.2743 :
	mov.s	%f6 %f4
branching_b.1733 :
	fbge	%f4 %f2 tail_b.2745
tail_b.2744 :
	addi	%r0 %r1 1
	j	branching_b.1734
tail_b.2745 :
	addi	%r0 %r1 0
branching_b.1734 :
	beq	%r1 %r4 branching_b.1735
tail_b.2755 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1741
branching_b.1735 :
	div.s	%f6 %f0 %f0
	fbge	%f0 %f1 tail_b.2747
tail_b.2746 :
	neg.s	%f0 %f7
	j	branching_b.1736
tail_b.2747 :
	mov.s	%f0 %f7
branching_b.1736 :
	fbg	%f1 %f7 branching_b.1739
branching_b.1737 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1738
tail_b.2748 :
	ilw.s	%r0 %f4 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f8
	mul.s	%f6 %f2 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f2 l.85
	mul.s	%f7 %f2 %f2
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f8
	mul.s	%f6 %f2 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f2 l.87
	mul.s	%f7 %f2 %f2
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.2754
branching_b.1738 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.2750
tail_b.2749 :
	ilw.s	%r0 %f6 l.56
	sub.s	%f6 %f7 %f0
	add.s	%f6 %f7 %f2
	div.s	%f2 %f0 %f8
	ilw.s	%r0 %f2 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f4
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.88
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.2754
tail_b.2750 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f8
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f0 l.90
	neg.s	%f8 %f2
	mul.s	%f8 %f2 %f9
	ilw.s	%r0 %f2 l.83
	mul.s	%f8 %f2 %f2
	ilw.s	%r0 %f4 l.84
	mul.s	%f8 %f4 %f4
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f2 l.85
	mul.s	%f8 %f2 %f6
	mul.s	%f9 %f4 %f2
	add.s	%f2 %f6 %f2
	ilw.s	%r0 %f4 l.86
	mul.s	%f8 %f4 %f4
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f2 l.87
	mul.s	%f8 %f2 %f2
	mul.s	%f9 %f4 %f4
	add.s	%f4 %f2 %f4
	ilw.s	%r0 %f2 l.88
	mul.s	%f8 %f2 %f6
	mul.s	%f9 %f4 %f2
	add.s	%f2 %f6 %f2
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f8 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2754
branching_b.1739 :
	neg.s	%f7 %f4
	ilw.s	%r0 %f0 l.81
	fbge	%f4 %f0 branching_b.1740
tail_b.2751 :
	ilw.s	%r0 %f7 l.58
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f2 l.84
	mul.s	%f4 %f2 %f2
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.86
	mul.s	%f4 %f2 %f2
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.88
	mul.s	%f4 %f2 %f2
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2754
branching_b.1740 :
	ilw.s	%r0 %f0 l.82
	fbge	%f4 %f0 tail_b.2753
tail_b.2752 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f4 %f2
	add.s	%f0 %f4 %f0
	div.s	%f0 %f2 %f6
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f7 l.59
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f2 l.84
	mul.s	%f6 %f2 %f2
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f2
	mul.s	%f4 %f9 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.88
	mul.s	%f6 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2754
tail_b.2753 :
	ilw.s	%r0 %f8 l.56
	div.s	%f4 %f8 %f7
	ilw.s	%r0 %f2 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f4 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.86
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f4 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f4 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
tail_b.2754 :
	ilw.s	%r0 %f2 l.89
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.76
	div.s	%f2 %f0 %f0
branching_b.1741 :
	floor.w.s	%f0 %f2
	sub.s	%f2 %f0 %f4
	ilw.s	%r0 %f6 l.91
	ilw.s	%r0 %f2 l.62
	sub.s	%f5 %f2 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f6 %f0
	sub.s	%f4 %f2 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f0 %f0
	fbge	%f0 %f1 tail_b.2757
tail_b.2756 :
	addi	%r0 %r1 1
	j	branching_b.1742
tail_b.2757 :
	addi	%r0 %r1 0
branching_b.1742 :
	beq	%r1 %r4 tail_b.2758
tail_b.2759 :
	ilw.s	%r0 %f2 l.51
	j	tail_b.2760
tail_b.2758 :
	mov.s	%f0 %f2
tail_b.2760 :
	ilw.s	%r0 %f0 l.52
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.92
	div.s	%f2 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1743 :
	addi	%r0 %r1 0
	lw	%r0 %r14 536
	sw	%r26 %r13 -52
	sw.s	%r26 %f3 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r9 -40
	sw	%r26 %r10 -36
	sw	%r26 %r2 -32
	sw	%r26 %r12 -28
	sw	%r26 %r11 -24
	sw	%r26 %r5 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r14 %r2
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r13 -52
	lw.s	%r26 %f3 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r9 -40
	lw	%r26 %r10 -36
	lw	%r26 %r2 -32
	lw	%r26 %r12 -28
	lw	%r26 %r11 -24
	lw	%r26 %r5 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	beq	%r1 %r4 branching_b.1744
tail_b.2767 :
	j	tail_b.2842
branching_b.1744 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f2 312
	mul.s	%f2 %f0 %f2
	lw.s	%r0 %f4 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f2
	lw.s	%r0 %f4 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f0
	neg.s	%f0 %f0
	fbge	%f1 %f0 tail_b.2763
tail_b.2762 :
	addi	%r0 %r1 1
	j	branching_b.1745
tail_b.2763 :
	addi	%r0 %r1 0
branching_b.1745 :
	beq	%r1 %r4 tail_b.2764
tail_b.2765 :
	j	tail_b.2766
tail_b.2764 :
	ilw.s	%r0 %f0 l.51
tail_b.2766 :
	mul.s	%f0 %f3 %f1
	lw	%r13 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 592
	lw.s	%r0 %f2 580
	mul.s	%f2 %f1 %f2
	add.s	%f2 %f0 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f2 596
	lw.s	%r0 %f0 584
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f2 600
	lw.s	%r0 %f0 588
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2842
branching_b.1711 :
	lw	%r13 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f2
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f2
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f1 tail_b.2712
tail_b.2711 :
	addi	%r0 %r14 1
	j	branching_b.1712
tail_b.2712 :
	addi	%r0 %r14 0
branching_b.1712 :
	beq	%r14 %r4 branching_b.1713
tail_b.2715 :
	ilw.s	%r0 %f2 l.56
	j	tail_b.2716
branching_b.1713 :
	beq	%r1 %r4 tail_b.2713
tail_b.2714 :
	ilw.s	%r0 %f2 l.58
	div.s	%f0 %f2 %f2
	j	tail_b.2716
tail_b.2713 :
	ilw.s	%r0 %f2 l.56
	div.s	%f0 %f2 %f2
tail_b.2716 :
	lw.s	%r0 %f0 568
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1714
branching_b.1747 :
	beq	%r1 %r4 tail_b.2770
branching_b.1748 :
	ilw.s	%r0 %f0 l.71
	fbge	%f2 %f0 tail_b.2772
tail_b.2771 :
	addi	%r0 %r1 1
	j	branching_b.1749
tail_b.2772 :
	addi	%r0 %r1 0
	j	branching_b.1749
tail_b.2770 :
	addi	%r0 %r1 0
branching_b.1749 :
	beq	%r1 %r4 tail_b.2773
branching_b.1750 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r13 0
	lw	%r14 %r14 0
	lw	%r13 %r1 4
	beq	%r1 %r11 branching_b.1751
branching_b.1755 :
	beq	%r1 %r12 tail_b.2782
branching_b.1756 :
	lw.s	%r0 %f2 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f9
	lw.s	%r0 %f0 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f8
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f5
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f6
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f7
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f4
	lw	%r13 %r1 12
	beq	%r1 %r4 tail_b.2783
tail_b.2784 :
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f5 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f10 l.67
	div.s	%f10 %f0 %f0
	add.s	%f0 %f6 %f0
	sw.s	%r0 %f0 568
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f2
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f0
	div.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f2
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	div.s	%f10 %f0 %f0
	add.s	%f0 %f4 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1757
tail_b.2783 :
	sw.s	%r0 %f6 568
	sw.s	%r0 %f7 572
	sw.s	%r0 %f4 576
	j	branching_b.1757
tail_b.2782 :
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1760
branching_b.1751 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r15 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r14 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.2775
tail_b.2774 :
	addi	%r0 %r1 1
	j	branching_b.1752
tail_b.2775 :
	addi	%r0 %r1 0
	j	branching_b.1752
tail_b.2773 :
	j	tail_b.2842
branching_b.1752 :
	beq	%r1 %r4 branching_b.1753
tail_b.2780 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2781
branching_b.1753 :
	fbge	%f1 %f0 tail_b.2777
tail_b.2776 :
	addi	%r0 %r1 1
	j	branching_b.1754
tail_b.2777 :
	addi	%r0 %r1 0
branching_b.1754 :
	beq	%r1 %r4 tail_b.2778
tail_b.2779 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2781
tail_b.2778 :
	ilw.s	%r0 %f0 l.58
tail_b.2781 :
	neg.s	%f0 %f0
	slli	%r15 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1760 :
	lw	%r13 %r14 0
	lw	%r13 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r13 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r13 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r14 %r11 branching_b.1761
branching_b.1766 :
	beq	%r14 %r12 tail_b.2800
branching_b.1767 :
	beq	%r14 %r2 tail_b.2801
branching_b.1768 :
	beq	%r14 %r6 branching_b.1769
tail_b.2835 :
	j	branching_b.1789
branching_b.1769 :
	lw.s	%r0 %f2 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f2
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f2 %f6
	lw.s	%r0 %f2 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f0
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sqrt.s	%f2 %f2
	mul.s	%f2 %f0 %f2
	mul.s	%f6 %f6 %f0
	mul.s	%f2 %f2 %f4
	add.s	%f4 %f0 %f5
	fbge	%f6 %f1 tail_b.2803
tail_b.2802 :
	neg.s	%f6 %f0
	j	branching_b.1770
tail_b.2803 :
	mov.s	%f6 %f0
	j	branching_b.1770
tail_b.2801 :
	lw.s	%r0 %f2 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f2
	lw.s	%r0 %f4 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f0
	mul.s	%f2 %f2 %f2
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f2 l.74
	div.s	%f2 %f0 %f2
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.76
	mul.s	%f0 %f2 %f0
	sw	%r26 %r13 -52
	sw.s	%r26 %f3 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r9 -40
	sw	%r26 %r10 -36
	sw	%r26 %r2 -32
	sw	%r26 %r12 -28
	sw	%r26 %r11 -24
	sw	%r26 %r5 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	cos.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r13 -52
	lw.s	%r26 %f3 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r9 -40
	lw	%r26 %r10 -36
	lw	%r26 %r2 -32
	lw	%r26 %r12 -28
	lw	%r26 %r11 -24
	lw	%r26 %r5 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f2 l.52
	mul.s	%f2 %f4 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f4 %f0 %f0
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1789
tail_b.2800 :
	lw.s	%r0 %f2 556
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f2 %f0
	sw	%r26 %r13 -52
	sw.s	%r26 %f3 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r9 -40
	sw	%r26 %r10 -36
	sw	%r26 %r2 -32
	sw	%r26 %r12 -28
	sw	%r26 %r11 -24
	sw	%r26 %r5 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	sin.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r13 -52
	lw.s	%r26 %f3 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r9 -40
	lw	%r26 %r10 -36
	lw	%r26 %r2 -32
	lw	%r26 %r12 -28
	lw	%r26 %r11 -24
	lw	%r26 %r5 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f2
	ilw.s	%r0 %f0 l.52
	mul.s	%f2 %f0 %f4
	sw.s	%r0 %f4 580
	ilw.s	%r0 %f4 l.56
	sub.s	%f2 %f4 %f2
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1789
branching_b.1761 :
	lw.s	%r0 %f2 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f2
	ilw.s	%r0 %f5 l.72
	mul.s	%f5 %f2 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f4 l.73
	mul.s	%f4 %f0 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.74
	fbge	%f0 %f2 tail_b.2792
tail_b.2791 :
	addi	%r0 %r14 1
	j	branching_b.1762
tail_b.2792 :
	addi	%r0 %r14 0
branching_b.1762 :
	lw.s	%r0 %f6 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f6 %f6
	mul.s	%f5 %f6 %f0
	floor.w.s	%f0 %f0
	mul.s	%f4 %f0 %f0
	sub.s	%f0 %f6 %f0
	fbge	%f0 %f2 tail_b.2794
tail_b.2793 :
	addi	%r0 %r1 1
	j	branching_b.1763
tail_b.2794 :
	addi	%r0 %r1 0
branching_b.1763 :
	beq	%r14 %r4 branching_b.1764
branching_b.1765 :
	beq	%r1 %r4 tail_b.2797
tail_b.2798 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2799
tail_b.2797 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2799
branching_b.1764 :
	beq	%r1 %r4 tail_b.2795
tail_b.2796 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2799
tail_b.2795 :
	ilw.s	%r0 %f0 l.52
tail_b.2799 :
	sw.s	%r0 %f0 584
	j	branching_b.1789
branching_b.1770 :
	ilw.s	%r0 %f4 l.77
	fbge	%f0 %f4 tail_b.2805
tail_b.2804 :
	addi	%r0 %r1 1
	j	branching_b.1771
tail_b.2805 :
	addi	%r0 %r1 0
branching_b.1771 :
	beq	%r1 %r4 branching_b.1772
tail_b.2815 :
	ilw.s	%r0 %f2 l.79
	j	branching_b.1778
branching_b.1772 :
	div.s	%f6 %f2 %f0
	fbge	%f0 %f1 tail_b.2807
tail_b.2806 :
	neg.s	%f0 %f7
	j	branching_b.1773
tail_b.2807 :
	mov.s	%f0 %f7
branching_b.1773 :
	fbg	%f1 %f7 branching_b.1776
branching_b.1774 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1775
tail_b.2808 :
	ilw.s	%r0 %f8 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f9
	mul.s	%f2 %f6 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f7 %f6 %f6
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.86
	mul.s	%f7 %f6 %f6
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f7 %f6 %f6
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.88
	mul.s	%f7 %f6 %f6
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f2
	j	tail_b.2814
branching_b.1775 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.2810
tail_b.2809 :
	ilw.s	%r0 %f8 l.56
	sub.s	%f8 %f7 %f0
	add.s	%f8 %f7 %f2
	div.s	%f2 %f0 %f6
	ilw.s	%r0 %f9 l.59
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f2 l.83
	mul.s	%f6 %f2 %f7
	ilw.s	%r0 %f2 l.84
	mul.s	%f6 %f2 %f2
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f2 %f7
	ilw.s	%r0 %f2 l.85
	mul.s	%f6 %f2 %f2
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f2 %f7
	ilw.s	%r0 %f2 l.86
	mul.s	%f6 %f2 %f2
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f2 %f2
	ilw.s	%r0 %f7 l.87
	mul.s	%f6 %f7 %f7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f7 %f7
	ilw.s	%r0 %f2 l.88
	mul.s	%f6 %f2 %f2
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f2 %f2
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f2
	j	tail_b.2814
tail_b.2810 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f2
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f8 l.90
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f2 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f2 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f2 %f0 %f0
	mul.s	%f10 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.87
	mul.s	%f2 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f9
	ilw.s	%r0 %f0 l.88
	mul.s	%f2 %f0 %f7
	mul.s	%f10 %f9 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f6 %f0 %f2
	j	tail_b.2814
branching_b.1776 :
	neg.s	%f7 %f9
	ilw.s	%r0 %f0 l.81
	fbge	%f9 %f0 branching_b.1777
tail_b.2811 :
	ilw.s	%r0 %f7 l.58
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f6
	mul.s	%f8 %f2 %f0
	add.s	%f0 %f6 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f6
	mul.s	%f8 %f2 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f2 l.86
	mul.s	%f9 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.88
	mul.s	%f9 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f2
	j	tail_b.2814
branching_b.1777 :
	ilw.s	%r0 %f0 l.82
	fbge	%f9 %f0 tail_b.2813
tail_b.2812 :
	ilw.s	%r0 %f2 l.56
	sub.s	%f2 %f9 %f0
	add.s	%f2 %f9 %f2
	div.s	%f2 %f0 %f7
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f10 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.85
	mul.s	%f7 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f9
	mul.s	%f8 %f2 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f2
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.88
	mul.s	%f7 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f6 %f0 %f2
	j	tail_b.2814
tail_b.2813 :
	ilw.s	%r0 %f10 l.56
	div.s	%f9 %f10 %f9
	ilw.s	%r0 %f7 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f6
	mul.s	%f8 %f2 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f2 l.86
	mul.s	%f9 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f6
	mul.s	%f8 %f2 %f0
	add.s	%f0 %f6 %f2
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f10 %f0 %f2
tail_b.2814 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.76
	div.s	%f2 %f0 %f2
branching_b.1778 :
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f6
	lw.s	%r0 %f2 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f2
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f2 %f0
	fbge	%f5 %f1 tail_b.2817
tail_b.2816 :
	neg.s	%f5 %f2
	j	branching_b.1779
tail_b.2817 :
	mov.s	%f5 %f2
branching_b.1779 :
	fbge	%f2 %f4 tail_b.2819
tail_b.2818 :
	addi	%r0 %r1 1
	j	branching_b.1780
tail_b.2819 :
	addi	%r0 %r1 0
branching_b.1780 :
	beq	%r1 %r4 branching_b.1781
tail_b.2829 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1787
branching_b.1781 :
	div.s	%f5 %f0 %f0
	fbge	%f0 %f1 tail_b.2821
tail_b.2820 :
	neg.s	%f0 %f7
	j	branching_b.1782
tail_b.2821 :
	mov.s	%f0 %f7
branching_b.1782 :
	fbg	%f1 %f7 branching_b.1785
branching_b.1783 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1784
tail_b.2822 :
	ilw.s	%r0 %f5 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f7 %f4 %f4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f7 %f4 %f4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f2 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f7 %f4 %f4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f2 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.2828
branching_b.1784 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.2824
tail_b.2823 :
	ilw.s	%r0 %f8 l.56
	sub.s	%f8 %f7 %f0
	add.s	%f8 %f7 %f2
	div.s	%f2 %f0 %f7
	ilw.s	%r0 %f5 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f2 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f9
	mul.s	%f2 %f4 %f0
	add.s	%f0 %f9 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f9
	mul.s	%f2 %f4 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f7 %f4 %f4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.88
	mul.s	%f7 %f4 %f4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2828
tail_b.2824 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f9
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f2 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f9 %f4 %f4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f7
	mul.s	%f5 %f4 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f9 %f4 %f4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f4
	mul.s	%f5 %f7 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2828
branching_b.1785 :
	neg.s	%f7 %f5
	ilw.s	%r0 %f0 l.81
	fbge	%f5 %f0 branching_b.1786
tail_b.2825 :
	ilw.s	%r0 %f7 l.58
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f5 %f4 %f4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f2 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f5 %f4 %f4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f2 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f5 %f0 %f0
	mul.s	%f2 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2828
branching_b.1786 :
	ilw.s	%r0 %f0 l.82
	fbge	%f5 %f0 tail_b.2827
tail_b.2826 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f5 %f2
	add.s	%f0 %f5 %f0
	div.s	%f0 %f2 %f4
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f5 l.59
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f0
	mul.s	%f2 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f4 %f7 %f7
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f4 %f7 %f7
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f9
	mul.s	%f2 %f7 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f7 l.88
	mul.s	%f4 %f7 %f7
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2828
tail_b.2827 :
	ilw.s	%r0 %f4 l.56
	div.s	%f5 %f4 %f7
	ilw.s	%r0 %f2 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f7 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f5
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f7 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f4 %f0 %f0
tail_b.2828 :
	ilw.s	%r0 %f2 l.89
	mul.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f2 %f0
branching_b.1787 :
	floor.w.s	%f0 %f2
	sub.s	%f2 %f0 %f4
	ilw.s	%r0 %f0 l.91
	ilw.s	%r0 %f5 l.62
	sub.s	%f6 %f5 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f0 %f0
	sub.s	%f4 %f5 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f0 %f0
	fbge	%f0 %f1 tail_b.2831
tail_b.2830 :
	addi	%r0 %r1 1
	j	branching_b.1788
tail_b.2831 :
	addi	%r0 %r1 0
branching_b.1788 :
	beq	%r1 %r4 tail_b.2832
tail_b.2833 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2834
tail_b.2832 :
tail_b.2834 :
	ilw.s	%r0 %f2 l.52
	mul.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.92
	div.s	%f0 %f2 %f0
	sw.s	%r0 %f0 588
branching_b.1789 :
	addi	%r0 %r1 0
	lw	%r0 %r14 536
	sw	%r26 %r13 -52
	sw.s	%r26 %f3 -48
	sw.s	%r26 %f1 -44
	sw	%r26 %r9 -40
	sw	%r26 %r10 -36
	sw	%r26 %r2 -32
	sw	%r26 %r12 -28
	sw	%r26 %r11 -24
	sw	%r26 %r5 -20
	sw	%r26 %r8 -16
	sw	%r26 %r4 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r3 0
	mov	%r14 %r2
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r13 -52
	lw.s	%r26 %f3 -48
	lw.s	%r26 %f1 -44
	lw	%r26 %r9 -40
	lw	%r26 %r10 -36
	lw	%r26 %r2 -32
	lw	%r26 %r12 -28
	lw	%r26 %r11 -24
	lw	%r26 %r5 -20
	lw	%r26 %r8 -16
	lw	%r26 %r4 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r3 0
	beq	%r1 %r4 branching_b.1790
tail_b.2841 :
	j	tail_b.2842
branching_b.1790 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f2 312
	mul.s	%f2 %f0 %f4
	lw.s	%r0 %f0 572
	lw.s	%r0 %f2 316
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f2
	lw.s	%r0 %f0 576
	lw.s	%r0 %f4 320
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f0
	neg.s	%f0 %f0
	fbge	%f1 %f0 tail_b.2837
tail_b.2836 :
	addi	%r0 %r1 1
	j	branching_b.1791
tail_b.2837 :
	addi	%r0 %r1 0
branching_b.1791 :
	beq	%r1 %r4 tail_b.2838
tail_b.2839 :
	j	tail_b.2840
tail_b.2838 :
	ilw.s	%r0 %f0 l.51
tail_b.2840 :
	mul.s	%f0 %f3 %f1
	lw	%r13 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	lw.s	%r0 %f1 592
	lw.s	%r0 %f2 580
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r0 %f1 592
	lw.s	%r0 %f1 596
	lw.s	%r0 %f2 584
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r0 %f1 596
	lw.s	%r0 %f1 600
	lw.s	%r0 %f2 588
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2842
branching_b.1757 :
	lw	%r13 %r14 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f2
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	lw.s	%r0 %f2 576
	mul.s	%f2 %f2 %f2
	add.s	%f2 %f0 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f1 tail_b.2786
tail_b.2785 :
	addi	%r0 %r1 1
	j	branching_b.1758
tail_b.2786 :
	addi	%r0 %r1 0
branching_b.1758 :
	beq	%r1 %r4 branching_b.1759
tail_b.2789 :
	ilw.s	%r0 %f2 l.56
	j	tail_b.2790
branching_b.1759 :
	beq	%r14 %r4 tail_b.2787
tail_b.2788 :
	ilw.s	%r0 %f2 l.58
	div.s	%f0 %f2 %f2
	j	tail_b.2790
tail_b.2787 :
	ilw.s	%r0 %f2 l.56
	div.s	%f0 %f2 %f2
tail_b.2790 :
	lw.s	%r0 %f0 568
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1760
postloop_b.62 :
tail_b.2845 :
	slli	%r7 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f2 604
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	lw.s	%r0 %f1 592
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	addi	%r1 %r2 4
	lw.s	%r2 %f2 0
	lw.s	%r0 %f1 596
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	lw.s	%r0 %f1 600
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
	j	tail_b.2846
postloop_b.63 :
return_point.21 :
	retl
try_exploit_neighbors.0 :
	mov	%r5 %r7
	mov	%r1 %r8
	mov	%r4 %r5
preloop_b.64 :
try_exploit_neighbors_loop.0 :
	slli	%r8 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r11 0
	addi	%r0 %r4 4
	ble	%r6 %r4 branching_b.1793
tail_b.2873 :
	j	postloop_b.65
branching_b.1793 :
	addi	%r0 %r9 0
	lw	%r11 %r1 8
	slli	%r6 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r1 0
	ble	%r9 %r1 branching_b.1794
tail_b.2872 :
	j	postloop_b.65
branching_b.1794 :
	slli	%r8 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 8
	slli	%r6 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r10 0
	slli	%r8 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 8
	slli	%r6 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r10 branching_b.1795
tail_b.2853 :
	addi	%r0 %r1 0
	j	branching_b.1798
branching_b.1795 :
	slli	%r8 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 8
	slli	%r6 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r10 branching_b.1796
tail_b.2852 :
	addi	%r0 %r1 0
	j	branching_b.1798
branching_b.1796 :
	addi	%r8 %r1 -1
	slli	%r1 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 8
	slli	%r6 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r1 0
	beq	%r1 %r10 branching_b.1797
tail_b.2851 :
	addi	%r0 %r1 0
	j	branching_b.1798
branching_b.1797 :
	addi	%r8 %r1 1
	slli	%r1 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 8
	slli	%r6 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r1 0
	beq	%r1 %r10 tail_b.2849
tail_b.2850 :
	addi	%r0 %r1 0
	j	branching_b.1798
tail_b.2849 :
	addi	%r0 %r1 1
branching_b.1798 :
	beq	%r1 %r9 preloop_b.65
branching_b.1807 :
	lw	%r11 %r2 12
	slli	%r6 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r9 tail_b.2869
tail_b.2870 :
	slli	%r8 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r11 20
	addi	%r8 %r1 -1
	slli	%r1 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 20
	slli	%r8 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r9 20
	addi	%r8 %r1 1
	slli	%r1 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r4 20
	slli	%r8 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r10 20
	slli	%r6 %r1 2
	add	%r11 %r1 %r1
	lw	%r1 %r11 0
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 592
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 596
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 600
	slli	%r6 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f1 592
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	addi	%r1 %r2 4
	lw.s	%r2 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f0 600
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	slli	%r6 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f1 592
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	slli	%r6 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f0 592
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f0 596
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	slli	%r6 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f1 592
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	addi	%r1 %r2 4
	lw.s	%r2 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f0 600
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	slli	%r8 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 16
	slli	%r6 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f2 604
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	lw.s	%r0 %f0 592
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f2 608
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	lw.s	%r0 %f0 596
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f2 612
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	lw.s	%r0 %f1 600
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 612
	j	tail_b.2871
tail_b.2869 :
	j	tail_b.2871
preloop_b.65 :
	slli	%r8 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r2 0
do_without_neighbors_loop.2 :
	ble	%r6 %r4 branching_b.1800
tail_b.2868 :
	j	postloop_b.64
branching_b.1800 :
	lw	%r2 %r1 8
	slli	%r6 %r3 2
	add	%r1 %r3 %r1
	lw	%r1 %r1 0
	ble	%r9 %r1 branching_b.1801
tail_b.2867 :
	j	postloop_b.64
branching_b.1801 :
	lw	%r2 %r3 12
	slli	%r6 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r9 tail_b.2854
branching_b.1802 :
	lw	%r2 %r5 20
	lw	%r2 %r3 28
	lw	%r2 %r11 4
	lw	%r2 %r7 16
	slli	%r6 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r5 0
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 592
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 596
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 600
	lw	%r2 %r1 24
	lw	%r1 %r10 0
	slli	%r6 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r8 0
	slli	%r6 %r1 2
	add	%r11 %r1 %r1
	lw	%r1 %r5 0
	bne	%r10 %r9 tail_b.2855
tail_b.2856 :
	j	branching_b.1803
tail_b.2855 :
	lw	%r0 %r3 716
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r3 -32
	sw	%r26 %r5 -28
	sw	%r26 %r8 -24
	sw	%r26 %r10 -20
	sw	%r26 %r7 -16
	sw	%r26 %r6 -12
	sw	%r26 %r2 -8
	sw	%r26 %r9 -4
	sw	%r26 %r4 0
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	setup_startp_constants.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r3 -32
	lw	%r26 %r5 -28
	lw	%r26 %r8 -24
	lw	%r26 %r10 -20
	lw	%r26 %r7 -16
	lw	%r26 %r6 -12
	lw	%r26 %r2 -8
	lw	%r26 %r9 -4
	lw	%r26 %r4 0
	addi	%r0 %r1 118
	sw	%r26 %r5 -28
	sw	%r26 %r8 -24
	sw	%r26 %r10 -20
	sw	%r26 %r7 -16
	sw	%r26 %r6 -12
	sw	%r26 %r2 -8
	sw	%r26 %r9 -4
	sw	%r26 %r4 0
	mov	%r1 %r4
	mov	%r8 %r2
	mov	%r3 %r1
	mov	%r5 %r3
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	lw	%r26 %r5 -28
	lw	%r26 %r8 -24
	lw	%r26 %r10 -20
	lw	%r26 %r7 -16
	lw	%r26 %r6 -12
	lw	%r26 %r2 -8
	lw	%r26 %r9 -4
	lw	%r26 %r4 0
	j	branching_b.1803
tail_b.2854 :
tail_b.2866 :
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	do_without_neighbors_loop.2
branching_b.1803 :
	addi	%r0 %r1 1
	bne	%r10 %r1 tail_b.2857
tail_b.2858 :
	j	branching_b.1804
tail_b.2857 :
	lw	%r0 %r3 720
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r3 -32
	sw	%r26 %r5 -28
	sw	%r26 %r8 -24
	sw	%r26 %r10 -20
	sw	%r26 %r7 -16
	sw	%r26 %r6 -12
	sw	%r26 %r2 -8
	sw	%r26 %r9 -4
	sw	%r26 %r4 0
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	setup_startp_constants.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r3 -32
	lw	%r26 %r5 -28
	lw	%r26 %r8 -24
	lw	%r26 %r10 -20
	lw	%r26 %r7 -16
	lw	%r26 %r6 -12
	lw	%r26 %r2 -8
	lw	%r26 %r9 -4
	lw	%r26 %r4 0
	addi	%r0 %r1 118
	sw	%r26 %r5 -28
	sw	%r26 %r8 -24
	sw	%r26 %r10 -20
	sw	%r26 %r7 -16
	sw	%r26 %r6 -12
	sw	%r26 %r2 -8
	sw	%r26 %r9 -4
	sw	%r26 %r4 0
	mov	%r1 %r4
	mov	%r8 %r2
	mov	%r3 %r1
	mov	%r5 %r3
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	lw	%r26 %r5 -28
	lw	%r26 %r8 -24
	lw	%r26 %r10 -20
	lw	%r26 %r7 -16
	lw	%r26 %r6 -12
	lw	%r26 %r2 -8
	lw	%r26 %r9 -4
	lw	%r26 %r4 0
branching_b.1804 :
	addi	%r0 %r1 2
	bne	%r10 %r1 tail_b.2859
tail_b.2860 :
	j	branching_b.1805
tail_b.2859 :
	lw	%r0 %r1 724
	mov	%r5 %r3
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 648
	addi	%r5 %r3 4
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 652
	addi	%r5 %r3 8
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r3 0
	addi	%r3 %r3 -1
	sw	%r26 %r1 -32
	sw	%r26 %r5 -28
	sw	%r26 %r8 -24
	sw	%r26 %r10 -20
	sw	%r26 %r7 -16
	sw	%r26 %r6 -12
	sw	%r26 %r2 -8
	sw	%r26 %r9 -4
	sw	%r26 %r4 0
	mov	%r3 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	setup_startp_constants.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	mov	%r1 %r3
	lw	%r26 %r1 -32
	lw	%r26 %r5 -28
	lw	%r26 %r8 -24
	lw	%r26 %r10 -20
	lw	%r26 %r7 -16
	lw	%r26 %r6 -12
	lw	%r26 %r2 -8
	lw	%r26 %r9 -4
	lw	%r26 %r4 0
	addi	%r0 %r3 118
	sw	%r26 %r5 -28
	sw	%r26 %r8 -24
	sw	%r26 %r10 -20
	sw	%r26 %r7 -16
	sw	%r26 %r6 -12
	sw	%r26 %r2 -8
	sw	%r26 %r9 -4
	sw	%r26 %r4 0
	mov	%r3 %r4
	mov	%r8 %r2
	mov	%r5 %r3
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	lw	%r26 %r5 -28
	lw	%r26 %r8 -24
	lw	%r26 %r10 -20
	lw	%r26 %r7 -16
	lw	%r26 %r6 -12
	lw	%r26 %r2 -8
	lw	%r26 %r9 -4
	lw	%r26 %r4 0
branching_b.1805 :
	addi	%r0 %r1 3
	bne	%r10 %r1 tail_b.2861
tail_b.2862 :
	j	branching_b.1806
tail_b.2861 :
	lw	%r0 %r3 728
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r3 -32
	sw	%r26 %r5 -28
	sw	%r26 %r8 -24
	sw	%r26 %r10 -20
	sw	%r26 %r7 -16
	sw	%r26 %r6 -12
	sw	%r26 %r2 -8
	sw	%r26 %r9 -4
	sw	%r26 %r4 0
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	setup_startp_constants.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r3 -32
	lw	%r26 %r5 -28
	lw	%r26 %r8 -24
	lw	%r26 %r10 -20
	lw	%r26 %r7 -16
	lw	%r26 %r6 -12
	lw	%r26 %r2 -8
	lw	%r26 %r9 -4
	lw	%r26 %r4 0
	addi	%r0 %r1 118
	sw	%r26 %r5 -28
	sw	%r26 %r8 -24
	sw	%r26 %r10 -20
	sw	%r26 %r7 -16
	sw	%r26 %r6 -12
	sw	%r26 %r2 -8
	sw	%r26 %r9 -4
	sw	%r26 %r4 0
	mov	%r1 %r4
	mov	%r8 %r2
	mov	%r3 %r1
	mov	%r5 %r3
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	lw	%r26 %r5 -28
	lw	%r26 %r8 -24
	lw	%r26 %r10 -20
	lw	%r26 %r7 -16
	lw	%r26 %r6 -12
	lw	%r26 %r2 -8
	lw	%r26 %r9 -4
	lw	%r26 %r4 0
branching_b.1806 :
	bne	%r10 %r4 tail_b.2863
tail_b.2864 :
	j	tail_b.2865
tail_b.2863 :
	lw	%r0 %r3 732
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r3 -28
	sw	%r26 %r5 -24
	sw	%r26 %r8 -20
	sw	%r26 %r7 -16
	sw	%r26 %r6 -12
	sw	%r26 %r2 -8
	sw	%r26 %r9 -4
	sw	%r26 %r4 0
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -32
	addi	%r26 %r26 -36
	jal	setup_startp_constants.0
	addi	%r26 %r26 36
	lw	%r26 %r28 -32
	lw	%r26 %r3 -28
	lw	%r26 %r5 -24
	lw	%r26 %r8 -20
	lw	%r26 %r7 -16
	lw	%r26 %r6 -12
	lw	%r26 %r2 -8
	lw	%r26 %r9 -4
	lw	%r26 %r4 0
	addi	%r0 %r1 118
	sw	%r26 %r7 -16
	sw	%r26 %r6 -12
	sw	%r26 %r2 -8
	sw	%r26 %r9 -4
	sw	%r26 %r4 0
	mov	%r1 %r4
	mov	%r8 %r2
	mov	%r3 %r1
	mov	%r5 %r3
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r7 -16
	lw	%r26 %r6 -12
	lw	%r26 %r2 -8
	lw	%r26 %r9 -4
	lw	%r26 %r4 0
tail_b.2865 :
	slli	%r6 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r3 0
	lw.s	%r0 %f0 604
	mov	%r3 %r1
	lw.s	%r1 %f1 0
	lw.s	%r0 %f2 592
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	addi	%r3 %r1 4
	lw.s	%r1 %f2 0
	lw.s	%r0 %f1 596
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f2 612
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	lw.s	%r0 %f1 600
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 612
	j	tail_b.2866
postloop_b.64 :
	j	postloop_b.65
tail_b.2871 :
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	try_exploit_neighbors_loop.0
postloop_b.65 :
return_point.22 :
	retl
pretrace_diffuse_rays.0 :
	mov	%r1 %r4
preloop_b.66 :
	mov	%r2 %r3
pretrace_diffuse_rays_loop.0 :
	addi	%r0 %r1 4
	ble	%r3 %r1 branching_b.1809
tail_b.3039 :
	j	postloop_b.68
branching_b.1809 :
	lw	%r4 %r5 8
	slli	%r3 %r2 2
	add	%r5 %r2 %r2
	lw	%r2 %r2 0
	addi	%r0 %r5 0
	ble	%r5 %r2 branching_b.1810
tail_b.3038 :
	j	postloop_b.68
branching_b.1810 :
	lw	%r4 %r2 12
	slli	%r3 %r6 2
	add	%r2 %r6 %r2
	lw	%r2 %r2 0
	beq	%r2 %r5 tail_b.2874
preloop_b.67 :
	lw	%r4 %r2 24
	lw	%r2 %r2 0
	ilw.s	%r0 %f1 l.51
	sw.s	%r0 %f1 592
	sw.s	%r0 %f1 596
	sw.s	%r0 %f1 600
	lw	%r4 %r6 28
	lw	%r4 %r8 4
	slli	%r2 %r2 2
	addi	%r2 %r2 716
	lw	%r2 %r7 0
	slli	%r3 %r2 2
	add	%r6 %r2 %r2
	lw	%r2 %r6 0
	slli	%r3 %r2 2
	add	%r8 %r2 %r2
	lw	%r2 %r10 0
	mov	%r10 %r2
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 648
	addi	%r10 %r2 4
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 652
	addi	%r10 %r2 8
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r2 0
	addi	%r2 %r2 -1
	mov	%r2 %r11
setup_startp_constants_loop.1 :
	ble	%r5 %r11 branching_b.1812
tail_b.2883 :
	j	postloop_b.66
branching_b.1812 :
	slli	%r11 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r8 0
	lw	%r8 %r12 40
	lw	%r8 %r9 4
	mov	%r10 %r2
	lw.s	%r2 %f0 0
	lw	%r8 %r2 20
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f0
	mov	%r12 %r2
	sw.s	%r2 %f0 0
	addi	%r10 %r2 4
	lw.s	%r2 %f0 0
	lw	%r8 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f0
	addi	%r12 %r2 4
	sw.s	%r2 %f0 0
	addi	%r10 %r2 8
	lw.s	%r2 %f0 0
	lw	%r8 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f0
	addi	%r12 %r2 8
	sw.s	%r2 %f0 0
	addi	%r0 %r2 2
	beq	%r9 %r2 tail_b.2875
branching_b.1813 :
	bl	%r2 %r9 branching_b.1814
tail_b.2881 :
	j	tail_b.2882
branching_b.1814 :
	mov	%r12 %r2
	lw.s	%r2 %f5 0
	addi	%r12 %r2 4
	lw.s	%r2 %f6 0
	addi	%r12 %r2 8
	lw.s	%r2 %f2 0
	mul.s	%f5 %f5 %f3
	lw	%r8 %r2 16
	lw.s	%r2 %f0 0
	mul.s	%f0 %f3 %f4
	mul.s	%f6 %f6 %f3
	lw	%r8 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f4 %f3
	mul.s	%f2 %f2 %f4
	lw	%r8 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f3 %f0
	lw	%r8 %r2 12
	beq	%r2 %r5 tail_b.2876
tail_b.2877 :
	mul.s	%f2 %f6 %f4
	lw	%r8 %r2 36
	lw.s	%r2 %f3 0
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f5 %f2 %f3
	lw	%r8 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f3
	mul.s	%f6 %f5 %f0
	lw	%r8 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f0
	j	branching_b.1815
tail_b.2876 :
	j	branching_b.1815
tail_b.2875 :
	lw	%r8 %r8 16
	mov	%r12 %r2
	lw.s	%r2 %f0 0
	addi	%r12 %r2 4
	lw.s	%r2 %f4 0
	addi	%r12 %r2 8
	lw.s	%r2 %f2 0
	mov	%r8 %r2
	lw.s	%r2 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r8 %r2 4
	lw.s	%r2 %f3 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f0 %f0
	addi	%r8 %r2 8
	lw.s	%r2 %f3 0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	addi	%r12 %r2 12
	sw.s	%r2 %f0 0
	j	tail_b.2882
tail_b.2874 :
tail_b.3037 :
	addi	%r3 %r1 1
	mov	%r1 %r3
	j	pretrace_diffuse_rays_loop.0
branching_b.1815 :
	addi	%r0 %r2 3
	beq	%r9 %r2 tail_b.2878
tail_b.2879 :
	j	tail_b.2880
tail_b.2878 :
	ilw.s	%r0 %f2 l.56
	sub.s	%f2 %f0 %f0
tail_b.2880 :
	addi	%r12 %r2 12
	sw.s	%r2 %f0 0
tail_b.2882 :
	addi	%r11 %r2 -1
	mov	%r2 %r11
	j	setup_startp_constants_loop.1
postloop_b.66 :
preloop_b.68 :
	addi	%r0 %r2 118
	mov	%r2 %r8
iter_trace_diffuse_rays_loop.1 :
	ble	%r5 %r8 branching_b.1817
tail_b.3035 :
	j	postloop_b.67
branching_b.1817 :
	slli	%r8 %r2 2
	add	%r7 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 0
	mov	%r2 %r9
	lw.s	%r9 %f0 0
	mov	%r6 %r9
	lw.s	%r9 %f2 0
	mul.s	%f2 %f0 %f2
	addi	%r2 %r9 4
	lw.s	%r9 %f0 0
	addi	%r6 %r9 4
	lw.s	%r9 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	addi	%r2 %r2 8
	lw.s	%r2 %f3 0
	addi	%r6 %r2 8
	lw.s	%r2 %f2 0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	fbge	%f0 %f1 tail_b.2885
tail_b.2884 :
	addi	%r0 %r2 1
	j	branching_b.1818
tail_b.2885 :
	addi	%r0 %r2 0
branching_b.1818 :
	beq	%r2 %r5 branching_b.1819
branching_b.1865 :
	addi	%r8 %r2 1
	slli	%r2 %r2 2
	add	%r7 %r2 %r2
	lw	%r2 %r10 0
	ilw.s	%r0 %f2 l.94
	div.s	%f2 %f0 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r2 0
	lw	%r0 %r9 536
	sw.s	%r26 %f3 -36
	sw	%r26 %r10 -32
	sw	%r26 %r8 -28
	sw	%r26 %r6 -24
	sw	%r26 %r7 -20
	sw.s	%r26 %f1 -16
	sw	%r26 %r5 -12
	sw	%r26 %r1 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	mov	%r10 %r3
	mov	%r2 %r1
	mov	%r9 %r2
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	mov	%r1 %r2
	lw.s	%r26 %f3 -36
	lw	%r26 %r10 -32
	lw	%r26 %r8 -28
	lw	%r26 %r6 -24
	lw	%r26 %r7 -20
	lw.s	%r26 %f1 -16
	lw	%r26 %r5 -12
	lw	%r26 %r1 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	lw.s	%r0 %f2 548
	ilw.s	%r0 %f0 l.70
	fbge	%f0 %f2 tail_b.2961
tail_b.2960 :
	addi	%r0 %r2 1
	j	branching_b.1866
tail_b.2961 :
	addi	%r0 %r2 0
	j	branching_b.1866
branching_b.1819 :
	slli	%r8 %r2 2
	add	%r7 %r2 %r2
	lw	%r2 %r9 0
	ilw.s	%r0 %f2 l.95
	div.s	%f2 %f0 %f4
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r2 0
	lw	%r0 %r10 536
	sw.s	%r26 %f4 -36
	sw	%r26 %r9 -32
	sw	%r26 %r8 -28
	sw	%r26 %r6 -24
	sw	%r26 %r7 -20
	sw.s	%r26 %f1 -16
	sw	%r26 %r5 -12
	sw	%r26 %r1 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	mov	%r9 %r3
	mov	%r2 %r1
	mov	%r10 %r2
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	mov	%r1 %r2
	lw.s	%r26 %f4 -36
	lw	%r26 %r9 -32
	lw	%r26 %r8 -28
	lw	%r26 %r6 -24
	lw	%r26 %r7 -20
	lw.s	%r26 %f1 -16
	lw	%r26 %r5 -12
	lw	%r26 %r1 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	lw.s	%r0 %f2 548
	ilw.s	%r0 %f0 l.70
	fbge	%f0 %f2 tail_b.2887
tail_b.2886 :
	addi	%r0 %r2 1
	j	branching_b.1820
tail_b.2887 :
	addi	%r0 %r2 0
branching_b.1820 :
	beq	%r2 %r5 tail_b.2888
branching_b.1821 :
	ilw.s	%r0 %f0 l.71
	fbge	%f2 %f0 tail_b.2890
tail_b.2889 :
	addi	%r0 %r2 1
	j	branching_b.1822
tail_b.2890 :
	addi	%r0 %r2 0
	j	branching_b.1822
tail_b.2888 :
	addi	%r0 %r2 0
branching_b.1822 :
	beq	%r2 %r5 tail_b.2891
branching_b.1823 :
	lw	%r0 %r2 564
	slli	%r2 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r10 0
	lw	%r9 %r12 0
	lw	%r10 %r2 4
	addi	%r0 %r9 1
	beq	%r2 %r9 branching_b.1824
branching_b.1828 :
	addi	%r0 %r11 2
	beq	%r2 %r11 tail_b.2900
branching_b.1829 :
	lw.s	%r0 %f0 552
	lw	%r10 %r2 20
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f8
	lw.s	%r0 %f0 556
	lw	%r10 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f9
	lw.s	%r0 %f0 560
	lw	%r10 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f7
	lw	%r10 %r2 16
	lw.s	%r2 %f0 0
	mul.s	%f0 %f8 %f2
	lw	%r10 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f9 %f5
	lw	%r10 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f7 %f3
	lw	%r10 %r2 12
	beq	%r2 %r5 tail_b.2901
tail_b.2902 :
	lw	%r10 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f9 %f6
	lw	%r10 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.67
	div.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 568
	lw	%r10 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f8 %f2
	lw	%r10 %r2 36
	lw.s	%r2 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	div.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 572
	lw	%r10 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f8 %f0
	lw	%r10 %r2 36
	lw.s	%r2 %f2 0
	mul.s	%f2 %f9 %f2
	add.s	%f2 %f0 %f0
	div.s	%f6 %f0 %f0
	add.s	%f0 %f3 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1830
tail_b.2901 :
	sw.s	%r0 %f2 568
	sw.s	%r0 %f5 572
	sw.s	%r0 %f3 576
	j	branching_b.1830
tail_b.2900 :
	lw	%r10 %r2 16
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r10 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r10 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1833
branching_b.1824 :
	lw	%r0 %r2 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r2 %r11 -1
	addi	%r2 %r2 -1
	slli	%r2 %r2 2
	add	%r12 %r2 %r2
	lw.s	%r2 %f0 0
	fbne	%f0 %f1 tail_b.2893
tail_b.2892 :
	addi	%r0 %r2 1
	j	branching_b.1825
tail_b.2893 :
	addi	%r0 %r2 0
	j	branching_b.1825
tail_b.2891 :
tail_b.3034 :
	addi	%r8 %r2 -2
	mov	%r2 %r8
	j	iter_trace_diffuse_rays_loop.1
branching_b.1825 :
	beq	%r2 %r5 branching_b.1826
tail_b.2898 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2899
branching_b.1826 :
	fbge	%f1 %f0 tail_b.2895
tail_b.2894 :
	addi	%r0 %r2 1
	j	branching_b.1827
tail_b.2895 :
	addi	%r0 %r2 0
branching_b.1827 :
	beq	%r2 %r5 tail_b.2896
tail_b.2897 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2899
tail_b.2896 :
	ilw.s	%r0 %f0 l.58
tail_b.2899 :
	neg.s	%f0 %f0
	slli	%r11 %r2 2
	addi	%r2 %r2 568
	sw.s	%r2 %f0 0
branching_b.1833 :
	lw	%r10 %r11 0
	lw	%r10 %r2 32
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 580
	lw	%r10 %r2 32
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 584
	lw	%r10 %r2 32
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 588
	beq	%r11 %r9 branching_b.1834
branching_b.1839 :
	addi	%r0 %r2 2
	beq	%r11 %r2 tail_b.2918
branching_b.1840 :
	addi	%r0 %r2 3
	beq	%r11 %r2 tail_b.2919
branching_b.1841 :
	beq	%r11 %r1 branching_b.1842
tail_b.2953 :
	j	branching_b.1862
branching_b.1842 :
	lw.s	%r0 %f2 552
	lw	%r10 %r2 20
	lw.s	%r2 %f0 0
	sub.s	%f0 %f2 %f2
	lw	%r10 %r2 16
	lw.s	%r2 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f2 %f0
	lw.s	%r0 %f3 560
	lw	%r10 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sub.s	%f2 %f3 %f3
	lw	%r10 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sqrt.s	%f2 %f2
	mul.s	%f2 %f3 %f6
	mul.s	%f0 %f0 %f3
	mul.s	%f6 %f6 %f2
	add.s	%f2 %f3 %f5
	fbge	%f0 %f1 tail_b.2921
tail_b.2920 :
	neg.s	%f0 %f3
	j	branching_b.1843
tail_b.2921 :
	mov.s	%f0 %f3
	j	branching_b.1843
tail_b.2919 :
	lw.s	%r0 %f0 552
	lw	%r10 %r2 20
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f2
	lw.s	%r0 %f3 560
	lw	%r10 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sub.s	%f0 %f3 %f3
	mul.s	%f2 %f2 %f0
	mul.s	%f3 %f3 %f2
	add.s	%f2 %f0 %f0
	sqrt.s	%f0 %f2
	ilw.s	%r0 %f0 l.74
	div.s	%f0 %f2 %f0
	floor.w.s	%f0 %f2
	sub.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.76
	mul.s	%f0 %f2 %f0
	sw	%r26 %r10 -36
	sw.s	%r26 %f4 -32
	sw	%r26 %r8 -28
	sw	%r26 %r6 -24
	sw	%r26 %r7 -20
	sw.s	%r26 %f1 -16
	sw	%r26 %r5 -12
	sw	%r26 %r1 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	cos.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r10 -36
	lw.s	%r26 %f4 -32
	lw	%r26 %r8 -28
	lw	%r26 %r6 -24
	lw	%r26 %r7 -20
	lw.s	%r26 %f1 -16
	lw	%r26 %r5 -12
	lw	%r26 %r1 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f2 l.52
	mul.s	%f2 %f0 %f3
	sw.s	%r0 %f3 584
	ilw.s	%r0 %f3 l.56
	sub.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1862
tail_b.2918 :
	lw.s	%r0 %f2 556
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f2 %f0
	sw	%r26 %r10 -36
	sw.s	%r26 %f4 -32
	sw	%r26 %r8 -28
	sw	%r26 %r6 -24
	sw	%r26 %r7 -20
	sw.s	%r26 %f1 -16
	sw	%r26 %r5 -12
	sw	%r26 %r1 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	sin.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r10 -36
	lw.s	%r26 %f4 -32
	lw	%r26 %r8 -28
	lw	%r26 %r6 -24
	lw	%r26 %r7 -20
	lw.s	%r26 %f1 -16
	lw	%r26 %r5 -12
	lw	%r26 %r1 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	mul.s	%f0 %f0 %f2
	ilw.s	%r0 %f3 l.52
	mul.s	%f2 %f3 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f3 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1862
branching_b.1834 :
	lw.s	%r0 %f0 552
	lw	%r10 %r2 20
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f2
	ilw.s	%r0 %f5 l.72
	mul.s	%f5 %f2 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f3 l.73
	mul.s	%f3 %f0 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f6 l.74
	fbge	%f0 %f6 tail_b.2910
tail_b.2909 :
	addi	%r0 %r9 1
	j	branching_b.1835
tail_b.2910 :
	addi	%r0 %r9 0
branching_b.1835 :
	lw.s	%r0 %f0 560
	lw	%r10 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f0
	mul.s	%f5 %f0 %f2
	floor.w.s	%f2 %f2
	mul.s	%f3 %f2 %f2
	sub.s	%f2 %f0 %f0
	fbge	%f0 %f6 tail_b.2912
tail_b.2911 :
	addi	%r0 %r2 1
	j	branching_b.1836
tail_b.2912 :
	addi	%r0 %r2 0
branching_b.1836 :
	beq	%r9 %r5 branching_b.1837
branching_b.1838 :
	beq	%r2 %r5 tail_b.2915
tail_b.2916 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2917
tail_b.2915 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2917
branching_b.1837 :
	beq	%r2 %r5 tail_b.2913
tail_b.2914 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2917
tail_b.2913 :
	ilw.s	%r0 %f0 l.52
tail_b.2917 :
	sw.s	%r0 %f0 584
	j	branching_b.1862
branching_b.1843 :
	ilw.s	%r0 %f2 l.77
	fbge	%f3 %f2 tail_b.2923
tail_b.2922 :
	addi	%r0 %r2 1
	j	branching_b.1844
tail_b.2923 :
	addi	%r0 %r2 0
branching_b.1844 :
	beq	%r2 %r5 branching_b.1845
tail_b.2933 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1851
branching_b.1845 :
	div.s	%f0 %f6 %f0
	fbge	%f0 %f1 tail_b.2925
tail_b.2924 :
	neg.s	%f0 %f6
	j	branching_b.1846
tail_b.2925 :
	mov.s	%f0 %f6
branching_b.1846 :
	fbg	%f1 %f6 branching_b.1849
branching_b.1847 :
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 branching_b.1848
tail_b.2926 :
	ilw.s	%r0 %f8 l.56
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f3 l.84
	mul.s	%f6 %f3 %f3
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f9
	mul.s	%f7 %f3 %f0
	add.s	%f0 %f9 %f3
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f9
	mul.s	%f7 %f3 %f0
	add.s	%f0 %f9 %f3
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f9
	mul.s	%f7 %f3 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f3 l.88
	mul.s	%f6 %f3 %f3
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2932
branching_b.1848 :
	ilw.s	%r0 %f0 l.82
	fbge	%f6 %f0 tail_b.2928
tail_b.2927 :
	ilw.s	%r0 %f10 l.56
	sub.s	%f10 %f6 %f3
	add.s	%f10 %f6 %f0
	div.s	%f0 %f3 %f8
	ilw.s	%r0 %f7 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f3
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f6 l.84
	mul.s	%f8 %f6 %f6
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f8 %f6 %f6
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f3 %f6 %f6
	add.s	%f6 %f0 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f6
	mul.s	%f3 %f9 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.88
	mul.s	%f8 %f6 %f6
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f10 %f0 %f0
	j	tail_b.2932
tail_b.2928 :
	ilw.s	%r0 %f0 l.56
	div.s	%f6 %f0 %f6
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f8 l.90
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f3 l.84
	mul.s	%f6 %f3 %f3
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.85
	mul.s	%f6 %f3 %f3
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.86
	mul.s	%f6 %f3 %f3
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f3 %f10
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f3
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.88
	mul.s	%f6 %f0 %f0
	mul.s	%f9 %f3 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2932
branching_b.1849 :
	neg.s	%f6 %f8
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1850
tail_b.2929 :
	ilw.s	%r0 %f0 l.58
	neg.s	%f8 %f3
	mul.s	%f8 %f3 %f7
	ilw.s	%r0 %f3 l.83
	mul.s	%f8 %f3 %f6
	ilw.s	%r0 %f3 l.84
	mul.s	%f8 %f3 %f3
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f6
	ilw.s	%r0 %f3 l.85
	mul.s	%f8 %f3 %f3
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f3
	ilw.s	%r0 %f6 l.86
	mul.s	%f8 %f6 %f6
	mul.s	%f7 %f3 %f3
	add.s	%f3 %f6 %f6
	ilw.s	%r0 %f3 l.87
	mul.s	%f8 %f3 %f3
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f6
	ilw.s	%r0 %f3 l.88
	mul.s	%f8 %f3 %f9
	mul.s	%f7 %f6 %f3
	add.s	%f3 %f9 %f3
	mul.s	%f7 %f3 %f3
	add.s	%f3 %f8 %f3
	add.s	%f3 %f1 %f3
	mul.s	%f0 %f3 %f0
	j	tail_b.2932
branching_b.1850 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.2931
tail_b.2930 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f8 %f3
	add.s	%f0 %f8 %f0
	div.s	%f0 %f3 %f7
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f9 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f3
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.85
	mul.s	%f7 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.86
	mul.s	%f7 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.88
	mul.s	%f7 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.2932
tail_b.2931 :
	ilw.s	%r0 %f6 l.56
	div.s	%f8 %f6 %f7
	ilw.s	%r0 %f9 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f3
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f3 %f3
	add.s	%f3 %f0 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f3
	mul.s	%f10 %f8 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f3 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f6 %f0 %f0
tail_b.2932 :
	ilw.s	%r0 %f3 l.89
	mul.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f3 %f0
branching_b.1851 :
	floor.w.s	%f0 %f3
	sub.s	%f3 %f0 %f6
	lw.s	%r0 %f3 556
	lw	%r10 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	sub.s	%f0 %f3 %f3
	lw	%r10 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f3 %f0
	fbge	%f5 %f1 tail_b.2935
tail_b.2934 :
	neg.s	%f5 %f3
	j	branching_b.1852
tail_b.2935 :
	mov.s	%f5 %f3
branching_b.1852 :
	fbge	%f3 %f2 tail_b.2937
tail_b.2936 :
	addi	%r0 %r2 1
	j	branching_b.1853
tail_b.2937 :
	addi	%r0 %r2 0
branching_b.1853 :
	beq	%r2 %r5 branching_b.1854
tail_b.2947 :
	ilw.s	%r0 %f2 l.79
	j	branching_b.1860
branching_b.1854 :
	div.s	%f5 %f0 %f0
	fbge	%f0 %f1 tail_b.2939
tail_b.2938 :
	neg.s	%f0 %f8
	j	branching_b.1855
tail_b.2939 :
	mov.s	%f0 %f8
branching_b.1855 :
	fbg	%f1 %f8 branching_b.1858
branching_b.1856 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1857
tail_b.2940 :
	ilw.s	%r0 %f5 l.56
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f3
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f2 l.84
	mul.s	%f8 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.85
	mul.s	%f8 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f7
	mul.s	%f3 %f2 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f2 l.87
	mul.s	%f8 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.88
	mul.s	%f8 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.2946
branching_b.1857 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.2942
tail_b.2941 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f8 %f0
	add.s	%f7 %f8 %f2
	div.s	%f2 %f0 %f3
	ilw.s	%r0 %f5 l.59
	neg.s	%f3 %f0
	mul.s	%f3 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f3 %f0 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f3 %f0 %f2
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f3 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f3 %f0 %f2
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f2 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f3 %f0 %f2
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.88
	mul.s	%f3 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f3 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2946
tail_b.2942 :
	ilw.s	%r0 %f0 l.56
	div.s	%f8 %f0 %f7
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f8 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f3
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.85
	mul.s	%f7 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.86
	mul.s	%f7 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.2946
branching_b.1858 :
	neg.s	%f8 %f5
	ilw.s	%r0 %f0 l.81
	fbge	%f5 %f0 branching_b.1859
tail_b.2943 :
	ilw.s	%r0 %f3 l.58
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f7
	mul.s	%f2 %f8 %f0
	add.s	%f0 %f7 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f7
	mul.s	%f2 %f8 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f0
	mul.s	%f2 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f2 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f5 %f0 %f0
	mul.s	%f2 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	tail_b.2946
branching_b.1859 :
	ilw.s	%r0 %f0 l.82
	fbge	%f5 %f0 tail_b.2945
tail_b.2944 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f5 %f2
	add.s	%f0 %f5 %f0
	div.s	%f0 %f2 %f5
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f8 l.59
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f3 l.84
	mul.s	%f5 %f3 %f3
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f3
	mul.s	%f2 %f9 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.86
	mul.s	%f5 %f3 %f3
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.88
	mul.s	%f5 %f0 %f0
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2946
tail_b.2945 :
	ilw.s	%r0 %f2 l.56
	div.s	%f5 %f2 %f7
	ilw.s	%r0 %f0 l.90
	neg.s	%f7 %f3
	mul.s	%f7 %f3 %f9
	ilw.s	%r0 %f3 l.83
	mul.s	%f7 %f3 %f3
	ilw.s	%r0 %f5 l.84
	mul.s	%f7 %f5 %f5
	mul.s	%f9 %f3 %f3
	add.s	%f3 %f5 %f3
	ilw.s	%r0 %f5 l.85
	mul.s	%f7 %f5 %f5
	mul.s	%f9 %f3 %f3
	add.s	%f3 %f5 %f5
	ilw.s	%r0 %f3 l.86
	mul.s	%f7 %f3 %f8
	mul.s	%f9 %f5 %f3
	add.s	%f3 %f8 %f8
	ilw.s	%r0 %f3 l.87
	mul.s	%f7 %f3 %f5
	mul.s	%f9 %f8 %f3
	add.s	%f3 %f5 %f5
	ilw.s	%r0 %f3 l.88
	mul.s	%f7 %f3 %f3
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f3 %f3
	mul.s	%f9 %f3 %f3
	add.s	%f3 %f7 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f2 %f0 %f0
tail_b.2946 :
	ilw.s	%r0 %f2 l.89
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.76
	div.s	%f2 %f0 %f2
branching_b.1860 :
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f3
	ilw.s	%r0 %f5 l.91
	ilw.s	%r0 %f2 l.62
	sub.s	%f6 %f2 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f5 %f0
	sub.s	%f3 %f2 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f0 %f0
	fbge	%f0 %f1 tail_b.2949
tail_b.2948 :
	addi	%r0 %r2 1
	j	branching_b.1861
tail_b.2949 :
	addi	%r0 %r2 0
branching_b.1861 :
	beq	%r2 %r5 tail_b.2950
tail_b.2951 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2952
tail_b.2950 :
tail_b.2952 :
	ilw.s	%r0 %f2 l.52
	mul.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.92
	div.s	%f2 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1862 :
	addi	%r0 %r2 0
	lw	%r0 %r9 536
	sw	%r26 %r10 -36
	sw.s	%r26 %f4 -32
	sw	%r26 %r8 -28
	sw	%r26 %r6 -24
	sw	%r26 %r7 -20
	sw.s	%r26 %f1 -16
	sw	%r26 %r5 -12
	sw	%r26 %r1 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	mov	%r2 %r1
	mov	%r9 %r2
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	mov	%r1 %r2
	lw	%r26 %r10 -36
	lw.s	%r26 %f4 -32
	lw	%r26 %r8 -28
	lw	%r26 %r6 -24
	lw	%r26 %r7 -20
	lw.s	%r26 %f1 -16
	lw	%r26 %r5 -12
	lw	%r26 %r1 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	beq	%r2 %r5 branching_b.1863
tail_b.2959 :
	j	tail_b.3034
branching_b.1863 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f2 312
	mul.s	%f2 %f0 %f3
	lw.s	%r0 %f0 572
	lw.s	%r0 %f2 316
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f3
	lw.s	%r0 %f2 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	neg.s	%f0 %f0
	fbge	%f1 %f0 tail_b.2955
tail_b.2954 :
	addi	%r0 %r2 1
	j	branching_b.1864
tail_b.2955 :
	addi	%r0 %r2 0
branching_b.1864 :
	beq	%r2 %r5 tail_b.2956
tail_b.2957 :
	j	tail_b.2958
tail_b.2956 :
	ilw.s	%r0 %f0 l.51
tail_b.2958 :
	mul.s	%f0 %f4 %f2
	lw	%r10 %r2 28
	lw.s	%r2 %f0 0
	mul.s	%f0 %f2 %f3
	lw.s	%r0 %f2 592
	lw.s	%r0 %f0 580
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f2 596
	lw.s	%r0 %f0 584
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f2 600
	lw.s	%r0 %f0 588
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 600
	j	tail_b.3034
branching_b.1830 :
	lw	%r10 %r2 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f2 572
	mul.s	%f2 %f2 %f2
	add.s	%f2 %f0 %f2
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	sqrt.s	%f0 %f2
	fbne	%f2 %f1 tail_b.2904
tail_b.2903 :
	addi	%r0 %r11 1
	j	branching_b.1831
tail_b.2904 :
	addi	%r0 %r11 0
branching_b.1831 :
	beq	%r11 %r5 branching_b.1832
tail_b.2907 :
	ilw.s	%r0 %f2 l.56
	j	tail_b.2908
branching_b.1832 :
	beq	%r2 %r5 tail_b.2905
tail_b.2906 :
	ilw.s	%r0 %f0 l.58
	div.s	%f2 %f0 %f2
	j	tail_b.2908
tail_b.2905 :
	ilw.s	%r0 %f0 l.56
	div.s	%f2 %f0 %f2
tail_b.2908 :
	lw.s	%r0 %f0 568
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1833
branching_b.1866 :
	beq	%r2 %r5 tail_b.2962
branching_b.1867 :
	ilw.s	%r0 %f0 l.71
	fbge	%f2 %f0 tail_b.2964
tail_b.2963 :
	addi	%r0 %r2 1
	j	branching_b.1868
tail_b.2964 :
	addi	%r0 %r2 0
	j	branching_b.1868
tail_b.2962 :
	addi	%r0 %r2 0
branching_b.1868 :
	beq	%r2 %r5 tail_b.2965
branching_b.1869 :
	lw	%r0 %r2 564
	slli	%r2 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r9 0
	lw	%r10 %r10 0
	lw	%r9 %r2 4
	addi	%r0 %r11 1
	beq	%r2 %r11 branching_b.1870
branching_b.1874 :
	addi	%r0 %r10 2
	beq	%r2 %r10 tail_b.2974
branching_b.1875 :
	lw.s	%r0 %f0 552
	lw	%r9 %r2 20
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f9
	lw.s	%r0 %f0 556
	lw	%r9 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f6
	lw.s	%r0 %f0 560
	lw	%r9 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f2
	lw	%r9 %r2 16
	lw.s	%r2 %f0 0
	mul.s	%f0 %f9 %f5
	lw	%r9 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f6 %f8
	lw	%r9 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f2 %f7
	lw	%r9 %r2 12
	beq	%r2 %r5 tail_b.2975
tail_b.2976 :
	lw	%r9 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f6 %f0
	lw	%r9 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f4 0
	mul.s	%f4 %f2 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.67
	div.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 568
	lw	%r9 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f9 %f0
	lw	%r9 %r2 36
	lw.s	%r2 %f5 0
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f0
	div.s	%f4 %f0 %f0
	add.s	%f0 %f8 %f0
	sw.s	%r0 %f0 572
	lw	%r9 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f9 %f2
	lw	%r9 %r2 36
	lw.s	%r2 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	div.s	%f4 %f0 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1876
tail_b.2975 :
	sw.s	%r0 %f5 568
	sw.s	%r0 %f8 572
	sw.s	%r0 %f7 576
	j	branching_b.1876
tail_b.2974 :
	lw	%r9 %r2 16
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r9 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r9 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1879
branching_b.1870 :
	lw	%r0 %r2 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r2 %r12 -1
	addi	%r2 %r2 -1
	slli	%r2 %r2 2
	add	%r10 %r2 %r2
	lw.s	%r2 %f0 0
	fbne	%f0 %f1 tail_b.2967
tail_b.2966 :
	addi	%r0 %r2 1
	j	branching_b.1871
tail_b.2967 :
	addi	%r0 %r2 0
	j	branching_b.1871
tail_b.2965 :
	j	tail_b.3034
branching_b.1871 :
	beq	%r2 %r5 branching_b.1872
tail_b.2972 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2973
branching_b.1872 :
	fbge	%f1 %f0 tail_b.2969
tail_b.2968 :
	addi	%r0 %r2 1
	j	branching_b.1873
tail_b.2969 :
	addi	%r0 %r2 0
branching_b.1873 :
	beq	%r2 %r5 tail_b.2970
tail_b.2971 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2973
tail_b.2970 :
	ilw.s	%r0 %f0 l.58
tail_b.2973 :
	neg.s	%f0 %f0
	slli	%r12 %r2 2
	addi	%r2 %r2 568
	sw.s	%r2 %f0 0
branching_b.1879 :
	lw	%r9 %r10 0
	lw	%r9 %r2 32
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 580
	lw	%r9 %r2 32
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 584
	lw	%r9 %r2 32
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 588
	beq	%r10 %r11 branching_b.1880
branching_b.1885 :
	addi	%r0 %r2 2
	beq	%r10 %r2 tail_b.2992
branching_b.1886 :
	addi	%r0 %r2 3
	beq	%r10 %r2 tail_b.2993
branching_b.1887 :
	beq	%r10 %r1 branching_b.1888
tail_b.3027 :
	j	branching_b.1908
branching_b.1888 :
	lw.s	%r0 %f0 552
	lw	%r9 %r2 20
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f0
	lw	%r9 %r2 16
	lw.s	%r2 %f2 0
	sqrt.s	%f2 %f2
	mul.s	%f2 %f0 %f7
	lw.s	%r0 %f0 560
	lw	%r9 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f2
	lw	%r9 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f2 %f5
	mul.s	%f7 %f7 %f0
	mul.s	%f5 %f5 %f2
	add.s	%f2 %f0 %f4
	fbge	%f7 %f1 tail_b.2995
tail_b.2994 :
	neg.s	%f7 %f0
	j	branching_b.1889
tail_b.2995 :
	mov.s	%f7 %f0
	j	branching_b.1889
tail_b.2993 :
	lw.s	%r0 %f0 552
	lw	%r9 %r2 20
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f0
	lw.s	%r0 %f4 560
	lw	%r9 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	sub.s	%f2 %f4 %f2
	mul.s	%f0 %f0 %f4
	mul.s	%f2 %f2 %f0
	add.s	%f0 %f4 %f0
	sqrt.s	%f0 %f2
	ilw.s	%r0 %f0 l.74
	div.s	%f0 %f2 %f0
	floor.w.s	%f0 %f2
	sub.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.76
	mul.s	%f0 %f2 %f0
	sw	%r26 %r9 -36
	sw.s	%r26 %f3 -32
	sw	%r26 %r8 -28
	sw	%r26 %r6 -24
	sw	%r26 %r7 -20
	sw.s	%r26 %f1 -16
	sw	%r26 %r5 -12
	sw	%r26 %r1 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	cos.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r9 -36
	lw.s	%r26 %f3 -32
	lw	%r26 %r8 -28
	lw	%r26 %r6 -24
	lw	%r26 %r7 -20
	lw.s	%r26 %f1 -16
	lw	%r26 %r5 -12
	lw	%r26 %r1 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f0 l.52
	mul.s	%f0 %f4 %f2
	sw.s	%r0 %f2 584
	ilw.s	%r0 %f2 l.56
	sub.s	%f4 %f2 %f2
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1908
tail_b.2992 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f2 l.75
	mul.s	%f2 %f0 %f0
	sw	%r26 %r9 -36
	sw.s	%r26 %f3 -32
	sw	%r26 %r8 -28
	sw	%r26 %r6 -24
	sw	%r26 %r7 -20
	sw.s	%r26 %f1 -16
	sw	%r26 %r5 -12
	sw	%r26 %r1 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	sin.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r9 -36
	lw.s	%r26 %f3 -32
	lw	%r26 %r8 -28
	lw	%r26 %r6 -24
	lw	%r26 %r7 -20
	lw.s	%r26 %f1 -16
	lw	%r26 %r5 -12
	lw	%r26 %r1 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f2 l.52
	mul.s	%f0 %f2 %f4
	sw.s	%r0 %f4 580
	ilw.s	%r0 %f4 l.56
	sub.s	%f0 %f4 %f0
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1908
branching_b.1880 :
	lw.s	%r0 %f0 552
	lw	%r9 %r2 20
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f4
	ilw.s	%r0 %f5 l.72
	mul.s	%f5 %f4 %f0
	floor.w.s	%f0 %f2
	ilw.s	%r0 %f0 l.73
	mul.s	%f0 %f2 %f2
	sub.s	%f2 %f4 %f2
	ilw.s	%r0 %f6 l.74
	fbge	%f2 %f6 tail_b.2984
tail_b.2983 :
	addi	%r0 %r10 1
	j	branching_b.1881
tail_b.2984 :
	addi	%r0 %r10 0
branching_b.1881 :
	lw.s	%r0 %f2 560
	lw	%r9 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f4 0
	sub.s	%f4 %f2 %f4
	mul.s	%f5 %f4 %f2
	floor.w.s	%f2 %f2
	mul.s	%f0 %f2 %f0
	sub.s	%f0 %f4 %f0
	fbge	%f0 %f6 tail_b.2986
tail_b.2985 :
	addi	%r0 %r2 1
	j	branching_b.1882
tail_b.2986 :
	addi	%r0 %r2 0
branching_b.1882 :
	beq	%r10 %r5 branching_b.1883
branching_b.1884 :
	beq	%r2 %r5 tail_b.2989
tail_b.2990 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2991
tail_b.2989 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2991
branching_b.1883 :
	beq	%r2 %r5 tail_b.2987
tail_b.2988 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2991
tail_b.2987 :
	ilw.s	%r0 %f0 l.52
tail_b.2991 :
	sw.s	%r0 %f0 584
	j	branching_b.1908
branching_b.1889 :
	ilw.s	%r0 %f6 l.77
	fbge	%f0 %f6 tail_b.2997
tail_b.2996 :
	addi	%r0 %r2 1
	j	branching_b.1890
tail_b.2997 :
	addi	%r0 %r2 0
branching_b.1890 :
	beq	%r2 %r5 branching_b.1891
tail_b.3007 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1897
branching_b.1891 :
	div.s	%f7 %f5 %f0
	fbge	%f0 %f1 tail_b.2999
tail_b.2998 :
	neg.s	%f0 %f8
	j	branching_b.1892
tail_b.2999 :
	mov.s	%f0 %f8
branching_b.1892 :
	fbg	%f1 %f8 branching_b.1895
branching_b.1893 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.1894
tail_b.3000 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f2 l.84
	mul.s	%f8 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f2
	mul.s	%f5 %f9 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.86
	mul.s	%f8 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.87
	mul.s	%f8 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.88
	mul.s	%f8 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f2
	j	tail_b.3006
branching_b.1894 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.3002
tail_b.3001 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f8 %f0
	add.s	%f7 %f8 %f2
	div.s	%f2 %f0 %f5
	ilw.s	%r0 %f8 l.59
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.85
	mul.s	%f5 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f2
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.87
	mul.s	%f5 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.88
	mul.s	%f5 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f2
	j	tail_b.3006
tail_b.3002 :
	ilw.s	%r0 %f0 l.56
	div.s	%f8 %f0 %f9
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f2 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f9 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f9 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f2
	j	tail_b.3006
branching_b.1895 :
	neg.s	%f8 %f7
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 branching_b.1896
tail_b.3003 :
	ilw.s	%r0 %f8 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.86
	mul.s	%f7 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.87
	mul.s	%f7 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.88
	mul.s	%f7 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f2
	j	tail_b.3006
branching_b.1896 :
	ilw.s	%r0 %f0 l.82
	fbge	%f7 %f0 tail_b.3005
tail_b.3004 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f7 %f2
	add.s	%f0 %f7 %f0
	div.s	%f0 %f2 %f8
	ilw.s	%r0 %f2 l.58
	ilw.s	%r0 %f10 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f9
	mul.s	%f7 %f5 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f5
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f9
	mul.s	%f7 %f5 %f0
	add.s	%f0 %f9 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f2 %f0 %f2
	j	tail_b.3006
tail_b.3005 :
	ilw.s	%r0 %f5 l.56
	div.s	%f7 %f5 %f7
	ilw.s	%r0 %f8 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f2 l.84
	mul.s	%f7 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f10
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f2
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.88
	mul.s	%f7 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f2
tail_b.3006 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f2 %f0
branching_b.1897 :
	floor.w.s	%f0 %f2
	sub.s	%f2 %f0 %f5
	lw.s	%r0 %f0 556
	lw	%r9 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f2
	lw	%r9 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f2 %f2
	fbge	%f4 %f1 tail_b.3009
tail_b.3008 :
	neg.s	%f4 %f0
	j	branching_b.1898
tail_b.3009 :
	mov.s	%f4 %f0
branching_b.1898 :
	fbge	%f0 %f6 tail_b.3011
tail_b.3010 :
	addi	%r0 %r2 1
	j	branching_b.1899
tail_b.3011 :
	addi	%r0 %r2 0
branching_b.1899 :
	beq	%r2 %r5 branching_b.1900
tail_b.3021 :
	ilw.s	%r0 %f2 l.79
	j	branching_b.1906
branching_b.1900 :
	div.s	%f4 %f2 %f0
	fbge	%f0 %f1 tail_b.3013
tail_b.3012 :
	neg.s	%f0 %f0
	j	branching_b.1901
tail_b.3013 :
branching_b.1901 :
	fbg	%f1 %f0 branching_b.1904
branching_b.1902 :
	ilw.s	%r0 %f2 l.81
	fbge	%f0 %f2 branching_b.1903
tail_b.3014 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f0 %f2
	mul.s	%f0 %f2 %f2
	ilw.s	%r0 %f4 l.83
	mul.s	%f0 %f4 %f4
	ilw.s	%r0 %f6 l.84
	mul.s	%f0 %f6 %f6
	mul.s	%f2 %f4 %f4
	add.s	%f4 %f6 %f4
	ilw.s	%r0 %f6 l.85
	mul.s	%f0 %f6 %f6
	mul.s	%f2 %f4 %f4
	add.s	%f4 %f6 %f6
	ilw.s	%r0 %f4 l.86
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f6 %f6
	add.s	%f6 %f4 %f4
	ilw.s	%r0 %f6 l.87
	mul.s	%f0 %f6 %f6
	mul.s	%f2 %f4 %f4
	add.s	%f4 %f6 %f8
	ilw.s	%r0 %f4 l.88
	mul.s	%f0 %f4 %f6
	mul.s	%f2 %f8 %f4
	add.s	%f4 %f6 %f4
	mul.s	%f2 %f4 %f2
	add.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.3020
branching_b.1903 :
	ilw.s	%r0 %f2 l.82
	fbge	%f0 %f2 tail_b.3016
tail_b.3015 :
	ilw.s	%r0 %f9 l.56
	sub.s	%f9 %f0 %f2
	add.s	%f9 %f0 %f0
	div.s	%f0 %f2 %f4
	ilw.s	%r0 %f6 l.59
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f2 l.83
	mul.s	%f4 %f2 %f7
	ilw.s	%r0 %f2 l.84
	mul.s	%f4 %f2 %f2
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f2 %f7
	ilw.s	%r0 %f2 l.85
	mul.s	%f4 %f2 %f2
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f2 %f7
	ilw.s	%r0 %f2 l.86
	mul.s	%f4 %f2 %f8
	mul.s	%f0 %f7 %f2
	add.s	%f2 %f8 %f7
	ilw.s	%r0 %f2 l.87
	mul.s	%f4 %f2 %f8
	mul.s	%f0 %f7 %f2
	add.s	%f2 %f8 %f7
	ilw.s	%r0 %f2 l.88
	mul.s	%f4 %f2 %f8
	mul.s	%f0 %f7 %f2
	add.s	%f2 %f8 %f2
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.3020
tail_b.3016 :
	ilw.s	%r0 %f2 l.56
	div.s	%f0 %f2 %f2
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f7 l.90
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f2 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f2 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f2 %f0 %f9
	mul.s	%f8 %f4 %f0
	add.s	%f0 %f9 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f2 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f2 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.88
	mul.s	%f2 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.3020
branching_b.1904 :
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.81
	fbge	%f2 %f0 branching_b.1905
tail_b.3017 :
	ilw.s	%r0 %f7 l.58
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f2 %f0 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f2 %f0 %f4
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f2 %f0 %f0
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f2 %f0 %f0
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f2 %f4 %f4
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f2 %f0 %f0
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.3020
branching_b.1905 :
	ilw.s	%r0 %f0 l.82
	fbge	%f2 %f0 tail_b.3019
tail_b.3018 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f2 %f4
	add.s	%f0 %f2 %f0
	div.s	%f0 %f4 %f6
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f4 l.59
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.88
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.3020
tail_b.3019 :
	ilw.s	%r0 %f6 l.56
	div.s	%f2 %f6 %f9
	ilw.s	%r0 %f4 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f2 l.84
	mul.s	%f9 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.85
	mul.s	%f9 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.86
	mul.s	%f9 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f2
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f6 %f0 %f0
tail_b.3020 :
	ilw.s	%r0 %f2 l.89
	mul.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f2 %f2
branching_b.1906 :
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f4 l.91
	ilw.s	%r0 %f2 l.62
	sub.s	%f5 %f2 %f5
	mul.s	%f5 %f5 %f5
	sub.s	%f5 %f4 %f4
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f4 %f0
	fbge	%f0 %f1 tail_b.3023
tail_b.3022 :
	addi	%r0 %r2 1
	j	branching_b.1907
tail_b.3023 :
	addi	%r0 %r2 0
branching_b.1907 :
	beq	%r2 %r5 tail_b.3024
tail_b.3025 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.3026
tail_b.3024 :
tail_b.3026 :
	ilw.s	%r0 %f2 l.52
	mul.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.92
	div.s	%f0 %f2 %f0
	sw.s	%r0 %f0 588
branching_b.1908 :
	addi	%r0 %r2 0
	lw	%r0 %r10 536
	sw	%r26 %r9 -36
	sw.s	%r26 %f3 -32
	sw	%r26 %r8 -28
	sw	%r26 %r6 -24
	sw	%r26 %r7 -20
	sw.s	%r26 %f1 -16
	sw	%r26 %r5 -12
	sw	%r26 %r1 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	mov	%r2 %r1
	mov	%r10 %r2
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	mov	%r1 %r2
	lw	%r26 %r9 -36
	lw.s	%r26 %f3 -32
	lw	%r26 %r8 -28
	lw	%r26 %r6 -24
	lw	%r26 %r7 -20
	lw.s	%r26 %f1 -16
	lw	%r26 %r5 -12
	lw	%r26 %r1 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	beq	%r2 %r5 branching_b.1909
tail_b.3033 :
	j	tail_b.3034
branching_b.1909 :
	lw.s	%r0 %f2 568
	lw.s	%r0 %f0 312
	mul.s	%f0 %f2 %f4
	lw.s	%r0 %f2 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f4 %f4
	lw.s	%r0 %f2 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f4 %f0
	neg.s	%f0 %f0
	fbge	%f1 %f0 tail_b.3029
tail_b.3028 :
	addi	%r0 %r2 1
	j	branching_b.1910
tail_b.3029 :
	addi	%r0 %r2 0
branching_b.1910 :
	beq	%r2 %r5 tail_b.3030
tail_b.3031 :
	j	tail_b.3032
tail_b.3030 :
	ilw.s	%r0 %f0 l.51
tail_b.3032 :
	mul.s	%f0 %f3 %f0
	lw	%r9 %r2 28
	lw.s	%r2 %f2 0
	mul.s	%f2 %f0 %f3
	lw.s	%r0 %f0 592
	lw.s	%r0 %f2 580
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f2 596
	lw.s	%r0 %f0 584
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f0 600
	lw.s	%r0 %f2 588
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	sw.s	%r0 %f0 600
	j	tail_b.3034
branching_b.1876 :
	lw	%r9 %r10 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f2
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f2
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f1 tail_b.2978
tail_b.2977 :
	addi	%r0 %r2 1
	j	branching_b.1877
tail_b.2978 :
	addi	%r0 %r2 0
branching_b.1877 :
	beq	%r2 %r5 branching_b.1878
tail_b.2981 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2982
branching_b.1878 :
	beq	%r10 %r5 tail_b.2979
tail_b.2980 :
	ilw.s	%r0 %f2 l.58
	div.s	%f0 %f2 %f0
	j	tail_b.2982
tail_b.2979 :
	ilw.s	%r0 %f2 l.56
	div.s	%f0 %f2 %f0
tail_b.2982 :
	lw.s	%r0 %f2 568
	mul.s	%f0 %f2 %f2
	sw.s	%r0 %f2 568
	lw.s	%r0 %f2 572
	mul.s	%f0 %f2 %f2
	sw.s	%r0 %f2 572
	lw.s	%r0 %f2 576
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1879
postloop_b.67 :
tail_b.3036 :
	lw	%r4 %r1 20
	slli	%r3 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f0 592
	mov	%r1 %r2
	sw.s	%r2 %f0 0
	lw.s	%r0 %f0 596
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	lw.s	%r0 %f0 600
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	j	tail_b.3037
postloop_b.68 :
return_point.23 :
	retl
pretrace_pixels.0 :
	mov	%r1 %r6
	mov.s	%f2 %f6
	mov.s	%f1 %f4
	mov.s	%f0 %f5
preloop_b.69 :
	mov	%r2 %r4
pretrace_pixels_loop.0 :
	addi	%r0 %r11 696
	addi	%r0 %r5 0
	ble	%r5 %r4 branching_b.1912
tail_b.3145 :
	j	postloop_b.71
branching_b.1912 :
	lw.s	%r0 %f0 632
	lw	%r0 %r1 624
	sub	%r4 %r1 %r1
	mtc1	%r1 %f1
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 660
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	sw.s	%r0 %f0 696
	lw.s	%r0 %f0 664
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	sw.s	%r0 %f0 700
	lw.s	%r0 %f0 668
	mul.s	%f0 %f1 %f0
	add.s	%f6 %f0 %f0
	sw.s	%r0 %f0 704
	lw.s	%r0 %f0 696
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 700
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	lw.s	%r0 %f1 704
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f3 l.51
	fbne	%f0 %f3 tail_b.3041
tail_b.3040 :
	addi	%r0 %r1 1
	j	branching_b.1913
tail_b.3041 :
	addi	%r0 %r1 0
branching_b.1913 :
	beq	%r1 %r5 tail_b.3042
tail_b.3043 :
	ilw.s	%r0 %f1 l.56
	j	preloop_b.70
tail_b.3042 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f1
preloop_b.70 :
	lw.s	%r0 %f0 696
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 696
	lw.s	%r0 %f0 700
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 700
	lw.s	%r0 %f0 704
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 704
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 604
	sw.s	%r0 %f0 608
	sw.s	%r0 %f0 612
	lw.s	%r0 %f0 300
	sw.s	%r0 %f0 636
	lw.s	%r0 %f0 304
	sw.s	%r0 %f0 640
	lw.s	%r0 %f0 308
	sw.s	%r0 %f0 644
	ilw.s	%r0 %f7 l.56
	slli	%r4 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r8 0
	mov	%r5 %r12
	mov.s	%f7 %f8
	mov.s	%f3 %f2
trace_ray_loop.1 :
	addi	%r0 %r14 552
	addi	%r0 %r2 4
	ble	%r12 %r2 branching_b.1915
tail_b.3136 :
	j	postloop_b.69
branching_b.1915 :
	lw	%r8 %r10 8
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r1 0
	lw	%r0 %r7 536
	sw	%r26 %r10 -64
	sw	%r26 %r2 -60
	sw	%r26 %r14 -56
	sw.s	%r26 %f2 -52
	sw.s	%r26 %f8 -48
	sw	%r26 %r12 -44
	sw	%r26 %r8 -40
	sw.s	%r26 %f7 -36
	sw.s	%r26 %f3 -32
	sw	%r26 %r5 -28
	sw	%r26 %r11 -24
	sw	%r26 %r3 -20
	sw	%r26 %r4 -16
	sw.s	%r26 %f6 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f5 -4
	sw	%r26 %r6 0
	mov	%r11 %r3
	mov	%r7 %r2
	sw	%r26 %r28 -68
	addi	%r26 %r26 -72
	jal	trace_or_matrix.0
	addi	%r26 %r26 72
	lw	%r26 %r28 -68
	lw	%r26 %r10 -64
	lw	%r26 %r2 -60
	lw	%r26 %r14 -56
	lw.s	%r26 %f2 -52
	lw.s	%r26 %f8 -48
	lw	%r26 %r12 -44
	lw	%r26 %r8 -40
	lw.s	%r26 %f7 -36
	lw.s	%r26 %f3 -32
	lw	%r26 %r5 -28
	lw	%r26 %r11 -24
	lw	%r26 %r3 -20
	lw	%r26 %r4 -16
	lw.s	%r26 %f6 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f5 -4
	lw	%r26 %r6 0
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f1 l.70
	fbge	%f1 %f0 tail_b.3045
tail_b.3044 :
	addi	%r0 %r1 1
	j	branching_b.1916
tail_b.3045 :
	addi	%r0 %r1 0
branching_b.1916 :
	beq	%r1 %r5 tail_b.3046
branching_b.1917 :
	ilw.s	%r0 %f1 l.71
	fbge	%f0 %f1 tail_b.3048
tail_b.3047 :
	addi	%r0 %r1 1
	j	branching_b.1918
tail_b.3048 :
	addi	%r0 %r1 0
	j	branching_b.1918
tail_b.3046 :
	addi	%r0 %r1 0
branching_b.1918 :
	beq	%r1 %r5 branching_b.1919
branching_b.1922 :
	lw	%r0 %r15 564
	slli	%r15 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r13 0
	lw	%r13 %r9 8
	lw	%r13 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f9
	lw	%r13 %r1 4
	addi	%r0 %r7 1
	beq	%r1 %r7 branching_b.1923
branching_b.1927 :
	addi	%r0 %r16 2
	beq	%r1 %r16 tail_b.3062
branching_b.1928 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f13
	lw.s	%r0 %f0 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f11
	lw.s	%r0 %f1 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f12
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f13 %f15
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f11 %f1
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f12 %f10
	lw	%r13 %r1 12
	beq	%r1 %r5 tail_b.3063
tail_b.3064 :
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f11 %f14
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f12 %f0
	add.s	%f0 %f14 %f0
	ilw.s	%r0 %f16 l.67
	div.s	%f16 %f0 %f0
	add.s	%f0 %f15 %f0
	sw.s	%r0 %f0 568
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f13 %f0
	lw	%r13 %r1 36
	lw.s	%r1 %f14 0
	mul.s	%f14 %f12 %f12
	add.s	%f12 %f0 %f0
	div.s	%f16 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f13 %f0
	lw	%r13 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f11 %f1
	add.s	%f1 %f0 %f0
	div.s	%f16 %f0 %f0
	add.s	%f0 %f10 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1929
tail_b.3063 :
	sw.s	%r0 %f15 568
	sw.s	%r0 %f1 572
	sw.s	%r0 %f10 576
	j	branching_b.1929
tail_b.3062 :
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1932
branching_b.1923 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r16 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	addi	%r1 %r1 696
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.3055
tail_b.3054 :
	addi	%r0 %r1 1
	j	branching_b.1924
tail_b.3055 :
	addi	%r0 %r1 0
	j	branching_b.1924
branching_b.1919 :
	addi	%r0 %r2 -1
	slli	%r12 %r1 2
	add	%r10 %r1 %r1
	sw	%r1 %r2 0
	bne	%r12 %r5 branching_b.1920
tail_b.3053 :
	j	postloop_b.69
branching_b.1920 :
	lw.s	%r0 %f1 696
	lw.s	%r0 %f0 312
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 700
	lw.s	%r0 %f2 316
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f2
	lw.s	%r0 %f1 704
	lw.s	%r0 %f0 320
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	neg.s	%f0 %f0
	fbge	%f3 %f0 tail_b.3050
tail_b.3049 :
	addi	%r0 %r1 1
	j	branching_b.1921
tail_b.3050 :
	addi	%r0 %r1 0
branching_b.1921 :
	beq	%r1 %r5 tail_b.3051
tail_b.3052 :
	mul.s	%f0 %f0 %f1
	mul.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	lw.s	%r0 %f1 324
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 604
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
	j	postloop_b.69
tail_b.3051 :
	j	postloop_b.69
branching_b.1924 :
	beq	%r1 %r5 branching_b.1925
tail_b.3060 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.3061
branching_b.1925 :
	fbge	%f3 %f0 tail_b.3057
tail_b.3056 :
	addi	%r0 %r1 1
	j	branching_b.1926
tail_b.3057 :
	addi	%r0 %r1 0
branching_b.1926 :
	beq	%r1 %r5 tail_b.3058
tail_b.3059 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.3061
tail_b.3058 :
	ilw.s	%r0 %f0 l.58
tail_b.3061 :
	neg.s	%f0 %f0
	slli	%r16 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1932 :
	lw.s	%r0 %f0 552
	sw.s	%r0 %f0 636
	lw.s	%r0 %f0 556
	sw.s	%r0 %f0 640
	lw.s	%r0 %f0 560
	sw.s	%r0 %f0 644
	lw	%r13 %r16 0
	lw	%r13 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r13 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r13 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r16 %r7 branching_b.1933
branching_b.1938 :
	addi	%r0 %r1 2
	beq	%r16 %r1 tail_b.3080
branching_b.1939 :
	addi	%r0 %r1 3
	beq	%r16 %r1 tail_b.3081
branching_b.1940 :
	beq	%r16 %r2 branching_b.1941
tail_b.3115 :
	j	branching_b.1961
branching_b.1941 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f13
	lw.s	%r0 %f1 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	mul.s	%f13 %f13 %f0
	mul.s	%f1 %f1 %f10
	add.s	%f10 %f0 %f12
	fbge	%f13 %f3 tail_b.3083
tail_b.3082 :
	neg.s	%f13 %f0
	j	branching_b.1942
tail_b.3083 :
	mov.s	%f13 %f0
	j	branching_b.1942
tail_b.3081 :
	lw.s	%r0 %f1 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f10
	lw.s	%r0 %f1 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	mul.s	%f10 %f10 %f0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.74
	div.s	%f1 %f0 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.76
	mul.s	%f1 %f0 %f0
	sw.s	%r26 %f9 -80
	sw	%r26 %r9 -76
	sw	%r26 %r13 -72
	sw	%r26 %r15 -68
	sw	%r26 %r10 -64
	sw	%r26 %r2 -60
	sw	%r26 %r14 -56
	sw.s	%r26 %f2 -52
	sw.s	%r26 %f8 -48
	sw	%r26 %r12 -44
	sw	%r26 %r8 -40
	sw.s	%r26 %f7 -36
	sw.s	%r26 %f3 -32
	sw	%r26 %r5 -28
	sw	%r26 %r11 -24
	sw	%r26 %r3 -20
	sw	%r26 %r4 -16
	sw.s	%r26 %f6 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f5 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -84
	addi	%r26 %r26 -88
	jal	cos.0
	addi	%r26 %r26 88
	lw	%r26 %r28 -84
	lw.s	%r26 %f9 -80
	lw	%r26 %r9 -76
	lw	%r26 %r13 -72
	lw	%r26 %r15 -68
	lw	%r26 %r10 -64
	lw	%r26 %r2 -60
	lw	%r26 %r14 -56
	lw.s	%r26 %f2 -52
	lw.s	%r26 %f8 -48
	lw	%r26 %r12 -44
	lw	%r26 %r8 -40
	lw.s	%r26 %f7 -36
	lw.s	%r26 %f3 -32
	lw	%r26 %r5 -28
	lw	%r26 %r11 -24
	lw	%r26 %r3 -20
	lw	%r26 %r4 -16
	lw.s	%r26 %f6 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f5 -4
	lw	%r26 %r6 0
	mul.s	%f0 %f0 %f10
	ilw.s	%r0 %f1 l.52
	mul.s	%f1 %f10 %f0
	sw.s	%r0 %f0 584
	sub.s	%f10 %f7 %f0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.1961
tail_b.3080 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	sw.s	%r26 %f9 -80
	sw	%r26 %r9 -76
	sw	%r26 %r13 -72
	sw	%r26 %r15 -68
	sw	%r26 %r10 -64
	sw	%r26 %r2 -60
	sw	%r26 %r14 -56
	sw.s	%r26 %f2 -52
	sw.s	%r26 %f8 -48
	sw	%r26 %r12 -44
	sw	%r26 %r8 -40
	sw.s	%r26 %f7 -36
	sw.s	%r26 %f3 -32
	sw	%r26 %r5 -28
	sw	%r26 %r11 -24
	sw	%r26 %r3 -20
	sw	%r26 %r4 -16
	sw.s	%r26 %f6 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f5 -4
	sw	%r26 %r6 0
	sw	%r26 %r28 -84
	addi	%r26 %r26 -88
	jal	sin.0
	addi	%r26 %r26 88
	lw	%r26 %r28 -84
	lw.s	%r26 %f9 -80
	lw	%r26 %r9 -76
	lw	%r26 %r13 -72
	lw	%r26 %r15 -68
	lw	%r26 %r10 -64
	lw	%r26 %r2 -60
	lw	%r26 %r14 -56
	lw.s	%r26 %f2 -52
	lw.s	%r26 %f8 -48
	lw	%r26 %r12 -44
	lw	%r26 %r8 -40
	lw.s	%r26 %f7 -36
	lw.s	%r26 %f3 -32
	lw	%r26 %r5 -28
	lw	%r26 %r11 -24
	lw	%r26 %r3 -20
	lw	%r26 %r4 -16
	lw.s	%r26 %f6 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f5 -4
	lw	%r26 %r6 0
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f10 l.52
	mul.s	%f1 %f10 %f0
	sw.s	%r0 %f0 580
	sub.s	%f1 %f7 %f0
	mul.s	%f0 %f10 %f0
	sw.s	%r0 %f0 584
	j	branching_b.1961
branching_b.1933 :
	lw.s	%r0 %f1 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.72
	mul.s	%f1 %f0 %f10
	floor.w.s	%f10 %f10
	ilw.s	%r0 %f12 l.73
	mul.s	%f12 %f10 %f10
	sub.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.74
	fbge	%f10 %f0 tail_b.3072
tail_b.3071 :
	addi	%r0 %r1 1
	j	branching_b.1934
tail_b.3072 :
	addi	%r0 %r1 0
branching_b.1934 :
	lw.s	%r0 %f10 560
	lw	%r13 %r7 20
	addi	%r7 %r7 8
	lw.s	%r7 %f11 0
	sub.s	%f11 %f10 %f10
	mul.s	%f1 %f10 %f1
	floor.w.s	%f1 %f1
	mul.s	%f12 %f1 %f1
	sub.s	%f1 %f10 %f1
	fbge	%f1 %f0 tail_b.3074
tail_b.3073 :
	addi	%r0 %r7 1
	j	branching_b.1935
tail_b.3074 :
	addi	%r0 %r7 0
branching_b.1935 :
	beq	%r1 %r5 branching_b.1936
branching_b.1937 :
	beq	%r7 %r5 tail_b.3077
tail_b.3078 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.3079
tail_b.3077 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.3079
branching_b.1936 :
	beq	%r7 %r5 tail_b.3075
tail_b.3076 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.3079
tail_b.3075 :
	ilw.s	%r0 %f0 l.52
tail_b.3079 :
	sw.s	%r0 %f0 584
	j	branching_b.1961
branching_b.1942 :
	ilw.s	%r0 %f11 l.77
	fbge	%f0 %f11 tail_b.3085
tail_b.3084 :
	addi	%r0 %r1 1
	j	branching_b.1943
tail_b.3085 :
	addi	%r0 %r1 0
branching_b.1943 :
	beq	%r1 %r5 branching_b.1944
tail_b.3095 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1950
branching_b.1944 :
	div.s	%f13 %f1 %f0
	fbge	%f0 %f3 tail_b.3087
tail_b.3086 :
	neg.s	%f0 %f13
	j	branching_b.1945
tail_b.3087 :
	mov.s	%f0 %f13
branching_b.1945 :
	fbg	%f3 %f13 branching_b.1948
branching_b.1946 :
	ilw.s	%r0 %f0 l.81
	fbge	%f13 %f0 branching_b.1947
tail_b.3088 :
	neg.s	%f13 %f0
	mul.s	%f13 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f13 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f13 %f0 %f0
	mul.s	%f1 %f10 %f10
	add.s	%f10 %f0 %f14
	ilw.s	%r0 %f0 l.85
	mul.s	%f13 %f0 %f10
	mul.s	%f1 %f14 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f13 %f0 %f0
	mul.s	%f1 %f10 %f10
	add.s	%f10 %f0 %f0
	ilw.s	%r0 %f10 l.87
	mul.s	%f13 %f10 %f10
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f10 l.88
	mul.s	%f13 %f10 %f10
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f13 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.3094
branching_b.1947 :
	ilw.s	%r0 %f0 l.82
	fbge	%f13 %f0 tail_b.3090
tail_b.3089 :
	sub.s	%f7 %f13 %f1
	add.s	%f7 %f13 %f0
	div.s	%f0 %f1 %f14
	ilw.s	%r0 %f1 l.59
	neg.s	%f14 %f0
	mul.s	%f14 %f0 %f13
	ilw.s	%r0 %f0 l.83
	mul.s	%f14 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f14 %f0 %f0
	mul.s	%f13 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.85
	mul.s	%f14 %f0 %f0
	mul.s	%f13 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f14 %f0 %f15
	mul.s	%f13 %f10 %f0
	add.s	%f0 %f15 %f0
	ilw.s	%r0 %f10 l.87
	mul.s	%f14 %f10 %f10
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f10 l.88
	mul.s	%f14 %f10 %f10
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f14 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.3094
tail_b.3090 :
	div.s	%f13 %f7 %f13
	ilw.s	%r0 %f15 l.58
	ilw.s	%r0 %f14 l.90
	neg.s	%f13 %f0
	mul.s	%f13 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f13 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f13 %f0 %f16
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f16 %f16
	ilw.s	%r0 %f0 l.85
	mul.s	%f13 %f0 %f1
	mul.s	%f10 %f16 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f13 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f13 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f13 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f13 %f0
	add.s	%f0 %f14 %f0
	mul.s	%f15 %f0 %f1
	j	tail_b.3094
branching_b.1948 :
	neg.s	%f13 %f14
	ilw.s	%r0 %f0 l.81
	fbge	%f14 %f0 branching_b.1949
tail_b.3091 :
	ilw.s	%r0 %f13 l.58
	neg.s	%f14 %f0
	mul.s	%f14 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f14 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f14 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f14 %f1 %f1
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f15
	ilw.s	%r0 %f0 l.86
	mul.s	%f14 %f0 %f1
	mul.s	%f10 %f15 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f14 %f1 %f1
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f14 %f1 %f1
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f14 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f13 %f0 %f1
	j	tail_b.3094
branching_b.1949 :
	ilw.s	%r0 %f0 l.82
	fbge	%f14 %f0 tail_b.3093
tail_b.3092 :
	sub.s	%f7 %f14 %f1
	add.s	%f7 %f14 %f0
	div.s	%f0 %f1 %f15
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f14 l.59
	neg.s	%f15 %f0
	mul.s	%f15 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f15 %f0 %f13
	ilw.s	%r0 %f0 l.84
	mul.s	%f15 %f0 %f16
	mul.s	%f10 %f13 %f0
	add.s	%f0 %f16 %f0
	ilw.s	%r0 %f13 l.85
	mul.s	%f15 %f13 %f13
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f13 %f16
	ilw.s	%r0 %f0 l.86
	mul.s	%f15 %f0 %f13
	mul.s	%f10 %f16 %f0
	add.s	%f0 %f13 %f13
	ilw.s	%r0 %f0 l.87
	mul.s	%f15 %f0 %f0
	mul.s	%f10 %f13 %f13
	add.s	%f13 %f0 %f13
	ilw.s	%r0 %f0 l.88
	mul.s	%f15 %f0 %f0
	mul.s	%f10 %f13 %f13
	add.s	%f13 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f15 %f0
	add.s	%f0 %f14 %f0
	mul.s	%f1 %f0 %f1
	j	tail_b.3094
tail_b.3093 :
	div.s	%f14 %f7 %f14
	ilw.s	%r0 %f10 l.90
	neg.s	%f14 %f0
	mul.s	%f14 %f0 %f13
	ilw.s	%r0 %f0 l.83
	mul.s	%f14 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f14 %f1 %f1
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f14 %f1 %f1
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f14 %f0 %f15
	mul.s	%f13 %f1 %f0
	add.s	%f0 %f15 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f14 %f0 %f15
	mul.s	%f13 %f1 %f0
	add.s	%f0 %f15 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f14 %f1 %f1
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f14 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f7 %f0 %f1
tail_b.3094 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.76
	div.s	%f1 %f0 %f0
branching_b.1950 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f10
	lw.s	%r0 %f1 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	fbge	%f12 %f3 tail_b.3097
tail_b.3096 :
	neg.s	%f12 %f0
	j	branching_b.1951
tail_b.3097 :
	mov.s	%f12 %f0
branching_b.1951 :
	fbge	%f0 %f11 tail_b.3099
tail_b.3098 :
	addi	%r0 %r1 1
	j	branching_b.1952
tail_b.3099 :
	addi	%r0 %r1 0
branching_b.1952 :
	beq	%r1 %r5 branching_b.1953
tail_b.3109 :
	ilw.s	%r0 %f0 l.79
	j	branching_b.1959
branching_b.1953 :
	div.s	%f12 %f1 %f0
	fbge	%f0 %f3 tail_b.3101
tail_b.3100 :
	neg.s	%f0 %f12
	j	branching_b.1954
tail_b.3101 :
	mov.s	%f0 %f12
branching_b.1954 :
	fbg	%f3 %f12 branching_b.1957
branching_b.1955 :
	ilw.s	%r0 %f0 l.81
	fbge	%f12 %f0 branching_b.1956
tail_b.3102 :
	neg.s	%f12 %f0
	mul.s	%f12 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f12 %f0 %f11
	ilw.s	%r0 %f0 l.84
	mul.s	%f12 %f0 %f0
	mul.s	%f1 %f11 %f11
	add.s	%f11 %f0 %f11
	ilw.s	%r0 %f0 l.85
	mul.s	%f12 %f0 %f0
	mul.s	%f1 %f11 %f11
	add.s	%f11 %f0 %f0
	ilw.s	%r0 %f11 l.86
	mul.s	%f12 %f11 %f11
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f11 %f11
	ilw.s	%r0 %f0 l.87
	mul.s	%f12 %f0 %f0
	mul.s	%f1 %f11 %f11
	add.s	%f11 %f0 %f11
	ilw.s	%r0 %f0 l.88
	mul.s	%f12 %f0 %f0
	mul.s	%f1 %f11 %f11
	add.s	%f11 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f12 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.3108
branching_b.1956 :
	ilw.s	%r0 %f0 l.82
	fbge	%f12 %f0 tail_b.3104
tail_b.3103 :
	sub.s	%f7 %f12 %f1
	add.s	%f7 %f12 %f0
	div.s	%f0 %f1 %f11
	ilw.s	%r0 %f13 l.59
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f12
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f14
	mul.s	%f12 %f1 %f0
	add.s	%f0 %f14 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f11 %f1 %f1
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f11 %f0 %f14
	mul.s	%f12 %f1 %f0
	add.s	%f0 %f14 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f13 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.3108
tail_b.3104 :
	div.s	%f12 %f7 %f13
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f14 l.90
	neg.s	%f13 %f0
	mul.s	%f13 %f0 %f12
	ilw.s	%r0 %f0 l.83
	mul.s	%f13 %f0 %f15
	ilw.s	%r0 %f0 l.84
	mul.s	%f13 %f0 %f11
	mul.s	%f12 %f15 %f0
	add.s	%f0 %f11 %f11
	ilw.s	%r0 %f0 l.85
	mul.s	%f13 %f0 %f0
	mul.s	%f12 %f11 %f11
	add.s	%f11 %f0 %f11
	ilw.s	%r0 %f0 l.86
	mul.s	%f13 %f0 %f0
	mul.s	%f12 %f11 %f11
	add.s	%f11 %f0 %f0
	ilw.s	%r0 %f11 l.87
	mul.s	%f13 %f11 %f11
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f11 %f11
	ilw.s	%r0 %f0 l.88
	mul.s	%f13 %f0 %f0
	mul.s	%f12 %f11 %f11
	add.s	%f11 %f0 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f13 %f0
	add.s	%f0 %f14 %f0
	mul.s	%f1 %f0 %f1
	j	tail_b.3108
branching_b.1957 :
	neg.s	%f12 %f11
	ilw.s	%r0 %f0 l.81
	fbge	%f11 %f0 branching_b.1958
tail_b.3105 :
	ilw.s	%r0 %f12 l.58
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f14
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f13
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f1
	mul.s	%f14 %f13 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f0
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f11 %f1 %f1
	mul.s	%f14 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f0
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f11 %f1 %f1
	mul.s	%f14 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f14 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f12 %f0 %f1
	j	tail_b.3108
branching_b.1958 :
	ilw.s	%r0 %f0 l.82
	fbge	%f11 %f0 tail_b.3107
tail_b.3106 :
	sub.s	%f7 %f11 %f0
	add.s	%f7 %f11 %f1
	div.s	%f1 %f0 %f1
	ilw.s	%r0 %f12 l.58
	ilw.s	%r0 %f14 l.59
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f13
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f11 l.84
	mul.s	%f1 %f11 %f11
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f11 %f0
	ilw.s	%r0 %f11 l.85
	mul.s	%f1 %f11 %f11
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f11 %f11
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f15
	mul.s	%f13 %f11 %f0
	add.s	%f0 %f15 %f11
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f13 %f11 %f11
	add.s	%f11 %f0 %f11
	ilw.s	%r0 %f0 l.88
	mul.s	%f1 %f0 %f0
	mul.s	%f13 %f11 %f11
	add.s	%f11 %f0 %f0
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f14 %f0
	mul.s	%f12 %f0 %f1
	j	tail_b.3108
tail_b.3107 :
	div.s	%f11 %f7 %f13
	ilw.s	%r0 %f11 l.90
	neg.s	%f13 %f0
	mul.s	%f13 %f0 %f12
	ilw.s	%r0 %f0 l.83
	mul.s	%f13 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f13 %f0 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f13 %f1 %f1
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f14
	ilw.s	%r0 %f0 l.86
	mul.s	%f13 %f0 %f1
	mul.s	%f12 %f14 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f13 %f1 %f1
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f13 %f0 %f14
	mul.s	%f12 %f1 %f0
	add.s	%f0 %f14 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f13 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f7 %f0 %f1
tail_b.3108 :
	ilw.s	%r0 %f0 l.89
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.76
	div.s	%f0 %f1 %f0
branching_b.1959 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f11 l.91
	ilw.s	%r0 %f12 l.62
	sub.s	%f10 %f12 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f11 %f0
	sub.s	%f1 %f12 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	fbge	%f0 %f3 tail_b.3111
tail_b.3110 :
	addi	%r0 %r1 1
	j	branching_b.1960
tail_b.3111 :
	addi	%r0 %r1 0
branching_b.1960 :
	beq	%r1 %r5 tail_b.3112
tail_b.3113 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.3114
tail_b.3112 :
	mov.s	%f0 %f1
tail_b.3114 :
	ilw.s	%r0 %f0 l.52
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.92
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1961 :
	mul	%r15 %r2 %r7
	lw	%r0 %r1 544
	add	%r7 %r1 %r7
	slli	%r12 %r1 2
	add	%r10 %r1 %r1
	sw	%r1 %r7 0
	lw	%r8 %r7 4
	slli	%r12 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f0 552
	mov	%r1 %r7
	sw.s	%r7 %f0 0
	lw.s	%r0 %f0 556
	addi	%r1 %r7 4
	sw.s	%r7 %f0 0
	lw.s	%r0 %f0 560
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	lw	%r8 %r15 12
	lw	%r13 %r1 28
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.62
	fbge	%f0 %f1 tail_b.3117
tail_b.3116 :
	addi	%r0 %r1 1
	j	branching_b.1962
tail_b.3117 :
	addi	%r0 %r1 0
branching_b.1962 :
	beq	%r1 %r5 tail_b.3118
tail_b.3119 :
	addi	%r0 %r1 0
	slli	%r12 %r7 2
	add	%r15 %r7 %r7
	sw	%r7 %r1 0
	j	branching_b.1963
tail_b.3118 :
	addi	%r0 %r1 1
	slli	%r12 %r7 2
	add	%r15 %r7 %r7
	sw	%r7 %r1 0
	lw	%r8 %r7 16
	slli	%r12 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r15 0
	lw.s	%r0 %f0 580
	mov	%r15 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 584
	addi	%r15 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 588
	addi	%r15 %r1 8
	sw.s	%r1 %f0 0
	slli	%r12 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r7 0
	ilw.s	%r0 %f0 l.78
	mul.s	%f9 %f0 %f1
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	mov	%r7 %r1
	sw.s	%r1 %f0 0
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	addi	%r7 %r1 4
	sw.s	%r1 %f0 0
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	addi	%r7 %r1 8
	sw.s	%r1 %f0 0
	lw	%r8 %r1 28
	slli	%r12 %r7 2
	add	%r1 %r7 %r1
	lw	%r1 %r7 0
	lw.s	%r0 %f0 568
	mov	%r7 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 572
	addi	%r7 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 576
	addi	%r7 %r1 8
	sw.s	%r1 %f0 0
branching_b.1963 :
	ilw.s	%r0 %f10 l.80
	lw.s	%r0 %f1 696
	lw.s	%r0 %f0 568
	mul.s	%f0 %f1 %f0
	lw.s	%r0 %f11 700
	lw.s	%r0 %f1 572
	mul.s	%f1 %f11 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f0 704
	lw.s	%r0 %f11 576
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f0 %f10 %f10
	lw.s	%r0 %f1 696
	lw.s	%r0 %f0 568
	mul.s	%f0 %f10 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 696
	lw.s	%r0 %f0 700
	lw.s	%r0 %f1 572
	mul.s	%f1 %f10 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 700
	lw.s	%r0 %f1 704
	lw.s	%r0 %f0 576
	mul.s	%f0 %f10 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 704
	lw	%r13 %r1 28
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f12
	addi	%r0 %r7 0
	lw	%r0 %r1 536
	sw.s	%r26 %f12 -80
	sw.s	%r26 %f9 -76
	sw	%r26 %r9 -72
	sw	%r26 %r13 -68
	sw	%r26 %r10 -64
	sw	%r26 %r2 -60
	sw	%r26 %r14 -56
	sw.s	%r26 %f2 -52
	sw.s	%r26 %f8 -48
	sw	%r26 %r12 -44
	sw	%r26 %r8 -40
	sw.s	%r26 %f7 -36
	sw.s	%r26 %f3 -32
	sw	%r26 %r5 -28
	sw	%r26 %r11 -24
	sw	%r26 %r3 -20
	sw	%r26 %r4 -16
	sw.s	%r26 %f6 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f5 -4
	sw	%r26 %r6 0
	mov	%r1 %r2
	mov	%r7 %r1
	sw	%r26 %r28 -84
	addi	%r26 %r26 -88
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 88
	lw	%r26 %r28 -84
	lw.s	%r26 %f12 -80
	lw.s	%r26 %f9 -76
	lw	%r26 %r9 -72
	lw	%r26 %r13 -68
	lw	%r26 %r10 -64
	lw	%r26 %r2 -60
	lw	%r26 %r14 -56
	lw.s	%r26 %f2 -52
	lw.s	%r26 %f8 -48
	lw	%r26 %r12 -44
	lw	%r26 %r8 -40
	lw.s	%r26 %f7 -36
	lw.s	%r26 %f3 -32
	lw	%r26 %r5 -28
	lw	%r26 %r11 -24
	lw	%r26 %r3 -20
	lw	%r26 %r4 -16
	lw.s	%r26 %f6 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f5 -4
	lw	%r26 %r6 0
	beq	%r1 %r5 branching_b.1964
tail_b.3128 :
	j	branching_b.1968
branching_b.1964 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f10
	lw.s	%r0 %f0 572
	lw.s	%r0 %f1 316
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f10 %f10
	lw.s	%r0 %f1 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f10 %f0
	neg.s	%f0 %f0
	mul.s	%f9 %f0 %f10
	lw.s	%r0 %f1 696
	lw.s	%r0 %f0 312
	mul.s	%f0 %f1 %f11
	lw.s	%r0 %f0 700
	lw.s	%r0 %f1 316
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f11 %f11
	lw.s	%r0 %f1 704
	lw.s	%r0 %f0 320
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f11 %f0
	neg.s	%f0 %f11
	fbge	%f3 %f10 tail_b.3121
tail_b.3120 :
	addi	%r0 %r1 1
	j	branching_b.1965
tail_b.3121 :
	addi	%r0 %r1 0
branching_b.1965 :
	beq	%r1 %r5 tail_b.3122
tail_b.3123 :
	lw.s	%r0 %f0 604
	lw.s	%r0 %f1 580
	mul.s	%f1 %f10 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f1 608
	lw.s	%r0 %f0 584
	mul.s	%f0 %f10 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	lw.s	%r0 %f1 588
	mul.s	%f1 %f10 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
	j	branching_b.1966
tail_b.3122 :
branching_b.1966 :
	fbge	%f3 %f11 tail_b.3125
tail_b.3124 :
	addi	%r0 %r1 1
	j	branching_b.1967
tail_b.3125 :
	addi	%r0 %r1 0
branching_b.1967 :
	beq	%r1 %r5 tail_b.3126
tail_b.3127 :
	mul.s	%f11 %f11 %f0
	mul.s	%f0 %f0 %f0
	mul.s	%f12 %f0 %f1
	lw.s	%r0 %f0 604
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
	j	branching_b.1968
tail_b.3126 :
branching_b.1968 :
	lw.s	%r0 %f0 552
	sw.s	%r0 %f0 648
	lw.s	%r0 %f0 556
	sw.s	%r0 %f0 652
	lw.s	%r0 %f0 560
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw.s	%r26 %f12 -76
	sw.s	%r26 %f9 -72
	sw	%r26 %r9 -68
	sw	%r26 %r13 -64
	sw	%r26 %r10 -60
	sw	%r26 %r2 -56
	sw.s	%r26 %f2 -52
	sw.s	%r26 %f8 -48
	sw	%r26 %r12 -44
	sw	%r26 %r8 -40
	sw.s	%r26 %f7 -36
	sw.s	%r26 %f3 -32
	sw	%r26 %r5 -28
	sw	%r26 %r11 -24
	sw	%r26 %r3 -20
	sw	%r26 %r4 -16
	sw.s	%r26 %f6 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f5 -4
	sw	%r26 %r6 0
	mov	%r1 %r2
	mov	%r14 %r1
	sw	%r26 %r28 -80
	addi	%r26 %r26 -84
	jal	setup_startp_constants.0
	addi	%r26 %r26 84
	lw	%r26 %r28 -80
	lw.s	%r26 %f12 -76
	lw.s	%r26 %f9 -72
	lw	%r26 %r9 -68
	lw	%r26 %r13 -64
	lw	%r26 %r10 -60
	lw	%r26 %r2 -56
	lw.s	%r26 %f2 -52
	lw.s	%r26 %f8 -48
	lw	%r26 %r12 -44
	lw	%r26 %r8 -40
	lw.s	%r26 %f7 -36
	lw.s	%r26 %f3 -32
	lw	%r26 %r5 -28
	lw	%r26 %r11 -24
	lw	%r26 %r3 -20
	lw	%r26 %r4 -16
	lw.s	%r26 %f6 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f5 -4
	lw	%r26 %r6 0
	lw	%r0 %r1 1736
	addi	%r1 %r1 -1
	sw	%r26 %r9 -68
	sw	%r26 %r13 -64
	sw	%r26 %r10 -60
	sw	%r26 %r2 -56
	sw.s	%r26 %f2 -52
	sw.s	%r26 %f8 -48
	sw	%r26 %r12 -44
	sw	%r26 %r8 -40
	sw.s	%r26 %f7 -36
	sw.s	%r26 %f3 -32
	sw	%r26 %r5 -28
	sw	%r26 %r11 -24
	sw	%r26 %r3 -20
	sw	%r26 %r4 -16
	sw.s	%r26 %f6 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f5 -4
	sw	%r26 %r6 0
	mov	%r11 %r2
	mov.s	%f12 %f1
	mov.s	%f9 %f0
	sw	%r26 %r28 -72
	addi	%r26 %r26 -76
	jal	trace_reflections.0
	addi	%r26 %r26 76
	lw	%r26 %r28 -72
	lw	%r26 %r9 -68
	lw	%r26 %r13 -64
	lw	%r26 %r10 -60
	lw	%r26 %r2 -56
	lw.s	%r26 %f2 -52
	lw.s	%r26 %f8 -48
	lw	%r26 %r12 -44
	lw	%r26 %r8 -40
	lw.s	%r26 %f7 -36
	lw.s	%r26 %f3 -32
	lw	%r26 %r5 -28
	lw	%r26 %r11 -24
	lw	%r26 %r3 -20
	lw	%r26 %r4 -16
	lw.s	%r26 %f6 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f5 -4
	lw	%r26 %r6 0
	ilw.s	%r0 %f0 l.93
	fbge	%f0 %f8 tail_b.3130
tail_b.3129 :
	addi	%r0 %r1 1
	j	branching_b.1969
tail_b.3130 :
	addi	%r0 %r1 0
branching_b.1969 :
	beq	%r1 %r5 tail_b.3131
branching_b.1970 :
	bl	%r12 %r2 tail_b.3132
tail_b.3133 :
	j	branching_b.1971
tail_b.3132 :
	addi	%r12 %r1 1
	addi	%r0 %r2 -1
	slli	%r1 %r1 2
	add	%r10 %r1 %r1
	sw	%r1 %r2 0
	j	branching_b.1971
tail_b.3131 :
	j	postloop_b.69
branching_b.1971 :
	addi	%r0 %r1 2
	beq	%r9 %r1 tail_b.3134
tail_b.3135 :
	j	postloop_b.69
tail_b.3134 :
	lw	%r13 %r1 28
	lw.s	%r1 %f0 0
	sub.s	%f0 %f7 %f0
	mul.s	%f0 %f8 %f1
	addi	%r12 %r1 1
	lw.s	%r0 %f0 548
	add.s	%f0 %f2 %f0
	mov	%r1 %r12
	mov.s	%f1 %f8
	mov.s	%f0 %f2
	j	trace_ray_loop.1
branching_b.1929 :
	lw	%r13 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f3 tail_b.3066
tail_b.3065 :
	addi	%r0 %r16 1
	j	branching_b.1930
tail_b.3066 :
	addi	%r0 %r16 0
branching_b.1930 :
	beq	%r16 %r5 branching_b.1931
tail_b.3069 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.3070
branching_b.1931 :
	beq	%r1 %r5 tail_b.3067
tail_b.3068 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f1
	j	tail_b.3070
tail_b.3067 :
	div.s	%f1 %f7 %f1
tail_b.3070 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1932
postloop_b.69 :
preloop_b.71 :
	slli	%r4 %r1 2
	add	%r6 %r1 %r1
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
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	sw	%r1 %r3 0
	slli	%r4 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r9 0
	mov	%r5 %r10
pretrace_diffuse_rays_loop.1 :
	addi	%r0 %r1 4
	ble	%r10 %r1 branching_b.1973
tail_b.3141 :
	j	postloop_b.70
branching_b.1973 :
	lw	%r9 %r1 8
	slli	%r10 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r1 0
	ble	%r5 %r1 branching_b.1974
tail_b.3140 :
	j	postloop_b.70
branching_b.1974 :
	lw	%r9 %r1 12
	slli	%r10 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r1 0
	beq	%r1 %r5 tail_b.3137
tail_b.3138 :
	lw	%r9 %r1 24
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 592
	sw.s	%r0 %f0 596
	sw.s	%r0 %f0 600
	lw	%r9 %r2 28
	lw	%r9 %r8 4
	slli	%r1 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r1 0
	slli	%r10 %r7 2
	add	%r2 %r7 %r2
	lw	%r2 %r7 0
	slli	%r10 %r2 2
	add	%r8 %r2 %r2
	lw	%r2 %r8 0
	mov	%r8 %r2
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 648
	addi	%r8 %r2 4
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 652
	addi	%r8 %r2 8
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r2 0
	addi	%r2 %r2 -1
	sw	%r26 %r8 -44
	sw	%r26 %r7 -40
	sw	%r26 %r1 -36
	sw	%r26 %r10 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r3 -20
	sw	%r26 %r4 -16
	sw.s	%r26 %f6 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f5 -4
	sw	%r26 %r6 0
	mov	%r8 %r1
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	setup_startp_constants.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	mov	%r1 %r2
	lw	%r26 %r8 -44
	lw	%r26 %r7 -40
	lw	%r26 %r1 -36
	lw	%r26 %r10 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r3 -20
	lw	%r26 %r4 -16
	lw.s	%r26 %f6 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f5 -4
	lw	%r26 %r6 0
	addi	%r0 %r2 118
	sw	%r26 %r10 -32
	sw	%r26 %r9 -28
	sw	%r26 %r5 -24
	sw	%r26 %r3 -20
	sw	%r26 %r4 -16
	sw.s	%r26 %f6 -12
	sw.s	%r26 %f4 -8
	sw.s	%r26 %f5 -4
	sw	%r26 %r6 0
	mov	%r2 %r4
	mov	%r8 %r3
	mov	%r7 %r2
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r10 -32
	lw	%r26 %r9 -28
	lw	%r26 %r5 -24
	lw	%r26 %r3 -20
	lw	%r26 %r4 -16
	lw.s	%r26 %f6 -12
	lw.s	%r26 %f4 -8
	lw.s	%r26 %f5 -4
	lw	%r26 %r6 0
	lw	%r9 %r1 20
	slli	%r10 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f0 592
	mov	%r1 %r2
	sw.s	%r2 %f0 0
	lw.s	%r0 %f0 596
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	lw.s	%r0 %f0 600
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	j	tail_b.3139
tail_b.3137 :
tail_b.3139 :
	addi	%r10 %r1 1
	mov	%r1 %r10
	j	pretrace_diffuse_rays_loop.1
postloop_b.70 :
branching_b.1975 :
	addi	%r4 %r4 -1
	addi	%r3 %r1 1
	addi	%r0 %r2 5
	ble	%r2 %r1 tail_b.3142
tail_b.3143 :
	j	tail_b.3144
tail_b.3142 :
	addi	%r1 %r1 -5
tail_b.3144 :
	mov	%r1 %r3
	j	pretrace_pixels_loop.0
postloop_b.71 :
return_point.24 :
	retl
scan_pixel.0 :
	mov	%r5 %r6
	mov	%r3 %r7
	mov	%r4 %r5
	mov	%r2 %r4
preloop_b.72 :
	mov	%r1 %r8
scan_pixel_loop.0 :
	lw	%r0 %r1 616
	bl	%r8 %r1 branching_b.1977
tail_b.3196 :
	j	postloop_b.74
branching_b.1977 :
	slli	%r8 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 604
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 608
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 612
	addi	%r4 %r2 1
	lw	%r0 %r1 620
	bl	%r2 %r1 branching_b.1978
tail_b.3150 :
	addi	%r0 %r1 0
	j	branching_b.1981
branching_b.1978 :
	addi	%r0 %r3 0
	bl	%r3 %r4 branching_b.1979
tail_b.3149 :
	addi	%r0 %r1 0
	j	branching_b.1981
branching_b.1979 :
	addi	%r8 %r1 1
	lw	%r0 %r2 616
	bl	%r1 %r2 branching_b.1980
tail_b.3148 :
	addi	%r0 %r1 0
	j	branching_b.1981
branching_b.1980 :
	bl	%r3 %r8 tail_b.3146
tail_b.3147 :
	addi	%r0 %r1 0
	j	branching_b.1981
tail_b.3146 :
	addi	%r0 %r1 1
branching_b.1981 :
	addi	%r0 %r9 0
	beq	%r1 %r9 preloop_b.73
preloop_b.74 :
	mov	%r9 %r3
try_exploit_neighbors_loop.1 :
	slli	%r8 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r10 0
	addi	%r0 %r1 4
	ble	%r3 %r1 branching_b.1991
tail_b.3176 :
	j	postloop_b.73
branching_b.1991 :
	lw	%r10 %r1 8
	slli	%r3 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r1 0
	ble	%r9 %r1 branching_b.1992
tail_b.3175 :
	j	postloop_b.73
branching_b.1992 :
	slli	%r8 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 8
	slli	%r3 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	slli	%r8 %r2 2
	add	%r7 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r11 8
	slli	%r3 %r2 2
	add	%r11 %r2 %r2
	lw	%r2 %r2 0
	beq	%r2 %r1 branching_b.1993
tail_b.3170 :
	addi	%r0 %r1 0
	j	branching_b.1996
branching_b.1993 :
	slli	%r8 %r2 2
	add	%r6 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r11 8
	slli	%r3 %r2 2
	add	%r11 %r2 %r2
	lw	%r2 %r2 0
	beq	%r2 %r1 branching_b.1994
tail_b.3169 :
	addi	%r0 %r1 0
	j	branching_b.1996
branching_b.1994 :
	addi	%r8 %r2 -1
	slli	%r2 %r2 2
	add	%r5 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r11 8
	slli	%r3 %r2 2
	add	%r11 %r2 %r2
	lw	%r2 %r2 0
	beq	%r2 %r1 branching_b.1995
tail_b.3168 :
	addi	%r0 %r1 0
	j	branching_b.1996
branching_b.1995 :
	addi	%r8 %r2 1
	slli	%r2 %r2 2
	add	%r5 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 8
	slli	%r3 %r11 2
	add	%r2 %r11 %r2
	lw	%r2 %r2 0
	beq	%r2 %r1 tail_b.3166
tail_b.3167 :
	addi	%r0 %r1 0
	j	branching_b.1996
tail_b.3166 :
	addi	%r0 %r1 1
	j	branching_b.1996
preloop_b.73 :
	slli	%r8 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r12 0
	mov	%r9 %r11
do_without_neighbors_loop.1 :
	addi	%r0 %r13 4
	ble	%r11 %r13 branching_b.1983
tail_b.3165 :
	j	postloop_b.72
branching_b.1983 :
	lw	%r12 %r2 8
	slli	%r11 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	ble	%r9 %r1 branching_b.1984
tail_b.3164 :
	j	postloop_b.72
branching_b.1984 :
	lw	%r12 %r2 12
	slli	%r11 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r9 tail_b.3151
branching_b.1985 :
	lw	%r12 %r2 20
	lw	%r12 %r3 28
	lw	%r12 %r15 4
	lw	%r12 %r10 16
	slli	%r11 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 592
	addi	%r1 %r2 4
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 596
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 600
	lw	%r12 %r1 24
	lw	%r1 %r14 0
	slli	%r11 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r2 0
	slli	%r11 %r1 2
	add	%r15 %r1 %r1
	lw	%r1 %r15 0
	bne	%r14 %r9 tail_b.3152
tail_b.3153 :
	j	branching_b.1986
tail_b.3152 :
	lw	%r0 %r3 716
	mov	%r15 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r15 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r15 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r3 -52
	sw	%r26 %r15 -48
	sw	%r26 %r2 -44
	sw	%r26 %r14 -40
	sw	%r26 %r10 -36
	sw	%r26 %r13 -32
	sw	%r26 %r11 -28
	sw	%r26 %r12 -24
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r5 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r1 %r2
	mov	%r15 %r1
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	setup_startp_constants.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r3 -52
	lw	%r26 %r15 -48
	lw	%r26 %r2 -44
	lw	%r26 %r14 -40
	lw	%r26 %r10 -36
	lw	%r26 %r13 -32
	lw	%r26 %r11 -28
	lw	%r26 %r12 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r5 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
	addi	%r0 %r1 118
	sw	%r26 %r15 -48
	sw	%r26 %r2 -44
	sw	%r26 %r14 -40
	sw	%r26 %r10 -36
	sw	%r26 %r13 -32
	sw	%r26 %r11 -28
	sw	%r26 %r12 -24
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r5 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r1 %r4
	mov	%r3 %r1
	mov	%r15 %r3
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw	%r26 %r15 -48
	lw	%r26 %r2 -44
	lw	%r26 %r14 -40
	lw	%r26 %r10 -36
	lw	%r26 %r13 -32
	lw	%r26 %r11 -28
	lw	%r26 %r12 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r5 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
	j	branching_b.1986
tail_b.3151 :
tail_b.3163 :
	addi	%r11 %r1 1
	mov	%r1 %r11
	j	do_without_neighbors_loop.1
branching_b.1986 :
	addi	%r0 %r1 1
	bne	%r14 %r1 tail_b.3154
tail_b.3155 :
	j	branching_b.1987
tail_b.3154 :
	lw	%r0 %r1 720
	mov	%r15 %r3
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 648
	addi	%r15 %r3 4
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 652
	addi	%r15 %r3 8
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r3 0
	addi	%r3 %r3 -1
	sw	%r26 %r1 -52
	sw	%r26 %r15 -48
	sw	%r26 %r2 -44
	sw	%r26 %r14 -40
	sw	%r26 %r10 -36
	sw	%r26 %r13 -32
	sw	%r26 %r11 -28
	sw	%r26 %r12 -24
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r5 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r3 %r2
	mov	%r15 %r1
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	setup_startp_constants.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	mov	%r1 %r3
	lw	%r26 %r1 -52
	lw	%r26 %r15 -48
	lw	%r26 %r2 -44
	lw	%r26 %r14 -40
	lw	%r26 %r10 -36
	lw	%r26 %r13 -32
	lw	%r26 %r11 -28
	lw	%r26 %r12 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r5 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
	addi	%r0 %r3 118
	sw	%r26 %r15 -48
	sw	%r26 %r2 -44
	sw	%r26 %r14 -40
	sw	%r26 %r10 -36
	sw	%r26 %r13 -32
	sw	%r26 %r11 -28
	sw	%r26 %r12 -24
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r5 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r3 %r4
	mov	%r15 %r3
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw	%r26 %r15 -48
	lw	%r26 %r2 -44
	lw	%r26 %r14 -40
	lw	%r26 %r10 -36
	lw	%r26 %r13 -32
	lw	%r26 %r11 -28
	lw	%r26 %r12 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r5 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
branching_b.1987 :
	addi	%r0 %r1 2
	bne	%r14 %r1 tail_b.3156
tail_b.3157 :
	j	branching_b.1988
tail_b.3156 :
	lw	%r0 %r3 724
	mov	%r15 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r15 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r15 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r3 -52
	sw	%r26 %r15 -48
	sw	%r26 %r2 -44
	sw	%r26 %r14 -40
	sw	%r26 %r10 -36
	sw	%r26 %r13 -32
	sw	%r26 %r11 -28
	sw	%r26 %r12 -24
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r5 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r1 %r2
	mov	%r15 %r1
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	setup_startp_constants.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r3 -52
	lw	%r26 %r15 -48
	lw	%r26 %r2 -44
	lw	%r26 %r14 -40
	lw	%r26 %r10 -36
	lw	%r26 %r13 -32
	lw	%r26 %r11 -28
	lw	%r26 %r12 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r5 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
	addi	%r0 %r1 118
	sw	%r26 %r15 -48
	sw	%r26 %r2 -44
	sw	%r26 %r14 -40
	sw	%r26 %r10 -36
	sw	%r26 %r13 -32
	sw	%r26 %r11 -28
	sw	%r26 %r12 -24
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r5 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r1 %r4
	mov	%r3 %r1
	mov	%r15 %r3
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw	%r26 %r15 -48
	lw	%r26 %r2 -44
	lw	%r26 %r14 -40
	lw	%r26 %r10 -36
	lw	%r26 %r13 -32
	lw	%r26 %r11 -28
	lw	%r26 %r12 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r5 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
branching_b.1988 :
	addi	%r0 %r1 3
	bne	%r14 %r1 tail_b.3158
tail_b.3159 :
	j	branching_b.1989
tail_b.3158 :
	lw	%r0 %r3 728
	mov	%r15 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r15 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r15 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r3 -52
	sw	%r26 %r15 -48
	sw	%r26 %r2 -44
	sw	%r26 %r14 -40
	sw	%r26 %r10 -36
	sw	%r26 %r13 -32
	sw	%r26 %r11 -28
	sw	%r26 %r12 -24
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r5 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r1 %r2
	mov	%r15 %r1
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	setup_startp_constants.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw	%r26 %r3 -52
	lw	%r26 %r15 -48
	lw	%r26 %r2 -44
	lw	%r26 %r14 -40
	lw	%r26 %r10 -36
	lw	%r26 %r13 -32
	lw	%r26 %r11 -28
	lw	%r26 %r12 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r5 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
	addi	%r0 %r1 118
	sw	%r26 %r15 -48
	sw	%r26 %r2 -44
	sw	%r26 %r14 -40
	sw	%r26 %r10 -36
	sw	%r26 %r13 -32
	sw	%r26 %r11 -28
	sw	%r26 %r12 -24
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r5 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r1 %r4
	mov	%r3 %r1
	mov	%r15 %r3
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw	%r26 %r15 -48
	lw	%r26 %r2 -44
	lw	%r26 %r14 -40
	lw	%r26 %r10 -36
	lw	%r26 %r13 -32
	lw	%r26 %r11 -28
	lw	%r26 %r12 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r5 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
branching_b.1989 :
	bne	%r14 %r13 tail_b.3160
tail_b.3161 :
	j	tail_b.3162
tail_b.3160 :
	lw	%r0 %r3 732
	mov	%r15 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r15 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r15 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	sw	%r26 %r3 -44
	sw	%r26 %r15 -40
	sw	%r26 %r2 -36
	sw	%r26 %r10 -32
	sw	%r26 %r11 -28
	sw	%r26 %r12 -24
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r5 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r1 %r2
	mov	%r15 %r1
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	setup_startp_constants.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw	%r26 %r3 -44
	lw	%r26 %r15 -40
	lw	%r26 %r2 -36
	lw	%r26 %r10 -32
	lw	%r26 %r11 -28
	lw	%r26 %r12 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r5 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
	addi	%r0 %r1 118
	sw	%r26 %r10 -32
	sw	%r26 %r11 -28
	sw	%r26 %r12 -24
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r5 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r1 %r4
	mov	%r3 %r1
	mov	%r15 %r3
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r10 -32
	lw	%r26 %r11 -28
	lw	%r26 %r12 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r5 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
tail_b.3162 :
	slli	%r11 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f1 604
	mov	%r2 %r1
	lw.s	%r1 %f2 0
	lw.s	%r0 %f0 592
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f1 608
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	lw.s	%r0 %f2 596
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f1 612
	addi	%r2 %r1 8
	lw.s	%r1 %f2 0
	lw.s	%r0 %f0 600
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 612
	j	tail_b.3163
postloop_b.72 :
branching_b.1998 :
	lw.s	%r0 %f0 604
	mfc1	%r1 %f0
	addi	%r0 %r2 255
	bl	%r2 %r1 tail_b.3177
branching_b.1999 :
	bl	%r1 %r9 tail_b.3178
tail_b.3179 :
	mov	%r1 %r13
	j	branching_b.2000
tail_b.3178 :
	addi	%r0 %r13 0
	j	branching_b.2000
tail_b.3177 :
	addi	%r0 %r13 255
branching_b.2000 :
	addi	%r13 %r1 1
	addi	%r0 %r12 655
	mul	%r1 %r12 %r1
	slli	%r1 %r1 -16
	addi	%r0 %r11 100
	mul	%r1 %r11 %r3
	sub	%r13 %r3 %r3
	addi	%r3 %r3 1
	addi	%r0 %r10 6553
	mul	%r3 %r10 %r3
	slli	%r3 %r14 -16
	mul	%r1 %r11 %r3
	sub	%r13 %r3 %r13
	addi	%r0 %r3 10
	mul	%r14 %r3 %r15
	sub	%r13 %r15 %r13
	bl	%r9 %r1 tail_b.3180
branching_b.2001 :
	bl	%r9 %r14 tail_b.3181
tail_b.3182 :
	addi	%r13 %r1 48
	out	%r1
	j	branching_b.2002
tail_b.3181 :
	addi	%r14 %r1 48
	out	%r1
	addi	%r13 %r1 48
	out	%r1
	j	branching_b.2002
tail_b.3180 :
	addi	%r1 %r1 48
	out	%r1
	addi	%r14 %r1 48
	out	%r1
	addi	%r13 %r1 48
	out	%r1
branching_b.2002 :
	addi	%r0 %r1 32
	out	%r1
	lw.s	%r0 %f0 608
	mfc1	%r1 %f0
	bl	%r2 %r1 tail_b.3183
branching_b.2003 :
	bl	%r1 %r9 tail_b.3184
tail_b.3185 :
	mov	%r1 %r14
	j	branching_b.2004
tail_b.3184 :
	addi	%r0 %r14 0
	j	branching_b.2004
tail_b.3183 :
	addi	%r0 %r14 255
branching_b.2004 :
	addi	%r14 %r1 1
	mul	%r1 %r12 %r1
	slli	%r1 %r13 -16
	mul	%r13 %r11 %r1
	sub	%r14 %r1 %r1
	addi	%r1 %r1 1
	mul	%r1 %r10 %r1
	slli	%r1 %r15 -16
	mul	%r13 %r11 %r1
	sub	%r14 %r1 %r1
	mul	%r15 %r3 %r14
	sub	%r1 %r14 %r14
	bl	%r9 %r13 tail_b.3186
branching_b.2005 :
	bl	%r9 %r15 tail_b.3187
tail_b.3188 :
	addi	%r14 %r1 48
	out	%r1
	j	branching_b.2006
tail_b.3187 :
	addi	%r15 %r1 48
	out	%r1
	addi	%r14 %r1 48
	out	%r1
	j	branching_b.2006
tail_b.3186 :
	addi	%r13 %r1 48
	out	%r1
	addi	%r15 %r1 48
	out	%r1
	addi	%r14 %r1 48
	out	%r1
branching_b.2006 :
	addi	%r0 %r1 32
	out	%r1
	lw.s	%r0 %f0 612
	mfc1	%r1 %f0
	bl	%r2 %r1 tail_b.3189
branching_b.2007 :
	bl	%r1 %r9 tail_b.3190
tail_b.3191 :
	mov	%r1 %r2
	j	branching_b.2008
tail_b.3190 :
	addi	%r0 %r2 0
	j	branching_b.2008
tail_b.3189 :
	addi	%r0 %r2 255
branching_b.2008 :
	addi	%r2 %r1 1
	mul	%r1 %r12 %r1
	slli	%r1 %r12 -16
	mul	%r12 %r11 %r1
	sub	%r2 %r1 %r1
	addi	%r1 %r1 1
	mul	%r1 %r10 %r1
	slli	%r1 %r10 -16
	mul	%r12 %r11 %r1
	sub	%r2 %r1 %r2
	mul	%r10 %r3 %r1
	sub	%r2 %r1 %r2
	bl	%r9 %r12 tail_b.3192
branching_b.2009 :
	bl	%r9 %r10 tail_b.3193
tail_b.3194 :
	addi	%r2 %r1 48
	out	%r1
	j	tail_b.3195
tail_b.3193 :
	addi	%r10 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	tail_b.3195
tail_b.3192 :
	addi	%r12 %r1 48
	out	%r1
	addi	%r10 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
tail_b.3195 :
	addi	%r0 %r1 10
	out	%r1
	addi	%r8 %r1 1
	mov	%r1 %r8
	j	scan_pixel_loop.0
branching_b.1996 :
	beq	%r1 %r9 tail_b.3171
branching_b.1997 :
	lw	%r10 %r2 12
	slli	%r3 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r9 tail_b.3172
tail_b.3173 :
	slli	%r8 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 20
	addi	%r8 %r1 -1
	slli	%r1 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r13 20
	slli	%r8 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r12 20
	addi	%r8 %r1 1
	slli	%r1 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r10 20
	slli	%r8 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r11 20
	slli	%r3 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r2 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 592
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 596
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 600
	slli	%r3 %r1 2
	add	%r13 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f1 592
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f0 600
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	slli	%r3 %r1 2
	add	%r12 %r1 %r1
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
	slli	%r3 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f1 592
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	slli	%r3 %r1 2
	add	%r11 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f1 592
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	slli	%r8 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 16
	slli	%r3 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f1 604
	mov	%r2 %r1
	lw.s	%r1 %f2 0
	lw.s	%r0 %f0 592
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	addi	%r2 %r1 4
	lw.s	%r1 %f2 0
	lw.s	%r0 %f1 596
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f1 612
	addi	%r2 %r1 8
	lw.s	%r1 %f2 0
	lw.s	%r0 %f0 600
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 612
	j	tail_b.3174
tail_b.3172 :
	j	tail_b.3174
tail_b.3171 :
	slli	%r8 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r6 -12
	sw	%r26 %r5 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r3 %r2
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	do_without_neighbors.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r6 -12
	lw	%r26 %r5 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
	j	postloop_b.73
tail_b.3174 :
	addi	%r3 %r1 1
	mov	%r1 %r3
	j	try_exploit_neighbors_loop.1
postloop_b.73 :
	j	branching_b.1998
postloop_b.74 :
return_point.25 :
	retl
scan_line.0 :
	mov	%r5 %r8
	mov	%r1 %r31
	mov	%r4 %r1
	mov	%r31 %r4
preloop_b.75 :
	mov	%r2 %r7
	mov	%r3 %r6
	mov	%r1 %r5
scan_line_loop.0 :
	lw	%r0 %r1 620
	bl	%r4 %r1 branching_b.2011
tail_b.3236 :
	j	postloop_b.77
branching_b.2011 :
	lw	%r0 %r1 620
	addi	%r1 %r1 -1
	bl	%r4 %r1 preloop_b.76
tail_b.3205 :
	j	preloop_b.77
preloop_b.76 :
	addi	%r4 %r1 1
	lw.s	%r0 %f0 632
	lw	%r0 %r2 628
	sub	%r1 %r2 %r1
	mtc1	%r1 %f1
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 672
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f0 684
	add.s	%f0 %f2 %f4
	lw.s	%r0 %f0 676
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f0 688
	add.s	%f0 %f2 %f3
	lw.s	%r0 %f0 680
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 692
	add.s	%f0 %f1 %f2
	lw	%r0 %r1 616
	addi	%r1 %r1 -1
	mov	%r1 %r10
	mov	%r8 %r9
pretrace_pixels_loop.2 :
	addi	%r0 %r11 696
	addi	%r0 %r2 0
	ble	%r2 %r10 branching_b.2013
tail_b.3204 :
	j	postloop_b.75
branching_b.2013 :
	lw.s	%r0 %f1 632
	lw	%r0 %r1 624
	sub	%r10 %r1 %r1
	mtc1	%r1 %f0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 660
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	sw.s	%r0 %f0 696
	lw.s	%r0 %f0 664
	mul.s	%f0 %f1 %f0
	add.s	%f3 %f0 %f0
	sw.s	%r0 %f0 700
	lw.s	%r0 %f0 668
	mul.s	%f0 %f1 %f0
	add.s	%f2 %f0 %f0
	sw.s	%r0 %f0 704
	lw.s	%r0 %f0 696
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 700
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	lw.s	%r0 %f1 704
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.51
	fbne	%f1 %f0 tail_b.3198
tail_b.3197 :
	addi	%r0 %r1 1
	j	branching_b.2014
tail_b.3198 :
	addi	%r0 %r1 0
branching_b.2014 :
	beq	%r1 %r2 tail_b.3199
tail_b.3200 :
	ilw.s	%r0 %f1 l.56
	j	branching_b.2015
tail_b.3199 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f1
branching_b.2015 :
	lw.s	%r0 %f0 696
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 696
	lw.s	%r0 %f0 700
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 700
	lw.s	%r0 %f0 704
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 704
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 604
	sw.s	%r0 %f0 608
	sw.s	%r0 %f0 612
	lw.s	%r0 %f0 300
	sw.s	%r0 %f0 636
	lw.s	%r0 %f0 304
	sw.s	%r0 %f0 640
	lw.s	%r0 %f0 308
	sw.s	%r0 %f0 644
	addi	%r0 %r2 0
	ilw.s	%r0 %f0 l.56
	slli	%r10 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r3 0
	ilw.s	%r0 %f1 l.51
	sw	%r26 %r9 -36
	sw	%r26 %r10 -32
	sw.s	%r26 %f2 -28
	sw.s	%r26 %f3 -24
	sw.s	%r26 %f4 -20
	sw	%r26 %r8 -16
	sw	%r26 %r5 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r2 %r1
	mov	%r11 %r2
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	trace_ray.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r9 -36
	lw	%r26 %r10 -32
	lw.s	%r26 %f2 -28
	lw.s	%r26 %f3 -24
	lw.s	%r26 %f4 -20
	lw	%r26 %r8 -16
	lw	%r26 %r5 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
	slli	%r10 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	lw.s	%r0 %f0 604
	mov	%r1 %r2
	sw.s	%r2 %f0 0
	lw.s	%r0 %f0 608
	addi	%r1 %r2 4
	sw.s	%r2 %f0 0
	lw.s	%r0 %f0 612
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	slli	%r10 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	sw	%r1 %r9 0
	slli	%r10 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	addi	%r0 %r2 0
	sw	%r26 %r9 -36
	sw	%r26 %r10 -32
	sw.s	%r26 %f2 -28
	sw.s	%r26 %f3 -24
	sw.s	%r26 %f4 -20
	sw	%r26 %r8 -16
	sw	%r26 %r5 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	pretrace_diffuse_rays.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r9 -36
	lw	%r26 %r10 -32
	lw.s	%r26 %f2 -28
	lw.s	%r26 %f3 -24
	lw.s	%r26 %f4 -20
	lw	%r26 %r8 -16
	lw	%r26 %r5 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
	addi	%r10 %r3 -1
	addi	%r9 %r1 1
	addi	%r0 %r2 5
	ble	%r2 %r1 tail_b.3201
tail_b.3202 :
	j	tail_b.3203
tail_b.3201 :
	addi	%r1 %r1 -5
tail_b.3203 :
	mov	%r3 %r10
	mov	%r1 %r9
	j	pretrace_pixels_loop.2
postloop_b.75 :
preloop_b.77 :
	addi	%r0 %r9 0
	mov	%r9 %r10
scan_pixel_loop.1 :
	lw	%r0 %r1 616
	bl	%r10 %r1 branching_b.2017
tail_b.3232 :
	j	postloop_b.76
branching_b.2017 :
	slli	%r10 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 604
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 608
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 612
	addi	%r4 %r2 1
	lw	%r0 %r1 620
	bl	%r2 %r1 branching_b.2018
tail_b.3210 :
	addi	%r0 %r1 0
	j	branching_b.2021
branching_b.2018 :
	bl	%r9 %r4 branching_b.2019
tail_b.3209 :
	addi	%r0 %r1 0
	j	branching_b.2021
branching_b.2019 :
	addi	%r10 %r1 1
	lw	%r0 %r2 616
	bl	%r1 %r2 branching_b.2020
tail_b.3208 :
	addi	%r0 %r1 0
	j	branching_b.2021
branching_b.2020 :
	bl	%r9 %r10 tail_b.3206
tail_b.3207 :
	addi	%r0 %r1 0
	j	branching_b.2021
tail_b.3206 :
	addi	%r0 %r1 1
branching_b.2021 :
	beq	%r1 %r9 tail_b.3211
tail_b.3212 :
	addi	%r0 %r1 0
	sw	%r26 %r10 -24
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r5 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	mov	%r7 %r3
	mov	%r4 %r2
	mov	%r6 %r4
	mov	%r1 %r6
	mov	%r10 %r1
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	try_exploit_neighbors.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw	%r26 %r10 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r5 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
	j	branching_b.2022
tail_b.3211 :
	slli	%r10 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	addi	%r0 %r2 0
	sw	%r26 %r10 -24
	sw	%r26 %r9 -20
	sw	%r26 %r8 -16
	sw	%r26 %r5 -12
	sw	%r26 %r6 -8
	sw	%r26 %r7 -4
	sw	%r26 %r4 0
	sw	%r26 %r28 -28
	addi	%r26 %r26 -32
	jal	do_without_neighbors.0
	addi	%r26 %r26 32
	lw	%r26 %r28 -28
	lw	%r26 %r10 -24
	lw	%r26 %r9 -20
	lw	%r26 %r8 -16
	lw	%r26 %r5 -12
	lw	%r26 %r6 -8
	lw	%r26 %r7 -4
	lw	%r26 %r4 0
branching_b.2022 :
	lw.s	%r0 %f0 604
	mfc1	%r1 %f0
	addi	%r0 %r12 255
	bl	%r12 %r1 tail_b.3213
branching_b.2023 :
	bl	%r1 %r9 tail_b.3214
tail_b.3215 :
	mov	%r1 %r2
	j	branching_b.2024
tail_b.3214 :
	addi	%r0 %r2 0
	j	branching_b.2024
tail_b.3213 :
	addi	%r0 %r2 255
branching_b.2024 :
	addi	%r2 %r1 1
	addi	%r0 %r13 655
	mul	%r1 %r13 %r1
	slli	%r1 %r16 -16
	addi	%r0 %r11 100
	mul	%r16 %r11 %r1
	sub	%r2 %r1 %r1
	addi	%r1 %r1 1
	addi	%r0 %r3 6553
	mul	%r1 %r3 %r1
	slli	%r1 %r15 -16
	mul	%r16 %r11 %r1
	sub	%r2 %r1 %r1
	addi	%r0 %r14 10
	mul	%r15 %r14 %r2
	sub	%r1 %r2 %r2
	bl	%r9 %r16 tail_b.3216
branching_b.2025 :
	bl	%r9 %r15 tail_b.3217
tail_b.3218 :
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.2026
tail_b.3217 :
	addi	%r15 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.2026
tail_b.3216 :
	addi	%r16 %r1 48
	out	%r1
	addi	%r15 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
branching_b.2026 :
	addi	%r0 %r1 32
	out	%r1
	lw.s	%r0 %f0 608
	mfc1	%r1 %f0
	bl	%r12 %r1 tail_b.3219
branching_b.2027 :
	bl	%r1 %r9 tail_b.3220
tail_b.3221 :
	mov	%r1 %r16
	j	branching_b.2028
tail_b.3220 :
	addi	%r0 %r16 0
	j	branching_b.2028
tail_b.3219 :
	addi	%r0 %r16 255
branching_b.2028 :
	addi	%r16 %r1 1
	mul	%r1 %r13 %r1
	slli	%r1 %r15 -16
	mul	%r15 %r11 %r1
	sub	%r16 %r1 %r1
	addi	%r1 %r1 1
	mul	%r1 %r3 %r1
	slli	%r1 %r1 -16
	mul	%r15 %r11 %r2
	sub	%r16 %r2 %r16
	mul	%r1 %r14 %r2
	sub	%r16 %r2 %r16
	bl	%r9 %r15 tail_b.3222
branching_b.2029 :
	bl	%r9 %r1 tail_b.3223
tail_b.3224 :
	addi	%r16 %r1 48
	out	%r1
	j	branching_b.2030
tail_b.3223 :
	addi	%r1 %r1 48
	out	%r1
	addi	%r16 %r1 48
	out	%r1
	j	branching_b.2030
tail_b.3222 :
	addi	%r15 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	addi	%r16 %r1 48
	out	%r1
branching_b.2030 :
	addi	%r0 %r1 32
	out	%r1
	lw.s	%r0 %f0 612
	mfc1	%r1 %f0
	bl	%r12 %r1 tail_b.3225
branching_b.2031 :
	bl	%r1 %r9 tail_b.3226
tail_b.3227 :
	mov	%r1 %r12
	j	branching_b.2032
tail_b.3226 :
	addi	%r0 %r12 0
	j	branching_b.2032
tail_b.3225 :
	addi	%r0 %r12 255
branching_b.2032 :
	addi	%r12 %r1 1
	mul	%r1 %r13 %r1
	slli	%r1 %r1 -16
	mul	%r1 %r11 %r2
	sub	%r12 %r2 %r2
	addi	%r2 %r2 1
	mul	%r2 %r3 %r2
	slli	%r2 %r3 -16
	mul	%r1 %r11 %r2
	sub	%r12 %r2 %r11
	mul	%r3 %r14 %r2
	sub	%r11 %r2 %r2
	bl	%r9 %r1 tail_b.3228
branching_b.2033 :
	bl	%r9 %r3 tail_b.3229
tail_b.3230 :
	addi	%r2 %r1 48
	out	%r1
	j	tail_b.3231
tail_b.3229 :
	addi	%r3 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	tail_b.3231
tail_b.3228 :
	addi	%r1 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
tail_b.3231 :
	addi	%r0 %r1 10
	out	%r1
	addi	%r10 %r1 1
	mov	%r1 %r10
	j	scan_pixel_loop.1
postloop_b.76 :
branching_b.2034 :
	addi	%r4 %r1 1
	addi	%r8 %r2 2
	addi	%r0 %r3 5
	ble	%r3 %r2 tail_b.3233
tail_b.3234 :
	j	tail_b.3235
tail_b.3233 :
	addi	%r2 %r2 -5
tail_b.3235 :
	mov	%r1 %r4
	mov	%r6 %r7
	mov	%r5 %r6
	mov	%r7 %r5
	mov	%r2 %r8
	j	scan_line_loop.0
postloop_b.77 :
return_point.26 :
	retl
init_line_elements.0 :
	mov	%r1 %r5
preloop_b.78 :
	mov	%r2 %r4
init_line_elements_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r4 tail_b.3237
tail_b.3238 :
	mov	%r5 %r1
	j	postloop_b.78
tail_b.3237 :
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r3
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r0 %r2 5
	mov	%r2 %r31
	mov	%r1 %r2
	mov	%r31 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r6
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r6 %r1 4
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r6 %r1 8
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r6 %r2 12
	sw	%r2 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r6 %r1 16
	sw	%r1 %r2 0
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r9
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r0 %r7 5
	sw	%r26 %r1 0
	mov	%r7 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r8
	lw	%r26 %r1 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r8 %r7 4
	sw	%r7 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r7
	lw	%r26 %r1 0
	addi	%r8 %r2 8
	sw	%r2 %r7 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r8 %r7 12
	sw	%r7 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r7
	lw	%r26 %r1 0
	addi	%r8 %r2 16
	sw	%r2 %r7 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r0 %r7 5
	sw	%r26 %r1 0
	mov	%r7 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r11
	lw	%r26 %r1 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r7
	lw	%r26 %r1 0
	addi	%r11 %r2 4
	sw	%r2 %r7 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r11 %r7 8
	sw	%r7 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r11 %r7 12
	sw	%r7 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r11 %r7 16
	sw	%r7 %r2 0
	addi	%r0 %r7 1
	addi	%r0 %r2 0
	sw	%r26 %r1 0
	mov	%r7 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r12
	lw	%r26 %r1 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r0 %r7 5
	sw	%r26 %r1 0
	mov	%r7 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r7
	lw	%r26 %r1 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r7 %r10 4
	sw	%r10 %r2 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r10
	lw	%r26 %r1 0
	addi	%r7 %r2 8
	sw	%r2 %r10 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r10
	lw	%r26 %r1 0
	addi	%r7 %r2 12
	sw	%r2 %r10 0
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r10
	lw	%r26 %r1 0
	addi	%r7 %r2 16
	sw	%r2 %r10 0
	mov	%r27 %r2
	addi	%r27 %r27 32
	sw	%r2 %r7 28
	sw	%r2 %r12 24
	sw	%r2 %r11 20
	sw	%r2 %r8 16
	sw	%r2 %r1 12
	sw	%r2 %r9 8
	sw	%r2 %r6 4
	sw	%r2 %r3 0
	mov	%r2 %r1
	slli	%r4 %r2 2
	add	%r5 %r2 %r2
	sw	%r2 %r1 0
	addi	%r4 %r1 -1
	mov	%r1 %r4
	j	init_line_elements_loop.0
postloop_b.78 :
return_point.27 :
	retl
calc_dirvec.0 :
	mov	%r2 %r4
preloop_b.79 :
	mov	%r1 %r2
	mov.s	%f0 %f5
	mov.s	%f1 %f4
calc_dirvec_loop.0 :
	addi	%r0 %r1 5
	ble	%r1 %r2 tail_b.3239
branching_b.2037 :
	mul.s	%f4 %f4 %f0
	ilw.s	%r0 %f6 l.93
	add.s	%f6 %f0 %f0
	sqrt.s	%f0 %f7
	ilw.s	%r0 %f4 l.56
	div.s	%f7 %f4 %f1
	ilw.s	%r0 %f5 l.51
	fbg	%f5 %f1 branching_b.2040
branching_b.2038 :
	ilw.s	%r0 %f0 l.81
	fbge	%f1 %f0 branching_b.2039
tail_b.3240 :
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f8 l.86
	mul.s	%f1 %f8 %f8
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.87
	mul.s	%f1 %f8 %f8
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.88
	mul.s	%f1 %f8 %f8
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f4 %f0 %f0
	j	preloop_b.80
branching_b.2039 :
	ilw.s	%r0 %f0 l.82
	fbge	%f1 %f0 tail_b.3242
tail_b.3241 :
	sub.s	%f4 %f1 %f8
	add.s	%f4 %f1 %f0
	div.s	%f0 %f8 %f1
	ilw.s	%r0 %f10 l.59
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f8 l.84
	mul.s	%f1 %f8 %f8
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f11
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f11 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.88
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f4 %f0 %f0
	j	preloop_b.80
tail_b.3242 :
	div.s	%f1 %f4 %f8
	ilw.s	%r0 %f0 l.58
	ilw.s	%r0 %f11 l.90
	neg.s	%f8 %f1
	mul.s	%f8 %f1 %f10
	ilw.s	%r0 %f1 l.83
	mul.s	%f8 %f1 %f9
	ilw.s	%r0 %f1 l.84
	mul.s	%f8 %f1 %f12
	mul.s	%f10 %f9 %f1
	add.s	%f1 %f12 %f9
	ilw.s	%r0 %f1 l.85
	mul.s	%f8 %f1 %f1
	mul.s	%f10 %f9 %f9
	add.s	%f9 %f1 %f1
	ilw.s	%r0 %f9 l.86
	mul.s	%f8 %f9 %f9
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f9 %f1
	ilw.s	%r0 %f9 l.87
	mul.s	%f8 %f9 %f9
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f9 %f9
	ilw.s	%r0 %f1 l.88
	mul.s	%f8 %f1 %f1
	mul.s	%f10 %f9 %f9
	add.s	%f9 %f1 %f1
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f8 %f1
	add.s	%f1 %f11 %f1
	mul.s	%f0 %f1 %f0
	j	preloop_b.80
branching_b.2040 :
	neg.s	%f1 %f9
	ilw.s	%r0 %f0 l.81
	fbge	%f9 %f0 branching_b.2041
tail_b.3243 :
	ilw.s	%r0 %f1 l.58
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f8 l.84
	mul.s	%f9 %f8 %f8
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f10 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f10 %f8 %f8
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f8 l.87
	mul.s	%f9 %f8 %f8
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f0
	mul.s	%f10 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	j	preloop_b.80
branching_b.2041 :
	ilw.s	%r0 %f0 l.82
	fbge	%f9 %f0 tail_b.3245
tail_b.3244 :
	sub.s	%f4 %f9 %f1
	add.s	%f4 %f9 %f0
	div.s	%f0 %f1 %f10
	ilw.s	%r0 %f11 l.58
	ilw.s	%r0 %f9 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f10 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f12
	ilw.s	%r0 %f0 l.88
	mul.s	%f10 %f0 %f1
	mul.s	%f8 %f12 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f11 %f0 %f0
	j	preloop_b.80
tail_b.3245 :
	div.s	%f9 %f4 %f9
	ilw.s	%r0 %f10 l.90
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f9 %f1 %f1
	ilw.s	%r0 %f8 l.84
	mul.s	%f9 %f8 %f8
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f8 %f8
	ilw.s	%r0 %f1 l.85
	mul.s	%f9 %f1 %f1
	mul.s	%f0 %f8 %f8
	add.s	%f8 %f1 %f1
	ilw.s	%r0 %f8 l.86
	mul.s	%f9 %f8 %f8
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f8 %f8
	ilw.s	%r0 %f1 l.87
	mul.s	%f9 %f1 %f1
	mul.s	%f0 %f8 %f8
	add.s	%f8 %f1 %f8
	ilw.s	%r0 %f1 l.88
	mul.s	%f9 %f1 %f1
	mul.s	%f0 %f8 %f8
	add.s	%f8 %f1 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f4 %f0 %f0
	j	preloop_b.80
tail_b.3239 :
	mul.s	%f5 %f5 %f1
	mul.s	%f4 %f4 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f2
	div.s	%f2 %f5 %f5
	div.s	%f2 %f4 %f0
	div.s	%f2 %f1 %f4
	slli	%r4 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r4 0
	slli	%r3 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	mov	%r2 %r1
	sw.s	%r1 %f5 0
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	addi	%r2 %r1 8
	sw.s	%r1 %f4 0
	addi	%r3 %r1 40
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	neg.s	%f0 %f1
	mov	%r1 %r2
	sw.s	%r2 %f5 0
	addi	%r1 %r2 4
	sw.s	%r2 %f4 0
	addi	%r1 %r1 8
	sw.s	%r1 %f1 0
	addi	%r3 %r1 80
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	neg.s	%f5 %f1
	neg.s	%f0 %f2
	mov	%r1 %r2
	sw.s	%r2 %f4 0
	addi	%r1 %r2 4
	sw.s	%r2 %f1 0
	addi	%r1 %r1 8
	sw.s	%r1 %f2 0
	addi	%r3 %r1 1
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	neg.s	%f5 %f1
	neg.s	%f0 %f3
	neg.s	%f4 %f2
	mov	%r2 %r1
	sw.s	%r1 %f1 0
	addi	%r2 %r1 4
	sw.s	%r1 %f3 0
	addi	%r2 %r1 8
	sw.s	%r1 %f2 0
	addi	%r3 %r1 41
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	neg.s	%f5 %f1
	neg.s	%f4 %f2
	mov	%r2 %r1
	sw.s	%r1 %f1 0
	addi	%r2 %r1 4
	sw.s	%r1 %f2 0
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	addi	%r3 %r1 81
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	neg.s	%f4 %f1
	mov	%r2 %r1
	sw.s	%r1 %f1 0
	addi	%r2 %r1 4
	sw.s	%r1 %f5 0
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
postloop_b.83 :
return_point.28 :
	retl
preloop_b.80 :
	mul.s	%f2 %f0 %f9
	mov.s	%f9 %f0
sin_loop.6 :
	ilw.s	%r0 %f1 l.54
	ilw.s	%r0 %f8 l.55
	fbg	%f8 %f0 branching_b.2043
tail_b.3246 :
	sub.s	%f8 %f0 %f0
	j	sin_loop.6
branching_b.2043 :
	fbge	%f0 %f5 branching_b.2044
tail_b.3247 :
	add.s	%f8 %f0 %f0
	j	sin_loop.6
branching_b.2044 :
	fbg	%f1 %f0 branching_b.2048
branching_b.2045 :
	sub.s	%f1 %f0 %f12
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f11 l.57
	fbg	%f11 %f12 branching_b.2047
branching_b.2046 :
	sub.s	%f12 %f1 %f8
	ilw.s	%r0 %f0 l.59
	fbg	%f8 %f0 tail_b.3249
tail_b.3248 :
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f12
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f8 %f0 %f11
	mul.s	%f12 %f1 %f0
	add.s	%f0 %f11 %f1
	mul.s	%f8 %f4 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f10 %f0 %f1
	j	postloop_b.79
tail_b.3249 :
	sub.s	%f8 %f11 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f10 %f0 %f1
	j	postloop_b.79
branching_b.2047 :
	ilw.s	%r0 %f0 l.59
	fbg	%f12 %f0 tail_b.3251
tail_b.3250 :
	mul.s	%f12 %f12 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f12 %f0 %f0
	ilw.s	%r0 %f8 l.64
	mul.s	%f12 %f8 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.65
	mul.s	%f12 %f8 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f12 %f4 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f10 %f0 %f1
	j	postloop_b.79
tail_b.3251 :
	sub.s	%f12 %f11 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f10 %f0 %f1
	j	postloop_b.79
branching_b.2048 :
	ilw.s	%r0 %f8 l.57
	fbg	%f8 %f0 branching_b.2050
branching_b.2049 :
	sub.s	%f0 %f1 %f10
	ilw.s	%r0 %f0 l.59
	fbg	%f10 %f0 tail_b.3253
tail_b.3252 :
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f10 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f10 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f10 %f4 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f1
	j	postloop_b.79
tail_b.3253 :
	sub.s	%f10 %f8 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f4 %f0 %f1
	j	postloop_b.79
branching_b.2050 :
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.3255
tail_b.3254 :
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f10
	ilw.s	%r0 %f1 l.63
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f8 l.64
	mul.s	%f0 %f8 %f8
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f8 %f1
	ilw.s	%r0 %f8 l.65
	mul.s	%f0 %f8 %f8
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f8 %f8
	mul.s	%f0 %f4 %f1
	mul.s	%f10 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f1
	j	postloop_b.79
tail_b.3255 :
	sub.s	%f0 %f8 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f4 %f0 %f1
postloop_b.79 :
preloop_b.81 :
cos_loop.6 :
	ilw.s	%r0 %f8 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f9 branching_b.2052
tail_b.3256 :
	sub.s	%f0 %f9 %f0
	mov.s	%f0 %f9
	j	cos_loop.6
branching_b.2052 :
	fbge	%f9 %f5 branching_b.2053
tail_b.3257 :
	add.s	%f0 %f9 %f0
	mov.s	%f0 %f9
	j	cos_loop.6
branching_b.2053 :
	fbg	%f8 %f9 branching_b.2057
branching_b.2054 :
	sub.s	%f8 %f9 %f9
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f9 branching_b.2056
branching_b.2055 :
	sub.s	%f9 %f8 %f8
	ilw.s	%r0 %f9 l.59
	fbg	%f8 %f9 tail_b.3259
tail_b.3258 :
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f9 l.61
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.62
	mul.s	%f8 %f9 %f9
	add.s	%f9 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.80
tail_b.3259 :
	sub.s	%f8 %f0 %f9
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f10
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f8 l.64
	mul.s	%f9 %f8 %f8
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f0
	mul.s	%f10 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f9 %f4 %f8
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.80
branching_b.2056 :
	ilw.s	%r0 %f8 l.59
	fbg	%f9 %f8 tail_b.3261
tail_b.3260 :
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f8 l.61
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.62
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f10 %f0 %f0
	j	postloop_b.80
tail_b.3261 :
	sub.s	%f9 %f0 %f11
	mul.s	%f11 %f11 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.63
	mul.s	%f11 %f0 %f12
	ilw.s	%r0 %f0 l.64
	mul.s	%f11 %f0 %f8
	mul.s	%f9 %f12 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.65
	mul.s	%f11 %f0 %f0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f11 %f4 %f8
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f10 %f0 %f0
	j	postloop_b.80
branching_b.2057 :
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f9 branching_b.2059
branching_b.2058 :
	sub.s	%f9 %f8 %f8
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f10 l.59
	fbg	%f8 %f10 tail_b.3263
tail_b.3262 :
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f10
	ilw.s	%r0 %f8 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f10 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.62
	mul.s	%f10 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f9 %f0 %f0
	j	postloop_b.80
tail_b.3263 :
	sub.s	%f8 %f0 %f10
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f11
	ilw.s	%r0 %f0 l.63
	mul.s	%f10 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.65
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f10 %f4 %f8
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f0 %f0
	j	postloop_b.80
branching_b.2059 :
	ilw.s	%r0 %f8 l.59
	fbg	%f9 %f8 tail_b.3265
tail_b.3264 :
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f9 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f8 %f9 %f9
	add.s	%f9 %f0 %f0
	ilw.s	%r0 %f9 l.62
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.80
tail_b.3265 :
	sub.s	%f9 %f0 %f10
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f10 %f0 %f11
	ilw.s	%r0 %f0 l.64
	mul.s	%f10 %f0 %f9
	mul.s	%f8 %f11 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f9 l.65
	mul.s	%f10 %f9 %f9
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f9
	mul.s	%f10 %f4 %f0
	mul.s	%f8 %f9 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f4 %f0 %f0
postloop_b.80 :
branching_b.2060 :
	div.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f7
	addi	%r2 %r1 1
	mul.s	%f7 %f7 %f0
	add.s	%f6 %f0 %f0
	sqrt.s	%f0 %f6
	div.s	%f6 %f4 %f9
	fbg	%f5 %f9 branching_b.2063
branching_b.2061 :
	ilw.s	%r0 %f0 l.81
	fbge	%f9 %f0 branching_b.2062
tail_b.3266 :
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f8 l.84
	mul.s	%f9 %f8 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f10
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f8 l.86
	mul.s	%f9 %f8 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f8 l.88
	mul.s	%f9 %f8 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f4 %f0 %f0
	j	preloop_b.82
branching_b.2062 :
	ilw.s	%r0 %f0 l.82
	fbge	%f9 %f0 tail_b.3268
tail_b.3267 :
	sub.s	%f4 %f9 %f0
	add.s	%f4 %f9 %f1
	div.s	%f1 %f0 %f8
	ilw.s	%r0 %f10 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f11
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f1
	mul.s	%f9 %f11 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f8 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f8 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f4 %f0 %f0
	j	preloop_b.82
tail_b.3268 :
	div.s	%f9 %f4 %f12
	ilw.s	%r0 %f11 l.58
	ilw.s	%r0 %f9 l.90
	neg.s	%f12 %f0
	mul.s	%f12 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f12 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f12 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f12 %f0 %f10
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f12 %f0 %f1
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f1 %f10
	ilw.s	%r0 %f0 l.87
	mul.s	%f12 %f0 %f1
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.88
	mul.s	%f12 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f12 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f11 %f0 %f0
	j	preloop_b.82
branching_b.2063 :
	neg.s	%f9 %f1
	ilw.s	%r0 %f0 l.81
	fbge	%f1 %f0 branching_b.2064
tail_b.3269 :
	ilw.s	%r0 %f8 l.58
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f11 %f9 %f9
	add.s	%f9 %f0 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f11 %f9 %f9
	add.s	%f9 %f0 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f0
	mul.s	%f11 %f9 %f9
	add.s	%f9 %f0 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f10
	mul.s	%f11 %f9 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f9 l.88
	mul.s	%f1 %f9 %f9
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	preloop_b.82
branching_b.2064 :
	ilw.s	%r0 %f0 l.82
	fbge	%f1 %f0 tail_b.3271
tail_b.3270 :
	sub.s	%f4 %f1 %f8
	add.s	%f4 %f1 %f0
	div.s	%f0 %f8 %f9
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f10 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f9 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f9 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f9 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f9 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f8 %f0 %f0
	j	preloop_b.82
tail_b.3271 :
	div.s	%f1 %f4 %f11
	ilw.s	%r0 %f9 l.90
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f11 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f11 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f10
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f1
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.88
	mul.s	%f11 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f4 %f0 %f0
preloop_b.82 :
	mul.s	%f3 %f0 %f8
	mov.s	%f8 %f10
sin_loop.5 :
	ilw.s	%r0 %f0 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f10 branching_b.2066
tail_b.3272 :
	sub.s	%f1 %f10 %f0
	mov.s	%f0 %f10
	j	sin_loop.5
branching_b.2066 :
	fbge	%f10 %f5 branching_b.2067
tail_b.3273 :
	add.s	%f1 %f10 %f0
	mov.s	%f0 %f10
	j	sin_loop.5
branching_b.2067 :
	fbg	%f0 %f10 branching_b.2071
branching_b.2068 :
	sub.s	%f0 %f10 %f10
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f9 l.57
	fbg	%f9 %f10 branching_b.2070
branching_b.2069 :
	sub.s	%f10 %f0 %f11
	ilw.s	%r0 %f0 l.59
	fbg	%f11 %f0 tail_b.3275
tail_b.3274 :
	mul.s	%f11 %f11 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f9 l.63
	mul.s	%f11 %f9 %f9
	ilw.s	%r0 %f10 l.64
	mul.s	%f11 %f10 %f10
	mul.s	%f0 %f9 %f9
	add.s	%f9 %f10 %f10
	ilw.s	%r0 %f9 l.65
	mul.s	%f11 %f9 %f9
	mul.s	%f0 %f10 %f10
	add.s	%f10 %f9 %f9
	mul.s	%f11 %f4 %f10
	mul.s	%f0 %f9 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f1 %f0 %f9
	j	postloop_b.81
tail_b.3275 :
	sub.s	%f11 %f9 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f10
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f9 l.61
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f9 l.62
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f1 %f0 %f9
	j	postloop_b.81
branching_b.2070 :
	ilw.s	%r0 %f0 l.59
	fbg	%f10 %f0 tail_b.3277
tail_b.3276 :
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f11
	ilw.s	%r0 %f0 l.63
	mul.s	%f10 %f0 %f9
	ilw.s	%r0 %f0 l.64
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f9 %f9
	add.s	%f9 %f0 %f0
	ilw.s	%r0 %f9 l.65
	mul.s	%f10 %f9 %f9
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f10 %f4 %f9
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f1 %f0 %f9
	j	postloop_b.81
tail_b.3277 :
	sub.s	%f10 %f9 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f10 l.61
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f10 l.62
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f1 %f0 %f9
	j	postloop_b.81
branching_b.2071 :
	ilw.s	%r0 %f9 l.57
	fbg	%f9 %f10 branching_b.2073
branching_b.2072 :
	sub.s	%f10 %f0 %f1
	ilw.s	%r0 %f0 l.59
	fbg	%f1 %f0 tail_b.3279
tail_b.3278 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f10
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f9 l.64
	mul.s	%f1 %f9 %f9
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f0
	mul.s	%f10 %f9 %f9
	add.s	%f9 %f0 %f0
	mul.s	%f1 %f4 %f1
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f9
	j	postloop_b.81
tail_b.3279 :
	sub.s	%f1 %f9 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f4 %f0 %f9
	j	postloop_b.81
branching_b.2073 :
	ilw.s	%r0 %f0 l.59
	fbg	%f10 %f0 tail_b.3281
tail_b.3280 :
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f10 %f0 %f11
	ilw.s	%r0 %f0 l.64
	mul.s	%f10 %f0 %f9
	mul.s	%f1 %f11 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f9 l.65
	mul.s	%f10 %f9 %f9
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f10 %f4 %f9
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f4 %f0 %f9
	j	postloop_b.81
tail_b.3281 :
	sub.s	%f10 %f9 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f4 %f0 %f9
postloop_b.81 :
preloop_b.83 :
cos_loop.5 :
	ilw.s	%r0 %f10 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f8 branching_b.2075
tail_b.3282 :
	sub.s	%f0 %f8 %f0
	mov.s	%f0 %f8
	j	cos_loop.5
branching_b.2075 :
	fbge	%f8 %f5 branching_b.2076
tail_b.3283 :
	add.s	%f0 %f8 %f0
	mov.s	%f0 %f8
	j	cos_loop.5
branching_b.2076 :
	fbg	%f10 %f8 branching_b.2080
branching_b.2077 :
	sub.s	%f10 %f8 %f1
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f1 branching_b.2079
branching_b.2078 :
	sub.s	%f1 %f10 %f5
	ilw.s	%r0 %f1 l.59
	fbg	%f5 %f1 tail_b.3285
tail_b.3284 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.82
tail_b.3285 :
	sub.s	%f5 %f0 %f10
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f10 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f10 %f0 %f1
	mul.s	%f5 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f10 %f4 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.82
branching_b.2079 :
	ilw.s	%r0 %f5 l.59
	fbg	%f1 %f5 tail_b.3287
tail_b.3286 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f5 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.82
tail_b.3287 :
	sub.s	%f1 %f0 %f10
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f11
	ilw.s	%r0 %f0 l.63
	mul.s	%f10 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f10 %f0 %f5
	mul.s	%f11 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f10 %f4 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.82
branching_b.2080 :
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f8 branching_b.2082
branching_b.2081 :
	sub.s	%f8 %f10 %f0
	ilw.s	%r0 %f11 l.58
	ilw.s	%r0 %f5 l.59
	fbg	%f0 %f5 tail_b.3289
tail_b.3288 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f1 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f11 %f0 %f0
	j	postloop_b.82
tail_b.3289 :
	sub.s	%f0 %f1 %f10
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f10 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f10 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.65
	mul.s	%f10 %f0 %f8
	mul.s	%f1 %f5 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f10 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f11 %f0 %f0
	j	postloop_b.82
branching_b.2082 :
	ilw.s	%r0 %f0 l.59
	fbg	%f8 %f0 tail_b.3291
tail_b.3290 :
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.82
tail_b.3291 :
	sub.s	%f8 %f1 %f1
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f4 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
postloop_b.82 :
tail_b.3292 :
	div.s	%f0 %f9 %f0
	mul.s	%f6 %f0 %f0
	mov	%r1 %r2
	mov.s	%f7 %f5
	mov.s	%f0 %f4
	j	calc_dirvec_loop.0
calc_dirvecs.0 :
	mov	%r3 %r5
	mov.s	%f0 %f2
preloop_b.84 :
	mov	%r1 %r6
calc_dirvecs_loop.0 :
	addi	%r0 %r4 0
	ble	%r4 %r6 preloop_b.85
tail_b.3324 :
	j	postloop_b.86
preloop_b.85 :
	mtc1	%r6 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f3 l.96
	sub.s	%f3 %f0 %f6
	ilw.s	%r0 %f3 l.51
	mov	%r4 %r3
	mov.s	%f3 %f7
	mov.s	%f3 %f4
calc_dirvec_loop.2 :
	addi	%r0 %r1 5
	ble	%r1 %r3 tail_b.3293
branching_b.2085 :
	mul.s	%f4 %f4 %f0
	ilw.s	%r0 %f8 l.93
	add.s	%f8 %f0 %f0
	sqrt.s	%f0 %f9
	ilw.s	%r0 %f7 l.56
	div.s	%f9 %f7 %f10
	fbg	%f3 %f10 branching_b.2088
branching_b.2086 :
	ilw.s	%r0 %f0 l.81
	fbge	%f10 %f0 branching_b.2087
tail_b.3294 :
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f11
	mul.s	%f4 %f5 %f0
	add.s	%f0 %f11 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f10 %f5 %f5
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f11
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f5
	mul.s	%f4 %f11 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f10 %f1 %f0
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.88
	mul.s	%f10 %f0 %f0
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f0
	j	branching_b.2090
branching_b.2087 :
	ilw.s	%r0 %f0 l.82
	fbge	%f10 %f0 tail_b.3296
tail_b.3295 :
	sub.s	%f7 %f10 %f0
	add.s	%f7 %f10 %f4
	div.s	%f4 %f0 %f11
	ilw.s	%r0 %f4 l.59
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f11 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f11 %f1 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.88
	mul.s	%f11 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f7 %f0 %f0
	j	branching_b.2090
tail_b.3296 :
	div.s	%f10 %f7 %f12
	ilw.s	%r0 %f11 l.58
	ilw.s	%r0 %f5 l.90
	neg.s	%f12 %f0
	mul.s	%f12 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f12 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f12 %f0 %f0
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f12 %f0 %f0
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f12 %f4 %f4
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f12 %f1 %f4
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f12 %f0 %f0
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f12 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f11 %f0 %f0
	j	branching_b.2090
branching_b.2088 :
	neg.s	%f10 %f10
	ilw.s	%r0 %f0 l.81
	fbge	%f10 %f0 branching_b.2089
tail_b.3297 :
	ilw.s	%r0 %f0 l.58
	neg.s	%f10 %f4
	mul.s	%f10 %f4 %f11
	ilw.s	%r0 %f4 l.83
	mul.s	%f10 %f4 %f5
	ilw.s	%r0 %f4 l.84
	mul.s	%f10 %f4 %f4
	mul.s	%f11 %f5 %f5
	add.s	%f5 %f4 %f4
	ilw.s	%r0 %f5 l.85
	mul.s	%f10 %f5 %f5
	mul.s	%f11 %f4 %f4
	add.s	%f4 %f5 %f5
	ilw.s	%r0 %f4 l.86
	mul.s	%f10 %f4 %f4
	mul.s	%f11 %f5 %f5
	add.s	%f5 %f4 %f5
	mul.s	%f10 %f1 %f4
	mul.s	%f11 %f5 %f5
	add.s	%f5 %f4 %f5
	ilw.s	%r0 %f4 l.88
	mul.s	%f10 %f4 %f4
	mul.s	%f11 %f5 %f5
	add.s	%f5 %f4 %f4
	mul.s	%f11 %f4 %f4
	add.s	%f4 %f10 %f4
	add.s	%f4 %f3 %f4
	mul.s	%f0 %f4 %f0
	j	branching_b.2090
branching_b.2089 :
	ilw.s	%r0 %f0 l.82
	fbge	%f10 %f0 tail_b.3299
tail_b.3298 :
	sub.s	%f7 %f10 %f0
	add.s	%f7 %f10 %f4
	div.s	%f4 %f0 %f13
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f4 l.59
	neg.s	%f13 %f0
	mul.s	%f13 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f13 %f0 %f11
	ilw.s	%r0 %f0 l.84
	mul.s	%f13 %f0 %f12
	mul.s	%f5 %f11 %f0
	add.s	%f0 %f12 %f11
	ilw.s	%r0 %f0 l.85
	mul.s	%f13 %f0 %f12
	mul.s	%f5 %f11 %f0
	add.s	%f0 %f12 %f11
	ilw.s	%r0 %f0 l.86
	mul.s	%f13 %f0 %f0
	mul.s	%f5 %f11 %f11
	add.s	%f11 %f0 %f0
	mul.s	%f13 %f1 %f11
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f11 %f11
	ilw.s	%r0 %f0 l.88
	mul.s	%f13 %f0 %f0
	mul.s	%f5 %f11 %f11
	add.s	%f11 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f13 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f10 %f0 %f0
	j	branching_b.2090
tail_b.3299 :
	div.s	%f10 %f7 %f5
	ilw.s	%r0 %f11 l.90
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f0
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f0
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f5 %f1 %f4
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f5 %f0 %f0
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f7 %f0 %f0
	j	branching_b.2090
tail_b.3293 :
	mul.s	%f7 %f7 %f5
	mul.s	%f4 %f4 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f6 l.56
	add.s	%f6 %f0 %f0
	sqrt.s	%f0 %f0
	div.s	%f0 %f7 %f5
	div.s	%f0 %f4 %f8
	div.s	%f0 %f6 %f7
	slli	%r2 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r3 0
	slli	%r5 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r7 0
	mov	%r7 %r1
	sw.s	%r1 %f5 0
	addi	%r7 %r1 4
	sw.s	%r1 %f8 0
	addi	%r7 %r1 8
	sw.s	%r1 %f7 0
	addi	%r5 %r1 40
	slli	%r1 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r7 0
	neg.s	%f8 %f0
	mov	%r7 %r1
	sw.s	%r1 %f5 0
	addi	%r7 %r1 4
	sw.s	%r1 %f7 0
	addi	%r7 %r1 8
	sw.s	%r1 %f0 0
	addi	%r5 %r1 80
	slli	%r1 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r7 0
	neg.s	%f5 %f0
	neg.s	%f8 %f4
	mov	%r7 %r1
	sw.s	%r1 %f7 0
	addi	%r7 %r1 4
	sw.s	%r1 %f0 0
	addi	%r7 %r1 8
	sw.s	%r1 %f4 0
	addi	%r5 %r1 1
	slli	%r1 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r7 0
	neg.s	%f5 %f0
	neg.s	%f8 %f6
	neg.s	%f7 %f4
	mov	%r7 %r1
	sw.s	%r1 %f0 0
	addi	%r7 %r1 4
	sw.s	%r1 %f6 0
	addi	%r7 %r1 8
	sw.s	%r1 %f4 0
	addi	%r5 %r1 41
	slli	%r1 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	neg.s	%f5 %f4
	neg.s	%f7 %f0
	mov	%r1 %r7
	sw.s	%r7 %f4 0
	addi	%r1 %r7 4
	sw.s	%r7 %f0 0
	addi	%r1 %r1 8
	sw.s	%r1 %f8 0
	addi	%r5 %r1 81
	slli	%r1 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r3 0
	neg.s	%f7 %f0
	mov	%r3 %r1
	sw.s	%r1 %f0 0
	addi	%r3 %r1 4
	sw.s	%r1 %f5 0
	addi	%r3 %r1 8
	sw.s	%r1 %f8 0
postloop_b.84 :
preloop_b.86 :
	mtc1	%r6 %f0
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f6 l.93
	add.s	%f6 %f0 %f5
	addi	%r5 %r7 2
	mov	%r4 %r3
	mov.s	%f3 %f4
	mov.s	%f3 %f7
calc_dirvec_loop.1 :
	addi	%r0 %r1 5
	ble	%r1 %r3 tail_b.3307
branching_b.2096 :
	mul.s	%f7 %f7 %f0
	add.s	%f6 %f0 %f0
	sqrt.s	%f0 %f9
	ilw.s	%r0 %f7 l.56
	div.s	%f9 %f7 %f8
	fbg	%f3 %f8 branching_b.2099
branching_b.2097 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 branching_b.2098
tail_b.3308 :
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f11 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f11 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f10
	mul.s	%f11 %f4 %f0
	add.s	%f0 %f10 %f4
	mul.s	%f8 %f1 %f0
	mul.s	%f11 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.88
	mul.s	%f8 %f4 %f4
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f0
	j	branching_b.2101
branching_b.2098 :
	ilw.s	%r0 %f0 l.82
	fbge	%f8 %f0 tail_b.3310
tail_b.3309 :
	sub.s	%f7 %f8 %f0
	add.s	%f7 %f8 %f4
	div.s	%f4 %f0 %f11
	ilw.s	%r0 %f10 l.59
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f11 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f11 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f11 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f11 %f1 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f11 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f7 %f0 %f0
	j	branching_b.2101
tail_b.3310 :
	div.s	%f8 %f7 %f4
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f13 l.90
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f12
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f8
	mul.s	%f11 %f12 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f0
	mul.s	%f11 %f8 %f8
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f8 l.86
	mul.s	%f4 %f8 %f8
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f8 %f8
	mul.s	%f4 %f1 %f0
	mul.s	%f11 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.88
	mul.s	%f4 %f0 %f12
	mul.s	%f11 %f8 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f13 %f0
	mul.s	%f10 %f0 %f0
	j	branching_b.2101
branching_b.2099 :
	neg.s	%f8 %f10
	ilw.s	%r0 %f0 l.81
	fbge	%f10 %f0 branching_b.2100
tail_b.3311 :
	ilw.s	%r0 %f12 l.58
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f10 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f10 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f11
	mul.s	%f8 %f4 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f10 %f1 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f10 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f12 %f0 %f0
	j	branching_b.2101
branching_b.2100 :
	ilw.s	%r0 %f0 l.82
	fbge	%f10 %f0 tail_b.3313
tail_b.3312 :
	sub.s	%f7 %f10 %f4
	add.s	%f7 %f10 %f0
	div.s	%f0 %f4 %f8
	ilw.s	%r0 %f11 l.58
	ilw.s	%r0 %f10 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f12
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f12 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f8 %f4 %f4
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f13
	mul.s	%f12 %f4 %f0
	add.s	%f0 %f13 %f0
	mul.s	%f8 %f1 %f4
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.88
	mul.s	%f8 %f4 %f4
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f11 %f0 %f0
	j	branching_b.2101
tail_b.3313 :
	div.s	%f10 %f7 %f10
	ilw.s	%r0 %f12 l.90
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f8
	mul.s	%f11 %f4 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f4
	mul.s	%f11 %f8 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f10 %f1 %f4
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.88
	mul.s	%f10 %f4 %f4
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f7 %f0 %f0
	j	branching_b.2101
tail_b.3307 :
	mul.s	%f4 %f4 %f0
	mul.s	%f7 %f7 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f3 l.56
	add.s	%f3 %f0 %f0
	sqrt.s	%f0 %f0
	div.s	%f0 %f4 %f6
	div.s	%f0 %f7 %f1
	div.s	%f0 %f3 %f5
	slli	%r2 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r4 0
	slli	%r7 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	mov	%r1 %r3
	sw.s	%r3 %f6 0
	addi	%r1 %r3 4
	sw.s	%r3 %f1 0
	addi	%r1 %r1 8
	sw.s	%r1 %f5 0
	addi	%r7 %r1 40
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	neg.s	%f1 %f0
	mov	%r1 %r3
	sw.s	%r3 %f6 0
	addi	%r1 %r3 4
	sw.s	%r3 %f5 0
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	addi	%r7 %r1 80
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	neg.s	%f6 %f3
	neg.s	%f1 %f0
	mov	%r1 %r3
	sw.s	%r3 %f5 0
	addi	%r1 %r3 4
	sw.s	%r3 %f3 0
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
	addi	%r7 %r1 1
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r3 0
	neg.s	%f6 %f0
	neg.s	%f1 %f4
	neg.s	%f5 %f3
	mov	%r3 %r1
	sw.s	%r1 %f0 0
	addi	%r3 %r1 4
	sw.s	%r1 %f4 0
	addi	%r3 %r1 8
	sw.s	%r1 %f3 0
	addi	%r7 %r1 41
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r3 0
	neg.s	%f6 %f0
	neg.s	%f5 %f3
	mov	%r3 %r1
	sw.s	%r1 %f0 0
	addi	%r3 %r1 4
	sw.s	%r1 %f3 0
	addi	%r3 %r1 8
	sw.s	%r1 %f1 0
	addi	%r7 %r1 81
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	neg.s	%f5 %f0
	mov	%r1 %r3
	sw.s	%r3 %f0 0
	addi	%r1 %r3 4
	sw.s	%r3 %f6 0
	addi	%r1 %r1 8
	sw.s	%r1 %f1 0
postloop_b.85 :
branching_b.2106 :
	addi	%r6 %r3 -1
	addi	%r2 %r1 1
	addi	%r0 %r2 5
	ble	%r2 %r1 tail_b.3321
tail_b.3322 :
	j	tail_b.3323
tail_b.3321 :
	addi	%r1 %r1 -5
tail_b.3323 :
	mov	%r3 %r6
	mov	%r1 %r2
	j	calc_dirvecs_loop.0
branching_b.2101 :
	mul.s	%f5 %f0 %f0
	sw.s	%r26 %f0 -48
	sw.s	%r26 %f7 -44
	sw.s	%r26 %f9 -40
	sw	%r26 %r3 -36
	sw	%r26 %r7 -32
	sw.s	%r26 %f5 -28
	sw.s	%r26 %f6 -24
	sw.s	%r26 %f3 -20
	sw.s	%r26 %f1 -16
	sw	%r26 %r2 -12
	sw	%r26 %r6 -8
	sw.s	%r26 %f2 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	sin.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	mov.s	%f0 %f4
	lw.s	%r26 %f0 -48
	lw.s	%r26 %f7 -44
	lw.s	%r26 %f9 -40
	lw	%r26 %r3 -36
	lw	%r26 %r7 -32
	lw.s	%r26 %f5 -28
	lw.s	%r26 %f6 -24
	lw.s	%r26 %f3 -20
	lw.s	%r26 %f1 -16
	lw	%r26 %r2 -12
	lw	%r26 %r6 -8
	lw.s	%r26 %f2 -4
	lw	%r26 %r5 0
	sw.s	%r26 %f4 -48
	sw.s	%r26 %f7 -44
	sw.s	%r26 %f9 -40
	sw	%r26 %r3 -36
	sw	%r26 %r7 -32
	sw.s	%r26 %f5 -28
	sw.s	%r26 %f6 -24
	sw.s	%r26 %f3 -20
	sw.s	%r26 %f1 -16
	sw	%r26 %r2 -12
	sw	%r26 %r6 -8
	sw.s	%r26 %f2 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	cos.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw.s	%r26 %f4 -48
	lw.s	%r26 %f7 -44
	lw.s	%r26 %f9 -40
	lw	%r26 %r3 -36
	lw	%r26 %r7 -32
	lw.s	%r26 %f5 -28
	lw.s	%r26 %f6 -24
	lw.s	%r26 %f3 -20
	lw.s	%r26 %f1 -16
	lw	%r26 %r2 -12
	lw	%r26 %r6 -8
	lw.s	%r26 %f2 -4
	lw	%r26 %r5 0
	div.s	%f0 %f4 %f0
	mul.s	%f9 %f0 %f8
	addi	%r3 %r1 1
	mul.s	%f8 %f8 %f0
	add.s	%f6 %f0 %f0
	sqrt.s	%f0 %f9
	div.s	%f9 %f7 %f4
	fbg	%f3 %f4 branching_b.2104
branching_b.2102 :
	ilw.s	%r0 %f0 l.81
	fbge	%f4 %f0 branching_b.2103
tail_b.3314 :
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f10 l.84
	mul.s	%f4 %f10 %f10
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f10 %f12
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f10
	mul.s	%f11 %f12 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f4 %f0 %f0
	mul.s	%f11 %f10 %f10
	add.s	%f10 %f0 %f0
	mul.s	%f4 %f1 %f10
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.88
	mul.s	%f4 %f0 %f0
	mul.s	%f11 %f10 %f10
	add.s	%f10 %f0 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.3320
branching_b.2103 :
	ilw.s	%r0 %f0 l.82
	fbge	%f4 %f0 tail_b.3316
tail_b.3315 :
	sub.s	%f7 %f4 %f10
	add.s	%f7 %f4 %f0
	div.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.59
	neg.s	%f10 %f4
	mul.s	%f10 %f4 %f12
	ilw.s	%r0 %f4 l.83
	mul.s	%f10 %f4 %f11
	ilw.s	%r0 %f4 l.84
	mul.s	%f10 %f4 %f13
	mul.s	%f12 %f11 %f4
	add.s	%f4 %f13 %f11
	ilw.s	%r0 %f4 l.85
	mul.s	%f10 %f4 %f4
	mul.s	%f12 %f11 %f11
	add.s	%f11 %f4 %f11
	ilw.s	%r0 %f4 l.86
	mul.s	%f10 %f4 %f4
	mul.s	%f12 %f11 %f11
	add.s	%f11 %f4 %f4
	mul.s	%f10 %f1 %f11
	mul.s	%f12 %f4 %f4
	add.s	%f4 %f11 %f11
	ilw.s	%r0 %f4 l.88
	mul.s	%f10 %f4 %f4
	mul.s	%f12 %f11 %f11
	add.s	%f11 %f4 %f4
	mul.s	%f12 %f4 %f4
	add.s	%f4 %f10 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.3320
tail_b.3316 :
	div.s	%f4 %f7 %f12
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f11 l.90
	neg.s	%f12 %f0
	mul.s	%f12 %f0 %f0
	ilw.s	%r0 %f4 l.83
	mul.s	%f12 %f4 %f7
	ilw.s	%r0 %f4 l.84
	mul.s	%f12 %f4 %f4
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f4 %f7
	ilw.s	%r0 %f4 l.85
	mul.s	%f12 %f4 %f4
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f4 %f4
	ilw.s	%r0 %f7 l.86
	mul.s	%f12 %f7 %f7
	mul.s	%f0 %f4 %f4
	add.s	%f4 %f7 %f4
	mul.s	%f12 %f1 %f7
	mul.s	%f0 %f4 %f4
	add.s	%f4 %f7 %f7
	ilw.s	%r0 %f4 l.88
	mul.s	%f12 %f4 %f13
	mul.s	%f0 %f7 %f4
	add.s	%f4 %f13 %f4
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f12 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f10 %f0 %f0
	j	tail_b.3320
branching_b.2104 :
	neg.s	%f4 %f11
	ilw.s	%r0 %f0 l.81
	fbge	%f11 %f0 branching_b.2105
tail_b.3317 :
	ilw.s	%r0 %f4 l.58
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f11 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f11 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f11 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f11 %f1 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.88
	mul.s	%f11 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.3320
branching_b.2105 :
	ilw.s	%r0 %f0 l.82
	fbge	%f11 %f0 tail_b.3319
tail_b.3318 :
	sub.s	%f7 %f11 %f0
	add.s	%f7 %f11 %f4
	div.s	%f4 %f0 %f7
	ilw.s	%r0 %f12 l.58
	ilw.s	%r0 %f10 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f13
	mul.s	%f11 %f4 %f0
	add.s	%f0 %f13 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f11 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f7 %f4 %f4
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f7 %f1 %f4
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f0
	mul.s	%f11 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f12 %f0 %f0
	j	tail_b.3320
tail_b.3319 :
	div.s	%f11 %f7 %f10
	ilw.s	%r0 %f13 l.90
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f12
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f10 %f4 %f4
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f10 %f4 %f4
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f0
	mul.s	%f12 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f10 %f1 %f4
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.88
	mul.s	%f10 %f0 %f11
	mul.s	%f12 %f4 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f13 %f0
	mul.s	%f7 %f0 %f0
tail_b.3320 :
	mul.s	%f2 %f0 %f0
	sw.s	%r26 %f0 -48
	sw.s	%r26 %f9 -44
	sw	%r26 %r1 -40
	sw.s	%r26 %f8 -36
	sw	%r26 %r7 -32
	sw.s	%r26 %f5 -28
	sw.s	%r26 %f6 -24
	sw.s	%r26 %f3 -20
	sw.s	%r26 %f1 -16
	sw	%r26 %r2 -12
	sw	%r26 %r6 -8
	sw.s	%r26 %f2 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	sin.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	mov.s	%f0 %f4
	lw.s	%r26 %f0 -48
	lw.s	%r26 %f9 -44
	lw	%r26 %r1 -40
	lw.s	%r26 %f8 -36
	lw	%r26 %r7 -32
	lw.s	%r26 %f5 -28
	lw.s	%r26 %f6 -24
	lw.s	%r26 %f3 -20
	lw.s	%r26 %f1 -16
	lw	%r26 %r2 -12
	lw	%r26 %r6 -8
	lw.s	%r26 %f2 -4
	lw	%r26 %r5 0
	sw.s	%r26 %f4 -48
	sw.s	%r26 %f9 -44
	sw	%r26 %r1 -40
	sw.s	%r26 %f8 -36
	sw	%r26 %r7 -32
	sw.s	%r26 %f5 -28
	sw.s	%r26 %f6 -24
	sw.s	%r26 %f3 -20
	sw.s	%r26 %f1 -16
	sw	%r26 %r2 -12
	sw	%r26 %r6 -8
	sw.s	%r26 %f2 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	cos.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw.s	%r26 %f4 -48
	lw.s	%r26 %f9 -44
	lw	%r26 %r1 -40
	lw.s	%r26 %f8 -36
	lw	%r26 %r7 -32
	lw.s	%r26 %f5 -28
	lw.s	%r26 %f6 -24
	lw.s	%r26 %f3 -20
	lw.s	%r26 %f1 -16
	lw	%r26 %r2 -12
	lw	%r26 %r6 -8
	lw.s	%r26 %f2 -4
	lw	%r26 %r5 0
	div.s	%f0 %f4 %f0
	mul.s	%f9 %f0 %f0
	mov	%r1 %r3
	mov.s	%f8 %f4
	mov.s	%f0 %f7
	j	calc_dirvec_loop.1
branching_b.2090 :
	mul.s	%f6 %f0 %f0
	sw.s	%r26 %f0 -48
	sw.s	%r26 %f7 -44
	sw.s	%r26 %f9 -40
	sw.s	%r26 %f8 -36
	sw	%r26 %r3 -32
	sw.s	%r26 %f3 -28
	sw.s	%r26 %f6 -24
	sw.s	%r26 %f1 -20
	sw	%r26 %r4 -16
	sw	%r26 %r2 -12
	sw	%r26 %r6 -8
	sw.s	%r26 %f2 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	sin.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	mov.s	%f0 %f4
	lw.s	%r26 %f0 -48
	lw.s	%r26 %f7 -44
	lw.s	%r26 %f9 -40
	lw.s	%r26 %f8 -36
	lw	%r26 %r3 -32
	lw.s	%r26 %f3 -28
	lw.s	%r26 %f6 -24
	lw.s	%r26 %f1 -20
	lw	%r26 %r4 -16
	lw	%r26 %r2 -12
	lw	%r26 %r6 -8
	lw.s	%r26 %f2 -4
	lw	%r26 %r5 0
	sw.s	%r26 %f4 -48
	sw.s	%r26 %f7 -44
	sw.s	%r26 %f9 -40
	sw.s	%r26 %f8 -36
	sw	%r26 %r3 -32
	sw.s	%r26 %f3 -28
	sw.s	%r26 %f6 -24
	sw.s	%r26 %f1 -20
	sw	%r26 %r4 -16
	sw	%r26 %r2 -12
	sw	%r26 %r6 -8
	sw.s	%r26 %f2 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	cos.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	lw.s	%r26 %f4 -48
	lw.s	%r26 %f7 -44
	lw.s	%r26 %f9 -40
	lw.s	%r26 %f8 -36
	lw	%r26 %r3 -32
	lw.s	%r26 %f3 -28
	lw.s	%r26 %f6 -24
	lw.s	%r26 %f1 -20
	lw	%r26 %r4 -16
	lw	%r26 %r2 -12
	lw	%r26 %r6 -8
	lw.s	%r26 %f2 -4
	lw	%r26 %r5 0
	div.s	%f0 %f4 %f0
	mul.s	%f9 %f0 %f5
	addi	%r3 %r1 1
	mul.s	%f5 %f5 %f0
	add.s	%f8 %f0 %f0
	sqrt.s	%f0 %f8
	div.s	%f8 %f7 %f11
	fbg	%f3 %f11 branching_b.2093
branching_b.2091 :
	ilw.s	%r0 %f0 l.81
	fbge	%f11 %f0 branching_b.2092
tail_b.3300 :
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f4 l.83
	mul.s	%f11 %f4 %f9
	ilw.s	%r0 %f4 l.84
	mul.s	%f11 %f4 %f4
	mul.s	%f0 %f9 %f9
	add.s	%f9 %f4 %f4
	ilw.s	%r0 %f9 l.85
	mul.s	%f11 %f9 %f9
	mul.s	%f0 %f4 %f4
	add.s	%f4 %f9 %f4
	ilw.s	%r0 %f9 l.86
	mul.s	%f11 %f9 %f9
	mul.s	%f0 %f4 %f4
	add.s	%f4 %f9 %f4
	mul.s	%f11 %f1 %f9
	mul.s	%f0 %f4 %f4
	add.s	%f4 %f9 %f9
	ilw.s	%r0 %f4 l.88
	mul.s	%f11 %f4 %f10
	mul.s	%f0 %f9 %f4
	add.s	%f4 %f10 %f4
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.3306
branching_b.2092 :
	ilw.s	%r0 %f0 l.82
	fbge	%f11 %f0 tail_b.3302
tail_b.3301 :
	sub.s	%f7 %f11 %f4
	add.s	%f7 %f11 %f0
	div.s	%f0 %f4 %f9
	ilw.s	%r0 %f0 l.59
	neg.s	%f9 %f4
	mul.s	%f9 %f4 %f12
	ilw.s	%r0 %f4 l.83
	mul.s	%f9 %f4 %f4
	ilw.s	%r0 %f10 l.84
	mul.s	%f9 %f10 %f10
	mul.s	%f12 %f4 %f4
	add.s	%f4 %f10 %f10
	ilw.s	%r0 %f4 l.85
	mul.s	%f9 %f4 %f11
	mul.s	%f12 %f10 %f4
	add.s	%f4 %f11 %f10
	ilw.s	%r0 %f4 l.86
	mul.s	%f9 %f4 %f4
	mul.s	%f12 %f10 %f10
	add.s	%f10 %f4 %f10
	mul.s	%f9 %f1 %f4
	mul.s	%f12 %f10 %f10
	add.s	%f10 %f4 %f10
	ilw.s	%r0 %f4 l.88
	mul.s	%f9 %f4 %f11
	mul.s	%f12 %f10 %f4
	add.s	%f4 %f11 %f4
	mul.s	%f12 %f4 %f4
	add.s	%f4 %f9 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.3306
tail_b.3302 :
	div.s	%f11 %f7 %f7
	ilw.s	%r0 %f12 l.58
	ilw.s	%r0 %f4 l.90
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f10 l.84
	mul.s	%f7 %f10 %f10
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f10 l.85
	mul.s	%f7 %f10 %f10
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f11
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f7 %f1 %f10
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f10 %f11
	ilw.s	%r0 %f0 l.88
	mul.s	%f7 %f0 %f10
	mul.s	%f9 %f11 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f12 %f0 %f0
	j	tail_b.3306
branching_b.2093 :
	neg.s	%f11 %f9
	ilw.s	%r0 %f0 l.81
	fbge	%f9 %f0 branching_b.2094
tail_b.3303 :
	ilw.s	%r0 %f10 l.58
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f9 %f1 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.88
	mul.s	%f9 %f4 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f10 %f0 %f0
	j	tail_b.3306
branching_b.2094 :
	ilw.s	%r0 %f0 l.82
	fbge	%f9 %f0 tail_b.3305
tail_b.3304 :
	sub.s	%f7 %f9 %f4
	add.s	%f7 %f9 %f0
	div.s	%f0 %f4 %f10
	ilw.s	%r0 %f4 l.58
	ilw.s	%r0 %f11 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f10 %f7 %f7
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f10 %f7 %f7
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f10 %f1 %f7
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.88
	mul.s	%f10 %f0 %f0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.3306
tail_b.3305 :
	div.s	%f9 %f7 %f4
	ilw.s	%r0 %f12 l.90
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f0
	mul.s	%f11 %f9 %f9
	add.s	%f9 %f0 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f0
	mul.s	%f11 %f9 %f9
	add.s	%f9 %f0 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f4 %f0 %f9
	mul.s	%f11 %f10 %f0
	add.s	%f0 %f9 %f9
	mul.s	%f4 %f1 %f0
	mul.s	%f11 %f9 %f9
	add.s	%f9 %f0 %f0
	ilw.s	%r0 %f9 l.88
	mul.s	%f4 %f9 %f9
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f7 %f0 %f0
tail_b.3306 :
	mul.s	%f2 %f0 %f0
	sw.s	%r26 %f0 -44
	sw.s	%r26 %f8 -40
	sw	%r26 %r1 -36
	sw.s	%r26 %f5 -32
	sw.s	%r26 %f3 -28
	sw.s	%r26 %f6 -24
	sw.s	%r26 %f1 -20
	sw	%r26 %r4 -16
	sw	%r26 %r2 -12
	sw	%r26 %r6 -8
	sw.s	%r26 %f2 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	sin.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	mov.s	%f0 %f4
	lw.s	%r26 %f0 -44
	lw.s	%r26 %f8 -40
	lw	%r26 %r1 -36
	lw.s	%r26 %f5 -32
	lw.s	%r26 %f3 -28
	lw.s	%r26 %f6 -24
	lw.s	%r26 %f1 -20
	lw	%r26 %r4 -16
	lw	%r26 %r2 -12
	lw	%r26 %r6 -8
	lw.s	%r26 %f2 -4
	lw	%r26 %r5 0
	sw.s	%r26 %f4 -44
	sw.s	%r26 %f8 -40
	sw	%r26 %r1 -36
	sw.s	%r26 %f5 -32
	sw.s	%r26 %f3 -28
	sw.s	%r26 %f6 -24
	sw.s	%r26 %f1 -20
	sw	%r26 %r4 -16
	sw	%r26 %r2 -12
	sw	%r26 %r6 -8
	sw.s	%r26 %f2 -4
	sw	%r26 %r5 0
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	cos.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw.s	%r26 %f4 -44
	lw.s	%r26 %f8 -40
	lw	%r26 %r1 -36
	lw.s	%r26 %f5 -32
	lw.s	%r26 %f3 -28
	lw.s	%r26 %f6 -24
	lw.s	%r26 %f1 -20
	lw	%r26 %r4 -16
	lw	%r26 %r2 -12
	lw	%r26 %r6 -8
	lw.s	%r26 %f2 -4
	lw	%r26 %r5 0
	div.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f0
	mov	%r1 %r3
	mov.s	%f5 %f7
	mov.s	%f0 %f4
	j	calc_dirvec_loop.2
postloop_b.86 :
return_point.29 :
	retl
calc_dirvec_rows.0 :
	mov	%r2 %r31
	mov	%r3 %r2
	mov	%r31 %r3
preloop_b.87 :
	mov	%r1 %r4
	mov	%r2 %r7
calc_dirvec_rows_loop.0 :
	addi	%r0 %r2 0
	ble	%r2 %r4 preloop_b.88
tail_b.3332 :
	j	postloop_b.88
preloop_b.88 :
	mtc1	%r4 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f3 l.96
	sub.s	%f3 %f0 %f4
	addi	%r0 %r1 4
	mov	%r1 %r5
	mov	%r3 %r6
calc_dirvecs_loop.1 :
	ble	%r2 %r5 branching_b.2109
tail_b.3328 :
	j	postloop_b.87
branching_b.2109 :
	mtc1	%r5 %f0
	mul.s	%f5 %f0 %f0
	sub.s	%f3 %f0 %f2
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.51
	ilw.s	%r0 %f1 l.51
	sw	%r26 %r6 -32
	sw	%r26 %r5 -28
	sw.s	%r26 %f4 -24
	sw.s	%r26 %f3 -20
	sw.s	%r26 %f5 -16
	sw	%r26 %r2 -12
	sw	%r26 %r7 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	mov	%r7 %r3
	mov	%r6 %r2
	mov.s	%f4 %f3
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	calc_dirvec.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r6 -32
	lw	%r26 %r5 -28
	lw.s	%r26 %f4 -24
	lw.s	%r26 %f3 -20
	lw.s	%r26 %f5 -16
	lw	%r26 %r2 -12
	lw	%r26 %r7 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	mtc1	%r5 %f0
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.93
	add.s	%f1 %f0 %f2
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.51
	ilw.s	%r0 %f1 l.51
	addi	%r7 %r8 2
	sw	%r26 %r6 -32
	sw	%r26 %r5 -28
	sw.s	%r26 %f4 -24
	sw.s	%r26 %f3 -20
	sw.s	%r26 %f5 -16
	sw	%r26 %r2 -12
	sw	%r26 %r7 -8
	sw	%r26 %r3 -4
	sw	%r26 %r4 0
	mov	%r8 %r3
	mov	%r6 %r2
	mov.s	%f4 %f3
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	calc_dirvec.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw	%r26 %r6 -32
	lw	%r26 %r5 -28
	lw.s	%r26 %f4 -24
	lw.s	%r26 %f3 -20
	lw.s	%r26 %f5 -16
	lw	%r26 %r2 -12
	lw	%r26 %r7 -8
	lw	%r26 %r3 -4
	lw	%r26 %r4 0
	addi	%r5 %r5 -1
	addi	%r6 %r6 1
	addi	%r0 %r1 5
	ble	%r1 %r6 tail_b.3325
tail_b.3326 :
	mov	%r6 %r1
	j	tail_b.3327
tail_b.3325 :
	addi	%r6 %r1 -5
tail_b.3327 :
	mov	%r1 %r6
	j	calc_dirvecs_loop.1
postloop_b.87 :
branching_b.2110 :
	addi	%r4 %r4 -1
	addi	%r3 %r1 2
	addi	%r0 %r2 5
	ble	%r2 %r1 tail_b.3329
tail_b.3330 :
	j	tail_b.3331
tail_b.3329 :
	addi	%r1 %r1 -5
tail_b.3331 :
	addi	%r7 %r2 4
	mov	%r1 %r3
	mov	%r2 %r7
	j	calc_dirvec_rows_loop.0
postloop_b.88 :
return_point.30 :
	retl
create_dirvec_elements.0 :
	mov	%r1 %r3
preloop_b.89 :
create_dirvec_elements_loop.0 :
	addi	%r0 %r1 0
	ble	%r1 %r2 tail_b.3333
tail_b.3334 :
	j	postloop_b.89
tail_b.3333 :
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r5
	lw	%r0 %r1 0
	sw	%r26 %r2 0
	mov	%r5 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r4
	mov	%r2 %r5
	lw	%r26 %r2 0
	mov	%r27 %r1
	addi	%r27 %r27 8
	sw	%r1 %r4 4
	sw	%r1 %r5 0
	mov	%r1 %r4
	slli	%r2 %r1 2
	add	%r3 %r1 %r1
	sw	%r1 %r4 0
	addi	%r2 %r1 -1
	mov	%r1 %r2
	j	create_dirvec_elements_loop.0
postloop_b.89 :
return_point.31 :
	retl
create_dirvecs.0 :
preloop_b.90 :
	mov	%r1 %r5
create_dirvecs_loop.0 :
	addi	%r0 %r4 0
	ble	%r4 %r5 preloop_b.91
tail_b.3338 :
	j	postloop_b.91
preloop_b.91 :
	addi	%r0 %r3 120
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	lw	%r0 %r1 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r6
	mov	%r27 %r1
	addi	%r27 %r27 8
	sw	%r1 %r6 4
	sw	%r1 %r2 0
	mov	%r1 %r2
	mov	%r3 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	slli	%r5 %r1 2
	addi	%r1 %r1 716
	sw	%r1 %r2 0
	slli	%r5 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r1 0
	addi	%r0 %r2 118
	mov	%r2 %r6
create_dirvec_elements_loop.1 :
	ble	%r4 %r6 tail_b.3335
tail_b.3336 :
	j	postloop_b.90
tail_b.3335 :
	addi	%r0 %r2 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_float_array
	lw	%r26 %r28 -4
	mov	%r1 %r7
	lw	%r26 %r1 0
	lw	%r0 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	mov	%r7 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r3
	mov	%r2 %r7
	lw	%r26 %r1 0
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r3 4
	sw	%r2 %r7 0
	mov	%r2 %r3
	slli	%r6 %r2 2
	add	%r1 %r2 %r2
	sw	%r2 %r3 0
	addi	%r6 %r2 -1
	mov	%r2 %r6
	j	create_dirvec_elements_loop.1
postloop_b.90 :
tail_b.3337 :
	addi	%r5 %r1 -1
	mov	%r1 %r5
	j	create_dirvecs_loop.0
postloop_b.91 :
return_point.32 :
	retl
init_dirvec_constants.0 :
	mov	%r1 %r5
preloop_b.92 :
	mov	%r2 %r3
init_dirvec_constants_loop.0 :
	addi	%r0 %r6 0
	ble	%r6 %r3 preloop_b.93
tail_b.3390 :
	j	postloop_b.93
preloop_b.93 :
	slli	%r3 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r4 0
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r2
iter_setup_dirvec_constants_loop.6 :
	ble	%r6 %r2 branching_b.2116
tail_b.3388 :
	j	postloop_b.92
branching_b.2116 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r10 0
	lw	%r4 %r7 4
	lw	%r4 %r9 0
	lw	%r10 %r8 4
	addi	%r0 %r1 1
	beq	%r8 %r1 branching_b.2117
branching_b.2135 :
	addi	%r0 %r1 2
	beq	%r8 %r1 branching_b.2136
branching_b.2138 :
	addi	%r0 %r1 5
	ilw.s	%r0 %f4 l.51
	mov.s	%f4 %f0
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r8
	mov	%r9 %r1
	lw.s	%r1 %f3 0
	addi	%r9 %r1 4
	lw.s	%r1 %f6 0
	addi	%r9 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f3 %f3 %f1
	lw	%r10 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mul.s	%f6 %f6 %f0
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f2
	mul.s	%f5 %f5 %f0
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f1
	lw	%r10 %r1 12
	beq	%r1 %r6 tail_b.3378
tail_b.3379 :
	mul.s	%f5 %f6 %f2
	lw	%r10 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f2
	mul.s	%f3 %f5 %f1
	lw	%r10 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f6 %f3 %f0
	lw	%r10 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	j	branching_b.2139
tail_b.3378 :
	mov.s	%f1 %f2
	j	branching_b.2139
branching_b.2136 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f2 l.51
	mov.s	%f2 %f0
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r8
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	lw	%r10 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f3
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f3
	addi	%r9 %r1 8
	lw.s	%r1 %f1 0
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f1
	fbge	%f2 %f1 tail_b.3374
tail_b.3373 :
	addi	%r0 %r1 1
	j	branching_b.2137
tail_b.3374 :
	addi	%r0 %r1 0
	j	branching_b.2137
branching_b.2117 :
	addi	%r0 %r1 6
	ilw.s	%r0 %f2 l.51
	mov.s	%f2 %f0
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r11
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3340
tail_b.3339 :
	addi	%r0 %r1 1
	j	branching_b.2118
tail_b.3340 :
	addi	%r0 %r1 0
branching_b.2118 :
	beq	%r1 %r6 branching_b.2119
tail_b.3349 :
	ilw.s	%r0 %f0 l.51
	addi	%r11 %r1 4
	sw.s	%r1 %f0 0
	j	branching_b.2123
branching_b.2119 :
	lw	%r10 %r1 24
	mov	%r9 %r8
	lw.s	%r8 %f0 0
	fbge	%f0 %f2 tail_b.3342
tail_b.3341 :
	addi	%r0 %r8 1
	j	branching_b.2120
tail_b.3342 :
	addi	%r0 %r8 0
branching_b.2120 :
	beq	%r1 %r6 tail_b.3343
branching_b.2121 :
	beq	%r8 %r6 tail_b.3344
tail_b.3345 :
	addi	%r0 %r8 0
	j	branching_b.2122
tail_b.3344 :
	addi	%r0 %r8 1
	j	branching_b.2122
tail_b.3343 :
branching_b.2122 :
	lw	%r10 %r1 16
	lw.s	%r1 %f0 0
	beq	%r8 %r6 tail_b.3346
tail_b.3347 :
	j	tail_b.3348
tail_b.3346 :
	neg.s	%f0 %f0
tail_b.3348 :
	mov	%r11 %r1
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.56
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	div.s	%f0 %f1 %f0
	addi	%r11 %r1 4
	sw.s	%r1 %f0 0
branching_b.2123 :
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3351
tail_b.3350 :
	addi	%r0 %r1 1
	j	branching_b.2124
tail_b.3351 :
	addi	%r0 %r1 0
branching_b.2124 :
	beq	%r1 %r6 branching_b.2125
tail_b.3360 :
	ilw.s	%r0 %f0 l.51
	addi	%r11 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.2129
branching_b.2125 :
	lw	%r10 %r1 24
	addi	%r9 %r8 4
	lw.s	%r8 %f0 0
	fbge	%f0 %f2 tail_b.3353
tail_b.3352 :
	addi	%r0 %r8 1
	j	branching_b.2126
tail_b.3353 :
	addi	%r0 %r8 0
branching_b.2126 :
	beq	%r1 %r6 tail_b.3354
branching_b.2127 :
	beq	%r8 %r6 tail_b.3355
tail_b.3356 :
	addi	%r0 %r8 0
	j	branching_b.2128
tail_b.3355 :
	addi	%r0 %r8 1
	j	branching_b.2128
tail_b.3354 :
branching_b.2128 :
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	beq	%r8 %r6 tail_b.3357
tail_b.3358 :
	j	tail_b.3359
tail_b.3357 :
	neg.s	%f0 %f0
tail_b.3359 :
	addi	%r11 %r1 8
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.56
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f1 %f0
	addi	%r11 %r1 12
	sw.s	%r1 %f0 0
branching_b.2129 :
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3362
tail_b.3361 :
	addi	%r0 %r1 1
	j	branching_b.2130
tail_b.3362 :
	addi	%r0 %r1 0
branching_b.2130 :
	beq	%r1 %r6 branching_b.2131
tail_b.3371 :
	ilw.s	%r0 %f0 l.51
	addi	%r11 %r1 20
	sw.s	%r1 %f0 0
	j	tail_b.3372
branching_b.2131 :
	lw	%r10 %r1 24
	addi	%r9 %r8 8
	lw.s	%r8 %f0 0
	fbge	%f0 %f2 tail_b.3364
tail_b.3363 :
	addi	%r0 %r8 1
	j	branching_b.2132
tail_b.3364 :
	addi	%r0 %r8 0
branching_b.2132 :
	beq	%r1 %r6 tail_b.3365
branching_b.2133 :
	beq	%r8 %r6 tail_b.3366
tail_b.3367 :
	addi	%r0 %r8 0
	j	branching_b.2134
tail_b.3366 :
	addi	%r0 %r8 1
	j	branching_b.2134
tail_b.3365 :
branching_b.2134 :
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	beq	%r8 %r6 tail_b.3368
tail_b.3369 :
	j	tail_b.3370
tail_b.3368 :
	neg.s	%f0 %f0
tail_b.3370 :
	addi	%r11 %r1 16
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.56
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f0 %f1 %f0
	addi	%r11 %r1 20
	sw.s	%r1 %f0 0
tail_b.3372 :
	slli	%r2 %r1 2
	add	%r7 %r1 %r1
	sw	%r1 %r11 0
tail_b.3387 :
	addi	%r2 %r1 -1
	mov	%r1 %r2
	j	iter_setup_dirvec_constants_loop.6
branching_b.2137 :
	beq	%r1 %r6 tail_b.3375
tail_b.3376 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f0
	mov	%r8 %r1
	sw.s	%r1 %f0 0
	lw	%r10 %r1 16
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r8 %r1 4
	sw.s	%r1 %f0 0
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r8 %r1 8
	sw.s	%r1 %f0 0
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r8 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.3377
tail_b.3375 :
	ilw.s	%r0 %f0 l.51
	mov	%r8 %r1
	sw.s	%r1 %f0 0
tail_b.3377 :
	slli	%r2 %r1 2
	add	%r7 %r1 %r1
	sw	%r1 %r8 0
	j	tail_b.3387
branching_b.2139 :
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	lw	%r10 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f7
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f6
	addi	%r9 %r1 8
	lw.s	%r1 %f1 0
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	neg.s	%f0 %f1
	mov	%r8 %r1
	sw.s	%r1 %f2 0
	lw	%r10 %r1 12
	bne	%r1 %r6 tail_b.3380
tail_b.3381 :
	addi	%r8 %r1 4
	sw.s	%r1 %f7 0
	addi	%r8 %r1 8
	sw.s	%r1 %f6 0
	addi	%r8 %r1 12
	sw.s	%r1 %f1 0
	j	branching_b.2140
tail_b.3380 :
	addi	%r9 %r1 8
	lw.s	%r1 %f3 0
	lw	%r10 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f5
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	lw	%r10 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f8 l.67
	div.s	%f8 %f0 %f0
	sub.s	%f0 %f7 %f0
	addi	%r8 %r1 4
	sw.s	%r1 %f0 0
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	lw	%r10 %r1 36
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f3
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	lw	%r10 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f0
	div.s	%f8 %f0 %f0
	sub.s	%f0 %f6 %f0
	addi	%r8 %r1 8
	sw.s	%r1 %f0 0
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	lw	%r10 %r1 36
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f5
	mov	%r9 %r1
	lw.s	%r1 %f3 0
	lw	%r10 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f5 %f0
	div.s	%f8 %f0 %f0
	sub.s	%f0 %f1 %f0
	addi	%r8 %r1 12
	sw.s	%r1 %f0 0
branching_b.2140 :
	fbne	%f2 %f4 tail_b.3383
tail_b.3382 :
	addi	%r0 %r1 1
	j	branching_b.2141
tail_b.3383 :
	addi	%r0 %r1 0
branching_b.2141 :
	beq	%r1 %r6 tail_b.3384
tail_b.3385 :
	j	tail_b.3386
tail_b.3384 :
	ilw.s	%r0 %f0 l.56
	div.s	%f2 %f0 %f0
	addi	%r8 %r1 16
	sw.s	%r1 %f0 0
tail_b.3386 :
	slli	%r2 %r1 2
	add	%r7 %r1 %r1
	sw	%r1 %r8 0
	j	tail_b.3387
postloop_b.92 :
tail_b.3389 :
	addi	%r3 %r1 -1
	mov	%r1 %r3
	j	init_dirvec_constants_loop.0
postloop_b.93 :
return_point.33 :
	retl
init_vecset_constants.0 :
preloop_b.94 :
	mov	%r1 %r5
init_vecset_constants_loop.0 :
	addi	%r0 %r3 0
	ble	%r3 %r5 preloop_b.95
tail_b.3394 :
	j	postloop_b.95
preloop_b.95 :
	slli	%r5 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r2 0
	addi	%r0 %r1 119
init_dirvec_constants_loop.1 :
	ble	%r3 %r1 tail_b.3391
tail_b.3392 :
	j	postloop_b.94
tail_b.3391 :
	slli	%r1 %r4 2
	add	%r2 %r4 %r4
	lw	%r4 %r4 0
	lw	%r0 %r6 0
	addi	%r6 %r6 -1
	sw	%r26 %r1 -12
	sw	%r26 %r2 -8
	sw	%r26 %r3 -4
	sw	%r26 %r5 0
	mov	%r6 %r2
	mov	%r4 %r1
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	iter_setup_dirvec_constants.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	mov	%r1 %r4
	lw	%r26 %r1 -12
	lw	%r26 %r2 -8
	lw	%r26 %r3 -4
	lw	%r26 %r5 0
	addi	%r1 %r1 -1
	j	init_dirvec_constants_loop.1
postloop_b.94 :
tail_b.3393 :
	addi	%r5 %r1 -1
	mov	%r1 %r5
	j	init_vecset_constants_loop.0
postloop_b.95 :
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
