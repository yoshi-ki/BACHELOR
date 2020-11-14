#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
l.99 :	# -200.000000
	.float	0xc3480000
l.98 :	# 200.000000
	.float	0x43480000
l.97 :	# 0.017453
	.float	0x3c8efa35
l.96 :	# 128.000000
	.float	0x43000000
l.95 :	# 0.900000
	.float	0x3f666666
l.94 :	# 150.000000
	.float	0x43160000
l.93 :	# -150.000000
	.float	0xc3160000
l.92 :	# 0.100000
	.float	0x3dcccccd
l.91 :	# 0.300000
	.float	0x3e99999a
l.90 :	# 0.150000
	.float	0x3e19999a
l.89 :	# -1.570796
	.float	0xbfc90fdb
l.88 :	# 30.000000
	.float	0x41f00000
l.87 :	# 0.333333
	.float	0x3eaaaaaa
l.86 :	# 0.200000
	.float	0x3e4ccccd
l.85 :	# 0.142857
	.float	0x3e124925
l.84 :	# 0.111111
	.float	0x3de38e38
l.83 :	# 0.089764
	.float	0x3db7d66e
l.82 :	# 0.060035
	.float	0x3d75e7c5
l.81 :	# 2.437500
	.float	0x401c0000
l.80 :	# 0.437500
	.float	0x3ee00000
l.79 :	# -2.000000
	.float	0xc0000000
l.78 :	# 15.000000
	.float	0x41700000
l.77 :	# 0.003906
	.float	0x3b800000
l.76 :	# 0.000100
	.float	0x38d1b717
l.75 :	# 3.141593
	.float	0x40490fdb
l.74 :	# 0.250000
	.float	0x3e800000
l.73 :	# 10.000000
	.float	0x41200000
l.72 :	# 20.000000
	.float	0x41a00000
l.71 :	# 0.050000
	.float	0x3d4ccccd
l.70 :	# 100000000.000000
	.float	0x4cbebc20
l.69 :	# 2.000000
	.float	0x40000000
l.68 :	# -0.100000
	.float	0xbdcccccd
l.67 :	# 0.010000
	.float	0x3c23d70a
l.66 :	# -0.200000
	.float	0xbe4ccccd
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
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 4
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 4
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
	addi	%r0 %r1 60
	addi	%r0 %r2 4
	jal	min_caml_create_array
	addi	%r0 %r1 288
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 300
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 312
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 324
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.52
	jal	min_caml_create_float_array
	addi	%r0 %r1 328
	addi	%r0 %r1 1
	addi	%r0 %r2 -1
	jal	min_caml_create_array
	addi	%r0 %r1 332
	addi	%r0 %r1 50
	addi	%r0 %r2 328
	jal	min_caml_create_array
	addi	%r0 %r1 532
	addi	%r0 %r1 1
	addi	%r0 %r2 328
	jal	min_caml_create_array
	addi	%r0 %r1 536
	addi	%r0 %r1 1
	addi	%r0 %r2 532
	jal	min_caml_create_array
	addi	%r0 %r1 540
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 544
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 548
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.53
	jal	min_caml_create_float_array
	addi	%r0 %r1 552
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 564
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 568
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 580
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 592
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 604
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 616
	addi	%r0 %r1 2
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 624
	addi	%r0 %r1 2
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 632
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 636
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 648
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 660
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 672
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 684
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 696
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 708
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 708
	addi	%r0 %r1 0
	addi	%r0 %r2 708
	jal	min_caml_create_array
	addi	%r0 %r1 708
	addi	%r0 %r1 708
	sw	%r27 %r1 0
	addi	%r0 %r1 708
	sw	%r27 %r1 4
	addi	%r27 %r27 8
	addi	%r0 %r1 716
	addi	%r0 %r1 0
	addi	%r0 %r2 708
	jal	min_caml_create_array
	addi	%r0 %r1 716
	addi	%r0 %r1 5
	addi	%r0 %r2 716
	jal	min_caml_create_array
	addi	%r0 %r1 736
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 736
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 748
	addi	%r0 %r1 60
	addi	%r0 %r2 736
	jal	min_caml_create_array
	addi	%r0 %r1 988
	addi	%r0 %r1 736
	sw	%r27 %r1 0
	addi	%r0 %r1 748
	sw	%r27 %r1 4
	addi	%r27 %r27 8
	addi	%r0 %r1 996
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 996
	addi	%r0 %r1 0
	addi	%r0 %r2 996
	jal	min_caml_create_array
	addi	%r0 %r1 996
	addi	%r0 %r1 996
	sw	%r27 %r1 0
	addi	%r0 %r1 996
	sw	%r27 %r1 4
	addi	%r27 %r27 8
	addi	%r0 %r1 1004
	addi	%r0 %r1 0
	sw	%r27 %r1 0
	addi	%r0 %r1 996
	sw	%r27 %r1 4
	ilw.s	%r0 %f0 l.51
	sw.s	%r27 %f0 8
	addi	%r27 %r27 12
	addi	%r0 %r1 1016
	addi	%r0 %r1 180
	addi	%r0 %r2 1004
	jal	min_caml_create_array
	addi	%r0 %r1 1736
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 1740
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1752
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1764
	addi	%r0 %r1 5
	addi	%r0 %r2 1752
	jal	min_caml_create_array
	addi	%r0 %r1 1784
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1796
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1808
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1820
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1832
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 1852
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 1872
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1884
	addi	%r0 %r1 5
	addi	%r0 %r2 1872
	jal	min_caml_create_array
	addi	%r0 %r1 1904
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1916
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1928
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1940
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1952
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1964
	addi	%r0 %r1 5
	addi	%r0 %r2 1952
	jal	min_caml_create_array
	addi	%r0 %r1 1984
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 1996
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2008
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2020
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2032
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2036
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2048
	addi	%r0 %r1 5
	addi	%r0 %r2 2036
	jal	min_caml_create_array
	addi	%r0 %r1 2068
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2080
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2092
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2104
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2116
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
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2160
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2172
	addi	%r0 %r1 5
	addi	%r0 %r2 2160
	jal	min_caml_create_array
	addi	%r0 %r1 2192
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2204
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2216
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2228
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2240
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2260
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2280
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2292
	addi	%r0 %r1 5
	addi	%r0 %r2 2280
	jal	min_caml_create_array
	addi	%r0 %r1 2312
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2324
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2336
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2348
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2360
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2372
	addi	%r0 %r1 5
	addi	%r0 %r2 2360
	jal	min_caml_create_array
	addi	%r0 %r1 2392
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2404
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2416
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2428
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2440
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2444
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2456
	addi	%r0 %r1 5
	addi	%r0 %r2 2444
	jal	min_caml_create_array
	addi	%r0 %r1 2476
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2488
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2500
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2512
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2524
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
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2568
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2580
	addi	%r0 %r1 5
	addi	%r0 %r2 2568
	jal	min_caml_create_array
	addi	%r0 %r1 2600
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2612
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2624
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2636
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2648
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2668
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2688
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2700
	addi	%r0 %r1 5
	addi	%r0 %r2 2688
	jal	min_caml_create_array
	addi	%r0 %r1 2720
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2732
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2744
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2756
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2768
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2780
	addi	%r0 %r1 5
	addi	%r0 %r2 2768
	jal	min_caml_create_array
	addi	%r0 %r1 2800
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2812
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2824
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2836
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2848
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2852
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2864
	addi	%r0 %r1 5
	addi	%r0 %r2 2852
	jal	min_caml_create_array
	addi	%r0 %r1 2884
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2896
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2908
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2920
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	jal	min_caml_create_float_array
	addi	%r0 %r1 2932
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
preloop_b.70 :
	addi	%r0 %r2 128
	addi	%r0 %r1 128
	sw	%r0 %r2 616
	sw	%r0 %r1 620
	addi	%r0 %r1 64
	sw	%r0 %r1 624
	addi	%r0 %r1 64
	sw	%r0 %r1 628
	ilw.s	%r0 %f1 l.96
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
	mov	%r1 %r5
	lw	%r0 %r1 616
	addi	%r1 %r6 -2
init_line_elements_loop.3 :
	ble	%r0 %r6 tail_b.3090
tail_b.3091 :
	mov	%r5 %r4
	j	postloop_b.70
tail_b.3090 :
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
	mov	%r0 %r2
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r10
	addi	%r0 %r1 5
	mov	%r0 %r2
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
	sw	%r26 %r2 0
	mov	%r0 %r2
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
	slli	%r6 %r1 2
	add	%r5 %r1 %r1
	sw	%r1 %r2 0
	addi	%r6 %r6 -1
	j	init_line_elements_loop.3
postloop_b.70 :
preloop_b.71 :
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
	mov	%r1 %r5
init_line_elements_loop.2 :
	ble	%r0 %r5 tail_b.3092
tail_b.3093 :
	j	postloop_b.71
tail_b.3092 :
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
	addi	%r0 %r2 5
	mov	%r2 %r31
	mov	%r1 %r2
	mov	%r31 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r7
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r7 %r2 4
	sw	%r2 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r7 %r2 8
	sw	%r2 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r7 %r1 12
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r7 %r2 16
	sw	%r2 %r1 0
	addi	%r0 %r1 5
	mov	%r0 %r2
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r9
	addi	%r0 %r1 5
	mov	%r0 %r2
	sw	%r26 %r28 0
	jal	min_caml_create_array
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
	mov	%r1 %r10
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r10 %r1 4
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r10 %r1 8
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r10 %r1 12
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r10 %r2 16
	sw	%r2 %r1 0
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
	mov	%r1 %r11
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r11 %r1 4
	sw	%r1 %r2 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r11 %r2 8
	sw	%r2 %r1 0
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
	addi	%r11 %r2 16
	sw	%r2 %r1 0
	addi	%r0 %r1 1
	mov	%r0 %r2
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r12
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
	mov	%r1 %r2
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r2 %r13 4
	sw	%r13 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r2 %r13 8
	sw	%r13 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	addi	%r2 %r13 12
	sw	%r13 %r1 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r13
	addi	%r2 %r1 16
	sw	%r1 %r13 0
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	sw	%r1 %r12 24
	sw	%r1 %r11 20
	sw	%r1 %r10 16
	sw	%r1 %r8 12
	sw	%r1 %r9 8
	sw	%r1 %r7 4
	sw	%r1 %r6 0
	mov	%r1 %r2
	slli	%r5 %r1 2
	add	%r3 %r1 %r1
	sw	%r1 %r2 0
	addi	%r5 %r5 -1
	j	init_line_elements_loop.2
postloop_b.71 :
preloop_b.72 :
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
	addi	%r1 %r9 -2
init_line_elements_loop.1 :
	ble	%r0 %r9 tail_b.3094
tail_b.3095 :
	mov	%r8 %r6
	j	postloop_b.72
tail_b.3094 :
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
	mov	%r0 %r2
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r12
	addi	%r0 %r1 5
	mov	%r0 %r2
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
	mov	%r0 %r2
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
	addi	%r9 %r9 -1
	j	init_line_elements_loop.1
postloop_b.72 :
preloop_b.73 :
	fin	%f0
	sw.s	%r0 %f0 288
	fin	%f0
	sw.s	%r0 %f0 292
	fin	%f0
	sw.s	%r0 %f0 296
	fin	%f0
	ilw.s	%r0 %f3 l.97
	mul.s	%f3 %f0 %f5
	mov.s	%f5 %f2
cos_loop.4 :
	ilw.s	%r0 %f0 l.54
	ilw.s	%r0 %f4 l.55
	fbg	%f4 %f2 branching_b.1938
tail_b.3096 :
	sub.s	%f4 %f2 %f2
	j	cos_loop.4
branching_b.1938 :
	ilw.s	%r0 %f1 l.51
	fbge	%f2 %f1 branching_b.1939
tail_b.3097 :
	add.s	%f4 %f2 %f2
	j	cos_loop.4
branching_b.1939 :
	fbg	%f0 %f2 branching_b.1943
branching_b.1940 :
	sub.s	%f0 %f2 %f2
	ilw.s	%r0 %f4 l.58
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f2 branching_b.1942
branching_b.1941 :
	sub.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.56
	ilw.s	%r0 %f4 l.59
	fbg	%f0 %f4 tail_b.3099
tail_b.3098 :
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
	add.s	%f0 %f2 %f0
	mul.s	%f2 %f0 %f4
	j	postloop_b.73
tail_b.3099 :
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
	mul.s	%f4 %f2 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f4
	j	postloop_b.73
branching_b.1942 :
	ilw.s	%r0 %f0 l.59
	fbg	%f2 %f0 tail_b.3101
tail_b.3100 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.73
tail_b.3101 :
	sub.s	%f2 %f1 %f6
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f7
	mul.s	%f2 %f1 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f1
	mul.s	%f2 %f7 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.56
	mul.s	%f6 %f0 %f0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.73
branching_b.1943 :
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f7 l.57
	fbg	%f7 %f2 branching_b.1945
branching_b.1944 :
	sub.s	%f2 %f0 %f0
	ilw.s	%r0 %f4 l.58
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.3103
tail_b.3102 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f2 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.73
tail_b.3103 :
	sub.s	%f0 %f7 %f2
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f2 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f2 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f2 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f2 %f6 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f4
	j	postloop_b.73
branching_b.1945 :
	ilw.s	%r0 %f0 l.59
	fbg	%f2 %f0 tail_b.3105
tail_b.3104 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f2 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.62
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f4
	j	postloop_b.73
tail_b.3105 :
	sub.s	%f2 %f7 %f2
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.63
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f2 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f2 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f6 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f4
postloop_b.73 :
preloop_b.74 :
	mov.s	%f5 %f6
sin_loop.4 :
	ilw.s	%r0 %f0 l.54
	ilw.s	%r0 %f2 l.55
	fbg	%f2 %f6 branching_b.1947
tail_b.3106 :
	sub.s	%f2 %f6 %f0
	mov.s	%f0 %f6
	j	sin_loop.4
branching_b.1947 :
	ilw.s	%r0 %f1 l.51
	fbge	%f6 %f1 branching_b.1948
tail_b.3107 :
	add.s	%f2 %f6 %f0
	mov.s	%f0 %f6
	j	sin_loop.4
branching_b.1948 :
	fbg	%f0 %f6 branching_b.1952
branching_b.1949 :
	sub.s	%f0 %f6 %f2
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f2 branching_b.1951
branching_b.1950 :
	sub.s	%f2 %f0 %f6
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.3109
tail_b.3108 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f7
	mul.s	%f5 %f2 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f2 l.65
	mul.s	%f6 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.56
	mul.s	%f6 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f5
	j	postloop_b.74
tail_b.3109 :
	sub.s	%f6 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.56
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f5
	j	postloop_b.74
branching_b.1951 :
	ilw.s	%r0 %f0 l.59
	fbg	%f2 %f0 tail_b.3111
tail_b.3110 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f2 %f0 %f6
	ilw.s	%r0 %f0 l.64
	mul.s	%f2 %f0 %f7
	mul.s	%f5 %f6 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f6 l.65
	mul.s	%f2 %f6 %f6
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.56
	mul.s	%f2 %f0 %f0
	mul.s	%f5 %f6 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f5
	j	postloop_b.74
tail_b.3111 :
	sub.s	%f2 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f2 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.56
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f5
	j	postloop_b.74
branching_b.1952 :
	ilw.s	%r0 %f2 l.56
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f6 branching_b.1954
branching_b.1953 :
	sub.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.3113
tail_b.3112 :
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
	mul.s	%f6 %f2 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f2 %f0 %f5
	j	postloop_b.74
tail_b.3113 :
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
	add.s	%f0 %f2 %f0
	mul.s	%f2 %f0 %f5
	j	postloop_b.74
branching_b.1954 :
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.3115
tail_b.3114 :
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
	mul.s	%f6 %f2 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f2 %f0 %f5
	j	postloop_b.74
tail_b.3115 :
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
	add.s	%f0 %f2 %f0
	mul.s	%f2 %f0 %f5
postloop_b.74 :
preloop_b.75 :
	fin	%f0
	mul.s	%f3 %f0 %f6
	mov.s	%f6 %f0
cos_loop.3 :
	ilw.s	%r0 %f2 l.54
	ilw.s	%r0 %f7 l.55
	fbg	%f7 %f0 branching_b.1956
tail_b.3116 :
	sub.s	%f7 %f0 %f0
	j	cos_loop.3
branching_b.1956 :
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 branching_b.1957
tail_b.3117 :
	add.s	%f7 %f0 %f0
	j	cos_loop.3
branching_b.1957 :
	fbg	%f2 %f0 branching_b.1961
branching_b.1958 :
	sub.s	%f2 %f0 %f0
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f8 l.57
	fbg	%f8 %f0 branching_b.1960
branching_b.1959 :
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f1 l.56
	ilw.s	%r0 %f2 l.59
	fbg	%f0 %f2 tail_b.3119
tail_b.3118 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f7 l.60
	ilw.s	%r0 %f2 l.61
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f2 %f7
	ilw.s	%r0 %f2 l.62
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f2 %f2
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f1 %f0 %f7
	j	postloop_b.75
tail_b.3119 :
	sub.s	%f0 %f8 %f7
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f2
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f9
	mul.s	%f8 %f2 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f1 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f7
	j	postloop_b.75
branching_b.1960 :
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.3121
tail_b.3120 :
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
	mul.s	%f7 %f0 %f7
	j	postloop_b.75
tail_b.3121 :
	sub.s	%f0 %f8 %f8
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.64
	mul.s	%f8 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f8 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f8 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f7
	j	postloop_b.75
branching_b.1961 :
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f0 branching_b.1963
branching_b.1962 :
	sub.s	%f0 %f2 %f2
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f0 l.59
	fbg	%f2 %f0 tail_b.3123
tail_b.3122 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f2 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f7
	j	postloop_b.75
tail_b.3123 :
	sub.s	%f2 %f1 %f10
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.63
	mul.s	%f10 %f1 %f2
	ilw.s	%r0 %f1 l.64
	mul.s	%f10 %f1 %f9
	mul.s	%f0 %f2 %f1
	add.s	%f1 %f9 %f1
	ilw.s	%r0 %f2 l.65
	mul.s	%f10 %f2 %f2
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f2 %f2
	mul.s	%f10 %f7 %f1
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f7
	j	postloop_b.75
branching_b.1963 :
	ilw.s	%r0 %f2 l.59
	fbg	%f0 %f2 tail_b.3125
tail_b.3124 :
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
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f7
	j	postloop_b.75
tail_b.3125 :
	sub.s	%f0 %f1 %f8
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.65
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f8 %f7 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f7
postloop_b.75 :
preloop_b.76 :
	mov.s	%f6 %f9
sin_loop.3 :
	ilw.s	%r0 %f0 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f9 branching_b.1965
tail_b.3126 :
	sub.s	%f1 %f9 %f0
	mov.s	%f0 %f9
	j	sin_loop.3
branching_b.1965 :
	ilw.s	%r0 %f2 l.51
	fbge	%f9 %f2 branching_b.1966
tail_b.3127 :
	add.s	%f1 %f9 %f9
	j	sin_loop.3
branching_b.1966 :
	fbg	%f0 %f9 branching_b.1970
branching_b.1967 :
	sub.s	%f0 %f9 %f1
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f2 l.57
	fbg	%f2 %f1 branching_b.1969
branching_b.1968 :
	sub.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.59
	fbg	%f9 %f0 tail_b.3129
tail_b.3128 :
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f1
	mul.s	%f2 %f8 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f9 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f8
	ilw.s	%r0 %f0 l.56
	mul.s	%f9 %f0 %f1
	mul.s	%f2 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f6
	j	postloop_b.76
tail_b.3129 :
	sub.s	%f9 %f2 %f0
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
	mul.s	%f6 %f0 %f6
	j	postloop_b.76
branching_b.1969 :
	ilw.s	%r0 %f0 l.59
	fbg	%f1 %f0 tail_b.3131
tail_b.3130 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f1 %f0 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.65
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.56
	mul.s	%f1 %f2 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f6
	j	postloop_b.76
tail_b.3131 :
	sub.s	%f1 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f2 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.56
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f6
	j	postloop_b.76
branching_b.1970 :
	ilw.s	%r0 %f2 l.56
	ilw.s	%r0 %f6 l.57
	fbg	%f6 %f9 branching_b.1972
branching_b.1971 :
	sub.s	%f9 %f0 %f0
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.3133
tail_b.3132 :
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
	mul.s	%f0 %f2 %f6
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f2 %f0 %f6
	j	postloop_b.76
tail_b.3133 :
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
	add.s	%f0 %f2 %f0
	mul.s	%f2 %f0 %f6
	j	postloop_b.76
branching_b.1972 :
	ilw.s	%r0 %f0 l.59
	fbg	%f9 %f0 tail_b.3135
tail_b.3134 :
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
	mul.s	%f9 %f2 %f0
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f6
	j	postloop_b.76
tail_b.3135 :
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
	add.s	%f0 %f2 %f0
	mul.s	%f2 %f0 %f6
postloop_b.76 :
preloop_b.77 :
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
	ilw.s	%r0 %f2 l.51
	sw.s	%r0 %f2 664
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
	mul.s	%f3 %f0 %f4
	mov.s	%f4 %f5
sin_loop.2 :
	ilw.s	%r0 %f0 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f5 branching_b.1974
tail_b.3136 :
	sub.s	%f1 %f5 %f0
	mov.s	%f0 %f5
	j	sin_loop.2
branching_b.1974 :
	fbge	%f5 %f2 branching_b.1975
tail_b.3137 :
	add.s	%f1 %f5 %f5
	j	sin_loop.2
branching_b.1975 :
	fbg	%f0 %f5 branching_b.1979
branching_b.1976 :
	sub.s	%f0 %f5 %f7
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f7 branching_b.1978
branching_b.1977 :
	sub.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.3139
tail_b.3138 :
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
	j	postloop_b.77
tail_b.3139 :
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
	j	postloop_b.77
branching_b.1978 :
	ilw.s	%r0 %f0 l.59
	fbg	%f7 %f0 tail_b.3141
tail_b.3140 :
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
	j	postloop_b.77
tail_b.3141 :
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
	j	postloop_b.77
branching_b.1979 :
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f5 branching_b.1981
branching_b.1980 :
	sub.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.3143
tail_b.3142 :
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
	j	postloop_b.77
tail_b.3143 :
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
	j	postloop_b.77
branching_b.1981 :
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.3145
tail_b.3144 :
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
	j	postloop_b.77
tail_b.3145 :
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
postloop_b.77 :
preloop_b.78 :
	neg.s	%f0 %f0
	sw.s	%r0 %f0 316
	fin	%f0
	mul.s	%f3 %f0 %f6
	mov.s	%f4 %f0
cos_loop.2 :
	ilw.s	%r0 %f7 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f0 branching_b.1983
tail_b.3146 :
	sub.s	%f1 %f0 %f0
	j	cos_loop.2
branching_b.1983 :
	fbge	%f0 %f2 branching_b.1984
tail_b.3147 :
	add.s	%f1 %f0 %f0
	j	cos_loop.2
branching_b.1984 :
	fbg	%f7 %f0 branching_b.1988
branching_b.1985 :
	sub.s	%f7 %f0 %f0
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f0 branching_b.1987
branching_b.1986 :
	sub.s	%f0 %f7 %f4
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f0 l.59
	fbg	%f4 %f0 tail_b.3149
tail_b.3148 :
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
	j	postloop_b.78
tail_b.3149 :
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
	j	postloop_b.78
branching_b.1987 :
	ilw.s	%r0 %f4 l.59
	fbg	%f0 %f4 tail_b.3151
tail_b.3150 :
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
	j	postloop_b.78
tail_b.3151 :
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
	j	postloop_b.78
branching_b.1988 :
	ilw.s	%r0 %f4 l.56
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f0 branching_b.1990
branching_b.1989 :
	sub.s	%f0 %f7 %f0
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f7 l.59
	fbg	%f0 %f7 tail_b.3153
tail_b.3152 :
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
	j	postloop_b.78
tail_b.3153 :
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
	j	postloop_b.78
branching_b.1990 :
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.3155
tail_b.3154 :
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
	j	postloop_b.78
tail_b.3155 :
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
postloop_b.78 :
preloop_b.79 :
	mov.s	%f6 %f9
sin_loop.1 :
	ilw.s	%r0 %f8 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f9 branching_b.1992
tail_b.3156 :
	sub.s	%f0 %f9 %f9
	j	sin_loop.1
branching_b.1992 :
	fbge	%f9 %f2 branching_b.1993
tail_b.3157 :
	add.s	%f0 %f9 %f0
	mov.s	%f0 %f9
	j	sin_loop.1
branching_b.1993 :
	fbg	%f8 %f9 branching_b.1997
branching_b.1994 :
	sub.s	%f8 %f9 %f7
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f7 branching_b.1996
branching_b.1995 :
	sub.s	%f7 %f8 %f1
	ilw.s	%r0 %f7 l.59
	fbg	%f1 %f7 tail_b.3159
tail_b.3158 :
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
	j	postloop_b.79
tail_b.3159 :
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
	j	postloop_b.79
branching_b.1996 :
	ilw.s	%r0 %f1 l.59
	fbg	%f7 %f1 tail_b.3161
tail_b.3160 :
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
	j	postloop_b.79
tail_b.3161 :
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
	j	postloop_b.79
branching_b.1997 :
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f9 branching_b.1999
branching_b.1998 :
	sub.s	%f9 %f8 %f5
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.3163
tail_b.3162 :
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
	j	postloop_b.79
tail_b.3163 :
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
	j	postloop_b.79
branching_b.1999 :
	ilw.s	%r0 %f0 l.59
	fbg	%f9 %f0 tail_b.3165
tail_b.3164 :
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
	j	postloop_b.79
tail_b.3165 :
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
postloop_b.79 :
preloop_b.80 :
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 312
cos_loop.1 :
	ilw.s	%r0 %f1 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f6 branching_b.2001
tail_b.3166 :
	sub.s	%f0 %f6 %f0
	mov.s	%f0 %f6
	j	cos_loop.1
branching_b.2001 :
	fbge	%f6 %f2 branching_b.2002
tail_b.3167 :
	add.s	%f0 %f6 %f0
	mov.s	%f0 %f6
	j	cos_loop.1
branching_b.2002 :
	fbg	%f1 %f6 branching_b.2006
branching_b.2003 :
	sub.s	%f1 %f6 %f5
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f5 branching_b.2005
branching_b.2004 :
	sub.s	%f5 %f1 %f5
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f1 l.59
	fbg	%f5 %f1 tail_b.3169
tail_b.3168 :
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
	j	postloop_b.80
tail_b.3169 :
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
	j	postloop_b.80
branching_b.2005 :
	ilw.s	%r0 %f1 l.59
	fbg	%f5 %f1 tail_b.3171
tail_b.3170 :
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
	j	postloop_b.80
tail_b.3171 :
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
	j	postloop_b.80
branching_b.2006 :
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f6 branching_b.2008
branching_b.2007 :
	sub.s	%f6 %f1 %f6
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.3173
tail_b.3172 :
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
	j	postloop_b.80
tail_b.3173 :
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
	j	postloop_b.80
branching_b.2008 :
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.3175
tail_b.3174 :
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
	j	postloop_b.80
tail_b.3175 :
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
postloop_b.80 :
preloop_b.81 :
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 320
	fin	%f0
	sw.s	%r0 %f0 324
	addi	%r0 %r5 0
	mov	%r5 %r8
	addi	%r0 %r2 60
read_object_loop.1 :
	bl	%r8 %r2 branching_b.2010
tail_b.3231 :
	j	postloop_b.81
branching_b.2010 :
	in	%r13
	addi	%r0 %r1 -1
	bne	%r13 %r1 branching_b.2011
tail_b.3228 :
	addi	%r0 %r1 0
	j	branching_b.2039
branching_b.2011 :
	in	%r12
	in	%r14
	in	%r7
	addi	%r0 %r11 3
	ilw.s	%r0 %f0 l.51
	mov	%r11 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r9
	mov	%r30 %r11
	fin	%f0
	mov	%r9 %r1
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r9 %r1 4
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r9 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r15
	fin	%f0
	mov	%r15 %r1
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r15 %r1 4
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r15 %r1 8
	sw.s	%r1 %f0 0
	fin	%f0
	fbge	%f0 %f2 tail_b.3177
tail_b.3176 :
	addi	%r0 %r17 1
	j	branching_b.2012
tail_b.3177 :
	addi	%r0 %r17 0
branching_b.2012 :
	addi	%r0 %r16 2
	ilw.s	%r0 %f0 l.51
	mov	%r16 %r1
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r18
	mov	%r30 %r16
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
	mov	%r1 %r19
	fin	%f0
	mov	%r19 %r1
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r19 %r1 4
	sw.s	%r1 %f0 0
	fin	%f0
	addi	%r19 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r10
	bne	%r7 %r0 tail_b.3178
tail_b.3179 :
	j	branching_b.2013
tail_b.3178 :
	fin	%f0
	mul.s	%f3 %f0 %f0
	mov	%r10 %r1
	sw.s	%r1 %f0 0
	fin	%f0
	mul.s	%f3 %f0 %f0
	addi	%r10 %r1 4
	sw.s	%r1 %f0 0
	fin	%f0
	mul.s	%f3 %f0 %f0
	addi	%r10 %r1 8
	sw.s	%r1 %f0 0
branching_b.2013 :
	beq	%r12 %r16 tail_b.3180
tail_b.3181 :
	mov	%r17 %r20
	j	branching_b.2014
tail_b.3180 :
	addi	%r0 %r20 1
branching_b.2014 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r27 %r21
	addi	%r27 %r27 44
	sw	%r21 %r1 40
	sw	%r21 %r10 36
	sw	%r21 %r19 32
	sw	%r21 %r18 28
	sw	%r21 %r20 24
	sw	%r21 %r15 20
	sw	%r21 %r9 16
	sw	%r21 %r7 12
	sw	%r21 %r14 8
	sw	%r21 %r12 4
	sw	%r21 %r13 0
	mov	%r21 %r1
	slli	%r8 %r13 2
	addi	%r13 %r13 48
	sw	%r13 %r1 0
	beq	%r12 %r11 branching_b.2015
branching_b.2033 :
	beq	%r12 %r16 branching_b.2034
tail_b.3224 :
	j	branching_b.2038
branching_b.2034 :
	beq	%r17 %r0 tail_b.3216
tail_b.3217 :
	addi	%r0 %r11 0
	j	branching_b.2035
tail_b.3216 :
	addi	%r0 %r11 1
	j	branching_b.2035
branching_b.2015 :
	mov	%r9 %r1
	lw.s	%r1 %f1 0
	fbne	%f1 %f2 tail_b.3183
tail_b.3182 :
	addi	%r0 %r1 1
	j	branching_b.2016
tail_b.3183 :
	addi	%r0 %r1 0
branching_b.2016 :
	beq	%r1 %r0 branching_b.2017
tail_b.3192 :
	ilw.s	%r0 %f0 l.51
	j	branching_b.2021
branching_b.2017 :
	fbne	%f1 %f2 tail_b.3185
tail_b.3184 :
	addi	%r0 %r1 1
	j	branching_b.2018
tail_b.3185 :
	addi	%r0 %r1 0
branching_b.2018 :
	beq	%r1 %r0 branching_b.2019
tail_b.3190 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.3191
branching_b.2019 :
	fbge	%f2 %f1 tail_b.3187
tail_b.3186 :
	addi	%r0 %r1 1
	j	branching_b.2020
tail_b.3187 :
	addi	%r0 %r1 0
branching_b.2020 :
	beq	%r1 %r0 tail_b.3188
tail_b.3189 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.3191
tail_b.3188 :
	ilw.s	%r0 %f0 l.58
tail_b.3191 :
	mul.s	%f1 %f1 %f1
	div.s	%f1 %f0 %f0
branching_b.2021 :
	mov	%r9 %r1
	sw.s	%r1 %f0 0
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3194
tail_b.3193 :
	addi	%r0 %r1 1
	j	branching_b.2022
tail_b.3194 :
	addi	%r0 %r1 0
branching_b.2022 :
	beq	%r1 %r0 branching_b.2023
tail_b.3203 :
	ilw.s	%r0 %f0 l.51
	j	branching_b.2027
branching_b.2023 :
	fbne	%f0 %f2 tail_b.3196
tail_b.3195 :
	addi	%r0 %r1 1
	j	branching_b.2024
tail_b.3196 :
	addi	%r0 %r1 0
branching_b.2024 :
	beq	%r1 %r0 branching_b.2025
tail_b.3201 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.3202
branching_b.2025 :
	fbge	%f2 %f0 tail_b.3198
tail_b.3197 :
	addi	%r0 %r1 1
	j	branching_b.2026
tail_b.3198 :
	addi	%r0 %r1 0
branching_b.2026 :
	beq	%r1 %r0 tail_b.3199
tail_b.3200 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.3202
tail_b.3199 :
	ilw.s	%r0 %f1 l.58
tail_b.3202 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
branching_b.2027 :
	addi	%r9 %r1 4
	sw.s	%r1 %f0 0
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3205
tail_b.3204 :
	addi	%r0 %r1 1
	j	branching_b.2028
tail_b.3205 :
	addi	%r0 %r1 0
branching_b.2028 :
	beq	%r1 %r0 branching_b.2029
tail_b.3214 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.3215
branching_b.2029 :
	fbne	%f0 %f2 tail_b.3207
tail_b.3206 :
	addi	%r0 %r1 1
	j	branching_b.2030
tail_b.3207 :
	addi	%r0 %r1 0
branching_b.2030 :
	beq	%r1 %r0 branching_b.2031
tail_b.3212 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.3213
branching_b.2031 :
	fbge	%f2 %f0 tail_b.3209
tail_b.3208 :
	addi	%r0 %r1 1
	j	branching_b.2032
tail_b.3209 :
	addi	%r0 %r1 0
branching_b.2032 :
	beq	%r1 %r0 tail_b.3210
tail_b.3211 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.3213
tail_b.3210 :
	ilw.s	%r0 %f1 l.58
tail_b.3213 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
tail_b.3215 :
	addi	%r9 %r1 8
	sw.s	%r1 %f0 0
	j	branching_b.2038
branching_b.2035 :
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f0 %f1
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f2 tail_b.3219
tail_b.3218 :
	addi	%r0 %r1 1
	j	branching_b.2036
tail_b.3219 :
	addi	%r0 %r1 0
branching_b.2036 :
	beq	%r1 %r0 branching_b.2037
tail_b.3222 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.3223
branching_b.2037 :
	beq	%r11 %r0 tail_b.3220
tail_b.3221 :
	ilw.s	%r0 %f1 l.58
	div.s	%f0 %f1 %f0
	j	tail_b.3223
tail_b.3220 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f0
tail_b.3223 :
	mov	%r9 %r1
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	mov	%r9 %r1
	sw.s	%r1 %f1 0
	addi	%r9 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r9 %r1 4
	sw.s	%r1 %f1 0
	addi	%r9 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r9 %r1 8
	sw.s	%r1 %f0 0
branching_b.2038 :
	bne	%r7 %r0 tail_b.3225
tail_b.3226 :
	j	tail_b.3227
tail_b.3225 :
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	sw	%r26 %r4 0
	sw	%r26 %r5 -4
	sw	%r26 %r2 -8
	sw	%r26 %r8 -12
	sw	%r26 %r9 -16
	sw	%r26 %r10 -20
	sw	%r26 %r3 -24
	sw	%r26 %r6 -28
	sw.s	%r26 %f3 -32
	sw.s	%r26 %f2 -36
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	cos.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	mov.s	%f0 %f7
	lw	%r26 %r10 -20
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	sw	%r26 %r10 -40
	sw.s	%r26 %f7 -44
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	sin.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw	%r26 %r10 -40
	addi	%r10 %r1 4
	lw.s	%r1 %f1 0
	sw	%r26 %r10 -48
	sw.s	%r26 %f0 -52
	mov.s	%f1 %f0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	cos.0
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	mov.s	%f0 %f6
	lw	%r26 %r10 -48
	addi	%r10 %r1 4
	lw.s	%r1 %f1 0
	sw	%r26 %r10 -56
	sw.s	%r26 %f6 -60
	mov.s	%f1 %f0
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	sin.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	mov.s	%f0 %f14
	lw	%r26 %r10 -56
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	sw	%r26 %r10 -64
	sw.s	%r26 %f14 -68
	mov.s	%f1 %f0
	sw	%r26 %r28 -72
	addi	%r26 %r26 -76
	jal	cos.0
	addi	%r26 %r26 76
	lw	%r26 %r28 -72
	mov.s	%f0 %f9
	lw	%r26 %r10 -64
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	sw	%r26 %r10 -72
	sw.s	%r26 %f9 -76
	mov.s	%f1 %f0
	sw	%r26 %r28 -80
	addi	%r26 %r26 -84
	jal	sin.0
	addi	%r26 %r26 84
	lw	%r26 %r28 -80
	mov.s	%f0 %f4
	lw.s	%r26 %f6 -60
	lw.s	%r26 %f9 -76
	mul.s	%f9 %f6 %f10
	lw.s	%r26 %f0 -52
	lw.s	%r26 %f14 -68
	mul.s	%f14 %f0 %f1
	mul.s	%f9 %f1 %f5
	lw.s	%r26 %f7 -44
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
	lw	%r26 %r9 -16
	mov	%r9 %r1
	lw.s	%r1 %f7 0
	addi	%r9 %r1 4
	lw.s	%r1 %f6 0
	addi	%r9 %r1 8
	lw.s	%r1 %f14 0
	mul.s	%f10 %f10 %f0
	mul.s	%f0 %f7 %f4
	mul.s	%f12 %f12 %f0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f4 %f4
	mul.s	%f1 %f1 %f0
	mul.s	%f0 %f14 %f0
	add.s	%f0 %f4 %f0
	mov	%r9 %r1
	sw.s	%r1 %f0 0
	mul.s	%f11 %f11 %f0
	mul.s	%f0 %f7 %f4
	mul.s	%f8 %f8 %f0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f9 %f9 %f4
	mul.s	%f4 %f14 %f4
	add.s	%f4 %f0 %f0
	addi	%r9 %r1 4
	sw.s	%r1 %f0 0
	mul.s	%f5 %f5 %f0
	mul.s	%f0 %f7 %f4
	mul.s	%f13 %f13 %f0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f4 %f4
	mul.s	%f15 %f15 %f0
	mul.s	%f0 %f14 %f0
	add.s	%f0 %f4 %f0
	addi	%r9 %r1 8
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f4 l.69
	mul.s	%f11 %f7 %f0
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f6 %f16
	mul.s	%f13 %f16 %f16
	add.s	%f16 %f0 %f16
	mul.s	%f9 %f14 %f0
	mul.s	%f15 %f0 %f0
	add.s	%f0 %f16 %f0
	mul.s	%f0 %f4 %f0
	lw	%r26 %r10 -72
	mov	%r10 %r1
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
	addi	%r10 %r1 4
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
	addi	%r10 %r1 8
	sw.s	%r1 %f0 0
	lw	%r26 %r4 0
	lw	%r26 %r5 -4
	lw	%r26 %r2 -8
	lw	%r26 %r8 -12
	lw	%r26 %r3 -24
	lw	%r26 %r6 -28
	lw.s	%r26 %f3 -32
	lw.s	%r26 %f2 -36
tail_b.3227 :
	addi	%r0 %r1 1
branching_b.2039 :
	beq	%r1 %r0 tail_b.3229
tail_b.3230 :
	addi	%r8 %r1 1
	mov	%r1 %r8
	j	read_object_loop.1
tail_b.3229 :
	sw	%r0 %r8 0
postloop_b.81 :
preloop_b.82 :
	mov	%r5 %r8
	addi	%r0 %r2 -1
read_and_network_loop.1 :
	sw	%r26 %r4 -80
	sw	%r26 %r5 -84
	sw	%r26 %r2 -88
	sw	%r26 %r8 -92
	sw	%r26 %r3 -96
	sw	%r26 %r6 -100
	sw.s	%r26 %f2 -104
	mov	%r0 %r1
	sw	%r26 %r28 -108
	addi	%r26 %r26 -112
	jal	read_net_item.0
	addi	%r26 %r26 112
	lw	%r26 %r28 -108
	mov	%r1 %r7
	mov	%r7 %r1
	lw	%r1 %r1 0
	lw	%r26 %r4 -80
	lw	%r26 %r5 -84
	lw	%r26 %r2 -88
	lw	%r26 %r8 -92
	lw	%r26 %r3 -96
	lw	%r26 %r6 -100
	lw.s	%r26 %f2 -104
	beq	%r1 %r2 tail_b.3232
tail_b.3233 :
	slli	%r8 %r1 2
	addi	%r1 %r1 332
	sw	%r1 %r7 0
	addi	%r8 %r1 1
	mov	%r1 %r8
	j	read_and_network_loop.1
tail_b.3232 :
postloop_b.82 :
branching_b.2041 :
	sw	%r26 %r4 -108
	sw	%r26 %r5 -112
	sw	%r26 %r3 -116
	sw	%r26 %r6 -120
	sw.s	%r26 %f2 -124
	mov	%r0 %r1
	sw	%r26 %r28 -128
	addi	%r26 %r26 -132
	jal	read_or_network.0
	addi	%r26 %r26 132
	lw	%r26 %r28 -128
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
	lw	%r26 %r4 -108
	lw	%r26 %r5 -112
	lw	%r26 %r3 -116
	lw	%r26 %r6 -120
	lw.s	%r26 %f2 -124
	bl	%r0 %r11 tail_b.3234
branching_b.2042 :
	bl	%r0 %r1 tail_b.3235
tail_b.3236 :
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.2043
tail_b.3235 :
	addi	%r1 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.2043
tail_b.3234 :
	addi	%r11 %r7 48
	out	%r7
	addi	%r1 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
branching_b.2043 :
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
	bl	%r0 %r2 tail_b.3237
branching_b.2044 :
	bl	%r0 %r9 tail_b.3238
tail_b.3239 :
	addi	%r7 %r1 48
	out	%r1
	j	preloop_b.83
tail_b.3238 :
	addi	%r9 %r1 48
	out	%r1
	addi	%r7 %r1 48
	out	%r1
	j	preloop_b.83
tail_b.3237 :
	addi	%r2 %r1 48
	out	%r1
	addi	%r9 %r1 48
	out	%r1
	addi	%r7 %r1 48
	out	%r1
preloop_b.83 :
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
	addi	%r0 %r2 4
	mov	%r2 %r8
create_dirvecs_loop.1 :
	ble	%r0 %r8 tail_b.3240
tail_b.3241 :
	j	postloop_b.83
tail_b.3240 :
	addi	%r0 %r7 120
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -128
	jal	min_caml_create_float_array
	lw	%r26 %r28 -128
	mov	%r1 %r9
	lw	%r0 %r1 0
	sw	%r26 %r2 -128
	mov	%r9 %r2
	sw	%r26 %r28 -132
	jal	min_caml_create_array
	lw	%r26 %r28 -132
	mov	%r2 %r9
	lw	%r26 %r2 -128
	mov	%r27 %r10
	addi	%r27 %r27 8
	sw	%r10 %r1 4
	sw	%r10 %r9 0
	mov	%r10 %r1
	sw	%r26 %r2 -128
	mov	%r1 %r2
	mov	%r7 %r1
	sw	%r26 %r28 -132
	jal	min_caml_create_array
	lw	%r26 %r28 -132
	lw	%r26 %r2 -128
	slli	%r8 %r7 2
	addi	%r7 %r7 716
	sw	%r7 %r1 0
	slli	%r8 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r7 0
	addi	%r0 %r1 118
	sw	%r26 %r4 -128
	sw	%r26 %r5 -132
	sw	%r26 %r2 -136
	sw	%r26 %r8 -140
	sw	%r26 %r3 -144
	sw	%r26 %r6 -148
	sw.s	%r26 %f2 -152
	mov	%r1 %r2
	mov	%r7 %r1
	sw	%r26 %r28 -156
	addi	%r26 %r26 -160
	jal	create_dirvec_elements.0
	addi	%r26 %r26 160
	lw	%r26 %r28 -156
	lw	%r26 %r8 -140
	addi	%r8 %r1 -1
	mov	%r1 %r8
	lw	%r26 %r4 -128
	lw	%r26 %r5 -132
	lw	%r26 %r2 -136
	lw	%r26 %r3 -144
	lw	%r26 %r6 -148
	lw.s	%r26 %f2 -152
	j	create_dirvecs_loop.1
postloop_b.83 :
preloop_b.84 :
	addi	%r0 %r1 9
	mov	%r1 %r7
	mov	%r5 %r8
	mov	%r5 %r9
calc_dirvec_rows_loop.1 :
	ble	%r0 %r7 branching_b.2047
tail_b.3245 :
	j	postloop_b.84
branching_b.2047 :
	mtc1	%r7 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.95
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 4
	sw	%r26 %r4 -156
	sw	%r26 %r5 -160
	sw	%r26 %r2 -164
	sw	%r26 %r7 -168
	sw	%r26 %r8 -172
	sw	%r26 %r9 -176
	sw	%r26 %r3 -180
	sw	%r26 %r6 -184
	sw.s	%r26 %f2 -188
	mov	%r9 %r3
	mov	%r8 %r2
	sw	%r26 %r28 -192
	addi	%r26 %r26 -196
	jal	calc_dirvecs.0
	addi	%r26 %r26 196
	lw	%r26 %r28 -192
	lw	%r26 %r7 -168
	addi	%r7 %r7 -1
	lw	%r26 %r8 -172
	addi	%r8 %r8 2
	addi	%r0 %r1 5
	lw	%r26 %r4 -156
	lw	%r26 %r5 -160
	lw	%r26 %r2 -164
	lw	%r26 %r9 -176
	lw	%r26 %r3 -180
	lw	%r26 %r6 -184
	lw.s	%r26 %f2 -188
	ble	%r1 %r8 tail_b.3242
tail_b.3243 :
	j	tail_b.3244
tail_b.3242 :
	addi	%r8 %r8 -5
tail_b.3244 :
	addi	%r9 %r1 4
	mov	%r1 %r9
	j	calc_dirvec_rows_loop.1
postloop_b.84 :
preloop_b.85 :
	mov	%r2 %r8
init_vecset_constants_loop.1 :
	ble	%r0 %r8 tail_b.3246
tail_b.3247 :
	j	postloop_b.85
tail_b.3246 :
	slli	%r8 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r7 0
	addi	%r0 %r1 119
	sw	%r26 %r4 -192
	sw	%r26 %r5 -196
	sw	%r26 %r2 -200
	sw	%r26 %r8 -204
	sw	%r26 %r3 -208
	sw	%r26 %r6 -212
	sw.s	%r26 %f2 -216
	mov	%r1 %r2
	mov	%r7 %r1
	sw	%r26 %r28 -220
	addi	%r26 %r26 -224
	jal	init_dirvec_constants.0
	addi	%r26 %r26 224
	lw	%r26 %r28 -220
	lw	%r26 %r8 -204
	addi	%r8 %r1 -1
	mov	%r1 %r8
	lw	%r26 %r4 -192
	lw	%r26 %r5 -196
	lw	%r26 %r2 -200
	lw	%r26 %r3 -208
	lw	%r26 %r6 -212
	lw.s	%r26 %f2 -216
	j	init_vecset_constants_loop.1
postloop_b.85 :
preloop_b.86 :
	lw.s	%r0 %f0 312
	sw.s	%r0 %f0 736
	lw.s	%r0 %f0 316
	sw.s	%r0 %f0 740
	lw.s	%r0 %f0 320
	sw.s	%r0 %f0 744
	lw	%r0 %r1 0
	addi	%r1 %r8 -1
iter_setup_dirvec_constants_loop.5 :
	ble	%r0 %r8 branching_b.2050
tail_b.3297 :
	j	postloop_b.86
branching_b.2050 :
	slli	%r8 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r9 0
	lw	%r0 %r7 992
	lw	%r0 %r10 988
	lw	%r9 %r1 4
	addi	%r0 %r11 1
	beq	%r1 %r11 branching_b.2051
branching_b.2069 :
	addi	%r0 %r11 2
	beq	%r1 %r11 branching_b.2070
branching_b.2072 :
	addi	%r0 %r1 5
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -220
	jal	min_caml_create_float_array
	lw	%r26 %r28 -220
	mov	%r1 %r11
	mov	%r10 %r1
	lw.s	%r1 %f7 0
	addi	%r10 %r1 4
	lw.s	%r1 %f6 0
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f7 %f7 %f1
	lw	%r9 %r1 16
	lw.s	%r1 %f3 0
	mul.s	%f3 %f1 %f3
	mul.s	%f6 %f6 %f1
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f0 %f0 %f4
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f1 %f5
	lw	%r9 %r1 12
	beq	%r1 %r0 tail_b.3287
tail_b.3288 :
	mul.s	%f0 %f6 %f1
	lw	%r9 %r1 36
	lw.s	%r1 %f3 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f5 %f3
	mul.s	%f7 %f0 %f1
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f6 %f7 %f3
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f5
	j	branching_b.2073
tail_b.3287 :
	j	branching_b.2073
branching_b.2070 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -220
	jal	min_caml_create_float_array
	lw	%r26 %r28 -220
	mov	%r1 %r11
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	lw	%r9 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r10 %r1 4
	lw.s	%r1 %f1 0
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f3
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f1
	fbge	%f2 %f1 tail_b.3283
tail_b.3282 :
	addi	%r0 %r1 1
	j	branching_b.2071
tail_b.3283 :
	addi	%r0 %r1 0
	j	branching_b.2071
branching_b.2051 :
	addi	%r0 %r1 6
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -220
	jal	min_caml_create_float_array
	lw	%r26 %r28 -220
	mov	%r1 %r12
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3249
tail_b.3248 :
	addi	%r0 %r1 1
	j	branching_b.2052
tail_b.3249 :
	addi	%r0 %r1 0
branching_b.2052 :
	beq	%r1 %r0 branching_b.2053
tail_b.3258 :
	ilw.s	%r0 %f0 l.51
	addi	%r12 %r1 4
	sw.s	%r1 %f0 0
	j	branching_b.2057
branching_b.2053 :
	lw	%r9 %r11 24
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.3251
tail_b.3250 :
	addi	%r0 %r1 1
	j	branching_b.2054
tail_b.3251 :
	addi	%r0 %r1 0
branching_b.2054 :
	beq	%r11 %r0 tail_b.3252
branching_b.2055 :
	beq	%r1 %r0 tail_b.3253
tail_b.3254 :
	addi	%r0 %r1 0
	j	branching_b.2056
tail_b.3253 :
	addi	%r0 %r1 1
	j	branching_b.2056
tail_b.3252 :
branching_b.2056 :
	lw	%r9 %r11 16
	lw.s	%r11 %f0 0
	beq	%r1 %r0 tail_b.3255
tail_b.3256 :
	j	tail_b.3257
tail_b.3255 :
	neg.s	%f0 %f0
tail_b.3257 :
	mov	%r12 %r1
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f0 l.56
	mov	%r10 %r1
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r12 %r1 4
	sw.s	%r1 %f0 0
branching_b.2057 :
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3260
tail_b.3259 :
	addi	%r0 %r1 1
	j	branching_b.2058
tail_b.3260 :
	addi	%r0 %r1 0
branching_b.2058 :
	beq	%r1 %r0 branching_b.2059
tail_b.3269 :
	ilw.s	%r0 %f0 l.51
	addi	%r12 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.2063
branching_b.2059 :
	lw	%r9 %r13 24
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.3262
tail_b.3261 :
	addi	%r0 %r11 1
	j	branching_b.2060
tail_b.3262 :
	addi	%r0 %r11 0
branching_b.2060 :
	beq	%r13 %r0 tail_b.3263
branching_b.2061 :
	beq	%r11 %r0 tail_b.3264
tail_b.3265 :
	addi	%r0 %r11 0
	j	branching_b.2062
tail_b.3264 :
	addi	%r0 %r11 1
	j	branching_b.2062
tail_b.3263 :
branching_b.2062 :
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	beq	%r11 %r0 tail_b.3266
tail_b.3267 :
	j	tail_b.3268
tail_b.3266 :
	neg.s	%f0 %f0
tail_b.3268 :
	addi	%r12 %r1 8
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f0 l.56
	addi	%r10 %r1 4
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r12 %r1 12
	sw.s	%r1 %f0 0
branching_b.2063 :
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3271
tail_b.3270 :
	addi	%r0 %r1 1
	j	branching_b.2064
tail_b.3271 :
	addi	%r0 %r1 0
branching_b.2064 :
	beq	%r1 %r0 branching_b.2065
tail_b.3280 :
	ilw.s	%r0 %f0 l.51
	addi	%r12 %r1 20
	sw.s	%r1 %f0 0
	j	tail_b.3281
branching_b.2065 :
	lw	%r9 %r1 24
	addi	%r10 %r11 8
	lw.s	%r11 %f0 0
	fbge	%f0 %f2 tail_b.3273
tail_b.3272 :
	addi	%r0 %r11 1
	j	branching_b.2066
tail_b.3273 :
	addi	%r0 %r11 0
branching_b.2066 :
	beq	%r1 %r0 tail_b.3274
branching_b.2067 :
	beq	%r11 %r0 tail_b.3275
tail_b.3276 :
	addi	%r0 %r11 0
	j	branching_b.2068
tail_b.3275 :
	addi	%r0 %r11 1
	j	branching_b.2068
tail_b.3274 :
branching_b.2068 :
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	beq	%r11 %r0 tail_b.3277
tail_b.3278 :
	j	tail_b.3279
tail_b.3277 :
	neg.s	%f0 %f0
tail_b.3279 :
	addi	%r12 %r1 16
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f0 l.56
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r12 %r1 20
	sw.s	%r1 %f0 0
tail_b.3281 :
	slli	%r8 %r1 2
	add	%r7 %r1 %r1
	sw	%r1 %r12 0
tail_b.3296 :
	addi	%r8 %r8 -1
	j	iter_setup_dirvec_constants_loop.5
branching_b.2071 :
	beq	%r1 %r0 tail_b.3284
tail_b.3285 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f0
	mov	%r11 %r1
	sw.s	%r1 %f0 0
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r11 %r1 4
	sw.s	%r1 %f0 0
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r11 %r1 8
	sw.s	%r1 %f0 0
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r11 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.3286
tail_b.3284 :
	ilw.s	%r0 %f0 l.51
	mov	%r11 %r1
	sw.s	%r1 %f0 0
tail_b.3286 :
	slli	%r8 %r1 2
	add	%r7 %r1 %r1
	sw	%r1 %r11 0
	j	tail_b.3296
branching_b.2073 :
	mov	%r10 %r1
	lw.s	%r1 %f1 0
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	neg.s	%f0 %f1
	addi	%r10 %r1 4
	lw.s	%r1 %f3 0
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	neg.s	%f0 %f7
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	neg.s	%f0 %f3
	mov	%r11 %r1
	sw.s	%r1 %f5 0
	lw	%r9 %r1 12
	bne	%r1 %r0 tail_b.3289
tail_b.3290 :
	addi	%r11 %r1 4
	sw.s	%r1 %f1 0
	addi	%r11 %r1 8
	sw.s	%r1 %f7 0
	addi	%r11 %r1 12
	sw.s	%r1 %f3 0
	j	branching_b.2074
tail_b.3289 :
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f4
	addi	%r10 %r1 4
	lw.s	%r1 %f6 0
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.69
	div.s	%f4 %f0 %f0
	sub.s	%f0 %f1 %f0
	addi	%r11 %r1 4
	sw.s	%r1 %f0 0
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	lw	%r9 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f6
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	div.s	%f4 %f0 %f0
	sub.s	%f0 %f7 %f0
	addi	%r11 %r1 8
	sw.s	%r1 %f0 0
	addi	%r10 %r1 4
	lw.s	%r1 %f1 0
	lw	%r9 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r10 %f6 0
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	div.s	%f4 %f0 %f0
	sub.s	%f0 %f3 %f0
	addi	%r11 %r1 12
	sw.s	%r1 %f0 0
branching_b.2074 :
	fbne	%f5 %f2 tail_b.3292
tail_b.3291 :
	addi	%r0 %r1 1
	j	branching_b.2075
tail_b.3292 :
	addi	%r0 %r1 0
branching_b.2075 :
	beq	%r1 %r0 tail_b.3293
tail_b.3294 :
	j	tail_b.3295
tail_b.3293 :
	ilw.s	%r0 %f0 l.56
	div.s	%f5 %f0 %f0
	addi	%r11 %r1 16
	sw.s	%r1 %f0 0
tail_b.3295 :
	slli	%r8 %r1 2
	add	%r7 %r1 %r1
	sw	%r1 %r11 0
	j	tail_b.3296
postloop_b.86 :
branching_b.2076 :
	lw	%r0 %r1 0
	addi	%r1 %r9 -1
	ble	%r0 %r9 branching_b.2077
tail_b.3505 :
	j	preloop_b.91
branching_b.2077 :
	slli	%r9 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r11 0
	lw	%r11 %r1 8
	addi	%r0 %r7 2
	beq	%r1 %r7 branching_b.2078
tail_b.3504 :
	j	preloop_b.91
branching_b.2078 :
	lw	%r11 %r1 28
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f3 l.56
	fbge	%f0 %f3 tail_b.3299
tail_b.3298 :
	addi	%r0 %r1 1
	j	branching_b.2079
tail_b.3299 :
	addi	%r0 %r1 0
branching_b.2079 :
	beq	%r1 %r0 tail_b.3300
branching_b.2080 :
	lw	%r11 %r1 4
	addi	%r0 %r8 1
	beq	%r1 %r8 preloop_b.87
branching_b.2162 :
	beq	%r1 %r7 preloop_b.90
tail_b.3503 :
	j	preloop_b.91
preloop_b.90 :
	mul	%r9 %r2 %r1
	addi	%r1 %r10 1
	lw	%r0 %r9 1736
	lw	%r11 %r1 28
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f6
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
	ilw.s	%r0 %f1 l.69
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
	sw.s	%r26 %f0 -220
	mov.s	%f4 %f0
	sw	%r26 %r28 -224
	jal	min_caml_create_float_array
	lw	%r26 %r28 -224
	mov	%r1 %r11
	lw.s	%r26 %f0 -220
	lw	%r0 %r1 0
	mov	%r11 %r2
	sw	%r26 %r28 -220
	jal	min_caml_create_array
	lw	%r26 %r28 -220
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
	addi	%r1 %r11 -1
iter_setup_dirvec_constants_loop.1 :
	ble	%r0 %r11 branching_b.2164
tail_b.3501 :
	j	postloop_b.90
branching_b.2164 :
	slli	%r11 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r15 0
	lw	%r12 %r13 4
	lw	%r12 %r14 0
	lw	%r15 %r1 4
	beq	%r1 %r8 branching_b.2165
branching_b.2183 :
	beq	%r1 %r7 branching_b.2184
branching_b.2186 :
	addi	%r0 %r1 5
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -220
	jal	min_caml_create_float_array
	lw	%r26 %r28 -220
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
	beq	%r1 %r0 tail_b.3491
tail_b.3492 :
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
	j	branching_b.2187
tail_b.3491 :
	j	branching_b.2187
branching_b.2184 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -220
	jal	min_caml_create_float_array
	lw	%r26 %r28 -220
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
	fbge	%f2 %f4 tail_b.3487
tail_b.3486 :
	addi	%r0 %r1 1
	j	branching_b.2185
tail_b.3487 :
	addi	%r0 %r1 0
	j	branching_b.2185
branching_b.2165 :
	addi	%r0 %r1 6
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -220
	jal	min_caml_create_float_array
	lw	%r26 %r28 -220
	mov	%r1 %r16
	mov	%r14 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3453
tail_b.3452 :
	addi	%r0 %r1 1
	j	branching_b.2166
tail_b.3453 :
	addi	%r0 %r1 0
	j	branching_b.2166
preloop_b.87 :
	mul	%r9 %r2 %r10
	lw	%r0 %r9 1736
	lw	%r11 %r1 28
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f6
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
	sw.s	%r26 %f0 -220
	mov.s	%f1 %f0
	sw	%r26 %r28 -224
	jal	min_caml_create_float_array
	lw	%r26 %r28 -224
	mov	%r1 %r11
	lw.s	%r26 %f0 -220
	lw	%r0 %r1 0
	mov	%r11 %r2
	sw	%r26 %r28 -220
	jal	min_caml_create_array
	lw	%r26 %r28 -220
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
	addi	%r2 %r14 -1
iter_setup_dirvec_constants_loop.4 :
	ble	%r0 %r14 branching_b.2082
tail_b.3350 :
	j	postloop_b.87
branching_b.2082 :
	slli	%r14 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r15 0
	lw	%r1 %r12 4
	lw	%r1 %r11 0
	lw	%r15 %r2 4
	beq	%r2 %r8 branching_b.2083
branching_b.2101 :
	beq	%r2 %r7 branching_b.2102
branching_b.2104 :
	addi	%r0 %r2 5
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 -220
	mov	%r2 %r1
	sw	%r26 %r28 -224
	jal	min_caml_create_float_array
	lw	%r26 %r28 -224
	mov	%r1 %r16
	lw	%r26 %r1 -220
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
	beq	%r2 %r0 tail_b.3340
tail_b.3341 :
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
	j	branching_b.2105
tail_b.3340 :
	mov.s	%f9 %f4
	j	branching_b.2105
branching_b.2102 :
	addi	%r0 %r2 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 -220
	mov	%r2 %r1
	sw	%r26 %r28 -224
	jal	min_caml_create_float_array
	lw	%r26 %r28 -224
	mov	%r1 %r16
	lw	%r26 %r1 -220
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
	fbge	%f2 %f1 tail_b.3336
tail_b.3335 :
	addi	%r0 %r2 1
	j	branching_b.2103
tail_b.3336 :
	addi	%r0 %r2 0
	j	branching_b.2103
branching_b.2083 :
	addi	%r0 %r2 6
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r1 -220
	mov	%r2 %r1
	sw	%r26 %r28 -224
	jal	min_caml_create_float_array
	lw	%r26 %r28 -224
	mov	%r1 %r16
	lw	%r26 %r1 -220
	mov	%r11 %r2
	lw.s	%r2 %f0 0
	fbne	%f0 %f2 tail_b.3302
tail_b.3301 :
	addi	%r0 %r2 1
	j	branching_b.2084
tail_b.3302 :
	addi	%r0 %r2 0
	j	branching_b.2084
tail_b.3300 :
	j	preloop_b.91
branching_b.2084 :
	beq	%r2 %r0 branching_b.2085
tail_b.3311 :
	ilw.s	%r0 %f0 l.51
	addi	%r16 %r2 4
	sw.s	%r2 %f0 0
	j	branching_b.2089
branching_b.2085 :
	lw	%r15 %r18 24
	mov	%r11 %r2
	lw.s	%r2 %f0 0
	fbge	%f0 %f2 tail_b.3304
tail_b.3303 :
	addi	%r0 %r17 1
	j	branching_b.2086
tail_b.3304 :
	addi	%r0 %r17 0
branching_b.2086 :
	beq	%r18 %r0 tail_b.3305
branching_b.2087 :
	beq	%r17 %r0 tail_b.3306
tail_b.3307 :
	addi	%r0 %r17 0
	j	branching_b.2088
tail_b.3306 :
	addi	%r0 %r17 1
	j	branching_b.2088
tail_b.3305 :
branching_b.2088 :
	lw	%r15 %r2 16
	lw.s	%r2 %f0 0
	beq	%r17 %r0 tail_b.3308
tail_b.3309 :
	j	tail_b.3310
tail_b.3308 :
	neg.s	%f0 %f0
tail_b.3310 :
	mov	%r16 %r2
	sw.s	%r2 %f0 0
	mov	%r11 %r2
	lw.s	%r2 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r16 %r2 4
	sw.s	%r2 %f0 0
branching_b.2089 :
	addi	%r11 %r2 4
	lw.s	%r2 %f0 0
	fbne	%f0 %f2 tail_b.3313
tail_b.3312 :
	addi	%r0 %r2 1
	j	branching_b.2090
tail_b.3313 :
	addi	%r0 %r2 0
branching_b.2090 :
	beq	%r2 %r0 branching_b.2091
tail_b.3322 :
	ilw.s	%r0 %f0 l.51
	addi	%r16 %r2 12
	sw.s	%r2 %f0 0
	j	branching_b.2095
branching_b.2091 :
	lw	%r15 %r17 24
	addi	%r11 %r2 4
	lw.s	%r2 %f0 0
	fbge	%f0 %f2 tail_b.3315
tail_b.3314 :
	addi	%r0 %r2 1
	j	branching_b.2092
tail_b.3315 :
	addi	%r0 %r2 0
branching_b.2092 :
	beq	%r17 %r0 tail_b.3316
branching_b.2093 :
	beq	%r2 %r0 tail_b.3317
tail_b.3318 :
	addi	%r0 %r17 0
	j	branching_b.2094
tail_b.3317 :
	addi	%r0 %r17 1
	j	branching_b.2094
tail_b.3316 :
	mov	%r2 %r17
branching_b.2094 :
	lw	%r15 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	beq	%r17 %r0 tail_b.3319
tail_b.3320 :
	j	tail_b.3321
tail_b.3319 :
	neg.s	%f0 %f0
tail_b.3321 :
	addi	%r16 %r2 8
	sw.s	%r2 %f0 0
	addi	%r11 %r2 4
	lw.s	%r2 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r16 %r2 12
	sw.s	%r2 %f0 0
branching_b.2095 :
	addi	%r11 %r2 8
	lw.s	%r2 %f0 0
	fbne	%f0 %f2 tail_b.3324
tail_b.3323 :
	addi	%r0 %r2 1
	j	branching_b.2096
tail_b.3324 :
	addi	%r0 %r2 0
branching_b.2096 :
	beq	%r2 %r0 branching_b.2097
tail_b.3333 :
	ilw.s	%r0 %f0 l.51
	addi	%r16 %r2 20
	sw.s	%r2 %f0 0
	j	tail_b.3334
branching_b.2097 :
	lw	%r15 %r17 24
	addi	%r11 %r2 8
	lw.s	%r2 %f0 0
	fbge	%f0 %f2 tail_b.3326
tail_b.3325 :
	addi	%r0 %r2 1
	j	branching_b.2098
tail_b.3326 :
	addi	%r0 %r2 0
branching_b.2098 :
	beq	%r17 %r0 tail_b.3327
branching_b.2099 :
	beq	%r2 %r0 tail_b.3328
tail_b.3329 :
	addi	%r0 %r2 0
	j	branching_b.2100
tail_b.3328 :
	addi	%r0 %r2 1
	j	branching_b.2100
tail_b.3327 :
branching_b.2100 :
	lw	%r15 %r15 16
	addi	%r15 %r15 8
	lw.s	%r15 %f0 0
	beq	%r2 %r0 tail_b.3330
tail_b.3331 :
	j	tail_b.3332
tail_b.3330 :
	neg.s	%f0 %f0
tail_b.3332 :
	addi	%r16 %r2 16
	sw.s	%r2 %f0 0
	addi	%r11 %r2 8
	lw.s	%r2 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r16 %r2 20
	sw.s	%r2 %f0 0
tail_b.3334 :
	slli	%r14 %r2 2
	add	%r12 %r2 %r2
	sw	%r2 %r16 0
tail_b.3349 :
	addi	%r14 %r14 -1
	j	iter_setup_dirvec_constants_loop.4
branching_b.2103 :
	beq	%r2 %r0 tail_b.3337
tail_b.3338 :
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
	j	tail_b.3339
tail_b.3337 :
	ilw.s	%r0 %f0 l.51
	mov	%r16 %r2
	sw.s	%r2 %f0 0
tail_b.3339 :
	slli	%r14 %r2 2
	add	%r12 %r2 %r2
	sw	%r2 %r16 0
	j	tail_b.3349
branching_b.2105 :
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
	bne	%r2 %r0 tail_b.3342
tail_b.3343 :
	addi	%r16 %r2 4
	sw.s	%r2 %f1 0
	addi	%r16 %r2 8
	sw.s	%r2 %f12 0
	addi	%r16 %r2 12
	sw.s	%r2 %f11 0
	j	branching_b.2106
tail_b.3342 :
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
	ilw.s	%r0 %f0 l.69
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
	lw.s	%r11 %f9 0
	lw	%r15 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f10 0
	mul.s	%f10 %f9 %f9
	add.s	%f9 %f1 %f1
	div.s	%f0 %f1 %f0
	sub.s	%f0 %f11 %f0
	addi	%r16 %r2 12
	sw.s	%r2 %f0 0
branching_b.2106 :
	fbne	%f4 %f2 tail_b.3345
tail_b.3344 :
	addi	%r0 %r2 1
	j	branching_b.2107
tail_b.3345 :
	addi	%r0 %r2 0
branching_b.2107 :
	beq	%r2 %r0 tail_b.3346
tail_b.3347 :
	j	tail_b.3348
tail_b.3346 :
	div.s	%f4 %f3 %f0
	addi	%r16 %r2 16
	sw.s	%r2 %f0 0
tail_b.3348 :
	slli	%r14 %r2 2
	add	%r12 %r2 %r2
	sw	%r2 %r16 0
	j	tail_b.3349
postloop_b.87 :
preloop_b.88 :
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
	sw.s	%r26 %f0 -220
	mov.s	%f1 %f0
	sw	%r26 %r28 -224
	jal	min_caml_create_float_array
	lw	%r26 %r28 -224
	mov	%r1 %r2
	lw.s	%r26 %f0 -220
	lw	%r0 %r1 0
	sw	%r26 %r28 -220
	jal	min_caml_create_array
	lw	%r26 %r28 -220
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
	addi	%r1 %r2 -1
iter_setup_dirvec_constants_loop.3 :
	ble	%r0 %r2 branching_b.2109
tail_b.3400 :
	j	postloop_b.88
branching_b.2109 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r15 0
	lw	%r14 %r13 4
	lw	%r14 %r16 0
	lw	%r15 %r1 4
	beq	%r1 %r8 branching_b.2110
branching_b.2128 :
	beq	%r1 %r7 branching_b.2129
branching_b.2131 :
	addi	%r0 %r1 5
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -220
	jal	min_caml_create_float_array
	lw	%r26 %r28 -220
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
	beq	%r1 %r0 tail_b.3390
tail_b.3391 :
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
	j	branching_b.2132
tail_b.3390 :
	mov.s	%f8 %f9
	j	branching_b.2132
branching_b.2129 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -220
	jal	min_caml_create_float_array
	lw	%r26 %r28 -220
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
	fbge	%f2 %f1 tail_b.3386
tail_b.3385 :
	addi	%r0 %r1 1
	j	branching_b.2130
tail_b.3386 :
	addi	%r0 %r1 0
	j	branching_b.2130
branching_b.2110 :
	addi	%r0 %r1 6
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -220
	jal	min_caml_create_float_array
	lw	%r26 %r28 -220
	mov	%r1 %r18
	mov	%r16 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3352
tail_b.3351 :
	addi	%r0 %r1 1
	j	branching_b.2111
tail_b.3352 :
	addi	%r0 %r1 0
branching_b.2111 :
	beq	%r1 %r0 branching_b.2112
tail_b.3361 :
	ilw.s	%r0 %f0 l.51
	addi	%r18 %r1 4
	sw.s	%r1 %f0 0
	j	branching_b.2116
branching_b.2112 :
	lw	%r15 %r17 24
	mov	%r16 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.3354
tail_b.3353 :
	addi	%r0 %r1 1
	j	branching_b.2113
tail_b.3354 :
	addi	%r0 %r1 0
branching_b.2113 :
	beq	%r17 %r0 tail_b.3355
branching_b.2114 :
	beq	%r1 %r0 tail_b.3356
tail_b.3357 :
	addi	%r0 %r17 0
	j	branching_b.2115
tail_b.3356 :
	addi	%r0 %r17 1
	j	branching_b.2115
tail_b.3355 :
	mov	%r1 %r17
branching_b.2115 :
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	beq	%r17 %r0 tail_b.3358
tail_b.3359 :
	j	tail_b.3360
tail_b.3358 :
	neg.s	%f0 %f0
tail_b.3360 :
	mov	%r18 %r1
	sw.s	%r1 %f0 0
	mov	%r16 %r1
	lw.s	%r1 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r18 %r1 4
	sw.s	%r1 %f0 0
branching_b.2116 :
	addi	%r16 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3363
tail_b.3362 :
	addi	%r0 %r1 1
	j	branching_b.2117
tail_b.3363 :
	addi	%r0 %r1 0
branching_b.2117 :
	beq	%r1 %r0 branching_b.2118
tail_b.3372 :
	ilw.s	%r0 %f0 l.51
	addi	%r18 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.2122
branching_b.2118 :
	lw	%r15 %r1 24
	addi	%r16 %r17 4
	lw.s	%r17 %f0 0
	fbge	%f0 %f2 tail_b.3365
tail_b.3364 :
	addi	%r0 %r17 1
	j	branching_b.2119
tail_b.3365 :
	addi	%r0 %r17 0
branching_b.2119 :
	beq	%r1 %r0 tail_b.3366
branching_b.2120 :
	beq	%r17 %r0 tail_b.3367
tail_b.3368 :
	addi	%r0 %r17 0
	j	branching_b.2121
tail_b.3367 :
	addi	%r0 %r17 1
	j	branching_b.2121
tail_b.3366 :
branching_b.2121 :
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	beq	%r17 %r0 tail_b.3369
tail_b.3370 :
	j	tail_b.3371
tail_b.3369 :
	neg.s	%f0 %f0
tail_b.3371 :
	addi	%r18 %r1 8
	sw.s	%r1 %f0 0
	addi	%r16 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r18 %r1 12
	sw.s	%r1 %f0 0
branching_b.2122 :
	addi	%r16 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3374
tail_b.3373 :
	addi	%r0 %r1 1
	j	branching_b.2123
tail_b.3374 :
	addi	%r0 %r1 0
branching_b.2123 :
	beq	%r1 %r0 branching_b.2124
tail_b.3383 :
	ilw.s	%r0 %f0 l.51
	addi	%r18 %r1 20
	sw.s	%r1 %f0 0
	j	tail_b.3384
branching_b.2124 :
	lw	%r15 %r1 24
	addi	%r16 %r17 8
	lw.s	%r17 %f0 0
	fbge	%f0 %f2 tail_b.3376
tail_b.3375 :
	addi	%r0 %r17 1
	j	branching_b.2125
tail_b.3376 :
	addi	%r0 %r17 0
branching_b.2125 :
	beq	%r1 %r0 tail_b.3377
branching_b.2126 :
	beq	%r17 %r0 tail_b.3378
tail_b.3379 :
	addi	%r0 %r17 0
	j	branching_b.2127
tail_b.3378 :
	addi	%r0 %r17 1
	j	branching_b.2127
tail_b.3377 :
branching_b.2127 :
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	beq	%r17 %r0 tail_b.3380
tail_b.3381 :
	j	tail_b.3382
tail_b.3380 :
	neg.s	%f0 %f0
tail_b.3382 :
	addi	%r18 %r1 16
	sw.s	%r1 %f0 0
	addi	%r16 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r18 %r1 20
	sw.s	%r1 %f0 0
tail_b.3384 :
	slli	%r2 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r18 0
tail_b.3399 :
	addi	%r2 %r2 -1
	j	iter_setup_dirvec_constants_loop.3
branching_b.2130 :
	beq	%r1 %r0 tail_b.3387
tail_b.3388 :
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
	j	tail_b.3389
tail_b.3387 :
	ilw.s	%r0 %f0 l.51
	mov	%r17 %r1
	sw.s	%r1 %f0 0
tail_b.3389 :
	slli	%r2 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r17 0
	j	tail_b.3399
branching_b.2132 :
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
	bne	%r1 %r0 tail_b.3392
tail_b.3393 :
	addi	%r17 %r1 4
	sw.s	%r1 %f8 0
	addi	%r17 %r1 8
	sw.s	%r1 %f4 0
	addi	%r17 %r1 12
	sw.s	%r1 %f11 0
	j	branching_b.2133
tail_b.3392 :
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
	ilw.s	%r0 %f1 l.69
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
	lw.s	%r16 %f0 0
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f8 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	div.s	%f1 %f0 %f0
	sub.s	%f0 %f11 %f0
	addi	%r17 %r1 12
	sw.s	%r1 %f0 0
branching_b.2133 :
	fbne	%f9 %f2 tail_b.3395
tail_b.3394 :
	addi	%r0 %r1 1
	j	branching_b.2134
tail_b.3395 :
	addi	%r0 %r1 0
branching_b.2134 :
	beq	%r1 %r0 tail_b.3396
tail_b.3397 :
	j	tail_b.3398
tail_b.3396 :
	div.s	%f9 %f3 %f0
	addi	%r17 %r1 16
	sw.s	%r1 %f0 0
tail_b.3398 :
	slli	%r2 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r17 0
	j	tail_b.3399
postloop_b.88 :
preloop_b.89 :
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
	sw.s	%r26 %f0 -220
	mov.s	%f1 %f0
	sw	%r26 %r28 -224
	jal	min_caml_create_float_array
	lw	%r26 %r28 -224
	mov	%r1 %r2
	lw.s	%r26 %f0 -220
	lw	%r0 %r1 0
	sw	%r26 %r28 -220
	jal	min_caml_create_array
	lw	%r26 %r28 -220
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
	addi	%r1 %r14 -1
iter_setup_dirvec_constants_loop.2 :
	ble	%r0 %r14 branching_b.2136
tail_b.3450 :
	j	postloop_b.89
branching_b.2136 :
	slli	%r14 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r15 0
	lw	%r12 %r13 4
	lw	%r12 %r2 0
	lw	%r15 %r1 4
	beq	%r1 %r8 branching_b.2137
branching_b.2155 :
	beq	%r1 %r7 branching_b.2156
branching_b.2158 :
	addi	%r0 %r1 5
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -220
	jal	min_caml_create_float_array
	lw	%r26 %r28 -220
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
	beq	%r1 %r0 tail_b.3440
tail_b.3441 :
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
	j	branching_b.2159
tail_b.3440 :
	mov.s	%f5 %f8
	j	branching_b.2159
branching_b.2156 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -220
	jal	min_caml_create_float_array
	lw	%r26 %r28 -220
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
	fbge	%f2 %f1 tail_b.3436
tail_b.3435 :
	addi	%r0 %r1 1
	j	branching_b.2157
tail_b.3436 :
	addi	%r0 %r1 0
	j	branching_b.2157
branching_b.2137 :
	addi	%r0 %r1 6
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 -220
	jal	min_caml_create_float_array
	lw	%r26 %r28 -220
	mov	%r1 %r17
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3402
tail_b.3401 :
	addi	%r0 %r1 1
	j	branching_b.2138
tail_b.3402 :
	addi	%r0 %r1 0
branching_b.2138 :
	beq	%r1 %r0 branching_b.2139
tail_b.3411 :
	ilw.s	%r0 %f0 l.51
	addi	%r17 %r1 4
	sw.s	%r1 %f0 0
	j	branching_b.2143
branching_b.2139 :
	lw	%r15 %r18 24
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.3404
tail_b.3403 :
	addi	%r0 %r16 1
	j	branching_b.2140
tail_b.3404 :
	addi	%r0 %r16 0
branching_b.2140 :
	beq	%r18 %r0 tail_b.3405
branching_b.2141 :
	beq	%r16 %r0 tail_b.3406
tail_b.3407 :
	addi	%r0 %r16 0
	j	branching_b.2142
tail_b.3406 :
	addi	%r0 %r16 1
	j	branching_b.2142
tail_b.3405 :
branching_b.2142 :
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	beq	%r16 %r0 tail_b.3408
tail_b.3409 :
	j	tail_b.3410
tail_b.3408 :
	neg.s	%f0 %f0
tail_b.3410 :
	mov	%r17 %r1
	sw.s	%r1 %f0 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r17 %r1 4
	sw.s	%r1 %f0 0
branching_b.2143 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3413
tail_b.3412 :
	addi	%r0 %r1 1
	j	branching_b.2144
tail_b.3413 :
	addi	%r0 %r1 0
branching_b.2144 :
	beq	%r1 %r0 branching_b.2145
tail_b.3422 :
	ilw.s	%r0 %f0 l.51
	addi	%r17 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.2149
branching_b.2145 :
	lw	%r15 %r16 24
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.3415
tail_b.3414 :
	addi	%r0 %r1 1
	j	branching_b.2146
tail_b.3415 :
	addi	%r0 %r1 0
branching_b.2146 :
	beq	%r16 %r0 tail_b.3416
branching_b.2147 :
	beq	%r1 %r0 tail_b.3417
tail_b.3418 :
	addi	%r0 %r1 0
	j	branching_b.2148
tail_b.3417 :
	addi	%r0 %r1 1
	j	branching_b.2148
tail_b.3416 :
branching_b.2148 :
	lw	%r15 %r16 16
	addi	%r16 %r16 4
	lw.s	%r16 %f0 0
	beq	%r1 %r0 tail_b.3419
tail_b.3420 :
	j	tail_b.3421
tail_b.3419 :
	neg.s	%f0 %f0
tail_b.3421 :
	addi	%r17 %r1 8
	sw.s	%r1 %f0 0
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r17 %r1 12
	sw.s	%r1 %f0 0
branching_b.2149 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3424
tail_b.3423 :
	addi	%r0 %r1 1
	j	branching_b.2150
tail_b.3424 :
	addi	%r0 %r1 0
branching_b.2150 :
	beq	%r1 %r0 branching_b.2151
tail_b.3433 :
	ilw.s	%r0 %f0 l.51
	addi	%r17 %r1 20
	sw.s	%r1 %f0 0
	j	tail_b.3434
branching_b.2151 :
	lw	%r15 %r18 24
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.3426
tail_b.3425 :
	addi	%r0 %r16 1
	j	branching_b.2152
tail_b.3426 :
	addi	%r0 %r16 0
branching_b.2152 :
	beq	%r18 %r0 tail_b.3427
branching_b.2153 :
	beq	%r16 %r0 tail_b.3428
tail_b.3429 :
	addi	%r0 %r16 0
	j	branching_b.2154
tail_b.3428 :
	addi	%r0 %r16 1
	j	branching_b.2154
tail_b.3427 :
branching_b.2154 :
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	beq	%r16 %r0 tail_b.3430
tail_b.3431 :
	j	tail_b.3432
tail_b.3430 :
	neg.s	%f0 %f0
tail_b.3432 :
	addi	%r17 %r1 16
	sw.s	%r1 %f0 0
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r17 %r1 20
	sw.s	%r1 %f0 0
tail_b.3434 :
	slli	%r14 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r17 0
tail_b.3449 :
	addi	%r14 %r1 -1
	mov	%r1 %r14
	j	iter_setup_dirvec_constants_loop.2
branching_b.2157 :
	beq	%r1 %r0 tail_b.3437
tail_b.3438 :
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
	j	tail_b.3439
tail_b.3437 :
	ilw.s	%r0 %f0 l.51
	mov	%r16 %r1
	sw.s	%r1 %f0 0
tail_b.3439 :
	slli	%r14 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r16 0
	j	tail_b.3449
branching_b.2159 :
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
	bne	%r1 %r0 tail_b.3442
tail_b.3443 :
	addi	%r16 %r1 4
	sw.s	%r1 %f7 0
	addi	%r16 %r1 8
	sw.s	%r1 %f9 0
	addi	%r16 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.2160
tail_b.3442 :
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
	ilw.s	%r0 %f5 l.69
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
	lw.s	%r2 %f4 0
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f1 %f1
	div.s	%f5 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r16 %r1 12
	sw.s	%r1 %f0 0
branching_b.2160 :
	fbne	%f8 %f2 tail_b.3445
tail_b.3444 :
	addi	%r0 %r1 1
	j	branching_b.2161
tail_b.3445 :
	addi	%r0 %r1 0
branching_b.2161 :
	beq	%r1 %r0 tail_b.3446
tail_b.3447 :
	j	tail_b.3448
tail_b.3446 :
	div.s	%f8 %f3 %f0
	addi	%r16 %r1 16
	sw.s	%r1 %f0 0
tail_b.3448 :
	slli	%r14 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r16 0
	j	tail_b.3449
postloop_b.89 :
tail_b.3451 :
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
	j	preloop_b.91
branching_b.2166 :
	beq	%r1 %r0 branching_b.2167
tail_b.3462 :
	ilw.s	%r0 %f0 l.51
	addi	%r16 %r1 4
	sw.s	%r1 %f0 0
	j	branching_b.2171
branching_b.2167 :
	lw	%r15 %r17 24
	mov	%r14 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f2 tail_b.3455
tail_b.3454 :
	addi	%r0 %r2 1
	j	branching_b.2168
tail_b.3455 :
	addi	%r0 %r2 0
branching_b.2168 :
	beq	%r17 %r0 tail_b.3456
branching_b.2169 :
	beq	%r2 %r0 tail_b.3457
tail_b.3458 :
	addi	%r0 %r2 0
	j	branching_b.2170
tail_b.3457 :
	addi	%r0 %r2 1
	j	branching_b.2170
tail_b.3456 :
branching_b.2170 :
	lw	%r15 %r1 16
	lw.s	%r1 %f0 0
	beq	%r2 %r0 tail_b.3459
tail_b.3460 :
	j	tail_b.3461
tail_b.3459 :
	neg.s	%f0 %f0
tail_b.3461 :
	mov	%r16 %r1
	sw.s	%r1 %f0 0
	mov	%r14 %r1
	lw.s	%r1 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r16 %r1 4
	sw.s	%r1 %f0 0
branching_b.2171 :
	addi	%r14 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3464
tail_b.3463 :
	addi	%r0 %r1 1
	j	branching_b.2172
tail_b.3464 :
	addi	%r0 %r1 0
branching_b.2172 :
	beq	%r1 %r0 branching_b.2173
tail_b.3473 :
	ilw.s	%r0 %f0 l.51
	addi	%r16 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.2177
branching_b.2173 :
	lw	%r15 %r1 24
	addi	%r14 %r2 4
	lw.s	%r2 %f0 0
	fbge	%f0 %f2 tail_b.3466
tail_b.3465 :
	addi	%r0 %r2 1
	j	branching_b.2174
tail_b.3466 :
	addi	%r0 %r2 0
branching_b.2174 :
	beq	%r1 %r0 tail_b.3467
branching_b.2175 :
	beq	%r2 %r0 tail_b.3468
tail_b.3469 :
	addi	%r0 %r2 0
	j	branching_b.2176
tail_b.3468 :
	addi	%r0 %r2 1
	j	branching_b.2176
tail_b.3467 :
branching_b.2176 :
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	beq	%r2 %r0 tail_b.3470
tail_b.3471 :
	j	tail_b.3472
tail_b.3470 :
	neg.s	%f0 %f0
tail_b.3472 :
	addi	%r16 %r1 8
	sw.s	%r1 %f0 0
	addi	%r14 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r16 %r1 12
	sw.s	%r1 %f0 0
branching_b.2177 :
	addi	%r14 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.3475
tail_b.3474 :
	addi	%r0 %r1 1
	j	branching_b.2178
tail_b.3475 :
	addi	%r0 %r1 0
branching_b.2178 :
	beq	%r1 %r0 branching_b.2179
tail_b.3484 :
	ilw.s	%r0 %f0 l.51
	addi	%r16 %r1 20
	sw.s	%r1 %f0 0
	j	tail_b.3485
branching_b.2179 :
	lw	%r15 %r1 24
	addi	%r14 %r2 8
	lw.s	%r2 %f0 0
	fbge	%f0 %f2 tail_b.3477
tail_b.3476 :
	addi	%r0 %r2 1
	j	branching_b.2180
tail_b.3477 :
	addi	%r0 %r2 0
branching_b.2180 :
	beq	%r1 %r0 tail_b.3478
branching_b.2181 :
	beq	%r2 %r0 tail_b.3479
tail_b.3480 :
	addi	%r0 %r2 0
	j	branching_b.2182
tail_b.3479 :
	addi	%r0 %r2 1
	j	branching_b.2182
tail_b.3478 :
branching_b.2182 :
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	beq	%r2 %r0 tail_b.3481
tail_b.3482 :
	j	tail_b.3483
tail_b.3481 :
	neg.s	%f0 %f0
tail_b.3483 :
	addi	%r16 %r1 16
	sw.s	%r1 %f0 0
	addi	%r14 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r16 %r1 20
	sw.s	%r1 %f0 0
tail_b.3485 :
	slli	%r11 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r16 0
tail_b.3500 :
	addi	%r11 %r11 -1
	j	iter_setup_dirvec_constants_loop.1
branching_b.2185 :
	beq	%r1 %r0 tail_b.3488
tail_b.3489 :
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
	j	tail_b.3490
tail_b.3488 :
	ilw.s	%r0 %f0 l.51
	mov	%r2 %r1
	sw.s	%r1 %f0 0
tail_b.3490 :
	slli	%r11 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r2 0
	j	tail_b.3500
branching_b.2187 :
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
	bne	%r1 %r0 tail_b.3493
tail_b.3494 :
	addi	%r2 %r1 4
	sw.s	%r1 %f7 0
	addi	%r2 %r1 8
	sw.s	%r1 %f5 0
	addi	%r2 %r1 12
	sw.s	%r1 %f8 0
	j	branching_b.2188
tail_b.3493 :
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
	lw.s	%r14 %f5 0
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f4 %f0
	div.s	%f1 %f0 %f0
	sub.s	%f0 %f8 %f0
	addi	%r2 %r1 12
	sw.s	%r1 %f0 0
branching_b.2188 :
	fbne	%f9 %f2 tail_b.3496
tail_b.3495 :
	addi	%r0 %r1 1
	j	branching_b.2189
tail_b.3496 :
	addi	%r0 %r1 0
branching_b.2189 :
	beq	%r1 %r0 tail_b.3497
tail_b.3498 :
	j	tail_b.3499
tail_b.3497 :
	div.s	%f9 %f3 %f0
	addi	%r2 %r1 16
	sw.s	%r1 %f0 0
tail_b.3499 :
	slli	%r11 %r1 2
	add	%r13 %r1 %r1
	sw	%r1 %r2 0
	j	tail_b.3500
postloop_b.90 :
tail_b.3502 :
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
preloop_b.91 :
	lw.s	%r0 %f1 632
	lw	%r0 %r1 628
	sub	%r0 %r1 %r1
	mtc1	%r1 %f0
	mul.s	%f0 %f1 %f5
	lw.s	%r0 %f0 672
	mul.s	%f0 %f5 %f0
	lw.s	%r0 %f1 684
	add.s	%f1 %f0 %f4
	lw.s	%r0 %f0 676
	mul.s	%f0 %f5 %f1
	lw.s	%r0 %f0 688
	add.s	%f0 %f1 %f3
	lw.s	%r0 %f0 680
	mul.s	%f0 %f5 %f0
	lw.s	%r0 %f1 692
	add.s	%f1 %f0 %f5
	lw	%r0 %r1 616
	addi	%r1 %r1 -1
	mov	%r1 %r8
	mov	%r5 %r9
	addi	%r0 %r7 696
pretrace_pixels_loop.1 :
	ble	%r0 %r8 branching_b.2191
tail_b.3513 :
	j	postloop_b.91
branching_b.2191 :
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
	add.s	%f3 %f0 %f0
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
	fbne	%f0 %f2 tail_b.3507
tail_b.3506 :
	addi	%r0 %r1 1
	j	branching_b.2192
tail_b.3507 :
	addi	%r0 %r1 0
branching_b.2192 :
	beq	%r1 %r0 tail_b.3508
tail_b.3509 :
	ilw.s	%r0 %f1 l.56
	j	branching_b.2193
tail_b.3508 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f1
branching_b.2193 :
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
	ilw.s	%r0 %f0 l.56
	slli	%r8 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	ilw.s	%r0 %f1 l.51
	sw	%r26 %r4 -220
	sw	%r26 %r5 -224
	sw.s	%r26 %f4 -228
	sw.s	%r26 %f3 -232
	sw.s	%r26 %f5 -236
	sw	%r26 %r7 -240
	sw	%r26 %r8 -244
	sw	%r26 %r9 -248
	sw	%r26 %r3 -252
	sw	%r26 %r6 -256
	sw.s	%r26 %f2 -260
	mov	%r1 %r3
	mov	%r7 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -264
	addi	%r26 %r26 -268
	jal	trace_ray.0
	addi	%r26 %r26 268
	lw	%r26 %r28 -264
	lw	%r26 %r8 -244
	slli	%r8 %r1 2
	lw	%r26 %r3 -252
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
	lw	%r26 %r9 -248
	sw	%r1 %r9 0
	slli	%r8 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	sw	%r26 %r8 -264
	sw	%r26 %r9 -268
	sw	%r26 %r3 -272
	mov	%r0 %r2
	sw	%r26 %r28 -276
	addi	%r26 %r26 -280
	jal	pretrace_diffuse_rays.0
	addi	%r26 %r26 280
	lw	%r26 %r28 -276
	lw	%r26 %r8 -264
	addi	%r8 %r1 -1
	lw	%r26 %r9 -268
	addi	%r9 %r2 1
	addi	%r0 %r8 5
	lw	%r26 %r4 -220
	lw	%r26 %r5 -224
	lw.s	%r26 %f4 -228
	lw.s	%r26 %f3 -232
	lw.s	%r26 %f5 -236
	lw	%r26 %r7 -240
	lw	%r26 %r3 -272
	lw	%r26 %r6 -256
	lw.s	%r26 %f2 -260
	ble	%r8 %r2 tail_b.3510
tail_b.3511 :
	j	tail_b.3512
tail_b.3510 :
	addi	%r2 %r2 -5
tail_b.3512 :
	mov	%r1 %r8
	mov	%r2 %r9
	j	pretrace_pixels_loop.1
postloop_b.91 :
preloop_b.92 :
	addi	%r0 %r1 2
	mov	%r1 %r2
scan_line_loop.1 :
	lw	%r0 %r1 620
	bl	%r5 %r1 branching_b.2195
tail_b.3519 :
	j	postloop_b.92
branching_b.2195 :
	lw	%r0 %r1 620
	addi	%r1 %r1 -1
	bl	%r5 %r1 tail_b.3514
tail_b.3515 :
	j	branching_b.2196
tail_b.3514 :
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
	sw	%r26 %r5 -276
	sw	%r26 %r4 -280
	sw	%r26 %r3 -284
	sw	%r26 %r6 -288
	sw	%r26 %r2 -292
	mov	%r2 %r3
	mov	%r1 %r2
	mov	%r6 %r1
	mov.s	%f1 %f0
	mov.s	%f3 %f1
	sw	%r26 %r28 -296
	addi	%r26 %r26 -300
	jal	pretrace_pixels.0
	addi	%r26 %r26 300
	lw	%r26 %r28 -296
	lw	%r26 %r5 -276
	lw	%r26 %r4 -280
	lw	%r26 %r3 -284
	lw	%r26 %r6 -288
	lw	%r26 %r2 -292
branching_b.2196 :
	sw	%r26 %r5 -296
	sw	%r26 %r3 -300
	sw	%r26 %r6 -304
	sw	%r26 %r2 -308
	mov	%r5 %r2
	mov	%r0 %r1
	mov	%r6 %r5
	mov	%r4 %r31
	mov	%r3 %r4
	mov	%r31 %r3
	sw	%r26 %r28 -312
	addi	%r26 %r26 -316
	jal	scan_pixel.0
	addi	%r26 %r26 316
	lw	%r26 %r28 -312
	lw	%r26 %r5 -296
	addi	%r5 %r1 1
	lw	%r26 %r2 -308
	addi	%r2 %r2 2
	addi	%r0 %r4 5
	lw	%r26 %r3 -300
	lw	%r26 %r6 -304
	ble	%r4 %r2 tail_b.3516
tail_b.3517 :
	j	tail_b.3518
tail_b.3516 :
	addi	%r2 %r2 -5
tail_b.3518 :
	mov	%r1 %r5
	mov	%r3 %r4
	mov	%r6 %r3
	mov	%r4 %r6
	j	scan_line_loop.1
postloop_b.92 :
tail_b.3520 :
	addi	%r0 %r1 0
return_point.25 :
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
	sub.s	%f1 %f3 %f3
	j	sin_loop.0
branching_b.1 :
	ilw.s	%r0 %f2 l.51
	fbge	%f3 %f2 branching_b.2
tail_b.1 :
	add.s	%f1 %f3 %f3
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
read_net_item.0 :
	mov	%r1 %r2
branching_b.18 :
	in	%r3
	addi	%r0 %r1 -1
	beq	%r3 %r1 tail_b.20
tail_b.21 :
	addi	%r2 %r1 1
	sw	%r26 %r2 0
	sw	%r26 %r3 -4
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	read_net_item.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r2
	lw	%r26 %r3 -4
	sw	%r2 %r3 0
	j	return_point.2
tail_b.20 :
	addi	%r2 %r1 1
	addi	%r0 %r2 -1
	sw	%r26 %r28 -8
	jal	min_caml_create_array
	lw	%r26 %r28 -8
return_point.2 :
	retl
read_or_network.0 :
	mov	%r1 %r4
branching_b.19 :
	sw	%r26 %r4 0
	mov	%r0 %r1
	sw	%r26 %r28 -4
	addi	%r26 %r26 -8
	jal	read_net_item.0
	addi	%r26 %r26 8
	lw	%r26 %r28 -4
	mov	%r1 %r2
	mov	%r2 %r1
	lw	%r1 %r1 0
	addi	%r0 %r3 -1
	lw	%r26 %r4 0
	beq	%r1 %r3 tail_b.22
tail_b.23 :
	addi	%r4 %r1 1
	sw	%r26 %r4 -4
	sw	%r26 %r2 -8
	sw	%r26 %r28 -12
	addi	%r26 %r26 -16
	jal	read_or_network.0
	addi	%r26 %r26 16
	lw	%r26 %r28 -12
	mov	%r1 %r3
	lw	%r26 %r4 -4
	slli	%r4 %r1 2
	add	%r3 %r1 %r1
	lw	%r26 %r2 -8
	sw	%r1 %r2 0
	mov	%r3 %r1
	j	return_point.3
tail_b.22 :
	addi	%r4 %r1 1
	sw	%r26 %r28 -12
	jal	min_caml_create_array
	lw	%r26 %r28 -12
return_point.3 :
	retl
setup_startp_constants.0 :
	mov	%r1 %r5
preloop_b.2 :
	mov	%r2 %r6
setup_startp_constants_loop.0 :
	ble	%r0 %r6 branching_b.21
tail_b.32 :
	j	postloop_b.2
branching_b.21 :
	slli	%r6 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r3 0
	lw	%r3 %r4 40
	lw	%r3 %r2 4
	mov	%r5 %r1
	lw.s	%r1 %f1 0
	lw	%r3 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mov	%r4 %r1
	sw.s	%r1 %f0 0
	addi	%r5 %r1 4
	lw.s	%r1 %f1 0
	lw	%r3 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r4 %r1 4
	sw.s	%r1 %f0 0
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	lw	%r3 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r4 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.24
branching_b.22 :
	bl	%r1 %r2 branching_b.23
tail_b.30 :
	j	tail_b.31
branching_b.23 :
	mov	%r4 %r1
	lw.s	%r1 %f4 0
	addi	%r4 %r1 4
	lw.s	%r1 %f5 0
	addi	%r4 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f4 %f4 %f2
	lw	%r3 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	mul.s	%f5 %f5 %f0
	lw	%r3 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f1 %f1 %f0
	lw	%r3 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f3
	lw	%r3 %r1 12
	beq	%r1 %r0 tail_b.25
tail_b.26 :
	mul.s	%f1 %f5 %f0
	lw	%r3 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f4 %f1 %f1
	lw	%r3 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f2
	mul.s	%f5 %f4 %f1
	lw	%r3 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	j	branching_b.24
tail_b.25 :
	mov.s	%f3 %f1
	j	branching_b.24
tail_b.24 :
	lw	%r3 %r2 16
	mov	%r4 %r1
	lw.s	%r1 %f1 0
	addi	%r4 %r1 4
	lw.s	%r1 %f0 0
	addi	%r4 %r1 8
	lw.s	%r1 %f2 0
	mov	%r2 %r1
	lw.s	%r1 %f3 0
	mul.s	%f1 %f3 %f1
	addi	%r2 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f1
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r4 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.31
branching_b.24 :
	addi	%r0 %r1 3
	beq	%r2 %r1 tail_b.27
tail_b.28 :
	j	tail_b.29
tail_b.27 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f1
tail_b.29 :
	addi	%r4 %r1 12
	sw.s	%r1 %f1 0
tail_b.31 :
	addi	%r6 %r6 -1
	j	setup_startp_constants_loop.0
postloop_b.2 :
return_point.4 :
	retl
check_all_inside.0 :
	mov	%r2 %r6
	mov.s	%f2 %f3
	mov.s	%f0 %f6
	mov.s	%f1 %f2
preloop_b.3 :
	mov	%r1 %r4
	addi	%r0 %r5 -1
check_all_inside_loop.0 :
	slli	%r4 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r5 tail_b.33
branching_b.26 :
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r2 0
	lw	%r2 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f6 %f8
	lw	%r2 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f7
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f4
	lw	%r2 %r1 4
	addi	%r0 %r3 1
	beq	%r1 %r3 branching_b.27
branching_b.37 :
	addi	%r0 %r3 2
	beq	%r1 %r3 branching_b.38
branching_b.42 :
	mul.s	%f8 %f8 %f0
	lw	%r2 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f5
	mul.s	%f7 %f7 %f1
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f4 %f4 %f0
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	lw	%r2 %r1 12
	beq	%r1 %r0 tail_b.58
tail_b.59 :
	mul.s	%f4 %f7 %f1
	lw	%r2 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f4 %f4
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f7 %f8 %f0
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f5
	j	branching_b.43
tail_b.58 :
	j	branching_b.43
branching_b.38 :
	lw	%r2 %r3 16
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f1
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	lw	%r2 %r2 24
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.52
tail_b.51 :
	addi	%r0 %r1 1
	j	branching_b.39
tail_b.52 :
	addi	%r0 %r1 0
	j	branching_b.39
branching_b.27 :
	ilw.s	%r0 %f5 l.51
	fbge	%f8 %f5 tail_b.35
tail_b.34 :
	neg.s	%f8 %f0
	j	branching_b.28
tail_b.35 :
	mov.s	%f8 %f0
	j	branching_b.28
tail_b.33 :
	addi	%r0 %r1 1
postloop_b.3 :
return_point.5 :
	retl
branching_b.28 :
	lw	%r2 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.37
tail_b.36 :
	addi	%r0 %r1 1
	j	branching_b.29
tail_b.37 :
	addi	%r0 %r1 0
branching_b.29 :
	beq	%r1 %r0 tail_b.38
branching_b.30 :
	fbge	%f7 %f5 tail_b.40
tail_b.39 :
	neg.s	%f7 %f1
	j	branching_b.31
tail_b.40 :
	mov.s	%f7 %f1
	j	branching_b.31
tail_b.38 :
	addi	%r0 %r1 0
branching_b.35 :
	beq	%r1 %r0 branching_b.36
tail_b.50 :
	lw	%r2 %r1 24
	j	branching_b.48
branching_b.36 :
	lw	%r2 %r1 24
	beq	%r1 %r0 tail_b.48
tail_b.49 :
	addi	%r0 %r1 0
	j	branching_b.48
tail_b.48 :
	addi	%r0 %r1 1
branching_b.48 :
	beq	%r1 %r0 tail_b.69
tail_b.70 :
	addi	%r0 %r1 0
	j	postloop_b.3
tail_b.69 :
	addi	%r4 %r4 1
	j	check_all_inside_loop.0
branching_b.31 :
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.42
tail_b.41 :
	addi	%r0 %r1 1
	j	branching_b.32
tail_b.42 :
	addi	%r0 %r1 0
branching_b.32 :
	beq	%r1 %r0 tail_b.43
branching_b.33 :
	fbge	%f4 %f5 tail_b.45
tail_b.44 :
	neg.s	%f4 %f4
	j	branching_b.34
tail_b.45 :
	j	branching_b.34
tail_b.43 :
	addi	%r0 %r1 0
	j	branching_b.35
branching_b.34 :
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f4 %f0 tail_b.47
tail_b.46 :
	addi	%r0 %r1 1
	j	branching_b.35
tail_b.47 :
	addi	%r0 %r1 0
	j	branching_b.35
branching_b.39 :
	beq	%r2 %r0 tail_b.53
branching_b.40 :
	beq	%r1 %r0 tail_b.54
tail_b.55 :
	addi	%r0 %r1 0
	j	branching_b.41
tail_b.54 :
	addi	%r0 %r1 1
	j	branching_b.41
tail_b.53 :
branching_b.41 :
	beq	%r1 %r0 tail_b.56
tail_b.57 :
	addi	%r0 %r1 0
	j	branching_b.48
tail_b.56 :
	addi	%r0 %r1 1
	j	branching_b.48
branching_b.43 :
	lw	%r2 %r1 4
	addi	%r0 %r3 3
	beq	%r1 %r3 tail_b.60
tail_b.61 :
	mov.s	%f5 %f1
	j	branching_b.44
tail_b.60 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f5 %f1
branching_b.44 :
	lw	%r2 %r1 24
	ilw.s	%r0 %f0 l.51
	fbge	%f1 %f0 tail_b.63
tail_b.62 :
	addi	%r0 %r2 1
	j	branching_b.45
tail_b.63 :
	addi	%r0 %r2 0
branching_b.45 :
	beq	%r1 %r0 tail_b.64
branching_b.46 :
	beq	%r2 %r0 tail_b.65
tail_b.66 :
	addi	%r0 %r2 0
	j	branching_b.47
tail_b.65 :
	addi	%r0 %r2 1
	j	branching_b.47
tail_b.64 :
branching_b.47 :
	beq	%r2 %r0 tail_b.67
tail_b.68 :
	addi	%r0 %r1 0
	j	branching_b.48
tail_b.67 :
	addi	%r0 %r1 1
	j	branching_b.48
shadow_check_and_group.0 :
	mov	%r2 %r5
preloop_b.4 :
	mov	%r1 %r2
	addi	%r0 %r6 -1
shadow_check_and_group_loop.0 :
	slli	%r2 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r6 tail_b.71
branching_b.50 :
	slli	%r2 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r3 0
	slli	%r3 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r4 0
	lw.s	%r0 %f0 552
	lw	%r4 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f3
	lw.s	%r0 %f0 556
	lw	%r4 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f1 560
	lw	%r4 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	slli	%r3 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r8 0
	lw	%r4 %r1 4
	addi	%r0 %r7 1
	beq	%r1 %r7 branching_b.51
branching_b.78 :
	addi	%r0 %r9 2
	beq	%r1 %r9 branching_b.79
branching_b.81 :
	mov	%r8 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f2 l.51
	fbne	%f1 %f2 tail_b.123
tail_b.122 :
	addi	%r0 %r1 1
	j	branching_b.82
tail_b.123 :
	addi	%r0 %r1 0
	j	branching_b.82
branching_b.79 :
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.119
tail_b.118 :
	addi	%r0 %r1 1
	j	branching_b.80
tail_b.119 :
	addi	%r0 %r1 0
	j	branching_b.80
branching_b.51 :
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	sub.s	%f3 %f0 %f1
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f0 740
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.73
tail_b.72 :
	neg.s	%f0 %f0
	j	branching_b.52
tail_b.73 :
	j	branching_b.52
tail_b.71 :
	addi	%r0 %r1 0
postloop_b.5 :
return_point.6 :
	retl
branching_b.52 :
	lw	%r4 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.75
tail_b.74 :
	addi	%r0 %r1 1
	j	branching_b.53
tail_b.75 :
	addi	%r0 %r1 0
branching_b.53 :
	beq	%r1 %r0 tail_b.76
branching_b.54 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f2 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f1 tail_b.78
tail_b.77 :
	neg.s	%f0 %f0
	j	branching_b.55
tail_b.78 :
	j	branching_b.55
tail_b.76 :
	addi	%r0 %r1 0
branching_b.59 :
	beq	%r1 %r0 branching_b.60
tail_b.117 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 1
	j	branching_b.88
branching_b.60 :
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f4 %f0 %f0
	addi	%r8 %r1 12
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f6
	lw.s	%r0 %f0 736
	mul.s	%f0 %f6 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f1 tail_b.87
tail_b.86 :
	neg.s	%f0 %f0
	j	branching_b.61
tail_b.87 :
branching_b.61 :
	lw	%r4 %r1 16
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.89
tail_b.88 :
	addi	%r0 %r1 1
	j	branching_b.62
tail_b.89 :
	addi	%r0 %r1 0
branching_b.62 :
	beq	%r1 %r0 tail_b.90
branching_b.63 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f6 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f1 tail_b.92
tail_b.91 :
	neg.s	%f0 %f0
	j	branching_b.64
tail_b.92 :
	j	branching_b.64
tail_b.90 :
	addi	%r0 %r1 0
branching_b.68 :
	beq	%r1 %r0 branching_b.69
tail_b.116 :
	sw.s	%r0 %f6 540
	addi	%r0 %r1 2
	j	branching_b.88
branching_b.69 :
	addi	%r8 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f0
	addi	%r8 %r1 20
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	lw.s	%r0 %f0 736
	mul.s	%f0 %f2 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f1 tail_b.101
tail_b.100 :
	neg.s	%f0 %f3
	j	branching_b.70
tail_b.101 :
	mov.s	%f0 %f3
branching_b.70 :
	lw	%r4 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f3 %f0 tail_b.103
tail_b.102 :
	addi	%r0 %r1 1
	j	branching_b.71
tail_b.103 :
	addi	%r0 %r1 0
branching_b.71 :
	beq	%r1 %r0 tail_b.104
branching_b.72 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f1 tail_b.106
tail_b.105 :
	neg.s	%f0 %f3
	j	branching_b.73
tail_b.106 :
	mov.s	%f0 %f3
	j	branching_b.73
tail_b.104 :
	addi	%r0 %r1 0
branching_b.77 :
	beq	%r1 %r0 tail_b.114
tail_b.115 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 3
	j	branching_b.88
tail_b.114 :
	addi	%r0 %r1 0
	j	branching_b.88
branching_b.73 :
	lw	%r4 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f3 %f0 tail_b.108
tail_b.107 :
	addi	%r0 %r1 1
	j	branching_b.74
tail_b.108 :
	addi	%r0 %r1 0
branching_b.74 :
	beq	%r1 %r0 tail_b.109
branching_b.75 :
	addi	%r8 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.111
tail_b.110 :
	addi	%r0 %r1 1
	j	branching_b.76
tail_b.111 :
	addi	%r0 %r1 0
	j	branching_b.76
tail_b.109 :
	addi	%r0 %r1 0
	j	branching_b.77
branching_b.76 :
	beq	%r1 %r0 tail_b.112
tail_b.113 :
	addi	%r0 %r1 0
	j	branching_b.77
tail_b.112 :
	addi	%r0 %r1 1
	j	branching_b.77
branching_b.64 :
	lw	%r4 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.94
tail_b.93 :
	addi	%r0 %r1 1
	j	branching_b.65
tail_b.94 :
	addi	%r0 %r1 0
branching_b.65 :
	beq	%r1 %r0 tail_b.95
branching_b.66 :
	addi	%r8 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.97
tail_b.96 :
	addi	%r0 %r1 1
	j	branching_b.67
tail_b.97 :
	addi	%r0 %r1 0
	j	branching_b.67
tail_b.95 :
	addi	%r0 %r1 0
	j	branching_b.68
branching_b.67 :
	beq	%r1 %r0 tail_b.98
tail_b.99 :
	addi	%r0 %r1 0
	j	branching_b.68
tail_b.98 :
	addi	%r0 %r1 1
	j	branching_b.68
branching_b.88 :
	lw.s	%r0 %f1 540
	addi	%r0 %r4 0
	bne	%r1 %r0 branching_b.89
tail_b.137 :
	addi	%r0 %r1 0
	j	branching_b.90
branching_b.89 :
	ilw.s	%r0 %f0 l.66
	fbge	%f1 %f0 tail_b.136
tail_b.135 :
	addi	%r0 %r1 1
	j	branching_b.90
tail_b.136 :
	addi	%r0 %r1 0
branching_b.90 :
	beq	%r1 %r0 branching_b.91
preloop_b.5 :
	ilw.s	%r0 %f0 l.67
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 312
	mul.s	%f1 %f0 %f2
	lw.s	%r0 %f0 552
	add.s	%f0 %f2 %f3
	lw.s	%r0 %f0 316
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f2 556
	add.s	%f2 %f0 %f7
	lw.s	%r0 %f0 320
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 560
	add.s	%f0 %f1 %f5
	mov	%r4 %r3
check_all_inside_loop.3 :
	slli	%r3 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r6 tail_b.140
branching_b.93 :
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r8 0
	lw	%r8 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f4
	lw	%r8 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f7 %f1
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f5 %f8
	lw	%r8 %r4 4
	beq	%r4 %r7 branching_b.94
branching_b.104 :
	addi	%r0 %r1 2
	beq	%r4 %r1 branching_b.105
branching_b.109 :
	mul.s	%f4 %f4 %f2
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	mul.s	%f1 %f1 %f6
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f6
	mul.s	%f8 %f8 %f2
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f6 %f2
	lw	%r8 %r1 12
	beq	%r1 %r0 tail_b.165
tail_b.166 :
	mul.s	%f8 %f1 %f0
	lw	%r8 %r1 36
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f4 %f8 %f6
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f6 %f2
	add.s	%f2 %f0 %f2
	mul.s	%f1 %f4 %f0
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	j	branching_b.110
tail_b.165 :
	j	branching_b.110
branching_b.105 :
	lw	%r8 %r4 16
	mov	%r4 %r1
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f2
	addi	%r4 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f1
	addi	%r4 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	lw	%r8 %r1 24
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.159
tail_b.158 :
	addi	%r0 %r4 1
	j	branching_b.106
tail_b.159 :
	addi	%r0 %r4 0
	j	branching_b.106
branching_b.94 :
	ilw.s	%r0 %f0 l.51
	fbge	%f4 %f0 tail_b.142
tail_b.141 :
	neg.s	%f4 %f4
	j	branching_b.95
tail_b.142 :
	j	branching_b.95
tail_b.140 :
	addi	%r0 %r1 1
	j	postloop_b.4
branching_b.91 :
	slli	%r3 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	beq	%r1 %r0 tail_b.138
tail_b.139 :
	addi	%r2 %r2 1
	j	shadow_check_and_group_loop.0
tail_b.138 :
	addi	%r0 %r1 0
	j	postloop_b.5
postloop_b.4 :
branching_b.116 :
	beq	%r1 %r0 tail_b.178
tail_b.179 :
	addi	%r0 %r1 1
	j	postloop_b.5
tail_b.178 :
	addi	%r2 %r2 1
	j	shadow_check_and_group_loop.0
branching_b.95 :
	lw	%r8 %r1 16
	lw.s	%r1 %f2 0
	fbge	%f4 %f2 tail_b.144
tail_b.143 :
	addi	%r0 %r1 1
	j	branching_b.96
tail_b.144 :
	addi	%r0 %r1 0
branching_b.96 :
	beq	%r1 %r0 tail_b.145
branching_b.97 :
	fbge	%f1 %f0 tail_b.147
tail_b.146 :
	neg.s	%f1 %f1
	j	branching_b.98
tail_b.147 :
	j	branching_b.98
tail_b.145 :
	addi	%r0 %r1 0
branching_b.102 :
	beq	%r1 %r0 branching_b.103
tail_b.157 :
	lw	%r8 %r1 24
	j	branching_b.115
branching_b.103 :
	lw	%r8 %r1 24
	beq	%r1 %r0 tail_b.155
tail_b.156 :
	addi	%r0 %r1 0
	j	branching_b.115
tail_b.155 :
	addi	%r0 %r1 1
branching_b.115 :
	beq	%r1 %r0 tail_b.176
tail_b.177 :
	addi	%r0 %r1 0
	j	postloop_b.4
tail_b.176 :
	addi	%r3 %r3 1
	j	check_all_inside_loop.3
branching_b.98 :
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	fbge	%f1 %f2 tail_b.149
tail_b.148 :
	addi	%r0 %r1 1
	j	branching_b.99
tail_b.149 :
	addi	%r0 %r1 0
branching_b.99 :
	beq	%r1 %r0 tail_b.150
branching_b.100 :
	fbge	%f8 %f0 tail_b.152
tail_b.151 :
	neg.s	%f8 %f1
	j	branching_b.101
tail_b.152 :
	mov.s	%f8 %f1
	j	branching_b.101
tail_b.150 :
	addi	%r0 %r1 0
	j	branching_b.102
branching_b.101 :
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.154
tail_b.153 :
	addi	%r0 %r1 1
	j	branching_b.102
tail_b.154 :
	addi	%r0 %r1 0
	j	branching_b.102
branching_b.106 :
	beq	%r1 %r0 tail_b.160
branching_b.107 :
	beq	%r4 %r0 tail_b.161
tail_b.162 :
	addi	%r0 %r1 0
	j	branching_b.108
tail_b.161 :
	addi	%r0 %r1 1
	j	branching_b.108
tail_b.160 :
	mov	%r4 %r1
branching_b.108 :
	beq	%r1 %r0 tail_b.163
tail_b.164 :
	addi	%r0 %r1 0
	j	branching_b.115
tail_b.163 :
	addi	%r0 %r1 1
	j	branching_b.115
branching_b.110 :
	lw	%r8 %r4 4
	addi	%r0 %r1 3
	beq	%r4 %r1 tail_b.167
tail_b.168 :
	j	branching_b.111
tail_b.167 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f2 %f2
branching_b.111 :
	lw	%r8 %r4 24
	ilw.s	%r0 %f0 l.51
	fbge	%f2 %f0 tail_b.170
tail_b.169 :
	addi	%r0 %r1 1
	j	branching_b.112
tail_b.170 :
	addi	%r0 %r1 0
branching_b.112 :
	beq	%r4 %r0 tail_b.171
branching_b.113 :
	beq	%r1 %r0 tail_b.172
tail_b.173 :
	addi	%r0 %r1 0
	j	branching_b.114
tail_b.172 :
	addi	%r0 %r1 1
	j	branching_b.114
tail_b.171 :
branching_b.114 :
	beq	%r1 %r0 tail_b.174
tail_b.175 :
	addi	%r0 %r1 0
	j	branching_b.115
tail_b.174 :
	addi	%r0 %r1 1
	j	branching_b.115
branching_b.55 :
	lw	%r4 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.80
tail_b.79 :
	addi	%r0 %r1 1
	j	branching_b.56
tail_b.80 :
	addi	%r0 %r1 0
branching_b.56 :
	beq	%r1 %r0 tail_b.81
branching_b.57 :
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.83
tail_b.82 :
	addi	%r0 %r1 1
	j	branching_b.58
tail_b.83 :
	addi	%r0 %r1 0
	j	branching_b.58
tail_b.81 :
	addi	%r0 %r1 0
	j	branching_b.59
branching_b.58 :
	beq	%r1 %r0 tail_b.84
tail_b.85 :
	addi	%r0 %r1 0
	j	branching_b.59
tail_b.84 :
	addi	%r0 %r1 1
	j	branching_b.59
branching_b.80 :
	beq	%r1 %r0 tail_b.120
tail_b.121 :
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f1
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r8 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.88
tail_b.120 :
	addi	%r0 %r1 0
	j	branching_b.88
branching_b.82 :
	beq	%r1 %r0 branching_b.83
tail_b.134 :
	addi	%r0 %r1 0
	j	branching_b.88
branching_b.83 :
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f6
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f6 %f6
	addi	%r8 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f8
	mul.s	%f3 %f3 %f0
	lw	%r4 %r1 16
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	mul.s	%f4 %f4 %f6
	lw	%r4 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f5 %f5 %f6
	lw	%r4 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f7
	lw	%r4 %r1 12
	beq	%r1 %r0 tail_b.124
tail_b.125 :
	mul.s	%f5 %f4 %f0
	lw	%r4 %r1 36
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f6
	mul.s	%f3 %f5 %f0
	lw	%r4 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r4 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f5 %f3
	j	branching_b.84
tail_b.124 :
	mov.s	%f7 %f3
branching_b.84 :
	lw	%r4 %r1 4
	addi	%r0 %r9 3
	beq	%r1 %r9 tail_b.126
tail_b.127 :
	mov.s	%f3 %f0
	j	branching_b.85
tail_b.126 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f3 %f0
branching_b.85 :
	mul.s	%f8 %f8 %f3
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f3 %f0
	fbge	%f2 %f0 tail_b.129
tail_b.128 :
	addi	%r0 %r1 1
	j	branching_b.86
tail_b.129 :
	addi	%r0 %r1 0
branching_b.86 :
	beq	%r1 %r0 tail_b.130
branching_b.87 :
	lw	%r4 %r1 24
	beq	%r1 %r0 tail_b.131
tail_b.132 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f8 %f1
	addi	%r8 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.133
tail_b.131 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f8 %f0
	addi	%r8 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.133
tail_b.130 :
	addi	%r0 %r1 0
	j	branching_b.88
tail_b.133 :
	addi	%r0 %r1 1
	j	branching_b.88
shadow_check_one_or_group.0 :
	mov	%r2 %r4
preloop_b.6 :
	addi	%r0 %r5 -1
shadow_check_one_or_group_loop.0 :
	slli	%r1 %r2 2
	add	%r4 %r2 %r2
	lw	%r2 %r2 0
	beq	%r2 %r5 tail_b.180
preloop_b.7 :
	slli	%r2 %r2 2
	addi	%r2 %r2 332
	lw	%r2 %r6 0
	addi	%r0 %r7 0
shadow_check_and_group_loop.1 :
	slli	%r7 %r2 2
	add	%r6 %r2 %r2
	lw	%r2 %r2 0
	beq	%r2 %r5 tail_b.181
branching_b.119 :
	slli	%r7 %r2 2
	add	%r6 %r2 %r2
	lw	%r2 %r3 0
	slli	%r3 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r10 0
	lw.s	%r0 %f1 552
	lw	%r10 %r2 20
	lw.s	%r2 %f0 0
	sub.s	%f0 %f1 %f3
	lw.s	%r0 %f0 556
	lw	%r10 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f2
	lw.s	%r0 %f1 560
	lw	%r10 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sub.s	%f0 %f1 %f5
	slli	%r3 %r2 2
	addi	%r2 %r2 748
	lw	%r2 %r9 0
	lw	%r10 %r2 4
	addi	%r0 %r8 1
	beq	%r2 %r8 branching_b.120
branching_b.147 :
	addi	%r0 %r8 2
	beq	%r2 %r8 branching_b.148
branching_b.150 :
	mov	%r9 %r2
	lw.s	%r2 %f7 0
	ilw.s	%r0 %f8 l.51
	fbne	%f7 %f8 tail_b.233
tail_b.232 :
	addi	%r0 %r2 1
	j	branching_b.151
tail_b.233 :
	addi	%r0 %r2 0
	j	branching_b.151
branching_b.148 :
	mov	%r9 %r2
	lw.s	%r2 %f0 0
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.229
tail_b.228 :
	addi	%r0 %r2 1
	j	branching_b.149
tail_b.229 :
	addi	%r0 %r2 0
	j	branching_b.149
branching_b.120 :
	mov	%r9 %r2
	lw.s	%r2 %f0 0
	sub.s	%f3 %f0 %f1
	addi	%r9 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f4
	lw.s	%r0 %f0 740
	mul.s	%f0 %f4 %f0
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f6 l.51
	fbge	%f0 %f6 tail_b.183
tail_b.182 :
	neg.s	%f0 %f0
	j	branching_b.121
tail_b.183 :
	j	branching_b.121
tail_b.181 :
	addi	%r0 %r2 0
	j	postloop_b.6
tail_b.180 :
	addi	%r0 %r1 0
postloop_b.7 :
return_point.7 :
	retl
postloop_b.6 :
branching_b.162 :
	beq	%r2 %r0 tail_b.252
tail_b.253 :
	addi	%r0 %r1 1
	j	postloop_b.7
tail_b.252 :
	addi	%r1 %r1 1
	j	shadow_check_one_or_group_loop.0
branching_b.121 :
	lw	%r10 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f1 0
	fbge	%f0 %f1 tail_b.185
tail_b.184 :
	addi	%r0 %r2 1
	j	branching_b.122
tail_b.185 :
	addi	%r0 %r2 0
branching_b.122 :
	beq	%r2 %r0 tail_b.186
branching_b.123 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f4 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f6 tail_b.188
tail_b.187 :
	neg.s	%f0 %f0
	j	branching_b.124
tail_b.188 :
	j	branching_b.124
tail_b.186 :
	addi	%r0 %r2 0
branching_b.128 :
	beq	%r2 %r0 branching_b.129
tail_b.227 :
	sw.s	%r0 %f4 540
	addi	%r0 %r2 1
	j	branching_b.157
branching_b.129 :
	addi	%r9 %r2 8
	lw.s	%r2 %f0 0
	sub.s	%f2 %f0 %f1
	addi	%r9 %r2 12
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 736
	mul.s	%f0 %f1 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f6 tail_b.197
tail_b.196 :
	neg.s	%f0 %f0
	j	branching_b.130
tail_b.197 :
branching_b.130 :
	lw	%r10 %r2 16
	lw.s	%r2 %f4 0
	fbge	%f0 %f4 tail_b.199
tail_b.198 :
	addi	%r0 %r2 1
	j	branching_b.131
tail_b.199 :
	addi	%r0 %r2 0
branching_b.131 :
	beq	%r2 %r0 tail_b.200
branching_b.132 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f6 tail_b.202
tail_b.201 :
	neg.s	%f0 %f0
	j	branching_b.133
tail_b.202 :
	j	branching_b.133
tail_b.200 :
	addi	%r0 %r2 0
branching_b.137 :
	beq	%r2 %r0 branching_b.138
tail_b.226 :
	sw.s	%r0 %f1 540
	addi	%r0 %r2 2
	j	branching_b.157
branching_b.138 :
	addi	%r9 %r2 16
	lw.s	%r2 %f0 0
	sub.s	%f5 %f0 %f1
	addi	%r9 %r2 20
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 736
	mul.s	%f0 %f1 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f6 tail_b.211
tail_b.210 :
	neg.s	%f0 %f3
	j	branching_b.139
tail_b.211 :
	mov.s	%f0 %f3
branching_b.139 :
	lw	%r10 %r2 16
	lw.s	%r2 %f0 0
	fbge	%f3 %f0 tail_b.213
tail_b.212 :
	addi	%r0 %r2 1
	j	branching_b.140
tail_b.213 :
	addi	%r0 %r2 0
branching_b.140 :
	beq	%r2 %r0 tail_b.214
branching_b.141 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f1 %f0
	add.s	%f2 %f0 %f0
	fbge	%f0 %f6 tail_b.216
tail_b.215 :
	neg.s	%f0 %f0
	j	branching_b.142
tail_b.216 :
	j	branching_b.142
tail_b.214 :
	addi	%r0 %r2 0
branching_b.146 :
	beq	%r2 %r0 tail_b.224
tail_b.225 :
	sw.s	%r0 %f1 540
	addi	%r0 %r2 3
	j	branching_b.157
tail_b.224 :
	addi	%r0 %r2 0
	j	branching_b.157
branching_b.142 :
	lw	%r10 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f2 0
	fbge	%f0 %f2 tail_b.218
tail_b.217 :
	addi	%r0 %r2 1
	j	branching_b.143
tail_b.218 :
	addi	%r0 %r2 0
branching_b.143 :
	beq	%r2 %r0 tail_b.219
branching_b.144 :
	addi	%r9 %r2 20
	lw.s	%r2 %f0 0
	fbne	%f0 %f6 tail_b.221
tail_b.220 :
	addi	%r0 %r2 1
	j	branching_b.145
tail_b.221 :
	addi	%r0 %r2 0
	j	branching_b.145
tail_b.219 :
	addi	%r0 %r2 0
	j	branching_b.146
branching_b.145 :
	beq	%r2 %r0 tail_b.222
tail_b.223 :
	addi	%r0 %r2 0
	j	branching_b.146
tail_b.222 :
	addi	%r0 %r2 1
	j	branching_b.146
branching_b.133 :
	lw	%r10 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f4 0
	fbge	%f0 %f4 tail_b.204
tail_b.203 :
	addi	%r0 %r2 1
	j	branching_b.134
tail_b.204 :
	addi	%r0 %r2 0
branching_b.134 :
	beq	%r2 %r0 tail_b.205
branching_b.135 :
	addi	%r9 %r2 12
	lw.s	%r2 %f0 0
	fbne	%f0 %f6 tail_b.207
tail_b.206 :
	addi	%r0 %r2 1
	j	branching_b.136
tail_b.207 :
	addi	%r0 %r2 0
	j	branching_b.136
tail_b.205 :
	addi	%r0 %r2 0
	j	branching_b.137
branching_b.136 :
	beq	%r2 %r0 tail_b.208
tail_b.209 :
	addi	%r0 %r2 0
	j	branching_b.137
tail_b.208 :
	addi	%r0 %r2 1
	j	branching_b.137
branching_b.157 :
	lw.s	%r0 %f1 540
	bne	%r2 %r0 branching_b.158
tail_b.247 :
	addi	%r0 %r2 0
	j	branching_b.159
branching_b.158 :
	ilw.s	%r0 %f0 l.66
	fbge	%f1 %f0 tail_b.246
tail_b.245 :
	addi	%r0 %r2 1
	j	branching_b.159
tail_b.246 :
	addi	%r0 %r2 0
branching_b.159 :
	beq	%r2 %r0 branching_b.160
branching_b.161 :
	ilw.s	%r0 %f0 l.67
	add.s	%f0 %f1 %f2
	lw.s	%r0 %f0 312
	mul.s	%f2 %f0 %f1
	lw.s	%r0 %f0 552
	add.s	%f0 %f1 %f3
	lw.s	%r0 %f0 316
	mul.s	%f2 %f0 %f0
	lw.s	%r0 %f1 556
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f0 320
	mul.s	%f2 %f0 %f2
	lw.s	%r0 %f0 560
	add.s	%f0 %f2 %f2
	sw	%r26 %r4 0
	sw	%r26 %r5 -4
	sw	%r26 %r1 -8
	sw	%r26 %r6 -12
	sw	%r26 %r7 -16
	mov	%r6 %r2
	mov	%r0 %r1
	mov.s	%f3 %f0
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	check_all_inside.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	mov	%r1 %r2
	lw	%r26 %r4 0
	lw	%r26 %r5 -4
	lw	%r26 %r1 -8
	lw	%r26 %r6 -12
	lw	%r26 %r7 -16
	beq	%r2 %r0 tail_b.250
tail_b.251 :
	addi	%r0 %r2 1
	j	postloop_b.6
tail_b.250 :
	addi	%r7 %r7 1
	j	shadow_check_and_group_loop.1
branching_b.160 :
	slli	%r3 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r2 0
	lw	%r2 %r2 24
	beq	%r2 %r0 tail_b.248
tail_b.249 :
	addi	%r7 %r7 1
	j	shadow_check_and_group_loop.1
tail_b.248 :
	addi	%r0 %r2 0
	j	postloop_b.6
branching_b.124 :
	lw	%r10 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f1 0
	fbge	%f0 %f1 tail_b.190
tail_b.189 :
	addi	%r0 %r2 1
	j	branching_b.125
tail_b.190 :
	addi	%r0 %r2 0
branching_b.125 :
	beq	%r2 %r0 tail_b.191
branching_b.126 :
	addi	%r9 %r2 4
	lw.s	%r2 %f0 0
	fbne	%f0 %f6 tail_b.193
tail_b.192 :
	addi	%r0 %r2 1
	j	branching_b.127
tail_b.193 :
	addi	%r0 %r2 0
	j	branching_b.127
tail_b.191 :
	addi	%r0 %r2 0
	j	branching_b.128
branching_b.127 :
	beq	%r2 %r0 tail_b.194
tail_b.195 :
	addi	%r0 %r2 0
	j	branching_b.128
tail_b.194 :
	addi	%r0 %r2 1
	j	branching_b.128
branching_b.149 :
	beq	%r2 %r0 tail_b.230
tail_b.231 :
	addi	%r9 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f3 %f0 %f1
	addi	%r9 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r9 %r2 12
	lw.s	%r2 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r2 1
	j	branching_b.157
tail_b.230 :
	addi	%r0 %r2 0
	j	branching_b.157
branching_b.151 :
	beq	%r2 %r0 branching_b.152
tail_b.244 :
	addi	%r0 %r2 0
	j	branching_b.157
branching_b.152 :
	addi	%r9 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f3 %f0 %f1
	addi	%r9 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r9 %r2 12
	lw.s	%r2 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f6
	mul.s	%f3 %f3 %f0
	lw	%r10 %r2 16
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f4
	mul.s	%f2 %f2 %f1
	lw	%r10 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f1
	mul.s	%f5 %f5 %f0
	lw	%r10 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	lw	%r10 %r2 12
	beq	%r2 %r0 tail_b.234
tail_b.235 :
	mul.s	%f5 %f2 %f4
	lw	%r10 %r2 36
	lw.s	%r2 %f1 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f4
	mul.s	%f3 %f5 %f1
	lw	%r10 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f1
	lw	%r10 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f1
	j	branching_b.153
tail_b.234 :
	mov.s	%f0 %f1
branching_b.153 :
	lw	%r10 %r2 4
	addi	%r0 %r8 3
	beq	%r2 %r8 tail_b.236
tail_b.237 :
	mov.s	%f1 %f0
	j	branching_b.154
tail_b.236 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f0
branching_b.154 :
	mul.s	%f6 %f6 %f1
	mul.s	%f0 %f7 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f8 %f0 tail_b.239
tail_b.238 :
	addi	%r0 %r2 1
	j	branching_b.155
tail_b.239 :
	addi	%r0 %r2 0
branching_b.155 :
	beq	%r2 %r0 tail_b.240
branching_b.156 :
	lw	%r10 %r2 24
	beq	%r2 %r0 tail_b.241
tail_b.242 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f6 %f0
	addi	%r9 %r2 16
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.243
tail_b.241 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f6 %f1
	addi	%r9 %r2 16
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.243
tail_b.240 :
	addi	%r0 %r2 0
	j	branching_b.157
tail_b.243 :
	addi	%r0 %r2 1
	j	branching_b.157
shadow_check_one_or_matrix.0 :
	mov	%r2 %r4
preloop_b.8 :
	mov	%r1 %r5
	addi	%r0 %r3 -1
shadow_check_one_or_matrix_loop.0 :
	slli	%r5 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r6 0
	mov	%r6 %r1
	lw	%r1 %r2 0
	beq	%r2 %r3 tail_b.254
branching_b.164 :
	addi	%r0 %r1 99
	beq	%r2 %r1 tail_b.255
branching_b.165 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r8 0
	lw.s	%r0 %f0 552
	lw	%r8 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f5
	lw.s	%r0 %f0 556
	lw	%r8 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f0 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f3
	slli	%r2 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r7 0
	lw	%r8 %r1 4
	addi	%r0 %r2 1
	beq	%r1 %r2 branching_b.166
branching_b.193 :
	addi	%r0 %r9 2
	beq	%r1 %r9 branching_b.194
branching_b.196 :
	mov	%r7 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f7 l.51
	fbne	%f1 %f7 tail_b.307
tail_b.306 :
	addi	%r0 %r1 1
	j	branching_b.197
tail_b.307 :
	addi	%r0 %r1 0
	j	branching_b.197
branching_b.194 :
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.303
tail_b.302 :
	addi	%r0 %r1 1
	j	branching_b.195
tail_b.303 :
	addi	%r0 %r1 0
	j	branching_b.195
branching_b.166 :
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f0
	addi	%r7 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f1 740
	mul.s	%f1 %f0 %f1
	add.s	%f4 %f1 %f2
	ilw.s	%r0 %f6 l.51
	fbge	%f2 %f6 tail_b.257
tail_b.256 :
	neg.s	%f2 %f2
	j	branching_b.167
tail_b.257 :
	j	branching_b.167
tail_b.255 :
	addi	%r0 %r1 1
	j	branching_b.209
tail_b.254 :
	addi	%r0 %r1 0
postloop_b.10 :
return_point.8 :
	retl
branching_b.209 :
	beq	%r1 %r0 tail_b.328
preloop_b.10 :
	addi	%r0 %r7 1
shadow_check_one_or_group_loop.1 :
	slli	%r7 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r3 tail_b.329
branching_b.211 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r2 0
	sw	%r26 %r4 0
	sw	%r26 %r3 -4
	sw	%r26 %r5 -8
	sw	%r26 %r6 -12
	sw	%r26 %r7 -16
	mov	%r0 %r1
	sw	%r26 %r28 -20
	addi	%r26 %r26 -24
	jal	shadow_check_and_group.0
	addi	%r26 %r26 24
	lw	%r26 %r28 -20
	lw	%r26 %r4 0
	lw	%r26 %r3 -4
	lw	%r26 %r5 -8
	lw	%r26 %r6 -12
	lw	%r26 %r7 -16
	beq	%r1 %r0 tail_b.330
tail_b.331 :
	addi	%r0 %r1 1
	j	postloop_b.9
tail_b.330 :
	addi	%r7 %r7 1
	j	shadow_check_one_or_group_loop.1
tail_b.329 :
	addi	%r0 %r1 0
	j	postloop_b.9
tail_b.328 :
	addi	%r5 %r5 1
	j	shadow_check_one_or_matrix_loop.0
postloop_b.9 :
branching_b.212 :
	beq	%r1 %r0 tail_b.332
tail_b.333 :
	addi	%r0 %r1 1
	j	postloop_b.10
tail_b.332 :
	addi	%r5 %r1 1
	mov	%r1 %r5
	j	shadow_check_one_or_matrix_loop.0
branching_b.167 :
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f2 %f1 tail_b.259
tail_b.258 :
	addi	%r0 %r1 1
	j	branching_b.168
tail_b.259 :
	addi	%r0 %r1 0
branching_b.168 :
	beq	%r1 %r0 tail_b.260
branching_b.169 :
	lw.s	%r0 %f1 744
	mul.s	%f1 %f0 %f1
	add.s	%f3 %f1 %f1
	fbge	%f1 %f6 tail_b.262
tail_b.261 :
	neg.s	%f1 %f1
	j	branching_b.170
tail_b.262 :
	j	branching_b.170
tail_b.260 :
	addi	%r0 %r1 0
branching_b.174 :
	beq	%r1 %r0 branching_b.175
tail_b.301 :
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.203
branching_b.175 :
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f4 %f0 %f0
	addi	%r7 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f2
	lw.s	%r0 %f0 736
	mul.s	%f0 %f2 %f0
	add.s	%f5 %f0 %f1
	fbge	%f1 %f6 tail_b.271
tail_b.270 :
	neg.s	%f1 %f1
	j	branching_b.176
tail_b.271 :
branching_b.176 :
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.273
tail_b.272 :
	addi	%r0 %r1 1
	j	branching_b.177
tail_b.273 :
	addi	%r0 %r1 0
branching_b.177 :
	beq	%r1 %r0 tail_b.274
branching_b.178 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f2 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f6 tail_b.276
tail_b.275 :
	neg.s	%f0 %f0
	j	branching_b.179
tail_b.276 :
	j	branching_b.179
tail_b.274 :
	addi	%r0 %r1 0
branching_b.183 :
	beq	%r1 %r0 branching_b.184
tail_b.300 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 2
	j	branching_b.203
branching_b.184 :
	addi	%r7 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f3 %f0 %f1
	addi	%r7 %r1 20
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 736
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f6 tail_b.285
tail_b.284 :
	neg.s	%f0 %f2
	j	branching_b.185
tail_b.285 :
	mov.s	%f0 %f2
branching_b.185 :
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.287
tail_b.286 :
	addi	%r0 %r1 1
	j	branching_b.186
tail_b.287 :
	addi	%r0 %r1 0
branching_b.186 :
	beq	%r1 %r0 tail_b.288
branching_b.187 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f6 tail_b.290
tail_b.289 :
	neg.s	%f0 %f0
	j	branching_b.188
tail_b.290 :
	j	branching_b.188
tail_b.288 :
	addi	%r0 %r1 0
branching_b.192 :
	beq	%r1 %r0 tail_b.298
tail_b.299 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 3
	j	branching_b.203
tail_b.298 :
	addi	%r0 %r1 0
	j	branching_b.203
branching_b.188 :
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.292
tail_b.291 :
	addi	%r0 %r1 1
	j	branching_b.189
tail_b.292 :
	addi	%r0 %r1 0
branching_b.189 :
	beq	%r1 %r0 tail_b.293
branching_b.190 :
	addi	%r7 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f6 tail_b.295
tail_b.294 :
	addi	%r0 %r1 1
	j	branching_b.191
tail_b.295 :
	addi	%r0 %r1 0
	j	branching_b.191
tail_b.293 :
	addi	%r0 %r1 0
	j	branching_b.192
branching_b.191 :
	beq	%r1 %r0 tail_b.296
tail_b.297 :
	addi	%r0 %r1 0
	j	branching_b.192
tail_b.296 :
	addi	%r0 %r1 1
	j	branching_b.192
branching_b.179 :
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.278
tail_b.277 :
	addi	%r0 %r1 1
	j	branching_b.180
tail_b.278 :
	addi	%r0 %r1 0
branching_b.180 :
	beq	%r1 %r0 tail_b.279
branching_b.181 :
	addi	%r7 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f6 tail_b.281
tail_b.280 :
	addi	%r0 %r1 1
	j	branching_b.182
tail_b.281 :
	addi	%r0 %r1 0
	j	branching_b.182
tail_b.279 :
	addi	%r0 %r1 0
	j	branching_b.183
branching_b.182 :
	beq	%r1 %r0 tail_b.282
tail_b.283 :
	addi	%r0 %r1 0
	j	branching_b.183
tail_b.282 :
	addi	%r0 %r1 1
	j	branching_b.183
branching_b.203 :
	bne	%r1 %r0 branching_b.204
tail_b.327 :
	addi	%r0 %r1 0
	j	branching_b.209
branching_b.204 :
	lw.s	%r0 %f1 540
	ilw.s	%r0 %f0 l.68
	fbge	%f1 %f0 tail_b.320
tail_b.319 :
	addi	%r0 %r1 1
	j	branching_b.205
tail_b.320 :
	addi	%r0 %r1 0
branching_b.205 :
	beq	%r1 %r0 tail_b.321
preloop_b.9 :
	mov	%r2 %r7
shadow_check_one_or_group_loop.2 :
	slli	%r7 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r3 tail_b.322
branching_b.207 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r2 0
	sw	%r26 %r4 -20
	sw	%r26 %r3 -24
	sw	%r26 %r5 -28
	sw	%r26 %r6 -32
	sw	%r26 %r7 -36
	mov	%r0 %r1
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	shadow_check_and_group.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r4 -20
	lw	%r26 %r3 -24
	lw	%r26 %r5 -28
	lw	%r26 %r6 -32
	lw	%r26 %r7 -36
	beq	%r1 %r0 tail_b.323
tail_b.324 :
	addi	%r0 %r1 1
	j	postloop_b.8
tail_b.323 :
	addi	%r7 %r1 1
	mov	%r1 %r7
	j	shadow_check_one_or_group_loop.2
tail_b.322 :
	addi	%r0 %r1 0
	j	postloop_b.8
tail_b.321 :
	addi	%r0 %r1 0
	j	branching_b.209
postloop_b.8 :
branching_b.208 :
	beq	%r1 %r0 tail_b.325
tail_b.326 :
	addi	%r0 %r1 1
	j	branching_b.209
tail_b.325 :
	addi	%r0 %r1 0
	j	branching_b.209
branching_b.170 :
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	fbge	%f1 %f2 tail_b.264
tail_b.263 :
	addi	%r0 %r1 1
	j	branching_b.171
tail_b.264 :
	addi	%r0 %r1 0
branching_b.171 :
	beq	%r1 %r0 tail_b.265
branching_b.172 :
	addi	%r7 %r1 4
	lw.s	%r1 %f1 0
	fbne	%f1 %f6 tail_b.267
tail_b.266 :
	addi	%r0 %r1 1
	j	branching_b.173
tail_b.267 :
	addi	%r0 %r1 0
	j	branching_b.173
tail_b.265 :
	addi	%r0 %r1 0
	j	branching_b.174
branching_b.173 :
	beq	%r1 %r0 tail_b.268
tail_b.269 :
	addi	%r0 %r1 0
	j	branching_b.174
tail_b.268 :
	addi	%r0 %r1 1
	j	branching_b.174
branching_b.195 :
	beq	%r1 %r0 tail_b.304
tail_b.305 :
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	addi	%r7 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r7 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.203
tail_b.304 :
	addi	%r0 %r1 0
	j	branching_b.203
branching_b.197 :
	beq	%r1 %r0 branching_b.198
tail_b.318 :
	addi	%r0 %r1 0
	j	branching_b.203
branching_b.198 :
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f2
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f2
	addi	%r7 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f6
	mul.s	%f5 %f5 %f2
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f8
	mul.s	%f4 %f4 %f0
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f8 %f2
	mul.s	%f3 %f3 %f0
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f8 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f0
	lw	%r8 %r1 12
	beq	%r1 %r0 tail_b.308
tail_b.309 :
	mul.s	%f3 %f4 %f2
	lw	%r8 %r1 36
	lw.s	%r1 %f8 0
	mul.s	%f8 %f2 %f2
	add.s	%f2 %f0 %f8
	mul.s	%f5 %f3 %f0
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f4 %f5 %f3
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	j	branching_b.199
tail_b.308 :
branching_b.199 :
	lw	%r8 %r9 4
	addi	%r0 %r1 3
	beq	%r9 %r1 tail_b.310
tail_b.311 :
	j	branching_b.200
tail_b.310 :
	ilw.s	%r0 %f2 l.56
	sub.s	%f2 %f0 %f0
branching_b.200 :
	mul.s	%f6 %f6 %f2
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f2 %f0
	fbge	%f7 %f0 tail_b.313
tail_b.312 :
	addi	%r0 %r1 1
	j	branching_b.201
tail_b.313 :
	addi	%r0 %r1 0
branching_b.201 :
	beq	%r1 %r0 tail_b.314
branching_b.202 :
	lw	%r8 %r1 24
	beq	%r1 %r0 tail_b.315
tail_b.316 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f6 %f0
	addi	%r7 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.317
tail_b.315 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f6 %f0
	addi	%r7 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.317
tail_b.314 :
	addi	%r0 %r1 0
	j	branching_b.203
tail_b.317 :
	addi	%r0 %r1 1
	j	branching_b.203
solve_each_element.0 :
	mov	%r3 %r5
	mov	%r2 %r4
preloop_b.11 :
	mov	%r1 %r3
	addi	%r0 %r6 -1
solve_each_element_loop.0 :
	slli	%r3 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r8 0
	beq	%r8 %r6 tail_b.334
branching_b.214 :
	slli	%r8 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r9 0
	lw.s	%r0 %f1 636
	lw	%r9 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f3
	lw.s	%r0 %f1 640
	lw	%r9 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f4
	lw.s	%r0 %f0 644
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f2
	lw	%r9 %r1 4
	addi	%r0 %r7 1
	beq	%r1 %r7 branching_b.215
branching_b.254 :
	addi	%r0 %r2 2
	beq	%r1 %r2 branching_b.255
branching_b.257 :
	mov	%r5 %r1
	lw.s	%r1 %f8 0
	addi	%r5 %r1 4
	lw.s	%r1 %f6 0
	addi	%r5 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f8 %f8 %f5
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f7
	mul.s	%f6 %f6 %f5
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f1 %f1 %f7
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f7 %f5
	add.s	%f5 %f0 %f5
	lw	%r9 %r1 12
	beq	%r1 %r0 tail_b.406
tail_b.407 :
	mul.s	%f1 %f6 %f7
	lw	%r9 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f8 %f1 %f1
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f1
	mul.s	%f6 %f8 %f5
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f1 %f8
	j	branching_b.258
tail_b.406 :
	mov.s	%f5 %f8
	j	branching_b.258
branching_b.255 :
	lw	%r9 %r2 16
	mov	%r5 %r1
	lw.s	%r1 %f1 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f5
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	addi	%r5 %r1 8
	lw.s	%r1 %f1 0
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f1
	ilw.s	%r0 %f0 l.51
	fbge	%f0 %f1 tail_b.403
tail_b.402 :
	addi	%r0 %r1 1
	j	branching_b.256
tail_b.403 :
	addi	%r0 %r1 0
	j	branching_b.256
branching_b.215 :
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f5 l.51
	fbne	%f0 %f5 tail_b.336
tail_b.335 :
	addi	%r0 %r1 1
	j	branching_b.216
tail_b.336 :
	addi	%r0 %r1 0
	j	branching_b.216
tail_b.334 :
postloop_b.12 :
return_point.9 :
	retl
branching_b.216 :
	beq	%r1 %r0 branching_b.217
tail_b.355 :
	addi	%r0 %r1 0
	j	branching_b.227
branching_b.217 :
	lw	%r9 %r10 16
	lw	%r9 %r1 24
	mov	%r5 %r2
	lw.s	%r2 %f0 0
	fbge	%f0 %f5 tail_b.338
tail_b.337 :
	addi	%r0 %r2 1
	j	branching_b.218
tail_b.338 :
	addi	%r0 %r2 0
branching_b.218 :
	beq	%r1 %r0 tail_b.339
branching_b.219 :
	beq	%r2 %r0 tail_b.340
tail_b.341 :
	addi	%r0 %r1 0
	j	branching_b.220
tail_b.340 :
	addi	%r0 %r1 1
	j	branching_b.220
tail_b.339 :
	mov	%r2 %r1
branching_b.220 :
	mov	%r10 %r2
	lw.s	%r2 %f0 0
	beq	%r1 %r0 tail_b.342
tail_b.343 :
	j	branching_b.221
tail_b.342 :
	neg.s	%f0 %f0
branching_b.221 :
	sub.s	%f3 %f0 %f0
	mov	%r5 %r1
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f6
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f5 tail_b.345
tail_b.344 :
	neg.s	%f0 %f1
	j	branching_b.222
tail_b.345 :
	mov.s	%f0 %f1
branching_b.222 :
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.347
tail_b.346 :
	addi	%r0 %r1 1
	j	branching_b.223
tail_b.347 :
	addi	%r0 %r1 0
branching_b.223 :
	beq	%r1 %r0 tail_b.348
branching_b.224 :
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f2 %f0 %f0
	fbge	%f0 %f5 tail_b.350
tail_b.349 :
	neg.s	%f0 %f0
	j	branching_b.225
tail_b.350 :
	j	branching_b.225
tail_b.348 :
	addi	%r0 %r1 0
	j	branching_b.227
branching_b.225 :
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.352
tail_b.351 :
	addi	%r0 %r1 1
	j	branching_b.226
tail_b.352 :
	addi	%r0 %r1 0
branching_b.226 :
	beq	%r1 %r0 tail_b.353
tail_b.354 :
	sw.s	%r0 %f6 540
	addi	%r0 %r1 1
	j	branching_b.227
tail_b.353 :
	addi	%r0 %r1 0
branching_b.227 :
	beq	%r1 %r0 branching_b.228
tail_b.401 :
	addi	%r0 %r9 1
	j	branching_b.266
branching_b.228 :
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f5 tail_b.357
tail_b.356 :
	addi	%r0 %r1 1
	j	branching_b.229
tail_b.357 :
	addi	%r0 %r1 0
branching_b.229 :
	beq	%r1 %r0 branching_b.230
tail_b.376 :
	addi	%r0 %r1 0
	j	branching_b.240
branching_b.230 :
	lw	%r9 %r10 16
	lw	%r9 %r2 24
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f0 %f5 tail_b.359
tail_b.358 :
	addi	%r0 %r1 1
	j	branching_b.231
tail_b.359 :
	addi	%r0 %r1 0
branching_b.231 :
	beq	%r2 %r0 tail_b.360
branching_b.232 :
	beq	%r1 %r0 tail_b.361
tail_b.362 :
	addi	%r0 %r1 0
	j	branching_b.233
tail_b.361 :
	addi	%r0 %r1 1
	j	branching_b.233
tail_b.360 :
branching_b.233 :
	addi	%r10 %r2 4
	lw.s	%r2 %f0 0
	beq	%r1 %r0 tail_b.363
tail_b.364 :
	j	branching_b.234
tail_b.363 :
	neg.s	%f0 %f0
branching_b.234 :
	sub.s	%f4 %f0 %f0
	addi	%r5 %r1 4
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f6
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f2 %f0 %f0
	fbge	%f0 %f5 tail_b.366
tail_b.365 :
	neg.s	%f0 %f0
	j	branching_b.235
tail_b.366 :
branching_b.235 :
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.368
tail_b.367 :
	addi	%r0 %r1 1
	j	branching_b.236
tail_b.368 :
	addi	%r0 %r1 0
branching_b.236 :
	beq	%r1 %r0 tail_b.369
branching_b.237 :
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f5 tail_b.371
tail_b.370 :
	neg.s	%f0 %f0
	j	branching_b.238
tail_b.371 :
	j	branching_b.238
tail_b.369 :
	addi	%r0 %r1 0
	j	branching_b.240
branching_b.238 :
	mov	%r10 %r1
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.373
tail_b.372 :
	addi	%r0 %r1 1
	j	branching_b.239
tail_b.373 :
	addi	%r0 %r1 0
branching_b.239 :
	beq	%r1 %r0 tail_b.374
tail_b.375 :
	sw.s	%r0 %f6 540
	addi	%r0 %r1 1
	j	branching_b.240
tail_b.374 :
	addi	%r0 %r1 0
branching_b.240 :
	beq	%r1 %r0 branching_b.241
tail_b.400 :
	addi	%r0 %r9 2
	j	branching_b.266
branching_b.241 :
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f5 tail_b.378
tail_b.377 :
	addi	%r0 %r1 1
	j	branching_b.242
tail_b.378 :
	addi	%r0 %r1 0
branching_b.242 :
	beq	%r1 %r0 branching_b.243
tail_b.397 :
	addi	%r0 %r1 0
	j	branching_b.253
branching_b.243 :
	lw	%r9 %r2 16
	lw	%r9 %r1 24
	addi	%r5 %r9 8
	lw.s	%r9 %f0 0
	fbge	%f0 %f5 tail_b.380
tail_b.379 :
	addi	%r0 %r9 1
	j	branching_b.244
tail_b.380 :
	addi	%r0 %r9 0
branching_b.244 :
	beq	%r1 %r0 tail_b.381
branching_b.245 :
	beq	%r9 %r0 tail_b.382
tail_b.383 :
	addi	%r0 %r9 0
	j	branching_b.246
tail_b.382 :
	addi	%r0 %r9 1
	j	branching_b.246
tail_b.381 :
branching_b.246 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	beq	%r9 %r0 tail_b.384
tail_b.385 :
	j	branching_b.247
tail_b.384 :
	neg.s	%f0 %f0
branching_b.247 :
	sub.s	%f2 %f0 %f1
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f0 %f1 %f2
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f5 tail_b.387
tail_b.386 :
	neg.s	%f0 %f0
	j	branching_b.248
tail_b.387 :
branching_b.248 :
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.389
tail_b.388 :
	addi	%r0 %r1 1
	j	branching_b.249
tail_b.389 :
	addi	%r0 %r1 0
branching_b.249 :
	beq	%r1 %r0 tail_b.390
branching_b.250 :
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f1
	fbge	%f1 %f5 tail_b.392
tail_b.391 :
	neg.s	%f1 %f1
	j	branching_b.251
tail_b.392 :
	j	branching_b.251
tail_b.390 :
	addi	%r0 %r1 0
	j	branching_b.253
branching_b.251 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.394
tail_b.393 :
	addi	%r0 %r1 1
	j	branching_b.252
tail_b.394 :
	addi	%r0 %r1 0
branching_b.252 :
	beq	%r1 %r0 tail_b.395
tail_b.396 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 1
	j	branching_b.253
tail_b.395 :
	addi	%r0 %r1 0
branching_b.253 :
	beq	%r1 %r0 tail_b.398
tail_b.399 :
	addi	%r0 %r9 3
	j	branching_b.266
tail_b.398 :
	addi	%r0 %r9 0
branching_b.266 :
	addi	%r0 %r2 0
	bne	%r9 %r0 branching_b.267
branching_b.296 :
	slli	%r8 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	beq	%r1 %r0 tail_b.470
tail_b.471 :
	addi	%r3 %r3 1
	j	solve_each_element_loop.0
tail_b.470 :
	j	postloop_b.12
branching_b.267 :
	lw.s	%r0 %f1 540
	ilw.s	%r0 %f5 l.51
	fbge	%f5 %f1 tail_b.424
tail_b.423 :
	addi	%r0 %r1 1
	j	branching_b.268
tail_b.424 :
	addi	%r0 %r1 0
branching_b.268 :
	beq	%r1 %r0 tail_b.425
branching_b.269 :
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.427
tail_b.426 :
	addi	%r0 %r1 1
	j	branching_b.270
tail_b.427 :
	addi	%r0 %r1 0
	j	branching_b.270
tail_b.425 :
tail_b.469 :
	addi	%r3 %r3 1
	j	solve_each_element_loop.0
branching_b.270 :
	beq	%r1 %r0 tail_b.428
preloop_b.12 :
	ilw.s	%r0 %f0 l.67
	add.s	%f0 %f1 %f1
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f2 636
	add.s	%f2 %f0 %f6
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f2 640
	add.s	%f2 %f0 %f7
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f2 644
	add.s	%f2 %f0 %f8
check_all_inside_loop.2 :
	slli	%r2 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r6 tail_b.429
branching_b.272 :
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r10 0
	lw	%r10 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f6 %f10
	lw	%r10 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f7 %f2
	lw	%r10 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f8 %f4
	lw	%r10 %r11 4
	beq	%r11 %r7 branching_b.273
branching_b.283 :
	addi	%r0 %r1 2
	beq	%r11 %r1 branching_b.284
branching_b.288 :
	mul.s	%f10 %f10 %f0
	lw	%r10 %r1 16
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f3
	mul.s	%f2 %f2 %f0
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f3 %f3
	mul.s	%f4 %f4 %f0
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f3 %f0
	lw	%r10 %r1 12
	beq	%r1 %r0 tail_b.454
tail_b.455 :
	mul.s	%f4 %f2 %f3
	lw	%r10 %r1 36
	lw.s	%r1 %f9 0
	mul.s	%f9 %f3 %f3
	add.s	%f3 %f0 %f9
	mul.s	%f10 %f4 %f0
	lw	%r10 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f9 %f3
	mul.s	%f2 %f10 %f0
	lw	%r10 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f2
	j	branching_b.289
tail_b.454 :
	mov.s	%f0 %f2
	j	branching_b.289
branching_b.284 :
	lw	%r10 %r11 16
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	mul.s	%f10 %f0 %f0
	addi	%r11 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f2
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f0
	lw	%r10 %r1 24
	fbge	%f0 %f5 tail_b.448
tail_b.447 :
	addi	%r0 %r10 1
	j	branching_b.285
tail_b.448 :
	addi	%r0 %r10 0
	j	branching_b.285
branching_b.273 :
	fbge	%f10 %f5 tail_b.431
tail_b.430 :
	neg.s	%f10 %f0
	j	branching_b.274
tail_b.431 :
	mov.s	%f10 %f0
	j	branching_b.274
tail_b.429 :
	addi	%r0 %r1 1
	j	postloop_b.11
tail_b.428 :
	j	tail_b.469
postloop_b.11 :
branching_b.295 :
	beq	%r1 %r0 tail_b.467
tail_b.468 :
	sw.s	%r0 %f1 548
	sw.s	%r0 %f6 552
	sw.s	%r0 %f7 556
	sw.s	%r0 %f8 560
	sw	%r0 %r8 564
	sw	%r0 %r9 544
	j	tail_b.469
tail_b.467 :
	j	tail_b.469
branching_b.274 :
	lw	%r10 %r1 16
	lw.s	%r1 %f3 0
	fbge	%f0 %f3 tail_b.433
tail_b.432 :
	addi	%r0 %r1 1
	j	branching_b.275
tail_b.433 :
	addi	%r0 %r1 0
branching_b.275 :
	beq	%r1 %r0 tail_b.434
branching_b.276 :
	fbge	%f2 %f5 tail_b.436
tail_b.435 :
	neg.s	%f2 %f2
	j	branching_b.277
tail_b.436 :
	j	branching_b.277
tail_b.434 :
	addi	%r0 %r1 0
branching_b.281 :
	beq	%r1 %r0 branching_b.282
tail_b.446 :
	lw	%r10 %r1 24
	j	branching_b.294
branching_b.282 :
	lw	%r10 %r1 24
	beq	%r1 %r0 tail_b.444
tail_b.445 :
	addi	%r0 %r1 0
	j	branching_b.294
tail_b.444 :
	addi	%r0 %r1 1
branching_b.294 :
	beq	%r1 %r0 tail_b.465
tail_b.466 :
	addi	%r0 %r1 0
	j	postloop_b.11
tail_b.465 :
	addi	%r2 %r2 1
	j	check_all_inside_loop.2
branching_b.277 :
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.438
tail_b.437 :
	addi	%r0 %r1 1
	j	branching_b.278
tail_b.438 :
	addi	%r0 %r1 0
branching_b.278 :
	beq	%r1 %r0 tail_b.439
branching_b.279 :
	fbge	%f4 %f5 tail_b.441
tail_b.440 :
	neg.s	%f4 %f0
	j	branching_b.280
tail_b.441 :
	mov.s	%f4 %f0
	j	branching_b.280
tail_b.439 :
	addi	%r0 %r1 0
	j	branching_b.281
branching_b.280 :
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.443
tail_b.442 :
	addi	%r0 %r1 1
	j	branching_b.281
tail_b.443 :
	addi	%r0 %r1 0
	j	branching_b.281
branching_b.285 :
	beq	%r1 %r0 tail_b.449
branching_b.286 :
	beq	%r10 %r0 tail_b.450
tail_b.451 :
	addi	%r0 %r10 0
	j	branching_b.287
tail_b.450 :
	addi	%r0 %r10 1
	j	branching_b.287
tail_b.449 :
branching_b.287 :
	beq	%r10 %r0 tail_b.452
tail_b.453 :
	addi	%r0 %r1 0
	j	branching_b.294
tail_b.452 :
	addi	%r0 %r1 1
	j	branching_b.294
branching_b.289 :
	lw	%r10 %r1 4
	addi	%r0 %r11 3
	beq	%r1 %r11 tail_b.456
tail_b.457 :
	mov.s	%f2 %f0
	j	branching_b.290
tail_b.456 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f2 %f0
branching_b.290 :
	lw	%r10 %r1 24
	fbge	%f0 %f5 tail_b.459
tail_b.458 :
	addi	%r0 %r10 1
	j	branching_b.291
tail_b.459 :
	addi	%r0 %r10 0
branching_b.291 :
	beq	%r1 %r0 tail_b.460
branching_b.292 :
	beq	%r10 %r0 tail_b.461
tail_b.462 :
	addi	%r0 %r1 0
	j	branching_b.293
tail_b.461 :
	addi	%r0 %r1 1
	j	branching_b.293
tail_b.460 :
	mov	%r10 %r1
branching_b.293 :
	beq	%r1 %r0 tail_b.463
tail_b.464 :
	addi	%r0 %r1 0
	j	branching_b.294
tail_b.463 :
	addi	%r0 %r1 1
	j	branching_b.294
branching_b.256 :
	beq	%r1 %r0 tail_b.404
tail_b.405 :
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	addi	%r2 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f0 %f0
	addi	%r2 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r9 1
	j	branching_b.266
tail_b.404 :
	addi	%r0 %r9 0
	j	branching_b.266
branching_b.258 :
	ilw.s	%r0 %f1 l.51
	fbne	%f8 %f1 tail_b.409
tail_b.408 :
	addi	%r0 %r1 1
	j	branching_b.259
tail_b.409 :
	addi	%r0 %r1 0
branching_b.259 :
	beq	%r1 %r0 branching_b.260
tail_b.422 :
	addi	%r0 %r9 0
	j	branching_b.266
branching_b.260 :
	mov	%r5 %r1
	lw.s	%r1 %f11 0
	addi	%r5 %r1 4
	lw.s	%r1 %f7 0
	addi	%r5 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f3 %f11 %f0
	lw	%r9 %r1 16
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	mul.s	%f4 %f7 %f9
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f6 0
	mul.s	%f6 %f9 %f6
	add.s	%f6 %f0 %f9
	mul.s	%f2 %f5 %f0
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f9 %f6
	lw	%r9 %r1 12
	beq	%r1 %r0 tail_b.410
tail_b.411 :
	mul.s	%f4 %f5 %f9
	mul.s	%f2 %f7 %f0
	add.s	%f0 %f9 %f0
	lw	%r9 %r1 36
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f9
	mul.s	%f2 %f11 %f10
	mul.s	%f3 %f5 %f0
	add.s	%f0 %f10 %f5
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f9 %f5
	mul.s	%f4 %f11 %f9
	mul.s	%f3 %f7 %f0
	add.s	%f0 %f9 %f0
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.69
	div.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f7
	j	branching_b.261
tail_b.410 :
	mov.s	%f6 %f7
branching_b.261 :
	mul.s	%f3 %f3 %f0
	lw	%r9 %r1 16
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f6
	mul.s	%f4 %f4 %f0
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f2 %f2 %f5
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	lw	%r9 %r1 12
	beq	%r1 %r0 tail_b.412
tail_b.413 :
	mul.s	%f2 %f4 %f6
	lw	%r9 %r1 36
	lw.s	%r1 %f5 0
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f0 %f5
	mul.s	%f3 %f2 %f2
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f5 %f2
	mul.s	%f4 %f3 %f0
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	j	branching_b.262
tail_b.412 :
branching_b.262 :
	lw	%r9 %r2 4
	addi	%r0 %r1 3
	beq	%r2 %r1 tail_b.414
tail_b.415 :
	j	branching_b.263
tail_b.414 :
	ilw.s	%r0 %f2 l.56
	sub.s	%f2 %f0 %f0
branching_b.263 :
	mul.s	%f7 %f7 %f2
	mul.s	%f0 %f8 %f0
	sub.s	%f0 %f2 %f0
	fbge	%f1 %f0 tail_b.417
tail_b.416 :
	addi	%r0 %r1 1
	j	branching_b.264
tail_b.417 :
	addi	%r0 %r1 0
branching_b.264 :
	beq	%r1 %r0 tail_b.418
branching_b.265 :
	sqrt.s	%f0 %f0
	lw	%r9 %r1 24
	beq	%r1 %r0 tail_b.419
tail_b.420 :
	j	tail_b.421
tail_b.419 :
	neg.s	%f0 %f0
	j	tail_b.421
tail_b.418 :
	addi	%r0 %r9 0
	j	branching_b.266
tail_b.421 :
	sub.s	%f7 %f0 %f0
	div.s	%f8 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r9 1
	j	branching_b.266
solve_one_or_network.0 :
	mov	%r3 %r5
	mov	%r2 %r3
preloop_b.13 :
	mov	%r1 %r6
	addi	%r0 %r8 -1
solve_one_or_network_loop.0 :
	slli	%r6 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	bne	%r1 %r8 preloop_b.14
tail_b.573 :
	j	postloop_b.14
preloop_b.14 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r7 0
	addi	%r0 %r2 0
solve_each_element_loop.1 :
	slli	%r2 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r4 0
	beq	%r4 %r8 tail_b.472
branching_b.299 :
	slli	%r4 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r10 0
	lw.s	%r0 %f1 636
	lw	%r10 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f1 640
	lw	%r10 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f4
	lw.s	%r0 %f0 644
	lw	%r10 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f3
	lw	%r10 %r9 4
	addi	%r0 %r1 1
	beq	%r9 %r1 branching_b.300
branching_b.339 :
	addi	%r0 %r1 2
	beq	%r9 %r1 branching_b.340
branching_b.342 :
	mov	%r5 %r1
	lw.s	%r1 %f6 0
	addi	%r5 %r1 4
	lw.s	%r1 %f8 0
	addi	%r5 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f6 %f6 %f0
	lw	%r10 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f2
	mul.s	%f8 %f8 %f1
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f7 %f7 %f1
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f2
	lw	%r10 %r1 12
	beq	%r1 %r0 tail_b.544
tail_b.545 :
	mul.s	%f7 %f8 %f0
	lw	%r10 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f6 %f7 %f1
	lw	%r10 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f8 %f6 %f1
	lw	%r10 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f6
	j	branching_b.343
tail_b.544 :
	mov.s	%f2 %f6
	j	branching_b.343
branching_b.340 :
	lw	%r10 %r9 16
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
	add.s	%f0 %f2 %f2
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	addi	%r9 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f1
	ilw.s	%r0 %f0 l.51
	fbge	%f0 %f1 tail_b.541
tail_b.540 :
	addi	%r0 %r1 1
	j	branching_b.341
tail_b.541 :
	addi	%r0 %r1 0
	j	branching_b.341
branching_b.300 :
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f6 l.51
	fbne	%f0 %f6 tail_b.474
tail_b.473 :
	addi	%r0 %r1 1
	j	branching_b.301
tail_b.474 :
	addi	%r0 %r1 0
	j	branching_b.301
tail_b.472 :
postloop_b.13 :
tail_b.572 :
	addi	%r6 %r6 1
	j	solve_one_or_network_loop.0
branching_b.301 :
	beq	%r1 %r0 branching_b.302
tail_b.493 :
	addi	%r0 %r1 0
	j	branching_b.312
branching_b.302 :
	lw	%r10 %r11 16
	lw	%r10 %r9 24
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f6 tail_b.476
tail_b.475 :
	addi	%r0 %r1 1
	j	branching_b.303
tail_b.476 :
	addi	%r0 %r1 0
branching_b.303 :
	beq	%r9 %r0 tail_b.477
branching_b.304 :
	beq	%r1 %r0 tail_b.478
tail_b.479 :
	addi	%r0 %r9 0
	j	branching_b.305
tail_b.478 :
	addi	%r0 %r9 1
	j	branching_b.305
tail_b.477 :
	mov	%r1 %r9
branching_b.305 :
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	beq	%r9 %r0 tail_b.480
tail_b.481 :
	j	branching_b.306
tail_b.480 :
	neg.s	%f0 %f0
branching_b.306 :
	sub.s	%f5 %f0 %f0
	mov	%r5 %r1
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f1
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f6 tail_b.483
tail_b.482 :
	neg.s	%f0 %f2
	j	branching_b.307
tail_b.483 :
	mov.s	%f0 %f2
branching_b.307 :
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.485
tail_b.484 :
	addi	%r0 %r1 1
	j	branching_b.308
tail_b.485 :
	addi	%r0 %r1 0
branching_b.308 :
	beq	%r1 %r0 tail_b.486
branching_b.309 :
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f6 tail_b.488
tail_b.487 :
	neg.s	%f0 %f2
	j	branching_b.310
tail_b.488 :
	mov.s	%f0 %f2
	j	branching_b.310
tail_b.486 :
	addi	%r0 %r1 0
	j	branching_b.312
branching_b.310 :
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.490
tail_b.489 :
	addi	%r0 %r1 1
	j	branching_b.311
tail_b.490 :
	addi	%r0 %r1 0
branching_b.311 :
	beq	%r1 %r0 tail_b.491
tail_b.492 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 1
	j	branching_b.312
tail_b.491 :
	addi	%r0 %r1 0
branching_b.312 :
	beq	%r1 %r0 branching_b.313
tail_b.539 :
	addi	%r0 %r9 1
	j	branching_b.351
branching_b.313 :
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f6 tail_b.495
tail_b.494 :
	addi	%r0 %r1 1
	j	branching_b.314
tail_b.495 :
	addi	%r0 %r1 0
branching_b.314 :
	beq	%r1 %r0 branching_b.315
tail_b.514 :
	addi	%r0 %r1 0
	j	branching_b.325
branching_b.315 :
	lw	%r10 %r11 16
	lw	%r10 %r9 24
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f0 %f6 tail_b.497
tail_b.496 :
	addi	%r0 %r1 1
	j	branching_b.316
tail_b.497 :
	addi	%r0 %r1 0
branching_b.316 :
	beq	%r9 %r0 tail_b.498
branching_b.317 :
	beq	%r1 %r0 tail_b.499
tail_b.500 :
	addi	%r0 %r1 0
	j	branching_b.318
tail_b.499 :
	addi	%r0 %r1 1
	j	branching_b.318
tail_b.498 :
branching_b.318 :
	addi	%r11 %r9 4
	lw.s	%r9 %f0 0
	beq	%r1 %r0 tail_b.501
tail_b.502 :
	j	branching_b.319
tail_b.501 :
	neg.s	%f0 %f0
branching_b.319 :
	sub.s	%f4 %f0 %f1
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f1 %f1
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f3 %f0 %f2
	fbge	%f2 %f6 tail_b.504
tail_b.503 :
	neg.s	%f2 %f2
	j	branching_b.320
tail_b.504 :
branching_b.320 :
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.506
tail_b.505 :
	addi	%r0 %r1 1
	j	branching_b.321
tail_b.506 :
	addi	%r0 %r1 0
branching_b.321 :
	beq	%r1 %r0 tail_b.507
branching_b.322 :
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f6 tail_b.509
tail_b.508 :
	neg.s	%f0 %f0
	j	branching_b.323
tail_b.509 :
	j	branching_b.323
tail_b.507 :
	addi	%r0 %r1 0
	j	branching_b.325
branching_b.323 :
	mov	%r11 %r1
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.511
tail_b.510 :
	addi	%r0 %r1 1
	j	branching_b.324
tail_b.511 :
	addi	%r0 %r1 0
branching_b.324 :
	beq	%r1 %r0 tail_b.512
tail_b.513 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 1
	j	branching_b.325
tail_b.512 :
	addi	%r0 %r1 0
branching_b.325 :
	beq	%r1 %r0 branching_b.326
tail_b.538 :
	addi	%r0 %r9 2
	j	branching_b.351
branching_b.326 :
	addi	%r5 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f6 tail_b.516
tail_b.515 :
	addi	%r0 %r1 1
	j	branching_b.327
tail_b.516 :
	addi	%r0 %r1 0
branching_b.327 :
	beq	%r1 %r0 branching_b.328
tail_b.535 :
	addi	%r0 %r1 0
	j	branching_b.338
branching_b.328 :
	lw	%r10 %r9 16
	lw	%r10 %r1 24
	addi	%r5 %r10 8
	lw.s	%r10 %f0 0
	fbge	%f0 %f6 tail_b.518
tail_b.517 :
	addi	%r0 %r10 1
	j	branching_b.329
tail_b.518 :
	addi	%r0 %r10 0
branching_b.329 :
	beq	%r1 %r0 tail_b.519
branching_b.330 :
	beq	%r10 %r0 tail_b.520
tail_b.521 :
	addi	%r0 %r10 0
	j	branching_b.331
tail_b.520 :
	addi	%r0 %r10 1
	j	branching_b.331
tail_b.519 :
branching_b.331 :
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	beq	%r10 %r0 tail_b.522
tail_b.523 :
	j	branching_b.332
tail_b.522 :
	neg.s	%f0 %f0
branching_b.332 :
	sub.s	%f3 %f0 %f0
	addi	%r5 %r1 8
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f2
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f6 tail_b.525
tail_b.524 :
	neg.s	%f0 %f0
	j	branching_b.333
tail_b.525 :
branching_b.333 :
	mov	%r9 %r1
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.527
tail_b.526 :
	addi	%r0 %r1 1
	j	branching_b.334
tail_b.527 :
	addi	%r0 %r1 0
branching_b.334 :
	beq	%r1 %r0 tail_b.528
branching_b.335 :
	addi	%r5 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f6 tail_b.530
tail_b.529 :
	neg.s	%f0 %f0
	j	branching_b.336
tail_b.530 :
	j	branching_b.336
tail_b.528 :
	addi	%r0 %r1 0
	j	branching_b.338
branching_b.336 :
	addi	%r9 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.532
tail_b.531 :
	addi	%r0 %r1 1
	j	branching_b.337
tail_b.532 :
	addi	%r0 %r1 0
branching_b.337 :
	beq	%r1 %r0 tail_b.533
tail_b.534 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 1
	j	branching_b.338
tail_b.533 :
	addi	%r0 %r1 0
branching_b.338 :
	beq	%r1 %r0 tail_b.536
tail_b.537 :
	addi	%r0 %r9 3
	j	branching_b.351
tail_b.536 :
	addi	%r0 %r9 0
branching_b.351 :
	bne	%r9 %r0 branching_b.352
branching_b.357 :
	slli	%r4 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	beq	%r1 %r0 tail_b.570
tail_b.571 :
	addi	%r2 %r2 1
	j	solve_each_element_loop.1
tail_b.570 :
	j	postloop_b.13
branching_b.352 :
	lw.s	%r0 %f0 540
	ilw.s	%r0 %f1 l.51
	fbge	%f1 %f0 tail_b.562
tail_b.561 :
	addi	%r0 %r1 1
	j	branching_b.353
tail_b.562 :
	addi	%r0 %r1 0
branching_b.353 :
	beq	%r1 %r0 tail_b.563
branching_b.354 :
	lw.s	%r0 %f1 548
	fbge	%f0 %f1 tail_b.565
tail_b.564 :
	addi	%r0 %r1 1
	j	branching_b.355
tail_b.565 :
	addi	%r0 %r1 0
	j	branching_b.355
tail_b.563 :
tail_b.569 :
	addi	%r2 %r2 1
	j	solve_each_element_loop.1
branching_b.355 :
	beq	%r1 %r0 tail_b.566
branching_b.356 :
	ilw.s	%r0 %f1 l.67
	add.s	%f1 %f0 %f3
	mov	%r5 %r1
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f1
	lw.s	%r0 %f0 636
	add.s	%f0 %f1 %f0
	addi	%r5 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f3 %f1 %f1
	lw.s	%r0 %f2 640
	add.s	%f2 %f1 %f1
	addi	%r5 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f3 %f2 %f2
	lw.s	%r0 %f4 644
	add.s	%f4 %f2 %f2
	sw	%r26 %r3 0
	sw	%r26 %r5 -4
	sw	%r26 %r8 -8
	sw	%r26 %r6 -12
	sw	%r26 %r7 -16
	sw	%r26 %r2 -20
	sw	%r26 %r4 -24
	sw	%r26 %r9 -28
	sw.s	%r26 %f3 -32
	sw.s	%r26 %f0 -36
	sw.s	%r26 %f1 -40
	sw.s	%r26 %f2 -44
	mov	%r7 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	check_all_inside.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw	%r26 %r3 0
	lw	%r26 %r5 -4
	lw	%r26 %r8 -8
	lw	%r26 %r6 -12
	lw	%r26 %r7 -16
	lw	%r26 %r2 -20
	lw	%r26 %r4 -24
	lw	%r26 %r9 -28
	lw.s	%r26 %f3 -32
	lw.s	%r26 %f0 -36
	lw.s	%r26 %f1 -40
	lw.s	%r26 %f2 -44
	beq	%r1 %r0 tail_b.567
tail_b.568 :
	sw.s	%r0 %f3 548
	sw.s	%r0 %f0 552
	sw.s	%r0 %f1 556
	sw.s	%r0 %f2 560
	sw	%r0 %r4 564
	sw	%r0 %r9 544
	j	tail_b.569
tail_b.567 :
	j	tail_b.569
tail_b.566 :
	j	tail_b.569
branching_b.341 :
	beq	%r1 %r0 tail_b.542
tail_b.543 :
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f2
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f2
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	neg.s	%f0 %f0
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r9 1
	j	branching_b.351
tail_b.542 :
	addi	%r0 %r9 0
	j	branching_b.351
branching_b.343 :
	ilw.s	%r0 %f7 l.51
	fbne	%f6 %f7 tail_b.547
tail_b.546 :
	addi	%r0 %r1 1
	j	branching_b.344
tail_b.547 :
	addi	%r0 %r1 0
branching_b.344 :
	beq	%r1 %r0 branching_b.345
tail_b.560 :
	addi	%r0 %r9 0
	j	branching_b.351
branching_b.345 :
	mov	%r5 %r1
	lw.s	%r1 %f10 0
	addi	%r5 %r1 4
	lw.s	%r1 %f9 0
	addi	%r5 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f5 %f10 %f1
	lw	%r10 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mul.s	%f4 %f9 %f0
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f8 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f8
	mul.s	%f3 %f2 %f0
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f8
	lw	%r10 %r1 12
	beq	%r1 %r0 tail_b.548
tail_b.549 :
	mul.s	%f4 %f2 %f0
	mul.s	%f3 %f9 %f1
	add.s	%f1 %f0 %f1
	lw	%r10 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mul.s	%f3 %f10 %f11
	mul.s	%f5 %f2 %f0
	add.s	%f0 %f11 %f0
	lw	%r10 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f4 %f10 %f0
	mul.s	%f5 %f9 %f2
	add.s	%f2 %f0 %f0
	lw	%r10 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.69
	div.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f2
	j	branching_b.346
tail_b.548 :
	mov.s	%f8 %f2
branching_b.346 :
	mul.s	%f5 %f5 %f0
	lw	%r10 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f8
	mul.s	%f4 %f4 %f1
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f8
	mul.s	%f3 %f3 %f1
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f8
	lw	%r10 %r1 12
	beq	%r1 %r0 tail_b.550
tail_b.551 :
	mul.s	%f3 %f4 %f0
	lw	%r10 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f3 %f3
	lw	%r10 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f4 %f5 %f3
	lw	%r10 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f1
	j	branching_b.347
tail_b.550 :
	mov.s	%f8 %f1
branching_b.347 :
	lw	%r10 %r1 4
	addi	%r0 %r9 3
	beq	%r1 %r9 tail_b.552
tail_b.553 :
	mov.s	%f1 %f0
	j	branching_b.348
tail_b.552 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f0
branching_b.348 :
	mul.s	%f2 %f2 %f1
	mul.s	%f0 %f6 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f7 %f0 tail_b.555
tail_b.554 :
	addi	%r0 %r1 1
	j	branching_b.349
tail_b.555 :
	addi	%r0 %r1 0
branching_b.349 :
	beq	%r1 %r0 tail_b.556
branching_b.350 :
	sqrt.s	%f0 %f0
	lw	%r10 %r1 24
	beq	%r1 %r0 tail_b.557
tail_b.558 :
	j	tail_b.559
tail_b.557 :
	neg.s	%f0 %f0
	j	tail_b.559
tail_b.556 :
	addi	%r0 %r9 0
	j	branching_b.351
tail_b.559 :
	sub.s	%f2 %f0 %f0
	div.s	%f6 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r9 1
	j	branching_b.351
postloop_b.14 :
return_point.10 :
	retl
trace_or_matrix.0 :
	mov	%r2 %r5
preloop_b.15 :
	mov	%r1 %r6
	addi	%r0 %r4 -1
trace_or_matrix_loop.0 :
	slli	%r6 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r2 0
	mov	%r2 %r1
	lw	%r1 %r7 0
	beq	%r7 %r4 tail_b.574
branching_b.359 :
	addi	%r0 %r1 99
	beq	%r7 %r1 preloop_b.16
branching_b.361 :
	slli	%r7 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r9 0
	lw.s	%r0 %f0 636
	lw	%r9 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f0 640
	lw	%r9 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f2
	lw.s	%r0 %f1 644
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	lw	%r9 %r7 4
	addi	%r0 %r8 1
	beq	%r7 %r8 branching_b.362
branching_b.401 :
	addi	%r0 %r1 2
	beq	%r7 %r1 branching_b.402
branching_b.404 :
	mov	%r3 %r1
	lw.s	%r1 %f8 0
	addi	%r3 %r1 4
	lw.s	%r1 %f6 0
	addi	%r3 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f8 %f8 %f0
	lw	%r9 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f7
	mul.s	%f6 %f6 %f0
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f3 %f3 %f1
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	lw	%r9 %r1 12
	beq	%r1 %r0 tail_b.648
tail_b.649 :
	mul.s	%f3 %f6 %f7
	lw	%r9 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f8 %f3 %f0
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f6 %f8 %f3
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f1
	j	branching_b.405
tail_b.648 :
	j	branching_b.405
branching_b.402 :
	lw	%r9 %r7 16
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mov	%r7 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	addi	%r7 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r3 %r1 8
	lw.s	%r1 %f3 0
	addi	%r7 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f3
	ilw.s	%r0 %f0 l.51
	fbge	%f0 %f3 tail_b.645
tail_b.644 :
	addi	%r0 %r1 1
	j	branching_b.403
tail_b.645 :
	addi	%r0 %r1 0
	j	branching_b.403
branching_b.362 :
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f3 l.51
	fbne	%f0 %f3 tail_b.578
tail_b.577 :
	addi	%r0 %r1 1
	j	branching_b.363
tail_b.578 :
	addi	%r0 %r1 0
	j	branching_b.363
preloop_b.16 :
	addi	%r0 %r1 1
	mov	%r1 %r7
solve_one_or_network_loop.2 :
	slli	%r7 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	bne	%r1 %r4 tail_b.575
tail_b.576 :
	j	postloop_b.15
tail_b.575 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r1 0
	sw	%r26 %r5 0
	sw	%r26 %r3 -4
	sw	%r26 %r4 -8
	sw	%r26 %r6 -12
	sw	%r26 %r2 -16
	sw	%r26 %r7 -20
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	solve_each_element.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r7 -20
	addi	%r7 %r7 1
	lw	%r26 %r5 0
	lw	%r26 %r3 -4
	lw	%r26 %r4 -8
	lw	%r26 %r6 -12
	lw	%r26 %r2 -16
	j	solve_one_or_network_loop.2
tail_b.574 :
postloop_b.17 :
return_point.11 :
	retl
postloop_b.15 :
tail_b.671 :
	addi	%r6 %r6 1
	j	trace_or_matrix_loop.0
branching_b.363 :
	beq	%r1 %r0 branching_b.364
tail_b.597 :
	addi	%r0 %r1 0
	j	branching_b.374
branching_b.364 :
	lw	%r9 %r7 16
	lw	%r9 %r1 24
	mov	%r3 %r10
	lw.s	%r10 %f0 0
	fbge	%f0 %f3 tail_b.580
tail_b.579 :
	addi	%r0 %r10 1
	j	branching_b.365
tail_b.580 :
	addi	%r0 %r10 0
branching_b.365 :
	beq	%r1 %r0 tail_b.581
branching_b.366 :
	beq	%r10 %r0 tail_b.582
tail_b.583 :
	addi	%r0 %r10 0
	j	branching_b.367
tail_b.582 :
	addi	%r0 %r10 1
	j	branching_b.367
tail_b.581 :
branching_b.367 :
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	beq	%r10 %r0 tail_b.584
tail_b.585 :
	j	branching_b.368
tail_b.584 :
	neg.s	%f0 %f0
branching_b.368 :
	sub.s	%f4 %f0 %f0
	mov	%r3 %r1
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f1
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f2 %f0 %f0
	fbge	%f0 %f3 tail_b.587
tail_b.586 :
	neg.s	%f0 %f0
	j	branching_b.369
tail_b.587 :
branching_b.369 :
	addi	%r7 %r1 4
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.589
tail_b.588 :
	addi	%r0 %r1 1
	j	branching_b.370
tail_b.589 :
	addi	%r0 %r1 0
branching_b.370 :
	beq	%r1 %r0 tail_b.590
branching_b.371 :
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.592
tail_b.591 :
	neg.s	%f0 %f0
	j	branching_b.372
tail_b.592 :
	j	branching_b.372
tail_b.590 :
	addi	%r0 %r1 0
	j	branching_b.374
branching_b.372 :
	addi	%r7 %r1 8
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.594
tail_b.593 :
	addi	%r0 %r1 1
	j	branching_b.373
tail_b.594 :
	addi	%r0 %r1 0
branching_b.373 :
	beq	%r1 %r0 tail_b.595
tail_b.596 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 1
	j	branching_b.374
tail_b.595 :
	addi	%r0 %r1 0
branching_b.374 :
	beq	%r1 %r0 branching_b.375
tail_b.643 :
	addi	%r0 %r1 1
	j	branching_b.413
branching_b.375 :
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.599
tail_b.598 :
	addi	%r0 %r1 1
	j	branching_b.376
tail_b.599 :
	addi	%r0 %r1 0
branching_b.376 :
	beq	%r1 %r0 branching_b.377
tail_b.618 :
	addi	%r0 %r1 0
	j	branching_b.387
branching_b.377 :
	lw	%r9 %r7 16
	lw	%r9 %r10 24
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.601
tail_b.600 :
	addi	%r0 %r1 1
	j	branching_b.378
tail_b.601 :
	addi	%r0 %r1 0
branching_b.378 :
	beq	%r10 %r0 tail_b.602
branching_b.379 :
	beq	%r1 %r0 tail_b.603
tail_b.604 :
	addi	%r0 %r10 0
	j	branching_b.380
tail_b.603 :
	addi	%r0 %r10 1
	j	branching_b.380
tail_b.602 :
	mov	%r1 %r10
branching_b.380 :
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	beq	%r10 %r0 tail_b.605
tail_b.606 :
	j	branching_b.381
tail_b.605 :
	neg.s	%f0 %f0
branching_b.381 :
	sub.s	%f2 %f0 %f1
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f1 %f6
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.608
tail_b.607 :
	neg.s	%f0 %f0
	j	branching_b.382
tail_b.608 :
branching_b.382 :
	addi	%r7 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.610
tail_b.609 :
	addi	%r0 %r1 1
	j	branching_b.383
tail_b.610 :
	addi	%r0 %r1 0
branching_b.383 :
	beq	%r1 %r0 tail_b.611
branching_b.384 :
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f4 %f0 %f1
	fbge	%f1 %f3 tail_b.613
tail_b.612 :
	neg.s	%f1 %f1
	j	branching_b.385
tail_b.613 :
	j	branching_b.385
tail_b.611 :
	addi	%r0 %r1 0
	j	branching_b.387
branching_b.385 :
	lw.s	%r7 %f0 0
	fbge	%f1 %f0 tail_b.615
tail_b.614 :
	addi	%r0 %r1 1
	j	branching_b.386
tail_b.615 :
	addi	%r0 %r1 0
branching_b.386 :
	beq	%r1 %r0 tail_b.616
tail_b.617 :
	sw.s	%r0 %f6 540
	addi	%r0 %r1 1
	j	branching_b.387
tail_b.616 :
	addi	%r0 %r1 0
branching_b.387 :
	beq	%r1 %r0 branching_b.388
tail_b.642 :
	addi	%r0 %r1 2
	j	branching_b.413
branching_b.388 :
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.620
tail_b.619 :
	addi	%r0 %r1 1
	j	branching_b.389
tail_b.620 :
	addi	%r0 %r1 0
branching_b.389 :
	beq	%r1 %r0 branching_b.390
tail_b.639 :
	addi	%r0 %r1 0
	j	branching_b.400
branching_b.390 :
	lw	%r9 %r10 16
	lw	%r9 %r1 24
	addi	%r3 %r7 8
	lw.s	%r7 %f0 0
	fbge	%f0 %f3 tail_b.622
tail_b.621 :
	addi	%r0 %r7 1
	j	branching_b.391
tail_b.622 :
	addi	%r0 %r7 0
branching_b.391 :
	beq	%r1 %r0 tail_b.623
branching_b.392 :
	beq	%r7 %r0 tail_b.624
tail_b.625 :
	addi	%r0 %r1 0
	j	branching_b.393
tail_b.624 :
	addi	%r0 %r1 1
	j	branching_b.393
tail_b.623 :
	mov	%r7 %r1
branching_b.393 :
	addi	%r10 %r7 8
	lw.s	%r7 %f0 0
	beq	%r1 %r0 tail_b.626
tail_b.627 :
	j	branching_b.394
tail_b.626 :
	neg.s	%f0 %f0
branching_b.394 :
	sub.s	%f5 %f0 %f0
	addi	%r3 %r1 8
	lw.s	%r1 %f1 0
	div.s	%f1 %f0 %f1
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f3 tail_b.629
tail_b.628 :
	neg.s	%f0 %f4
	j	branching_b.395
tail_b.629 :
	mov.s	%f0 %f4
branching_b.395 :
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	fbge	%f4 %f0 tail_b.631
tail_b.630 :
	addi	%r0 %r1 1
	j	branching_b.396
tail_b.631 :
	addi	%r0 %r1 0
branching_b.396 :
	beq	%r1 %r0 tail_b.632
branching_b.397 :
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f2 %f0 %f0
	fbge	%f0 %f3 tail_b.634
tail_b.633 :
	neg.s	%f0 %f2
	j	branching_b.398
tail_b.634 :
	mov.s	%f0 %f2
	j	branching_b.398
tail_b.632 :
	addi	%r0 %r1 0
	j	branching_b.400
branching_b.398 :
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.636
tail_b.635 :
	addi	%r0 %r1 1
	j	branching_b.399
tail_b.636 :
	addi	%r0 %r1 0
branching_b.399 :
	beq	%r1 %r0 tail_b.637
tail_b.638 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 1
	j	branching_b.400
tail_b.637 :
	addi	%r0 %r1 0
branching_b.400 :
	beq	%r1 %r0 tail_b.640
tail_b.641 :
	addi	%r0 %r1 3
	j	branching_b.413
tail_b.640 :
	addi	%r0 %r1 0
branching_b.413 :
	bne	%r1 %r0 branching_b.414
tail_b.670 :
	j	tail_b.671
branching_b.414 :
	lw.s	%r0 %f0 540
	lw.s	%r0 %f1 548
	fbge	%f0 %f1 tail_b.666
tail_b.665 :
	addi	%r0 %r1 1
	j	branching_b.415
tail_b.666 :
	addi	%r0 %r1 0
branching_b.415 :
	beq	%r1 %r0 tail_b.667
preloop_b.17 :
solve_one_or_network_loop.1 :
	slli	%r8 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	bne	%r1 %r4 tail_b.668
tail_b.669 :
	j	postloop_b.16
tail_b.668 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r1 0
	sw	%r26 %r5 -24
	sw	%r26 %r3 -28
	sw	%r26 %r4 -32
	sw	%r26 %r6 -36
	sw	%r26 %r2 -40
	sw	%r26 %r8 -44
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	solve_each_element.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw	%r26 %r8 -44
	addi	%r8 %r8 1
	lw	%r26 %r5 -24
	lw	%r26 %r3 -28
	lw	%r26 %r4 -32
	lw	%r26 %r6 -36
	lw	%r26 %r2 -40
	j	solve_one_or_network_loop.1
tail_b.667 :
	j	tail_b.671
postloop_b.16 :
	j	tail_b.671
branching_b.403 :
	beq	%r1 %r0 tail_b.646
tail_b.647 :
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f1
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r7 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f3 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.413
tail_b.646 :
	addi	%r0 %r1 0
	j	branching_b.413
branching_b.405 :
	ilw.s	%r0 %f3 l.51
	fbne	%f1 %f3 tail_b.651
tail_b.650 :
	addi	%r0 %r1 1
	j	branching_b.406
tail_b.651 :
	addi	%r0 %r1 0
branching_b.406 :
	beq	%r1 %r0 branching_b.407
tail_b.664 :
	addi	%r0 %r1 0
	j	branching_b.413
branching_b.407 :
	mov	%r3 %r1
	lw.s	%r1 %f10 0
	addi	%r3 %r1 4
	lw.s	%r1 %f8 0
	addi	%r3 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f4 %f10 %f7
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f7
	mul.s	%f2 %f8 %f0
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f7
	mul.s	%f5 %f6 %f0
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f9
	lw	%r9 %r1 12
	beq	%r1 %r0 tail_b.652
tail_b.653 :
	mul.s	%f2 %f6 %f0
	mul.s	%f5 %f8 %f7
	add.s	%f7 %f0 %f0
	lw	%r9 %r1 36
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f7
	mul.s	%f5 %f10 %f11
	mul.s	%f4 %f6 %f0
	add.s	%f0 %f11 %f0
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f7
	mul.s	%f2 %f10 %f6
	mul.s	%f4 %f8 %f0
	add.s	%f0 %f6 %f6
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f7 %f6
	ilw.s	%r0 %f0 l.69
	div.s	%f0 %f6 %f0
	add.s	%f0 %f9 %f9
	j	branching_b.408
tail_b.652 :
branching_b.408 :
	mul.s	%f4 %f4 %f6
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f7
	mul.s	%f2 %f2 %f0
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f7
	mul.s	%f5 %f5 %f0
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f6
	lw	%r9 %r1 12
	beq	%r1 %r0 tail_b.654
tail_b.655 :
	mul.s	%f5 %f2 %f0
	lw	%r9 %r1 36
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f0
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f5
	mul.s	%f2 %f4 %f0
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f6
	j	branching_b.409
tail_b.654 :
branching_b.409 :
	lw	%r9 %r7 4
	addi	%r0 %r1 3
	beq	%r7 %r1 tail_b.656
tail_b.657 :
	mov.s	%f6 %f0
	j	branching_b.410
tail_b.656 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f6 %f0
branching_b.410 :
	mul.s	%f9 %f9 %f2
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f2 %f0
	fbge	%f3 %f0 tail_b.659
tail_b.658 :
	addi	%r0 %r1 1
	j	branching_b.411
tail_b.659 :
	addi	%r0 %r1 0
branching_b.411 :
	beq	%r1 %r0 tail_b.660
branching_b.412 :
	sqrt.s	%f0 %f0
	lw	%r9 %r1 24
	beq	%r1 %r0 tail_b.661
tail_b.662 :
	j	tail_b.663
tail_b.661 :
	neg.s	%f0 %f0
	j	tail_b.663
tail_b.660 :
	addi	%r0 %r1 0
	j	branching_b.413
tail_b.663 :
	sub.s	%f9 %f0 %f0
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.413
solve_each_element_fast.0 :
	mov	%r2 %r5
preloop_b.18 :
	mov	%r1 %r6
	addi	%r0 %r4 -1
solve_each_element_fast_loop.0 :
	lw	%r3 %r9 0
	slli	%r6 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r7 0
	beq	%r7 %r4 tail_b.672
branching_b.418 :
	slli	%r7 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r10 0
	lw	%r10 %r12 40
	mov	%r12 %r1
	lw.s	%r1 %f1 0
	addi	%r12 %r1 4
	lw.s	%r1 %f3 0
	addi	%r12 %r1 8
	lw.s	%r1 %f6 0
	lw	%r3 %r1 4
	slli	%r7 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r2 0
	lw	%r10 %r1 4
	addi	%r0 %r8 1
	beq	%r1 %r8 branching_b.419
branching_b.446 :
	addi	%r0 %r11 2
	beq	%r1 %r11 branching_b.447
branching_b.449 :
	mov	%r2 %r1
	lw.s	%r1 %f5 0
	ilw.s	%r0 %f4 l.51
	fbne	%f5 %f4 tail_b.724
tail_b.723 :
	addi	%r0 %r1 1
	j	branching_b.450
tail_b.724 :
	addi	%r0 %r1 0
	j	branching_b.450
branching_b.447 :
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.51
	fbge	%f1 %f0 tail_b.720
tail_b.719 :
	addi	%r0 %r1 1
	j	branching_b.448
tail_b.720 :
	addi	%r0 %r1 0
	j	branching_b.448
branching_b.419 :
	lw	%r3 %r11 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f2
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f4
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f5 l.51
	fbge	%f0 %f5 tail_b.674
tail_b.673 :
	neg.s	%f0 %f2
	j	branching_b.420
tail_b.674 :
	mov.s	%f0 %f2
	j	branching_b.420
tail_b.672 :
postloop_b.19 :
return_point.12 :
	retl
branching_b.420 :
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.676
tail_b.675 :
	addi	%r0 %r1 1
	j	branching_b.421
tail_b.676 :
	addi	%r0 %r1 0
branching_b.421 :
	beq	%r1 %r0 tail_b.677
branching_b.422 :
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f5 tail_b.679
tail_b.678 :
	neg.s	%f0 %f2
	j	branching_b.423
tail_b.679 :
	mov.s	%f0 %f2
	j	branching_b.423
tail_b.677 :
	addi	%r0 %r1 0
branching_b.427 :
	beq	%r1 %r0 branching_b.428
tail_b.718 :
	sw.s	%r0 %f4 540
	addi	%r0 %r10 1
	j	branching_b.454
branching_b.428 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f3 %f0 %f2
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f4
	fbge	%f4 %f5 tail_b.688
tail_b.687 :
	neg.s	%f4 %f4
	j	branching_b.429
tail_b.688 :
branching_b.429 :
	lw	%r10 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f4 %f0 tail_b.690
tail_b.689 :
	addi	%r0 %r1 1
	j	branching_b.430
tail_b.690 :
	addi	%r0 %r1 0
branching_b.430 :
	beq	%r1 %r0 tail_b.691
branching_b.431 :
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f5 tail_b.693
tail_b.692 :
	neg.s	%f0 %f4
	j	branching_b.432
tail_b.693 :
	mov.s	%f0 %f4
	j	branching_b.432
tail_b.691 :
	addi	%r0 %r1 0
branching_b.436 :
	beq	%r1 %r0 branching_b.437
tail_b.717 :
	sw.s	%r0 %f2 540
	addi	%r0 %r10 2
	j	branching_b.454
branching_b.437 :
	addi	%r2 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f6 %f0 %f0
	addi	%r2 %r1 20
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	fbge	%f0 %f5 tail_b.702
tail_b.701 :
	neg.s	%f0 %f0
	j	branching_b.438
tail_b.702 :
branching_b.438 :
	lw	%r10 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.704
tail_b.703 :
	addi	%r0 %r1 1
	j	branching_b.439
tail_b.704 :
	addi	%r0 %r1 0
branching_b.439 :
	beq	%r1 %r0 tail_b.705
branching_b.440 :
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f3 %f0 %f0
	fbge	%f0 %f5 tail_b.707
tail_b.706 :
	neg.s	%f0 %f0
	j	branching_b.441
tail_b.707 :
	j	branching_b.441
tail_b.705 :
	addi	%r0 %r1 0
branching_b.445 :
	beq	%r1 %r0 tail_b.715
tail_b.716 :
	sw.s	%r0 %f2 540
	addi	%r0 %r10 3
	j	branching_b.454
tail_b.715 :
	addi	%r0 %r10 0
	j	branching_b.454
branching_b.441 :
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.709
tail_b.708 :
	addi	%r0 %r1 1
	j	branching_b.442
tail_b.709 :
	addi	%r0 %r1 0
branching_b.442 :
	beq	%r1 %r0 tail_b.710
branching_b.443 :
	addi	%r2 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f5 tail_b.712
tail_b.711 :
	addi	%r0 %r1 1
	j	branching_b.444
tail_b.712 :
	addi	%r0 %r1 0
	j	branching_b.444
tail_b.710 :
	addi	%r0 %r1 0
	j	branching_b.445
branching_b.444 :
	beq	%r1 %r0 tail_b.713
tail_b.714 :
	addi	%r0 %r1 0
	j	branching_b.445
tail_b.713 :
	addi	%r0 %r1 1
	j	branching_b.445
branching_b.432 :
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f4 %f0 tail_b.695
tail_b.694 :
	addi	%r0 %r1 1
	j	branching_b.433
tail_b.695 :
	addi	%r0 %r1 0
branching_b.433 :
	beq	%r1 %r0 tail_b.696
branching_b.434 :
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f5 tail_b.698
tail_b.697 :
	addi	%r0 %r1 1
	j	branching_b.435
tail_b.698 :
	addi	%r0 %r1 0
	j	branching_b.435
tail_b.696 :
	addi	%r0 %r1 0
	j	branching_b.436
branching_b.435 :
	beq	%r1 %r0 tail_b.699
tail_b.700 :
	addi	%r0 %r1 0
	j	branching_b.436
tail_b.699 :
	addi	%r0 %r1 1
	j	branching_b.436
branching_b.454 :
	addi	%r0 %r2 0
	bne	%r10 %r0 branching_b.455
branching_b.484 :
	slli	%r7 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	beq	%r1 %r0 tail_b.779
tail_b.780 :
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	solve_each_element_fast_loop.0
tail_b.779 :
	j	postloop_b.19
branching_b.455 :
	lw.s	%r0 %f0 540
	ilw.s	%r0 %f6 l.51
	fbge	%f6 %f0 tail_b.733
tail_b.732 :
	addi	%r0 %r1 1
	j	branching_b.456
tail_b.733 :
	addi	%r0 %r1 0
branching_b.456 :
	beq	%r1 %r0 tail_b.734
branching_b.457 :
	lw.s	%r0 %f1 548
	fbge	%f0 %f1 tail_b.736
tail_b.735 :
	addi	%r0 %r1 1
	j	branching_b.458
tail_b.736 :
	addi	%r0 %r1 0
	j	branching_b.458
tail_b.734 :
tail_b.778 :
	addi	%r6 %r6 1
	j	solve_each_element_fast_loop.0
branching_b.458 :
	beq	%r1 %r0 tail_b.737
preloop_b.19 :
	ilw.s	%r0 %f1 l.67
	add.s	%f1 %f0 %f7
	mov	%r9 %r1
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f1
	lw.s	%r0 %f0 648
	add.s	%f0 %f1 %f9
	addi	%r9 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	lw.s	%r0 %f1 652
	add.s	%f1 %f0 %f8
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	lw.s	%r0 %f1 656
	add.s	%f1 %f0 %f1
	mov	%r2 %r9
check_all_inside_loop.1 :
	slli	%r9 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r4 tail_b.738
branching_b.460 :
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r11 0
	lw	%r11 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f9 %f4
	lw	%r11 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f8 %f10
	lw	%r11 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f2
	lw	%r11 %r1 4
	beq	%r1 %r8 branching_b.461
branching_b.471 :
	addi	%r0 %r2 2
	beq	%r1 %r2 branching_b.472
branching_b.476 :
	mul.s	%f4 %f4 %f3
	lw	%r11 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f5
	mul.s	%f10 %f10 %f3
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f5 %f3
	mul.s	%f2 %f2 %f5
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f3 %f3
	lw	%r11 %r1 12
	beq	%r1 %r0 tail_b.763
tail_b.764 :
	mul.s	%f2 %f10 %f0
	lw	%r11 %r1 36
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f3
	mul.s	%f4 %f2 %f0
	lw	%r11 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f2
	mul.s	%f10 %f4 %f3
	lw	%r11 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f2 %f2
	j	branching_b.477
tail_b.763 :
	mov.s	%f3 %f2
	j	branching_b.477
branching_b.472 :
	lw	%r11 %r2 16
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f3
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f3 %f3
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f0
	lw	%r11 %r2 24
	fbge	%f0 %f6 tail_b.757
tail_b.756 :
	addi	%r0 %r1 1
	j	branching_b.473
tail_b.757 :
	addi	%r0 %r1 0
	j	branching_b.473
branching_b.461 :
	fbge	%f4 %f6 tail_b.740
tail_b.739 :
	neg.s	%f4 %f4
	j	branching_b.462
tail_b.740 :
	j	branching_b.462
tail_b.738 :
	addi	%r0 %r1 1
	j	postloop_b.18
tail_b.737 :
	j	tail_b.778
postloop_b.18 :
branching_b.483 :
	beq	%r1 %r0 tail_b.776
tail_b.777 :
	sw.s	%r0 %f7 548
	sw.s	%r0 %f9 552
	sw.s	%r0 %f8 556
	sw.s	%r0 %f1 560
	sw	%r0 %r7 564
	sw	%r0 %r10 544
	j	tail_b.778
tail_b.776 :
	j	tail_b.778
branching_b.462 :
	lw	%r11 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f4 %f0 tail_b.742
tail_b.741 :
	addi	%r0 %r1 1
	j	branching_b.463
tail_b.742 :
	addi	%r0 %r1 0
branching_b.463 :
	beq	%r1 %r0 tail_b.743
branching_b.464 :
	fbge	%f10 %f6 tail_b.745
tail_b.744 :
	neg.s	%f10 %f0
	j	branching_b.465
tail_b.745 :
	mov.s	%f10 %f0
	j	branching_b.465
tail_b.743 :
	addi	%r0 %r1 0
branching_b.469 :
	beq	%r1 %r0 branching_b.470
tail_b.755 :
	lw	%r11 %r1 24
	j	branching_b.482
branching_b.470 :
	lw	%r11 %r1 24
	beq	%r1 %r0 tail_b.753
tail_b.754 :
	addi	%r0 %r1 0
	j	branching_b.482
tail_b.753 :
	addi	%r0 %r1 1
branching_b.482 :
	beq	%r1 %r0 tail_b.774
tail_b.775 :
	addi	%r0 %r1 0
	j	postloop_b.18
tail_b.774 :
	addi	%r9 %r1 1
	mov	%r1 %r9
	j	check_all_inside_loop.1
branching_b.465 :
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	fbge	%f0 %f3 tail_b.747
tail_b.746 :
	addi	%r0 %r1 1
	j	branching_b.466
tail_b.747 :
	addi	%r0 %r1 0
branching_b.466 :
	beq	%r1 %r0 tail_b.748
branching_b.467 :
	fbge	%f2 %f6 tail_b.750
tail_b.749 :
	neg.s	%f2 %f2
	j	branching_b.468
tail_b.750 :
	j	branching_b.468
tail_b.748 :
	addi	%r0 %r1 0
	j	branching_b.469
branching_b.468 :
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.752
tail_b.751 :
	addi	%r0 %r1 1
	j	branching_b.469
tail_b.752 :
	addi	%r0 %r1 0
	j	branching_b.469
branching_b.473 :
	beq	%r2 %r0 tail_b.758
branching_b.474 :
	beq	%r1 %r0 tail_b.759
tail_b.760 :
	addi	%r0 %r1 0
	j	branching_b.475
tail_b.759 :
	addi	%r0 %r1 1
	j	branching_b.475
tail_b.758 :
branching_b.475 :
	beq	%r1 %r0 tail_b.761
tail_b.762 :
	addi	%r0 %r1 0
	j	branching_b.482
tail_b.761 :
	addi	%r0 %r1 1
	j	branching_b.482
branching_b.477 :
	lw	%r11 %r1 4
	addi	%r0 %r2 3
	beq	%r1 %r2 tail_b.765
tail_b.766 :
	j	branching_b.478
tail_b.765 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f2 %f2
branching_b.478 :
	lw	%r11 %r2 24
	fbge	%f2 %f6 tail_b.768
tail_b.767 :
	addi	%r0 %r1 1
	j	branching_b.479
tail_b.768 :
	addi	%r0 %r1 0
branching_b.479 :
	beq	%r2 %r0 tail_b.769
branching_b.480 :
	beq	%r1 %r0 tail_b.770
tail_b.771 :
	addi	%r0 %r1 0
	j	branching_b.481
tail_b.770 :
	addi	%r0 %r1 1
	j	branching_b.481
tail_b.769 :
branching_b.481 :
	beq	%r1 %r0 tail_b.772
tail_b.773 :
	addi	%r0 %r1 0
	j	branching_b.482
tail_b.772 :
	addi	%r0 %r1 1
	j	branching_b.482
branching_b.423 :
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.681
tail_b.680 :
	addi	%r0 %r1 1
	j	branching_b.424
tail_b.681 :
	addi	%r0 %r1 0
branching_b.424 :
	beq	%r1 %r0 tail_b.682
branching_b.425 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f5 tail_b.684
tail_b.683 :
	addi	%r0 %r1 1
	j	branching_b.426
tail_b.684 :
	addi	%r0 %r1 0
	j	branching_b.426
tail_b.682 :
	addi	%r0 %r1 0
	j	branching_b.427
branching_b.426 :
	beq	%r1 %r0 tail_b.685
tail_b.686 :
	addi	%r0 %r1 0
	j	branching_b.427
tail_b.685 :
	addi	%r0 %r1 1
	j	branching_b.427
branching_b.448 :
	beq	%r1 %r0 tail_b.721
tail_b.722 :
	lw.s	%r2 %f1 0
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r10 1
	j	branching_b.454
tail_b.721 :
	addi	%r0 %r10 0
	j	branching_b.454
branching_b.450 :
	beq	%r1 %r0 branching_b.451
tail_b.731 :
	addi	%r0 %r10 0
	j	branching_b.454
branching_b.451 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f1
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r12 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f5 %f1
	sub.s	%f1 %f2 %f1
	fbge	%f4 %f1 tail_b.726
tail_b.725 :
	addi	%r0 %r1 1
	j	branching_b.452
tail_b.726 :
	addi	%r0 %r1 0
branching_b.452 :
	beq	%r1 %r0 tail_b.727
branching_b.453 :
	lw	%r10 %r1 24
	beq	%r1 %r0 tail_b.728
tail_b.729 :
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r2 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.730
tail_b.728 :
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r2 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.730
tail_b.727 :
	addi	%r0 %r10 0
	j	branching_b.454
tail_b.730 :
	addi	%r0 %r10 1
	j	branching_b.454
solve_one_or_network_fast.0 :
	mov	%r3 %r9
	mov	%r2 %r7
preloop_b.20 :
	mov	%r1 %r6
	addi	%r0 %r8 -1
solve_one_or_network_fast_loop.0 :
	slli	%r6 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	bne	%r1 %r8 preloop_b.21
tail_b.853 :
	j	postloop_b.21
preloop_b.21 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r4 0
	addi	%r0 %r5 0
solve_each_element_fast_loop.1 :
	lw	%r9 %r2 0
	slli	%r5 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r11 0
	beq	%r11 %r8 tail_b.781
branching_b.487 :
	slli	%r11 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r10 0
	lw	%r10 %r13 40
	mov	%r13 %r1
	lw.s	%r1 %f2 0
	addi	%r13 %r1 4
	lw.s	%r1 %f4 0
	addi	%r13 %r1 8
	lw.s	%r1 %f5 0
	lw	%r9 %r3 4
	slli	%r11 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r12 0
	lw	%r10 %r3 4
	addi	%r0 %r1 1
	beq	%r3 %r1 branching_b.488
branching_b.515 :
	addi	%r0 %r1 2
	beq	%r3 %r1 branching_b.516
branching_b.518 :
	mov	%r12 %r1
	lw.s	%r1 %f6 0
	ilw.s	%r0 %f3 l.51
	fbne	%f6 %f3 tail_b.833
tail_b.832 :
	addi	%r0 %r1 1
	j	branching_b.519
tail_b.833 :
	addi	%r0 %r1 0
	j	branching_b.519
branching_b.516 :
	mov	%r12 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.51
	fbge	%f1 %f0 tail_b.829
tail_b.828 :
	addi	%r0 %r1 1
	j	branching_b.517
tail_b.829 :
	addi	%r0 %r1 0
	j	branching_b.517
branching_b.488 :
	lw	%r9 %r3 0
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	sub.s	%f2 %f0 %f1
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f6 l.51
	fbge	%f0 %f6 tail_b.783
tail_b.782 :
	neg.s	%f0 %f0
	j	branching_b.489
tail_b.783 :
	j	branching_b.489
tail_b.781 :
postloop_b.20 :
tail_b.852 :
	addi	%r6 %r6 1
	j	solve_one_or_network_fast_loop.0
branching_b.489 :
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	fbge	%f0 %f3 tail_b.785
tail_b.784 :
	addi	%r0 %r1 1
	j	branching_b.490
tail_b.785 :
	addi	%r0 %r1 0
branching_b.490 :
	beq	%r1 %r0 tail_b.786
branching_b.491 :
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f6 tail_b.788
tail_b.787 :
	neg.s	%f0 %f3
	j	branching_b.492
tail_b.788 :
	mov.s	%f0 %f3
	j	branching_b.492
tail_b.786 :
	addi	%r0 %r1 0
branching_b.496 :
	beq	%r1 %r0 branching_b.497
tail_b.827 :
	sw.s	%r0 %f1 540
	addi	%r0 %r3 1
	j	branching_b.523
branching_b.497 :
	addi	%r12 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f4 %f0 %f0
	addi	%r12 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f3
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f2 %f0 %f0
	fbge	%f0 %f6 tail_b.797
tail_b.796 :
	neg.s	%f0 %f0
	j	branching_b.498
tail_b.797 :
branching_b.498 :
	lw	%r10 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.799
tail_b.798 :
	addi	%r0 %r1 1
	j	branching_b.499
tail_b.799 :
	addi	%r0 %r1 0
branching_b.499 :
	beq	%r1 %r0 tail_b.800
branching_b.500 :
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f6 tail_b.802
tail_b.801 :
	neg.s	%f0 %f1
	j	branching_b.501
tail_b.802 :
	mov.s	%f0 %f1
	j	branching_b.501
tail_b.800 :
	addi	%r0 %r1 0
branching_b.505 :
	beq	%r1 %r0 branching_b.506
tail_b.826 :
	sw.s	%r0 %f3 540
	addi	%r0 %r3 2
	j	branching_b.523
branching_b.506 :
	addi	%r12 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f0
	addi	%r12 %r1 20
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f3
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f2 %f0 %f0
	fbge	%f0 %f6 tail_b.811
tail_b.810 :
	neg.s	%f0 %f0
	j	branching_b.507
tail_b.811 :
branching_b.507 :
	lw	%r10 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.813
tail_b.812 :
	addi	%r0 %r1 1
	j	branching_b.508
tail_b.813 :
	addi	%r0 %r1 0
branching_b.508 :
	beq	%r1 %r0 tail_b.814
branching_b.509 :
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f6 tail_b.816
tail_b.815 :
	neg.s	%f0 %f1
	j	branching_b.510
tail_b.816 :
	mov.s	%f0 %f1
	j	branching_b.510
tail_b.814 :
	addi	%r0 %r1 0
branching_b.514 :
	beq	%r1 %r0 tail_b.824
tail_b.825 :
	sw.s	%r0 %f3 540
	addi	%r0 %r3 3
	j	branching_b.523
tail_b.824 :
	addi	%r0 %r3 0
	j	branching_b.523
branching_b.510 :
	lw	%r10 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.818
tail_b.817 :
	addi	%r0 %r1 1
	j	branching_b.511
tail_b.818 :
	addi	%r0 %r1 0
branching_b.511 :
	beq	%r1 %r0 tail_b.819
branching_b.512 :
	addi	%r12 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f6 tail_b.821
tail_b.820 :
	addi	%r0 %r1 1
	j	branching_b.513
tail_b.821 :
	addi	%r0 %r1 0
	j	branching_b.513
tail_b.819 :
	addi	%r0 %r1 0
	j	branching_b.514
branching_b.513 :
	beq	%r1 %r0 tail_b.822
tail_b.823 :
	addi	%r0 %r1 0
	j	branching_b.514
tail_b.822 :
	addi	%r0 %r1 1
	j	branching_b.514
branching_b.501 :
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.804
tail_b.803 :
	addi	%r0 %r1 1
	j	branching_b.502
tail_b.804 :
	addi	%r0 %r1 0
branching_b.502 :
	beq	%r1 %r0 tail_b.805
branching_b.503 :
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f6 tail_b.807
tail_b.806 :
	addi	%r0 %r1 1
	j	branching_b.504
tail_b.807 :
	addi	%r0 %r1 0
	j	branching_b.504
tail_b.805 :
	addi	%r0 %r1 0
	j	branching_b.505
branching_b.504 :
	beq	%r1 %r0 tail_b.808
tail_b.809 :
	addi	%r0 %r1 0
	j	branching_b.505
tail_b.808 :
	addi	%r0 %r1 1
	j	branching_b.505
branching_b.523 :
	bne	%r3 %r0 branching_b.524
branching_b.529 :
	slli	%r11 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	beq	%r1 %r0 tail_b.850
tail_b.851 :
	addi	%r5 %r5 1
	j	solve_each_element_fast_loop.1
tail_b.850 :
	j	postloop_b.20
branching_b.524 :
	lw.s	%r0 %f1 540
	ilw.s	%r0 %f0 l.51
	fbge	%f0 %f1 tail_b.842
tail_b.841 :
	addi	%r0 %r1 1
	j	branching_b.525
tail_b.842 :
	addi	%r0 %r1 0
branching_b.525 :
	beq	%r1 %r0 tail_b.843
branching_b.526 :
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.845
tail_b.844 :
	addi	%r0 %r1 1
	j	branching_b.527
tail_b.845 :
	addi	%r0 %r1 0
	j	branching_b.527
tail_b.843 :
tail_b.849 :
	addi	%r5 %r5 1
	j	solve_each_element_fast_loop.1
branching_b.527 :
	beq	%r1 %r0 tail_b.846
branching_b.528 :
	ilw.s	%r0 %f0 l.67
	add.s	%f0 %f1 %f0
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f1 648
	add.s	%f1 %f2 %f4
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f1 652
	add.s	%f1 %f2 %f3
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f2 656
	add.s	%f2 %f1 %f2
	sw	%r26 %r7 0
	sw	%r26 %r9 -4
	sw	%r26 %r8 -8
	sw	%r26 %r6 -12
	sw	%r26 %r4 -16
	sw	%r26 %r5 -20
	sw	%r26 %r11 -24
	sw	%r26 %r3 -28
	sw.s	%r26 %f0 -32
	sw.s	%r26 %f4 -36
	sw.s	%r26 %f3 -40
	sw.s	%r26 %f2 -44
	mov	%r4 %r2
	mov	%r0 %r1
	mov.s	%f3 %f1
	mov.s	%f4 %f0
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	check_all_inside.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw	%r26 %r7 0
	lw	%r26 %r9 -4
	lw	%r26 %r8 -8
	lw	%r26 %r6 -12
	lw	%r26 %r4 -16
	lw	%r26 %r5 -20
	lw	%r26 %r11 -24
	lw	%r26 %r3 -28
	lw.s	%r26 %f0 -32
	lw.s	%r26 %f4 -36
	lw.s	%r26 %f3 -40
	lw.s	%r26 %f2 -44
	beq	%r1 %r0 tail_b.847
tail_b.848 :
	sw.s	%r0 %f0 548
	sw.s	%r0 %f4 552
	sw.s	%r0 %f3 556
	sw.s	%r0 %f2 560
	sw	%r0 %r11 564
	sw	%r0 %r3 544
	j	tail_b.849
tail_b.847 :
	j	tail_b.849
tail_b.846 :
	j	tail_b.849
branching_b.492 :
	lw	%r10 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f3 %f0 tail_b.790
tail_b.789 :
	addi	%r0 %r1 1
	j	branching_b.493
tail_b.790 :
	addi	%r0 %r1 0
branching_b.493 :
	beq	%r1 %r0 tail_b.791
branching_b.494 :
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f6 tail_b.793
tail_b.792 :
	addi	%r0 %r1 1
	j	branching_b.495
tail_b.793 :
	addi	%r0 %r1 0
	j	branching_b.495
tail_b.791 :
	addi	%r0 %r1 0
	j	branching_b.496
branching_b.495 :
	beq	%r1 %r0 tail_b.794
tail_b.795 :
	addi	%r0 %r1 0
	j	branching_b.496
tail_b.794 :
	addi	%r0 %r1 1
	j	branching_b.496
branching_b.517 :
	beq	%r1 %r0 tail_b.830
tail_b.831 :
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	addi	%r13 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r3 1
	j	branching_b.523
tail_b.830 :
	addi	%r0 %r3 0
	j	branching_b.523
branching_b.519 :
	beq	%r1 %r0 branching_b.520
tail_b.840 :
	addi	%r0 %r3 0
	j	branching_b.523
branching_b.520 :
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	addi	%r12 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f2
	addi	%r13 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f2 %f2 %f0
	mul.s	%f1 %f6 %f1
	sub.s	%f1 %f0 %f0
	fbge	%f3 %f0 tail_b.835
tail_b.834 :
	addi	%r0 %r1 1
	j	branching_b.521
tail_b.835 :
	addi	%r0 %r1 0
branching_b.521 :
	beq	%r1 %r0 tail_b.836
branching_b.522 :
	lw	%r10 %r1 24
	beq	%r1 %r0 tail_b.837
tail_b.838 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f2 %f0
	addi	%r12 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.839
tail_b.837 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f2 %f1
	addi	%r12 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.839
tail_b.836 :
	addi	%r0 %r3 0
	j	branching_b.523
tail_b.839 :
	addi	%r0 %r3 1
	j	branching_b.523
postloop_b.21 :
return_point.13 :
	retl
trace_or_matrix_fast.0 :
	mov	%r2 %r5
preloop_b.22 :
	mov	%r1 %r4
	addi	%r0 %r6 -1
trace_or_matrix_fast_loop.0 :
	slli	%r4 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r7 0
	mov	%r7 %r1
	lw	%r1 %r2 0
	beq	%r2 %r6 tail_b.854
branching_b.531 :
	addi	%r0 %r1 99
	beq	%r2 %r1 preloop_b.23
branching_b.533 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r9 0
	lw	%r9 %r10 40
	mov	%r10 %r1
	lw.s	%r1 %f6 0
	addi	%r10 %r1 4
	lw.s	%r1 %f5 0
	addi	%r10 %r1 8
	lw.s	%r1 %f4 0
	lw	%r3 %r1 4
	slli	%r2 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r2 0
	lw	%r9 %r11 4
	addi	%r0 %r8 1
	beq	%r11 %r8 branching_b.534
branching_b.561 :
	addi	%r0 %r1 2
	beq	%r11 %r1 branching_b.562
branching_b.564 :
	mov	%r2 %r1
	lw.s	%r1 %f7 0
	ilw.s	%r0 %f3 l.51
	fbne	%f7 %f3 tail_b.908
tail_b.907 :
	addi	%r0 %r1 1
	j	branching_b.565
tail_b.908 :
	addi	%r0 %r1 0
	j	branching_b.565
branching_b.562 :
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.51
	fbge	%f1 %f0 tail_b.904
tail_b.903 :
	addi	%r0 %r1 1
	j	branching_b.563
tail_b.904 :
	addi	%r0 %r1 0
	j	branching_b.563
branching_b.534 :
	lw	%r3 %r10 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	sub.s	%f6 %f0 %f0
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r10 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	add.s	%f5 %f1 %f3
	ilw.s	%r0 %f2 l.51
	fbge	%f3 %f2 tail_b.858
tail_b.857 :
	neg.s	%f3 %f3
	j	branching_b.535
tail_b.858 :
	j	branching_b.535
preloop_b.23 :
	addi	%r0 %r1 1
	mov	%r1 %r2
solve_one_or_network_fast_loop.2 :
	slli	%r2 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	bne	%r1 %r6 tail_b.855
tail_b.856 :
	j	postloop_b.22
tail_b.855 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r1 0
	sw	%r26 %r5 0
	sw	%r26 %r3 -4
	sw	%r26 %r6 -8
	sw	%r26 %r4 -12
	sw	%r26 %r7 -16
	sw	%r26 %r2 -20
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -24
	addi	%r26 %r26 -28
	jal	solve_each_element_fast.0
	addi	%r26 %r26 28
	lw	%r26 %r28 -24
	lw	%r26 %r2 -20
	addi	%r2 %r2 1
	lw	%r26 %r5 0
	lw	%r26 %r3 -4
	lw	%r26 %r6 -8
	lw	%r26 %r4 -12
	lw	%r26 %r7 -16
	j	solve_one_or_network_fast_loop.2
tail_b.854 :
postloop_b.24 :
return_point.14 :
	retl
postloop_b.22 :
tail_b.922 :
	addi	%r4 %r4 1
	j	trace_or_matrix_fast_loop.0
branching_b.535 :
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f3 %f1 tail_b.860
tail_b.859 :
	addi	%r0 %r1 1
	j	branching_b.536
tail_b.860 :
	addi	%r0 %r1 0
branching_b.536 :
	beq	%r1 %r0 tail_b.861
branching_b.537 :
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	add.s	%f4 %f1 %f1
	fbge	%f1 %f2 tail_b.863
tail_b.862 :
	neg.s	%f1 %f3
	j	branching_b.538
tail_b.863 :
	mov.s	%f1 %f3
	j	branching_b.538
tail_b.861 :
	addi	%r0 %r1 0
branching_b.542 :
	beq	%r1 %r0 branching_b.543
tail_b.902 :
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.569
branching_b.543 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f1
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f3
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f2 tail_b.872
tail_b.871 :
	neg.s	%f0 %f0
	j	branching_b.544
tail_b.872 :
branching_b.544 :
	lw	%r9 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.874
tail_b.873 :
	addi	%r0 %r1 1
	j	branching_b.545
tail_b.874 :
	addi	%r0 %r1 0
branching_b.545 :
	beq	%r1 %r0 tail_b.875
branching_b.546 :
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f2 tail_b.877
tail_b.876 :
	neg.s	%f0 %f0
	j	branching_b.547
tail_b.877 :
	j	branching_b.547
tail_b.875 :
	addi	%r0 %r1 0
branching_b.551 :
	beq	%r1 %r0 branching_b.552
tail_b.901 :
	sw.s	%r0 %f3 540
	addi	%r0 %r1 2
	j	branching_b.569
branching_b.552 :
	addi	%r2 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f4 %f0 %f0
	addi	%r2 %r1 20
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f6 %f0 %f3
	fbge	%f3 %f2 tail_b.886
tail_b.885 :
	neg.s	%f3 %f3
	j	branching_b.553
tail_b.886 :
branching_b.553 :
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f3 %f0 tail_b.888
tail_b.887 :
	addi	%r0 %r1 1
	j	branching_b.554
tail_b.888 :
	addi	%r0 %r1 0
branching_b.554 :
	beq	%r1 %r0 tail_b.889
branching_b.555 :
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f2 tail_b.891
tail_b.890 :
	neg.s	%f0 %f0
	j	branching_b.556
tail_b.891 :
	j	branching_b.556
tail_b.889 :
	addi	%r0 %r1 0
branching_b.560 :
	beq	%r1 %r0 tail_b.899
tail_b.900 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 3
	j	branching_b.569
tail_b.899 :
	addi	%r0 %r1 0
	j	branching_b.569
branching_b.556 :
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	fbge	%f0 %f3 tail_b.893
tail_b.892 :
	addi	%r0 %r1 1
	j	branching_b.557
tail_b.893 :
	addi	%r0 %r1 0
branching_b.557 :
	beq	%r1 %r0 tail_b.894
branching_b.558 :
	addi	%r2 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.896
tail_b.895 :
	addi	%r0 %r1 1
	j	branching_b.559
tail_b.896 :
	addi	%r0 %r1 0
	j	branching_b.559
tail_b.894 :
	addi	%r0 %r1 0
	j	branching_b.560
branching_b.559 :
	beq	%r1 %r0 tail_b.897
tail_b.898 :
	addi	%r0 %r1 0
	j	branching_b.560
tail_b.897 :
	addi	%r0 %r1 1
	j	branching_b.560
branching_b.547 :
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.879
tail_b.878 :
	addi	%r0 %r1 1
	j	branching_b.548
tail_b.879 :
	addi	%r0 %r1 0
branching_b.548 :
	beq	%r1 %r0 tail_b.880
branching_b.549 :
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.882
tail_b.881 :
	addi	%r0 %r1 1
	j	branching_b.550
tail_b.882 :
	addi	%r0 %r1 0
	j	branching_b.550
tail_b.880 :
	addi	%r0 %r1 0
	j	branching_b.551
branching_b.550 :
	beq	%r1 %r0 tail_b.883
tail_b.884 :
	addi	%r0 %r1 0
	j	branching_b.551
tail_b.883 :
	addi	%r0 %r1 1
	j	branching_b.551
branching_b.569 :
	bne	%r1 %r0 branching_b.570
tail_b.921 :
	j	tail_b.922
branching_b.570 :
	lw.s	%r0 %f0 540
	lw.s	%r0 %f1 548
	fbge	%f0 %f1 tail_b.917
tail_b.916 :
	addi	%r0 %r1 1
	j	branching_b.571
tail_b.917 :
	addi	%r0 %r1 0
branching_b.571 :
	beq	%r1 %r0 tail_b.918
preloop_b.24 :
solve_one_or_network_fast_loop.1 :
	slli	%r8 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	bne	%r1 %r6 tail_b.919
tail_b.920 :
	j	postloop_b.23
tail_b.919 :
	slli	%r1 %r1 2
	addi	%r1 %r1 332
	lw	%r1 %r2 0
	sw	%r26 %r5 -24
	sw	%r26 %r3 -28
	sw	%r26 %r6 -32
	sw	%r26 %r4 -36
	sw	%r26 %r7 -40
	sw	%r26 %r8 -44
	mov	%r0 %r1
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	solve_each_element_fast.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw	%r26 %r8 -44
	addi	%r8 %r1 1
	mov	%r1 %r8
	lw	%r26 %r5 -24
	lw	%r26 %r3 -28
	lw	%r26 %r6 -32
	lw	%r26 %r4 -36
	lw	%r26 %r7 -40
	j	solve_one_or_network_fast_loop.1
tail_b.918 :
	j	tail_b.922
postloop_b.23 :
	j	tail_b.922
branching_b.538 :
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f3 %f1 tail_b.865
tail_b.864 :
	addi	%r0 %r1 1
	j	branching_b.539
tail_b.865 :
	addi	%r0 %r1 0
branching_b.539 :
	beq	%r1 %r0 tail_b.866
branching_b.540 :
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	fbne	%f1 %f2 tail_b.868
tail_b.867 :
	addi	%r0 %r1 1
	j	branching_b.541
tail_b.868 :
	addi	%r0 %r1 0
	j	branching_b.541
tail_b.866 :
	addi	%r0 %r1 0
	j	branching_b.542
branching_b.541 :
	beq	%r1 %r0 tail_b.869
tail_b.870 :
	addi	%r0 %r1 0
	j	branching_b.542
tail_b.869 :
	addi	%r0 %r1 1
	j	branching_b.542
branching_b.563 :
	beq	%r1 %r0 tail_b.905
tail_b.906 :
	lw.s	%r2 %f1 0
	addi	%r10 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.569
tail_b.905 :
	addi	%r0 %r1 0
	j	branching_b.569
branching_b.565 :
	beq	%r1 %r0 branching_b.566
tail_b.915 :
	addi	%r0 %r1 0
	j	branching_b.569
branching_b.566 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f6 %f0 %f1
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r10 %r1 12
	lw.s	%r1 %f2 0
	mul.s	%f0 %f0 %f1
	mul.s	%f2 %f7 %f2
	sub.s	%f2 %f1 %f1
	fbge	%f3 %f1 tail_b.910
tail_b.909 :
	addi	%r0 %r1 1
	j	branching_b.567
tail_b.910 :
	addi	%r0 %r1 0
branching_b.567 :
	beq	%r1 %r0 tail_b.911
branching_b.568 :
	lw	%r9 %r1 24
	beq	%r1 %r0 tail_b.912
tail_b.913 :
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r2 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.914
tail_b.912 :
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r2 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.914
tail_b.911 :
	addi	%r0 %r1 0
	j	branching_b.569
tail_b.914 :
	addi	%r0 %r1 1
	j	branching_b.569
trace_reflections.0 :
	mov	%r2 %r6
	mov.s	%f1 %f2
	mov.s	%f0 %f3
preloop_b.25 :
	mov	%r1 %r4
	addi	%r0 %r7 0
trace_reflections_loop.0 :
	ble	%r0 %r4 preloop_b.26
tail_b.1081 :
	j	postloop_b.27
preloop_b.26 :
	slli	%r4 %r1 2
	addi	%r1 %r1 1016
	lw	%r1 %r3 0
	lw	%r3 %r5 4
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r9 536
	mov	%r7 %r10
	addi	%r0 %r8 -1
trace_or_matrix_fast_loop.3 :
	slli	%r10 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r11 0
	mov	%r11 %r1
	lw	%r1 %r2 0
	beq	%r2 %r8 tail_b.923
branching_b.575 :
	addi	%r0 %r1 99
	beq	%r2 %r1 tail_b.924
branching_b.576 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r12 0
	lw	%r12 %r14 40
	mov	%r14 %r1
	lw.s	%r1 %f7 0
	addi	%r14 %r1 4
	lw.s	%r1 %f5 0
	addi	%r14 %r1 8
	lw.s	%r1 %f8 0
	lw	%r5 %r13 4
	slli	%r2 %r1 2
	add	%r13 %r1 %r1
	lw	%r1 %r13 0
	lw	%r12 %r1 4
	addi	%r0 %r2 1
	beq	%r1 %r2 branching_b.577
branching_b.604 :
	addi	%r0 %r2 2
	beq	%r1 %r2 branching_b.605
branching_b.607 :
	mov	%r13 %r1
	lw.s	%r1 %f4 0
	ilw.s	%r0 %f6 l.51
	fbne	%f4 %f6 tail_b.976
tail_b.975 :
	addi	%r0 %r1 1
	j	branching_b.608
tail_b.976 :
	addi	%r0 %r1 0
	j	branching_b.608
branching_b.605 :
	mov	%r13 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.51
	fbge	%f1 %f0 tail_b.972
tail_b.971 :
	addi	%r0 %r1 1
	j	branching_b.606
tail_b.972 :
	addi	%r0 %r1 0
	j	branching_b.606
branching_b.577 :
	lw	%r5 %r2 0
	mov	%r13 %r1
	lw.s	%r1 %f0 0
	sub.s	%f7 %f0 %f1
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f4 l.51
	fbge	%f0 %f4 tail_b.926
tail_b.925 :
	neg.s	%f0 %f6
	j	branching_b.578
tail_b.926 :
	mov.s	%f0 %f6
	j	branching_b.578
tail_b.924 :
	addi	%r0 %r1 1
	sw	%r26 %r6 0
	sw.s	%r26 %f3 -4
	sw.s	%r26 %f2 -8
	sw	%r26 %r7 -12
	sw	%r26 %r4 -16
	sw	%r26 %r3 -20
	sw	%r26 %r5 -24
	sw	%r26 %r9 -28
	sw	%r26 %r8 -32
	sw	%r26 %r10 -36
	mov	%r5 %r3
	mov	%r11 %r2
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r6 0
	lw.s	%r26 %f3 -4
	lw.s	%r26 %f2 -8
	lw	%r26 %r7 -12
	lw	%r26 %r4 -16
	lw	%r26 %r3 -20
	lw	%r26 %r5 -24
	lw	%r26 %r9 -28
	lw	%r26 %r8 -32
	lw	%r26 %r10 -36
	j	tail_b.989
tail_b.923 :
postloop_b.25 :
branching_b.615 :
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f5 l.68
	fbge	%f5 %f0 tail_b.991
tail_b.990 :
	addi	%r0 %r1 1
	j	branching_b.616
tail_b.991 :
	addi	%r0 %r1 0
branching_b.616 :
	beq	%r1 %r0 tail_b.992
branching_b.617 :
	ilw.s	%r0 %f1 l.70
	fbge	%f0 %f1 tail_b.994
tail_b.993 :
	addi	%r0 %r1 1
	j	branching_b.618
tail_b.994 :
	addi	%r0 %r1 0
	j	branching_b.618
tail_b.992 :
	addi	%r0 %r1 0
branching_b.618 :
	beq	%r1 %r0 tail_b.995
branching_b.619 :
	lw	%r0 %r1 564
	addi	%r0 %r2 4
	mul	%r1 %r2 %r1
	lw	%r0 %r2 544
	add	%r1 %r2 %r2
	lw	%r3 %r1 0
	beq	%r2 %r1 preloop_b.27
tail_b.1079 :
	j	tail_b.1080
preloop_b.27 :
	lw	%r0 %r10 536
	mov	%r7 %r2
	addi	%r0 %r11 -1
shadow_check_one_or_matrix_loop.4 :
	slli	%r2 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r9 0
	mov	%r9 %r1
	lw	%r1 %r1 0
	beq	%r1 %r11 tail_b.996
branching_b.621 :
	addi	%r0 %r8 99
	beq	%r1 %r8 tail_b.997
branching_b.622 :
	slli	%r1 %r8 2
	addi	%r8 %r8 48
	lw	%r8 %r12 0
	lw.s	%r0 %f0 552
	lw	%r12 %r8 20
	lw.s	%r8 %f1 0
	sub.s	%f1 %f0 %f6
	lw.s	%r0 %f1 556
	lw	%r12 %r8 20
	addi	%r8 %r8 4
	lw.s	%r8 %f0 0
	sub.s	%f0 %f1 %f7
	lw.s	%r0 %f0 560
	lw	%r12 %r8 20
	addi	%r8 %r8 8
	lw.s	%r8 %f1 0
	sub.s	%f1 %f0 %f8
	slli	%r1 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r8 0
	lw	%r12 %r1 4
	addi	%r0 %r13 1
	beq	%r1 %r13 branching_b.623
branching_b.650 :
	addi	%r0 %r13 2
	beq	%r1 %r13 branching_b.651
branching_b.653 :
	mov	%r8 %r1
	lw.s	%r1 %f11 0
	ilw.s	%r0 %f10 l.51
	fbne	%f11 %f10 tail_b.1049
tail_b.1048 :
	addi	%r0 %r1 1
	j	branching_b.654
tail_b.1049 :
	addi	%r0 %r1 0
	j	branching_b.654
branching_b.651 :
	mov	%r8 %r1
	lw.s	%r1 %f1 0
	ilw.s	%r0 %f0 l.51
	fbge	%f1 %f0 tail_b.1045
tail_b.1044 :
	addi	%r0 %r1 1
	j	branching_b.652
tail_b.1045 :
	addi	%r0 %r1 0
	j	branching_b.652
branching_b.623 :
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	sub.s	%f6 %f0 %f0
	addi	%r8 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f1 740
	mul.s	%f1 %f0 %f1
	add.s	%f7 %f1 %f9
	ilw.s	%r0 %f4 l.51
	fbge	%f9 %f4 tail_b.999
tail_b.998 :
	neg.s	%f9 %f9
	j	branching_b.624
tail_b.999 :
	j	branching_b.624
tail_b.997 :
	addi	%r0 %r1 1
	j	branching_b.664
tail_b.996 :
	addi	%r0 %r1 0
	j	postloop_b.26
tail_b.995 :
	j	tail_b.1080
postloop_b.26 :
branching_b.666 :
	beq	%r1 %r0 branching_b.667
tail_b.1078 :
	j	tail_b.1080
branching_b.667 :
	lw	%r5 %r2 0
	lw.s	%r0 %f0 568
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f4
	lw.s	%r0 %f1 572
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	lw.s	%r0 %f1 576
	addi	%r2 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r3 %f4 8
	mul.s	%f3 %f4 %f0
	mul.s	%f1 %f0 %f0
	lw	%r5 %r2 0
	mov	%r6 %r1
	lw.s	%r1 %f1 0
	mov	%r2 %r1
	lw.s	%r1 %f5 0
	mul.s	%f5 %f1 %f5
	addi	%r6 %r1 4
	lw.s	%r1 %f6 0
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f5 %f5
	addi	%r6 %r1 8
	lw.s	%r1 %f6 0
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f1 %f4 %f6
	ilw.s	%r0 %f5 l.51
	fbge	%f5 %f0 tail_b.1071
tail_b.1070 :
	addi	%r0 %r1 1
	j	branching_b.668
tail_b.1071 :
	addi	%r0 %r1 0
branching_b.668 :
	beq	%r1 %r0 tail_b.1072
tail_b.1073 :
	lw.s	%r0 %f1 604
	lw.s	%r0 %f4 580
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f1 %f1
	sw.s	%r0 %f1 604
	lw.s	%r0 %f4 608
	lw.s	%r0 %f1 584
	mul.s	%f1 %f0 %f1
	add.s	%f1 %f4 %f1
	sw.s	%r0 %f1 608
	lw.s	%r0 %f1 612
	lw.s	%r0 %f4 588
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 612
	j	branching_b.669
tail_b.1072 :
branching_b.669 :
	fbge	%f5 %f6 tail_b.1075
tail_b.1074 :
	addi	%r0 %r1 1
	j	branching_b.670
tail_b.1075 :
	addi	%r0 %r1 0
branching_b.670 :
	beq	%r1 %r0 tail_b.1076
tail_b.1077 :
	mul.s	%f6 %f6 %f0
	mul.s	%f0 %f0 %f0
	mul.s	%f2 %f0 %f1
	lw.s	%r0 %f0 604
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
	j	tail_b.1080
tail_b.1076 :
	j	tail_b.1080
branching_b.664 :
	beq	%r1 %r0 tail_b.1067
branching_b.665 :
	addi	%r0 %r1 1
	sw	%r26 %r6 -40
	sw.s	%r26 %f3 -44
	sw.s	%r26 %f2 -48
	sw	%r26 %r7 -52
	sw	%r26 %r4 -56
	sw	%r26 %r3 -60
	sw	%r26 %r5 -64
	sw.s	%r26 %f5 -68
	sw	%r26 %r10 -72
	sw	%r26 %r11 -76
	sw	%r26 %r2 -80
	mov	%r9 %r2
	sw	%r26 %r28 -84
	addi	%r26 %r26 -88
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 88
	lw	%r26 %r28 -84
	lw	%r26 %r6 -40
	lw.s	%r26 %f3 -44
	lw.s	%r26 %f2 -48
	lw	%r26 %r7 -52
	lw	%r26 %r4 -56
	lw	%r26 %r3 -60
	lw	%r26 %r5 -64
	lw.s	%r26 %f5 -68
	lw	%r26 %r10 -72
	lw	%r26 %r11 -76
	lw	%r26 %r2 -80
	beq	%r1 %r0 tail_b.1068
tail_b.1069 :
	addi	%r0 %r1 1
	j	postloop_b.26
tail_b.1068 :
	addi	%r2 %r2 1
	j	shadow_check_one_or_matrix_loop.4
tail_b.1067 :
	addi	%r2 %r2 1
	j	shadow_check_one_or_matrix_loop.4
branching_b.624 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f9 %f1 tail_b.1001
tail_b.1000 :
	addi	%r0 %r1 1
	j	branching_b.625
tail_b.1001 :
	addi	%r0 %r1 0
branching_b.625 :
	beq	%r1 %r0 tail_b.1002
branching_b.626 :
	lw.s	%r0 %f1 744
	mul.s	%f1 %f0 %f1
	add.s	%f8 %f1 %f1
	fbge	%f1 %f4 tail_b.1004
tail_b.1003 :
	neg.s	%f1 %f9
	j	branching_b.627
tail_b.1004 :
	mov.s	%f1 %f9
	j	branching_b.627
tail_b.1002 :
	addi	%r0 %r1 0
branching_b.631 :
	beq	%r1 %r0 branching_b.632
tail_b.1043 :
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.660
branching_b.632 :
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f7 %f0 %f1
	addi	%r8 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 736
	mul.s	%f0 %f1 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f4 tail_b.1013
tail_b.1012 :
	neg.s	%f0 %f9
	j	branching_b.633
tail_b.1013 :
	mov.s	%f0 %f9
branching_b.633 :
	lw	%r12 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f9 %f0 tail_b.1015
tail_b.1014 :
	addi	%r0 %r1 1
	j	branching_b.634
tail_b.1015 :
	addi	%r0 %r1 0
branching_b.634 :
	beq	%r1 %r0 tail_b.1016
branching_b.635 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f1 %f0
	add.s	%f8 %f0 %f0
	fbge	%f0 %f4 tail_b.1018
tail_b.1017 :
	neg.s	%f0 %f0
	j	branching_b.636
tail_b.1018 :
	j	branching_b.636
tail_b.1016 :
	addi	%r0 %r1 0
branching_b.640 :
	beq	%r1 %r0 branching_b.641
tail_b.1042 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 2
	j	branching_b.660
branching_b.641 :
	addi	%r8 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f8 %f0 %f0
	addi	%r8 %r1 20
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 736
	mul.s	%f0 %f1 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f4 tail_b.1027
tail_b.1026 :
	neg.s	%f0 %f6
	j	branching_b.642
tail_b.1027 :
	mov.s	%f0 %f6
branching_b.642 :
	lw	%r12 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f6 %f0 tail_b.1029
tail_b.1028 :
	addi	%r0 %r1 1
	j	branching_b.643
tail_b.1029 :
	addi	%r0 %r1 0
branching_b.643 :
	beq	%r1 %r0 tail_b.1030
branching_b.644 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f1 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f4 tail_b.1032
tail_b.1031 :
	neg.s	%f0 %f0
	j	branching_b.645
tail_b.1032 :
	j	branching_b.645
tail_b.1030 :
	addi	%r0 %r1 0
branching_b.649 :
	beq	%r1 %r0 tail_b.1040
tail_b.1041 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 3
	j	branching_b.660
tail_b.1040 :
	addi	%r0 %r1 0
	j	branching_b.660
branching_b.645 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.1034
tail_b.1033 :
	addi	%r0 %r1 1
	j	branching_b.646
tail_b.1034 :
	addi	%r0 %r1 0
branching_b.646 :
	beq	%r1 %r0 tail_b.1035
branching_b.647 :
	addi	%r8 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f4 tail_b.1037
tail_b.1036 :
	addi	%r0 %r1 1
	j	branching_b.648
tail_b.1037 :
	addi	%r0 %r1 0
	j	branching_b.648
tail_b.1035 :
	addi	%r0 %r1 0
	j	branching_b.649
branching_b.648 :
	beq	%r1 %r0 tail_b.1038
tail_b.1039 :
	addi	%r0 %r1 0
	j	branching_b.649
tail_b.1038 :
	addi	%r0 %r1 1
	j	branching_b.649
branching_b.636 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f9 0
	fbge	%f0 %f9 tail_b.1020
tail_b.1019 :
	addi	%r0 %r1 1
	j	branching_b.637
tail_b.1020 :
	addi	%r0 %r1 0
branching_b.637 :
	beq	%r1 %r0 tail_b.1021
branching_b.638 :
	addi	%r8 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f4 tail_b.1023
tail_b.1022 :
	addi	%r0 %r1 1
	j	branching_b.639
tail_b.1023 :
	addi	%r0 %r1 0
	j	branching_b.639
tail_b.1021 :
	addi	%r0 %r1 0
	j	branching_b.640
branching_b.639 :
	beq	%r1 %r0 tail_b.1024
tail_b.1025 :
	addi	%r0 %r1 0
	j	branching_b.640
tail_b.1024 :
	addi	%r0 %r1 1
	j	branching_b.640
branching_b.660 :
	bne	%r1 %r0 branching_b.661
tail_b.1066 :
	addi	%r0 %r1 0
	j	branching_b.664
branching_b.661 :
	lw.s	%r0 %f0 540
	fbge	%f0 %f5 tail_b.1062
tail_b.1061 :
	addi	%r0 %r1 1
	j	branching_b.662
tail_b.1062 :
	addi	%r0 %r1 0
branching_b.662 :
	beq	%r1 %r0 tail_b.1063
branching_b.663 :
	addi	%r0 %r1 1
	sw	%r26 %r6 -84
	sw.s	%r26 %f3 -88
	sw.s	%r26 %f2 -92
	sw	%r26 %r7 -96
	sw	%r26 %r4 -100
	sw	%r26 %r3 -104
	sw	%r26 %r5 -108
	sw.s	%r26 %f5 -112
	sw	%r26 %r10 -116
	sw	%r26 %r11 -120
	sw	%r26 %r2 -124
	sw	%r26 %r9 -128
	mov	%r9 %r2
	sw	%r26 %r28 -132
	addi	%r26 %r26 -136
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 136
	lw	%r26 %r28 -132
	lw	%r26 %r6 -84
	lw.s	%r26 %f3 -88
	lw.s	%r26 %f2 -92
	lw	%r26 %r7 -96
	lw	%r26 %r4 -100
	lw	%r26 %r3 -104
	lw	%r26 %r5 -108
	lw.s	%r26 %f5 -112
	lw	%r26 %r10 -116
	lw	%r26 %r11 -120
	lw	%r26 %r2 -124
	lw	%r26 %r9 -128
	beq	%r1 %r0 tail_b.1064
tail_b.1065 :
	addi	%r0 %r1 1
	j	branching_b.664
tail_b.1064 :
	addi	%r0 %r1 0
	j	branching_b.664
tail_b.1063 :
	addi	%r0 %r1 0
	j	branching_b.664
branching_b.627 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f9 %f1 tail_b.1006
tail_b.1005 :
	addi	%r0 %r1 1
	j	branching_b.628
tail_b.1006 :
	addi	%r0 %r1 0
branching_b.628 :
	beq	%r1 %r0 tail_b.1007
branching_b.629 :
	addi	%r8 %r1 4
	lw.s	%r1 %f1 0
	fbne	%f1 %f4 tail_b.1009
tail_b.1008 :
	addi	%r0 %r1 1
	j	branching_b.630
tail_b.1009 :
	addi	%r0 %r1 0
	j	branching_b.630
tail_b.1007 :
	addi	%r0 %r1 0
	j	branching_b.631
branching_b.630 :
	beq	%r1 %r0 tail_b.1010
tail_b.1011 :
	addi	%r0 %r1 0
	j	branching_b.631
tail_b.1010 :
	addi	%r0 %r1 1
	j	branching_b.631
branching_b.652 :
	beq	%r1 %r0 tail_b.1046
tail_b.1047 :
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f6 %f0 %f1
	addi	%r8 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r8 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.660
tail_b.1046 :
	addi	%r0 %r1 0
	j	branching_b.660
branching_b.654 :
	beq	%r1 %r0 branching_b.655
tail_b.1060 :
	addi	%r0 %r1 0
	j	branching_b.660
branching_b.655 :
	addi	%r8 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f6 %f0 %f0
	addi	%r8 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r8 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f4
	mul.s	%f6 %f6 %f0
	lw	%r12 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	mul.s	%f7 %f7 %f0
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f8 %f8 %f9
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f0
	add.s	%f0 %f1 %f9
	lw	%r12 %r1 12
	beq	%r1 %r0 tail_b.1050
tail_b.1051 :
	mul.s	%f8 %f7 %f1
	lw	%r12 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f9 %f9
	mul.s	%f6 %f8 %f0
	lw	%r12 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f8
	mul.s	%f7 %f6 %f0
	lw	%r12 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	j	branching_b.656
tail_b.1050 :
	mov.s	%f9 %f0
branching_b.656 :
	lw	%r12 %r1 4
	addi	%r0 %r13 3
	beq	%r1 %r13 tail_b.1052
tail_b.1053 :
	j	branching_b.657
tail_b.1052 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f0 %f0
branching_b.657 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f11 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f10 %f0 tail_b.1055
tail_b.1054 :
	addi	%r0 %r1 1
	j	branching_b.658
tail_b.1055 :
	addi	%r0 %r1 0
branching_b.658 :
	beq	%r1 %r0 tail_b.1056
branching_b.659 :
	lw	%r12 %r1 24
	beq	%r1 %r0 tail_b.1057
tail_b.1058 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r8 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1059
tail_b.1057 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f1
	addi	%r8 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1059
tail_b.1056 :
	addi	%r0 %r1 0
	j	branching_b.660
tail_b.1059 :
	addi	%r0 %r1 1
	j	branching_b.660
tail_b.1080 :
	addi	%r4 %r4 -1
	j	trace_reflections_loop.0
tail_b.989 :
	addi	%r10 %r10 1
	j	trace_or_matrix_fast_loop.3
branching_b.578 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f6 %f0 tail_b.928
tail_b.927 :
	addi	%r0 %r1 1
	j	branching_b.579
tail_b.928 :
	addi	%r0 %r1 0
branching_b.579 :
	beq	%r1 %r0 tail_b.929
branching_b.580 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f8 %f0 %f0
	fbge	%f0 %f4 tail_b.931
tail_b.930 :
	neg.s	%f0 %f6
	j	branching_b.581
tail_b.931 :
	mov.s	%f0 %f6
	j	branching_b.581
tail_b.929 :
	addi	%r0 %r1 0
branching_b.585 :
	beq	%r1 %r0 branching_b.586
tail_b.970 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 1
	j	branching_b.612
branching_b.586 :
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f1
	addi	%r13 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f6
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f4 tail_b.940
tail_b.939 :
	neg.s	%f0 %f0
	j	branching_b.587
tail_b.940 :
branching_b.587 :
	lw	%r12 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.942
tail_b.941 :
	addi	%r0 %r1 1
	j	branching_b.588
tail_b.942 :
	addi	%r0 %r1 0
branching_b.588 :
	beq	%r1 %r0 tail_b.943
branching_b.589 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f8 %f0 %f0
	fbge	%f0 %f4 tail_b.945
tail_b.944 :
	neg.s	%f0 %f0
	j	branching_b.590
tail_b.945 :
	j	branching_b.590
tail_b.943 :
	addi	%r0 %r1 0
branching_b.594 :
	beq	%r1 %r0 branching_b.595
tail_b.969 :
	sw.s	%r0 %f6 540
	addi	%r0 %r1 2
	j	branching_b.612
branching_b.595 :
	addi	%r13 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f8 %f0 %f0
	addi	%r13 %r1 20
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f6
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f4 tail_b.954
tail_b.953 :
	neg.s	%f0 %f0
	j	branching_b.596
tail_b.954 :
branching_b.596 :
	lw	%r12 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.956
tail_b.955 :
	addi	%r0 %r1 1
	j	branching_b.597
tail_b.956 :
	addi	%r0 %r1 0
branching_b.597 :
	beq	%r1 %r0 tail_b.957
branching_b.598 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f4 tail_b.959
tail_b.958 :
	neg.s	%f0 %f0
	j	branching_b.599
tail_b.959 :
	j	branching_b.599
tail_b.957 :
	addi	%r0 %r1 0
branching_b.603 :
	beq	%r1 %r0 tail_b.967
tail_b.968 :
	sw.s	%r0 %f6 540
	addi	%r0 %r1 3
	j	branching_b.612
tail_b.967 :
	addi	%r0 %r1 0
	j	branching_b.612
branching_b.599 :
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.961
tail_b.960 :
	addi	%r0 %r1 1
	j	branching_b.600
tail_b.961 :
	addi	%r0 %r1 0
branching_b.600 :
	beq	%r1 %r0 tail_b.962
branching_b.601 :
	addi	%r13 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f4 tail_b.964
tail_b.963 :
	addi	%r0 %r1 1
	j	branching_b.602
tail_b.964 :
	addi	%r0 %r1 0
	j	branching_b.602
tail_b.962 :
	addi	%r0 %r1 0
	j	branching_b.603
branching_b.602 :
	beq	%r1 %r0 tail_b.965
tail_b.966 :
	addi	%r0 %r1 0
	j	branching_b.603
tail_b.965 :
	addi	%r0 %r1 1
	j	branching_b.603
branching_b.590 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.947
tail_b.946 :
	addi	%r0 %r1 1
	j	branching_b.591
tail_b.947 :
	addi	%r0 %r1 0
branching_b.591 :
	beq	%r1 %r0 tail_b.948
branching_b.592 :
	addi	%r13 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f4 tail_b.950
tail_b.949 :
	addi	%r0 %r1 1
	j	branching_b.593
tail_b.950 :
	addi	%r0 %r1 0
	j	branching_b.593
tail_b.948 :
	addi	%r0 %r1 0
	j	branching_b.594
branching_b.593 :
	beq	%r1 %r0 tail_b.951
tail_b.952 :
	addi	%r0 %r1 0
	j	branching_b.594
tail_b.951 :
	addi	%r0 %r1 1
	j	branching_b.594
branching_b.612 :
	bne	%r1 %r0 branching_b.613
tail_b.988 :
	j	tail_b.989
branching_b.613 :
	lw.s	%r0 %f1 540
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.985
tail_b.984 :
	addi	%r0 %r1 1
	j	branching_b.614
tail_b.985 :
	addi	%r0 %r1 0
branching_b.614 :
	beq	%r1 %r0 tail_b.986
tail_b.987 :
	addi	%r0 %r1 1
	sw	%r26 %r6 -132
	sw.s	%r26 %f3 -136
	sw.s	%r26 %f2 -140
	sw	%r26 %r7 -144
	sw	%r26 %r4 -148
	sw	%r26 %r3 -152
	sw	%r26 %r5 -156
	sw	%r26 %r9 -160
	sw	%r26 %r8 -164
	sw	%r26 %r10 -168
	mov	%r5 %r3
	mov	%r11 %r2
	sw	%r26 %r28 -172
	addi	%r26 %r26 -176
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 176
	lw	%r26 %r28 -172
	lw	%r26 %r6 -132
	lw.s	%r26 %f3 -136
	lw.s	%r26 %f2 -140
	lw	%r26 %r7 -144
	lw	%r26 %r4 -148
	lw	%r26 %r3 -152
	lw	%r26 %r5 -156
	lw	%r26 %r9 -160
	lw	%r26 %r8 -164
	lw	%r26 %r10 -168
	j	tail_b.989
tail_b.986 :
	j	tail_b.989
branching_b.581 :
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f6 %f0 tail_b.933
tail_b.932 :
	addi	%r0 %r1 1
	j	branching_b.582
tail_b.933 :
	addi	%r0 %r1 0
branching_b.582 :
	beq	%r1 %r0 tail_b.934
branching_b.583 :
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f4 tail_b.936
tail_b.935 :
	addi	%r0 %r1 1
	j	branching_b.584
tail_b.936 :
	addi	%r0 %r1 0
	j	branching_b.584
tail_b.934 :
	addi	%r0 %r1 0
	j	branching_b.585
branching_b.584 :
	beq	%r1 %r0 tail_b.937
tail_b.938 :
	addi	%r0 %r1 0
	j	branching_b.585
tail_b.937 :
	addi	%r0 %r1 1
	j	branching_b.585
branching_b.606 :
	beq	%r1 %r0 tail_b.973
tail_b.974 :
	lw.s	%r13 %f1 0
	addi	%r14 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.612
tail_b.973 :
	addi	%r0 %r1 0
	j	branching_b.612
branching_b.608 :
	beq	%r1 %r0 branching_b.609
tail_b.983 :
	addi	%r0 %r1 0
	j	branching_b.612
branching_b.609 :
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	addi	%r13 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r13 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f5
	addi	%r14 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f5 %f5 %f0
	mul.s	%f1 %f4 %f1
	sub.s	%f1 %f0 %f0
	fbge	%f6 %f0 tail_b.978
tail_b.977 :
	addi	%r0 %r1 1
	j	branching_b.610
tail_b.978 :
	addi	%r0 %r1 0
branching_b.610 :
	beq	%r1 %r0 tail_b.979
branching_b.611 :
	lw	%r12 %r1 24
	beq	%r1 %r0 tail_b.980
tail_b.981 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f5 %f0
	addi	%r13 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.982
tail_b.980 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f5 %f1
	addi	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.982
tail_b.979 :
	addi	%r0 %r1 0
	j	branching_b.612
tail_b.982 :
	addi	%r0 %r1 1
	j	branching_b.612
postloop_b.27 :
return_point.15 :
	retl
trace_ray.0 :
preloop_b.28 :
	mov	%r1 %r6
	mov.s	%f0 %f2
	addi	%r0 %r5 4
trace_ray_loop.0 :
	ble	%r6 %r5 preloop_b.29
tail_b.1391 :
	j	postloop_b.34
preloop_b.29 :
	lw	%r3 %r4 8
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	addi	%r0 %r9 0
	lw	%r0 %r8 536
	mov	%r9 %r11
	addi	%r0 %r12 -1
trace_or_matrix_loop.1 :
	slli	%r11 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r10 0
	mov	%r10 %r1
	lw	%r1 %r1 0
	beq	%r1 %r12 tail_b.1082
branching_b.673 :
	addi	%r0 %r7 99
	beq	%r1 %r7 tail_b.1083
branching_b.674 :
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r13 0
	lw.s	%r0 %f0 636
	lw	%r13 %r1 20
	lw.s	%r1 %f3 0
	sub.s	%f3 %f0 %f6
	lw.s	%r0 %f0 640
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	sub.s	%f3 %f0 %f7
	lw.s	%r0 %f3 644
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f8
	lw	%r13 %r7 4
	addi	%r0 %r1 1
	beq	%r7 %r1 branching_b.675
branching_b.714 :
	addi	%r0 %r1 2
	beq	%r7 %r1 branching_b.715
branching_b.717 :
	mov	%r2 %r1
	lw.s	%r1 %f5 0
	addi	%r2 %r1 4
	lw.s	%r1 %f4 0
	addi	%r2 %r1 8
	lw.s	%r1 %f10 0
	mul.s	%f5 %f5 %f3
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f9
	mul.s	%f4 %f4 %f3
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f9 %f9
	mul.s	%f10 %f10 %f3
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f9 %f3
	lw	%r13 %r1 12
	beq	%r1 %r0 tail_b.1155
tail_b.1156 :
	mul.s	%f10 %f4 %f0
	lw	%r13 %r1 36
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f3 %f3
	mul.s	%f5 %f10 %f9
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f0
	add.s	%f0 %f3 %f3
	mul.s	%f4 %f5 %f0
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f5
	j	branching_b.718
tail_b.1155 :
	mov.s	%f3 %f5
	j	branching_b.718
branching_b.715 :
	lw	%r13 %r7 16
	mov	%r2 %r1
	lw.s	%r1 %f3 0
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	addi	%r2 %r1 4
	lw.s	%r1 %f4 0
	addi	%r7 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f3
	addi	%r2 %r1 8
	lw.s	%r1 %f4 0
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.51
	fbge	%f0 %f3 tail_b.1152
tail_b.1151 :
	addi	%r0 %r1 1
	j	branching_b.716
tail_b.1152 :
	addi	%r0 %r1 0
	j	branching_b.716
branching_b.675 :
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f4 l.51
	fbne	%f0 %f4 tail_b.1085
tail_b.1084 :
	addi	%r0 %r1 1
	j	branching_b.676
tail_b.1085 :
	addi	%r0 %r1 0
	j	branching_b.676
tail_b.1083 :
	addi	%r0 %r1 1
	sw	%r26 %r2 0
	sw	%r26 %r3 -4
	sw	%r26 %r5 -8
	sw	%r26 %r6 -12
	sw.s	%r26 %f2 -16
	sw.s	%r26 %f1 -20
	sw	%r26 %r4 -24
	sw	%r26 %r9 -28
	sw	%r26 %r8 -32
	sw	%r26 %r12 -36
	sw	%r26 %r11 -40
	mov	%r2 %r3
	mov	%r10 %r2
	sw	%r26 %r28 -44
	addi	%r26 %r26 -48
	jal	solve_one_or_network.0
	addi	%r26 %r26 48
	lw	%r26 %r28 -44
	lw	%r26 %r2 0
	lw	%r26 %r3 -4
	lw	%r26 %r5 -8
	lw	%r26 %r6 -12
	lw.s	%r26 %f2 -16
	lw.s	%r26 %f1 -20
	lw	%r26 %r4 -24
	lw	%r26 %r9 -28
	lw	%r26 %r8 -32
	lw	%r26 %r12 -36
	lw	%r26 %r11 -40
	j	tail_b.1177
tail_b.1082 :
postloop_b.28 :
branching_b.729 :
	lw.s	%r0 %f3 548
	ilw.s	%r0 %f4 l.68
	fbge	%f4 %f3 tail_b.1179
tail_b.1178 :
	addi	%r0 %r1 1
	j	branching_b.730
tail_b.1179 :
	addi	%r0 %r1 0
branching_b.730 :
	beq	%r1 %r0 tail_b.1180
branching_b.731 :
	ilw.s	%r0 %f0 l.70
	fbge	%f3 %f0 tail_b.1182
tail_b.1181 :
	addi	%r0 %r1 1
	j	branching_b.732
tail_b.1182 :
	addi	%r0 %r1 0
	j	branching_b.732
tail_b.1180 :
	addi	%r0 %r1 0
branching_b.732 :
	beq	%r1 %r0 branching_b.733
branching_b.736 :
	lw	%r0 %r11 564
	slli	%r11 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r7 0
	lw	%r7 %r8 8
	lw	%r7 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f3
	lw	%r7 %r1 4
	addi	%r0 %r10 1
	beq	%r1 %r10 branching_b.737
branching_b.741 :
	addi	%r0 %r12 2
	beq	%r1 %r12 tail_b.1196
branching_b.742 :
	lw.s	%r0 %f0 552
	lw	%r7 %r1 20
	lw.s	%r1 %f5 0
	sub.s	%f5 %f0 %f5
	lw.s	%r0 %f0 556
	lw	%r7 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f6 0
	sub.s	%f6 %f0 %f7
	lw.s	%r0 %f0 560
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	sub.s	%f6 %f0 %f11
	lw	%r7 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f6 0
	mul.s	%f6 %f7 %f8
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f6 %f11 %f6
	lw	%r7 %r1 12
	beq	%r1 %r0 tail_b.1197
tail_b.1198 :
	lw	%r7 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f9 0
	mul.s	%f9 %f7 %f10
	lw	%r7 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f9 0
	mul.s	%f9 %f11 %f9
	add.s	%f9 %f10 %f9
	ilw.s	%r0 %f10 l.69
	div.s	%f10 %f9 %f9
	add.s	%f9 %f0 %f0
	sw.s	%r0 %f0 568
	lw	%r7 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f9
	lw	%r7 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f11 %f0
	add.s	%f0 %f9 %f0
	div.s	%f10 %f0 %f0
	add.s	%f0 %f8 %f0
	sw.s	%r0 %f0 572
	lw	%r7 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f5
	lw	%r7 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f5 %f0
	div.s	%f10 %f0 %f0
	add.s	%f0 %f6 %f0
	sw.s	%r0 %f0 576
	j	branching_b.743
tail_b.1197 :
	sw.s	%r0 %f0 568
	sw.s	%r0 %f8 572
	sw.s	%r0 %f6 576
	j	branching_b.743
tail_b.1196 :
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
	j	branching_b.746
branching_b.737 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f5 l.51
	sw.s	%r0 %f5 568
	sw.s	%r0 %f5 572
	sw.s	%r0 %f5 576
	addi	%r1 %r12 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r2 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f5 tail_b.1189
tail_b.1188 :
	addi	%r0 %r1 1
	j	branching_b.738
tail_b.1189 :
	addi	%r0 %r1 0
	j	branching_b.738
branching_b.733 :
	addi	%r0 %r3 -1
	slli	%r6 %r1 2
	add	%r4 %r1 %r1
	sw	%r1 %r3 0
	bne	%r6 %r0 branching_b.734
tail_b.1187 :
	j	postloop_b.34
branching_b.734 :
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f1
	addi	%r2 %r1 4
	lw.s	%r1 %f3 0
	lw.s	%r0 %f0 316
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f1
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	lw.s	%r0 %f3 320
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.51
	fbge	%f1 %f0 tail_b.1184
tail_b.1183 :
	addi	%r0 %r1 1
	j	branching_b.735
tail_b.1184 :
	addi	%r0 %r1 0
branching_b.735 :
	beq	%r1 %r0 tail_b.1185
tail_b.1186 :
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
	j	postloop_b.34
tail_b.1185 :
	j	postloop_b.34
branching_b.738 :
	beq	%r1 %r0 branching_b.739
tail_b.1194 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1195
branching_b.739 :
	fbge	%f5 %f0 tail_b.1191
tail_b.1190 :
	addi	%r0 %r1 1
	j	branching_b.740
tail_b.1191 :
	addi	%r0 %r1 0
branching_b.740 :
	beq	%r1 %r0 tail_b.1192
tail_b.1193 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.1195
tail_b.1192 :
	ilw.s	%r0 %f0 l.58
tail_b.1195 :
	neg.s	%f0 %f0
	slli	%r12 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.746 :
	lw.s	%r0 %f0 552
	sw.s	%r0 %f0 636
	lw.s	%r0 %f0 556
	sw.s	%r0 %f0 640
	lw.s	%r0 %f0 560
	sw.s	%r0 %f0 644
	lw	%r7 %r12 0
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
	beq	%r12 %r10 branching_b.747
branching_b.752 :
	addi	%r0 %r1 2
	beq	%r12 %r1 preloop_b.30
branching_b.762 :
	addi	%r0 %r1 3
	beq	%r12 %r1 preloop_b.31
branching_b.772 :
	beq	%r12 %r5 branching_b.773
tail_b.1269 :
	j	branching_b.793
branching_b.773 :
	lw.s	%r0 %f0 552
	lw	%r7 %r1 20
	lw.s	%r1 %f5 0
	sub.s	%f5 %f0 %f5
	lw	%r7 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f5 %f9
	lw.s	%r0 %f5 560
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f5 %f0
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	sqrt.s	%f5 %f5
	mul.s	%f5 %f0 %f5
	mul.s	%f9 %f9 %f0
	mul.s	%f5 %f5 %f6
	add.s	%f6 %f0 %f7
	ilw.s	%r0 %f6 l.51
	fbge	%f9 %f6 tail_b.1237
tail_b.1236 :
	neg.s	%f9 %f0
	j	branching_b.774
tail_b.1237 :
	mov.s	%f9 %f0
	j	branching_b.774
preloop_b.31 :
	lw.s	%r0 %f5 552
	lw	%r7 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f5 %f0
	lw.s	%r0 %f5 560
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	sub.s	%f6 %f5 %f6
	mul.s	%f0 %f0 %f5
	mul.s	%f6 %f6 %f0
	add.s	%f0 %f5 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f5 l.73
	div.s	%f5 %f0 %f0
	floor.w.s	%f0 %f5
	sub.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f5 %f0
	mov.s	%f0 %f6
cos_loop.9 :
	ilw.s	%r0 %f7 l.54
	ilw.s	%r0 %f5 l.55
	fbg	%f5 %f6 branching_b.764
tail_b.1225 :
	sub.s	%f5 %f6 %f6
	j	cos_loop.9
branching_b.764 :
	ilw.s	%r0 %f0 l.51
	fbge	%f6 %f0 branching_b.765
tail_b.1226 :
	add.s	%f5 %f6 %f0
	mov.s	%f0 %f6
	j	cos_loop.9
branching_b.765 :
	fbg	%f7 %f6 branching_b.769
branching_b.766 :
	sub.s	%f7 %f6 %f0
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f6 l.57
	fbg	%f6 %f0 branching_b.768
branching_b.767 :
	sub.s	%f0 %f7 %f5
	ilw.s	%r0 %f8 l.56
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.1228
tail_b.1227 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.30
tail_b.1228 :
	sub.s	%f5 %f6 %f5
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f6 l.63
	mul.s	%f5 %f6 %f6
	ilw.s	%r0 %f7 l.64
	mul.s	%f5 %f7 %f7
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f7 %f7
	ilw.s	%r0 %f6 l.65
	mul.s	%f5 %f6 %f6
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f8 %f5
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.30
branching_b.768 :
	ilw.s	%r0 %f5 l.59
	fbg	%f0 %f5 tail_b.1230
tail_b.1229 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.56
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.30
tail_b.1230 :
	sub.s	%f0 %f6 %f5
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f9
	ilw.s	%r0 %f0 l.64
	mul.s	%f5 %f0 %f7
	mul.s	%f6 %f9 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.65
	mul.s	%f5 %f7 %f7
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.56
	mul.s	%f5 %f7 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.30
branching_b.769 :
	ilw.s	%r0 %f8 l.56
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f6 branching_b.771
branching_b.770 :
	sub.s	%f6 %f7 %f5
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f6 l.59
	fbg	%f5 %f6 tail_b.1232
tail_b.1231 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f6 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.30
tail_b.1232 :
	sub.s	%f5 %f0 %f5
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f10
	ilw.s	%r0 %f0 l.64
	mul.s	%f5 %f0 %f9
	mul.s	%f6 %f10 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f9 l.65
	mul.s	%f5 %f9 %f9
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f5 %f8 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.30
branching_b.771 :
	ilw.s	%r0 %f5 l.59
	fbg	%f6 %f5 tail_b.1234
tail_b.1233 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.30
tail_b.1234 :
	sub.s	%f6 %f0 %f6
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f6 %f8 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.30
preloop_b.30 :
	lw.s	%r0 %f5 556
	ilw.s	%r0 %f0 l.74
	mul.s	%f0 %f5 %f0
	mov.s	%f0 %f6
sin_loop.9 :
	ilw.s	%r0 %f8 l.54
	ilw.s	%r0 %f5 l.55
	fbg	%f5 %f6 branching_b.754
tail_b.1214 :
	sub.s	%f5 %f6 %f6
	j	sin_loop.9
branching_b.754 :
	ilw.s	%r0 %f0 l.51
	fbge	%f6 %f0 branching_b.755
tail_b.1215 :
	add.s	%f5 %f6 %f6
	j	sin_loop.9
branching_b.755 :
	fbg	%f8 %f6 branching_b.759
branching_b.756 :
	sub.s	%f8 %f6 %f6
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f6 branching_b.758
branching_b.757 :
	sub.s	%f6 %f8 %f8
	ilw.s	%r0 %f0 l.59
	fbg	%f8 %f0 tail_b.1217
tail_b.1216 :
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f6
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f0
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.65
	mul.s	%f8 %f6 %f6
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.56
	mul.s	%f8 %f6 %f6
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.29
tail_b.1217 :
	sub.s	%f8 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f6 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.56
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.29
branching_b.758 :
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.1219
tail_b.1218 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f5 l.64
	mul.s	%f6 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.56
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.29
tail_b.1219 :
	sub.s	%f6 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.56
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.29
branching_b.759 :
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f6 branching_b.761
branching_b.760 :
	sub.s	%f6 %f8 %f8
	ilw.s	%r0 %f0 l.59
	fbg	%f8 %f0 tail_b.1221
tail_b.1220 :
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f8 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f8 %f0 %f9
	mul.s	%f6 %f5 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f5 l.65
	mul.s	%f8 %f5 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f7 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.29
tail_b.1221 :
	sub.s	%f8 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f5 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.29
branching_b.761 :
	ilw.s	%r0 %f0 l.59
	fbg	%f6 %f0 tail_b.1223
tail_b.1222 :
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.65
	mul.s	%f6 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f7 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.29
tail_b.1223 :
	sub.s	%f6 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f6 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.29
branching_b.747 :
	lw.s	%r0 %f5 552
	lw	%r7 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f5 %f6
	ilw.s	%r0 %f0 l.71
	mul.s	%f0 %f6 %f5
	floor.w.s	%f5 %f5
	ilw.s	%r0 %f7 l.72
	mul.s	%f7 %f5 %f5
	sub.s	%f5 %f6 %f5
	ilw.s	%r0 %f6 l.73
	fbge	%f5 %f6 tail_b.1206
tail_b.1205 :
	addi	%r0 %r12 1
	j	branching_b.748
tail_b.1206 :
	addi	%r0 %r12 0
branching_b.748 :
	lw.s	%r0 %f8 560
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	sub.s	%f5 %f8 %f5
	mul.s	%f0 %f5 %f0
	floor.w.s	%f0 %f0
	mul.s	%f7 %f0 %f0
	sub.s	%f0 %f5 %f0
	fbge	%f0 %f6 tail_b.1208
tail_b.1207 :
	addi	%r0 %r1 1
	j	branching_b.749
tail_b.1208 :
	addi	%r0 %r1 0
branching_b.749 :
	beq	%r12 %r0 branching_b.750
branching_b.751 :
	beq	%r1 %r0 tail_b.1211
tail_b.1212 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.1213
tail_b.1211 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1213
branching_b.750 :
	beq	%r1 %r0 tail_b.1209
tail_b.1210 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1213
tail_b.1209 :
	ilw.s	%r0 %f0 l.52
tail_b.1213 :
	sw.s	%r0 %f0 584
	j	branching_b.793
postloop_b.29 :
tail_b.1224 :
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f6 l.52
	mul.s	%f0 %f6 %f5
	sw.s	%r0 %f5 580
	ilw.s	%r0 %f5 l.56
	sub.s	%f0 %f5 %f0
	mul.s	%f0 %f6 %f0
	sw.s	%r0 %f0 584
	j	branching_b.793
postloop_b.30 :
tail_b.1235 :
	mul.s	%f0 %f0 %f6
	ilw.s	%r0 %f5 l.52
	mul.s	%f5 %f6 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f6 %f0 %f0
	mul.s	%f5 %f0 %f0
	sw.s	%r0 %f0 588
	j	branching_b.793
branching_b.774 :
	ilw.s	%r0 %f8 l.76
	fbge	%f0 %f8 tail_b.1239
tail_b.1238 :
	addi	%r0 %r1 1
	j	branching_b.775
tail_b.1239 :
	addi	%r0 %r1 0
branching_b.775 :
	beq	%r1 %r0 branching_b.776
tail_b.1249 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.782
branching_b.776 :
	div.s	%f9 %f5 %f10
	fbge	%f10 %f6 tail_b.1241
tail_b.1240 :
	neg.s	%f10 %f10
	j	branching_b.777
tail_b.1241 :
branching_b.777 :
	fbg	%f6 %f10 branching_b.780
branching_b.778 :
	ilw.s	%r0 %f0 l.80
	fbge	%f10 %f0 branching_b.779
tail_b.1242 :
	ilw.s	%r0 %f9 l.56
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f11
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.1248
branching_b.779 :
	ilw.s	%r0 %f0 l.81
	fbge	%f10 %f0 tail_b.1244
tail_b.1243 :
	ilw.s	%r0 %f9 l.56
	sub.s	%f9 %f10 %f0
	add.s	%f9 %f10 %f5
	div.s	%f5 %f0 %f12
	ilw.s	%r0 %f11 l.59
	neg.s	%f12 %f0
	mul.s	%f12 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f12 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f12 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f12 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f12 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f12 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f12 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f12 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.1248
tail_b.1244 :
	ilw.s	%r0 %f0 l.56
	div.s	%f10 %f0 %f12
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f11 l.89
	neg.s	%f12 %f0
	mul.s	%f12 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f12 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f12 %f0 %f0
	mul.s	%f5 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f12 %f0 %f0
	mul.s	%f5 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.85
	mul.s	%f12 %f0 %f13
	mul.s	%f5 %f10 %f0
	add.s	%f0 %f13 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f12 %f0 %f13
	mul.s	%f5 %f10 %f0
	add.s	%f0 %f13 %f0
	ilw.s	%r0 %f10 l.87
	mul.s	%f12 %f10 %f10
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f12 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.1248
branching_b.780 :
	neg.s	%f10 %f11
	ilw.s	%r0 %f0 l.80
	fbge	%f11 %f0 branching_b.781
tail_b.1245 :
	ilw.s	%r0 %f9 l.58
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f10 l.83
	mul.s	%f11 %f10 %f10
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f12
	mul.s	%f5 %f10 %f0
	add.s	%f0 %f12 %f0
	ilw.s	%r0 %f10 l.85
	mul.s	%f11 %f10 %f10
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f10 l.86
	mul.s	%f11 %f10 %f10
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f0
	mul.s	%f5 %f10 %f10
	add.s	%f10 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.1248
branching_b.781 :
	ilw.s	%r0 %f0 l.81
	fbge	%f11 %f0 tail_b.1247
tail_b.1246 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f11 %f5
	add.s	%f0 %f11 %f0
	div.s	%f0 %f5 %f5
	ilw.s	%r0 %f12 l.58
	ilw.s	%r0 %f11 l.59
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	mul.s	%f9 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f0
	mul.s	%f9 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f9 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f0
	mul.s	%f9 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f9 %f10 %f10
	add.s	%f10 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f12 %f0 %f0
	j	tail_b.1248
tail_b.1247 :
	ilw.s	%r0 %f12 l.56
	div.s	%f11 %f12 %f11
	ilw.s	%r0 %f9 l.89
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f13
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f5
	mul.s	%f10 %f13 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f11 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f11 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f13
	mul.s	%f10 %f5 %f0
	add.s	%f0 %f13 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f12 %f0 %f0
tail_b.1248 :
	ilw.s	%r0 %f5 l.88
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.75
	div.s	%f5 %f0 %f0
branching_b.782 :
	floor.w.s	%f0 %f5
	sub.s	%f5 %f0 %f9
	lw.s	%r0 %f0 556
	lw	%r7 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	sub.s	%f5 %f0 %f5
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f5 %f5
	fbge	%f7 %f6 tail_b.1251
tail_b.1250 :
	neg.s	%f7 %f0
	j	branching_b.783
tail_b.1251 :
	mov.s	%f7 %f0
branching_b.783 :
	fbge	%f0 %f8 tail_b.1253
tail_b.1252 :
	addi	%r0 %r1 1
	j	branching_b.784
tail_b.1253 :
	addi	%r0 %r1 0
branching_b.784 :
	beq	%r1 %r0 branching_b.785
tail_b.1263 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.791
branching_b.785 :
	div.s	%f7 %f5 %f0
	fbge	%f0 %f6 tail_b.1255
tail_b.1254 :
	neg.s	%f0 %f7
	j	branching_b.786
tail_b.1255 :
	mov.s	%f0 %f7
branching_b.786 :
	fbg	%f6 %f7 branching_b.789
branching_b.787 :
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.788
tail_b.1256 :
	ilw.s	%r0 %f8 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f7 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f7 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f7 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f8 %f0 %f5
	j	tail_b.1262
branching_b.788 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.1258
tail_b.1257 :
	ilw.s	%r0 %f11 l.56
	sub.s	%f11 %f7 %f5
	add.s	%f11 %f7 %f0
	div.s	%f0 %f5 %f7
	ilw.s	%r0 %f10 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f12
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f8
	mul.s	%f5 %f12 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.84
	mul.s	%f7 %f8 %f8
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.85
	mul.s	%f7 %f8 %f8
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f12
	mul.s	%f5 %f8 %f0
	add.s	%f0 %f12 %f12
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f8
	mul.s	%f5 %f12 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f11 %f0 %f5
	j	tail_b.1262
tail_b.1258 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f10
	ilw.s	%r0 %f12 l.58
	ilw.s	%r0 %f7 l.89
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f11
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f8
	mul.s	%f11 %f5 %f0
	add.s	%f0 %f8 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f5 %f5
	add.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f5
	mul.s	%f11 %f8 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f10 %f5 %f5
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f12 %f0 %f5
	j	tail_b.1262
branching_b.789 :
	neg.s	%f7 %f0
	ilw.s	%r0 %f5 l.80
	fbge	%f0 %f5 branching_b.790
tail_b.1259 :
	ilw.s	%r0 %f8 l.58
	neg.s	%f0 %f5
	mul.s	%f0 %f5 %f10
	ilw.s	%r0 %f5 l.82
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f7 l.83
	mul.s	%f0 %f7 %f7
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f7 %f7
	ilw.s	%r0 %f5 l.84
	mul.s	%f0 %f5 %f5
	mul.s	%f10 %f7 %f7
	add.s	%f7 %f5 %f5
	ilw.s	%r0 %f7 l.85
	mul.s	%f0 %f7 %f7
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f7 %f11
	ilw.s	%r0 %f5 l.86
	mul.s	%f0 %f5 %f7
	mul.s	%f10 %f11 %f5
	add.s	%f5 %f7 %f7
	ilw.s	%r0 %f5 l.87
	mul.s	%f0 %f5 %f5
	mul.s	%f10 %f7 %f7
	add.s	%f7 %f5 %f5
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f8 %f0 %f5
	j	tail_b.1262
branching_b.790 :
	ilw.s	%r0 %f5 l.81
	fbge	%f0 %f5 tail_b.1261
tail_b.1260 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f0 %f5
	add.s	%f7 %f0 %f0
	div.s	%f0 %f5 %f10
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f12 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f7
	mul.s	%f5 %f11 %f0
	add.s	%f0 %f7 %f11
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f7
	mul.s	%f5 %f11 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f10 %f7 %f7
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f8 %f0 %f5
	j	tail_b.1262
tail_b.1261 :
	ilw.s	%r0 %f7 l.56
	div.s	%f0 %f7 %f11
	ilw.s	%r0 %f10 l.89
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f11 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f11 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f11 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f7 %f0 %f5
tail_b.1262 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.75
	div.s	%f5 %f0 %f0
branching_b.791 :
	floor.w.s	%f0 %f5
	sub.s	%f5 %f0 %f8
	ilw.s	%r0 %f5 l.90
	ilw.s	%r0 %f7 l.62
	sub.s	%f9 %f7 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f5 %f5
	sub.s	%f8 %f7 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f5 %f0
	fbge	%f0 %f6 tail_b.1265
tail_b.1264 :
	addi	%r0 %r1 1
	j	branching_b.792
tail_b.1265 :
	addi	%r0 %r1 0
branching_b.792 :
	beq	%r1 %r0 tail_b.1266
tail_b.1267 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1268
tail_b.1266 :
tail_b.1268 :
	ilw.s	%r0 %f5 l.52
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.91
	div.s	%f0 %f5 %f0
	sw.s	%r0 %f0 588
branching_b.793 :
	mul	%r11 %r5 %r11
	lw	%r0 %r1 544
	add	%r11 %r1 %r11
	slli	%r6 %r1 2
	add	%r4 %r1 %r1
	sw	%r1 %r11 0
	lw	%r3 %r1 4
	slli	%r6 %r11 2
	add	%r1 %r11 %r1
	lw	%r1 %r11 0
	lw.s	%r0 %f0 552
	mov	%r11 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 556
	addi	%r11 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 560
	addi	%r11 %r1 8
	sw.s	%r1 %f0 0
	lw	%r3 %r12 12
	lw	%r7 %r1 28
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f5 l.62
	fbge	%f0 %f5 tail_b.1271
tail_b.1270 :
	addi	%r0 %r1 1
	j	branching_b.794
tail_b.1271 :
	addi	%r0 %r1 0
branching_b.794 :
	beq	%r1 %r0 tail_b.1272
tail_b.1273 :
	slli	%r6 %r1 2
	add	%r12 %r1 %r1
	sw	%r1 %r0 0
	j	preloop_b.32
tail_b.1272 :
	addi	%r0 %r11 1
	slli	%r6 %r1 2
	add	%r12 %r1 %r1
	sw	%r1 %r11 0
	lw	%r3 %r12 16
	slli	%r6 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r11 0
	lw.s	%r0 %f0 580
	mov	%r11 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 584
	addi	%r11 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 588
	addi	%r11 %r1 8
	sw.s	%r1 %f0 0
	slli	%r6 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r11 0
	ilw.s	%r0 %f0 l.77
	mul.s	%f3 %f0 %f0
	mov	%r11 %r1
	lw.s	%r1 %f5 0
	mul.s	%f0 %f5 %f5
	mov	%r11 %r1
	sw.s	%r1 %f5 0
	addi	%r11 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r11 %r1 4
	sw.s	%r1 %f5 0
	addi	%r11 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f0 %f5 %f0
	addi	%r11 %r1 8
	sw.s	%r1 %f0 0
	lw	%r3 %r11 28
	slli	%r6 %r1 2
	add	%r11 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f0 568
	mov	%r1 %r11
	sw.s	%r11 %f0 0
	lw.s	%r0 %f0 572
	addi	%r1 %r11 4
	sw.s	%r11 %f0 0
	lw.s	%r0 %f0 576
	addi	%r1 %r1 8
	sw.s	%r1 %f0 0
preloop_b.32 :
	ilw.s	%r0 %f6 l.79
	mov	%r2 %r1
	lw.s	%r1 %f5 0
	lw.s	%r0 %f0 568
	mul.s	%f0 %f5 %f7
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	lw.s	%r0 %f5 572
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f7
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	lw.s	%r0 %f5 576
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f0 %f6 %f5
	mov	%r2 %r1
	lw.s	%r1 %f6 0
	lw.s	%r0 %f0 568
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f6 %f0
	mov	%r2 %r1
	sw.s	%r1 %f0 0
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	lw.s	%r0 %f6 572
	mul.s	%f6 %f5 %f6
	add.s	%f6 %f0 %f0
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	addi	%r2 %r1 8
	lw.s	%r1 %f6 0
	lw.s	%r0 %f0 576
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f6 %f0
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	lw	%r7 %r1 28
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f6
	lw	%r0 %r12 536
	mov	%r9 %r13
	addi	%r0 %r11 -1
shadow_check_one_or_matrix_loop.3 :
	slli	%r13 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r14 0
	mov	%r14 %r1
	lw	%r1 %r15 0
	beq	%r15 %r11 tail_b.1274
branching_b.796 :
	addi	%r0 %r1 99
	beq	%r15 %r1 tail_b.1275
branching_b.797 :
	slli	%r15 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r9 0
	lw.s	%r0 %f5 552
	lw	%r9 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f5 %f10
	lw.s	%r0 %f0 556
	lw	%r9 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	sub.s	%f5 %f0 %f8
	lw.s	%r0 %f0 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	sub.s	%f5 %f0 %f9
	slli	%r15 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r15 0
	lw	%r9 %r1 4
	beq	%r1 %r10 branching_b.798
branching_b.825 :
	addi	%r0 %r16 2
	beq	%r1 %r16 branching_b.826
branching_b.828 :
	mov	%r15 %r1
	lw.s	%r1 %f11 0
	ilw.s	%r0 %f12 l.51
	fbne	%f11 %f12 tail_b.1327
tail_b.1326 :
	addi	%r0 %r1 1
	j	branching_b.829
tail_b.1327 :
	addi	%r0 %r1 0
	j	branching_b.829
branching_b.826 :
	mov	%r15 %r1
	lw.s	%r1 %f5 0
	ilw.s	%r0 %f0 l.51
	fbge	%f5 %f0 tail_b.1323
tail_b.1322 :
	addi	%r0 %r1 1
	j	branching_b.827
tail_b.1323 :
	addi	%r0 %r1 0
	j	branching_b.827
branching_b.798 :
	mov	%r15 %r1
	lw.s	%r1 %f0 0
	sub.s	%f10 %f0 %f0
	addi	%r15 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f7
	lw.s	%r0 %f0 740
	mul.s	%f0 %f7 %f0
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f11 l.51
	fbge	%f0 %f11 tail_b.1277
tail_b.1276 :
	neg.s	%f0 %f0
	j	branching_b.799
tail_b.1277 :
	j	branching_b.799
tail_b.1275 :
	addi	%r0 %r1 1
	j	branching_b.839
tail_b.1274 :
	addi	%r0 %r1 0
postloop_b.31 :
branching_b.841 :
	beq	%r1 %r0 branching_b.842
tail_b.1356 :
	j	preloop_b.33
branching_b.842 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f5 312
	mul.s	%f5 %f0 %f5
	lw.s	%r0 %f7 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f5 %f5
	lw.s	%r0 %f7 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f5 %f0
	neg.s	%f0 %f0
	mul.s	%f3 %f0 %f5
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	lw.s	%r0 %f7 312
	mul.s	%f7 %f0 %f8
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	lw.s	%r0 %f7 316
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f7
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	lw.s	%r0 %f8 320
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f9 l.51
	fbge	%f9 %f5 tail_b.1349
tail_b.1348 :
	addi	%r0 %r1 1
	j	branching_b.843
tail_b.1349 :
	addi	%r0 %r1 0
branching_b.843 :
	beq	%r1 %r0 tail_b.1350
tail_b.1351 :
	lw.s	%r0 %f7 604
	lw.s	%r0 %f0 580
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f7 608
	lw.s	%r0 %f0 584
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	lw.s	%r0 %f7 588
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	sw.s	%r0 %f0 612
	j	branching_b.844
tail_b.1350 :
branching_b.844 :
	fbge	%f9 %f8 tail_b.1353
tail_b.1352 :
	addi	%r0 %r1 1
	j	branching_b.845
tail_b.1353 :
	addi	%r0 %r1 0
branching_b.845 :
	beq	%r1 %r0 tail_b.1354
tail_b.1355 :
	mul.s	%f8 %f8 %f0
	mul.s	%f0 %f0 %f0
	mul.s	%f6 %f0 %f5
	lw.s	%r0 %f0 604
	add.s	%f5 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	add.s	%f5 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	add.s	%f5 %f0 %f0
	sw.s	%r0 %f0 612
	j	preloop_b.33
tail_b.1354 :
preloop_b.33 :
	lw.s	%r0 %f0 552
	sw.s	%r0 %f0 648
	lw.s	%r0 %f0 556
	sw.s	%r0 %f0 652
	lw.s	%r0 %f0 560
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r10
setup_startp_constants_loop.7 :
	ble	%r0 %r10 branching_b.847
tail_b.1365 :
	j	postloop_b.32
branching_b.847 :
	slli	%r10 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r9 0
	lw	%r9 %r12 40
	lw	%r9 %r11 4
	lw.s	%r0 %f5 552
	lw	%r9 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f5 %f0
	mov	%r12 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 556
	lw	%r9 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	sub.s	%f5 %f0 %f0
	addi	%r12 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	sub.s	%f5 %f0 %f0
	addi	%r12 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	beq	%r11 %r1 tail_b.1357
branching_b.848 :
	bl	%r1 %r11 branching_b.849
tail_b.1363 :
	j	tail_b.1364
branching_b.849 :
	mov	%r12 %r1
	lw.s	%r1 %f7 0
	addi	%r12 %r1 4
	lw.s	%r1 %f5 0
	addi	%r12 %r1 8
	lw.s	%r1 %f9 0
	mul.s	%f7 %f7 %f8
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	mul.s	%f5 %f5 %f8
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f10 0
	mul.s	%f10 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f9 %f9 %f8
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f10 0
	mul.s	%f10 %f8 %f8
	add.s	%f8 %f0 %f8
	lw	%r9 %r1 12
	beq	%r1 %r0 tail_b.1358
tail_b.1359 :
	mul.s	%f9 %f5 %f10
	lw	%r9 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f10 %f0
	add.s	%f0 %f8 %f8
	mul.s	%f7 %f9 %f0
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f8
	mul.s	%f5 %f7 %f0
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f5
	j	branching_b.850
tail_b.1358 :
	mov.s	%f8 %f5
	j	branching_b.850
tail_b.1357 :
	lw	%r9 %r9 16
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	addi	%r12 %r1 4
	lw.s	%r1 %f5 0
	addi	%r12 %r1 8
	lw.s	%r1 %f8 0
	mov	%r9 %r1
	lw.s	%r1 %f7 0
	mul.s	%f0 %f7 %f0
	addi	%r9 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f5 %f7 %f5
	add.s	%f5 %f0 %f0
	addi	%r9 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	addi	%r12 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.1364
branching_b.850 :
	addi	%r0 %r1 3
	beq	%r11 %r1 tail_b.1360
tail_b.1361 :
	j	tail_b.1362
tail_b.1360 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f5 %f5
tail_b.1362 :
	addi	%r12 %r1 12
	sw.s	%r1 %f5 0
tail_b.1364 :
	addi	%r10 %r10 -1
	j	setup_startp_constants_loop.7
postloop_b.32 :
preloop_b.34 :
	lw	%r0 %r1 1736
	addi	%r1 %r11 -1
trace_reflections_loop.1 :
	ble	%r0 %r11 branching_b.852
tail_b.1383 :
	j	postloop_b.33
branching_b.852 :
	slli	%r11 %r1 2
	addi	%r1 %r1 1016
	lw	%r1 %r9 0
	lw	%r9 %r12 4
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r1 536
	sw	%r26 %r11 -44
	sw	%r26 %r9 -48
	sw	%r26 %r12 -52
	sw	%r26 %r2 -56
	sw	%r26 %r3 -60
	sw	%r26 %r5 -64
	sw	%r26 %r6 -68
	sw.s	%r26 %f2 -72
	sw.s	%r26 %f1 -76
	sw	%r26 %r4 -80
	sw.s	%r26 %f4 -84
	sw	%r26 %r7 -88
	sw	%r26 %r8 -92
	sw.s	%r26 %f3 -96
	sw.s	%r26 %f6 -100
	mov	%r12 %r3
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -104
	addi	%r26 %r26 -108
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 108
	lw	%r26 %r28 -104
	lw.s	%r0 %f5 548
	lw	%r26 %r11 -44
	lw	%r26 %r9 -48
	lw	%r26 %r12 -52
	lw	%r26 %r2 -56
	lw	%r26 %r3 -60
	lw	%r26 %r5 -64
	lw	%r26 %r6 -68
	lw.s	%r26 %f2 -72
	lw.s	%r26 %f1 -76
	lw	%r26 %r4 -80
	lw.s	%r26 %f4 -84
	lw	%r26 %r7 -88
	lw	%r26 %r8 -92
	lw.s	%r26 %f3 -96
	lw.s	%r26 %f6 -100
	fbge	%f4 %f5 tail_b.1367
tail_b.1366 :
	addi	%r0 %r1 1
	j	branching_b.853
tail_b.1367 :
	addi	%r0 %r1 0
branching_b.853 :
	beq	%r1 %r0 tail_b.1368
branching_b.854 :
	ilw.s	%r0 %f0 l.70
	fbge	%f5 %f0 tail_b.1370
tail_b.1369 :
	addi	%r0 %r1 1
	j	branching_b.855
tail_b.1370 :
	addi	%r0 %r1 0
	j	branching_b.855
tail_b.1368 :
	addi	%r0 %r1 0
branching_b.855 :
	beq	%r1 %r0 tail_b.1371
branching_b.856 :
	lw	%r0 %r1 564
	mul	%r1 %r5 %r10
	lw	%r0 %r1 544
	add	%r10 %r1 %r10
	lw	%r9 %r1 0
	beq	%r10 %r1 branching_b.857
tail_b.1381 :
	j	tail_b.1382
branching_b.857 :
	lw	%r0 %r1 536
	sw	%r26 %r11 -104
	sw	%r26 %r9 -108
	sw	%r26 %r12 -112
	sw	%r26 %r2 -116
	sw	%r26 %r3 -120
	sw	%r26 %r5 -124
	sw	%r26 %r6 -128
	sw.s	%r26 %f2 -132
	sw.s	%r26 %f1 -136
	sw	%r26 %r4 -140
	sw.s	%r26 %f4 -144
	sw	%r26 %r7 -148
	sw	%r26 %r8 -152
	sw.s	%r26 %f3 -156
	sw.s	%r26 %f6 -160
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -164
	addi	%r26 %r26 -168
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 168
	lw	%r26 %r28 -164
	lw	%r26 %r11 -104
	lw	%r26 %r9 -108
	lw	%r26 %r12 -112
	lw	%r26 %r2 -116
	lw	%r26 %r3 -120
	lw	%r26 %r5 -124
	lw	%r26 %r6 -128
	lw.s	%r26 %f2 -132
	lw.s	%r26 %f1 -136
	lw	%r26 %r4 -140
	lw.s	%r26 %f4 -144
	lw	%r26 %r7 -148
	lw	%r26 %r8 -152
	lw.s	%r26 %f3 -156
	lw.s	%r26 %f6 -160
	beq	%r1 %r0 branching_b.858
tail_b.1380 :
	j	tail_b.1382
branching_b.858 :
	lw	%r12 %r1 0
	lw.s	%r0 %f0 568
	mov	%r1 %r10
	lw.s	%r10 %f5 0
	mul.s	%f5 %f0 %f0
	lw.s	%r0 %f5 572
	addi	%r1 %r10 4
	lw.s	%r10 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f7
	lw.s	%r0 %f0 576
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f7
	lw.s	%r9 %f0 8
	mul.s	%f3 %f0 %f5
	mul.s	%f7 %f5 %f8
	lw	%r12 %r9 0
	mov	%r2 %r1
	lw.s	%r1 %f5 0
	mov	%r9 %r1
	lw.s	%r1 %f7 0
	mul.s	%f7 %f5 %f5
	addi	%r2 %r1 4
	lw.s	%r1 %f7 0
	addi	%r9 %r1 4
	lw.s	%r1 %f9 0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f5 %f7
	addi	%r2 %r1 8
	lw.s	%r1 %f5 0
	addi	%r9 %r1 8
	lw.s	%r1 %f9 0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f7 %f5
	mul.s	%f5 %f0 %f9
	ilw.s	%r0 %f7 l.51
	fbge	%f7 %f8 tail_b.1373
tail_b.1372 :
	addi	%r0 %r1 1
	j	branching_b.859
tail_b.1373 :
	addi	%r0 %r1 0
	j	branching_b.859
tail_b.1371 :
	j	tail_b.1382
branching_b.859 :
	beq	%r1 %r0 tail_b.1374
tail_b.1375 :
	lw.s	%r0 %f0 604
	lw.s	%r0 %f5 580
	mul.s	%f5 %f8 %f5
	add.s	%f5 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f5 608
	lw.s	%r0 %f0 584
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f5 612
	lw.s	%r0 %f0 588
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 612
	j	branching_b.860
tail_b.1374 :
branching_b.860 :
	fbge	%f7 %f9 tail_b.1377
tail_b.1376 :
	addi	%r0 %r1 1
	j	branching_b.861
tail_b.1377 :
	addi	%r0 %r1 0
branching_b.861 :
	beq	%r1 %r0 tail_b.1378
tail_b.1379 :
	mul.s	%f9 %f9 %f0
	mul.s	%f0 %f0 %f0
	mul.s	%f6 %f0 %f5
	lw.s	%r0 %f0 604
	add.s	%f5 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	add.s	%f5 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	add.s	%f5 %f0 %f0
	sw.s	%r0 %f0 612
	j	tail_b.1382
tail_b.1378 :
tail_b.1382 :
	addi	%r11 %r1 -1
	mov	%r1 %r11
	j	trace_reflections_loop.1
postloop_b.33 :
branching_b.862 :
	ilw.s	%r0 %f0 l.92
	fbge	%f0 %f2 tail_b.1385
tail_b.1384 :
	addi	%r0 %r1 1
	j	branching_b.863
tail_b.1385 :
	addi	%r0 %r1 0
branching_b.863 :
	beq	%r1 %r0 tail_b.1386
branching_b.864 :
	bl	%r6 %r5 tail_b.1387
tail_b.1388 :
	j	branching_b.865
tail_b.1387 :
	addi	%r6 %r1 1
	addi	%r0 %r9 -1
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	sw	%r1 %r9 0
	j	branching_b.865
tail_b.1386 :
	j	postloop_b.34
branching_b.865 :
	addi	%r0 %r1 2
	beq	%r8 %r1 tail_b.1389
tail_b.1390 :
	j	postloop_b.34
tail_b.1389 :
	ilw.s	%r0 %f3 l.56
	lw	%r7 %r1 28
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f0
	mul.s	%f0 %f2 %f2
	addi	%r6 %r6 1
	lw.s	%r0 %f0 548
	add.s	%f0 %f1 %f1
	j	trace_ray_loop.0
branching_b.839 :
	beq	%r1 %r0 tail_b.1345
branching_b.840 :
	addi	%r0 %r1 1
	sw	%r26 %r2 -164
	sw	%r26 %r3 -168
	sw	%r26 %r5 -172
	sw	%r26 %r6 -176
	sw.s	%r26 %f2 -180
	sw.s	%r26 %f1 -184
	sw	%r26 %r4 -188
	sw.s	%r26 %f4 -192
	sw	%r26 %r7 -196
	sw	%r26 %r8 -200
	sw.s	%r26 %f3 -204
	sw	%r26 %r10 -208
	sw.s	%r26 %f6 -212
	sw	%r26 %r12 -216
	sw	%r26 %r11 -220
	sw	%r26 %r13 -224
	mov	%r14 %r2
	sw	%r26 %r28 -228
	addi	%r26 %r26 -232
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 232
	lw	%r26 %r28 -228
	lw	%r26 %r2 -164
	lw	%r26 %r3 -168
	lw	%r26 %r5 -172
	lw	%r26 %r6 -176
	lw.s	%r26 %f2 -180
	lw.s	%r26 %f1 -184
	lw	%r26 %r4 -188
	lw.s	%r26 %f4 -192
	lw	%r26 %r7 -196
	lw	%r26 %r8 -200
	lw.s	%r26 %f3 -204
	lw	%r26 %r10 -208
	lw.s	%r26 %f6 -212
	lw	%r26 %r12 -216
	lw	%r26 %r11 -220
	lw	%r26 %r13 -224
	beq	%r1 %r0 tail_b.1346
tail_b.1347 :
	addi	%r0 %r1 1
	j	postloop_b.31
tail_b.1346 :
	addi	%r13 %r13 1
	j	shadow_check_one_or_matrix_loop.3
tail_b.1345 :
	addi	%r13 %r13 1
	j	shadow_check_one_or_matrix_loop.3
branching_b.799 :
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	fbge	%f0 %f5 tail_b.1279
tail_b.1278 :
	addi	%r0 %r1 1
	j	branching_b.800
tail_b.1279 :
	addi	%r0 %r1 0
branching_b.800 :
	beq	%r1 %r0 tail_b.1280
branching_b.801 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f7 %f0
	add.s	%f9 %f0 %f0
	fbge	%f0 %f11 tail_b.1282
tail_b.1281 :
	neg.s	%f0 %f5
	j	branching_b.802
tail_b.1282 :
	mov.s	%f0 %f5
	j	branching_b.802
tail_b.1280 :
	addi	%r0 %r1 0
branching_b.806 :
	beq	%r1 %r0 branching_b.807
tail_b.1321 :
	sw.s	%r0 %f7 540
	addi	%r0 %r1 1
	j	branching_b.835
branching_b.807 :
	addi	%r15 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f8 %f0 %f5
	addi	%r15 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f5
	lw.s	%r0 %f0 736
	mul.s	%f0 %f5 %f0
	add.s	%f10 %f0 %f0
	fbge	%f0 %f11 tail_b.1291
tail_b.1290 :
	neg.s	%f0 %f7
	j	branching_b.808
tail_b.1291 :
	mov.s	%f0 %f7
branching_b.808 :
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f7 %f0 tail_b.1293
tail_b.1292 :
	addi	%r0 %r1 1
	j	branching_b.809
tail_b.1293 :
	addi	%r0 %r1 0
branching_b.809 :
	beq	%r1 %r0 tail_b.1294
branching_b.810 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f5 %f0
	add.s	%f9 %f0 %f0
	fbge	%f0 %f11 tail_b.1296
tail_b.1295 :
	neg.s	%f0 %f0
	j	branching_b.811
tail_b.1296 :
	j	branching_b.811
tail_b.1294 :
	addi	%r0 %r1 0
branching_b.815 :
	beq	%r1 %r0 branching_b.816
tail_b.1320 :
	sw.s	%r0 %f5 540
	addi	%r0 %r1 2
	j	branching_b.835
branching_b.816 :
	addi	%r15 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f9 %f0 %f0
	addi	%r15 %r1 20
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f7
	lw.s	%r0 %f0 736
	mul.s	%f0 %f7 %f0
	add.s	%f10 %f0 %f0
	fbge	%f0 %f11 tail_b.1305
tail_b.1304 :
	neg.s	%f0 %f5
	j	branching_b.817
tail_b.1305 :
	mov.s	%f0 %f5
branching_b.817 :
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f5 %f0 tail_b.1307
tail_b.1306 :
	addi	%r0 %r1 1
	j	branching_b.818
tail_b.1307 :
	addi	%r0 %r1 0
branching_b.818 :
	beq	%r1 %r0 tail_b.1308
branching_b.819 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f7 %f0
	add.s	%f8 %f0 %f5
	fbge	%f5 %f11 tail_b.1310
tail_b.1309 :
	neg.s	%f5 %f5
	j	branching_b.820
tail_b.1310 :
	j	branching_b.820
tail_b.1308 :
	addi	%r0 %r1 0
branching_b.824 :
	beq	%r1 %r0 tail_b.1318
tail_b.1319 :
	sw.s	%r0 %f7 540
	addi	%r0 %r1 3
	j	branching_b.835
tail_b.1318 :
	addi	%r0 %r1 0
	j	branching_b.835
branching_b.820 :
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f5 %f0 tail_b.1312
tail_b.1311 :
	addi	%r0 %r1 1
	j	branching_b.821
tail_b.1312 :
	addi	%r0 %r1 0
branching_b.821 :
	beq	%r1 %r0 tail_b.1313
branching_b.822 :
	addi	%r15 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f11 tail_b.1315
tail_b.1314 :
	addi	%r0 %r1 1
	j	branching_b.823
tail_b.1315 :
	addi	%r0 %r1 0
	j	branching_b.823
tail_b.1313 :
	addi	%r0 %r1 0
	j	branching_b.824
branching_b.823 :
	beq	%r1 %r0 tail_b.1316
tail_b.1317 :
	addi	%r0 %r1 0
	j	branching_b.824
tail_b.1316 :
	addi	%r0 %r1 1
	j	branching_b.824
branching_b.811 :
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	fbge	%f0 %f7 tail_b.1298
tail_b.1297 :
	addi	%r0 %r1 1
	j	branching_b.812
tail_b.1298 :
	addi	%r0 %r1 0
branching_b.812 :
	beq	%r1 %r0 tail_b.1299
branching_b.813 :
	addi	%r15 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f11 tail_b.1301
tail_b.1300 :
	addi	%r0 %r1 1
	j	branching_b.814
tail_b.1301 :
	addi	%r0 %r1 0
	j	branching_b.814
tail_b.1299 :
	addi	%r0 %r1 0
	j	branching_b.815
branching_b.814 :
	beq	%r1 %r0 tail_b.1302
tail_b.1303 :
	addi	%r0 %r1 0
	j	branching_b.815
tail_b.1302 :
	addi	%r0 %r1 1
	j	branching_b.815
branching_b.835 :
	bne	%r1 %r0 branching_b.836
tail_b.1344 :
	addi	%r0 %r1 0
	j	branching_b.839
branching_b.836 :
	lw.s	%r0 %f0 540
	fbge	%f0 %f4 tail_b.1340
tail_b.1339 :
	addi	%r0 %r1 1
	j	branching_b.837
tail_b.1340 :
	addi	%r0 %r1 0
branching_b.837 :
	beq	%r1 %r0 tail_b.1341
branching_b.838 :
	addi	%r0 %r1 1
	sw	%r26 %r2 -228
	sw	%r26 %r3 -232
	sw	%r26 %r5 -236
	sw	%r26 %r6 -240
	sw.s	%r26 %f2 -244
	sw.s	%r26 %f1 -248
	sw	%r26 %r4 -252
	sw.s	%r26 %f4 -256
	sw	%r26 %r7 -260
	sw	%r26 %r8 -264
	sw.s	%r26 %f3 -268
	sw	%r26 %r10 -272
	sw.s	%r26 %f6 -276
	sw	%r26 %r12 -280
	sw	%r26 %r11 -284
	sw	%r26 %r13 -288
	sw	%r26 %r14 -292
	mov	%r14 %r2
	sw	%r26 %r28 -296
	addi	%r26 %r26 -300
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 300
	lw	%r26 %r28 -296
	lw	%r26 %r2 -228
	lw	%r26 %r3 -232
	lw	%r26 %r5 -236
	lw	%r26 %r6 -240
	lw.s	%r26 %f2 -244
	lw.s	%r26 %f1 -248
	lw	%r26 %r4 -252
	lw.s	%r26 %f4 -256
	lw	%r26 %r7 -260
	lw	%r26 %r8 -264
	lw.s	%r26 %f3 -268
	lw	%r26 %r10 -272
	lw.s	%r26 %f6 -276
	lw	%r26 %r12 -280
	lw	%r26 %r11 -284
	lw	%r26 %r13 -288
	lw	%r26 %r14 -292
	beq	%r1 %r0 tail_b.1342
tail_b.1343 :
	addi	%r0 %r1 1
	j	branching_b.839
tail_b.1342 :
	addi	%r0 %r1 0
	j	branching_b.839
tail_b.1341 :
	addi	%r0 %r1 0
	j	branching_b.839
branching_b.802 :
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f5 %f0 tail_b.1284
tail_b.1283 :
	addi	%r0 %r1 1
	j	branching_b.803
tail_b.1284 :
	addi	%r0 %r1 0
branching_b.803 :
	beq	%r1 %r0 tail_b.1285
branching_b.804 :
	addi	%r15 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f11 tail_b.1287
tail_b.1286 :
	addi	%r0 %r1 1
	j	branching_b.805
tail_b.1287 :
	addi	%r0 %r1 0
	j	branching_b.805
tail_b.1285 :
	addi	%r0 %r1 0
	j	branching_b.806
branching_b.805 :
	beq	%r1 %r0 tail_b.1288
tail_b.1289 :
	addi	%r0 %r1 0
	j	branching_b.806
tail_b.1288 :
	addi	%r0 %r1 1
	j	branching_b.806
branching_b.827 :
	beq	%r1 %r0 tail_b.1324
tail_b.1325 :
	addi	%r15 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f10 %f0 %f5
	addi	%r15 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f5
	addi	%r15 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.835
tail_b.1324 :
	addi	%r0 %r1 0
	j	branching_b.835
branching_b.829 :
	beq	%r1 %r0 branching_b.830
tail_b.1338 :
	addi	%r0 %r1 0
	j	branching_b.835
branching_b.830 :
	addi	%r15 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f10 %f0 %f5
	addi	%r15 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f5
	addi	%r15 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f13
	mul.s	%f10 %f10 %f5
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f7
	mul.s	%f8 %f8 %f0
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f9 %f9 %f7
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f7 %f5
	add.s	%f5 %f0 %f0
	lw	%r9 %r1 12
	beq	%r1 %r0 tail_b.1328
tail_b.1329 :
	mul.s	%f9 %f8 %f5
	lw	%r9 %r1 36
	lw.s	%r1 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f10 %f9 %f5
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f5
	mul.s	%f8 %f10 %f0
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f5
	j	branching_b.831
tail_b.1328 :
	mov.s	%f0 %f5
branching_b.831 :
	lw	%r9 %r16 4
	addi	%r0 %r1 3
	beq	%r16 %r1 tail_b.1330
tail_b.1331 :
	j	branching_b.832
tail_b.1330 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f5 %f5
branching_b.832 :
	mul.s	%f13 %f13 %f0
	mul.s	%f5 %f11 %f5
	sub.s	%f5 %f0 %f0
	fbge	%f12 %f0 tail_b.1333
tail_b.1332 :
	addi	%r0 %r1 1
	j	branching_b.833
tail_b.1333 :
	addi	%r0 %r1 0
branching_b.833 :
	beq	%r1 %r0 tail_b.1334
branching_b.834 :
	lw	%r9 %r1 24
	beq	%r1 %r0 tail_b.1335
tail_b.1336 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f13 %f5
	addi	%r15 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1337
tail_b.1335 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f13 %f0
	addi	%r15 %r1 16
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1337
tail_b.1334 :
	addi	%r0 %r1 0
	j	branching_b.835
tail_b.1337 :
	addi	%r0 %r1 1
	j	branching_b.835
branching_b.743 :
	lw	%r7 %r12 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f5 572
	mul.s	%f5 %f5 %f5
	add.s	%f5 %f0 %f5
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f5 %f0
	sqrt.s	%f0 %f5
	ilw.s	%r0 %f0 l.51
	fbne	%f5 %f0 tail_b.1200
tail_b.1199 :
	addi	%r0 %r1 1
	j	branching_b.744
tail_b.1200 :
	addi	%r0 %r1 0
branching_b.744 :
	beq	%r1 %r0 branching_b.745
tail_b.1203 :
	ilw.s	%r0 %f5 l.56
	j	tail_b.1204
branching_b.745 :
	beq	%r12 %r0 tail_b.1201
tail_b.1202 :
	ilw.s	%r0 %f0 l.58
	div.s	%f5 %f0 %f5
	j	tail_b.1204
tail_b.1201 :
	ilw.s	%r0 %f0 l.56
	div.s	%f5 %f0 %f5
tail_b.1204 :
	lw.s	%r0 %f0 568
	mul.s	%f5 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f5 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f5 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.746
tail_b.1177 :
	addi	%r11 %r11 1
	j	trace_or_matrix_loop.1
branching_b.676 :
	beq	%r1 %r0 branching_b.677
tail_b.1104 :
	addi	%r0 %r1 0
	j	branching_b.687
branching_b.677 :
	lw	%r13 %r7 16
	lw	%r13 %r1 24
	mov	%r2 %r14
	lw.s	%r14 %f0 0
	fbge	%f0 %f4 tail_b.1087
tail_b.1086 :
	addi	%r0 %r14 1
	j	branching_b.678
tail_b.1087 :
	addi	%r0 %r14 0
branching_b.678 :
	beq	%r1 %r0 tail_b.1088
branching_b.679 :
	beq	%r14 %r0 tail_b.1089
tail_b.1090 :
	addi	%r0 %r14 0
	j	branching_b.680
tail_b.1089 :
	addi	%r0 %r14 1
	j	branching_b.680
tail_b.1088 :
branching_b.680 :
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	beq	%r14 %r0 tail_b.1091
tail_b.1092 :
	j	branching_b.681
tail_b.1091 :
	neg.s	%f0 %f0
branching_b.681 :
	sub.s	%f6 %f0 %f0
	mov	%r2 %r1
	lw.s	%r1 %f3 0
	div.s	%f3 %f0 %f3
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f4 tail_b.1094
tail_b.1093 :
	neg.s	%f0 %f0
	j	branching_b.682
tail_b.1094 :
branching_b.682 :
	addi	%r7 %r1 4
	lw.s	%r1 %f5 0
	fbge	%f0 %f5 tail_b.1096
tail_b.1095 :
	addi	%r0 %r1 1
	j	branching_b.683
tail_b.1096 :
	addi	%r0 %r1 0
branching_b.683 :
	beq	%r1 %r0 tail_b.1097
branching_b.684 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f8 %f0 %f5
	fbge	%f5 %f4 tail_b.1099
tail_b.1098 :
	neg.s	%f5 %f5
	j	branching_b.685
tail_b.1099 :
	j	branching_b.685
tail_b.1097 :
	addi	%r0 %r1 0
	j	branching_b.687
branching_b.685 :
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f5 %f0 tail_b.1101
tail_b.1100 :
	addi	%r0 %r1 1
	j	branching_b.686
tail_b.1101 :
	addi	%r0 %r1 0
branching_b.686 :
	beq	%r1 %r0 tail_b.1102
tail_b.1103 :
	sw.s	%r0 %f3 540
	addi	%r0 %r1 1
	j	branching_b.687
tail_b.1102 :
	addi	%r0 %r1 0
branching_b.687 :
	beq	%r1 %r0 branching_b.688
tail_b.1150 :
	addi	%r0 %r1 1
	j	branching_b.726
branching_b.688 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f4 tail_b.1106
tail_b.1105 :
	addi	%r0 %r1 1
	j	branching_b.689
tail_b.1106 :
	addi	%r0 %r1 0
branching_b.689 :
	beq	%r1 %r0 branching_b.690
tail_b.1125 :
	addi	%r0 %r1 0
	j	branching_b.700
branching_b.690 :
	lw	%r13 %r14 16
	lw	%r13 %r7 24
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f0 %f4 tail_b.1108
tail_b.1107 :
	addi	%r0 %r1 1
	j	branching_b.691
tail_b.1108 :
	addi	%r0 %r1 0
branching_b.691 :
	beq	%r7 %r0 tail_b.1109
branching_b.692 :
	beq	%r1 %r0 tail_b.1110
tail_b.1111 :
	addi	%r0 %r1 0
	j	branching_b.693
tail_b.1110 :
	addi	%r0 %r1 1
	j	branching_b.693
tail_b.1109 :
branching_b.693 :
	addi	%r14 %r7 4
	lw.s	%r7 %f0 0
	beq	%r1 %r0 tail_b.1112
tail_b.1113 :
	j	branching_b.694
tail_b.1112 :
	neg.s	%f0 %f0
branching_b.694 :
	sub.s	%f7 %f0 %f3
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f0 %f3 %f0
	addi	%r2 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f3
	add.s	%f8 %f3 %f3
	fbge	%f3 %f4 tail_b.1115
tail_b.1114 :
	neg.s	%f3 %f5
	j	branching_b.695
tail_b.1115 :
	mov.s	%f3 %f5
branching_b.695 :
	addi	%r14 %r1 8
	lw.s	%r1 %f3 0
	fbge	%f5 %f3 tail_b.1117
tail_b.1116 :
	addi	%r0 %r1 1
	j	branching_b.696
tail_b.1117 :
	addi	%r0 %r1 0
branching_b.696 :
	beq	%r1 %r0 tail_b.1118
branching_b.697 :
	mov	%r2 %r1
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f3
	add.s	%f6 %f3 %f3
	fbge	%f3 %f4 tail_b.1120
tail_b.1119 :
	neg.s	%f3 %f3
	j	branching_b.698
tail_b.1120 :
	j	branching_b.698
tail_b.1118 :
	addi	%r0 %r1 0
	j	branching_b.700
branching_b.698 :
	mov	%r14 %r1
	lw.s	%r1 %f5 0
	fbge	%f3 %f5 tail_b.1122
tail_b.1121 :
	addi	%r0 %r1 1
	j	branching_b.699
tail_b.1122 :
	addi	%r0 %r1 0
branching_b.699 :
	beq	%r1 %r0 tail_b.1123
tail_b.1124 :
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.700
tail_b.1123 :
	addi	%r0 %r1 0
branching_b.700 :
	beq	%r1 %r0 branching_b.701
tail_b.1149 :
	addi	%r0 %r1 2
	j	branching_b.726
branching_b.701 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f4 tail_b.1127
tail_b.1126 :
	addi	%r0 %r1 1
	j	branching_b.702
tail_b.1127 :
	addi	%r0 %r1 0
branching_b.702 :
	beq	%r1 %r0 branching_b.703
tail_b.1146 :
	addi	%r0 %r1 0
	j	branching_b.713
branching_b.703 :
	lw	%r13 %r7 16
	lw	%r13 %r1 24
	addi	%r2 %r13 8
	lw.s	%r13 %f0 0
	fbge	%f0 %f4 tail_b.1129
tail_b.1128 :
	addi	%r0 %r13 1
	j	branching_b.704
tail_b.1129 :
	addi	%r0 %r13 0
branching_b.704 :
	beq	%r1 %r0 tail_b.1130
branching_b.705 :
	beq	%r13 %r0 tail_b.1131
tail_b.1132 :
	addi	%r0 %r13 0
	j	branching_b.706
tail_b.1131 :
	addi	%r0 %r13 1
	j	branching_b.706
tail_b.1130 :
branching_b.706 :
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	beq	%r13 %r0 tail_b.1133
tail_b.1134 :
	j	branching_b.707
tail_b.1133 :
	neg.s	%f0 %f0
branching_b.707 :
	sub.s	%f8 %f0 %f3
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f0 %f3 %f5
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f6 %f0 %f0
	fbge	%f0 %f4 tail_b.1136
tail_b.1135 :
	neg.s	%f0 %f0
	j	branching_b.708
tail_b.1136 :
branching_b.708 :
	mov	%r7 %r1
	lw.s	%r1 %f3 0
	fbge	%f0 %f3 tail_b.1138
tail_b.1137 :
	addi	%r0 %r1 1
	j	branching_b.709
tail_b.1138 :
	addi	%r0 %r1 0
branching_b.709 :
	beq	%r1 %r0 tail_b.1139
branching_b.710 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f4 tail_b.1141
tail_b.1140 :
	neg.s	%f0 %f0
	j	branching_b.711
tail_b.1141 :
	j	branching_b.711
tail_b.1139 :
	addi	%r0 %r1 0
	j	branching_b.713
branching_b.711 :
	addi	%r7 %r1 4
	lw.s	%r1 %f3 0
	fbge	%f0 %f3 tail_b.1143
tail_b.1142 :
	addi	%r0 %r1 1
	j	branching_b.712
tail_b.1143 :
	addi	%r0 %r1 0
branching_b.712 :
	beq	%r1 %r0 tail_b.1144
tail_b.1145 :
	sw.s	%r0 %f5 540
	addi	%r0 %r1 1
	j	branching_b.713
tail_b.1144 :
	addi	%r0 %r1 0
branching_b.713 :
	beq	%r1 %r0 tail_b.1147
tail_b.1148 :
	addi	%r0 %r1 3
	j	branching_b.726
tail_b.1147 :
	addi	%r0 %r1 0
branching_b.726 :
	bne	%r1 %r0 branching_b.727
tail_b.1176 :
	j	tail_b.1177
branching_b.727 :
	lw.s	%r0 %f3 540
	lw.s	%r0 %f0 548
	fbge	%f3 %f0 tail_b.1173
tail_b.1172 :
	addi	%r0 %r1 1
	j	branching_b.728
tail_b.1173 :
	addi	%r0 %r1 0
branching_b.728 :
	beq	%r1 %r0 tail_b.1174
tail_b.1175 :
	addi	%r0 %r1 1
	sw	%r26 %r2 -296
	sw	%r26 %r3 -300
	sw	%r26 %r5 -304
	sw	%r26 %r6 -308
	sw.s	%r26 %f2 -312
	sw.s	%r26 %f1 -316
	sw	%r26 %r4 -320
	sw	%r26 %r9 -324
	sw	%r26 %r8 -328
	sw	%r26 %r12 -332
	sw	%r26 %r11 -336
	mov	%r2 %r3
	mov	%r10 %r2
	sw	%r26 %r28 -340
	addi	%r26 %r26 -344
	jal	solve_one_or_network.0
	addi	%r26 %r26 344
	lw	%r26 %r28 -340
	lw	%r26 %r2 -296
	lw	%r26 %r3 -300
	lw	%r26 %r5 -304
	lw	%r26 %r6 -308
	lw.s	%r26 %f2 -312
	lw.s	%r26 %f1 -316
	lw	%r26 %r4 -320
	lw	%r26 %r9 -324
	lw	%r26 %r8 -328
	lw	%r26 %r12 -332
	lw	%r26 %r11 -336
	j	tail_b.1177
tail_b.1174 :
	j	tail_b.1177
branching_b.716 :
	beq	%r1 %r0 tail_b.1153
tail_b.1154 :
	mov	%r7 %r1
	lw.s	%r1 %f0 0
	mul.s	%f6 %f0 %f4
	addi	%r7 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r7 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f3 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.726
tail_b.1153 :
	addi	%r0 %r1 0
	j	branching_b.726
branching_b.718 :
	ilw.s	%r0 %f9 l.51
	fbne	%f5 %f9 tail_b.1158
tail_b.1157 :
	addi	%r0 %r1 1
	j	branching_b.719
tail_b.1158 :
	addi	%r0 %r1 0
branching_b.719 :
	beq	%r1 %r0 branching_b.720
tail_b.1171 :
	addi	%r0 %r1 0
	j	branching_b.726
branching_b.720 :
	mov	%r2 %r1
	lw.s	%r1 %f11 0
	addi	%r2 %r1 4
	lw.s	%r1 %f12 0
	addi	%r2 %r1 8
	lw.s	%r1 %f13 0
	mul.s	%f6 %f11 %f3
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	mul.s	%f7 %f12 %f4
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f8 %f13 %f4
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f10
	lw	%r13 %r1 12
	beq	%r1 %r0 tail_b.1159
tail_b.1160 :
	mul.s	%f7 %f13 %f0
	mul.s	%f8 %f12 %f3
	add.s	%f3 %f0 %f0
	lw	%r13 %r1 36
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	mul.s	%f8 %f11 %f4
	mul.s	%f6 %f13 %f3
	add.s	%f3 %f4 %f3
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f0 %f4
	mul.s	%f7 %f11 %f0
	mul.s	%f6 %f12 %f3
	add.s	%f3 %f0 %f0
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f4 %f3
	ilw.s	%r0 %f0 l.69
	div.s	%f0 %f3 %f0
	add.s	%f0 %f10 %f10
	j	branching_b.721
tail_b.1159 :
branching_b.721 :
	mul.s	%f6 %f6 %f0
	lw	%r13 %r1 16
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	mul.s	%f7 %f7 %f4
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f3
	mul.s	%f8 %f8 %f4
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f3 %f3
	lw	%r13 %r1 12
	beq	%r1 %r0 tail_b.1161
tail_b.1162 :
	mul.s	%f8 %f7 %f4
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f6 %f8 %f3
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f0 %f4
	mul.s	%f7 %f6 %f0
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f4 %f3
	j	branching_b.722
tail_b.1161 :
branching_b.722 :
	lw	%r13 %r7 4
	addi	%r0 %r1 3
	beq	%r7 %r1 tail_b.1163
tail_b.1164 :
	mov.s	%f3 %f0
	j	branching_b.723
tail_b.1163 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f3 %f0
branching_b.723 :
	mul.s	%f10 %f10 %f3
	mul.s	%f0 %f5 %f0
	sub.s	%f0 %f3 %f0
	fbge	%f9 %f0 tail_b.1166
tail_b.1165 :
	addi	%r0 %r1 1
	j	branching_b.724
tail_b.1166 :
	addi	%r0 %r1 0
branching_b.724 :
	beq	%r1 %r0 tail_b.1167
branching_b.725 :
	sqrt.s	%f0 %f0
	lw	%r13 %r1 24
	beq	%r1 %r0 tail_b.1168
tail_b.1169 :
	j	tail_b.1170
tail_b.1168 :
	neg.s	%f0 %f0
	j	tail_b.1170
tail_b.1167 :
	addi	%r0 %r1 0
	j	branching_b.726
tail_b.1170 :
	sub.s	%f10 %f0 %f0
	div.s	%f5 %f0 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.726
postloop_b.34 :
return_point.16 :
	retl
iter_trace_diffuse_rays.0 :
	mov	%r2 %r31
	mov	%r4 %r2
	mov	%r31 %r4
	mov	%r1 %r31
	mov	%r3 %r1
	mov	%r31 %r3
preloop_b.35 :
	mov	%r2 %r6
	addi	%r0 %r5 0
iter_trace_diffuse_rays_loop.0 :
	ble	%r0 %r6 branching_b.867
tail_b.1865 :
	j	postloop_b.43
branching_b.867 :
	slli	%r6 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mov	%r4 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	addi	%r2 %r1 4
	lw.s	%r1 %f2 0
	addi	%r4 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f2
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	addi	%r4 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f3 l.51
	fbge	%f0 %f3 tail_b.1393
tail_b.1392 :
	addi	%r0 %r1 1
	j	branching_b.868
tail_b.1393 :
	addi	%r0 %r1 0
branching_b.868 :
	beq	%r1 %r0 preloop_b.36
preloop_b.40 :
	addi	%r6 %r1 1
	slli	%r1 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r7 0
	ilw.s	%r0 %f1 l.93
	div.s	%f1 %f0 %f2
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r9 536
	mov	%r5 %r8
	addi	%r0 %r10 -1
trace_or_matrix_fast_loop.1 :
	slli	%r8 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r11 0
	mov	%r11 %r1
	lw	%r1 %r2 0
	beq	%r2 %r10 tail_b.1629
branching_b.1021 :
	addi	%r0 %r1 99
	beq	%r2 %r1 tail_b.1630
branching_b.1022 :
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r13 0
	lw	%r13 %r14 40
	mov	%r14 %r1
	lw.s	%r1 %f4 0
	addi	%r14 %r1 4
	lw.s	%r1 %f5 0
	addi	%r14 %r1 8
	lw.s	%r1 %f7 0
	lw	%r7 %r1 4
	slli	%r2 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r12 0
	lw	%r13 %r1 4
	addi	%r0 %r2 1
	beq	%r1 %r2 branching_b.1023
branching_b.1050 :
	addi	%r0 %r2 2
	beq	%r1 %r2 branching_b.1051
branching_b.1053 :
	mov	%r12 %r1
	lw.s	%r1 %f1 0
	fbne	%f1 %f3 tail_b.1682
tail_b.1681 :
	addi	%r0 %r1 1
	j	branching_b.1054
tail_b.1682 :
	addi	%r0 %r1 0
	j	branching_b.1054
branching_b.1051 :
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.1678
tail_b.1677 :
	addi	%r0 %r1 1
	j	branching_b.1052
tail_b.1678 :
	addi	%r0 %r1 0
	j	branching_b.1052
branching_b.1023 :
	lw	%r7 %r2 0
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	sub.s	%f4 %f0 %f0
	addi	%r12 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f6
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.1632
tail_b.1631 :
	neg.s	%f0 %f1
	j	branching_b.1024
tail_b.1632 :
	mov.s	%f0 %f1
	j	branching_b.1024
tail_b.1630 :
	addi	%r0 %r1 1
	sw	%r26 %r3 0
	sw	%r26 %r4 -4
	sw	%r26 %r5 -8
	sw	%r26 %r6 -12
	sw.s	%r26 %f3 -16
	sw	%r26 %r7 -20
	sw.s	%r26 %f2 -24
	sw	%r26 %r9 -28
	sw	%r26 %r10 -32
	sw	%r26 %r8 -36
	mov	%r7 %r3
	mov	%r11 %r2
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw	%r26 %r3 0
	lw	%r26 %r4 -4
	lw	%r26 %r5 -8
	lw	%r26 %r6 -12
	lw.s	%r26 %f3 -16
	lw	%r26 %r7 -20
	lw.s	%r26 %f2 -24
	lw	%r26 %r9 -28
	lw	%r26 %r10 -32
	lw	%r26 %r8 -36
	j	tail_b.1695
tail_b.1629 :
	j	postloop_b.39
preloop_b.36 :
	slli	%r6 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r8 0
	ilw.s	%r0 %f1 l.94
	div.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r10 536
	mov	%r5 %r7
	addi	%r0 %r9 -1
trace_or_matrix_fast_loop.2 :
	slli	%r7 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r2 0
	mov	%r2 %r1
	lw	%r1 %r13 0
	beq	%r13 %r9 tail_b.1394
branching_b.870 :
	addi	%r0 %r1 99
	beq	%r13 %r1 tail_b.1395
branching_b.871 :
	slli	%r13 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r11 0
	lw	%r11 %r14 40
	mov	%r14 %r1
	lw.s	%r1 %f2 0
	addi	%r14 %r1 4
	lw.s	%r1 %f5 0
	addi	%r14 %r1 8
	lw.s	%r1 %f7 0
	lw	%r8 %r12 4
	slli	%r13 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r12 0
	lw	%r11 %r1 4
	addi	%r0 %r13 1
	beq	%r1 %r13 branching_b.872
branching_b.899 :
	addi	%r0 %r13 2
	beq	%r1 %r13 branching_b.900
branching_b.902 :
	mov	%r12 %r1
	lw.s	%r1 %f4 0
	fbne	%f4 %f3 tail_b.1447
tail_b.1446 :
	addi	%r0 %r1 1
	j	branching_b.903
tail_b.1447 :
	addi	%r0 %r1 0
	j	branching_b.903
branching_b.900 :
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.1443
tail_b.1442 :
	addi	%r0 %r1 1
	j	branching_b.901
tail_b.1443 :
	addi	%r0 %r1 0
	j	branching_b.901
branching_b.872 :
	lw	%r8 %r13 0
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	sub.s	%f2 %f0 %f4
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f6
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.1397
tail_b.1396 :
	neg.s	%f0 %f4
	j	branching_b.873
tail_b.1397 :
	mov.s	%f0 %f4
	j	branching_b.873
tail_b.1395 :
	addi	%r0 %r1 1
	sw	%r26 %r3 -40
	sw	%r26 %r4 -44
	sw	%r26 %r5 -48
	sw	%r26 %r6 -52
	sw.s	%r26 %f3 -56
	sw	%r26 %r8 -60
	sw.s	%r26 %f1 -64
	sw	%r26 %r10 -68
	sw	%r26 %r9 -72
	sw	%r26 %r7 -76
	mov	%r8 %r3
	sw	%r26 %r28 -80
	addi	%r26 %r26 -84
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 84
	lw	%r26 %r28 -80
	lw	%r26 %r3 -40
	lw	%r26 %r4 -44
	lw	%r26 %r5 -48
	lw	%r26 %r6 -52
	lw.s	%r26 %f3 -56
	lw	%r26 %r8 -60
	lw.s	%r26 %f1 -64
	lw	%r26 %r10 -68
	lw	%r26 %r9 -72
	lw	%r26 %r7 -76
	j	tail_b.1460
tail_b.1394 :
postloop_b.35 :
branching_b.910 :
	lw.s	%r0 %f2 548
	ilw.s	%r0 %f4 l.68
	fbge	%f4 %f2 tail_b.1462
tail_b.1461 :
	addi	%r0 %r1 1
	j	branching_b.911
tail_b.1462 :
	addi	%r0 %r1 0
branching_b.911 :
	beq	%r1 %r0 tail_b.1463
branching_b.912 :
	ilw.s	%r0 %f0 l.70
	fbge	%f2 %f0 tail_b.1465
tail_b.1464 :
	addi	%r0 %r1 1
	j	branching_b.913
tail_b.1465 :
	addi	%r0 %r1 0
	j	branching_b.913
tail_b.1463 :
	addi	%r0 %r1 0
branching_b.913 :
	beq	%r1 %r0 tail_b.1466
branching_b.914 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r7 0
	lw	%r8 %r8 0
	lw	%r7 %r1 4
	addi	%r0 %r2 1
	beq	%r1 %r2 branching_b.915
branching_b.919 :
	addi	%r0 %r8 2
	beq	%r1 %r8 tail_b.1475
branching_b.920 :
	lw.s	%r0 %f2 552
	lw	%r7 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f11
	lw.s	%r0 %f2 556
	lw	%r7 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f5
	lw.s	%r0 %f2 560
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f6
	lw	%r7 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f11 %f7
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f8
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f10
	lw	%r7 %r1 12
	beq	%r1 %r0 tail_b.1476
tail_b.1477 :
	lw	%r7 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f2
	lw	%r7 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f9 l.69
	div.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 568
	lw	%r7 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f11 %f2
	lw	%r7 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	div.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	sw.s	%r0 %f0 572
	lw	%r7 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f11 %f0
	lw	%r7 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f5 %f2
	add.s	%f2 %f0 %f0
	div.s	%f9 %f0 %f0
	add.s	%f0 %f10 %f0
	sw.s	%r0 %f0 576
	j	branching_b.921
tail_b.1476 :
	sw.s	%r0 %f7 568
	sw.s	%r0 %f8 572
	sw.s	%r0 %f10 576
	j	branching_b.921
tail_b.1475 :
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
	j	branching_b.924
branching_b.915 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r9 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r8 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1468
tail_b.1467 :
	addi	%r0 %r1 1
	j	branching_b.916
tail_b.1468 :
	addi	%r0 %r1 0
	j	branching_b.916
tail_b.1466 :
tail_b.1864 :
	addi	%r6 %r6 -2
	j	iter_trace_diffuse_rays_loop.0
branching_b.916 :
	beq	%r1 %r0 branching_b.917
tail_b.1473 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1474
branching_b.917 :
	fbge	%f3 %f0 tail_b.1470
tail_b.1469 :
	addi	%r0 %r1 1
	j	branching_b.918
tail_b.1470 :
	addi	%r0 %r1 0
branching_b.918 :
	beq	%r1 %r0 tail_b.1471
tail_b.1472 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.1474
tail_b.1471 :
	ilw.s	%r0 %f0 l.58
tail_b.1474 :
	neg.s	%f0 %f0
	slli	%r9 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.924 :
	lw	%r7 %r8 0
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
	beq	%r8 %r2 branching_b.925
branching_b.930 :
	addi	%r0 %r1 2
	beq	%r8 %r1 preloop_b.37
branching_b.940 :
	addi	%r0 %r1 3
	beq	%r8 %r1 preloop_b.38
branching_b.950 :
	addi	%r0 %r1 4
	beq	%r8 %r1 branching_b.951
tail_b.1548 :
	j	preloop_b.39
branching_b.951 :
	lw.s	%r0 %f0 552
	lw	%r7 %r1 20
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f2
	lw	%r7 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f2 %f8
	lw.s	%r0 %f0 560
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f2
	lw	%r7 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f2 %f2
	mul.s	%f8 %f8 %f5
	mul.s	%f2 %f2 %f0
	add.s	%f0 %f5 %f7
	fbge	%f8 %f3 tail_b.1516
tail_b.1515 :
	neg.s	%f8 %f0
	j	branching_b.952
tail_b.1516 :
	mov.s	%f8 %f0
	j	branching_b.952
preloop_b.38 :
	lw.s	%r0 %f0 552
	lw	%r7 %r1 20
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f5
	lw.s	%r0 %f2 560
	lw	%r7 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f0
	mul.s	%f5 %f5 %f2
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f2 l.73
	div.s	%f2 %f0 %f2
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f2 %f0
	mov.s	%f0 %f2
cos_loop.8 :
	ilw.s	%r0 %f8 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f2 branching_b.942
tail_b.1504 :
	sub.s	%f0 %f2 %f2
	j	cos_loop.8
branching_b.942 :
	fbge	%f2 %f3 branching_b.943
tail_b.1505 :
	add.s	%f0 %f2 %f0
	mov.s	%f0 %f2
	j	cos_loop.8
branching_b.943 :
	fbg	%f8 %f2 branching_b.947
branching_b.944 :
	sub.s	%f8 %f2 %f2
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f2 branching_b.946
branching_b.945 :
	sub.s	%f2 %f8 %f5
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f2 l.59
	fbg	%f5 %f2 tail_b.1507
tail_b.1506 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.37
tail_b.1507 :
	sub.s	%f5 %f0 %f5
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f5 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.65
	mul.s	%f5 %f2 %f2
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f6 %f2
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.37
branching_b.946 :
	ilw.s	%r0 %f5 l.59
	fbg	%f2 %f5 tail_b.1509
tail_b.1508 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f2 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.56
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.37
tail_b.1509 :
	sub.s	%f2 %f0 %f6
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f2
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f0
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.65
	mul.s	%f6 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.56
	mul.s	%f6 %f0 %f6
	mul.s	%f5 %f2 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.37
branching_b.947 :
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f2 branching_b.949
branching_b.948 :
	sub.s	%f2 %f8 %f2
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f0 l.59
	fbg	%f2 %f0 tail_b.1511
tail_b.1510 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f2 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.62
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.37
tail_b.1511 :
	sub.s	%f2 %f5 %f9
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.63
	mul.s	%f9 %f0 %f5
	ilw.s	%r0 %f0 l.64
	mul.s	%f9 %f0 %f8
	mul.s	%f2 %f5 %f0
	add.s	%f0 %f8 %f5
	ilw.s	%r0 %f0 l.65
	mul.s	%f9 %f0 %f0
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f0 %f5
	mul.s	%f9 %f6 %f0
	mul.s	%f2 %f5 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.37
branching_b.949 :
	ilw.s	%r0 %f0 l.59
	fbg	%f2 %f0 tail_b.1513
tail_b.1512 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f5 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.62
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.37
tail_b.1513 :
	sub.s	%f2 %f5 %f2
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f2 %f0 %f7
	ilw.s	%r0 %f0 l.64
	mul.s	%f2 %f0 %f8
	mul.s	%f5 %f7 %f0
	add.s	%f0 %f8 %f7
	ilw.s	%r0 %f0 l.65
	mul.s	%f2 %f0 %f0
	mul.s	%f5 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f2 %f6 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.37
preloop_b.37 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f2 l.74
	mul.s	%f2 %f0 %f7
sin_loop.8 :
	ilw.s	%r0 %f8 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f7 branching_b.932
tail_b.1493 :
	sub.s	%f0 %f7 %f0
	mov.s	%f0 %f7
	j	sin_loop.8
branching_b.932 :
	fbge	%f7 %f3 branching_b.933
tail_b.1494 :
	add.s	%f0 %f7 %f0
	mov.s	%f0 %f7
	j	sin_loop.8
branching_b.933 :
	fbg	%f8 %f7 branching_b.937
branching_b.934 :
	sub.s	%f8 %f7 %f2
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f2 branching_b.936
branching_b.935 :
	sub.s	%f2 %f8 %f7
	ilw.s	%r0 %f0 l.59
	fbg	%f7 %f0 tail_b.1496
tail_b.1495 :
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f2 l.64
	mul.s	%f7 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.65
	mul.s	%f7 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.56
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.36
tail_b.1496 :
	sub.s	%f7 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f2 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.62
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.56
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.36
branching_b.936 :
	ilw.s	%r0 %f0 l.59
	fbg	%f2 %f0 tail_b.1498
tail_b.1497 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f5 l.64
	mul.s	%f2 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.65
	mul.s	%f2 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.56
	mul.s	%f2 %f5 %f2
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.36
tail_b.1498 :
	sub.s	%f2 %f5 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f5 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.62
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.56
	mul.s	%f2 %f5 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.36
branching_b.937 :
	ilw.s	%r0 %f5 l.56
	ilw.s	%r0 %f2 l.57
	fbg	%f2 %f7 branching_b.939
branching_b.938 :
	sub.s	%f7 %f8 %f0
	ilw.s	%r0 %f6 l.59
	fbg	%f0 %f6 tail_b.1500
tail_b.1499 :
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f6 l.63
	mul.s	%f0 %f6 %f8
	ilw.s	%r0 %f6 l.64
	mul.s	%f0 %f6 %f7
	mul.s	%f2 %f8 %f6
	add.s	%f6 %f7 %f6
	ilw.s	%r0 %f7 l.65
	mul.s	%f0 %f7 %f7
	mul.s	%f2 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f0 %f5 %f0
	mul.s	%f2 %f6 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.36
tail_b.1500 :
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f2 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.62
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.36
branching_b.939 :
	ilw.s	%r0 %f0 l.59
	fbg	%f7 %f0 tail_b.1502
tail_b.1501 :
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f2 l.64
	mul.s	%f7 %f2 %f2
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.65
	mul.s	%f7 %f0 %f8
	mul.s	%f6 %f2 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f5 %f2
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.36
tail_b.1502 :
	sub.s	%f7 %f2 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f2 l.60
	ilw.s	%r0 %f0 l.61
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.62
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.36
branching_b.925 :
	lw.s	%r0 %f0 552
	lw	%r7 %r1 20
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f2
	ilw.s	%r0 %f5 l.71
	mul.s	%f5 %f2 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f7 l.72
	mul.s	%f7 %f0 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.73
	fbge	%f0 %f2 tail_b.1485
tail_b.1484 :
	addi	%r0 %r1 1
	j	branching_b.926
tail_b.1485 :
	addi	%r0 %r1 0
branching_b.926 :
	lw.s	%r0 %f0 560
	lw	%r7 %r8 20
	addi	%r8 %r8 8
	lw.s	%r8 %f6 0
	sub.s	%f6 %f0 %f6
	mul.s	%f5 %f6 %f0
	floor.w.s	%f0 %f0
	mul.s	%f7 %f0 %f0
	sub.s	%f0 %f6 %f0
	fbge	%f0 %f2 tail_b.1487
tail_b.1486 :
	addi	%r0 %r8 1
	j	branching_b.927
tail_b.1487 :
	addi	%r0 %r8 0
branching_b.927 :
	beq	%r1 %r0 branching_b.928
branching_b.929 :
	beq	%r8 %r0 tail_b.1490
tail_b.1491 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.1492
tail_b.1490 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1492
branching_b.928 :
	beq	%r8 %r0 tail_b.1488
tail_b.1489 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1492
tail_b.1488 :
	ilw.s	%r0 %f0 l.52
tail_b.1492 :
	sw.s	%r0 %f0 584
	j	preloop_b.39
postloop_b.36 :
tail_b.1503 :
	mul.s	%f0 %f0 %f5
	ilw.s	%r0 %f2 l.52
	mul.s	%f5 %f2 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f5 %f0 %f0
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 584
	j	preloop_b.39
postloop_b.37 :
tail_b.1514 :
	mul.s	%f0 %f0 %f2
	ilw.s	%r0 %f5 l.52
	mul.s	%f5 %f2 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f2 %f0 %f0
	mul.s	%f5 %f0 %f0
	sw.s	%r0 %f0 588
	j	preloop_b.39
branching_b.952 :
	ilw.s	%r0 %f6 l.76
	fbge	%f0 %f6 tail_b.1518
tail_b.1517 :
	addi	%r0 %r1 1
	j	branching_b.953
tail_b.1518 :
	addi	%r0 %r1 0
branching_b.953 :
	beq	%r1 %r0 branching_b.954
tail_b.1528 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.960
branching_b.954 :
	div.s	%f8 %f2 %f2
	fbge	%f2 %f3 tail_b.1520
tail_b.1519 :
	neg.s	%f2 %f2
	j	branching_b.955
tail_b.1520 :
branching_b.955 :
	fbg	%f3 %f2 branching_b.958
branching_b.956 :
	ilw.s	%r0 %f0 l.80
	fbge	%f2 %f0 branching_b.957
tail_b.1521 :
	ilw.s	%r0 %f9 l.56
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f2 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f2 %f0 %f0
	mul.s	%f5 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f2 %f0 %f10
	mul.s	%f5 %f8 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f8 l.85
	mul.s	%f2 %f8 %f8
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.86
	mul.s	%f2 %f8 %f8
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f2 %f0 %f0
	mul.s	%f5 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.1527
branching_b.957 :
	ilw.s	%r0 %f0 l.81
	fbge	%f2 %f0 tail_b.1523
tail_b.1522 :
	ilw.s	%r0 %f8 l.56
	sub.s	%f8 %f2 %f0
	add.s	%f8 %f2 %f2
	div.s	%f2 %f0 %f9
	ilw.s	%r0 %f2 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f9 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f9 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f9 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f9 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.1527
tail_b.1523 :
	ilw.s	%r0 %f0 l.56
	div.s	%f2 %f0 %f10
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f5 l.89
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.87
	mul.s	%f10 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.1527
branching_b.958 :
	neg.s	%f2 %f0
	ilw.s	%r0 %f2 l.80
	fbge	%f0 %f2 branching_b.959
tail_b.1524 :
	ilw.s	%r0 %f10 l.58
	neg.s	%f0 %f2
	mul.s	%f0 %f2 %f5
	ilw.s	%r0 %f2 l.82
	mul.s	%f0 %f2 %f9
	ilw.s	%r0 %f2 l.83
	mul.s	%f0 %f2 %f8
	mul.s	%f5 %f9 %f2
	add.s	%f2 %f8 %f8
	ilw.s	%r0 %f2 l.84
	mul.s	%f0 %f2 %f2
	mul.s	%f5 %f8 %f8
	add.s	%f8 %f2 %f8
	ilw.s	%r0 %f2 l.85
	mul.s	%f0 %f2 %f2
	mul.s	%f5 %f8 %f8
	add.s	%f8 %f2 %f8
	ilw.s	%r0 %f2 l.86
	mul.s	%f0 %f2 %f2
	mul.s	%f5 %f8 %f8
	add.s	%f8 %f2 %f8
	ilw.s	%r0 %f2 l.87
	mul.s	%f0 %f2 %f2
	mul.s	%f5 %f8 %f8
	add.s	%f8 %f2 %f2
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f10 %f0 %f0
	j	tail_b.1527
branching_b.959 :
	ilw.s	%r0 %f2 l.81
	fbge	%f0 %f2 tail_b.1526
tail_b.1525 :
	ilw.s	%r0 %f5 l.56
	sub.s	%f5 %f0 %f2
	add.s	%f5 %f0 %f0
	div.s	%f0 %f2 %f2
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f11 l.59
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f2 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f2 %f0 %f5
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f2 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f2 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f10
	ilw.s	%r0 %f0 l.87
	mul.s	%f2 %f0 %f5
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.1527
tail_b.1526 :
	ilw.s	%r0 %f10 l.56
	div.s	%f0 %f10 %f9
	ilw.s	%r0 %f11 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f2 l.82
	mul.s	%f9 %f2 %f5
	ilw.s	%r0 %f2 l.83
	mul.s	%f9 %f2 %f2
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f2 %f8
	ilw.s	%r0 %f2 l.84
	mul.s	%f9 %f2 %f5
	mul.s	%f0 %f8 %f2
	add.s	%f2 %f5 %f5
	ilw.s	%r0 %f2 l.85
	mul.s	%f9 %f2 %f2
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f2 %f5
	ilw.s	%r0 %f2 l.86
	mul.s	%f9 %f2 %f8
	mul.s	%f0 %f5 %f2
	add.s	%f2 %f8 %f5
	ilw.s	%r0 %f2 l.87
	mul.s	%f9 %f2 %f8
	mul.s	%f0 %f5 %f2
	add.s	%f2 %f8 %f2
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f10 %f0 %f0
tail_b.1527 :
	ilw.s	%r0 %f2 l.88
	mul.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f2 %f0
branching_b.960 :
	floor.w.s	%f0 %f2
	sub.s	%f2 %f0 %f8
	lw.s	%r0 %f0 556
	lw	%r7 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f2
	lw	%r7 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f2 %f0
	fbge	%f7 %f3 tail_b.1530
tail_b.1529 :
	neg.s	%f7 %f2
	j	branching_b.961
tail_b.1530 :
	mov.s	%f7 %f2
branching_b.961 :
	fbge	%f2 %f6 tail_b.1532
tail_b.1531 :
	addi	%r0 %r1 1
	j	branching_b.962
tail_b.1532 :
	addi	%r0 %r1 0
branching_b.962 :
	beq	%r1 %r0 branching_b.963
tail_b.1542 :
	ilw.s	%r0 %f2 l.78
	j	branching_b.969
branching_b.963 :
	div.s	%f7 %f0 %f0
	fbge	%f0 %f3 tail_b.1534
tail_b.1533 :
	neg.s	%f0 %f7
	j	branching_b.964
tail_b.1534 :
	mov.s	%f0 %f7
branching_b.964 :
	fbg	%f3 %f7 branching_b.967
branching_b.965 :
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.966
tail_b.1535 :
	ilw.s	%r0 %f2 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f6
	mul.s	%f9 %f5 %f0
	add.s	%f0 %f6 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f6
	mul.s	%f9 %f5 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f7 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f7 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	j	tail_b.1541
branching_b.966 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.1537
tail_b.1536 :
	ilw.s	%r0 %f5 l.56
	sub.s	%f5 %f7 %f2
	add.s	%f5 %f7 %f0
	div.s	%f0 %f2 %f6
	ilw.s	%r0 %f7 l.59
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f2
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.86
	mul.s	%f6 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f10
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f2
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.1541
tail_b.1537 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f7
	ilw.s	%r0 %f2 l.58
	ilw.s	%r0 %f9 l.89
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f10
	mul.s	%f6 %f5 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f5
	mul.s	%f6 %f10 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f10
	mul.s	%f6 %f5 %f0
	add.s	%f0 %f10 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f2 %f0 %f0
	j	tail_b.1541
branching_b.967 :
	neg.s	%f7 %f6
	ilw.s	%r0 %f0 l.80
	fbge	%f6 %f0 branching_b.968
tail_b.1538 :
	ilw.s	%r0 %f7 l.58
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f2
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f6 %f5 %f5
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f6 %f5 %f5
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f6 %f5 %f5
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f0
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.1541
branching_b.968 :
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 tail_b.1540
tail_b.1539 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f6 %f2
	add.s	%f0 %f6 %f0
	div.s	%f0 %f2 %f5
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f9 l.59
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.1541
tail_b.1540 :
	ilw.s	%r0 %f7 l.56
	div.s	%f6 %f7 %f6
	ilw.s	%r0 %f5 l.89
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f0
	mul.s	%f10 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f0
	mul.s	%f10 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f10 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f0
	mul.s	%f10 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f9
	mul.s	%f10 %f2 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f7 %f0 %f0
tail_b.1541 :
	ilw.s	%r0 %f2 l.88
	mul.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f2 %f2
branching_b.969 :
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f5 l.90
	ilw.s	%r0 %f6 l.62
	sub.s	%f8 %f6 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f5 %f2
	sub.s	%f0 %f6 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f2 %f0
	fbge	%f0 %f3 tail_b.1544
tail_b.1543 :
	addi	%r0 %r1 1
	j	branching_b.970
tail_b.1544 :
	addi	%r0 %r1 0
branching_b.970 :
	beq	%r1 %r0 tail_b.1545
tail_b.1546 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1547
tail_b.1545 :
tail_b.1547 :
	ilw.s	%r0 %f2 l.52
	mul.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.91
	div.s	%f2 %f0 %f0
	sw.s	%r0 %f0 588
preloop_b.39 :
	lw	%r0 %r10 536
	mov	%r5 %r11
	addi	%r0 %r12 -1
shadow_check_one_or_matrix_loop.2 :
	slli	%r11 %r1 2
	add	%r10 %r1 %r1
	lw	%r1 %r9 0
	mov	%r9 %r1
	lw	%r1 %r13 0
	beq	%r13 %r12 tail_b.1549
branching_b.972 :
	addi	%r0 %r1 99
	beq	%r13 %r1 tail_b.1550
branching_b.973 :
	slli	%r13 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r8 0
	lw.s	%r0 %f2 552
	lw	%r8 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f8
	lw.s	%r0 %f0 556
	lw	%r8 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f7
	lw.s	%r0 %f2 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f9
	slli	%r13 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r13 0
	lw	%r8 %r14 4
	beq	%r14 %r2 branching_b.974
branching_b.1001 :
	addi	%r0 %r1 2
	beq	%r14 %r1 branching_b.1002
branching_b.1004 :
	mov	%r13 %r1
	lw.s	%r1 %f6 0
	fbne	%f6 %f3 tail_b.1602
tail_b.1601 :
	addi	%r0 %r1 1
	j	branching_b.1005
tail_b.1602 :
	addi	%r0 %r1 0
	j	branching_b.1005
branching_b.1002 :
	mov	%r13 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.1598
tail_b.1597 :
	addi	%r0 %r1 1
	j	branching_b.1003
tail_b.1598 :
	addi	%r0 %r1 0
	j	branching_b.1003
branching_b.974 :
	mov	%r13 %r1
	lw.s	%r1 %f0 0
	sub.s	%f8 %f0 %f2
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	lw.s	%r0 %f0 740
	mul.s	%f0 %f2 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f3 tail_b.1552
tail_b.1551 :
	neg.s	%f0 %f5
	j	branching_b.975
tail_b.1552 :
	mov.s	%f0 %f5
	j	branching_b.975
tail_b.1550 :
	addi	%r0 %r1 1
	j	branching_b.1015
tail_b.1549 :
	addi	%r0 %r1 0
postloop_b.38 :
branching_b.1017 :
	beq	%r1 %r0 branching_b.1018
tail_b.1628 :
	j	tail_b.1864
branching_b.1018 :
	lw.s	%r0 %f2 568
	lw.s	%r0 %f0 312
	mul.s	%f0 %f2 %f4
	lw.s	%r0 %f0 572
	lw.s	%r0 %f2 316
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f2
	lw.s	%r0 %f4 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f0
	neg.s	%f0 %f0
	fbge	%f3 %f0 tail_b.1624
tail_b.1623 :
	addi	%r0 %r1 1
	j	branching_b.1019
tail_b.1624 :
	addi	%r0 %r1 0
branching_b.1019 :
	beq	%r1 %r0 tail_b.1625
tail_b.1626 :
	j	tail_b.1627
tail_b.1625 :
	ilw.s	%r0 %f0 l.51
tail_b.1627 :
	mul.s	%f0 %f1 %f0
	lw	%r7 %r1 28
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
	lw.s	%r0 %f0 600
	lw.s	%r0 %f1 588
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	j	tail_b.1864
branching_b.1015 :
	beq	%r1 %r0 tail_b.1620
branching_b.1016 :
	addi	%r0 %r1 1
	sw	%r26 %r3 -80
	sw	%r26 %r4 -84
	sw	%r26 %r5 -88
	sw	%r26 %r6 -92
	sw.s	%r26 %f3 -96
	sw.s	%r26 %f1 -100
	sw.s	%r26 %f4 -104
	sw	%r26 %r7 -108
	sw	%r26 %r2 -112
	sw	%r26 %r10 -116
	sw	%r26 %r12 -120
	sw	%r26 %r11 -124
	mov	%r9 %r2
	sw	%r26 %r28 -128
	addi	%r26 %r26 -132
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 132
	lw	%r26 %r28 -128
	lw	%r26 %r3 -80
	lw	%r26 %r4 -84
	lw	%r26 %r5 -88
	lw	%r26 %r6 -92
	lw.s	%r26 %f3 -96
	lw.s	%r26 %f1 -100
	lw.s	%r26 %f4 -104
	lw	%r26 %r7 -108
	lw	%r26 %r2 -112
	lw	%r26 %r10 -116
	lw	%r26 %r12 -120
	lw	%r26 %r11 -124
	beq	%r1 %r0 tail_b.1621
tail_b.1622 :
	addi	%r0 %r1 1
	j	postloop_b.38
tail_b.1621 :
	addi	%r11 %r11 1
	j	shadow_check_one_or_matrix_loop.2
tail_b.1620 :
	addi	%r11 %r11 1
	j	shadow_check_one_or_matrix_loop.2
branching_b.975 :
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f5 %f0 tail_b.1554
tail_b.1553 :
	addi	%r0 %r1 1
	j	branching_b.976
tail_b.1554 :
	addi	%r0 %r1 0
branching_b.976 :
	beq	%r1 %r0 tail_b.1555
branching_b.977 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f2 %f0
	add.s	%f9 %f0 %f0
	fbge	%f0 %f3 tail_b.1557
tail_b.1556 :
	neg.s	%f0 %f5
	j	branching_b.978
tail_b.1557 :
	mov.s	%f0 %f5
	j	branching_b.978
tail_b.1555 :
	addi	%r0 %r1 0
branching_b.982 :
	beq	%r1 %r0 branching_b.983
tail_b.1596 :
	sw.s	%r0 %f2 540
	addi	%r0 %r1 1
	j	branching_b.1011
branching_b.983 :
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f7 %f0 %f0
	addi	%r13 %r1 12
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f5
	lw.s	%r0 %f0 736
	mul.s	%f0 %f5 %f0
	add.s	%f8 %f0 %f0
	fbge	%f0 %f3 tail_b.1566
tail_b.1565 :
	neg.s	%f0 %f0
	j	branching_b.984
tail_b.1566 :
branching_b.984 :
	lw	%r8 %r1 16
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.1568
tail_b.1567 :
	addi	%r0 %r1 1
	j	branching_b.985
tail_b.1568 :
	addi	%r0 %r1 0
branching_b.985 :
	beq	%r1 %r0 tail_b.1569
branching_b.986 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f5 %f0
	add.s	%f9 %f0 %f2
	fbge	%f2 %f3 tail_b.1571
tail_b.1570 :
	neg.s	%f2 %f2
	j	branching_b.987
tail_b.1571 :
	j	branching_b.987
tail_b.1569 :
	addi	%r0 %r1 0
branching_b.991 :
	beq	%r1 %r0 branching_b.992
tail_b.1595 :
	sw.s	%r0 %f5 540
	addi	%r0 %r1 2
	j	branching_b.1011
branching_b.992 :
	addi	%r13 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f9 %f0 %f2
	addi	%r13 %r1 20
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f5
	lw.s	%r0 %f0 736
	mul.s	%f0 %f5 %f0
	add.s	%f8 %f0 %f0
	fbge	%f0 %f3 tail_b.1580
tail_b.1579 :
	neg.s	%f0 %f2
	j	branching_b.993
tail_b.1580 :
	mov.s	%f0 %f2
branching_b.993 :
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.1582
tail_b.1581 :
	addi	%r0 %r1 1
	j	branching_b.994
tail_b.1582 :
	addi	%r0 %r1 0
branching_b.994 :
	beq	%r1 %r0 tail_b.1583
branching_b.995 :
	lw.s	%r0 %f0 740
	mul.s	%f0 %f5 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f3 tail_b.1585
tail_b.1584 :
	neg.s	%f0 %f2
	j	branching_b.996
tail_b.1585 :
	mov.s	%f0 %f2
	j	branching_b.996
tail_b.1583 :
	addi	%r0 %r1 0
branching_b.1000 :
	beq	%r1 %r0 tail_b.1593
tail_b.1594 :
	sw.s	%r0 %f5 540
	addi	%r0 %r1 3
	j	branching_b.1011
tail_b.1593 :
	addi	%r0 %r1 0
	j	branching_b.1011
branching_b.996 :
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.1587
tail_b.1586 :
	addi	%r0 %r1 1
	j	branching_b.997
tail_b.1587 :
	addi	%r0 %r1 0
branching_b.997 :
	beq	%r1 %r0 tail_b.1588
branching_b.998 :
	addi	%r13 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1590
tail_b.1589 :
	addi	%r0 %r1 1
	j	branching_b.999
tail_b.1590 :
	addi	%r0 %r1 0
	j	branching_b.999
tail_b.1588 :
	addi	%r0 %r1 0
	j	branching_b.1000
branching_b.999 :
	beq	%r1 %r0 tail_b.1591
tail_b.1592 :
	addi	%r0 %r1 0
	j	branching_b.1000
tail_b.1591 :
	addi	%r0 %r1 1
	j	branching_b.1000
branching_b.987 :
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.1573
tail_b.1572 :
	addi	%r0 %r1 1
	j	branching_b.988
tail_b.1573 :
	addi	%r0 %r1 0
branching_b.988 :
	beq	%r1 %r0 tail_b.1574
branching_b.989 :
	addi	%r13 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1576
tail_b.1575 :
	addi	%r0 %r1 1
	j	branching_b.990
tail_b.1576 :
	addi	%r0 %r1 0
	j	branching_b.990
tail_b.1574 :
	addi	%r0 %r1 0
	j	branching_b.991
branching_b.990 :
	beq	%r1 %r0 tail_b.1577
tail_b.1578 :
	addi	%r0 %r1 0
	j	branching_b.991
tail_b.1577 :
	addi	%r0 %r1 1
	j	branching_b.991
branching_b.1011 :
	bne	%r1 %r0 branching_b.1012
tail_b.1619 :
	addi	%r0 %r1 0
	j	branching_b.1015
branching_b.1012 :
	lw.s	%r0 %f0 540
	fbge	%f0 %f4 tail_b.1615
tail_b.1614 :
	addi	%r0 %r1 1
	j	branching_b.1013
tail_b.1615 :
	addi	%r0 %r1 0
branching_b.1013 :
	beq	%r1 %r0 tail_b.1616
branching_b.1014 :
	addi	%r0 %r1 1
	sw	%r26 %r3 -128
	sw	%r26 %r4 -132
	sw	%r26 %r5 -136
	sw	%r26 %r6 -140
	sw.s	%r26 %f3 -144
	sw.s	%r26 %f1 -148
	sw.s	%r26 %f4 -152
	sw	%r26 %r7 -156
	sw	%r26 %r2 -160
	sw	%r26 %r10 -164
	sw	%r26 %r12 -168
	sw	%r26 %r11 -172
	sw	%r26 %r9 -176
	mov	%r9 %r2
	sw	%r26 %r28 -180
	addi	%r26 %r26 -184
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 184
	lw	%r26 %r28 -180
	lw	%r26 %r3 -128
	lw	%r26 %r4 -132
	lw	%r26 %r5 -136
	lw	%r26 %r6 -140
	lw.s	%r26 %f3 -144
	lw.s	%r26 %f1 -148
	lw.s	%r26 %f4 -152
	lw	%r26 %r7 -156
	lw	%r26 %r2 -160
	lw	%r26 %r10 -164
	lw	%r26 %r12 -168
	lw	%r26 %r11 -172
	lw	%r26 %r9 -176
	beq	%r1 %r0 tail_b.1617
tail_b.1618 :
	addi	%r0 %r1 1
	j	branching_b.1015
tail_b.1617 :
	addi	%r0 %r1 0
	j	branching_b.1015
tail_b.1616 :
	addi	%r0 %r1 0
	j	branching_b.1015
branching_b.978 :
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f5 %f0 tail_b.1559
tail_b.1558 :
	addi	%r0 %r1 1
	j	branching_b.979
tail_b.1559 :
	addi	%r0 %r1 0
branching_b.979 :
	beq	%r1 %r0 tail_b.1560
branching_b.980 :
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1562
tail_b.1561 :
	addi	%r0 %r1 1
	j	branching_b.981
tail_b.1562 :
	addi	%r0 %r1 0
	j	branching_b.981
tail_b.1560 :
	addi	%r0 %r1 0
	j	branching_b.982
branching_b.981 :
	beq	%r1 %r0 tail_b.1563
tail_b.1564 :
	addi	%r0 %r1 0
	j	branching_b.982
tail_b.1563 :
	addi	%r0 %r1 1
	j	branching_b.982
branching_b.1003 :
	beq	%r1 %r0 tail_b.1599
tail_b.1600 :
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	addi	%r13 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f2
	addi	%r13 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.1011
tail_b.1599 :
	addi	%r0 %r1 0
	j	branching_b.1011
branching_b.1005 :
	beq	%r1 %r0 branching_b.1006
tail_b.1613 :
	addi	%r0 %r1 0
	j	branching_b.1011
branching_b.1006 :
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f2
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f2
	addi	%r13 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f8 %f8 %f5
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f10
	mul.s	%f7 %f7 %f5
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f10 %f5
	mul.s	%f9 %f9 %f10
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f10 %f0
	add.s	%f0 %f5 %f10
	lw	%r8 %r1 12
	beq	%r1 %r0 tail_b.1603
tail_b.1604 :
	mul.s	%f9 %f7 %f5
	lw	%r8 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f10 %f10
	mul.s	%f8 %f9 %f5
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f10 %f5
	mul.s	%f7 %f8 %f0
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f7 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f5
	j	branching_b.1007
tail_b.1603 :
	mov.s	%f10 %f5
branching_b.1007 :
	lw	%r8 %r1 4
	addi	%r0 %r14 3
	beq	%r1 %r14 tail_b.1605
tail_b.1606 :
	j	branching_b.1008
tail_b.1605 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f5 %f5
branching_b.1008 :
	mul.s	%f2 %f2 %f0
	mul.s	%f5 %f6 %f5
	sub.s	%f5 %f0 %f0
	fbge	%f3 %f0 tail_b.1608
tail_b.1607 :
	addi	%r0 %r1 1
	j	branching_b.1009
tail_b.1608 :
	addi	%r0 %r1 0
branching_b.1009 :
	beq	%r1 %r0 tail_b.1609
branching_b.1010 :
	lw	%r8 %r1 24
	beq	%r1 %r0 tail_b.1610
tail_b.1611 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f2 %f0
	addi	%r13 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1612
tail_b.1610 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f2 %f0
	addi	%r13 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1612
tail_b.1609 :
	addi	%r0 %r1 0
	j	branching_b.1011
tail_b.1612 :
	addi	%r0 %r1 1
	j	branching_b.1011
branching_b.921 :
	lw	%r7 %r8 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f2 572
	mul.s	%f2 %f2 %f2
	add.s	%f2 %f0 %f2
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	sqrt.s	%f0 %f2
	fbne	%f2 %f3 tail_b.1479
tail_b.1478 :
	addi	%r0 %r1 1
	j	branching_b.922
tail_b.1479 :
	addi	%r0 %r1 0
branching_b.922 :
	beq	%r1 %r0 branching_b.923
tail_b.1482 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.1483
branching_b.923 :
	beq	%r8 %r0 tail_b.1480
tail_b.1481 :
	ilw.s	%r0 %f0 l.58
	div.s	%f2 %f0 %f0
	j	tail_b.1483
tail_b.1480 :
	ilw.s	%r0 %f0 l.56
	div.s	%f2 %f0 %f0
tail_b.1483 :
	lw.s	%r0 %f2 568
	mul.s	%f0 %f2 %f2
	sw.s	%r0 %f2 568
	lw.s	%r0 %f2 572
	mul.s	%f0 %f2 %f2
	sw.s	%r0 %f2 572
	lw.s	%r0 %f2 576
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 576
	j	branching_b.924
tail_b.1460 :
	addi	%r7 %r7 1
	j	trace_or_matrix_fast_loop.2
branching_b.873 :
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f4 %f0 tail_b.1399
tail_b.1398 :
	addi	%r0 %r1 1
	j	branching_b.874
tail_b.1399 :
	addi	%r0 %r1 0
branching_b.874 :
	beq	%r1 %r0 tail_b.1400
branching_b.875 :
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f3 tail_b.1402
tail_b.1401 :
	neg.s	%f0 %f0
	j	branching_b.876
tail_b.1402 :
	j	branching_b.876
tail_b.1400 :
	addi	%r0 %r1 0
branching_b.880 :
	beq	%r1 %r0 branching_b.881
tail_b.1441 :
	sw.s	%r0 %f6 540
	addi	%r0 %r1 1
	j	branching_b.907
branching_b.881 :
	addi	%r12 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f4
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f4
	mov	%r13 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f2 %f0 %f0
	fbge	%f0 %f3 tail_b.1411
tail_b.1410 :
	neg.s	%f0 %f0
	j	branching_b.882
tail_b.1411 :
branching_b.882 :
	lw	%r11 %r1 16
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.1413
tail_b.1412 :
	addi	%r0 %r1 1
	j	branching_b.883
tail_b.1413 :
	addi	%r0 %r1 0
branching_b.883 :
	beq	%r1 %r0 tail_b.1414
branching_b.884 :
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f3 tail_b.1416
tail_b.1415 :
	neg.s	%f0 %f6
	j	branching_b.885
tail_b.1416 :
	mov.s	%f0 %f6
	j	branching_b.885
tail_b.1414 :
	addi	%r0 %r1 0
branching_b.889 :
	beq	%r1 %r0 branching_b.890
tail_b.1440 :
	sw.s	%r0 %f4 540
	addi	%r0 %r1 2
	j	branching_b.907
branching_b.890 :
	addi	%r12 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f7 %f0 %f0
	addi	%r12 %r1 20
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f4
	mov	%r13 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f2 %f0 %f0
	fbge	%f0 %f3 tail_b.1425
tail_b.1424 :
	neg.s	%f0 %f0
	j	branching_b.891
tail_b.1425 :
branching_b.891 :
	lw	%r11 %r1 16
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.1427
tail_b.1426 :
	addi	%r0 %r1 1
	j	branching_b.892
tail_b.1427 :
	addi	%r0 %r1 0
branching_b.892 :
	beq	%r1 %r0 tail_b.1428
branching_b.893 :
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.1430
tail_b.1429 :
	neg.s	%f0 %f0
	j	branching_b.894
tail_b.1430 :
	j	branching_b.894
tail_b.1428 :
	addi	%r0 %r1 0
branching_b.898 :
	beq	%r1 %r0 tail_b.1438
tail_b.1439 :
	sw.s	%r0 %f4 540
	addi	%r0 %r1 3
	j	branching_b.907
tail_b.1438 :
	addi	%r0 %r1 0
	j	branching_b.907
branching_b.894 :
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.1432
tail_b.1431 :
	addi	%r0 %r1 1
	j	branching_b.895
tail_b.1432 :
	addi	%r0 %r1 0
branching_b.895 :
	beq	%r1 %r0 tail_b.1433
branching_b.896 :
	addi	%r12 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1435
tail_b.1434 :
	addi	%r0 %r1 1
	j	branching_b.897
tail_b.1435 :
	addi	%r0 %r1 0
	j	branching_b.897
tail_b.1433 :
	addi	%r0 %r1 0
	j	branching_b.898
branching_b.897 :
	beq	%r1 %r0 tail_b.1436
tail_b.1437 :
	addi	%r0 %r1 0
	j	branching_b.898
tail_b.1436 :
	addi	%r0 %r1 1
	j	branching_b.898
branching_b.885 :
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f6 %f0 tail_b.1418
tail_b.1417 :
	addi	%r0 %r1 1
	j	branching_b.886
tail_b.1418 :
	addi	%r0 %r1 0
branching_b.886 :
	beq	%r1 %r0 tail_b.1419
branching_b.887 :
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1421
tail_b.1420 :
	addi	%r0 %r1 1
	j	branching_b.888
tail_b.1421 :
	addi	%r0 %r1 0
	j	branching_b.888
tail_b.1419 :
	addi	%r0 %r1 0
	j	branching_b.889
branching_b.888 :
	beq	%r1 %r0 tail_b.1422
tail_b.1423 :
	addi	%r0 %r1 0
	j	branching_b.889
tail_b.1422 :
	addi	%r0 %r1 1
	j	branching_b.889
branching_b.907 :
	bne	%r1 %r0 branching_b.908
tail_b.1459 :
	j	tail_b.1460
branching_b.908 :
	lw.s	%r0 %f2 540
	lw.s	%r0 %f0 548
	fbge	%f2 %f0 tail_b.1456
tail_b.1455 :
	addi	%r0 %r1 1
	j	branching_b.909
tail_b.1456 :
	addi	%r0 %r1 0
branching_b.909 :
	beq	%r1 %r0 tail_b.1457
tail_b.1458 :
	addi	%r0 %r1 1
	sw	%r26 %r3 -180
	sw	%r26 %r4 -184
	sw	%r26 %r5 -188
	sw	%r26 %r6 -192
	sw.s	%r26 %f3 -196
	sw	%r26 %r8 -200
	sw.s	%r26 %f1 -204
	sw	%r26 %r10 -208
	sw	%r26 %r9 -212
	sw	%r26 %r7 -216
	mov	%r8 %r3
	sw	%r26 %r28 -220
	addi	%r26 %r26 -224
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 224
	lw	%r26 %r28 -220
	lw	%r26 %r3 -180
	lw	%r26 %r4 -184
	lw	%r26 %r5 -188
	lw	%r26 %r6 -192
	lw.s	%r26 %f3 -196
	lw	%r26 %r8 -200
	lw.s	%r26 %f1 -204
	lw	%r26 %r10 -208
	lw	%r26 %r9 -212
	lw	%r26 %r7 -216
	j	tail_b.1460
tail_b.1457 :
	j	tail_b.1460
branching_b.876 :
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	fbge	%f0 %f4 tail_b.1404
tail_b.1403 :
	addi	%r0 %r1 1
	j	branching_b.877
tail_b.1404 :
	addi	%r0 %r1 0
branching_b.877 :
	beq	%r1 %r0 tail_b.1405
branching_b.878 :
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1407
tail_b.1406 :
	addi	%r0 %r1 1
	j	branching_b.879
tail_b.1407 :
	addi	%r0 %r1 0
	j	branching_b.879
tail_b.1405 :
	addi	%r0 %r1 0
	j	branching_b.880
branching_b.879 :
	beq	%r1 %r0 tail_b.1408
tail_b.1409 :
	addi	%r0 %r1 0
	j	branching_b.880
tail_b.1408 :
	addi	%r0 %r1 1
	j	branching_b.880
branching_b.901 :
	beq	%r1 %r0 tail_b.1444
tail_b.1445 :
	lw.s	%r12 %f2 0
	addi	%r14 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.907
tail_b.1444 :
	addi	%r0 %r1 0
	j	branching_b.907
branching_b.903 :
	beq	%r1 %r0 branching_b.904
tail_b.1454 :
	addi	%r0 %r1 0
	j	branching_b.907
branching_b.904 :
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f2
	addi	%r12 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f2
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f5
	addi	%r14 %r1 12
	lw.s	%r1 %f2 0
	mul.s	%f5 %f5 %f0
	mul.s	%f2 %f4 %f2
	sub.s	%f2 %f0 %f0
	fbge	%f3 %f0 tail_b.1449
tail_b.1448 :
	addi	%r0 %r1 1
	j	branching_b.905
tail_b.1449 :
	addi	%r0 %r1 0
branching_b.905 :
	beq	%r1 %r0 tail_b.1450
branching_b.906 :
	lw	%r11 %r1 24
	beq	%r1 %r0 tail_b.1451
tail_b.1452 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f5 %f2
	addi	%r12 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1453
tail_b.1451 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f5 %f2
	addi	%r12 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1453
tail_b.1450 :
	addi	%r0 %r1 0
	j	branching_b.907
tail_b.1453 :
	addi	%r0 %r1 1
	j	branching_b.907
postloop_b.39 :
branching_b.1061 :
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f4 l.68
	fbge	%f4 %f1 tail_b.1697
tail_b.1696 :
	addi	%r0 %r1 1
	j	branching_b.1062
tail_b.1697 :
	addi	%r0 %r1 0
branching_b.1062 :
	beq	%r1 %r0 tail_b.1698
branching_b.1063 :
	ilw.s	%r0 %f0 l.70
	fbge	%f1 %f0 tail_b.1700
tail_b.1699 :
	addi	%r0 %r1 1
	j	branching_b.1064
tail_b.1700 :
	addi	%r0 %r1 0
	j	branching_b.1064
tail_b.1698 :
	addi	%r0 %r1 0
branching_b.1064 :
	beq	%r1 %r0 tail_b.1701
branching_b.1065 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r8 0
	lw	%r7 %r9 0
	lw	%r8 %r1 4
	addi	%r0 %r7 1
	beq	%r1 %r7 branching_b.1066
branching_b.1070 :
	addi	%r0 %r2 2
	beq	%r1 %r2 tail_b.1710
branching_b.1071 :
	lw.s	%r0 %f1 552
	lw	%r8 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f1 556
	lw	%r8 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw.s	%r0 %f0 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	sub.s	%f6 %f0 %f8
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f11
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f9
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f6
	lw	%r8 %r1 12
	beq	%r1 %r0 tail_b.1711
tail_b.1712 :
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f8 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f10 l.69
	div.s	%f10 %f0 %f0
	add.s	%f0 %f11 %f0
	sw.s	%r0 %f0 568
	lw	%r8 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f7
	lw	%r8 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f7 %f0
	div.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 572
	lw	%r8 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	lw	%r8 %r1 36
	lw.s	%r1 %f5 0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	div.s	%f10 %f0 %f0
	add.s	%f0 %f6 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1072
tail_b.1711 :
	sw.s	%r0 %f11 568
	sw.s	%r0 %f9 572
	sw.s	%r0 %f6 576
	j	branching_b.1072
tail_b.1710 :
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
	j	branching_b.1075
branching_b.1066 :
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
	fbne	%f0 %f3 tail_b.1703
tail_b.1702 :
	addi	%r0 %r1 1
	j	branching_b.1067
tail_b.1703 :
	addi	%r0 %r1 0
	j	branching_b.1067
tail_b.1701 :
	j	tail_b.1864
branching_b.1067 :
	beq	%r1 %r0 branching_b.1068
tail_b.1708 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1709
branching_b.1068 :
	fbge	%f3 %f0 tail_b.1705
tail_b.1704 :
	addi	%r0 %r1 1
	j	branching_b.1069
tail_b.1705 :
	addi	%r0 %r1 0
branching_b.1069 :
	beq	%r1 %r0 tail_b.1706
tail_b.1707 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.1709
tail_b.1706 :
	ilw.s	%r0 %f0 l.58
tail_b.1709 :
	neg.s	%f0 %f0
	slli	%r2 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1075 :
	lw	%r8 %r1 0
	lw	%r8 %r2 32
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 580
	lw	%r8 %r2 32
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 584
	lw	%r8 %r2 32
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 588
	beq	%r1 %r7 branching_b.1076
branching_b.1081 :
	addi	%r0 %r2 2
	beq	%r1 %r2 preloop_b.41
branching_b.1091 :
	addi	%r0 %r2 3
	beq	%r1 %r2 preloop_b.42
branching_b.1101 :
	addi	%r0 %r2 4
	beq	%r1 %r2 branching_b.1102
tail_b.1783 :
	j	preloop_b.43
branching_b.1102 :
	lw.s	%r0 %f1 552
	lw	%r8 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r8 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f5
	lw.s	%r0 %f0 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r8 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f8
	mul.s	%f5 %f5 %f1
	mul.s	%f8 %f8 %f0
	add.s	%f0 %f1 %f7
	fbge	%f5 %f3 tail_b.1751
tail_b.1750 :
	neg.s	%f5 %f0
	j	branching_b.1103
tail_b.1751 :
	mov.s	%f5 %f0
	j	branching_b.1103
preloop_b.42 :
	lw.s	%r0 %f0 552
	lw	%r8 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw.s	%r0 %f0 560
	lw	%r8 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	sub.s	%f5 %f0 %f0
	mul.s	%f1 %f1 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.73
	div.s	%f0 %f1 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
cos_loop.7 :
	ilw.s	%r0 %f8 l.54
	ilw.s	%r0 %f1 l.55
	fbg	%f1 %f0 branching_b.1093
tail_b.1739 :
	sub.s	%f1 %f0 %f0
	j	cos_loop.7
branching_b.1093 :
	fbge	%f0 %f3 branching_b.1094
tail_b.1740 :
	add.s	%f1 %f0 %f0
	j	cos_loop.7
branching_b.1094 :
	fbg	%f8 %f0 branching_b.1098
branching_b.1095 :
	sub.s	%f8 %f0 %f5
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f1 l.57
	fbg	%f1 %f5 branching_b.1097
branching_b.1096 :
	sub.s	%f5 %f8 %f0
	ilw.s	%r0 %f8 l.56
	ilw.s	%r0 %f5 l.59
	fbg	%f0 %f5 tail_b.1742
tail_b.1741 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.41
tail_b.1742 :
	sub.s	%f0 %f1 %f6
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.65
	mul.s	%f6 %f0 %f1
	mul.s	%f7 %f5 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f6 %f8 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.41
branching_b.1097 :
	ilw.s	%r0 %f0 l.59
	fbg	%f5 %f0 tail_b.1744
tail_b.1743 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f1 l.61
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.62
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.56
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.41
tail_b.1744 :
	sub.s	%f5 %f1 %f5
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
	ilw.s	%r0 %f7 l.56
	mul.s	%f5 %f7 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.41
branching_b.1098 :
	ilw.s	%r0 %f7 l.56
	ilw.s	%r0 %f5 l.57
	fbg	%f5 %f0 branching_b.1100
branching_b.1099 :
	sub.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.1746
tail_b.1745 :
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
	mul.s	%f8 %f0 %f0
	j	postloop_b.41
tail_b.1746 :
	sub.s	%f0 %f5 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f5
	ilw.s	%r0 %f1 l.63
	mul.s	%f0 %f1 %f9
	ilw.s	%r0 %f1 l.64
	mul.s	%f0 %f1 %f6
	mul.s	%f5 %f9 %f1
	add.s	%f1 %f6 %f9
	ilw.s	%r0 %f1 l.65
	mul.s	%f0 %f1 %f6
	mul.s	%f5 %f9 %f1
	add.s	%f1 %f6 %f1
	mul.s	%f0 %f7 %f6
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.41
branching_b.1100 :
	ilw.s	%r0 %f1 l.59
	fbg	%f0 %f1 tail_b.1748
tail_b.1747 :
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
	add.s	%f0 %f7 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.41
tail_b.1748 :
	sub.s	%f0 %f5 %f6
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f6 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f6 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f7 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.41
preloop_b.41 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.74
	mul.s	%f1 %f0 %f5
sin_loop.7 :
	ilw.s	%r0 %f1 l.54
	ilw.s	%r0 %f0 l.55
	fbg	%f0 %f5 branching_b.1083
tail_b.1728 :
	sub.s	%f0 %f5 %f5
	j	sin_loop.7
branching_b.1083 :
	fbge	%f5 %f3 branching_b.1084
tail_b.1729 :
	add.s	%f0 %f5 %f5
	j	sin_loop.7
branching_b.1084 :
	fbg	%f1 %f5 branching_b.1088
branching_b.1085 :
	sub.s	%f1 %f5 %f5
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f5 branching_b.1087
branching_b.1086 :
	sub.s	%f5 %f1 %f7
	ilw.s	%r0 %f1 l.59
	fbg	%f7 %f1 tail_b.1731
tail_b.1730 :
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.63
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.64
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.65
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.56
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.40
tail_b.1731 :
	sub.s	%f7 %f0 %f0
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
	j	postloop_b.40
branching_b.1087 :
	ilw.s	%r0 %f1 l.59
	fbg	%f5 %f1 tail_b.1733
tail_b.1732 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f7 l.64
	mul.s	%f5 %f7 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.65
	mul.s	%f5 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.56
	mul.s	%f5 %f0 %f0
	mul.s	%f1 %f7 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.40
tail_b.1733 :
	sub.s	%f5 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.60
	ilw.s	%r0 %f5 l.61
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.62
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.56
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.40
branching_b.1088 :
	ilw.s	%r0 %f6 l.56
	ilw.s	%r0 %f0 l.57
	fbg	%f0 %f5 branching_b.1090
branching_b.1089 :
	sub.s	%f5 %f1 %f5
	ilw.s	%r0 %f1 l.59
	fbg	%f5 %f1 tail_b.1735
tail_b.1734 :
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
	j	postloop_b.40
tail_b.1735 :
	sub.s	%f5 %f0 %f0
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
	j	postloop_b.40
branching_b.1090 :
	ilw.s	%r0 %f1 l.59
	fbg	%f5 %f1 tail_b.1737
tail_b.1736 :
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.63
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.64
	mul.s	%f5 %f0 %f1
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.65
	mul.s	%f5 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f5 %f6 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	j	postloop_b.40
tail_b.1737 :
	sub.s	%f5 %f0 %f0
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
	j	postloop_b.40
branching_b.1076 :
	lw.s	%r0 %f1 552
	lw	%r8 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f5 l.71
	mul.s	%f5 %f1 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f7 l.72
	mul.s	%f7 %f0 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f6 l.73
	fbge	%f0 %f6 tail_b.1720
tail_b.1719 :
	addi	%r0 %r1 1
	j	branching_b.1077
tail_b.1720 :
	addi	%r0 %r1 0
branching_b.1077 :
	lw.s	%r0 %f1 560
	lw	%r8 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sub.s	%f0 %f1 %f1
	mul.s	%f5 %f1 %f0
	floor.w.s	%f0 %f0
	mul.s	%f7 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f6 tail_b.1722
tail_b.1721 :
	addi	%r0 %r2 1
	j	branching_b.1078
tail_b.1722 :
	addi	%r0 %r2 0
branching_b.1078 :
	beq	%r1 %r0 branching_b.1079
branching_b.1080 :
	beq	%r2 %r0 tail_b.1725
tail_b.1726 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.1727
tail_b.1725 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1727
branching_b.1079 :
	beq	%r2 %r0 tail_b.1723
tail_b.1724 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1727
tail_b.1723 :
	ilw.s	%r0 %f0 l.52
tail_b.1727 :
	sw.s	%r0 %f0 584
	j	preloop_b.43
postloop_b.40 :
tail_b.1738 :
	mul.s	%f0 %f0 %f5
	ilw.s	%r0 %f1 l.52
	mul.s	%f5 %f1 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f5 %f0 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 584
	j	preloop_b.43
postloop_b.41 :
tail_b.1749 :
	mul.s	%f0 %f0 %f5
	ilw.s	%r0 %f1 l.52
	mul.s	%f1 %f5 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	j	preloop_b.43
branching_b.1103 :
	ilw.s	%r0 %f6 l.76
	fbge	%f0 %f6 tail_b.1753
tail_b.1752 :
	addi	%r0 %r1 1
	j	branching_b.1104
tail_b.1753 :
	addi	%r0 %r1 0
branching_b.1104 :
	beq	%r1 %r0 branching_b.1105
tail_b.1763 :
	ilw.s	%r0 %f1 l.78
	j	branching_b.1111
branching_b.1105 :
	div.s	%f5 %f8 %f5
	fbge	%f5 %f3 tail_b.1755
tail_b.1754 :
	neg.s	%f5 %f5
	j	branching_b.1106
tail_b.1755 :
branching_b.1106 :
	fbg	%f3 %f5 branching_b.1109
branching_b.1107 :
	ilw.s	%r0 %f0 l.80
	fbge	%f5 %f0 branching_b.1108
tail_b.1756 :
	ilw.s	%r0 %f9 l.56
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.1762
branching_b.1108 :
	ilw.s	%r0 %f0 l.81
	fbge	%f5 %f0 tail_b.1758
tail_b.1757 :
	ilw.s	%r0 %f8 l.56
	sub.s	%f8 %f5 %f1
	add.s	%f8 %f5 %f0
	div.s	%f0 %f1 %f10
	ilw.s	%r0 %f9 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f5
	mul.s	%f1 %f11 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f10 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f10 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f11
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f5
	mul.s	%f1 %f11 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.1762
tail_b.1758 :
	ilw.s	%r0 %f0 l.56
	div.s	%f5 %f0 %f8
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f5 l.89
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f8 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f10 %f0 %f1
	j	tail_b.1762
branching_b.1109 :
	neg.s	%f5 %f8
	ilw.s	%r0 %f0 l.80
	fbge	%f8 %f0 branching_b.1110
tail_b.1759 :
	ilw.s	%r0 %f9 l.58
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.82
	mul.s	%f8 %f1 %f5
	ilw.s	%r0 %f1 l.83
	mul.s	%f8 %f1 %f1
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f1 %f5
	ilw.s	%r0 %f1 l.84
	mul.s	%f8 %f1 %f1
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f1 %f1
	ilw.s	%r0 %f5 l.85
	mul.s	%f8 %f5 %f5
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f10
	ilw.s	%r0 %f1 l.86
	mul.s	%f8 %f1 %f5
	mul.s	%f0 %f10 %f1
	add.s	%f1 %f5 %f1
	ilw.s	%r0 %f5 l.87
	mul.s	%f8 %f5 %f5
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.1762
branching_b.1110 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 tail_b.1761
tail_b.1760 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f8 %f0
	add.s	%f1 %f8 %f1
	div.s	%f1 %f0 %f8
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f1 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f8 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f11
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f5
	mul.s	%f9 %f11 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f8 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f1
	j	tail_b.1762
tail_b.1761 :
	ilw.s	%r0 %f1 l.56
	div.s	%f8 %f1 %f9
	ilw.s	%r0 %f5 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f11
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f8 l.83
	mul.s	%f9 %f8 %f8
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f11 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f11 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f10
	mul.s	%f11 %f8 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f8 l.87
	mul.s	%f9 %f8 %f8
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f1
tail_b.1762 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f1 %f1
branching_b.1111 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f1
	lw.s	%r0 %f0 556
	lw	%r8 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f5 0
	sub.s	%f5 %f0 %f5
	lw	%r8 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f5 %f5
	fbge	%f7 %f3 tail_b.1765
tail_b.1764 :
	neg.s	%f7 %f0
	j	branching_b.1112
tail_b.1765 :
	mov.s	%f7 %f0
branching_b.1112 :
	fbge	%f0 %f6 tail_b.1767
tail_b.1766 :
	addi	%r0 %r1 1
	j	branching_b.1113
tail_b.1767 :
	addi	%r0 %r1 0
branching_b.1113 :
	beq	%r1 %r0 branching_b.1114
tail_b.1777 :
	ilw.s	%r0 %f5 l.78
	j	branching_b.1120
branching_b.1114 :
	div.s	%f7 %f5 %f7
	fbge	%f7 %f3 tail_b.1769
tail_b.1768 :
	neg.s	%f7 %f7
	j	branching_b.1115
tail_b.1769 :
branching_b.1115 :
	fbg	%f3 %f7 branching_b.1118
branching_b.1116 :
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1117
tail_b.1770 :
	ilw.s	%r0 %f6 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f8
	mul.s	%f9 %f5 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f7 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f7 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f7 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.1776
branching_b.1117 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.1772
tail_b.1771 :
	ilw.s	%r0 %f5 l.56
	sub.s	%f5 %f7 %f6
	add.s	%f5 %f7 %f0
	div.s	%f0 %f6 %f7
	ilw.s	%r0 %f8 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.84
	mul.s	%f7 %f6 %f6
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f7 %f6 %f6
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.1776
tail_b.1772 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f7
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f9 l.89
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f7 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f10
	mul.s	%f8 %f5 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f7 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f7 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.1776
branching_b.1118 :
	neg.s	%f7 %f0
	ilw.s	%r0 %f5 l.80
	fbge	%f0 %f5 branching_b.1119
tail_b.1773 :
	ilw.s	%r0 %f7 l.58
	neg.s	%f0 %f5
	mul.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.82
	mul.s	%f0 %f6 %f8
	ilw.s	%r0 %f6 l.83
	mul.s	%f0 %f6 %f6
	mul.s	%f5 %f8 %f8
	add.s	%f8 %f6 %f6
	ilw.s	%r0 %f8 l.84
	mul.s	%f0 %f8 %f8
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f8 %f6
	ilw.s	%r0 %f8 l.85
	mul.s	%f0 %f8 %f8
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f8 %f8
	ilw.s	%r0 %f6 l.86
	mul.s	%f0 %f6 %f9
	mul.s	%f5 %f8 %f6
	add.s	%f6 %f9 %f6
	ilw.s	%r0 %f8 l.87
	mul.s	%f0 %f8 %f8
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f8 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.1776
branching_b.1119 :
	ilw.s	%r0 %f5 l.81
	fbge	%f0 %f5 tail_b.1775
tail_b.1774 :
	ilw.s	%r0 %f5 l.56
	sub.s	%f5 %f0 %f6
	add.s	%f5 %f0 %f0
	div.s	%f0 %f6 %f8
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f6 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f7 l.83
	mul.s	%f8 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f10 %f7 %f7
	add.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f7
	mul.s	%f10 %f9 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f8 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f10 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.1776
tail_b.1775 :
	ilw.s	%r0 %f9 l.56
	div.s	%f0 %f9 %f8
	ilw.s	%r0 %f10 l.89
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f6 l.83
	mul.s	%f8 %f6 %f6
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f6
	mul.s	%f5 %f7 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f8 %f6 %f6
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f7
	mul.s	%f5 %f6 %f0
	add.s	%f0 %f7 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f7
	mul.s	%f5 %f6 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f9 %f0 %f0
tail_b.1776 :
	ilw.s	%r0 %f5 l.88
	mul.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f5 %f5
branching_b.1120 :
	floor.w.s	%f5 %f0
	sub.s	%f0 %f5 %f5
	ilw.s	%r0 %f6 l.90
	ilw.s	%r0 %f7 l.62
	sub.s	%f1 %f7 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f6 %f0
	sub.s	%f5 %f7 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	fbge	%f0 %f3 tail_b.1779
tail_b.1778 :
	addi	%r0 %r1 1
	j	branching_b.1121
tail_b.1779 :
	addi	%r0 %r1 0
branching_b.1121 :
	beq	%r1 %r0 tail_b.1780
tail_b.1781 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1782
tail_b.1780 :
tail_b.1782 :
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.91
	div.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
preloop_b.43 :
	lw	%r0 %r9 536
	mov	%r5 %r11
	addi	%r0 %r10 -1
shadow_check_one_or_matrix_loop.1 :
	slli	%r11 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r12 0
	mov	%r12 %r1
	lw	%r1 %r1 0
	beq	%r1 %r10 tail_b.1784
branching_b.1123 :
	addi	%r0 %r2 99
	beq	%r1 %r2 tail_b.1785
branching_b.1124 :
	slli	%r1 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r13 0
	lw.s	%r0 %f1 552
	lw	%r13 %r2 20
	lw.s	%r2 %f0 0
	sub.s	%f0 %f1 %f8
	lw.s	%r0 %f0 556
	lw	%r13 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f7
	lw.s	%r0 %f1 560
	lw	%r13 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sub.s	%f0 %f1 %f5
	slli	%r1 %r1 2
	addi	%r1 %r1 748
	lw	%r1 %r2 0
	lw	%r13 %r1 4
	beq	%r1 %r7 branching_b.1125
branching_b.1152 :
	addi	%r0 %r14 2
	beq	%r1 %r14 branching_b.1153
branching_b.1155 :
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	fbne	%f1 %f3 tail_b.1837
tail_b.1836 :
	addi	%r0 %r1 1
	j	branching_b.1156
tail_b.1837 :
	addi	%r0 %r1 0
	j	branching_b.1156
branching_b.1153 :
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f3 tail_b.1833
tail_b.1832 :
	addi	%r0 %r1 1
	j	branching_b.1154
tail_b.1833 :
	addi	%r0 %r1 0
	j	branching_b.1154
branching_b.1125 :
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	sub.s	%f8 %f0 %f1
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f0 740
	mul.s	%f0 %f1 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f3 tail_b.1787
tail_b.1786 :
	neg.s	%f0 %f0
	j	branching_b.1126
tail_b.1787 :
	j	branching_b.1126
tail_b.1785 :
	addi	%r0 %r1 1
	j	branching_b.1166
tail_b.1784 :
	addi	%r0 %r1 0
postloop_b.42 :
branching_b.1168 :
	beq	%r1 %r0 branching_b.1169
tail_b.1863 :
	j	tail_b.1864
branching_b.1169 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f4
	lw.s	%r0 %f0 572
	lw.s	%r0 %f1 316
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	lw.s	%r0 %f4 576
	lw.s	%r0 %f1 320
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	fbge	%f3 %f0 tail_b.1859
tail_b.1858 :
	addi	%r0 %r1 1
	j	branching_b.1170
tail_b.1859 :
	addi	%r0 %r1 0
branching_b.1170 :
	beq	%r1 %r0 tail_b.1860
tail_b.1861 :
	j	tail_b.1862
tail_b.1860 :
	ilw.s	%r0 %f0 l.51
tail_b.1862 :
	mul.s	%f0 %f2 %f0
	lw	%r8 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f2
	lw.s	%r0 %f1 592
	lw.s	%r0 %f0 580
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f0 596
	lw.s	%r0 %f1 584
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	lw.s	%r0 %f0 588
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	j	tail_b.1864
branching_b.1166 :
	beq	%r1 %r0 tail_b.1855
branching_b.1167 :
	addi	%r0 %r1 1
	sw	%r26 %r3 -220
	sw	%r26 %r4 -224
	sw	%r26 %r5 -228
	sw	%r26 %r6 -232
	sw.s	%r26 %f3 -236
	sw.s	%r26 %f2 -240
	sw.s	%r26 %f4 -244
	sw	%r26 %r8 -248
	sw	%r26 %r7 -252
	sw	%r26 %r9 -256
	sw	%r26 %r10 -260
	sw	%r26 %r11 -264
	mov	%r12 %r2
	sw	%r26 %r28 -268
	addi	%r26 %r26 -272
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 272
	lw	%r26 %r28 -268
	lw	%r26 %r3 -220
	lw	%r26 %r4 -224
	lw	%r26 %r5 -228
	lw	%r26 %r6 -232
	lw.s	%r26 %f3 -236
	lw.s	%r26 %f2 -240
	lw.s	%r26 %f4 -244
	lw	%r26 %r8 -248
	lw	%r26 %r7 -252
	lw	%r26 %r9 -256
	lw	%r26 %r10 -260
	lw	%r26 %r11 -264
	beq	%r1 %r0 tail_b.1856
tail_b.1857 :
	addi	%r0 %r1 1
	j	postloop_b.42
tail_b.1856 :
	addi	%r11 %r1 1
	mov	%r1 %r11
	j	shadow_check_one_or_matrix_loop.1
tail_b.1855 :
	addi	%r11 %r1 1
	mov	%r1 %r11
	j	shadow_check_one_or_matrix_loop.1
branching_b.1126 :
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.1789
tail_b.1788 :
	addi	%r0 %r1 1
	j	branching_b.1127
tail_b.1789 :
	addi	%r0 %r1 0
branching_b.1127 :
	beq	%r1 %r0 tail_b.1790
branching_b.1128 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.1792
tail_b.1791 :
	neg.s	%f0 %f0
	j	branching_b.1129
tail_b.1792 :
	j	branching_b.1129
tail_b.1790 :
	addi	%r0 %r1 0
branching_b.1133 :
	beq	%r1 %r0 branching_b.1134
tail_b.1831 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 1
	j	branching_b.1162
branching_b.1134 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f7 %f0 %f0
	addi	%r2 %r1 12
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f6
	lw.s	%r0 %f0 736
	mul.s	%f0 %f6 %f0
	add.s	%f8 %f0 %f1
	fbge	%f1 %f3 tail_b.1801
tail_b.1800 :
	neg.s	%f1 %f1
	j	branching_b.1135
tail_b.1801 :
branching_b.1135 :
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1803
tail_b.1802 :
	addi	%r0 %r1 1
	j	branching_b.1136
tail_b.1803 :
	addi	%r0 %r1 0
branching_b.1136 :
	beq	%r1 %r0 tail_b.1804
branching_b.1137 :
	lw.s	%r0 %f0 744
	mul.s	%f0 %f6 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.1806
tail_b.1805 :
	neg.s	%f0 %f0
	j	branching_b.1138
tail_b.1806 :
	j	branching_b.1138
tail_b.1804 :
	addi	%r0 %r1 0
branching_b.1142 :
	beq	%r1 %r0 branching_b.1143
tail_b.1830 :
	sw.s	%r0 %f6 540
	addi	%r0 %r1 2
	j	branching_b.1162
branching_b.1143 :
	addi	%r2 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f1
	addi	%r2 %r1 20
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	lw.s	%r0 %f1 736
	mul.s	%f1 %f0 %f1
	add.s	%f8 %f1 %f5
	fbge	%f5 %f3 tail_b.1815
tail_b.1814 :
	neg.s	%f5 %f5
	j	branching_b.1144
tail_b.1815 :
branching_b.1144 :
	lw	%r13 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f5 %f1 tail_b.1817
tail_b.1816 :
	addi	%r0 %r1 1
	j	branching_b.1145
tail_b.1817 :
	addi	%r0 %r1 0
branching_b.1145 :
	beq	%r1 %r0 tail_b.1818
branching_b.1146 :
	lw.s	%r0 %f1 740
	mul.s	%f1 %f0 %f1
	add.s	%f7 %f1 %f1
	fbge	%f1 %f3 tail_b.1820
tail_b.1819 :
	neg.s	%f1 %f5
	j	branching_b.1147
tail_b.1820 :
	mov.s	%f1 %f5
	j	branching_b.1147
tail_b.1818 :
	addi	%r0 %r1 0
branching_b.1151 :
	beq	%r1 %r0 tail_b.1828
tail_b.1829 :
	sw.s	%r0 %f0 540
	addi	%r0 %r1 3
	j	branching_b.1162
tail_b.1828 :
	addi	%r0 %r1 0
	j	branching_b.1162
branching_b.1147 :
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	fbge	%f5 %f1 tail_b.1822
tail_b.1821 :
	addi	%r0 %r1 1
	j	branching_b.1148
tail_b.1822 :
	addi	%r0 %r1 0
branching_b.1148 :
	beq	%r1 %r0 tail_b.1823
branching_b.1149 :
	addi	%r2 %r1 20
	lw.s	%r1 %f1 0
	fbne	%f1 %f3 tail_b.1825
tail_b.1824 :
	addi	%r0 %r1 1
	j	branching_b.1150
tail_b.1825 :
	addi	%r0 %r1 0
	j	branching_b.1150
tail_b.1823 :
	addi	%r0 %r1 0
	j	branching_b.1151
branching_b.1150 :
	beq	%r1 %r0 tail_b.1826
tail_b.1827 :
	addi	%r0 %r1 0
	j	branching_b.1151
tail_b.1826 :
	addi	%r0 %r1 1
	j	branching_b.1151
branching_b.1138 :
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.1808
tail_b.1807 :
	addi	%r0 %r1 1
	j	branching_b.1139
tail_b.1808 :
	addi	%r0 %r1 0
branching_b.1139 :
	beq	%r1 %r0 tail_b.1809
branching_b.1140 :
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1811
tail_b.1810 :
	addi	%r0 %r1 1
	j	branching_b.1141
tail_b.1811 :
	addi	%r0 %r1 0
	j	branching_b.1141
tail_b.1809 :
	addi	%r0 %r1 0
	j	branching_b.1142
branching_b.1141 :
	beq	%r1 %r0 tail_b.1812
tail_b.1813 :
	addi	%r0 %r1 0
	j	branching_b.1142
tail_b.1812 :
	addi	%r0 %r1 1
	j	branching_b.1142
branching_b.1162 :
	bne	%r1 %r0 branching_b.1163
tail_b.1854 :
	addi	%r0 %r1 0
	j	branching_b.1166
branching_b.1163 :
	lw.s	%r0 %f0 540
	fbge	%f0 %f4 tail_b.1850
tail_b.1849 :
	addi	%r0 %r1 1
	j	branching_b.1164
tail_b.1850 :
	addi	%r0 %r1 0
branching_b.1164 :
	beq	%r1 %r0 tail_b.1851
branching_b.1165 :
	addi	%r0 %r1 1
	sw	%r26 %r3 -268
	sw	%r26 %r4 -272
	sw	%r26 %r5 -276
	sw	%r26 %r6 -280
	sw.s	%r26 %f3 -284
	sw.s	%r26 %f2 -288
	sw.s	%r26 %f4 -292
	sw	%r26 %r8 -296
	sw	%r26 %r7 -300
	sw	%r26 %r9 -304
	sw	%r26 %r10 -308
	sw	%r26 %r11 -312
	sw	%r26 %r12 -316
	mov	%r12 %r2
	sw	%r26 %r28 -320
	addi	%r26 %r26 -324
	jal	shadow_check_one_or_group.0
	addi	%r26 %r26 324
	lw	%r26 %r28 -320
	lw	%r26 %r3 -268
	lw	%r26 %r4 -272
	lw	%r26 %r5 -276
	lw	%r26 %r6 -280
	lw.s	%r26 %f3 -284
	lw.s	%r26 %f2 -288
	lw.s	%r26 %f4 -292
	lw	%r26 %r8 -296
	lw	%r26 %r7 -300
	lw	%r26 %r9 -304
	lw	%r26 %r10 -308
	lw	%r26 %r11 -312
	lw	%r26 %r12 -316
	beq	%r1 %r0 tail_b.1852
tail_b.1853 :
	addi	%r0 %r1 1
	j	branching_b.1166
tail_b.1852 :
	addi	%r0 %r1 0
	j	branching_b.1166
tail_b.1851 :
	addi	%r0 %r1 0
	j	branching_b.1166
branching_b.1129 :
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.1794
tail_b.1793 :
	addi	%r0 %r1 1
	j	branching_b.1130
tail_b.1794 :
	addi	%r0 %r1 0
branching_b.1130 :
	beq	%r1 %r0 tail_b.1795
branching_b.1131 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1797
tail_b.1796 :
	addi	%r0 %r1 1
	j	branching_b.1132
tail_b.1797 :
	addi	%r0 %r1 0
	j	branching_b.1132
tail_b.1795 :
	addi	%r0 %r1 0
	j	branching_b.1133
branching_b.1132 :
	beq	%r1 %r0 tail_b.1798
tail_b.1799 :
	addi	%r0 %r1 0
	j	branching_b.1133
tail_b.1798 :
	addi	%r0 %r1 1
	j	branching_b.1133
branching_b.1154 :
	beq	%r1 %r0 tail_b.1834
tail_b.1835 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f0
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.1162
tail_b.1834 :
	addi	%r0 %r1 0
	j	branching_b.1162
branching_b.1156 :
	beq	%r1 %r0 branching_b.1157
tail_b.1848 :
	addi	%r0 %r1 0
	j	branching_b.1162
branching_b.1157 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f8 %f0 %f6
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f6
	addi	%r2 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f6 %f10
	mul.s	%f8 %f8 %f0
	lw	%r13 %r1 16
	lw.s	%r1 %f6 0
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f7 %f6
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f9 0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f0 %f6
	mul.s	%f5 %f5 %f0
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f9 0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f9
	lw	%r13 %r1 12
	beq	%r1 %r0 tail_b.1838
tail_b.1839 :
	mul.s	%f5 %f7 %f6
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f5 %f5
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f6 0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f5
	mul.s	%f7 %f8 %f6
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f5 %f5
	j	branching_b.1158
tail_b.1838 :
	mov.s	%f9 %f5
branching_b.1158 :
	lw	%r13 %r14 4
	addi	%r0 %r1 3
	beq	%r14 %r1 tail_b.1840
tail_b.1841 :
	mov.s	%f5 %f0
	j	branching_b.1159
tail_b.1840 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f5 %f0
branching_b.1159 :
	mul.s	%f10 %f10 %f5
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f5 %f0
	fbge	%f3 %f0 tail_b.1843
tail_b.1842 :
	addi	%r0 %r1 1
	j	branching_b.1160
tail_b.1843 :
	addi	%r0 %r1 0
branching_b.1160 :
	beq	%r1 %r0 tail_b.1844
branching_b.1161 :
	lw	%r13 %r1 24
	beq	%r1 %r0 tail_b.1845
tail_b.1846 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f10 %f1
	addi	%r2 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1847
tail_b.1845 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f10 %f1
	addi	%r2 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1847
tail_b.1844 :
	addi	%r0 %r1 0
	j	branching_b.1162
tail_b.1847 :
	addi	%r0 %r1 1
	j	branching_b.1162
branching_b.1072 :
	lw	%r8 %r2 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f1 572
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r0 %f1 576
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f3 tail_b.1714
tail_b.1713 :
	addi	%r0 %r1 1
	j	branching_b.1073
tail_b.1714 :
	addi	%r0 %r1 0
branching_b.1073 :
	beq	%r1 %r0 branching_b.1074
tail_b.1717 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.1718
branching_b.1074 :
	beq	%r2 %r0 tail_b.1715
tail_b.1716 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f1
	j	tail_b.1718
tail_b.1715 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f1
tail_b.1718 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1075
tail_b.1695 :
	addi	%r8 %r8 1
	j	trace_or_matrix_fast_loop.1
branching_b.1024 :
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1634
tail_b.1633 :
	addi	%r0 %r1 1
	j	branching_b.1025
tail_b.1634 :
	addi	%r0 %r1 0
branching_b.1025 :
	beq	%r1 %r0 tail_b.1635
branching_b.1026 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f7 %f0 %f1
	fbge	%f1 %f3 tail_b.1637
tail_b.1636 :
	neg.s	%f1 %f1
	j	branching_b.1027
tail_b.1637 :
	j	branching_b.1027
tail_b.1635 :
	addi	%r0 %r1 0
branching_b.1031 :
	beq	%r1 %r0 branching_b.1032
tail_b.1676 :
	sw.s	%r0 %f6 540
	addi	%r0 %r1 1
	j	branching_b.1058
branching_b.1032 :
	addi	%r12 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f5 %f0 %f1
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f3 tail_b.1646
tail_b.1645 :
	neg.s	%f0 %f0
	j	branching_b.1033
tail_b.1646 :
branching_b.1033 :
	lw	%r13 %r1 16
	lw.s	%r1 %f6 0
	fbge	%f0 %f6 tail_b.1648
tail_b.1647 :
	addi	%r0 %r1 1
	j	branching_b.1034
tail_b.1648 :
	addi	%r0 %r1 0
branching_b.1034 :
	beq	%r1 %r0 tail_b.1649
branching_b.1035 :
	addi	%r2 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f7 %f0 %f0
	fbge	%f0 %f3 tail_b.1651
tail_b.1650 :
	neg.s	%f0 %f6
	j	branching_b.1036
tail_b.1651 :
	mov.s	%f0 %f6
	j	branching_b.1036
tail_b.1649 :
	addi	%r0 %r1 0
branching_b.1040 :
	beq	%r1 %r0 branching_b.1041
tail_b.1675 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 2
	j	branching_b.1058
branching_b.1041 :
	addi	%r12 %r1 16
	lw.s	%r1 %f0 0
	sub.s	%f7 %f0 %f1
	addi	%r12 %r1 20
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	fbge	%f0 %f3 tail_b.1660
tail_b.1659 :
	neg.s	%f0 %f0
	j	branching_b.1042
tail_b.1660 :
branching_b.1042 :
	lw	%r13 %r1 16
	lw.s	%r1 %f4 0
	fbge	%f0 %f4 tail_b.1662
tail_b.1661 :
	addi	%r0 %r1 1
	j	branching_b.1043
tail_b.1662 :
	addi	%r0 %r1 0
branching_b.1043 :
	beq	%r1 %r0 tail_b.1663
branching_b.1044 :
	addi	%r2 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.1665
tail_b.1664 :
	neg.s	%f0 %f0
	j	branching_b.1045
tail_b.1665 :
	j	branching_b.1045
tail_b.1663 :
	addi	%r0 %r1 0
branching_b.1049 :
	beq	%r1 %r0 tail_b.1673
tail_b.1674 :
	sw.s	%r0 %f1 540
	addi	%r0 %r1 3
	j	branching_b.1058
tail_b.1673 :
	addi	%r0 %r1 0
	j	branching_b.1058
branching_b.1045 :
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	fbge	%f0 %f4 tail_b.1667
tail_b.1666 :
	addi	%r0 %r1 1
	j	branching_b.1046
tail_b.1667 :
	addi	%r0 %r1 0
branching_b.1046 :
	beq	%r1 %r0 tail_b.1668
branching_b.1047 :
	addi	%r12 %r1 20
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1670
tail_b.1669 :
	addi	%r0 %r1 1
	j	branching_b.1048
tail_b.1670 :
	addi	%r0 %r1 0
	j	branching_b.1048
tail_b.1668 :
	addi	%r0 %r1 0
	j	branching_b.1049
branching_b.1048 :
	beq	%r1 %r0 tail_b.1671
tail_b.1672 :
	addi	%r0 %r1 0
	j	branching_b.1049
tail_b.1671 :
	addi	%r0 %r1 1
	j	branching_b.1049
branching_b.1036 :
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f6 %f0 tail_b.1653
tail_b.1652 :
	addi	%r0 %r1 1
	j	branching_b.1037
tail_b.1653 :
	addi	%r0 %r1 0
branching_b.1037 :
	beq	%r1 %r0 tail_b.1654
branching_b.1038 :
	addi	%r12 %r1 12
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1656
tail_b.1655 :
	addi	%r0 %r1 1
	j	branching_b.1039
tail_b.1656 :
	addi	%r0 %r1 0
	j	branching_b.1039
tail_b.1654 :
	addi	%r0 %r1 0
	j	branching_b.1040
branching_b.1039 :
	beq	%r1 %r0 tail_b.1657
tail_b.1658 :
	addi	%r0 %r1 0
	j	branching_b.1040
tail_b.1657 :
	addi	%r0 %r1 1
	j	branching_b.1040
branching_b.1058 :
	bne	%r1 %r0 branching_b.1059
tail_b.1694 :
	j	tail_b.1695
branching_b.1059 :
	lw.s	%r0 %f1 540
	lw.s	%r0 %f0 548
	fbge	%f1 %f0 tail_b.1691
tail_b.1690 :
	addi	%r0 %r1 1
	j	branching_b.1060
tail_b.1691 :
	addi	%r0 %r1 0
branching_b.1060 :
	beq	%r1 %r0 tail_b.1692
tail_b.1693 :
	addi	%r0 %r1 1
	sw	%r26 %r3 -320
	sw	%r26 %r4 -324
	sw	%r26 %r5 -328
	sw	%r26 %r6 -332
	sw.s	%r26 %f3 -336
	sw	%r26 %r7 -340
	sw.s	%r26 %f2 -344
	sw	%r26 %r9 -348
	sw	%r26 %r10 -352
	sw	%r26 %r8 -356
	mov	%r7 %r3
	mov	%r11 %r2
	sw	%r26 %r28 -360
	addi	%r26 %r26 -364
	jal	solve_one_or_network_fast.0
	addi	%r26 %r26 364
	lw	%r26 %r28 -360
	lw	%r26 %r3 -320
	lw	%r26 %r4 -324
	lw	%r26 %r5 -328
	lw	%r26 %r6 -332
	lw.s	%r26 %f3 -336
	lw	%r26 %r7 -340
	lw.s	%r26 %f2 -344
	lw	%r26 %r9 -348
	lw	%r26 %r10 -352
	lw	%r26 %r8 -356
	j	tail_b.1695
tail_b.1692 :
	j	tail_b.1695
branching_b.1027 :
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f1 %f0 tail_b.1639
tail_b.1638 :
	addi	%r0 %r1 1
	j	branching_b.1028
tail_b.1639 :
	addi	%r0 %r1 0
branching_b.1028 :
	beq	%r1 %r0 tail_b.1640
branching_b.1029 :
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1642
tail_b.1641 :
	addi	%r0 %r1 1
	j	branching_b.1030
tail_b.1642 :
	addi	%r0 %r1 0
	j	branching_b.1030
tail_b.1640 :
	addi	%r0 %r1 0
	j	branching_b.1031
branching_b.1030 :
	beq	%r1 %r0 tail_b.1643
tail_b.1644 :
	addi	%r0 %r1 0
	j	branching_b.1031
tail_b.1643 :
	addi	%r0 %r1 1
	j	branching_b.1031
branching_b.1052 :
	beq	%r1 %r0 tail_b.1679
tail_b.1680 :
	lw.s	%r12 %f1 0
	addi	%r14 %r1 12
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	addi	%r0 %r1 1
	j	branching_b.1058
tail_b.1679 :
	addi	%r0 %r1 0
	j	branching_b.1058
branching_b.1054 :
	beq	%r1 %r0 branching_b.1055
tail_b.1689 :
	addi	%r0 %r1 0
	j	branching_b.1058
branching_b.1055 :
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	addi	%r12 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f0 %f0
	addi	%r12 %r1 12
	lw.s	%r1 %f4 0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f4
	addi	%r14 %r1 12
	lw.s	%r1 %f5 0
	mul.s	%f4 %f4 %f0
	mul.s	%f5 %f1 %f1
	sub.s	%f1 %f0 %f0
	fbge	%f3 %f0 tail_b.1684
tail_b.1683 :
	addi	%r0 %r1 1
	j	branching_b.1056
tail_b.1684 :
	addi	%r0 %r1 0
branching_b.1056 :
	beq	%r1 %r0 tail_b.1685
branching_b.1057 :
	lw	%r13 %r1 24
	beq	%r1 %r0 tail_b.1686
tail_b.1687 :
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f1
	addi	%r12 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1688
tail_b.1686 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f0
	addi	%r12 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 540
	j	tail_b.1688
tail_b.1685 :
	addi	%r0 %r1 0
	j	branching_b.1058
tail_b.1688 :
	addi	%r0 %r1 1
	j	branching_b.1058
postloop_b.43 :
return_point.17 :
	retl
do_without_neighbors.0 :
	mov	%r1 %r4
preloop_b.44 :
	mov	%r2 %r6
	addi	%r0 %r5 4
do_without_neighbors_loop.0 :
	ble	%r6 %r5 branching_b.1172
tail_b.2680 :
	j	postloop_b.54
branching_b.1172 :
	lw	%r4 %r2 8
	slli	%r6 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	ble	%r0 %r1 branching_b.1173
tail_b.2679 :
	j	postloop_b.54
branching_b.1173 :
	lw	%r4 %r2 12
	slli	%r6 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r0 tail_b.1866
branching_b.1174 :
	lw	%r4 %r2 20
	lw	%r4 %r3 28
	lw	%r4 %r8 4
	lw	%r4 %r7 16
	slli	%r6 %r1 2
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
	lw	%r4 %r1 24
	lw	%r1 %r9 0
	slli	%r6 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r3 0
	slli	%r6 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r10 0
	bne	%r9 %r0 preloop_b.45
tail_b.2028 :
	j	branching_b.1275
preloop_b.45 :
	lw	%r0 %r8 716
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r12
setup_startp_constants_loop.6 :
	ble	%r0 %r12 branching_b.1176
tail_b.1875 :
	j	postloop_b.44
branching_b.1176 :
	slli	%r12 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r13 0
	lw	%r13 %r2 40
	lw	%r13 %r11 4
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	mov	%r2 %r1
	sw.s	%r1 %f0 0
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	beq	%r11 %r1 tail_b.1867
branching_b.1177 :
	bl	%r1 %r11 branching_b.1178
tail_b.1873 :
	j	tail_b.1874
branching_b.1178 :
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	addi	%r2 %r1 4
	lw.s	%r1 %f4 0
	addi	%r2 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f1 %f1 %f2
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	mul.s	%f4 %f4 %f5
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f3 %f3 %f0
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	lw	%r13 %r1 12
	beq	%r1 %r0 tail_b.1868
tail_b.1869 :
	mul.s	%f3 %f4 %f2
	lw	%r13 %r1 36
	lw.s	%r1 %f5 0
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f5
	mul.s	%f1 %f3 %f0
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f5 %f2
	mul.s	%f4 %f1 %f1
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	j	branching_b.1179
tail_b.1868 :
	j	branching_b.1179
tail_b.1867 :
	lw	%r13 %r1 16
	mov	%r2 %r11
	lw.s	%r11 %f1 0
	addi	%r2 %r11 4
	lw.s	%r11 %f3 0
	addi	%r2 %r11 8
	lw.s	%r11 %f2 0
	mov	%r1 %r11
	lw.s	%r11 %f0 0
	mul.s	%f1 %f0 %f1
	addi	%r1 %r11 4
	lw.s	%r11 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r2 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.1874
tail_b.1866 :
tail_b.2678 :
	addi	%r6 %r6 1
	j	do_without_neighbors_loop.0
branching_b.1179 :
	addi	%r0 %r1 3
	beq	%r11 %r1 tail_b.1870
tail_b.1871 :
	j	tail_b.1872
tail_b.1870 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f0 %f0
tail_b.1872 :
	addi	%r2 %r1 12
	sw.s	%r1 %f0 0
tail_b.1874 :
	addi	%r12 %r12 -1
	j	setup_startp_constants_loop.6
postloop_b.44 :
preloop_b.46 :
	addi	%r0 %r11 118
iter_trace_diffuse_rays_loop.6 :
	ble	%r0 %r11 branching_b.1181
tail_b.2027 :
	j	postloop_b.45
branching_b.1181 :
	slli	%r11 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	mov	%r1 %r2
	lw.s	%r2 %f0 0
	mov	%r3 %r2
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r1 %r2 4
	lw.s	%r2 %f1 0
	addi	%r3 %r2 4
	lw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f2
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	addi	%r3 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f3 l.51
	fbge	%f0 %f3 tail_b.1877
tail_b.1876 :
	addi	%r0 %r1 1
	j	branching_b.1182
tail_b.1877 :
	addi	%r0 %r1 0
branching_b.1182 :
	beq	%r1 %r0 branching_b.1183
branching_b.1229 :
	addi	%r11 %r1 1
	slli	%r1 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r1 0
	ilw.s	%r0 %f1 l.93
	div.s	%f1 %f0 %f4
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r2 536
	sw	%r26 %r4 0
	sw	%r26 %r5 -4
	sw	%r26 %r6 -8
	sw	%r26 %r7 -12
	sw	%r26 %r9 -16
	sw	%r26 %r3 -20
	sw	%r26 %r10 -24
	sw	%r26 %r8 -28
	sw	%r26 %r11 -32
	sw.s	%r26 %f3 -36
	sw	%r26 %r1 -40
	sw.s	%r26 %f4 -44
	mov	%r1 %r3
	mov	%r0 %r1
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	mov	%r1 %r2
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.68
	lw	%r26 %r4 0
	lw	%r26 %r5 -4
	lw	%r26 %r6 -8
	lw	%r26 %r7 -12
	lw	%r26 %r9 -16
	lw	%r26 %r3 -20
	lw	%r26 %r10 -24
	lw	%r26 %r8 -28
	lw	%r26 %r11 -32
	lw.s	%r26 %f3 -36
	lw	%r26 %r1 -40
	lw.s	%r26 %f4 -44
	fbge	%f0 %f1 tail_b.1953
tail_b.1952 :
	addi	%r0 %r2 1
	j	branching_b.1230
tail_b.1953 :
	addi	%r0 %r2 0
	j	branching_b.1230
branching_b.1183 :
	slli	%r11 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r2 0
	ilw.s	%r0 %f1 l.94
	div.s	%f1 %f0 %f4
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r1 536
	sw	%r26 %r4 -48
	sw	%r26 %r5 -52
	sw	%r26 %r6 -56
	sw	%r26 %r7 -60
	sw	%r26 %r9 -64
	sw	%r26 %r3 -68
	sw	%r26 %r10 -72
	sw	%r26 %r8 -76
	sw	%r26 %r11 -80
	sw.s	%r26 %f3 -84
	sw	%r26 %r2 -88
	sw.s	%r26 %f4 -92
	mov	%r2 %r3
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -96
	addi	%r26 %r26 -100
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 100
	lw	%r26 %r28 -96
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f1 l.68
	lw	%r26 %r4 -48
	lw	%r26 %r5 -52
	lw	%r26 %r6 -56
	lw	%r26 %r7 -60
	lw	%r26 %r9 -64
	lw	%r26 %r3 -68
	lw	%r26 %r10 -72
	lw	%r26 %r8 -76
	lw	%r26 %r11 -80
	lw.s	%r26 %f3 -84
	lw	%r26 %r2 -88
	lw.s	%r26 %f4 -92
	fbge	%f1 %f0 tail_b.1879
tail_b.1878 :
	addi	%r0 %r1 1
	j	branching_b.1184
tail_b.1879 :
	addi	%r0 %r1 0
branching_b.1184 :
	beq	%r1 %r0 tail_b.1880
branching_b.1185 :
	ilw.s	%r0 %f1 l.70
	fbge	%f0 %f1 tail_b.1882
tail_b.1881 :
	addi	%r0 %r1 1
	j	branching_b.1186
tail_b.1882 :
	addi	%r0 %r1 0
	j	branching_b.1186
tail_b.1880 :
	addi	%r0 %r1 0
branching_b.1186 :
	beq	%r1 %r0 tail_b.1883
branching_b.1187 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r12 0
	lw	%r2 %r13 0
	lw	%r12 %r14 4
	addi	%r0 %r2 1
	beq	%r14 %r2 branching_b.1188
branching_b.1192 :
	addi	%r0 %r1 2
	beq	%r14 %r1 tail_b.1892
branching_b.1193 :
	lw.s	%r0 %f0 552
	lw	%r12 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f2
	lw.s	%r0 %f0 556
	lw	%r12 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r0 %f5 560
	lw	%r12 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f5 %f8
	lw	%r12 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f9
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f6
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f5
	lw	%r12 %r1 12
	beq	%r1 %r0 tail_b.1893
tail_b.1894 :
	lw	%r12 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r12 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f8 %f7
	add.s	%f7 %f1 %f1
	ilw.s	%r0 %f7 l.69
	div.s	%f7 %f1 %f1
	add.s	%f1 %f9 %f1
	sw.s	%r0 %f1 568
	lw	%r12 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f9
	lw	%r12 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f1
	add.s	%f1 %f9 %f1
	div.s	%f7 %f1 %f1
	add.s	%f1 %f6 %f1
	sw.s	%r0 %f1 572
	lw	%r12 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	lw	%r12 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	div.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1194
tail_b.1893 :
	sw.s	%r0 %f9 568
	sw.s	%r0 %f6 572
	sw.s	%r0 %f5 576
	j	branching_b.1194
tail_b.1892 :
	lw	%r12 %r1 16
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1197
branching_b.1188 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r14 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r13 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1885
tail_b.1884 :
	addi	%r0 %r1 1
	j	branching_b.1189
tail_b.1885 :
	addi	%r0 %r1 0
	j	branching_b.1189
tail_b.1883 :
tail_b.2026 :
	addi	%r11 %r11 -2
	j	iter_trace_diffuse_rays_loop.6
branching_b.1189 :
	beq	%r1 %r0 branching_b.1190
tail_b.1890 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1891
branching_b.1190 :
	fbge	%f3 %f0 tail_b.1887
tail_b.1886 :
	addi	%r0 %r1 1
	j	branching_b.1191
tail_b.1887 :
	addi	%r0 %r1 0
branching_b.1191 :
	beq	%r1 %r0 tail_b.1888
tail_b.1889 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.1891
tail_b.1888 :
	ilw.s	%r0 %f0 l.58
tail_b.1891 :
	neg.s	%f0 %f0
	slli	%r14 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1197 :
	lw	%r12 %r13 0
	lw	%r12 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 580
	lw	%r12 %r1 32
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 584
	lw	%r12 %r1 32
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 588
	beq	%r13 %r2 branching_b.1198
branching_b.1203 :
	addi	%r0 %r1 2
	beq	%r13 %r1 tail_b.1910
branching_b.1204 :
	addi	%r0 %r1 3
	beq	%r13 %r1 tail_b.1911
branching_b.1205 :
	beq	%r13 %r5 branching_b.1206
tail_b.1945 :
	j	branching_b.1226
branching_b.1206 :
	lw.s	%r0 %f0 552
	lw	%r12 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r12 %r1 16
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f2
	lw.s	%r0 %f0 560
	lw	%r12 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f6
	mul.s	%f2 %f2 %f0
	mul.s	%f6 %f6 %f1
	add.s	%f1 %f0 %f5
	fbge	%f2 %f3 tail_b.1913
tail_b.1912 :
	neg.s	%f2 %f0
	j	branching_b.1207
tail_b.1913 :
	mov.s	%f2 %f0
	j	branching_b.1207
tail_b.1911 :
	lw.s	%r0 %f0 552
	lw	%r12 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw.s	%r0 %f0 560
	lw	%r12 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f0
	mul.s	%f1 %f1 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.73
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	sw	%r26 %r4 -96
	sw	%r26 %r5 -100
	sw	%r26 %r6 -104
	sw	%r26 %r7 -108
	sw	%r26 %r9 -112
	sw	%r26 %r3 -116
	sw	%r26 %r10 -120
	sw	%r26 %r8 -124
	sw	%r26 %r11 -128
	sw.s	%r26 %f3 -132
	sw.s	%r26 %f4 -136
	sw	%r26 %r12 -140
	sw	%r26 %r28 -144
	addi	%r26 %r26 -148
	jal	cos.0
	addi	%r26 %r26 148
	lw	%r26 %r28 -144
	mul.s	%f0 %f0 %f2
	ilw.s	%r0 %f0 l.52
	mul.s	%f0 %f2 %f1
	sw.s	%r0 %f1 584
	ilw.s	%r0 %f1 l.56
	sub.s	%f2 %f1 %f1
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r4 -96
	lw	%r26 %r5 -100
	lw	%r26 %r6 -104
	lw	%r26 %r7 -108
	lw	%r26 %r9 -112
	lw	%r26 %r3 -116
	lw	%r26 %r10 -120
	lw	%r26 %r8 -124
	lw	%r26 %r11 -128
	lw.s	%r26 %f3 -132
	lw.s	%r26 %f4 -136
	lw	%r26 %r12 -140
	j	branching_b.1226
tail_b.1910 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.74
	mul.s	%f1 %f0 %f0
	sw	%r26 %r4 -144
	sw	%r26 %r5 -148
	sw	%r26 %r6 -152
	sw	%r26 %r7 -156
	sw	%r26 %r9 -160
	sw	%r26 %r3 -164
	sw	%r26 %r10 -168
	sw	%r26 %r8 -172
	sw	%r26 %r11 -176
	sw.s	%r26 %f3 -180
	sw.s	%r26 %f4 -184
	sw	%r26 %r12 -188
	sw	%r26 %r28 -192
	addi	%r26 %r26 -196
	jal	sin.0
	addi	%r26 %r26 196
	lw	%r26 %r28 -192
	mul.s	%f0 %f0 %f2
	ilw.s	%r0 %f0 l.52
	mul.s	%f2 %f0 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f1 l.56
	sub.s	%f2 %f1 %f1
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r4 -144
	lw	%r26 %r5 -148
	lw	%r26 %r6 -152
	lw	%r26 %r7 -156
	lw	%r26 %r9 -160
	lw	%r26 %r3 -164
	lw	%r26 %r10 -168
	lw	%r26 %r8 -172
	lw	%r26 %r11 -176
	lw.s	%r26 %f3 -180
	lw.s	%r26 %f4 -184
	lw	%r26 %r12 -188
	j	branching_b.1226
branching_b.1198 :
	lw.s	%r0 %f1 552
	lw	%r12 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f6 l.71
	mul.s	%f6 %f1 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f2 l.72
	mul.s	%f2 %f0 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f5 l.73
	fbge	%f0 %f5 tail_b.1902
tail_b.1901 :
	addi	%r0 %r2 1
	j	branching_b.1199
tail_b.1902 :
	addi	%r0 %r2 0
branching_b.1199 :
	lw.s	%r0 %f0 560
	lw	%r12 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	mul.s	%f6 %f1 %f0
	floor.w.s	%f0 %f0
	mul.s	%f2 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f5 tail_b.1904
tail_b.1903 :
	addi	%r0 %r1 1
	j	branching_b.1200
tail_b.1904 :
	addi	%r0 %r1 0
branching_b.1200 :
	beq	%r2 %r0 branching_b.1201
branching_b.1202 :
	beq	%r1 %r0 tail_b.1907
tail_b.1908 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.1909
tail_b.1907 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1909
branching_b.1201 :
	beq	%r1 %r0 tail_b.1905
tail_b.1906 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1909
tail_b.1905 :
	ilw.s	%r0 %f0 l.52
tail_b.1909 :
	sw.s	%r0 %f0 584
	j	branching_b.1226
branching_b.1207 :
	ilw.s	%r0 %f1 l.76
	fbge	%f0 %f1 tail_b.1915
tail_b.1914 :
	addi	%r0 %r1 1
	j	branching_b.1208
tail_b.1915 :
	addi	%r0 %r1 0
branching_b.1208 :
	beq	%r1 %r0 branching_b.1209
tail_b.1925 :
	ilw.s	%r0 %f2 l.78
	j	branching_b.1215
branching_b.1209 :
	div.s	%f2 %f6 %f0
	fbge	%f0 %f3 tail_b.1917
tail_b.1916 :
	neg.s	%f0 %f9
	j	branching_b.1210
tail_b.1917 :
	mov.s	%f0 %f9
branching_b.1210 :
	fbg	%f3 %f9 branching_b.1213
branching_b.1211 :
	ilw.s	%r0 %f0 l.80
	fbge	%f9 %f0 branching_b.1212
tail_b.1918 :
	ilw.s	%r0 %f6 l.56
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f8
	mul.s	%f7 %f2 %f0
	add.s	%f0 %f8 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.85
	mul.s	%f9 %f2 %f2
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f2
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.1924
branching_b.1212 :
	ilw.s	%r0 %f0 l.81
	fbge	%f9 %f0 tail_b.1920
tail_b.1919 :
	ilw.s	%r0 %f8 l.56
	sub.s	%f8 %f9 %f0
	add.s	%f8 %f9 %f2
	div.s	%f2 %f0 %f10
	ilw.s	%r0 %f6 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f2 l.82
	mul.s	%f10 %f2 %f7
	ilw.s	%r0 %f2 l.83
	mul.s	%f10 %f2 %f9
	mul.s	%f0 %f7 %f2
	add.s	%f2 %f9 %f2
	ilw.s	%r0 %f7 l.84
	mul.s	%f10 %f7 %f7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f7 %f7
	ilw.s	%r0 %f2 l.85
	mul.s	%f10 %f2 %f9
	mul.s	%f0 %f7 %f2
	add.s	%f2 %f9 %f2
	ilw.s	%r0 %f7 l.86
	mul.s	%f10 %f7 %f7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f7 %f7
	ilw.s	%r0 %f2 l.87
	mul.s	%f10 %f2 %f9
	mul.s	%f0 %f7 %f2
	add.s	%f2 %f9 %f2
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.1924
tail_b.1920 :
	ilw.s	%r0 %f0 l.56
	div.s	%f9 %f0 %f9
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f2 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f10
	mul.s	%f7 %f6 %f0
	add.s	%f0 %f10 %f6
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f9 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.1924
branching_b.1213 :
	neg.s	%f9 %f6
	ilw.s	%r0 %f0 l.80
	fbge	%f6 %f0 branching_b.1214
tail_b.1921 :
	ilw.s	%r0 %f8 l.58
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f2 l.82
	mul.s	%f6 %f2 %f2
	ilw.s	%r0 %f7 l.83
	mul.s	%f6 %f7 %f7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f7 %f9
	ilw.s	%r0 %f2 l.84
	mul.s	%f6 %f2 %f7
	mul.s	%f0 %f9 %f2
	add.s	%f2 %f7 %f2
	ilw.s	%r0 %f7 l.85
	mul.s	%f6 %f7 %f7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f7 %f2
	ilw.s	%r0 %f7 l.86
	mul.s	%f6 %f7 %f7
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f7 %f7
	ilw.s	%r0 %f2 l.87
	mul.s	%f6 %f2 %f9
	mul.s	%f0 %f7 %f2
	add.s	%f2 %f9 %f2
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.1924
branching_b.1214 :
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 tail_b.1923
tail_b.1922 :
	ilw.s	%r0 %f2 l.56
	sub.s	%f2 %f6 %f0
	add.s	%f2 %f6 %f2
	div.s	%f2 %f0 %f8
	ilw.s	%r0 %f2 l.58
	ilw.s	%r0 %f10 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f9
	mul.s	%f7 %f6 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f6
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.86
	mul.s	%f8 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f8 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f2 %f0 %f0
	j	tail_b.1924
tail_b.1923 :
	ilw.s	%r0 %f7 l.56
	div.s	%f6 %f7 %f9
	ilw.s	%r0 %f2 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f8 l.83
	mul.s	%f9 %f8 %f8
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.84
	mul.s	%f9 %f8 %f8
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f8 %f8
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f8 l.87
	mul.s	%f9 %f8 %f8
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
tail_b.1924 :
	ilw.s	%r0 %f2 l.88
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.75
	div.s	%f2 %f0 %f2
branching_b.1215 :
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f2
	lw.s	%r0 %f6 556
	lw	%r12 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f6 %f6
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f6 %f0
	fbge	%f5 %f3 tail_b.1927
tail_b.1926 :
	neg.s	%f5 %f6
	j	branching_b.1216
tail_b.1927 :
	mov.s	%f5 %f6
branching_b.1216 :
	fbge	%f6 %f1 tail_b.1929
tail_b.1928 :
	addi	%r0 %r1 1
	j	branching_b.1217
tail_b.1929 :
	addi	%r0 %r1 0
branching_b.1217 :
	beq	%r1 %r0 branching_b.1218
tail_b.1939 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.1224
branching_b.1218 :
	div.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.1931
tail_b.1930 :
	neg.s	%f0 %f6
	j	branching_b.1219
tail_b.1931 :
	mov.s	%f0 %f6
branching_b.1219 :
	fbg	%f3 %f6 branching_b.1222
branching_b.1220 :
	ilw.s	%r0 %f0 l.80
	fbge	%f6 %f0 branching_b.1221
tail_b.1932 :
	ilw.s	%r0 %f5 l.56
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f6 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f1
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f7
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f7 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f7
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.1938
branching_b.1221 :
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 tail_b.1934
tail_b.1933 :
	ilw.s	%r0 %f8 l.56
	sub.s	%f8 %f6 %f0
	add.s	%f8 %f6 %f1
	div.s	%f1 %f0 %f1
	ilw.s	%r0 %f7 l.59
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f1 %f5 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f9
	mul.s	%f6 %f5 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.1938
tail_b.1934 :
	ilw.s	%r0 %f0 l.56
	div.s	%f6 %f0 %f1
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f8 l.89
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f1 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f1 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.1938
branching_b.1222 :
	neg.s	%f6 %f5
	ilw.s	%r0 %f0 l.80
	fbge	%f5 %f0 branching_b.1223
tail_b.1935 :
	ilw.s	%r0 %f1 l.58
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f6
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.86
	mul.s	%f5 %f6 %f6
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f6
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.1938
branching_b.1223 :
	ilw.s	%r0 %f0 l.81
	fbge	%f5 %f0 tail_b.1937
tail_b.1936 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f5 %f1
	add.s	%f0 %f5 %f0
	div.s	%f0 %f1 %f6
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f7 l.59
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f6 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f6 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f6 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f8
	mul.s	%f9 %f5 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.1938
tail_b.1937 :
	ilw.s	%r0 %f6 l.56
	div.s	%f5 %f6 %f7
	ilw.s	%r0 %f9 l.89
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
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
	add.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f1
	mul.s	%f5 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f6 %f0 %f0
tail_b.1938 :
	ilw.s	%r0 %f1 l.88
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.75
	div.s	%f1 %f0 %f0
branching_b.1224 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f6 l.90
	ilw.s	%r0 %f5 l.62
	sub.s	%f2 %f5 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f6 %f0
	sub.s	%f1 %f5 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	fbge	%f0 %f3 tail_b.1941
tail_b.1940 :
	addi	%r0 %r1 1
	j	branching_b.1225
tail_b.1941 :
	addi	%r0 %r1 0
branching_b.1225 :
	beq	%r1 %r0 tail_b.1942
tail_b.1943 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1944
tail_b.1942 :
tail_b.1944 :
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.91
	div.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
branching_b.1226 :
	lw	%r0 %r2 536
	sw	%r26 %r4 -192
	sw	%r26 %r5 -196
	sw	%r26 %r6 -200
	sw	%r26 %r7 -204
	sw	%r26 %r9 -208
	sw	%r26 %r3 -212
	sw	%r26 %r10 -216
	sw	%r26 %r8 -220
	sw	%r26 %r11 -224
	sw.s	%r26 %f3 -228
	sw.s	%r26 %f4 -232
	sw	%r26 %r12 -236
	mov	%r0 %r1
	sw	%r26 %r28 -240
	addi	%r26 %r26 -244
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 244
	lw	%r26 %r28 -240
	lw	%r26 %r4 -192
	lw	%r26 %r5 -196
	lw	%r26 %r6 -200
	lw	%r26 %r7 -204
	lw	%r26 %r9 -208
	lw	%r26 %r3 -212
	lw	%r26 %r10 -216
	lw	%r26 %r8 -220
	lw	%r26 %r11 -224
	lw.s	%r26 %f3 -228
	lw.s	%r26 %f4 -232
	lw	%r26 %r12 -236
	beq	%r1 %r0 branching_b.1227
tail_b.1951 :
	j	tail_b.2026
branching_b.1227 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f2 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f2
	lw.s	%r0 %f0 576
	lw.s	%r0 %f1 320
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	neg.s	%f0 %f0
	fbge	%f3 %f0 tail_b.1947
tail_b.1946 :
	addi	%r0 %r1 1
	j	branching_b.1228
tail_b.1947 :
	addi	%r0 %r1 0
branching_b.1228 :
	beq	%r1 %r0 tail_b.1948
tail_b.1949 :
	j	tail_b.1950
tail_b.1948 :
	ilw.s	%r0 %f0 l.51
tail_b.1950 :
	mul.s	%f0 %f4 %f0
	lw	%r12 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r0 %f0 592
	lw.s	%r0 %f2 580
	mul.s	%f2 %f1 %f2
	add.s	%f2 %f0 %f0
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
	j	tail_b.2026
branching_b.1194 :
	lw	%r12 %r13 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f3 tail_b.1896
tail_b.1895 :
	addi	%r0 %r1 1
	j	branching_b.1195
tail_b.1896 :
	addi	%r0 %r1 0
branching_b.1195 :
	beq	%r1 %r0 branching_b.1196
tail_b.1899 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.1900
branching_b.1196 :
	beq	%r13 %r0 tail_b.1897
tail_b.1898 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f1
	j	tail_b.1900
tail_b.1897 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f1
tail_b.1900 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1197
branching_b.1230 :
	beq	%r2 %r0 tail_b.1954
branching_b.1231 :
	ilw.s	%r0 %f0 l.70
	fbge	%f1 %f0 tail_b.1956
tail_b.1955 :
	addi	%r0 %r2 1
	j	branching_b.1232
tail_b.1956 :
	addi	%r0 %r2 0
	j	branching_b.1232
tail_b.1954 :
	addi	%r0 %r2 0
branching_b.1232 :
	beq	%r2 %r0 tail_b.1957
branching_b.1233 :
	lw	%r0 %r2 564
	slli	%r2 %r2 2
	addi	%r2 %r2 48
	lw	%r2 %r2 0
	lw	%r1 %r1 0
	lw	%r2 %r12 4
	addi	%r0 %r13 1
	beq	%r12 %r13 branching_b.1234
branching_b.1238 :
	addi	%r0 %r1 2
	beq	%r12 %r1 tail_b.1966
branching_b.1239 :
	lw.s	%r0 %f0 552
	lw	%r2 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f6
	lw.s	%r0 %f0 556
	lw	%r2 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r0 %f1 560
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f1 %f5
	lw	%r2 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f1
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f9
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f5 %f8
	lw	%r2 %r1 12
	beq	%r1 %r0 tail_b.1967
tail_b.1968 :
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f5 %f7
	add.s	%f7 %f2 %f2
	ilw.s	%r0 %f7 l.69
	div.s	%f7 %f2 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r0 %f1 568
	lw	%r2 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f2
	lw	%r2 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f5 %f1
	add.s	%f1 %f2 %f1
	div.s	%f7 %f1 %f1
	add.s	%f1 %f9 %f1
	sw.s	%r0 %f1 572
	lw	%r2 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f1
	lw	%r2 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	div.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1240
tail_b.1967 :
	sw.s	%r0 %f1 568
	sw.s	%r0 %f9 572
	sw.s	%r0 %f8 576
	j	branching_b.1240
tail_b.1966 :
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
	j	branching_b.1243
branching_b.1234 :
	lw	%r0 %r14 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r14 %r12 -1
	addi	%r14 %r14 -1
	slli	%r14 %r14 2
	add	%r1 %r14 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.1959
tail_b.1958 :
	addi	%r0 %r1 1
	j	branching_b.1235
tail_b.1959 :
	addi	%r0 %r1 0
	j	branching_b.1235
tail_b.1957 :
	j	tail_b.2026
branching_b.1235 :
	beq	%r1 %r0 branching_b.1236
tail_b.1964 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1965
branching_b.1236 :
	fbge	%f3 %f0 tail_b.1961
tail_b.1960 :
	addi	%r0 %r1 1
	j	branching_b.1237
tail_b.1961 :
	addi	%r0 %r1 0
branching_b.1237 :
	beq	%r1 %r0 tail_b.1962
tail_b.1963 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.1965
tail_b.1962 :
	ilw.s	%r0 %f0 l.58
tail_b.1965 :
	neg.s	%f0 %f0
	slli	%r12 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1243 :
	lw	%r2 %r12 0
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
	beq	%r12 %r13 branching_b.1244
branching_b.1249 :
	addi	%r0 %r1 2
	beq	%r12 %r1 tail_b.1984
branching_b.1250 :
	addi	%r0 %r1 3
	beq	%r12 %r1 tail_b.1985
branching_b.1251 :
	beq	%r12 %r5 branching_b.1252
tail_b.2019 :
	j	branching_b.1272
branching_b.1252 :
	lw.s	%r0 %f0 552
	lw	%r2 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r2 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f5
	lw.s	%r0 %f0 560
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r2 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	mul.s	%f5 %f5 %f2
	mul.s	%f0 %f0 %f1
	add.s	%f1 %f2 %f6
	fbge	%f5 %f3 tail_b.1987
tail_b.1986 :
	neg.s	%f5 %f1
	j	branching_b.1253
tail_b.1987 :
	mov.s	%f5 %f1
	j	branching_b.1253
tail_b.1985 :
	lw.s	%r0 %f1 552
	lw	%r2 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw.s	%r0 %f1 560
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f0
	add.s	%f0 %f2 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.73
	div.s	%f1 %f0 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	sw	%r26 %r4 -240
	sw	%r26 %r5 -244
	sw	%r26 %r6 -248
	sw	%r26 %r7 -252
	sw	%r26 %r9 -256
	sw	%r26 %r3 -260
	sw	%r26 %r10 -264
	sw	%r26 %r8 -268
	sw	%r26 %r11 -272
	sw.s	%r26 %f3 -276
	sw.s	%r26 %f4 -280
	sw	%r26 %r2 -284
	sw	%r26 %r28 -288
	addi	%r26 %r26 -292
	jal	cos.0
	addi	%r26 %r26 292
	lw	%r26 %r28 -288
	mul.s	%f0 %f0 %f2
	ilw.s	%r0 %f1 l.52
	mul.s	%f1 %f2 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r4 -240
	lw	%r26 %r5 -244
	lw	%r26 %r6 -248
	lw	%r26 %r7 -252
	lw	%r26 %r9 -256
	lw	%r26 %r3 -260
	lw	%r26 %r10 -264
	lw	%r26 %r8 -268
	lw	%r26 %r11 -272
	lw.s	%r26 %f3 -276
	lw.s	%r26 %f4 -280
	lw	%r26 %r2 -284
	j	branching_b.1272
tail_b.1984 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.74
	mul.s	%f1 %f0 %f0
	sw	%r26 %r4 -288
	sw	%r26 %r5 -292
	sw	%r26 %r6 -296
	sw	%r26 %r7 -300
	sw	%r26 %r9 -304
	sw	%r26 %r3 -308
	sw	%r26 %r10 -312
	sw	%r26 %r8 -316
	sw	%r26 %r11 -320
	sw.s	%r26 %f3 -324
	sw.s	%r26 %f4 -328
	sw	%r26 %r2 -332
	sw	%r26 %r28 -336
	addi	%r26 %r26 -340
	jal	sin.0
	addi	%r26 %r26 340
	lw	%r26 %r28 -336
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f2 l.52
	mul.s	%f1 %f2 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r4 -288
	lw	%r26 %r5 -292
	lw	%r26 %r6 -296
	lw	%r26 %r7 -300
	lw	%r26 %r9 -304
	lw	%r26 %r3 -308
	lw	%r26 %r10 -312
	lw	%r26 %r8 -316
	lw	%r26 %r11 -320
	lw.s	%r26 %f3 -324
	lw.s	%r26 %f4 -328
	lw	%r26 %r2 -332
	j	branching_b.1272
branching_b.1244 :
	lw.s	%r0 %f0 552
	lw	%r2 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f2 l.71
	mul.s	%f2 %f1 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f6 l.72
	mul.s	%f6 %f0 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f5 l.73
	fbge	%f0 %f5 tail_b.1976
tail_b.1975 :
	addi	%r0 %r12 1
	j	branching_b.1245
tail_b.1976 :
	addi	%r0 %r12 0
branching_b.1245 :
	lw.s	%r0 %f1 560
	lw	%r2 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	mul.s	%f2 %f1 %f0
	floor.w.s	%f0 %f0
	mul.s	%f6 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f5 tail_b.1978
tail_b.1977 :
	addi	%r0 %r1 1
	j	branching_b.1246
tail_b.1978 :
	addi	%r0 %r1 0
branching_b.1246 :
	beq	%r12 %r0 branching_b.1247
branching_b.1248 :
	beq	%r1 %r0 tail_b.1981
tail_b.1982 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.1983
tail_b.1981 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1983
branching_b.1247 :
	beq	%r1 %r0 tail_b.1979
tail_b.1980 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.1983
tail_b.1979 :
	ilw.s	%r0 %f0 l.52
tail_b.1983 :
	sw.s	%r0 %f0 584
	j	branching_b.1272
branching_b.1253 :
	ilw.s	%r0 %f2 l.76
	fbge	%f1 %f2 tail_b.1989
tail_b.1988 :
	addi	%r0 %r1 1
	j	branching_b.1254
tail_b.1989 :
	addi	%r0 %r1 0
branching_b.1254 :
	beq	%r1 %r0 branching_b.1255
tail_b.1999 :
	ilw.s	%r0 %f1 l.78
	j	branching_b.1261
branching_b.1255 :
	div.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.1991
tail_b.1990 :
	neg.s	%f0 %f7
	j	branching_b.1256
tail_b.1991 :
	mov.s	%f0 %f7
branching_b.1256 :
	fbg	%f3 %f7 branching_b.1259
branching_b.1257 :
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1258
tail_b.1992 :
	ilw.s	%r0 %f1 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f5
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f7 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.1998
branching_b.1258 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.1994
tail_b.1993 :
	ilw.s	%r0 %f9 l.56
	sub.s	%f9 %f7 %f1
	add.s	%f9 %f7 %f0
	div.s	%f0 %f1 %f7
	ilw.s	%r0 %f5 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.1998
tail_b.1994 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f7
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f8 l.89
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.1998
branching_b.1259 :
	neg.s	%f7 %f7
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1260
tail_b.1995 :
	ilw.s	%r0 %f5 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f8
	mul.s	%f1 %f9 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.84
	mul.s	%f7 %f8 %f8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f8
	mul.s	%f1 %f9 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f8
	mul.s	%f1 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.1998
branching_b.1260 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.1997
tail_b.1996 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f7 %f0
	add.s	%f1 %f7 %f1
	div.s	%f1 %f0 %f10
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f8 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f7
	mul.s	%f5 %f9 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f10 %f7 %f7
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f9
	mul.s	%f5 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.1998
tail_b.1997 :
	ilw.s	%r0 %f8 l.56
	div.s	%f7 %f8 %f1
	ilw.s	%r0 %f9 l.89
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f10
	mul.s	%f5 %f7 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f1 %f7 %f7
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f1 %f7 %f7
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f1 %f7 %f7
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.87
	mul.s	%f1 %f7 %f7
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
tail_b.1998 :
	ilw.s	%r0 %f1 l.88
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f1 %f1
branching_b.1261 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f0 556
	lw	%r2 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r2 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	fbge	%f6 %f3 tail_b.2001
tail_b.2000 :
	neg.s	%f6 %f1
	j	branching_b.1262
tail_b.2001 :
	mov.s	%f6 %f1
branching_b.1262 :
	fbge	%f1 %f2 tail_b.2003
tail_b.2002 :
	addi	%r0 %r1 1
	j	branching_b.1263
tail_b.2003 :
	addi	%r0 %r1 0
branching_b.1263 :
	beq	%r1 %r0 branching_b.1264
tail_b.2013 :
	ilw.s	%r0 %f1 l.78
	j	branching_b.1270
branching_b.1264 :
	div.s	%f6 %f0 %f7
	fbge	%f7 %f3 tail_b.2005
tail_b.2004 :
	neg.s	%f7 %f7
	j	branching_b.1265
tail_b.2005 :
branching_b.1265 :
	fbg	%f3 %f7 branching_b.1268
branching_b.1266 :
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1267
tail_b.2006 :
	ilw.s	%r0 %f2 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f8
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f1
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f7 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f7 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	j	tail_b.2012
branching_b.1267 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2008
tail_b.2007 :
	ilw.s	%r0 %f2 l.56
	sub.s	%f2 %f7 %f0
	add.s	%f2 %f7 %f1
	div.s	%f1 %f0 %f8
	ilw.s	%r0 %f1 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f6 l.83
	mul.s	%f8 %f6 %f6
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f6
	mul.s	%f9 %f7 %f0
	add.s	%f0 %f6 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f6
	mul.s	%f9 %f7 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f7
	mul.s	%f9 %f6 %f0
	add.s	%f0 %f7 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f0
	j	tail_b.2012
tail_b.2008 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f9
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f0 l.89
	neg.s	%f9 %f1
	mul.s	%f9 %f1 %f7
	ilw.s	%r0 %f1 l.82
	mul.s	%f9 %f1 %f2
	ilw.s	%r0 %f1 l.83
	mul.s	%f9 %f1 %f1
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.84
	mul.s	%f9 %f2 %f2
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f2 %f8
	ilw.s	%r0 %f1 l.85
	mul.s	%f9 %f1 %f2
	mul.s	%f7 %f8 %f1
	add.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.86
	mul.s	%f9 %f2 %f2
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f2 %f8
	ilw.s	%r0 %f1 l.87
	mul.s	%f9 %f1 %f2
	mul.s	%f7 %f8 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f9 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.2012
branching_b.1268 :
	neg.s	%f7 %f8
	ilw.s	%r0 %f0 l.80
	fbge	%f8 %f0 branching_b.1269
tail_b.2009 :
	ilw.s	%r0 %f6 l.58
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.82
	mul.s	%f8 %f1 %f2
	ilw.s	%r0 %f1 l.83
	mul.s	%f8 %f1 %f1
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f1 %f2
	ilw.s	%r0 %f1 l.84
	mul.s	%f8 %f1 %f7
	mul.s	%f0 %f2 %f1
	add.s	%f1 %f7 %f1
	ilw.s	%r0 %f2 l.85
	mul.s	%f8 %f2 %f2
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f2 %f2
	ilw.s	%r0 %f1 l.86
	mul.s	%f8 %f1 %f1
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f1 %f1
	ilw.s	%r0 %f2 l.87
	mul.s	%f8 %f2 %f2
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.2012
branching_b.1269 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 tail_b.2011
tail_b.2010 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f8 %f0
	add.s	%f1 %f8 %f1
	div.s	%f1 %f0 %f6
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f7 l.59
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f2 l.83
	mul.s	%f6 %f2 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.84
	mul.s	%f6 %f2 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f0
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f2
	mul.s	%f1 %f9 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2012
tail_b.2011 :
	ilw.s	%r0 %f9 l.56
	div.s	%f8 %f9 %f8
	ilw.s	%r0 %f7 l.89
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f2 l.83
	mul.s	%f8 %f2 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f2 %f2
	add.s	%f2 %f0 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f2
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.86
	mul.s	%f8 %f2 %f2
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f6
	mul.s	%f1 %f2 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f9 %f0 %f0
tail_b.2012 :
	ilw.s	%r0 %f1 l.88
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f1 %f1
branching_b.1270 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f2
	ilw.s	%r0 %f1 l.90
	ilw.s	%r0 %f6 l.62
	sub.s	%f5 %f6 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	sub.s	%f2 %f6 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	fbge	%f1 %f3 tail_b.2015
tail_b.2014 :
	addi	%r0 %r1 1
	j	branching_b.1271
tail_b.2015 :
	addi	%r0 %r1 0
branching_b.1271 :
	beq	%r1 %r0 tail_b.2016
tail_b.2017 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.2018
tail_b.2016 :
tail_b.2018 :
	ilw.s	%r0 %f0 l.52
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.91
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1272 :
	lw	%r0 %r1 536
	sw	%r26 %r4 -336
	sw	%r26 %r5 -340
	sw	%r26 %r6 -344
	sw	%r26 %r7 -348
	sw	%r26 %r9 -352
	sw	%r26 %r3 -356
	sw	%r26 %r10 -360
	sw	%r26 %r8 -364
	sw	%r26 %r11 -368
	sw.s	%r26 %f3 -372
	sw.s	%r26 %f4 -376
	sw	%r26 %r2 -380
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -384
	addi	%r26 %r26 -388
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 388
	lw	%r26 %r28 -384
	lw	%r26 %r4 -336
	lw	%r26 %r5 -340
	lw	%r26 %r6 -344
	lw	%r26 %r7 -348
	lw	%r26 %r9 -352
	lw	%r26 %r3 -356
	lw	%r26 %r10 -360
	lw	%r26 %r8 -364
	lw	%r26 %r11 -368
	lw.s	%r26 %f3 -372
	lw.s	%r26 %f4 -376
	lw	%r26 %r2 -380
	beq	%r1 %r0 branching_b.1273
tail_b.2025 :
	j	tail_b.2026
branching_b.1273 :
	lw.s	%r0 %f1 568
	lw.s	%r0 %f0 312
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f2 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	lw.s	%r0 %f2 320
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	fbge	%f3 %f0 tail_b.2021
tail_b.2020 :
	addi	%r0 %r1 1
	j	branching_b.1274
tail_b.2021 :
	addi	%r0 %r1 0
branching_b.1274 :
	beq	%r1 %r0 tail_b.2022
tail_b.2023 :
	j	tail_b.2024
tail_b.2022 :
	ilw.s	%r0 %f0 l.51
tail_b.2024 :
	mul.s	%f0 %f4 %f1
	lw	%r2 %r1 28
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
	j	tail_b.2026
branching_b.1240 :
	lw	%r2 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f1 572
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f3 tail_b.1970
tail_b.1969 :
	addi	%r0 %r12 1
	j	branching_b.1241
tail_b.1970 :
	addi	%r0 %r12 0
branching_b.1241 :
	beq	%r12 %r0 branching_b.1242
tail_b.1973 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.1974
branching_b.1242 :
	beq	%r1 %r0 tail_b.1971
tail_b.1972 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f0
	j	tail_b.1974
tail_b.1971 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f0
tail_b.1974 :
	lw.s	%r0 %f1 568
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 568
	lw.s	%r0 %f1 572
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 572
	lw.s	%r0 %f1 576
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1243
postloop_b.45 :
branching_b.1275 :
	addi	%r0 %r8 1
	bne	%r9 %r8 preloop_b.47
tail_b.2190 :
	j	branching_b.1376
preloop_b.47 :
	lw	%r0 %r11 720
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r12 -1
setup_startp_constants_loop.5 :
	ble	%r0 %r12 branching_b.1277
tail_b.2037 :
	j	postloop_b.46
branching_b.1277 :
	slli	%r12 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r14 0
	lw	%r14 %r13 40
	lw	%r14 %r2 4
	mov	%r10 %r1
	lw.s	%r1 %f1 0
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mov	%r13 %r1
	sw.s	%r1 %f0 0
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r13 %r1 4
	sw.s	%r1 %f0 0
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r13 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.2029
branching_b.1278 :
	bl	%r1 %r2 branching_b.1279
tail_b.2035 :
	j	tail_b.2036
branching_b.1279 :
	mov	%r13 %r1
	lw.s	%r1 %f3 0
	addi	%r13 %r1 4
	lw.s	%r1 %f5 0
	addi	%r13 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f3 %f3 %f0
	lw	%r14 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	mul.s	%f5 %f5 %f0
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f4
	mul.s	%f1 %f1 %f2
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f4 %f4
	lw	%r14 %r1 12
	beq	%r1 %r0 tail_b.2030
tail_b.2031 :
	mul.s	%f1 %f5 %f0
	lw	%r14 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f2
	mul.s	%f3 %f1 %f0
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f3 %f1
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f4
	j	branching_b.1280
tail_b.2030 :
	j	branching_b.1280
tail_b.2029 :
	lw	%r14 %r2 16
	mov	%r13 %r1
	lw.s	%r1 %f1 0
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	addi	%r13 %r1 8
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
	addi	%r13 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.2036
branching_b.1280 :
	addi	%r0 %r1 3
	beq	%r2 %r1 tail_b.2032
tail_b.2033 :
	mov.s	%f4 %f0
	j	tail_b.2034
tail_b.2032 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f4 %f0
tail_b.2034 :
	addi	%r13 %r1 12
	sw.s	%r1 %f0 0
tail_b.2036 :
	addi	%r12 %r1 -1
	mov	%r1 %r12
	j	setup_startp_constants_loop.5
postloop_b.46 :
preloop_b.48 :
	addi	%r0 %r13 118
iter_trace_diffuse_rays_loop.5 :
	ble	%r0 %r13 branching_b.1282
tail_b.2189 :
	j	postloop_b.47
branching_b.1282 :
	slli	%r13 %r1 2
	add	%r11 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r2 0
	mov	%r2 %r1
	lw.s	%r1 %f0 0
	mov	%r3 %r1
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f2
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	addi	%r2 %r1 8
	lw.s	%r1 %f2 0
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.51
	fbge	%f0 %f1 tail_b.2039
tail_b.2038 :
	addi	%r0 %r1 1
	j	branching_b.1283
tail_b.2039 :
	addi	%r0 %r1 0
branching_b.1283 :
	beq	%r1 %r0 branching_b.1284
branching_b.1330 :
	addi	%r13 %r1 1
	slli	%r1 %r1 2
	add	%r11 %r1 %r1
	lw	%r1 %r12 0
	ilw.s	%r0 %f2 l.93
	div.s	%f2 %f0 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r2 536
	sw	%r26 %r4 -384
	sw	%r26 %r5 -388
	sw	%r26 %r6 -392
	sw	%r26 %r7 -396
	sw	%r26 %r9 -400
	sw	%r26 %r3 -404
	sw	%r26 %r10 -408
	sw	%r26 %r8 -412
	sw	%r26 %r11 -416
	sw	%r26 %r13 -420
	sw.s	%r26 %f1 -424
	sw	%r26 %r12 -428
	sw.s	%r26 %f3 -432
	mov	%r12 %r3
	mov	%r0 %r1
	sw	%r26 %r28 -436
	addi	%r26 %r26 -440
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 440
	lw	%r26 %r28 -436
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f2 l.68
	lw	%r26 %r4 -384
	lw	%r26 %r5 -388
	lw	%r26 %r6 -392
	lw	%r26 %r7 -396
	lw	%r26 %r9 -400
	lw	%r26 %r3 -404
	lw	%r26 %r10 -408
	lw	%r26 %r8 -412
	lw	%r26 %r11 -416
	lw	%r26 %r13 -420
	lw.s	%r26 %f1 -424
	lw	%r26 %r12 -428
	lw.s	%r26 %f3 -432
	fbge	%f2 %f0 tail_b.2115
tail_b.2114 :
	addi	%r0 %r1 1
	j	branching_b.1331
tail_b.2115 :
	addi	%r0 %r1 0
	j	branching_b.1331
branching_b.1284 :
	slli	%r13 %r1 2
	add	%r11 %r1 %r1
	lw	%r1 %r12 0
	ilw.s	%r0 %f2 l.94
	div.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r2 536
	sw	%r26 %r4 -436
	sw	%r26 %r5 -440
	sw	%r26 %r6 -444
	sw	%r26 %r7 -448
	sw	%r26 %r9 -452
	sw	%r26 %r3 -456
	sw	%r26 %r10 -460
	sw	%r26 %r8 -464
	sw	%r26 %r11 -468
	sw	%r26 %r13 -472
	sw.s	%r26 %f1 -476
	sw	%r26 %r12 -480
	sw.s	%r26 %f2 -484
	mov	%r12 %r3
	mov	%r0 %r1
	sw	%r26 %r28 -488
	addi	%r26 %r26 -492
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 492
	lw	%r26 %r28 -488
	lw.s	%r0 %f3 548
	ilw.s	%r0 %f0 l.68
	lw	%r26 %r4 -436
	lw	%r26 %r5 -440
	lw	%r26 %r6 -444
	lw	%r26 %r7 -448
	lw	%r26 %r9 -452
	lw	%r26 %r3 -456
	lw	%r26 %r10 -460
	lw	%r26 %r8 -464
	lw	%r26 %r11 -468
	lw	%r26 %r13 -472
	lw.s	%r26 %f1 -476
	lw	%r26 %r12 -480
	lw.s	%r26 %f2 -484
	fbge	%f0 %f3 tail_b.2041
tail_b.2040 :
	addi	%r0 %r1 1
	j	branching_b.1285
tail_b.2041 :
	addi	%r0 %r1 0
branching_b.1285 :
	beq	%r1 %r0 tail_b.2042
branching_b.1286 :
	ilw.s	%r0 %f0 l.70
	fbge	%f3 %f0 tail_b.2044
tail_b.2043 :
	addi	%r0 %r1 1
	j	branching_b.1287
tail_b.2044 :
	addi	%r0 %r1 0
	j	branching_b.1287
tail_b.2042 :
	addi	%r0 %r1 0
branching_b.1287 :
	beq	%r1 %r0 tail_b.2045
branching_b.1288 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r12 %r12 0
	lw	%r1 %r14 4
	beq	%r14 %r8 branching_b.1289
branching_b.1293 :
	addi	%r0 %r2 2
	beq	%r14 %r2 tail_b.2054
branching_b.1294 :
	lw.s	%r0 %f0 552
	lw	%r1 %r2 20
	lw.s	%r2 %f3 0
	sub.s	%f3 %f0 %f4
	lw.s	%r0 %f3 556
	lw	%r1 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	sub.s	%f0 %f3 %f7
	lw.s	%r0 %f3 560
	lw	%r1 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sub.s	%f0 %f3 %f5
	lw	%r1 %r2 16
	lw.s	%r2 %f0 0
	mul.s	%f0 %f4 %f9
	lw	%r1 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f7 %f8
	lw	%r1 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f5 %f6
	lw	%r1 %r2 12
	beq	%r2 %r0 tail_b.2055
tail_b.2056 :
	lw	%r1 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	mul.s	%f0 %f7 %f3
	lw	%r1 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.69
	div.s	%f0 %f3 %f3
	add.s	%f3 %f9 %f3
	sw.s	%r0 %f3 568
	lw	%r1 %r2 36
	addi	%r2 %r2 8
	lw.s	%r2 %f3 0
	mul.s	%f3 %f4 %f3
	lw	%r1 %r2 36
	lw.s	%r2 %f9 0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f3 %f3
	div.s	%f0 %f3 %f3
	add.s	%f3 %f8 %f3
	sw.s	%r0 %f3 572
	lw	%r1 %r2 36
	addi	%r2 %r2 4
	lw.s	%r2 %f3 0
	mul.s	%f3 %f4 %f3
	lw	%r1 %r2 36
	lw.s	%r2 %f4 0
	mul.s	%f4 %f7 %f4
	add.s	%f4 %f3 %f3
	div.s	%f0 %f3 %f0
	add.s	%f0 %f6 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1295
tail_b.2055 :
	sw.s	%r0 %f9 568
	sw.s	%r0 %f8 572
	sw.s	%r0 %f6 576
	j	branching_b.1295
tail_b.2054 :
	lw	%r1 %r2 16
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
	j	branching_b.1298
branching_b.1289 :
	lw	%r0 %r2 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r2 %r14 -1
	addi	%r2 %r2 -1
	slli	%r2 %r2 2
	add	%r12 %r2 %r2
	lw.s	%r2 %f0 0
	fbne	%f0 %f1 tail_b.2047
tail_b.2046 :
	addi	%r0 %r2 1
	j	branching_b.1290
tail_b.2047 :
	addi	%r0 %r2 0
	j	branching_b.1290
tail_b.2045 :
tail_b.2188 :
	addi	%r13 %r13 -2
	j	iter_trace_diffuse_rays_loop.5
branching_b.1290 :
	beq	%r2 %r0 branching_b.1291
tail_b.2052 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2053
branching_b.1291 :
	fbge	%f1 %f0 tail_b.2049
tail_b.2048 :
	addi	%r0 %r2 1
	j	branching_b.1292
tail_b.2049 :
	addi	%r0 %r2 0
branching_b.1292 :
	beq	%r2 %r0 tail_b.2050
tail_b.2051 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2053
tail_b.2050 :
	ilw.s	%r0 %f0 l.58
tail_b.2053 :
	neg.s	%f0 %f0
	slli	%r14 %r2 2
	addi	%r2 %r2 568
	sw.s	%r2 %f0 0
branching_b.1298 :
	lw	%r1 %r12 0
	lw	%r1 %r2 32
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 580
	lw	%r1 %r2 32
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 584
	lw	%r1 %r2 32
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sw.s	%r0 %f0 588
	beq	%r12 %r8 branching_b.1299
branching_b.1304 :
	addi	%r0 %r2 2
	beq	%r12 %r2 tail_b.2072
branching_b.1305 :
	addi	%r0 %r2 3
	beq	%r12 %r2 tail_b.2073
branching_b.1306 :
	beq	%r12 %r5 branching_b.1307
tail_b.2107 :
	j	branching_b.1327
branching_b.1307 :
	lw.s	%r0 %f3 552
	lw	%r1 %r2 20
	lw.s	%r2 %f0 0
	sub.s	%f0 %f3 %f0
	lw	%r1 %r2 16
	lw.s	%r2 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f0 %f3
	lw.s	%r0 %f0 560
	lw	%r1 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f4 0
	sub.s	%f4 %f0 %f0
	lw	%r1 %r2 16
	addi	%r2 %r2 8
	lw.s	%r2 %f4 0
	sqrt.s	%f4 %f4
	mul.s	%f4 %f0 %f6
	mul.s	%f3 %f3 %f4
	mul.s	%f6 %f6 %f0
	add.s	%f0 %f4 %f4
	fbge	%f3 %f1 tail_b.2075
tail_b.2074 :
	neg.s	%f3 %f0
	j	branching_b.1308
tail_b.2075 :
	mov.s	%f3 %f0
	j	branching_b.1308
tail_b.2073 :
	lw.s	%r0 %f3 552
	lw	%r1 %r2 20
	lw.s	%r2 %f0 0
	sub.s	%f0 %f3 %f3
	lw.s	%r0 %f0 560
	lw	%r1 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f4 0
	sub.s	%f4 %f0 %f4
	mul.s	%f3 %f3 %f0
	mul.s	%f4 %f4 %f3
	add.s	%f3 %f0 %f0
	sqrt.s	%f0 %f3
	ilw.s	%r0 %f0 l.73
	div.s	%f0 %f3 %f0
	floor.w.s	%f0 %f3
	sub.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f3 %f0
	sw	%r26 %r4 -488
	sw	%r26 %r5 -492
	sw	%r26 %r6 -496
	sw	%r26 %r7 -500
	sw	%r26 %r9 -504
	sw	%r26 %r3 -508
	sw	%r26 %r10 -512
	sw	%r26 %r8 -516
	sw	%r26 %r11 -520
	sw	%r26 %r13 -524
	sw.s	%r26 %f1 -528
	sw.s	%r26 %f2 -532
	sw	%r26 %r1 -536
	sw	%r26 %r28 -540
	addi	%r26 %r26 -544
	jal	cos.0
	addi	%r26 %r26 544
	lw	%r26 %r28 -540
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f3 l.52
	mul.s	%f3 %f4 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f4 %f0 %f0
	mul.s	%f3 %f0 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r4 -488
	lw	%r26 %r5 -492
	lw	%r26 %r6 -496
	lw	%r26 %r7 -500
	lw	%r26 %r9 -504
	lw	%r26 %r3 -508
	lw	%r26 %r10 -512
	lw	%r26 %r8 -516
	lw	%r26 %r11 -520
	lw	%r26 %r13 -524
	lw.s	%r26 %f1 -528
	lw.s	%r26 %f2 -532
	lw	%r26 %r1 -536
	j	branching_b.1327
tail_b.2072 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f3 l.74
	mul.s	%f3 %f0 %f0
	sw	%r26 %r4 -540
	sw	%r26 %r5 -544
	sw	%r26 %r6 -548
	sw	%r26 %r7 -552
	sw	%r26 %r9 -556
	sw	%r26 %r3 -560
	sw	%r26 %r10 -564
	sw	%r26 %r8 -568
	sw	%r26 %r11 -572
	sw	%r26 %r13 -576
	sw.s	%r26 %f1 -580
	sw.s	%r26 %f2 -584
	sw	%r26 %r1 -588
	sw	%r26 %r28 -592
	addi	%r26 %r26 -596
	jal	sin.0
	addi	%r26 %r26 596
	lw	%r26 %r28 -592
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f4 l.52
	mul.s	%f0 %f4 %f3
	sw.s	%r0 %f3 580
	ilw.s	%r0 %f3 l.56
	sub.s	%f0 %f3 %f0
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r4 -540
	lw	%r26 %r5 -544
	lw	%r26 %r6 -548
	lw	%r26 %r7 -552
	lw	%r26 %r9 -556
	lw	%r26 %r3 -560
	lw	%r26 %r10 -564
	lw	%r26 %r8 -568
	lw	%r26 %r11 -572
	lw	%r26 %r13 -576
	lw.s	%r26 %f1 -580
	lw.s	%r26 %f2 -584
	lw	%r26 %r1 -588
	j	branching_b.1327
branching_b.1299 :
	lw.s	%r0 %f3 552
	lw	%r1 %r2 20
	lw.s	%r2 %f0 0
	sub.s	%f0 %f3 %f0
	ilw.s	%r0 %f5 l.71
	mul.s	%f5 %f0 %f3
	floor.w.s	%f3 %f4
	ilw.s	%r0 %f3 l.72
	mul.s	%f3 %f4 %f4
	sub.s	%f4 %f0 %f0
	ilw.s	%r0 %f6 l.73
	fbge	%f0 %f6 tail_b.2064
tail_b.2063 :
	addi	%r0 %r12 1
	j	branching_b.1300
tail_b.2064 :
	addi	%r0 %r12 0
branching_b.1300 :
	lw.s	%r0 %f4 560
	lw	%r1 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sub.s	%f0 %f4 %f4
	mul.s	%f5 %f4 %f0
	floor.w.s	%f0 %f0
	mul.s	%f3 %f0 %f0
	sub.s	%f0 %f4 %f0
	fbge	%f0 %f6 tail_b.2066
tail_b.2065 :
	addi	%r0 %r2 1
	j	branching_b.1301
tail_b.2066 :
	addi	%r0 %r2 0
branching_b.1301 :
	beq	%r12 %r0 branching_b.1302
branching_b.1303 :
	beq	%r2 %r0 tail_b.2069
tail_b.2070 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2071
tail_b.2069 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2071
branching_b.1302 :
	beq	%r2 %r0 tail_b.2067
tail_b.2068 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2071
tail_b.2067 :
	ilw.s	%r0 %f0 l.52
tail_b.2071 :
	sw.s	%r0 %f0 584
	j	branching_b.1327
branching_b.1308 :
	ilw.s	%r0 %f5 l.76
	fbge	%f0 %f5 tail_b.2077
tail_b.2076 :
	addi	%r0 %r2 1
	j	branching_b.1309
tail_b.2077 :
	addi	%r0 %r2 0
branching_b.1309 :
	beq	%r2 %r0 branching_b.1310
tail_b.2087 :
	ilw.s	%r0 %f3 l.78
	j	branching_b.1316
branching_b.1310 :
	div.s	%f3 %f6 %f7
	fbge	%f7 %f1 tail_b.2079
tail_b.2078 :
	neg.s	%f7 %f7
	j	branching_b.1311
tail_b.2079 :
branching_b.1311 :
	fbg	%f1 %f7 branching_b.1314
branching_b.1312 :
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1313
tail_b.2080 :
	ilw.s	%r0 %f3 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f6
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f6 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f6
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f7 %f6 %f6
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	tail_b.2086
branching_b.1313 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2082
tail_b.2081 :
	ilw.s	%r0 %f3 l.56
	sub.s	%f3 %f7 %f0
	add.s	%f3 %f7 %f6
	div.s	%f6 %f0 %f9
	ilw.s	%r0 %f10 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f7
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f8
	mul.s	%f6 %f7 %f0
	add.s	%f0 %f8 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f8
	mul.s	%f6 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f3 %f0 %f0
	j	tail_b.2086
tail_b.2082 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f7
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f8 l.89
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f3 l.83
	mul.s	%f7 %f3 %f3
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f6
	mul.s	%f10 %f3 %f0
	add.s	%f0 %f6 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f6
	mul.s	%f10 %f3 %f0
	add.s	%f0 %f6 %f3
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f6
	mul.s	%f10 %f3 %f0
	add.s	%f0 %f6 %f3
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f3 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.2086
branching_b.1314 :
	neg.s	%f7 %f6
	ilw.s	%r0 %f0 l.80
	fbge	%f6 %f0 branching_b.1315
tail_b.2083 :
	ilw.s	%r0 %f7 l.58
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f3 l.83
	mul.s	%f6 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.84
	mul.s	%f6 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.86
	mul.s	%f6 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f3 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2086
branching_b.1315 :
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 tail_b.2085
tail_b.2084 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f6 %f3
	add.s	%f0 %f6 %f0
	div.s	%f0 %f3 %f3
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f9 l.59
	neg.s	%f3 %f0
	mul.s	%f3 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f3 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f3 %f0 %f0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f0 %f0
	ilw.s	%r0 %f6 l.84
	mul.s	%f3 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f3 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.86
	mul.s	%f3 %f6 %f6
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f3 %f0 %f10
	mul.s	%f7 %f6 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f3 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2086
tail_b.2085 :
	ilw.s	%r0 %f8 l.56
	div.s	%f6 %f8 %f9
	ilw.s	%r0 %f7 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f3
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f10
	mul.s	%f6 %f3 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f3 l.84
	mul.s	%f9 %f3 %f3
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.87
	mul.s	%f9 %f3 %f3
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
tail_b.2086 :
	ilw.s	%r0 %f3 l.88
	mul.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.75
	div.s	%f3 %f0 %f3
branching_b.1316 :
	floor.w.s	%f3 %f0
	sub.s	%f0 %f3 %f6
	lw.s	%r0 %f0 556
	lw	%r1 %r2 20
	addi	%r2 %r2 4
	lw.s	%r2 %f3 0
	sub.s	%f3 %f0 %f3
	lw	%r1 %r2 16
	addi	%r2 %r2 4
	lw.s	%r2 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f3 %f0
	fbge	%f4 %f1 tail_b.2089
tail_b.2088 :
	neg.s	%f4 %f3
	j	branching_b.1317
tail_b.2089 :
	mov.s	%f4 %f3
branching_b.1317 :
	fbge	%f3 %f5 tail_b.2091
tail_b.2090 :
	addi	%r0 %r2 1
	j	branching_b.1318
tail_b.2091 :
	addi	%r0 %r2 0
branching_b.1318 :
	beq	%r2 %r0 branching_b.1319
tail_b.2101 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.1325
branching_b.1319 :
	div.s	%f4 %f0 %f4
	fbge	%f4 %f1 tail_b.2093
tail_b.2092 :
	neg.s	%f4 %f4
	j	branching_b.1320
tail_b.2093 :
branching_b.1320 :
	fbg	%f1 %f4 branching_b.1323
branching_b.1321 :
	ilw.s	%r0 %f0 l.80
	fbge	%f4 %f0 branching_b.1322
tail_b.2094 :
	ilw.s	%r0 %f5 l.56
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f3 l.83
	mul.s	%f4 %f3 %f3
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f0
	mul.s	%f7 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.85
	mul.s	%f4 %f3 %f3
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.86
	mul.s	%f4 %f3 %f3
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f8
	mul.s	%f7 %f3 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f3
	j	tail_b.2100
branching_b.1322 :
	ilw.s	%r0 %f0 l.81
	fbge	%f4 %f0 tail_b.2096
tail_b.2095 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f4 %f0
	add.s	%f7 %f4 %f3
	div.s	%f3 %f0 %f3
	ilw.s	%r0 %f8 l.59
	neg.s	%f3 %f0
	mul.s	%f3 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f3 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f3 %f0 %f0
	mul.s	%f9 %f4 %f4
	add.s	%f4 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f3 %f0 %f4
	mul.s	%f9 %f5 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f3 %f0 %f0
	mul.s	%f9 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f3 %f0 %f5
	mul.s	%f9 %f4 %f0
	add.s	%f0 %f5 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f3 %f0 %f0
	mul.s	%f9 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f3 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f3
	j	tail_b.2100
tail_b.2096 :
	ilw.s	%r0 %f0 l.56
	div.s	%f4 %f0 %f7
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f0 l.89
	neg.s	%f7 %f3
	mul.s	%f7 %f3 %f5
	ilw.s	%r0 %f3 l.82
	mul.s	%f7 %f3 %f4
	ilw.s	%r0 %f3 l.83
	mul.s	%f7 %f3 %f3
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	ilw.s	%r0 %f4 l.84
	mul.s	%f7 %f4 %f4
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.85
	mul.s	%f7 %f4 %f4
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.86
	mul.s	%f7 %f4 %f4
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.87
	mul.s	%f7 %f4 %f4
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f4 %f3
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f7 %f3
	add.s	%f3 %f0 %f0
	mul.s	%f8 %f0 %f3
	j	tail_b.2100
branching_b.1323 :
	neg.s	%f4 %f7
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1324
tail_b.2097 :
	ilw.s	%r0 %f5 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f3
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f4 l.83
	mul.s	%f7 %f4 %f4
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f8
	mul.s	%f3 %f4 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f4
	mul.s	%f3 %f8 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f3
	j	tail_b.2100
branching_b.1324 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2099
tail_b.2098 :
	ilw.s	%r0 %f3 l.56
	sub.s	%f3 %f7 %f0
	add.s	%f3 %f7 %f3
	div.s	%f3 %f0 %f9
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f7 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f3
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f0
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f9 %f4 %f4
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f9 %f4 %f4
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f5
	mul.s	%f3 %f4 %f0
	add.s	%f0 %f5 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f3
	j	tail_b.2100
tail_b.2099 :
	ilw.s	%r0 %f5 l.56
	div.s	%f7 %f5 %f9
	ilw.s	%r0 %f8 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f3 l.82
	mul.s	%f9 %f3 %f7
	ilw.s	%r0 %f3 l.83
	mul.s	%f9 %f3 %f4
	mul.s	%f0 %f7 %f3
	add.s	%f3 %f4 %f7
	ilw.s	%r0 %f3 l.84
	mul.s	%f9 %f3 %f4
	mul.s	%f0 %f7 %f3
	add.s	%f3 %f4 %f4
	ilw.s	%r0 %f3 l.85
	mul.s	%f9 %f3 %f7
	mul.s	%f0 %f4 %f3
	add.s	%f3 %f7 %f4
	ilw.s	%r0 %f3 l.86
	mul.s	%f9 %f3 %f7
	mul.s	%f0 %f4 %f3
	add.s	%f3 %f7 %f7
	ilw.s	%r0 %f3 l.87
	mul.s	%f9 %f3 %f4
	mul.s	%f0 %f7 %f3
	add.s	%f3 %f4 %f3
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f3
tail_b.2100 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f3 %f0
branching_b.1325 :
	floor.w.s	%f0 %f3
	sub.s	%f3 %f0 %f0
	ilw.s	%r0 %f4 l.90
	ilw.s	%r0 %f5 l.62
	sub.s	%f6 %f5 %f3
	mul.s	%f3 %f3 %f3
	sub.s	%f3 %f4 %f3
	sub.s	%f0 %f5 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f3 %f0
	fbge	%f0 %f1 tail_b.2103
tail_b.2102 :
	addi	%r0 %r2 1
	j	branching_b.1326
tail_b.2103 :
	addi	%r0 %r2 0
branching_b.1326 :
	beq	%r2 %r0 tail_b.2104
tail_b.2105 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2106
tail_b.2104 :
tail_b.2106 :
	ilw.s	%r0 %f3 l.52
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.91
	div.s	%f0 %f3 %f0
	sw.s	%r0 %f0 588
branching_b.1327 :
	lw	%r0 %r2 536
	sw	%r26 %r4 -592
	sw	%r26 %r5 -596
	sw	%r26 %r6 -600
	sw	%r26 %r7 -604
	sw	%r26 %r9 -608
	sw	%r26 %r3 -612
	sw	%r26 %r10 -616
	sw	%r26 %r8 -620
	sw	%r26 %r11 -624
	sw	%r26 %r13 -628
	sw.s	%r26 %f1 -632
	sw.s	%r26 %f2 -636
	sw	%r26 %r1 -640
	mov	%r0 %r1
	sw	%r26 %r28 -644
	addi	%r26 %r26 -648
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 648
	lw	%r26 %r28 -644
	mov	%r1 %r2
	lw	%r26 %r4 -592
	lw	%r26 %r5 -596
	lw	%r26 %r6 -600
	lw	%r26 %r7 -604
	lw	%r26 %r9 -608
	lw	%r26 %r3 -612
	lw	%r26 %r10 -616
	lw	%r26 %r8 -620
	lw	%r26 %r11 -624
	lw	%r26 %r13 -628
	lw.s	%r26 %f1 -632
	lw.s	%r26 %f2 -636
	lw	%r26 %r1 -640
	beq	%r2 %r0 branching_b.1328
tail_b.2113 :
	j	tail_b.2188
branching_b.1328 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f3 312
	mul.s	%f3 %f0 %f4
	lw.s	%r0 %f3 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f4 %f4
	lw.s	%r0 %f3 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f4 %f0
	neg.s	%f0 %f0
	fbge	%f1 %f0 tail_b.2109
tail_b.2108 :
	addi	%r0 %r2 1
	j	branching_b.1329
tail_b.2109 :
	addi	%r0 %r2 0
branching_b.1329 :
	beq	%r2 %r0 tail_b.2110
tail_b.2111 :
	j	tail_b.2112
tail_b.2110 :
	ilw.s	%r0 %f0 l.51
tail_b.2112 :
	mul.s	%f0 %f2 %f1
	lw	%r1 %r1 28
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
	lw.s	%r0 %f0 600
	lw.s	%r0 %f2 588
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2188
branching_b.1295 :
	lw	%r1 %r12 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f3
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f3 %f3
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f3 %f0
	sqrt.s	%f0 %f3
	fbne	%f3 %f1 tail_b.2058
tail_b.2057 :
	addi	%r0 %r2 1
	j	branching_b.1296
tail_b.2058 :
	addi	%r0 %r2 0
branching_b.1296 :
	beq	%r2 %r0 branching_b.1297
tail_b.2061 :
	ilw.s	%r0 %f3 l.56
	j	tail_b.2062
branching_b.1297 :
	beq	%r12 %r0 tail_b.2059
tail_b.2060 :
	ilw.s	%r0 %f0 l.58
	div.s	%f3 %f0 %f3
	j	tail_b.2062
tail_b.2059 :
	ilw.s	%r0 %f0 l.56
	div.s	%f3 %f0 %f3
tail_b.2062 :
	lw.s	%r0 %f0 568
	mul.s	%f3 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f3 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f3 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1298
branching_b.1331 :
	beq	%r1 %r0 tail_b.2116
branching_b.1332 :
	ilw.s	%r0 %f2 l.70
	fbge	%f0 %f2 tail_b.2118
tail_b.2117 :
	addi	%r0 %r1 1
	j	branching_b.1333
tail_b.2118 :
	addi	%r0 %r1 0
	j	branching_b.1333
tail_b.2116 :
	addi	%r0 %r1 0
branching_b.1333 :
	beq	%r1 %r0 tail_b.2119
branching_b.1334 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r14 0
	lw	%r12 %r12 0
	lw	%r14 %r2 4
	beq	%r2 %r8 branching_b.1335
branching_b.1339 :
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.2128
branching_b.1340 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f10
	lw.s	%r0 %f2 556
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f6
	lw.s	%r0 %f0 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f9
	lw	%r14 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f10 %f7
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f5
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f8
	lw	%r14 %r1 12
	beq	%r1 %r0 tail_b.2129
tail_b.2130 :
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f9 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f4 l.69
	div.s	%f4 %f0 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 568
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f10 %f0
	lw	%r14 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f9 %f2
	add.s	%f2 %f0 %f0
	div.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 572
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f10 %f2
	lw	%r14 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	div.s	%f4 %f0 %f0
	add.s	%f0 %f8 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1341
tail_b.2129 :
	sw.s	%r0 %f7 568
	sw.s	%r0 %f5 572
	sw.s	%r0 %f8 576
	j	branching_b.1341
tail_b.2128 :
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
	j	branching_b.1344
branching_b.1335 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r2 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r12 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.2121
tail_b.2120 :
	addi	%r0 %r1 1
	j	branching_b.1336
tail_b.2121 :
	addi	%r0 %r1 0
	j	branching_b.1336
tail_b.2119 :
	j	tail_b.2188
branching_b.1336 :
	beq	%r1 %r0 branching_b.1337
tail_b.2126 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2127
branching_b.1337 :
	fbge	%f1 %f0 tail_b.2123
tail_b.2122 :
	addi	%r0 %r1 1
	j	branching_b.1338
tail_b.2123 :
	addi	%r0 %r1 0
branching_b.1338 :
	beq	%r1 %r0 tail_b.2124
tail_b.2125 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2127
tail_b.2124 :
	ilw.s	%r0 %f0 l.58
tail_b.2127 :
	neg.s	%f0 %f0
	slli	%r2 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1344 :
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
	beq	%r2 %r8 branching_b.1345
branching_b.1350 :
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.2146
branching_b.1351 :
	addi	%r0 %r1 3
	beq	%r2 %r1 tail_b.2147
branching_b.1352 :
	beq	%r2 %r5 branching_b.1353
tail_b.2181 :
	j	branching_b.1373
branching_b.1353 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f2
	lw	%r14 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f2 %f2
	lw.s	%r0 %f0 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sub.s	%f4 %f0 %f4
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f2 %f4
	mul.s	%f0 %f0 %f5
	add.s	%f5 %f4 %f4
	fbge	%f2 %f1 tail_b.2149
tail_b.2148 :
	neg.s	%f2 %f5
	j	branching_b.1354
tail_b.2149 :
	mov.s	%f2 %f5
	j	branching_b.1354
tail_b.2147 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f4
	lw.s	%r0 %f2 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f0
	mul.s	%f4 %f4 %f2
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f2 l.73
	div.s	%f2 %f0 %f2
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.75
	mul.s	%f2 %f0 %f0
	sw	%r26 %r4 -644
	sw	%r26 %r5 -648
	sw	%r26 %r6 -652
	sw	%r26 %r7 -656
	sw	%r26 %r9 -660
	sw	%r26 %r3 -664
	sw	%r26 %r10 -668
	sw	%r26 %r8 -672
	sw	%r26 %r11 -676
	sw	%r26 %r13 -680
	sw.s	%r26 %f1 -684
	sw.s	%r26 %f3 -688
	sw	%r26 %r14 -692
	sw	%r26 %r28 -696
	addi	%r26 %r26 -700
	jal	cos.0
	addi	%r26 %r26 700
	lw	%r26 %r28 -696
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f2 l.52
	mul.s	%f2 %f0 %f4
	sw.s	%r0 %f4 584
	ilw.s	%r0 %f4 l.56
	sub.s	%f0 %f4 %f0
	mul.s	%f2 %f0 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r4 -644
	lw	%r26 %r5 -648
	lw	%r26 %r6 -652
	lw	%r26 %r7 -656
	lw	%r26 %r9 -660
	lw	%r26 %r3 -664
	lw	%r26 %r10 -668
	lw	%r26 %r8 -672
	lw	%r26 %r11 -676
	lw	%r26 %r13 -680
	lw.s	%r26 %f1 -684
	lw.s	%r26 %f3 -688
	lw	%r26 %r14 -692
	j	branching_b.1373
tail_b.2146 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f2 l.74
	mul.s	%f2 %f0 %f0
	sw	%r26 %r4 -696
	sw	%r26 %r5 -700
	sw	%r26 %r6 -704
	sw	%r26 %r7 -708
	sw	%r26 %r9 -712
	sw	%r26 %r3 -716
	sw	%r26 %r10 -720
	sw	%r26 %r8 -724
	sw	%r26 %r11 -728
	sw	%r26 %r13 -732
	sw.s	%r26 %f1 -736
	sw.s	%r26 %f3 -740
	sw	%r26 %r14 -744
	sw	%r26 %r28 -748
	addi	%r26 %r26 -752
	jal	sin.0
	addi	%r26 %r26 752
	lw	%r26 %r28 -748
	mul.s	%f0 %f0 %f2
	ilw.s	%r0 %f4 l.52
	mul.s	%f2 %f4 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r4 -696
	lw	%r26 %r5 -700
	lw	%r26 %r6 -704
	lw	%r26 %r7 -708
	lw	%r26 %r9 -712
	lw	%r26 %r3 -716
	lw	%r26 %r10 -720
	lw	%r26 %r8 -724
	lw	%r26 %r11 -728
	lw	%r26 %r13 -732
	lw.s	%r26 %f1 -736
	lw.s	%r26 %f3 -740
	lw	%r26 %r14 -744
	j	branching_b.1373
branching_b.1345 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f0
	ilw.s	%r0 %f6 l.71
	mul.s	%f6 %f0 %f2
	floor.w.s	%f2 %f2
	ilw.s	%r0 %f5 l.72
	mul.s	%f5 %f2 %f2
	sub.s	%f2 %f0 %f0
	ilw.s	%r0 %f4 l.73
	fbge	%f0 %f4 tail_b.2138
tail_b.2137 :
	addi	%r0 %r1 1
	j	branching_b.1346
tail_b.2138 :
	addi	%r0 %r1 0
branching_b.1346 :
	lw.s	%r0 %f2 560
	lw	%r14 %r2 20
	addi	%r2 %r2 8
	lw.s	%r2 %f0 0
	sub.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f2
	floor.w.s	%f2 %f2
	mul.s	%f5 %f2 %f2
	sub.s	%f2 %f0 %f0
	fbge	%f0 %f4 tail_b.2140
tail_b.2139 :
	addi	%r0 %r2 1
	j	branching_b.1347
tail_b.2140 :
	addi	%r0 %r2 0
branching_b.1347 :
	beq	%r1 %r0 branching_b.1348
branching_b.1349 :
	beq	%r2 %r0 tail_b.2143
tail_b.2144 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2145
tail_b.2143 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2145
branching_b.1348 :
	beq	%r2 %r0 tail_b.2141
tail_b.2142 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2145
tail_b.2141 :
	ilw.s	%r0 %f0 l.52
tail_b.2145 :
	sw.s	%r0 %f0 584
	j	branching_b.1373
branching_b.1354 :
	ilw.s	%r0 %f6 l.76
	fbge	%f5 %f6 tail_b.2151
tail_b.2150 :
	addi	%r0 %r1 1
	j	branching_b.1355
tail_b.2151 :
	addi	%r0 %r1 0
branching_b.1355 :
	beq	%r1 %r0 branching_b.1356
tail_b.2161 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.1362
branching_b.1356 :
	div.s	%f2 %f0 %f9
	fbge	%f9 %f1 tail_b.2153
tail_b.2152 :
	neg.s	%f9 %f9
	j	branching_b.1357
tail_b.2153 :
branching_b.1357 :
	fbg	%f1 %f9 branching_b.1360
branching_b.1358 :
	ilw.s	%r0 %f0 l.80
	fbge	%f9 %f0 branching_b.1359
tail_b.2154 :
	ilw.s	%r0 %f2 l.56
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f7
	mul.s	%f8 %f5 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f5
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f5 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f5
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f9 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f2
	j	tail_b.2160
branching_b.1359 :
	ilw.s	%r0 %f0 l.81
	fbge	%f9 %f0 tail_b.2156
tail_b.2155 :
	ilw.s	%r0 %f8 l.56
	sub.s	%f8 %f9 %f0
	add.s	%f8 %f9 %f2
	div.s	%f2 %f0 %f7
	ilw.s	%r0 %f2 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f7 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f5
	mul.s	%f10 %f9 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f7 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f7 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f2
	j	tail_b.2160
tail_b.2156 :
	ilw.s	%r0 %f0 l.56
	div.s	%f9 %f0 %f5
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f8 l.89
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f2 l.83
	mul.s	%f5 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f2
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.87
	mul.s	%f5 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f2
	j	tail_b.2160
branching_b.1360 :
	neg.s	%f9 %f7
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1361
tail_b.2157 :
	ilw.s	%r0 %f5 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f2
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.85
	mul.s	%f7 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.87
	mul.s	%f7 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f2
	j	tail_b.2160
branching_b.1361 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2159
tail_b.2158 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f7 %f2
	add.s	%f0 %f7 %f0
	div.s	%f0 %f2 %f2
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f5 l.59
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f2 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f2 %f0 %f0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f2 %f0 %f0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f2 %f0 %f0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f0 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f2 %f0 %f7
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f2 %f0 %f0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f2
	j	tail_b.2160
tail_b.2159 :
	ilw.s	%r0 %f5 l.56
	div.s	%f7 %f5 %f9
	ilw.s	%r0 %f7 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f0
	mul.s	%f10 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.84
	mul.s	%f9 %f2 %f2
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f2 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f2
	mul.s	%f10 %f8 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f10 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.87
	mul.s	%f9 %f2 %f2
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f2
tail_b.2160 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f2 %f0
branching_b.1362 :
	floor.w.s	%f0 %f2
	sub.s	%f2 %f0 %f5
	lw.s	%r0 %f2 556
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f2
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f2 %f2
	fbge	%f4 %f1 tail_b.2163
tail_b.2162 :
	neg.s	%f4 %f0
	j	branching_b.1363
tail_b.2163 :
	mov.s	%f4 %f0
branching_b.1363 :
	fbge	%f0 %f6 tail_b.2165
tail_b.2164 :
	addi	%r0 %r1 1
	j	branching_b.1364
tail_b.2165 :
	addi	%r0 %r1 0
branching_b.1364 :
	beq	%r1 %r0 branching_b.1365
tail_b.2175 :
	ilw.s	%r0 %f2 l.78
	j	branching_b.1371
branching_b.1365 :
	div.s	%f4 %f2 %f4
	fbge	%f4 %f1 tail_b.2167
tail_b.2166 :
	neg.s	%f4 %f4
	j	branching_b.1366
tail_b.2167 :
branching_b.1366 :
	fbg	%f1 %f4 branching_b.1369
branching_b.1367 :
	ilw.s	%r0 %f0 l.80
	fbge	%f4 %f0 branching_b.1368
tail_b.2168 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f4 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f2
	j	tail_b.2174
branching_b.1368 :
	ilw.s	%r0 %f0 l.81
	fbge	%f4 %f0 tail_b.2170
tail_b.2169 :
	ilw.s	%r0 %f6 l.56
	sub.s	%f6 %f4 %f0
	add.s	%f6 %f4 %f2
	div.s	%f2 %f0 %f8
	ilw.s	%r0 %f7 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f2 l.83
	mul.s	%f8 %f2 %f2
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f2
	mul.s	%f4 %f9 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f9
	mul.s	%f4 %f2 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f6 %f0 %f2
	j	tail_b.2174
tail_b.2170 :
	ilw.s	%r0 %f0 l.56
	div.s	%f4 %f0 %f8
	ilw.s	%r0 %f0 l.58
	ilw.s	%r0 %f6 l.89
	neg.s	%f8 %f2
	mul.s	%f8 %f2 %f7
	ilw.s	%r0 %f2 l.82
	mul.s	%f8 %f2 %f4
	ilw.s	%r0 %f2 l.83
	mul.s	%f8 %f2 %f2
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f2 %f2
	ilw.s	%r0 %f4 l.84
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f4 %f4
	ilw.s	%r0 %f2 l.85
	mul.s	%f8 %f2 %f2
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f2 %f4
	ilw.s	%r0 %f2 l.86
	mul.s	%f8 %f2 %f2
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f2 %f4
	ilw.s	%r0 %f2 l.87
	mul.s	%f8 %f2 %f2
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f2 %f2
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f8 %f2
	add.s	%f2 %f6 %f2
	mul.s	%f0 %f2 %f2
	j	tail_b.2174
branching_b.1369 :
	neg.s	%f4 %f7
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1370
tail_b.2171 :
	ilw.s	%r0 %f4 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f2 l.83
	mul.s	%f7 %f2 %f2
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.84
	mul.s	%f7 %f2 %f2
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.85
	mul.s	%f7 %f2 %f2
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.87
	mul.s	%f7 %f2 %f2
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f2
	j	tail_b.2174
branching_b.1370 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2173
tail_b.2172 :
	ilw.s	%r0 %f2 l.56
	sub.s	%f2 %f7 %f0
	add.s	%f2 %f7 %f2
	div.s	%f2 %f0 %f7
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f2 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f4 l.83
	mul.s	%f7 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f7 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f2
	j	tail_b.2174
tail_b.2173 :
	ilw.s	%r0 %f2 l.56
	div.s	%f7 %f2 %f8
	ilw.s	%r0 %f9 l.89
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f7
	mul.s	%f4 %f6 %f0
	add.s	%f0 %f7 %f6
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f7
	mul.s	%f4 %f6 %f0
	add.s	%f0 %f7 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f7
	mul.s	%f4 %f6 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f6
	mul.s	%f4 %f7 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f8 %f6 %f6
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f2 %f0 %f2
tail_b.2174 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f2 %f2
branching_b.1371 :
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f6 l.90
	ilw.s	%r0 %f4 l.62
	sub.s	%f5 %f4 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f6 %f2
	sub.s	%f0 %f4 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f2 %f0
	fbge	%f0 %f1 tail_b.2177
tail_b.2176 :
	addi	%r0 %r1 1
	j	branching_b.1372
tail_b.2177 :
	addi	%r0 %r1 0
branching_b.1372 :
	beq	%r1 %r0 tail_b.2178
tail_b.2179 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2180
tail_b.2178 :
tail_b.2180 :
	ilw.s	%r0 %f2 l.52
	mul.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.91
	div.s	%f0 %f2 %f0
	sw.s	%r0 %f0 588
branching_b.1373 :
	lw	%r0 %r2 536
	sw	%r26 %r4 -748
	sw	%r26 %r5 -752
	sw	%r26 %r6 -756
	sw	%r26 %r7 -760
	sw	%r26 %r9 -764
	sw	%r26 %r3 -768
	sw	%r26 %r10 -772
	sw	%r26 %r8 -776
	sw	%r26 %r11 -780
	sw	%r26 %r13 -784
	sw.s	%r26 %f1 -788
	sw.s	%r26 %f3 -792
	sw	%r26 %r14 -796
	mov	%r0 %r1
	sw	%r26 %r28 -800
	addi	%r26 %r26 -804
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 804
	lw	%r26 %r28 -800
	lw	%r26 %r4 -748
	lw	%r26 %r5 -752
	lw	%r26 %r6 -756
	lw	%r26 %r7 -760
	lw	%r26 %r9 -764
	lw	%r26 %r3 -768
	lw	%r26 %r10 -772
	lw	%r26 %r8 -776
	lw	%r26 %r11 -780
	lw	%r26 %r13 -784
	lw.s	%r26 %f1 -788
	lw.s	%r26 %f3 -792
	lw	%r26 %r14 -796
	beq	%r1 %r0 branching_b.1374
tail_b.2187 :
	j	tail_b.2188
branching_b.1374 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f2 312
	mul.s	%f2 %f0 %f4
	lw.s	%r0 %f2 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f4 %f2
	lw.s	%r0 %f0 576
	lw.s	%r0 %f4 320
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f2 %f0
	neg.s	%f0 %f0
	fbge	%f1 %f0 tail_b.2183
tail_b.2182 :
	addi	%r0 %r1 1
	j	branching_b.1375
tail_b.2183 :
	addi	%r0 %r1 0
branching_b.1375 :
	beq	%r1 %r0 tail_b.2184
tail_b.2185 :
	j	tail_b.2186
tail_b.2184 :
	ilw.s	%r0 %f0 l.51
tail_b.2186 :
	mul.s	%f0 %f3 %f1
	lw	%r14 %r1 28
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
	j	tail_b.2188
branching_b.1341 :
	lw	%r14 %r2 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f2 572
	mul.s	%f2 %f2 %f2
	add.s	%f2 %f0 %f0
	lw.s	%r0 %f2 576
	mul.s	%f2 %f2 %f2
	add.s	%f2 %f0 %f0
	sqrt.s	%f0 %f2
	fbne	%f2 %f1 tail_b.2132
tail_b.2131 :
	addi	%r0 %r1 1
	j	branching_b.1342
tail_b.2132 :
	addi	%r0 %r1 0
branching_b.1342 :
	beq	%r1 %r0 branching_b.1343
tail_b.2135 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2136
branching_b.1343 :
	beq	%r2 %r0 tail_b.2133
tail_b.2134 :
	ilw.s	%r0 %f0 l.58
	div.s	%f2 %f0 %f0
	j	tail_b.2136
tail_b.2133 :
	ilw.s	%r0 %f0 l.56
	div.s	%f2 %f0 %f0
tail_b.2136 :
	lw.s	%r0 %f2 568
	mul.s	%f0 %f2 %f2
	sw.s	%r0 %f2 568
	lw.s	%r0 %f2 572
	mul.s	%f0 %f2 %f2
	sw.s	%r0 %f2 572
	lw.s	%r0 %f2 576
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1344
postloop_b.47 :
branching_b.1376 :
	addi	%r0 %r11 2
	bne	%r9 %r11 preloop_b.49
tail_b.2352 :
	j	branching_b.1477
preloop_b.49 :
	lw	%r0 %r2 724
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r1 -1
	mov	%r1 %r13
setup_startp_constants_loop.4 :
	ble	%r0 %r13 branching_b.1378
tail_b.2199 :
	j	postloop_b.48
branching_b.1378 :
	slli	%r13 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r12 0
	lw	%r12 %r14 40
	lw	%r12 %r15 4
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	lw	%r12 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	mov	%r14 %r1
	sw.s	%r1 %f0 0
	addi	%r10 %r1 4
	lw.s	%r1 %f1 0
	lw	%r12 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r14 %r1 4
	sw.s	%r1 %f0 0
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	lw	%r12 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r14 %r1 8
	sw.s	%r1 %f0 0
	beq	%r15 %r11 tail_b.2191
branching_b.1379 :
	bl	%r11 %r15 branching_b.1380
tail_b.2197 :
	j	tail_b.2198
branching_b.1380 :
	mov	%r14 %r1
	lw.s	%r1 %f0 0
	addi	%r14 %r1 4
	lw.s	%r1 %f4 0
	addi	%r14 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f0 %f0 %f1
	lw	%r12 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f3
	mul.s	%f4 %f4 %f1
	lw	%r12 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f3 %f3
	mul.s	%f5 %f5 %f1
	lw	%r12 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f3 %f3
	lw	%r12 %r1 12
	beq	%r1 %r0 tail_b.2192
tail_b.2193 :
	mul.s	%f5 %f4 %f1
	lw	%r12 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f3 %f2
	mul.s	%f0 %f5 %f1
	lw	%r12 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f4 %f0 %f2
	lw	%r12 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f3
	j	branching_b.1381
tail_b.2192 :
	j	branching_b.1381
tail_b.2191 :
	lw	%r12 %r12 16
	mov	%r14 %r1
	lw.s	%r1 %f1 0
	addi	%r14 %r1 4
	lw.s	%r1 %f2 0
	addi	%r14 %r1 8
	lw.s	%r1 %f3 0
	mov	%r12 %r1
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f1
	addi	%r12 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r12 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r14 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.2198
branching_b.1381 :
	addi	%r0 %r1 3
	beq	%r15 %r1 tail_b.2194
tail_b.2195 :
	j	tail_b.2196
tail_b.2194 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f3 %f3
tail_b.2196 :
	addi	%r14 %r1 12
	sw.s	%r1 %f3 0
tail_b.2198 :
	addi	%r13 %r13 -1
	j	setup_startp_constants_loop.4
postloop_b.48 :
preloop_b.50 :
	addi	%r0 %r12 118
iter_trace_diffuse_rays_loop.4 :
	ble	%r0 %r12 branching_b.1383
tail_b.2351 :
	j	postloop_b.49
branching_b.1383 :
	slli	%r12 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r13 0
	mov	%r13 %r1
	lw.s	%r1 %f1 0
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	addi	%r13 %r1 4
	lw.s	%r1 %f2 0
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f2
	addi	%r13 %r1 8
	lw.s	%r1 %f1 0
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	ilw.s	%r0 %f2 l.51
	fbge	%f1 %f2 tail_b.2201
tail_b.2200 :
	addi	%r0 %r1 1
	j	branching_b.1384
tail_b.2201 :
	addi	%r0 %r1 0
branching_b.1384 :
	beq	%r1 %r0 branching_b.1385
branching_b.1431 :
	addi	%r12 %r1 1
	slli	%r1 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r14 0
	ilw.s	%r0 %f0 l.93
	div.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r1 536
	sw	%r26 %r4 -800
	sw	%r26 %r5 -804
	sw	%r26 %r6 -808
	sw	%r26 %r7 -812
	sw	%r26 %r9 -816
	sw	%r26 %r3 -820
	sw	%r26 %r10 -824
	sw	%r26 %r8 -828
	sw	%r26 %r11 -832
	sw	%r26 %r2 -836
	sw	%r26 %r12 -840
	sw.s	%r26 %f2 -844
	sw	%r26 %r14 -848
	sw.s	%r26 %f3 -852
	mov	%r14 %r3
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -856
	addi	%r26 %r26 -860
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 860
	lw	%r26 %r28 -856
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.68
	lw	%r26 %r4 -800
	lw	%r26 %r5 -804
	lw	%r26 %r6 -808
	lw	%r26 %r7 -812
	lw	%r26 %r9 -816
	lw	%r26 %r3 -820
	lw	%r26 %r10 -824
	lw	%r26 %r8 -828
	lw	%r26 %r11 -832
	lw	%r26 %r2 -836
	lw	%r26 %r12 -840
	lw.s	%r26 %f2 -844
	lw	%r26 %r14 -848
	lw.s	%r26 %f3 -852
	fbge	%f0 %f1 tail_b.2277
tail_b.2276 :
	addi	%r0 %r1 1
	j	branching_b.1432
tail_b.2277 :
	addi	%r0 %r1 0
	j	branching_b.1432
branching_b.1385 :
	slli	%r12 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r14 0
	ilw.s	%r0 %f0 l.94
	div.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r1 536
	sw	%r26 %r4 -856
	sw	%r26 %r5 -860
	sw	%r26 %r6 -864
	sw	%r26 %r7 -868
	sw	%r26 %r9 -872
	sw	%r26 %r3 -876
	sw	%r26 %r10 -880
	sw	%r26 %r8 -884
	sw	%r26 %r11 -888
	sw	%r26 %r2 -892
	sw	%r26 %r12 -896
	sw.s	%r26 %f2 -900
	sw	%r26 %r14 -904
	sw.s	%r26 %f3 -908
	mov	%r14 %r3
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -912
	addi	%r26 %r26 -916
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 916
	lw	%r26 %r28 -912
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f1 l.68
	lw	%r26 %r4 -856
	lw	%r26 %r5 -860
	lw	%r26 %r6 -864
	lw	%r26 %r7 -868
	lw	%r26 %r9 -872
	lw	%r26 %r3 -876
	lw	%r26 %r10 -880
	lw	%r26 %r8 -884
	lw	%r26 %r11 -888
	lw	%r26 %r2 -892
	lw	%r26 %r12 -896
	lw.s	%r26 %f2 -900
	lw	%r26 %r14 -904
	lw.s	%r26 %f3 -908
	fbge	%f1 %f0 tail_b.2203
tail_b.2202 :
	addi	%r0 %r1 1
	j	branching_b.1386
tail_b.2203 :
	addi	%r0 %r1 0
branching_b.1386 :
	beq	%r1 %r0 tail_b.2204
branching_b.1387 :
	ilw.s	%r0 %f1 l.70
	fbge	%f0 %f1 tail_b.2206
tail_b.2205 :
	addi	%r0 %r1 1
	j	branching_b.1388
tail_b.2206 :
	addi	%r0 %r1 0
	j	branching_b.1388
tail_b.2204 :
	addi	%r0 %r1 0
branching_b.1388 :
	beq	%r1 %r0 tail_b.2207
branching_b.1389 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r13 0
	lw	%r14 %r15 0
	lw	%r13 %r1 4
	beq	%r1 %r8 branching_b.1390
branching_b.1394 :
	beq	%r1 %r11 tail_b.2216
branching_b.1395 :
	lw.s	%r0 %f1 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f9
	lw.s	%r0 %f1 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw.s	%r0 %f4 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f7
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f10
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f4
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f6
	lw	%r13 %r1 12
	beq	%r1 %r0 tail_b.2217
tail_b.2218 :
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f5
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f8 l.69
	div.s	%f8 %f0 %f0
	add.s	%f0 %f10 %f0
	sw.s	%r0 %f0 568
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f5
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f5 %f0
	div.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f9 %f4
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	div.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1396
tail_b.2217 :
	sw.s	%r0 %f10 568
	sw.s	%r0 %f4 572
	sw.s	%r0 %f6 576
	j	branching_b.1396
tail_b.2216 :
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
	j	branching_b.1399
branching_b.1390 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r14 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r15 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.2209
tail_b.2208 :
	addi	%r0 %r1 1
	j	branching_b.1391
tail_b.2209 :
	addi	%r0 %r1 0
	j	branching_b.1391
tail_b.2207 :
tail_b.2350 :
	addi	%r12 %r12 -2
	j	iter_trace_diffuse_rays_loop.4
branching_b.1391 :
	beq	%r1 %r0 branching_b.1392
tail_b.2214 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2215
branching_b.1392 :
	fbge	%f2 %f0 tail_b.2211
tail_b.2210 :
	addi	%r0 %r1 1
	j	branching_b.1393
tail_b.2211 :
	addi	%r0 %r1 0
branching_b.1393 :
	beq	%r1 %r0 tail_b.2212
tail_b.2213 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2215
tail_b.2212 :
	ilw.s	%r0 %f0 l.58
tail_b.2215 :
	neg.s	%f0 %f0
	slli	%r14 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1399 :
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
	beq	%r14 %r8 branching_b.1400
branching_b.1405 :
	beq	%r14 %r11 tail_b.2234
branching_b.1406 :
	addi	%r0 %r1 3
	beq	%r14 %r1 tail_b.2235
branching_b.1407 :
	beq	%r14 %r5 branching_b.1408
tail_b.2269 :
	j	branching_b.1428
branching_b.1408 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f5
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	mul.s	%f5 %f5 %f4
	mul.s	%f0 %f0 %f1
	add.s	%f1 %f4 %f6
	fbge	%f5 %f2 tail_b.2237
tail_b.2236 :
	neg.s	%f5 %f1
	j	branching_b.1409
tail_b.2237 :
	mov.s	%f5 %f1
	j	branching_b.1409
tail_b.2235 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw.s	%r0 %f4 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f0
	mul.s	%f1 %f1 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.73
	div.s	%f1 %f0 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f1 %f0
	sw	%r26 %r4 -912
	sw	%r26 %r5 -916
	sw	%r26 %r6 -920
	sw	%r26 %r7 -924
	sw	%r26 %r9 -928
	sw	%r26 %r3 -932
	sw	%r26 %r10 -936
	sw	%r26 %r8 -940
	sw	%r26 %r11 -944
	sw	%r26 %r2 -948
	sw	%r26 %r12 -952
	sw.s	%r26 %f2 -956
	sw.s	%r26 %f3 -960
	sw	%r26 %r13 -964
	sw	%r26 %r28 -968
	addi	%r26 %r26 -972
	jal	cos.0
	addi	%r26 %r26 972
	lw	%r26 %r28 -968
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f0 l.52
	mul.s	%f0 %f4 %f1
	sw.s	%r0 %f1 584
	ilw.s	%r0 %f1 l.56
	sub.s	%f4 %f1 %f1
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r4 -912
	lw	%r26 %r5 -916
	lw	%r26 %r6 -920
	lw	%r26 %r7 -924
	lw	%r26 %r9 -928
	lw	%r26 %r3 -932
	lw	%r26 %r10 -936
	lw	%r26 %r8 -940
	lw	%r26 %r11 -944
	lw	%r26 %r2 -948
	lw	%r26 %r12 -952
	lw.s	%r26 %f2 -956
	lw.s	%r26 %f3 -960
	lw	%r26 %r13 -964
	j	branching_b.1428
tail_b.2234 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.74
	mul.s	%f1 %f0 %f0
	sw	%r26 %r4 -968
	sw	%r26 %r5 -972
	sw	%r26 %r6 -976
	sw	%r26 %r7 -980
	sw	%r26 %r9 -984
	sw	%r26 %r3 -988
	sw	%r26 %r10 -992
	sw	%r26 %r8 -996
	sw	%r26 %r11 -1000
	sw	%r26 %r2 -1004
	sw	%r26 %r12 -1008
	sw.s	%r26 %f2 -1012
	sw.s	%r26 %f3 -1016
	sw	%r26 %r13 -1020
	sw	%r26 %r28 -1024
	addi	%r26 %r26 -1028
	jal	sin.0
	addi	%r26 %r26 1028
	lw	%r26 %r28 -1024
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f4 l.52
	mul.s	%f1 %f4 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r4 -968
	lw	%r26 %r5 -972
	lw	%r26 %r6 -976
	lw	%r26 %r7 -980
	lw	%r26 %r9 -984
	lw	%r26 %r3 -988
	lw	%r26 %r10 -992
	lw	%r26 %r8 -996
	lw	%r26 %r11 -1000
	lw	%r26 %r2 -1004
	lw	%r26 %r12 -1008
	lw.s	%r26 %f2 -1012
	lw.s	%r26 %f3 -1016
	lw	%r26 %r13 -1020
	j	branching_b.1428
branching_b.1400 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f5 l.71
	mul.s	%f5 %f1 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f4 l.72
	mul.s	%f4 %f0 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f6 l.73
	fbge	%f0 %f6 tail_b.2226
tail_b.2225 :
	addi	%r0 %r1 1
	j	branching_b.1401
tail_b.2226 :
	addi	%r0 %r1 0
branching_b.1401 :
	lw.s	%r0 %f0 560
	lw	%r13 %r14 20
	addi	%r14 %r14 8
	lw.s	%r14 %f1 0
	sub.s	%f1 %f0 %f1
	mul.s	%f5 %f1 %f0
	floor.w.s	%f0 %f0
	mul.s	%f4 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f6 tail_b.2228
tail_b.2227 :
	addi	%r0 %r14 1
	j	branching_b.1402
tail_b.2228 :
	addi	%r0 %r14 0
branching_b.1402 :
	beq	%r1 %r0 branching_b.1403
branching_b.1404 :
	beq	%r14 %r0 tail_b.2231
tail_b.2232 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2233
tail_b.2231 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2233
branching_b.1403 :
	beq	%r14 %r0 tail_b.2229
tail_b.2230 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2233
tail_b.2229 :
	ilw.s	%r0 %f0 l.52
tail_b.2233 :
	sw.s	%r0 %f0 584
	j	branching_b.1428
branching_b.1409 :
	ilw.s	%r0 %f4 l.76
	fbge	%f1 %f4 tail_b.2239
tail_b.2238 :
	addi	%r0 %r1 1
	j	branching_b.1410
tail_b.2239 :
	addi	%r0 %r1 0
branching_b.1410 :
	beq	%r1 %r0 branching_b.1411
tail_b.2249 :
	ilw.s	%r0 %f1 l.78
	j	branching_b.1417
branching_b.1411 :
	div.s	%f5 %f0 %f0
	fbge	%f0 %f2 tail_b.2241
tail_b.2240 :
	neg.s	%f0 %f1
	j	branching_b.1412
tail_b.2241 :
	mov.s	%f0 %f1
branching_b.1412 :
	fbg	%f2 %f1 branching_b.1415
branching_b.1413 :
	ilw.s	%r0 %f0 l.80
	fbge	%f1 %f0 branching_b.1414
tail_b.2242 :
	ilw.s	%r0 %f5 l.56
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f7 l.83
	mul.s	%f1 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f7
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f1 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.87
	mul.s	%f1 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2248
branching_b.1414 :
	ilw.s	%r0 %f0 l.81
	fbge	%f1 %f0 tail_b.2244
tail_b.2243 :
	ilw.s	%r0 %f9 l.56
	sub.s	%f9 %f1 %f0
	add.s	%f9 %f1 %f1
	div.s	%f1 %f0 %f7
	ilw.s	%r0 %f8 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f7 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f7 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f10
	mul.s	%f1 %f5 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f7 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.2248
tail_b.2244 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f10
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f7 l.89
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f9
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f10 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f10 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2248
branching_b.1415 :
	neg.s	%f1 %f10
	ilw.s	%r0 %f0 l.80
	fbge	%f10 %f0 branching_b.1416
tail_b.2245 :
	ilw.s	%r0 %f8 l.58
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f1 l.82
	mul.s	%f10 %f1 %f7
	ilw.s	%r0 %f1 l.83
	mul.s	%f10 %f1 %f5
	mul.s	%f0 %f7 %f1
	add.s	%f1 %f5 %f5
	ilw.s	%r0 %f1 l.84
	mul.s	%f10 %f1 %f1
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f1 %f5
	ilw.s	%r0 %f1 l.85
	mul.s	%f10 %f1 %f1
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f1 %f5
	ilw.s	%r0 %f1 l.86
	mul.s	%f10 %f1 %f7
	mul.s	%f0 %f5 %f1
	add.s	%f1 %f7 %f1
	ilw.s	%r0 %f5 l.87
	mul.s	%f10 %f5 %f5
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2248
branching_b.1416 :
	ilw.s	%r0 %f0 l.81
	fbge	%f10 %f0 tail_b.2247
tail_b.2246 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f10 %f1
	add.s	%f0 %f10 %f0
	div.s	%f0 %f1 %f7
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f1 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f7 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f7 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f5
	mul.s	%f10 %f9 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2248
tail_b.2247 :
	ilw.s	%r0 %f9 l.56
	div.s	%f10 %f9 %f5
	ilw.s	%r0 %f8 l.89
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f5 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f5 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f5 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f5 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f9 %f0 %f1
tail_b.2248 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.75
	div.s	%f1 %f0 %f1
branching_b.1417 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f5
	lw.s	%r0 %f0 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	fbge	%f6 %f2 tail_b.2251
tail_b.2250 :
	neg.s	%f6 %f0
	j	branching_b.1418
tail_b.2251 :
	mov.s	%f6 %f0
branching_b.1418 :
	fbge	%f0 %f4 tail_b.2253
tail_b.2252 :
	addi	%r0 %r1 1
	j	branching_b.1419
tail_b.2253 :
	addi	%r0 %r1 0
branching_b.1419 :
	beq	%r1 %r0 branching_b.1420
tail_b.2263 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.1426
branching_b.1420 :
	div.s	%f6 %f1 %f0
	fbge	%f0 %f2 tail_b.2255
tail_b.2254 :
	neg.s	%f0 %f8
	j	branching_b.1421
tail_b.2255 :
	mov.s	%f0 %f8
branching_b.1421 :
	fbg	%f2 %f8 branching_b.1424
branching_b.1422 :
	ilw.s	%r0 %f0 l.80
	fbge	%f8 %f0 branching_b.1423
tail_b.2256 :
	ilw.s	%r0 %f1 l.56
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f4
	mul.s	%f6 %f7 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f8 %f4 %f4
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f8 %f4 %f4
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f1
	j	tail_b.2262
branching_b.1423 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 tail_b.2258
tail_b.2257 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f8 %f1
	add.s	%f7 %f8 %f0
	div.s	%f0 %f1 %f4
	ilw.s	%r0 %f9 l.59
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f6
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f6 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f4 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.2262
tail_b.2258 :
	ilw.s	%r0 %f0 l.56
	div.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.58
	ilw.s	%r0 %f6 l.89
	neg.s	%f8 %f1
	mul.s	%f8 %f1 %f7
	ilw.s	%r0 %f1 l.82
	mul.s	%f8 %f1 %f1
	ilw.s	%r0 %f4 l.83
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.84
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f1 %f1
	ilw.s	%r0 %f4 l.85
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f4 %f1
	ilw.s	%r0 %f4 l.86
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.87
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f1 %f1
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f8 %f1
	add.s	%f1 %f6 %f1
	mul.s	%f0 %f1 %f1
	j	tail_b.2262
branching_b.1424 :
	neg.s	%f8 %f6
	ilw.s	%r0 %f0 l.80
	fbge	%f6 %f0 branching_b.1425
tail_b.2259 :
	ilw.s	%r0 %f1 l.58
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f6 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f6 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f7
	mul.s	%f8 %f4 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f6 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f1
	j	tail_b.2262
branching_b.1425 :
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 tail_b.2261
tail_b.2260 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f6 %f1
	add.s	%f0 %f6 %f0
	div.s	%f0 %f1 %f9
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f6 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f4
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f8
	mul.s	%f4 %f1 %f0
	add.s	%f0 %f8 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f8
	mul.s	%f4 %f1 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f9 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f9 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f1
	mul.s	%f4 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.2262
tail_b.2261 :
	ilw.s	%r0 %f7 l.56
	div.s	%f6 %f7 %f9
	ilw.s	%r0 %f6 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f4 l.83
	mul.s	%f9 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f4
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f8
	mul.s	%f1 %f4 %f0
	add.s	%f0 %f8 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f8
	mul.s	%f1 %f4 %f0
	add.s	%f0 %f8 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f1
tail_b.2262 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.75
	div.s	%f1 %f0 %f0
branching_b.1426 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f6
	ilw.s	%r0 %f1 l.90
	ilw.s	%r0 %f0 l.62
	sub.s	%f5 %f0 %f4
	mul.s	%f4 %f4 %f4
	sub.s	%f4 %f1 %f1
	sub.s	%f6 %f0 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f2 tail_b.2265
tail_b.2264 :
	addi	%r0 %r1 1
	j	branching_b.1427
tail_b.2265 :
	addi	%r0 %r1 0
branching_b.1427 :
	beq	%r1 %r0 tail_b.2266
tail_b.2267 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.2268
tail_b.2266 :
	mov.s	%f0 %f1
tail_b.2268 :
	ilw.s	%r0 %f0 l.52
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.91
	div.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
branching_b.1428 :
	lw	%r0 %r1 536
	sw	%r26 %r4 -1024
	sw	%r26 %r5 -1028
	sw	%r26 %r6 -1032
	sw	%r26 %r7 -1036
	sw	%r26 %r9 -1040
	sw	%r26 %r3 -1044
	sw	%r26 %r10 -1048
	sw	%r26 %r8 -1052
	sw	%r26 %r11 -1056
	sw	%r26 %r2 -1060
	sw	%r26 %r12 -1064
	sw.s	%r26 %f2 -1068
	sw.s	%r26 %f3 -1072
	sw	%r26 %r13 -1076
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -1080
	addi	%r26 %r26 -1084
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 1084
	lw	%r26 %r28 -1080
	lw	%r26 %r4 -1024
	lw	%r26 %r5 -1028
	lw	%r26 %r6 -1032
	lw	%r26 %r7 -1036
	lw	%r26 %r9 -1040
	lw	%r26 %r3 -1044
	lw	%r26 %r10 -1048
	lw	%r26 %r8 -1052
	lw	%r26 %r11 -1056
	lw	%r26 %r2 -1060
	lw	%r26 %r12 -1064
	lw.s	%r26 %f2 -1068
	lw.s	%r26 %f3 -1072
	lw	%r26 %r13 -1076
	beq	%r1 %r0 branching_b.1429
tail_b.2275 :
	j	tail_b.2350
branching_b.1429 :
	lw.s	%r0 %f1 568
	lw.s	%r0 %f0 312
	mul.s	%f0 %f1 %f4
	lw.s	%r0 %f0 572
	lw.s	%r0 %f1 316
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	lw.s	%r0 %f1 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2271
tail_b.2270 :
	addi	%r0 %r1 1
	j	branching_b.1430
tail_b.2271 :
	addi	%r0 %r1 0
branching_b.1430 :
	beq	%r1 %r0 tail_b.2272
tail_b.2273 :
	j	tail_b.2274
tail_b.2272 :
	ilw.s	%r0 %f0 l.51
tail_b.2274 :
	mul.s	%f0 %f3 %f1
	lw	%r13 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f0 592
	lw.s	%r0 %f1 580
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f0 596
	lw.s	%r0 %f1 584
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	lw.s	%r0 %f0 588
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2350
branching_b.1396 :
	lw	%r13 %r14 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f1 572
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f2 tail_b.2220
tail_b.2219 :
	addi	%r0 %r1 1
	j	branching_b.1397
tail_b.2220 :
	addi	%r0 %r1 0
branching_b.1397 :
	beq	%r1 %r0 branching_b.1398
tail_b.2223 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.2224
branching_b.1398 :
	beq	%r14 %r0 tail_b.2221
tail_b.2222 :
	ilw.s	%r0 %f1 l.58
	div.s	%f0 %f1 %f1
	j	tail_b.2224
tail_b.2221 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f1
tail_b.2224 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1399
branching_b.1432 :
	beq	%r1 %r0 tail_b.2278
branching_b.1433 :
	ilw.s	%r0 %f0 l.70
	fbge	%f1 %f0 tail_b.2280
tail_b.2279 :
	addi	%r0 %r1 1
	j	branching_b.1434
tail_b.2280 :
	addi	%r0 %r1 0
	j	branching_b.1434
tail_b.2278 :
	addi	%r0 %r1 0
branching_b.1434 :
	beq	%r1 %r0 tail_b.2281
branching_b.1435 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r13 0
	lw	%r14 %r15 0
	lw	%r13 %r1 4
	beq	%r1 %r8 branching_b.1436
branching_b.1440 :
	beq	%r1 %r11 tail_b.2290
branching_b.1441 :
	lw.s	%r0 %f1 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw.s	%r0 %f4 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f6
	lw.s	%r0 %f4 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f10
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f9
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f4
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f10 %f5
	lw	%r13 %r1 12
	beq	%r1 %r0 tail_b.2291
tail_b.2292 :
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f7
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f10 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f8 l.69
	div.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 568
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f7
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f10 %f0
	add.s	%f0 %f7 %f0
	div.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	div.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1442
tail_b.2291 :
	sw.s	%r0 %f9 568
	sw.s	%r0 %f4 572
	sw.s	%r0 %f5 576
	j	branching_b.1442
tail_b.2290 :
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
	j	branching_b.1445
branching_b.1436 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r14 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r15 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.2283
tail_b.2282 :
	addi	%r0 %r1 1
	j	branching_b.1437
tail_b.2283 :
	addi	%r0 %r1 0
	j	branching_b.1437
tail_b.2281 :
	j	tail_b.2350
branching_b.1437 :
	beq	%r1 %r0 branching_b.1438
tail_b.2288 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2289
branching_b.1438 :
	fbge	%f2 %f0 tail_b.2285
tail_b.2284 :
	addi	%r0 %r1 1
	j	branching_b.1439
tail_b.2285 :
	addi	%r0 %r1 0
branching_b.1439 :
	beq	%r1 %r0 tail_b.2286
tail_b.2287 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2289
tail_b.2286 :
	ilw.s	%r0 %f0 l.58
tail_b.2289 :
	neg.s	%f0 %f0
	slli	%r14 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1445 :
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
	beq	%r14 %r8 branching_b.1446
branching_b.1451 :
	beq	%r14 %r11 tail_b.2308
branching_b.1452 :
	addi	%r0 %r1 3
	beq	%r14 %r1 tail_b.2309
branching_b.1453 :
	beq	%r14 %r5 branching_b.1454
tail_b.2343 :
	j	branching_b.1474
branching_b.1454 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f6
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f7
	mul.s	%f6 %f6 %f0
	mul.s	%f7 %f7 %f1
	add.s	%f1 %f0 %f4
	fbge	%f6 %f2 tail_b.2311
tail_b.2310 :
	neg.s	%f6 %f0
	j	branching_b.1455
tail_b.2311 :
	mov.s	%f6 %f0
	j	branching_b.1455
tail_b.2309 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f1 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.73
	div.s	%f0 %f1 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	sw	%r26 %r4 -1080
	sw	%r26 %r5 -1084
	sw	%r26 %r6 -1088
	sw	%r26 %r7 -1092
	sw	%r26 %r9 -1096
	sw	%r26 %r3 -1100
	sw	%r26 %r10 -1104
	sw	%r26 %r8 -1108
	sw	%r26 %r11 -1112
	sw	%r26 %r2 -1116
	sw	%r26 %r12 -1120
	sw.s	%r26 %f2 -1124
	sw.s	%r26 %f3 -1128
	sw	%r26 %r13 -1132
	sw	%r26 %r28 -1136
	addi	%r26 %r26 -1140
	jal	cos.0
	addi	%r26 %r26 1140
	lw	%r26 %r28 -1136
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f4 l.52
	mul.s	%f4 %f1 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r4 -1080
	lw	%r26 %r5 -1084
	lw	%r26 %r6 -1088
	lw	%r26 %r7 -1092
	lw	%r26 %r9 -1096
	lw	%r26 %r3 -1100
	lw	%r26 %r10 -1104
	lw	%r26 %r8 -1108
	lw	%r26 %r11 -1112
	lw	%r26 %r2 -1116
	lw	%r26 %r12 -1120
	lw.s	%r26 %f2 -1124
	lw.s	%r26 %f3 -1128
	lw	%r26 %r13 -1132
	j	branching_b.1474
tail_b.2308 :
	lw.s	%r0 %f1 556
	ilw.s	%r0 %f0 l.74
	mul.s	%f0 %f1 %f0
	sw	%r26 %r4 -1136
	sw	%r26 %r5 -1140
	sw	%r26 %r6 -1144
	sw	%r26 %r7 -1148
	sw	%r26 %r9 -1152
	sw	%r26 %r3 -1156
	sw	%r26 %r10 -1160
	sw	%r26 %r8 -1164
	sw	%r26 %r11 -1168
	sw	%r26 %r2 -1172
	sw	%r26 %r12 -1176
	sw.s	%r26 %f2 -1180
	sw.s	%r26 %f3 -1184
	sw	%r26 %r13 -1188
	sw	%r26 %r28 -1192
	addi	%r26 %r26 -1196
	jal	sin.0
	addi	%r26 %r26 1196
	lw	%r26 %r28 -1192
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f4 l.52
	mul.s	%f0 %f4 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f1 l.56
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r4 -1136
	lw	%r26 %r5 -1140
	lw	%r26 %r6 -1144
	lw	%r26 %r7 -1148
	lw	%r26 %r9 -1152
	lw	%r26 %r3 -1156
	lw	%r26 %r10 -1160
	lw	%r26 %r8 -1164
	lw	%r26 %r11 -1168
	lw	%r26 %r2 -1172
	lw	%r26 %r12 -1176
	lw.s	%r26 %f2 -1180
	lw.s	%r26 %f3 -1184
	lw	%r26 %r13 -1188
	j	branching_b.1474
branching_b.1446 :
	lw.s	%r0 %f0 552
	lw	%r13 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f6 l.71
	mul.s	%f6 %f0 %f1
	floor.w.s	%f1 %f1
	ilw.s	%r0 %f5 l.72
	mul.s	%f5 %f1 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f4 l.73
	fbge	%f0 %f4 tail_b.2300
tail_b.2299 :
	addi	%r0 %r14 1
	j	branching_b.1447
tail_b.2300 :
	addi	%r0 %r14 0
branching_b.1447 :
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f1
	floor.w.s	%f1 %f1
	mul.s	%f5 %f1 %f1
	sub.s	%f1 %f0 %f0
	fbge	%f0 %f4 tail_b.2302
tail_b.2301 :
	addi	%r0 %r1 1
	j	branching_b.1448
tail_b.2302 :
	addi	%r0 %r1 0
branching_b.1448 :
	beq	%r14 %r0 branching_b.1449
branching_b.1450 :
	beq	%r1 %r0 tail_b.2305
tail_b.2306 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2307
tail_b.2305 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2307
branching_b.1449 :
	beq	%r1 %r0 tail_b.2303
tail_b.2304 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2307
tail_b.2303 :
	ilw.s	%r0 %f0 l.52
tail_b.2307 :
	sw.s	%r0 %f0 584
	j	branching_b.1474
branching_b.1455 :
	ilw.s	%r0 %f5 l.76
	fbge	%f0 %f5 tail_b.2313
tail_b.2312 :
	addi	%r0 %r1 1
	j	branching_b.1456
tail_b.2313 :
	addi	%r0 %r1 0
branching_b.1456 :
	beq	%r1 %r0 branching_b.1457
tail_b.2323 :
	ilw.s	%r0 %f1 l.78
	j	branching_b.1463
branching_b.1457 :
	div.s	%f6 %f7 %f0
	fbge	%f0 %f2 tail_b.2315
tail_b.2314 :
	neg.s	%f0 %f8
	j	branching_b.1458
tail_b.2315 :
	mov.s	%f0 %f8
branching_b.1458 :
	fbg	%f2 %f8 branching_b.1461
branching_b.1459 :
	ilw.s	%r0 %f0 l.80
	fbge	%f8 %f0 branching_b.1460
tail_b.2316 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f6 l.83
	mul.s	%f8 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.84
	mul.s	%f8 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f6 %f6
	add.s	%f6 %f0 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f6
	mul.s	%f1 %f9 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.87
	mul.s	%f8 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2322
branching_b.1460 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 tail_b.2318
tail_b.2317 :
	ilw.s	%r0 %f6 l.56
	sub.s	%f6 %f8 %f0
	add.s	%f6 %f8 %f1
	div.s	%f1 %f0 %f7
	ilw.s	%r0 %f9 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f7 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f1
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f7 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f7 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.2322
tail_b.2318 :
	ilw.s	%r0 %f0 l.56
	div.s	%f8 %f0 %f9
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f6 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f8
	mul.s	%f7 %f10 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f10
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f10 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f10
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f8
	mul.s	%f7 %f10 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f10
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2322
branching_b.1461 :
	neg.s	%f8 %f6
	ilw.s	%r0 %f0 l.80
	fbge	%f6 %f0 branching_b.1462
tail_b.2319 :
	ilw.s	%r0 %f1 l.58
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f7 l.83
	mul.s	%f6 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f7
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f9
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f7 l.87
	mul.s	%f6 %f7 %f7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2322
branching_b.1462 :
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 tail_b.2321
tail_b.2320 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f6 %f1
	add.s	%f0 %f6 %f0
	div.s	%f0 %f1 %f7
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f10 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f6 l.83
	mul.s	%f7 %f6 %f6
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.84
	mul.s	%f7 %f6 %f6
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f7 %f6 %f6
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f9
	mul.s	%f8 %f6 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2322
tail_b.2321 :
	ilw.s	%r0 %f8 l.56
	div.s	%f6 %f8 %f7
	ilw.s	%r0 %f9 l.89
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.82
	mul.s	%f7 %f1 %f6
	ilw.s	%r0 %f1 l.83
	mul.s	%f7 %f1 %f1
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f1 %f1
	ilw.s	%r0 %f6 l.84
	mul.s	%f7 %f6 %f6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f1
	ilw.s	%r0 %f6 l.85
	mul.s	%f7 %f6 %f6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f1
	ilw.s	%r0 %f6 l.86
	mul.s	%f7 %f6 %f6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f6
	ilw.s	%r0 %f1 l.87
	mul.s	%f7 %f1 %f1
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f1 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
tail_b.2322 :
	ilw.s	%r0 %f1 l.88
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.75
	div.s	%f1 %f0 %f1
branching_b.1463 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f6
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
	fbge	%f4 %f2 tail_b.2325
tail_b.2324 :
	neg.s	%f4 %f0
	j	branching_b.1464
tail_b.2325 :
	mov.s	%f4 %f0
branching_b.1464 :
	fbge	%f0 %f5 tail_b.2327
tail_b.2326 :
	addi	%r0 %r1 1
	j	branching_b.1465
tail_b.2327 :
	addi	%r0 %r1 0
branching_b.1465 :
	beq	%r1 %r0 branching_b.1466
tail_b.2337 :
	ilw.s	%r0 %f1 l.78
	j	branching_b.1472
branching_b.1466 :
	div.s	%f4 %f1 %f0
	fbge	%f0 %f2 tail_b.2329
tail_b.2328 :
	neg.s	%f0 %f4
	j	branching_b.1467
tail_b.2329 :
	mov.s	%f0 %f4
branching_b.1467 :
	fbg	%f2 %f4 branching_b.1470
branching_b.1468 :
	ilw.s	%r0 %f0 l.80
	fbge	%f4 %f0 branching_b.1469
tail_b.2330 :
	ilw.s	%r0 %f8 l.56
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f4 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f4 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f7
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f7 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f4 %f0 %f7
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f1
	mul.s	%f5 %f7 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2336
branching_b.1469 :
	ilw.s	%r0 %f0 l.81
	fbge	%f4 %f0 tail_b.2332
tail_b.2331 :
	ilw.s	%r0 %f8 l.56
	sub.s	%f8 %f4 %f0
	add.s	%f8 %f4 %f1
	div.s	%f1 %f0 %f4
	ilw.s	%r0 %f5 l.59
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f4 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f4 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f4 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f4 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2336
tail_b.2332 :
	ilw.s	%r0 %f0 l.56
	div.s	%f4 %f0 %f8
	ilw.s	%r0 %f4 l.58
	ilw.s	%r0 %f5 l.89
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.2336
branching_b.1470 :
	neg.s	%f4 %f5
	ilw.s	%r0 %f0 l.80
	fbge	%f5 %f0 branching_b.1471
tail_b.2333 :
	ilw.s	%r0 %f1 l.58
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f4
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f4 %f7
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f4
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f4 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f4
	mul.s	%f8 %f7 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2336
branching_b.1471 :
	ilw.s	%r0 %f0 l.81
	fbge	%f5 %f0 tail_b.2335
tail_b.2334 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f5 %f0
	add.s	%f1 %f5 %f1
	div.s	%f1 %f0 %f8
	ilw.s	%r0 %f4 l.58
	ilw.s	%r0 %f5 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f1
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f1 %f1
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
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.2336
tail_b.2335 :
	ilw.s	%r0 %f1 l.56
	div.s	%f5 %f1 %f9
	ilw.s	%r0 %f8 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f4 l.83
	mul.s	%f9 %f4 %f4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f9 %f4 %f4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f9 %f4 %f4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f7
	mul.s	%f5 %f4 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f1 %f0 %f0
tail_b.2336 :
	ilw.s	%r0 %f1 l.88
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.75
	div.s	%f1 %f0 %f1
branching_b.1472 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f5
	ilw.s	%r0 %f1 l.90
	ilw.s	%r0 %f4 l.62
	sub.s	%f6 %f4 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	sub.s	%f5 %f4 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	fbge	%f1 %f2 tail_b.2339
tail_b.2338 :
	addi	%r0 %r1 1
	j	branching_b.1473
tail_b.2339 :
	addi	%r0 %r1 0
branching_b.1473 :
	beq	%r1 %r0 tail_b.2340
tail_b.2341 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.2342
tail_b.2340 :
tail_b.2342 :
	ilw.s	%r0 %f0 l.52
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.91
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1474 :
	lw	%r0 %r1 536
	sw	%r26 %r4 -1192
	sw	%r26 %r5 -1196
	sw	%r26 %r6 -1200
	sw	%r26 %r7 -1204
	sw	%r26 %r9 -1208
	sw	%r26 %r3 -1212
	sw	%r26 %r10 -1216
	sw	%r26 %r8 -1220
	sw	%r26 %r11 -1224
	sw	%r26 %r2 -1228
	sw	%r26 %r12 -1232
	sw.s	%r26 %f2 -1236
	sw.s	%r26 %f3 -1240
	sw	%r26 %r13 -1244
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -1248
	addi	%r26 %r26 -1252
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 1252
	lw	%r26 %r28 -1248
	lw	%r26 %r4 -1192
	lw	%r26 %r5 -1196
	lw	%r26 %r6 -1200
	lw	%r26 %r7 -1204
	lw	%r26 %r9 -1208
	lw	%r26 %r3 -1212
	lw	%r26 %r10 -1216
	lw	%r26 %r8 -1220
	lw	%r26 %r11 -1224
	lw	%r26 %r2 -1228
	lw	%r26 %r12 -1232
	lw.s	%r26 %f2 -1236
	lw.s	%r26 %f3 -1240
	lw	%r26 %r13 -1244
	beq	%r1 %r0 branching_b.1475
tail_b.2349 :
	j	tail_b.2350
branching_b.1475 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f1 572
	lw.s	%r0 %f4 316
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r0 %f4 576
	lw.s	%r0 %f1 320
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2345
tail_b.2344 :
	addi	%r0 %r1 1
	j	branching_b.1476
tail_b.2345 :
	addi	%r0 %r1 0
branching_b.1476 :
	beq	%r1 %r0 tail_b.2346
tail_b.2347 :
	j	tail_b.2348
tail_b.2346 :
	ilw.s	%r0 %f0 l.51
tail_b.2348 :
	mul.s	%f0 %f3 %f0
	lw	%r13 %r1 28
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
	j	tail_b.2350
branching_b.1442 :
	lw	%r13 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	lw.s	%r0 %f1 576
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f2 tail_b.2294
tail_b.2293 :
	addi	%r0 %r14 1
	j	branching_b.1443
tail_b.2294 :
	addi	%r0 %r14 0
branching_b.1443 :
	beq	%r14 %r0 branching_b.1444
tail_b.2297 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.2298
branching_b.1444 :
	beq	%r1 %r0 tail_b.2295
tail_b.2296 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f1
	j	tail_b.2298
tail_b.2295 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f1
tail_b.2298 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1445
postloop_b.49 :
branching_b.1477 :
	addi	%r0 %r2 3
	bne	%r9 %r2 preloop_b.51
tail_b.2514 :
	j	branching_b.1578
preloop_b.51 :
	lw	%r0 %r12 728
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r14 -1
setup_startp_constants_loop.3 :
	ble	%r0 %r14 branching_b.1479
tail_b.2361 :
	j	postloop_b.50
branching_b.1479 :
	slli	%r14 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r13 0
	lw	%r13 %r15 40
	lw	%r13 %r16 4
	mov	%r10 %r1
	lw.s	%r1 %f1 0
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mov	%r15 %r1
	sw.s	%r1 %f0 0
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r15 %r1 4
	sw.s	%r1 %f0 0
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r15 %r1 8
	sw.s	%r1 %f0 0
	beq	%r16 %r11 tail_b.2353
branching_b.1480 :
	bl	%r11 %r16 branching_b.1481
tail_b.2359 :
	j	tail_b.2360
branching_b.1481 :
	mov	%r15 %r1
	lw.s	%r1 %f5 0
	addi	%r15 %r1 4
	lw.s	%r1 %f2 0
	addi	%r15 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f5 %f5 %f0
	lw	%r13 %r1 16
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f3
	mul.s	%f2 %f2 %f4
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f3 %f3
	mul.s	%f1 %f1 %f4
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f3 %f4
	lw	%r13 %r1 12
	beq	%r1 %r0 tail_b.2354
tail_b.2355 :
	mul.s	%f1 %f2 %f3
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f4 %f3
	mul.s	%f5 %f1 %f1
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f5 %f1
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f4
	j	branching_b.1482
tail_b.2354 :
	j	branching_b.1482
tail_b.2353 :
	lw	%r13 %r13 16
	mov	%r15 %r1
	lw.s	%r1 %f2 0
	addi	%r15 %r1 4
	lw.s	%r1 %f3 0
	addi	%r15 %r1 8
	lw.s	%r1 %f1 0
	mov	%r13 %r1
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f2
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f2
	addi	%r13 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	addi	%r15 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.2360
branching_b.1482 :
	beq	%r16 %r2 tail_b.2356
tail_b.2357 :
	j	tail_b.2358
tail_b.2356 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f4 %f4
tail_b.2358 :
	addi	%r15 %r1 12
	sw.s	%r1 %f4 0
tail_b.2360 :
	addi	%r14 %r14 -1
	j	setup_startp_constants_loop.3
postloop_b.50 :
preloop_b.52 :
	addi	%r0 %r13 118
iter_trace_diffuse_rays_loop.3 :
	ble	%r0 %r13 branching_b.1484
tail_b.2513 :
	j	postloop_b.51
branching_b.1484 :
	slli	%r13 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	mov	%r1 %r14
	lw.s	%r14 %f1 0
	mov	%r3 %r14
	lw.s	%r14 %f0 0
	mul.s	%f0 %f1 %f1
	addi	%r1 %r14 4
	lw.s	%r14 %f0 0
	addi	%r3 %r14 4
	lw.s	%r14 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f2 l.51
	fbge	%f1 %f2 tail_b.2363
tail_b.2362 :
	addi	%r0 %r1 1
	j	branching_b.1485
tail_b.2363 :
	addi	%r0 %r1 0
branching_b.1485 :
	beq	%r1 %r0 branching_b.1486
branching_b.1532 :
	addi	%r13 %r1 1
	slli	%r1 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r15 0
	ilw.s	%r0 %f0 l.93
	div.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r1 536
	sw	%r26 %r4 -1248
	sw	%r26 %r5 -1252
	sw	%r26 %r6 -1256
	sw	%r26 %r7 -1260
	sw	%r26 %r9 -1264
	sw	%r26 %r3 -1268
	sw	%r26 %r10 -1272
	sw	%r26 %r8 -1276
	sw	%r26 %r11 -1280
	sw	%r26 %r2 -1284
	sw	%r26 %r12 -1288
	sw	%r26 %r13 -1292
	sw.s	%r26 %f2 -1296
	sw	%r26 %r15 -1300
	sw.s	%r26 %f3 -1304
	mov	%r15 %r3
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -1308
	addi	%r26 %r26 -1312
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 1312
	lw	%r26 %r28 -1308
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.68
	lw	%r26 %r4 -1248
	lw	%r26 %r5 -1252
	lw	%r26 %r6 -1256
	lw	%r26 %r7 -1260
	lw	%r26 %r9 -1264
	lw	%r26 %r3 -1268
	lw	%r26 %r10 -1272
	lw	%r26 %r8 -1276
	lw	%r26 %r11 -1280
	lw	%r26 %r2 -1284
	lw	%r26 %r12 -1288
	lw	%r26 %r13 -1292
	lw.s	%r26 %f2 -1296
	lw	%r26 %r15 -1300
	lw.s	%r26 %f3 -1304
	fbge	%f0 %f1 tail_b.2439
tail_b.2438 :
	addi	%r0 %r1 1
	j	branching_b.1533
tail_b.2439 :
	addi	%r0 %r1 0
	j	branching_b.1533
branching_b.1486 :
	slli	%r13 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r15 0
	ilw.s	%r0 %f0 l.94
	div.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r1 536
	sw	%r26 %r4 -1308
	sw	%r26 %r5 -1312
	sw	%r26 %r6 -1316
	sw	%r26 %r7 -1320
	sw	%r26 %r9 -1324
	sw	%r26 %r3 -1328
	sw	%r26 %r10 -1332
	sw	%r26 %r8 -1336
	sw	%r26 %r11 -1340
	sw	%r26 %r2 -1344
	sw	%r26 %r12 -1348
	sw	%r26 %r13 -1352
	sw.s	%r26 %f2 -1356
	sw	%r26 %r15 -1360
	sw.s	%r26 %f3 -1364
	mov	%r15 %r3
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -1368
	addi	%r26 %r26 -1372
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 1372
	lw	%r26 %r28 -1368
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.68
	lw	%r26 %r4 -1308
	lw	%r26 %r5 -1312
	lw	%r26 %r6 -1316
	lw	%r26 %r7 -1320
	lw	%r26 %r9 -1324
	lw	%r26 %r3 -1328
	lw	%r26 %r10 -1332
	lw	%r26 %r8 -1336
	lw	%r26 %r11 -1340
	lw	%r26 %r2 -1344
	lw	%r26 %r12 -1348
	lw	%r26 %r13 -1352
	lw.s	%r26 %f2 -1356
	lw	%r26 %r15 -1360
	lw.s	%r26 %f3 -1364
	fbge	%f0 %f1 tail_b.2365
tail_b.2364 :
	addi	%r0 %r1 1
	j	branching_b.1487
tail_b.2365 :
	addi	%r0 %r1 0
branching_b.1487 :
	beq	%r1 %r0 tail_b.2366
branching_b.1488 :
	ilw.s	%r0 %f0 l.70
	fbge	%f1 %f0 tail_b.2368
tail_b.2367 :
	addi	%r0 %r1 1
	j	branching_b.1489
tail_b.2368 :
	addi	%r0 %r1 0
	j	branching_b.1489
tail_b.2366 :
	addi	%r0 %r1 0
branching_b.1489 :
	beq	%r1 %r0 tail_b.2369
branching_b.1490 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r14 0
	lw	%r15 %r15 0
	lw	%r14 %r1 4
	beq	%r1 %r8 branching_b.1491
branching_b.1495 :
	beq	%r1 %r11 tail_b.2378
branching_b.1496 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f8
	lw.s	%r0 %f1 556
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f4
	lw.s	%r0 %f1 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw	%r14 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f7
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f4 %f6
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f9
	lw	%r14 %r1 12
	beq	%r1 %r0 tail_b.2379
tail_b.2380 :
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f4 %f5
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	add.s	%f1 %f5 %f5
	ilw.s	%r0 %f1 l.69
	div.s	%f1 %f5 %f5
	add.s	%f5 %f7 %f5
	sw.s	%r0 %f5 568
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	mul.s	%f5 %f8 %f7
	lw	%r14 %r1 36
	lw.s	%r1 %f5 0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	sw.s	%r0 %f0 572
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f5
	lw	%r14 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f5 %f0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1497
tail_b.2379 :
	sw.s	%r0 %f7 568
	sw.s	%r0 %f6 572
	sw.s	%r0 %f9 576
	j	branching_b.1497
tail_b.2378 :
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
	j	branching_b.1500
branching_b.1491 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r16 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r15 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f2 tail_b.2371
tail_b.2370 :
	addi	%r0 %r1 1
	j	branching_b.1492
tail_b.2371 :
	addi	%r0 %r1 0
	j	branching_b.1492
tail_b.2369 :
tail_b.2512 :
	addi	%r13 %r13 -2
	j	iter_trace_diffuse_rays_loop.3
branching_b.1492 :
	beq	%r1 %r0 branching_b.1493
tail_b.2376 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2377
branching_b.1493 :
	fbge	%f2 %f0 tail_b.2373
tail_b.2372 :
	addi	%r0 %r1 1
	j	branching_b.1494
tail_b.2373 :
	addi	%r0 %r1 0
branching_b.1494 :
	beq	%r1 %r0 tail_b.2374
tail_b.2375 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2377
tail_b.2374 :
	ilw.s	%r0 %f0 l.58
tail_b.2377 :
	neg.s	%f0 %f0
	slli	%r16 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1500 :
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
	beq	%r15 %r8 branching_b.1501
branching_b.1506 :
	beq	%r15 %r11 tail_b.2396
branching_b.1507 :
	beq	%r15 %r2 tail_b.2397
branching_b.1508 :
	beq	%r15 %r5 branching_b.1509
tail_b.2431 :
	j	branching_b.1529
branching_b.1509 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r14 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	lw.s	%r0 %f1 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sub.s	%f4 %f1 %f1
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sqrt.s	%f4 %f4
	mul.s	%f4 %f1 %f1
	mul.s	%f0 %f0 %f5
	mul.s	%f1 %f1 %f4
	add.s	%f4 %f5 %f6
	fbge	%f0 %f2 tail_b.2399
tail_b.2398 :
	neg.s	%f0 %f4
	j	branching_b.1510
tail_b.2399 :
	mov.s	%f0 %f4
	j	branching_b.1510
tail_b.2397 :
	lw.s	%r0 %f1 552
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f4
	lw.s	%r0 %f0 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.73
	div.s	%f1 %f0 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	sw	%r26 %r4 -1368
	sw	%r26 %r5 -1372
	sw	%r26 %r6 -1376
	sw	%r26 %r7 -1380
	sw	%r26 %r9 -1384
	sw	%r26 %r3 -1388
	sw	%r26 %r10 -1392
	sw	%r26 %r8 -1396
	sw	%r26 %r11 -1400
	sw	%r26 %r2 -1404
	sw	%r26 %r12 -1408
	sw	%r26 %r13 -1412
	sw.s	%r26 %f2 -1416
	sw.s	%r26 %f3 -1420
	sw	%r26 %r14 -1424
	sw	%r26 %r28 -1428
	addi	%r26 %r26 -1432
	jal	cos.0
	addi	%r26 %r26 1432
	lw	%r26 %r28 -1428
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f4 l.52
	mul.s	%f4 %f1 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r4 -1368
	lw	%r26 %r5 -1372
	lw	%r26 %r6 -1376
	lw	%r26 %r7 -1380
	lw	%r26 %r9 -1384
	lw	%r26 %r3 -1388
	lw	%r26 %r10 -1392
	lw	%r26 %r8 -1396
	lw	%r26 %r11 -1400
	lw	%r26 %r2 -1404
	lw	%r26 %r12 -1408
	lw	%r26 %r13 -1412
	lw.s	%r26 %f2 -1416
	lw.s	%r26 %f3 -1420
	lw	%r26 %r14 -1424
	j	branching_b.1529
tail_b.2396 :
	lw.s	%r0 %f1 556
	ilw.s	%r0 %f0 l.74
	mul.s	%f0 %f1 %f0
	sw	%r26 %r4 -1428
	sw	%r26 %r5 -1432
	sw	%r26 %r6 -1436
	sw	%r26 %r7 -1440
	sw	%r26 %r9 -1444
	sw	%r26 %r3 -1448
	sw	%r26 %r10 -1452
	sw	%r26 %r8 -1456
	sw	%r26 %r11 -1460
	sw	%r26 %r2 -1464
	sw	%r26 %r12 -1468
	sw	%r26 %r13 -1472
	sw.s	%r26 %f2 -1476
	sw.s	%r26 %f3 -1480
	sw	%r26 %r14 -1484
	sw	%r26 %r28 -1488
	addi	%r26 %r26 -1492
	jal	sin.0
	addi	%r26 %r26 1492
	lw	%r26 %r28 -1488
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f4 l.52
	mul.s	%f0 %f4 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f1 l.56
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r4 -1428
	lw	%r26 %r5 -1432
	lw	%r26 %r6 -1436
	lw	%r26 %r7 -1440
	lw	%r26 %r9 -1444
	lw	%r26 %r3 -1448
	lw	%r26 %r10 -1452
	lw	%r26 %r8 -1456
	lw	%r26 %r11 -1460
	lw	%r26 %r2 -1464
	lw	%r26 %r12 -1468
	lw	%r26 %r13 -1472
	lw.s	%r26 %f2 -1476
	lw.s	%r26 %f3 -1480
	lw	%r26 %r14 -1484
	j	branching_b.1529
branching_b.1501 :
	lw.s	%r0 %f1 552
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f6 l.71
	mul.s	%f6 %f1 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f5 l.72
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f4 l.73
	fbge	%f0 %f4 tail_b.2388
tail_b.2387 :
	addi	%r0 %r15 1
	j	branching_b.1502
tail_b.2388 :
	addi	%r0 %r15 0
branching_b.1502 :
	lw.s	%r0 %f1 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	mul.s	%f6 %f1 %f0
	floor.w.s	%f0 %f0
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f4 tail_b.2390
tail_b.2389 :
	addi	%r0 %r1 1
	j	branching_b.1503
tail_b.2390 :
	addi	%r0 %r1 0
branching_b.1503 :
	beq	%r15 %r0 branching_b.1504
branching_b.1505 :
	beq	%r1 %r0 tail_b.2393
tail_b.2394 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2395
tail_b.2393 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2395
branching_b.1504 :
	beq	%r1 %r0 tail_b.2391
tail_b.2392 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2395
tail_b.2391 :
	ilw.s	%r0 %f0 l.52
tail_b.2395 :
	sw.s	%r0 %f0 584
	j	branching_b.1529
branching_b.1510 :
	ilw.s	%r0 %f5 l.76
	fbge	%f4 %f5 tail_b.2401
tail_b.2400 :
	addi	%r0 %r1 1
	j	branching_b.1511
tail_b.2401 :
	addi	%r0 %r1 0
branching_b.1511 :
	beq	%r1 %r0 branching_b.1512
tail_b.2411 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.1518
branching_b.1512 :
	div.s	%f0 %f1 %f1
	fbge	%f1 %f2 tail_b.2403
tail_b.2402 :
	neg.s	%f1 %f1
	j	branching_b.1513
tail_b.2403 :
branching_b.1513 :
	fbg	%f2 %f1 branching_b.1516
branching_b.1514 :
	ilw.s	%r0 %f0 l.80
	fbge	%f1 %f0 branching_b.1515
tail_b.2404 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f4 l.83
	mul.s	%f1 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f1 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f1 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f1 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.2410
branching_b.1515 :
	ilw.s	%r0 %f0 l.81
	fbge	%f1 %f0 tail_b.2406
tail_b.2405 :
	ilw.s	%r0 %f8 l.56
	sub.s	%f8 %f1 %f0
	add.s	%f8 %f1 %f1
	div.s	%f1 %f0 %f1
	ilw.s	%r0 %f4 l.59
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f7 l.83
	mul.s	%f1 %f7 %f7
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f7
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f1 %f7 %f7
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2410
tail_b.2406 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f9
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f7 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f10
	mul.s	%f1 %f4 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f9 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f9 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f10
	mul.s	%f1 %f4 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2410
branching_b.1516 :
	neg.s	%f1 %f8
	ilw.s	%r0 %f0 l.80
	fbge	%f8 %f0 branching_b.1517
tail_b.2407 :
	ilw.s	%r0 %f4 l.58
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f9
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f4 %f0 %f1
	j	tail_b.2410
branching_b.1517 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 tail_b.2409
tail_b.2408 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f8 %f0
	add.s	%f1 %f8 %f1
	div.s	%f1 %f0 %f8
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f0 l.59
	neg.s	%f8 %f1
	mul.s	%f8 %f1 %f7
	ilw.s	%r0 %f1 l.82
	mul.s	%f8 %f1 %f1
	ilw.s	%r0 %f4 l.83
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f4 %f1
	ilw.s	%r0 %f4 l.84
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.85
	mul.s	%f8 %f1 %f10
	mul.s	%f7 %f4 %f1
	add.s	%f1 %f10 %f4
	ilw.s	%r0 %f1 l.86
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f1 %f1
	ilw.s	%r0 %f4 l.87
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f4 %f1
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f8 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f9 %f0 %f1
	j	tail_b.2410
tail_b.2409 :
	ilw.s	%r0 %f7 l.56
	div.s	%f8 %f7 %f8
	ilw.s	%r0 %f9 l.89
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f8 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
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
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f8 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f0 %f1
tail_b.2410 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f1 %f0
branching_b.1518 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f1 556
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	fbge	%f6 %f2 tail_b.2413
tail_b.2412 :
	neg.s	%f6 %f1
	j	branching_b.1519
tail_b.2413 :
	mov.s	%f6 %f1
branching_b.1519 :
	fbge	%f1 %f5 tail_b.2415
tail_b.2414 :
	addi	%r0 %r1 1
	j	branching_b.1520
tail_b.2415 :
	addi	%r0 %r1 0
branching_b.1520 :
	beq	%r1 %r0 branching_b.1521
tail_b.2425 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.1527
branching_b.1521 :
	div.s	%f6 %f0 %f0
	fbge	%f0 %f2 tail_b.2417
tail_b.2416 :
	neg.s	%f0 %f5
	j	branching_b.1522
tail_b.2417 :
	mov.s	%f0 %f5
branching_b.1522 :
	fbg	%f2 %f5 branching_b.1525
branching_b.1523 :
	ilw.s	%r0 %f0 l.80
	fbge	%f5 %f0 branching_b.1524
tail_b.2418 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f5 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f1
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f5 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.2424
branching_b.1524 :
	ilw.s	%r0 %f0 l.81
	fbge	%f5 %f0 tail_b.2420
tail_b.2419 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f5 %f1
	add.s	%f7 %f5 %f0
	div.s	%f0 %f1 %f8
	ilw.s	%r0 %f5 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f9
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f1
	mul.s	%f6 %f9 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f8 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.2424
tail_b.2420 :
	ilw.s	%r0 %f0 l.56
	div.s	%f5 %f0 %f6
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f7 l.89
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f6 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f9
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f9 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f6 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f9
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2424
branching_b.1525 :
	neg.s	%f5 %f7
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1526
tail_b.2421 :
	ilw.s	%r0 %f6 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f1
	mul.s	%f5 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f8
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f7 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f1
	j	tail_b.2424
branching_b.1526 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2423
tail_b.2422 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f7 %f1
	add.s	%f0 %f7 %f0
	div.s	%f0 %f1 %f1
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f7 l.59
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f1 %f5 %f5
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f5
	mul.s	%f9 %f6 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2424
tail_b.2423 :
	ilw.s	%r0 %f8 l.56
	div.s	%f7 %f8 %f6
	ilw.s	%r0 %f5 l.89
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f6 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f6 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f1
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f1
tail_b.2424 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f1 %f0
branching_b.1527 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.90
	ilw.s	%r0 %f6 l.62
	sub.s	%f4 %f6 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f1
	sub.s	%f5 %f6 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	fbge	%f1 %f2 tail_b.2427
tail_b.2426 :
	addi	%r0 %r1 1
	j	branching_b.1528
tail_b.2427 :
	addi	%r0 %r1 0
branching_b.1528 :
	beq	%r1 %r0 tail_b.2428
tail_b.2429 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.2430
tail_b.2428 :
tail_b.2430 :
	ilw.s	%r0 %f0 l.52
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.91
	div.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
branching_b.1529 :
	lw	%r0 %r1 536
	sw	%r26 %r4 -1488
	sw	%r26 %r5 -1492
	sw	%r26 %r6 -1496
	sw	%r26 %r7 -1500
	sw	%r26 %r9 -1504
	sw	%r26 %r3 -1508
	sw	%r26 %r10 -1512
	sw	%r26 %r8 -1516
	sw	%r26 %r11 -1520
	sw	%r26 %r2 -1524
	sw	%r26 %r12 -1528
	sw	%r26 %r13 -1532
	sw.s	%r26 %f2 -1536
	sw.s	%r26 %f3 -1540
	sw	%r26 %r14 -1544
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -1548
	addi	%r26 %r26 -1552
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 1552
	lw	%r26 %r28 -1548
	lw	%r26 %r4 -1488
	lw	%r26 %r5 -1492
	lw	%r26 %r6 -1496
	lw	%r26 %r7 -1500
	lw	%r26 %r9 -1504
	lw	%r26 %r3 -1508
	lw	%r26 %r10 -1512
	lw	%r26 %r8 -1516
	lw	%r26 %r11 -1520
	lw	%r26 %r2 -1524
	lw	%r26 %r12 -1528
	lw	%r26 %r13 -1532
	lw.s	%r26 %f2 -1536
	lw.s	%r26 %f3 -1540
	lw	%r26 %r14 -1544
	beq	%r1 %r0 branching_b.1530
tail_b.2437 :
	j	tail_b.2512
branching_b.1530 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f4
	lw.s	%r0 %f1 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f1
	lw.s	%r0 %f4 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2433
tail_b.2432 :
	addi	%r0 %r1 1
	j	branching_b.1531
tail_b.2433 :
	addi	%r0 %r1 0
branching_b.1531 :
	beq	%r1 %r0 tail_b.2434
tail_b.2435 :
	j	tail_b.2436
tail_b.2434 :
	ilw.s	%r0 %f0 l.51
tail_b.2436 :
	mul.s	%f0 %f3 %f1
	lw	%r14 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	lw.s	%r0 %f2 592
	lw.s	%r0 %f1 580
	mul.s	%f1 %f0 %f1
	add.s	%f1 %f2 %f1
	sw.s	%r0 %f1 592
	lw.s	%r0 %f2 596
	lw.s	%r0 %f1 584
	mul.s	%f1 %f0 %f1
	add.s	%f1 %f2 %f1
	sw.s	%r0 %f1 596
	lw.s	%r0 %f2 600
	lw.s	%r0 %f1 588
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2512
branching_b.1497 :
	lw	%r14 %r15 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	lw.s	%r0 %f1 576
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f2 tail_b.2382
tail_b.2381 :
	addi	%r0 %r1 1
	j	branching_b.1498
tail_b.2382 :
	addi	%r0 %r1 0
branching_b.1498 :
	beq	%r1 %r0 branching_b.1499
tail_b.2385 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.2386
branching_b.1499 :
	beq	%r15 %r0 tail_b.2383
tail_b.2384 :
	ilw.s	%r0 %f1 l.58
	div.s	%f0 %f1 %f1
	j	tail_b.2386
tail_b.2383 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f1
tail_b.2386 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1500
branching_b.1533 :
	beq	%r1 %r0 tail_b.2440
branching_b.1534 :
	ilw.s	%r0 %f0 l.70
	fbge	%f1 %f0 tail_b.2442
tail_b.2441 :
	addi	%r0 %r1 1
	j	branching_b.1535
tail_b.2442 :
	addi	%r0 %r1 0
	j	branching_b.1535
tail_b.2440 :
	addi	%r0 %r1 0
branching_b.1535 :
	beq	%r1 %r0 tail_b.2443
branching_b.1536 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r14 0
	lw	%r15 %r16 0
	lw	%r14 %r1 4
	beq	%r1 %r8 branching_b.1537
branching_b.1541 :
	beq	%r1 %r11 tail_b.2452
branching_b.1542 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f5
	lw.s	%r0 %f1 556
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f6
	lw.s	%r0 %f0 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r14 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f4
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f7
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f9
	lw	%r14 %r1 12
	beq	%r1 %r0 tail_b.2453
tail_b.2454 :
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f8
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.69
	div.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	sw.s	%r0 %f0 568
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	lw	%r14 %r1 36
	lw.s	%r1 %f4 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	div.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 572
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f1
	lw	%r14 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f0
	div.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1543
tail_b.2453 :
	sw.s	%r0 %f4 568
	sw.s	%r0 %f7 572
	sw.s	%r0 %f9 576
	j	branching_b.1543
tail_b.2452 :
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
	j	branching_b.1546
branching_b.1537 :
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
	fbne	%f0 %f2 tail_b.2445
tail_b.2444 :
	addi	%r0 %r1 1
	j	branching_b.1538
tail_b.2445 :
	addi	%r0 %r1 0
	j	branching_b.1538
tail_b.2443 :
	j	tail_b.2512
branching_b.1538 :
	beq	%r1 %r0 branching_b.1539
tail_b.2450 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2451
branching_b.1539 :
	fbge	%f2 %f0 tail_b.2447
tail_b.2446 :
	addi	%r0 %r1 1
	j	branching_b.1540
tail_b.2447 :
	addi	%r0 %r1 0
branching_b.1540 :
	beq	%r1 %r0 tail_b.2448
tail_b.2449 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2451
tail_b.2448 :
	ilw.s	%r0 %f0 l.58
tail_b.2451 :
	neg.s	%f0 %f0
	slli	%r15 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1546 :
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
	beq	%r15 %r8 branching_b.1547
branching_b.1552 :
	beq	%r15 %r11 tail_b.2470
branching_b.1553 :
	beq	%r15 %r2 tail_b.2471
branching_b.1554 :
	beq	%r15 %r5 branching_b.1555
tail_b.2505 :
	j	branching_b.1575
branching_b.1555 :
	lw.s	%r0 %f1 552
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r14 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f6
	lw.s	%r0 %f1 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	mul.s	%f6 %f6 %f4
	mul.s	%f0 %f0 %f1
	add.s	%f1 %f4 %f4
	fbge	%f6 %f2 tail_b.2473
tail_b.2472 :
	neg.s	%f6 %f1
	j	branching_b.1556
tail_b.2473 :
	mov.s	%f6 %f1
	j	branching_b.1556
tail_b.2471 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw.s	%r0 %f4 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f0
	mul.s	%f1 %f1 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.73
	div.s	%f0 %f1 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f1 %f0
	sw	%r26 %r4 -1548
	sw	%r26 %r5 -1552
	sw	%r26 %r6 -1556
	sw	%r26 %r7 -1560
	sw	%r26 %r9 -1564
	sw	%r26 %r3 -1568
	sw	%r26 %r10 -1572
	sw	%r26 %r8 -1576
	sw	%r26 %r11 -1580
	sw	%r26 %r2 -1584
	sw	%r26 %r12 -1588
	sw	%r26 %r13 -1592
	sw.s	%r26 %f2 -1596
	sw.s	%r26 %f3 -1600
	sw	%r26 %r14 -1604
	sw	%r26 %r28 -1608
	addi	%r26 %r26 -1612
	jal	cos.0
	addi	%r26 %r26 1612
	lw	%r26 %r28 -1608
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f1 l.52
	mul.s	%f1 %f4 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f4 %f0 %f0
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r4 -1548
	lw	%r26 %r5 -1552
	lw	%r26 %r6 -1556
	lw	%r26 %r7 -1560
	lw	%r26 %r9 -1564
	lw	%r26 %r3 -1568
	lw	%r26 %r10 -1572
	lw	%r26 %r8 -1576
	lw	%r26 %r11 -1580
	lw	%r26 %r2 -1584
	lw	%r26 %r12 -1588
	lw	%r26 %r13 -1592
	lw.s	%r26 %f2 -1596
	lw.s	%r26 %f3 -1600
	lw	%r26 %r14 -1604
	j	branching_b.1575
tail_b.2470 :
	lw.s	%r0 %f1 556
	ilw.s	%r0 %f0 l.74
	mul.s	%f0 %f1 %f0
	sw	%r26 %r4 -1608
	sw	%r26 %r5 -1612
	sw	%r26 %r6 -1616
	sw	%r26 %r7 -1620
	sw	%r26 %r9 -1624
	sw	%r26 %r3 -1628
	sw	%r26 %r10 -1632
	sw	%r26 %r8 -1636
	sw	%r26 %r11 -1640
	sw	%r26 %r2 -1644
	sw	%r26 %r12 -1648
	sw	%r26 %r13 -1652
	sw.s	%r26 %f2 -1656
	sw.s	%r26 %f3 -1660
	sw	%r26 %r14 -1664
	sw	%r26 %r28 -1668
	addi	%r26 %r26 -1672
	jal	sin.0
	addi	%r26 %r26 1672
	lw	%r26 %r28 -1668
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f4 l.52
	mul.s	%f1 %f4 %f0
	sw.s	%r0 %f0 580
	ilw.s	%r0 %f0 l.56
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r4 -1608
	lw	%r26 %r5 -1612
	lw	%r26 %r6 -1616
	lw	%r26 %r7 -1620
	lw	%r26 %r9 -1624
	lw	%r26 %r3 -1628
	lw	%r26 %r10 -1632
	lw	%r26 %r8 -1636
	lw	%r26 %r11 -1640
	lw	%r26 %r2 -1644
	lw	%r26 %r12 -1648
	lw	%r26 %r13 -1652
	lw.s	%r26 %f2 -1656
	lw.s	%r26 %f3 -1660
	lw	%r26 %r14 -1664
	j	branching_b.1575
branching_b.1547 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f4
	ilw.s	%r0 %f1 l.71
	mul.s	%f1 %f4 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f5 l.72
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f4 %f0
	ilw.s	%r0 %f6 l.73
	fbge	%f0 %f6 tail_b.2462
tail_b.2461 :
	addi	%r0 %r15 1
	j	branching_b.1548
tail_b.2462 :
	addi	%r0 %r15 0
branching_b.1548 :
	lw.s	%r0 %f0 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sub.s	%f4 %f0 %f4
	mul.s	%f1 %f4 %f0
	floor.w.s	%f0 %f0
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f4 %f0
	fbge	%f0 %f6 tail_b.2464
tail_b.2463 :
	addi	%r0 %r1 1
	j	branching_b.1549
tail_b.2464 :
	addi	%r0 %r1 0
branching_b.1549 :
	beq	%r15 %r0 branching_b.1550
branching_b.1551 :
	beq	%r1 %r0 tail_b.2467
tail_b.2468 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2469
tail_b.2467 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2469
branching_b.1550 :
	beq	%r1 %r0 tail_b.2465
tail_b.2466 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2469
tail_b.2465 :
	ilw.s	%r0 %f0 l.52
tail_b.2469 :
	sw.s	%r0 %f0 584
	j	branching_b.1575
branching_b.1556 :
	ilw.s	%r0 %f5 l.76
	fbge	%f1 %f5 tail_b.2475
tail_b.2474 :
	addi	%r0 %r1 1
	j	branching_b.1557
tail_b.2475 :
	addi	%r0 %r1 0
branching_b.1557 :
	beq	%r1 %r0 branching_b.1558
tail_b.2485 :
	ilw.s	%r0 %f1 l.78
	j	branching_b.1564
branching_b.1558 :
	div.s	%f6 %f0 %f0
	fbge	%f0 %f2 tail_b.2477
tail_b.2476 :
	neg.s	%f0 %f8
	j	branching_b.1559
tail_b.2477 :
	mov.s	%f0 %f8
branching_b.1559 :
	fbg	%f2 %f8 branching_b.1562
branching_b.1560 :
	ilw.s	%r0 %f0 l.80
	fbge	%f8 %f0 branching_b.1561
tail_b.2478 :
	ilw.s	%r0 %f9 l.56
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f1
	mul.s	%f6 %f7 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f8 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f8 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.2484
branching_b.1561 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 tail_b.2480
tail_b.2479 :
	ilw.s	%r0 %f6 l.56
	sub.s	%f6 %f8 %f1
	add.s	%f6 %f8 %f0
	div.s	%f0 %f1 %f10
	ilw.s	%r0 %f9 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f7 l.83
	mul.s	%f10 %f7 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f7
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f10 %f7 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f10 %f7 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f7
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.2484
tail_b.2480 :
	ilw.s	%r0 %f0 l.56
	div.s	%f8 %f0 %f8
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f10 l.89
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f9
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f8 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f1
	mul.s	%f6 %f9 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2484
branching_b.1562 :
	neg.s	%f8 %f7
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1563
tail_b.2481 :
	ilw.s	%r0 %f8 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f9
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f6 l.84
	mul.s	%f7 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.85
	mul.s	%f7 %f6 %f6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f6 %f6
	add.s	%f6 %f0 %f6
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f9
	mul.s	%f1 %f6 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2484
branching_b.1563 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2483
tail_b.2482 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f7 %f1
	add.s	%f0 %f7 %f0
	div.s	%f0 %f1 %f8
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f1 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f9
	mul.s	%f6 %f7 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f8 %f7 %f7
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f9
	mul.s	%f6 %f7 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f7
	mul.s	%f6 %f9 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f0
	j	tail_b.2484
tail_b.2483 :
	ilw.s	%r0 %f6 l.56
	div.s	%f7 %f6 %f10
	ilw.s	%r0 %f9 l.89
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f10 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f8
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f10 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f10 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f6 %f0 %f0
tail_b.2484 :
	ilw.s	%r0 %f1 l.88
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f1 %f1
branching_b.1564 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f6
	lw.s	%r0 %f0 556
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	fbge	%f4 %f2 tail_b.2487
tail_b.2486 :
	neg.s	%f4 %f0
	j	branching_b.1565
tail_b.2487 :
	mov.s	%f4 %f0
branching_b.1565 :
	fbge	%f0 %f5 tail_b.2489
tail_b.2488 :
	addi	%r0 %r1 1
	j	branching_b.1566
tail_b.2489 :
	addi	%r0 %r1 0
branching_b.1566 :
	beq	%r1 %r0 branching_b.1567
tail_b.2499 :
	ilw.s	%r0 %f1 l.78
	j	branching_b.1573
branching_b.1567 :
	div.s	%f4 %f1 %f5
	fbge	%f5 %f2 tail_b.2491
tail_b.2490 :
	neg.s	%f5 %f5
	j	branching_b.1568
tail_b.2491 :
branching_b.1568 :
	fbg	%f2 %f5 branching_b.1571
branching_b.1569 :
	ilw.s	%r0 %f0 l.80
	fbge	%f5 %f0 branching_b.1570
tail_b.2492 :
	ilw.s	%r0 %f8 l.56
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.82
	mul.s	%f5 %f1 %f7
	ilw.s	%r0 %f1 l.83
	mul.s	%f5 %f1 %f4
	mul.s	%f0 %f7 %f1
	add.s	%f1 %f4 %f1
	ilw.s	%r0 %f4 l.84
	mul.s	%f5 %f4 %f4
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f4 %f1
	ilw.s	%r0 %f4 l.85
	mul.s	%f5 %f4 %f4
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f4 %f1
	ilw.s	%r0 %f4 l.86
	mul.s	%f5 %f4 %f4
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.87
	mul.s	%f5 %f1 %f1
	mul.s	%f0 %f4 %f4
	add.s	%f4 %f1 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2498
branching_b.1570 :
	ilw.s	%r0 %f0 l.81
	fbge	%f5 %f0 tail_b.2494
tail_b.2493 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f5 %f4
	add.s	%f1 %f5 %f0
	div.s	%f0 %f4 %f8
	ilw.s	%r0 %f5 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f9
	mul.s	%f7 %f4 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f9
	mul.s	%f7 %f4 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f8 %f4 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2498
tail_b.2494 :
	ilw.s	%r0 %f0 l.56
	div.s	%f5 %f0 %f1
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f9 l.89
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f1 %f4 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f8
	mul.s	%f7 %f4 %f0
	add.s	%f0 %f8 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f1 %f4 %f4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.2498
branching_b.1571 :
	neg.s	%f5 %f5
	ilw.s	%r0 %f0 l.80
	fbge	%f5 %f0 branching_b.1572
tail_b.2495 :
	ilw.s	%r0 %f0 l.58
	neg.s	%f5 %f1
	mul.s	%f5 %f1 %f8
	ilw.s	%r0 %f1 l.82
	mul.s	%f5 %f1 %f7
	ilw.s	%r0 %f1 l.83
	mul.s	%f5 %f1 %f4
	mul.s	%f8 %f7 %f1
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.84
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f1 %f4
	ilw.s	%r0 %f1 l.85
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f1 %f1
	ilw.s	%r0 %f4 l.86
	mul.s	%f5 %f4 %f4
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.87
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f1 %f1
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f5 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f0 %f1 %f0
	j	tail_b.2498
branching_b.1572 :
	ilw.s	%r0 %f0 l.81
	fbge	%f5 %f0 tail_b.2497
tail_b.2496 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f5 %f0
	add.s	%f1 %f5 %f1
	div.s	%f1 %f0 %f8
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f4 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f9
	mul.s	%f5 %f7 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.84
	mul.s	%f8 %f0 %f7
	mul.s	%f5 %f9 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f8 %f7 %f7
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f7
	mul.s	%f5 %f9 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.87
	mul.s	%f8 %f7 %f7
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2498
tail_b.2497 :
	ilw.s	%r0 %f7 l.56
	div.s	%f5 %f7 %f5
	ilw.s	%r0 %f9 l.89
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f4
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f1
	mul.s	%f4 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f8
	mul.s	%f4 %f1 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f5 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f0 %f0
tail_b.2498 :
	ilw.s	%r0 %f1 l.88
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f1 %f1
branching_b.1573 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f4
	ilw.s	%r0 %f5 l.90
	ilw.s	%r0 %f1 l.62
	sub.s	%f6 %f1 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f5 %f5
	sub.s	%f4 %f1 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f5 %f1
	fbge	%f1 %f2 tail_b.2501
tail_b.2500 :
	addi	%r0 %r1 1
	j	branching_b.1574
tail_b.2501 :
	addi	%r0 %r1 0
branching_b.1574 :
	beq	%r1 %r0 tail_b.2502
tail_b.2503 :
	ilw.s	%r0 %f1 l.51
	j	tail_b.2504
tail_b.2502 :
tail_b.2504 :
	ilw.s	%r0 %f0 l.52
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.91
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1575 :
	lw	%r0 %r1 536
	sw	%r26 %r4 -1668
	sw	%r26 %r5 -1672
	sw	%r26 %r6 -1676
	sw	%r26 %r7 -1680
	sw	%r26 %r9 -1684
	sw	%r26 %r3 -1688
	sw	%r26 %r10 -1692
	sw	%r26 %r8 -1696
	sw	%r26 %r11 -1700
	sw	%r26 %r2 -1704
	sw	%r26 %r12 -1708
	sw	%r26 %r13 -1712
	sw.s	%r26 %f2 -1716
	sw.s	%r26 %f3 -1720
	sw	%r26 %r14 -1724
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -1728
	addi	%r26 %r26 -1732
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 1732
	lw	%r26 %r28 -1728
	lw	%r26 %r4 -1668
	lw	%r26 %r5 -1672
	lw	%r26 %r6 -1676
	lw	%r26 %r7 -1680
	lw	%r26 %r9 -1684
	lw	%r26 %r3 -1688
	lw	%r26 %r10 -1692
	lw	%r26 %r8 -1696
	lw	%r26 %r11 -1700
	lw	%r26 %r2 -1704
	lw	%r26 %r12 -1708
	lw	%r26 %r13 -1712
	lw.s	%r26 %f2 -1716
	lw.s	%r26 %f3 -1720
	lw	%r26 %r14 -1724
	beq	%r1 %r0 branching_b.1576
tail_b.2511 :
	j	tail_b.2512
branching_b.1576 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f4
	lw.s	%r0 %f1 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	lw.s	%r0 %f4 576
	lw.s	%r0 %f1 320
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2507
tail_b.2506 :
	addi	%r0 %r1 1
	j	branching_b.1577
tail_b.2507 :
	addi	%r0 %r1 0
branching_b.1577 :
	beq	%r1 %r0 tail_b.2508
tail_b.2509 :
	j	tail_b.2510
tail_b.2508 :
	ilw.s	%r0 %f0 l.51
tail_b.2510 :
	mul.s	%f0 %f3 %f1
	lw	%r14 %r1 28
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
	j	tail_b.2512
branching_b.1543 :
	lw	%r14 %r15 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f2 tail_b.2456
tail_b.2455 :
	addi	%r0 %r1 1
	j	branching_b.1544
tail_b.2456 :
	addi	%r0 %r1 0
branching_b.1544 :
	beq	%r1 %r0 branching_b.1545
tail_b.2459 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2460
branching_b.1545 :
	beq	%r15 %r0 tail_b.2457
tail_b.2458 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f0
	j	tail_b.2460
tail_b.2457 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f0
tail_b.2460 :
	lw.s	%r0 %f1 568
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 568
	lw.s	%r0 %f1 572
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 572
	lw.s	%r0 %f1 576
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1546
postloop_b.51 :
branching_b.1578 :
	bne	%r9 %r5 preloop_b.53
tail_b.2676 :
	j	tail_b.2677
preloop_b.53 :
	lw	%r0 %r12 732
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r10 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r9 -1
setup_startp_constants_loop.2 :
	ble	%r0 %r9 branching_b.1580
tail_b.2523 :
	j	postloop_b.52
branching_b.1580 :
	slli	%r9 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r15 0
	lw	%r15 %r13 40
	lw	%r15 %r14 4
	mov	%r10 %r1
	lw.s	%r1 %f0 0
	lw	%r15 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	mov	%r13 %r1
	sw.s	%r1 %f0 0
	addi	%r10 %r1 4
	lw.s	%r1 %f0 0
	lw	%r15 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r13 %r1 4
	sw.s	%r1 %f0 0
	addi	%r10 %r1 8
	lw.s	%r1 %f1 0
	lw	%r15 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r13 %r1 8
	sw.s	%r1 %f0 0
	beq	%r14 %r11 tail_b.2515
branching_b.1581 :
	bl	%r11 %r14 branching_b.1582
tail_b.2521 :
	j	tail_b.2522
branching_b.1582 :
	mov	%r13 %r1
	lw.s	%r1 %f3 0
	addi	%r13 %r1 4
	lw.s	%r1 %f5 0
	addi	%r13 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f3 %f3 %f0
	lw	%r15 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f2
	mul.s	%f5 %f5 %f4
	lw	%r15 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f4
	mul.s	%f1 %f1 %f2
	lw	%r15 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f4 %f2
	lw	%r15 %r1 12
	beq	%r1 %r0 tail_b.2516
tail_b.2517 :
	mul.s	%f1 %f5 %f4
	lw	%r15 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f2
	mul.s	%f3 %f1 %f1
	lw	%r15 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	mul.s	%f5 %f3 %f0
	lw	%r15 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	j	branching_b.1583
tail_b.2516 :
	mov.s	%f2 %f0
	j	branching_b.1583
tail_b.2515 :
	lw	%r15 %r14 16
	mov	%r13 %r1
	lw.s	%r1 %f1 0
	addi	%r13 %r1 4
	lw.s	%r1 %f0 0
	addi	%r13 %r1 8
	lw.s	%r1 %f3 0
	mov	%r14 %r1
	lw.s	%r1 %f2 0
	mul.s	%f1 %f2 %f1
	addi	%r14 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	addi	%r14 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r13 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.2522
branching_b.1583 :
	beq	%r14 %r2 tail_b.2518
tail_b.2519 :
	j	tail_b.2520
tail_b.2518 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f0 %f0
tail_b.2520 :
	addi	%r13 %r1 12
	sw.s	%r1 %f0 0
tail_b.2522 :
	addi	%r9 %r9 -1
	j	setup_startp_constants_loop.2
postloop_b.52 :
preloop_b.54 :
	addi	%r0 %r10 118
iter_trace_diffuse_rays_loop.2 :
	ble	%r0 %r10 branching_b.1585
tail_b.2675 :
	j	postloop_b.53
branching_b.1585 :
	slli	%r10 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r9 0
	mov	%r9 %r1
	lw.s	%r1 %f1 0
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	addi	%r9 %r1 4
	lw.s	%r1 %f2 0
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	addi	%r9 %r1 8
	lw.s	%r1 %f0 0
	addi	%r3 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f2 l.51
	fbge	%f1 %f2 tail_b.2525
tail_b.2524 :
	addi	%r0 %r1 1
	j	branching_b.1586
tail_b.2525 :
	addi	%r0 %r1 0
branching_b.1586 :
	beq	%r1 %r0 branching_b.1587
branching_b.1633 :
	addi	%r10 %r1 1
	slli	%r1 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r9 0
	ilw.s	%r0 %f0 l.93
	div.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r1 536
	sw	%r26 %r4 -1728
	sw	%r26 %r5 -1732
	sw	%r26 %r6 -1736
	sw	%r26 %r7 -1740
	sw	%r26 %r3 -1744
	sw	%r26 %r8 -1748
	sw	%r26 %r11 -1752
	sw	%r26 %r2 -1756
	sw	%r26 %r12 -1760
	sw	%r26 %r10 -1764
	sw.s	%r26 %f2 -1768
	sw	%r26 %r9 -1772
	sw.s	%r26 %f1 -1776
	mov	%r9 %r3
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -1780
	addi	%r26 %r26 -1784
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 1784
	lw	%r26 %r28 -1780
	lw.s	%r0 %f0 548
	ilw.s	%r0 %f3 l.68
	lw	%r26 %r4 -1728
	lw	%r26 %r5 -1732
	lw	%r26 %r6 -1736
	lw	%r26 %r7 -1740
	lw	%r26 %r3 -1744
	lw	%r26 %r8 -1748
	lw	%r26 %r11 -1752
	lw	%r26 %r2 -1756
	lw	%r26 %r12 -1760
	lw	%r26 %r10 -1764
	lw.s	%r26 %f2 -1768
	lw	%r26 %r9 -1772
	lw.s	%r26 %f1 -1776
	fbge	%f3 %f0 tail_b.2601
tail_b.2600 :
	addi	%r0 %r1 1
	j	branching_b.1634
tail_b.2601 :
	addi	%r0 %r1 0
	j	branching_b.1634
branching_b.1587 :
	slli	%r10 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r9 0
	ilw.s	%r0 %f0 l.94
	div.s	%f0 %f1 %f3
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r1 536
	sw	%r26 %r4 -1780
	sw	%r26 %r5 -1784
	sw	%r26 %r6 -1788
	sw	%r26 %r7 -1792
	sw	%r26 %r3 -1796
	sw	%r26 %r8 -1800
	sw	%r26 %r11 -1804
	sw	%r26 %r2 -1808
	sw	%r26 %r12 -1812
	sw	%r26 %r10 -1816
	sw.s	%r26 %f2 -1820
	sw	%r26 %r9 -1824
	sw.s	%r26 %f3 -1828
	mov	%r9 %r3
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -1832
	addi	%r26 %r26 -1836
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 1836
	lw	%r26 %r28 -1832
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.68
	lw	%r26 %r4 -1780
	lw	%r26 %r5 -1784
	lw	%r26 %r6 -1788
	lw	%r26 %r7 -1792
	lw	%r26 %r3 -1796
	lw	%r26 %r8 -1800
	lw	%r26 %r11 -1804
	lw	%r26 %r2 -1808
	lw	%r26 %r12 -1812
	lw	%r26 %r10 -1816
	lw.s	%r26 %f2 -1820
	lw	%r26 %r9 -1824
	lw.s	%r26 %f3 -1828
	fbge	%f0 %f1 tail_b.2527
tail_b.2526 :
	addi	%r0 %r1 1
	j	branching_b.1588
tail_b.2527 :
	addi	%r0 %r1 0
branching_b.1588 :
	beq	%r1 %r0 tail_b.2528
branching_b.1589 :
	ilw.s	%r0 %f0 l.70
	fbge	%f1 %f0 tail_b.2530
tail_b.2529 :
	addi	%r0 %r1 1
	j	branching_b.1590
tail_b.2530 :
	addi	%r0 %r1 0
	j	branching_b.1590
tail_b.2528 :
	addi	%r0 %r1 0
branching_b.1590 :
	beq	%r1 %r0 tail_b.2531
branching_b.1591 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r1 0
	lw	%r9 %r13 0
	lw	%r1 %r9 4
	beq	%r9 %r8 branching_b.1592
branching_b.1596 :
	beq	%r9 %r11 tail_b.2540
branching_b.1597 :
	lw.s	%r0 %f1 552
	lw	%r1 %r9 20
	lw.s	%r9 %f0 0
	sub.s	%f0 %f1 %f1
	lw.s	%r0 %f0 556
	lw	%r1 %r9 20
	addi	%r9 %r9 4
	lw.s	%r9 %f4 0
	sub.s	%f4 %f0 %f7
	lw.s	%r0 %f4 560
	lw	%r1 %r9 20
	addi	%r9 %r9 8
	lw.s	%r9 %f0 0
	sub.s	%f0 %f4 %f8
	lw	%r1 %r9 16
	lw.s	%r9 %f0 0
	mul.s	%f0 %f1 %f4
	lw	%r1 %r9 16
	addi	%r9 %r9 4
	lw.s	%r9 %f0 0
	mul.s	%f0 %f7 %f9
	lw	%r1 %r9 16
	addi	%r9 %r9 8
	lw.s	%r9 %f0 0
	mul.s	%f0 %f8 %f5
	lw	%r1 %r9 12
	beq	%r9 %r0 tail_b.2541
tail_b.2542 :
	lw	%r1 %r9 36
	addi	%r9 %r9 8
	lw.s	%r9 %f0 0
	mul.s	%f0 %f7 %f6
	lw	%r1 %r9 36
	addi	%r9 %r9 4
	lw.s	%r9 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f6 l.69
	div.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f0
	sw.s	%r0 %f0 568
	lw	%r1 %r9 36
	addi	%r9 %r9 8
	lw.s	%r9 %f0 0
	mul.s	%f0 %f1 %f4
	lw	%r1 %r9 36
	lw.s	%r9 %f0 0
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f4 %f0
	div.s	%f6 %f0 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 572
	lw	%r1 %r9 36
	addi	%r9 %r9 4
	lw.s	%r9 %f0 0
	mul.s	%f0 %f1 %f0
	lw	%r1 %r9 36
	lw.s	%r9 %f1 0
	mul.s	%f1 %f7 %f1
	add.s	%f1 %f0 %f0
	div.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1598
tail_b.2541 :
	sw.s	%r0 %f4 568
	sw.s	%r0 %f9 572
	sw.s	%r0 %f5 576
	j	branching_b.1598
tail_b.2540 :
	lw	%r1 %r9 16
	lw.s	%r9 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 568
	lw	%r1 %r9 16
	addi	%r9 %r9 4
	lw.s	%r9 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 572
	lw	%r1 %r9 16
	addi	%r9 %r9 8
	lw.s	%r9 %f0 0
	neg.s	%f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1601
branching_b.1592 :
	lw	%r0 %r9 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r9 %r14 -1
	addi	%r9 %r9 -1
	slli	%r9 %r9 2
	add	%r13 %r9 %r9
	lw.s	%r9 %f0 0
	fbne	%f0 %f2 tail_b.2533
tail_b.2532 :
	addi	%r0 %r9 1
	j	branching_b.1593
tail_b.2533 :
	addi	%r0 %r9 0
	j	branching_b.1593
tail_b.2531 :
tail_b.2674 :
	addi	%r10 %r10 -2
	j	iter_trace_diffuse_rays_loop.2
branching_b.1593 :
	beq	%r9 %r0 branching_b.1594
tail_b.2538 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2539
branching_b.1594 :
	fbge	%f2 %f0 tail_b.2535
tail_b.2534 :
	addi	%r0 %r9 1
	j	branching_b.1595
tail_b.2535 :
	addi	%r0 %r9 0
branching_b.1595 :
	beq	%r9 %r0 tail_b.2536
tail_b.2537 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2539
tail_b.2536 :
	ilw.s	%r0 %f0 l.58
tail_b.2539 :
	neg.s	%f0 %f0
	slli	%r14 %r9 2
	addi	%r9 %r9 568
	sw.s	%r9 %f0 0
branching_b.1601 :
	lw	%r1 %r9 0
	lw	%r1 %r13 32
	lw.s	%r13 %f0 0
	sw.s	%r0 %f0 580
	lw	%r1 %r13 32
	addi	%r13 %r13 4
	lw.s	%r13 %f0 0
	sw.s	%r0 %f0 584
	lw	%r1 %r13 32
	addi	%r13 %r13 8
	lw.s	%r13 %f0 0
	sw.s	%r0 %f0 588
	beq	%r9 %r8 branching_b.1602
branching_b.1607 :
	beq	%r9 %r11 tail_b.2558
branching_b.1608 :
	beq	%r9 %r2 tail_b.2559
branching_b.1609 :
	beq	%r9 %r5 branching_b.1610
tail_b.2593 :
	j	branching_b.1630
branching_b.1610 :
	lw.s	%r0 %f1 552
	lw	%r1 %r9 20
	lw.s	%r9 %f0 0
	sub.s	%f0 %f1 %f0
	lw	%r1 %r9 16
	lw.s	%r9 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f4
	lw.s	%r0 %f1 560
	lw	%r1 %r9 20
	addi	%r9 %r9 8
	lw.s	%r9 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r1 %r9 16
	addi	%r9 %r9 8
	lw.s	%r9 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f7
	mul.s	%f4 %f4 %f0
	mul.s	%f7 %f7 %f1
	add.s	%f1 %f0 %f5
	fbge	%f4 %f2 tail_b.2561
tail_b.2560 :
	neg.s	%f4 %f0
	j	branching_b.1611
tail_b.2561 :
	mov.s	%f4 %f0
	j	branching_b.1611
tail_b.2559 :
	lw.s	%r0 %f1 552
	lw	%r1 %r9 20
	lw.s	%r9 %f0 0
	sub.s	%f0 %f1 %f0
	lw.s	%r0 %f4 560
	lw	%r1 %r9 20
	addi	%r9 %r9 8
	lw.s	%r9 %f1 0
	sub.s	%f1 %f4 %f1
	mul.s	%f0 %f0 %f0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.73
	div.s	%f0 %f1 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f1 %f0
	sw	%r26 %r4 -1832
	sw	%r26 %r5 -1836
	sw	%r26 %r6 -1840
	sw	%r26 %r7 -1844
	sw	%r26 %r3 -1848
	sw	%r26 %r8 -1852
	sw	%r26 %r11 -1856
	sw	%r26 %r2 -1860
	sw	%r26 %r12 -1864
	sw	%r26 %r10 -1868
	sw.s	%r26 %f2 -1872
	sw.s	%r26 %f3 -1876
	sw	%r26 %r1 -1880
	sw	%r26 %r28 -1884
	addi	%r26 %r26 -1888
	jal	cos.0
	addi	%r26 %r26 1888
	lw	%r26 %r28 -1884
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f4 l.52
	mul.s	%f4 %f0 %f1
	sw.s	%r0 %f1 584
	ilw.s	%r0 %f1 l.56
	sub.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r4 -1832
	lw	%r26 %r5 -1836
	lw	%r26 %r6 -1840
	lw	%r26 %r7 -1844
	lw	%r26 %r3 -1848
	lw	%r26 %r8 -1852
	lw	%r26 %r11 -1856
	lw	%r26 %r2 -1860
	lw	%r26 %r12 -1864
	lw	%r26 %r10 -1868
	lw.s	%r26 %f2 -1872
	lw.s	%r26 %f3 -1876
	lw	%r26 %r1 -1880
	j	branching_b.1630
tail_b.2558 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.74
	mul.s	%f1 %f0 %f0
	sw	%r26 %r4 -1884
	sw	%r26 %r5 -1888
	sw	%r26 %r6 -1892
	sw	%r26 %r7 -1896
	sw	%r26 %r3 -1900
	sw	%r26 %r8 -1904
	sw	%r26 %r11 -1908
	sw	%r26 %r2 -1912
	sw	%r26 %r12 -1916
	sw	%r26 %r10 -1920
	sw.s	%r26 %f2 -1924
	sw.s	%r26 %f3 -1928
	sw	%r26 %r1 -1932
	sw	%r26 %r28 -1936
	addi	%r26 %r26 -1940
	jal	sin.0
	addi	%r26 %r26 1940
	lw	%r26 %r28 -1936
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f4 l.52
	mul.s	%f0 %f4 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f1 l.56
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f4 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r4 -1884
	lw	%r26 %r5 -1888
	lw	%r26 %r6 -1892
	lw	%r26 %r7 -1896
	lw	%r26 %r3 -1900
	lw	%r26 %r8 -1904
	lw	%r26 %r11 -1908
	lw	%r26 %r2 -1912
	lw	%r26 %r12 -1916
	lw	%r26 %r10 -1920
	lw.s	%r26 %f2 -1924
	lw.s	%r26 %f3 -1928
	lw	%r26 %r1 -1932
	j	branching_b.1630
branching_b.1602 :
	lw.s	%r0 %f1 552
	lw	%r1 %r9 20
	lw.s	%r9 %f0 0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f6 l.71
	mul.s	%f6 %f1 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f5 l.72
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f4 l.73
	fbge	%f0 %f4 tail_b.2550
tail_b.2549 :
	addi	%r0 %r13 1
	j	branching_b.1603
tail_b.2550 :
	addi	%r0 %r13 0
branching_b.1603 :
	lw.s	%r0 %f1 560
	lw	%r1 %r9 20
	addi	%r9 %r9 8
	lw.s	%r9 %f0 0
	sub.s	%f0 %f1 %f1
	mul.s	%f6 %f1 %f0
	floor.w.s	%f0 %f0
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f4 tail_b.2552
tail_b.2551 :
	addi	%r0 %r9 1
	j	branching_b.1604
tail_b.2552 :
	addi	%r0 %r9 0
branching_b.1604 :
	beq	%r13 %r0 branching_b.1605
branching_b.1606 :
	beq	%r9 %r0 tail_b.2555
tail_b.2556 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2557
tail_b.2555 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2557
branching_b.1605 :
	beq	%r9 %r0 tail_b.2553
tail_b.2554 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2557
tail_b.2553 :
	ilw.s	%r0 %f0 l.52
tail_b.2557 :
	sw.s	%r0 %f0 584
	j	branching_b.1630
branching_b.1611 :
	ilw.s	%r0 %f6 l.76
	fbge	%f0 %f6 tail_b.2563
tail_b.2562 :
	addi	%r0 %r9 1
	j	branching_b.1612
tail_b.2563 :
	addi	%r0 %r9 0
branching_b.1612 :
	beq	%r9 %r0 branching_b.1613
tail_b.2573 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.1619
branching_b.1613 :
	div.s	%f4 %f7 %f0
	fbge	%f0 %f2 tail_b.2565
tail_b.2564 :
	neg.s	%f0 %f7
	j	branching_b.1614
tail_b.2565 :
	mov.s	%f0 %f7
branching_b.1614 :
	fbg	%f2 %f7 branching_b.1617
branching_b.1615 :
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1616
tail_b.2566 :
	ilw.s	%r0 %f8 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f9
	mul.s	%f1 %f4 %f0
	add.s	%f0 %f9 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f9
	mul.s	%f1 %f4 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f7 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f7 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2572
branching_b.1616 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2568
tail_b.2567 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f7 %f0
	add.s	%f1 %f7 %f4
	div.s	%f4 %f0 %f7
	ilw.s	%r0 %f8 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f7 %f4 %f4
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f10
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f4
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f7 %f4 %f4
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f7 %f4 %f4
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2572
tail_b.2568 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f9
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f1 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f9 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f10
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f4
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.87
	mul.s	%f9 %f4 %f4
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2572
branching_b.1617 :
	neg.s	%f7 %f4
	ilw.s	%r0 %f0 l.80
	fbge	%f4 %f0 branching_b.1618
tail_b.2569 :
	ilw.s	%r0 %f7 l.58
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f4 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2572
branching_b.1618 :
	ilw.s	%r0 %f0 l.81
	fbge	%f4 %f0 tail_b.2571
tail_b.2570 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f4 %f0
	add.s	%f1 %f4 %f1
	div.s	%f1 %f0 %f7
	ilw.s	%r0 %f0 l.58
	ilw.s	%r0 %f9 l.59
	neg.s	%f7 %f1
	mul.s	%f7 %f1 %f10
	ilw.s	%r0 %f1 l.82
	mul.s	%f7 %f1 %f4
	ilw.s	%r0 %f1 l.83
	mul.s	%f7 %f1 %f8
	mul.s	%f10 %f4 %f1
	add.s	%f1 %f8 %f4
	ilw.s	%r0 %f1 l.84
	mul.s	%f7 %f1 %f1
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f1 %f1
	ilw.s	%r0 %f4 l.85
	mul.s	%f7 %f4 %f4
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.86
	mul.s	%f7 %f1 %f1
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f1 %f4
	ilw.s	%r0 %f1 l.87
	mul.s	%f7 %f1 %f1
	mul.s	%f10 %f4 %f4
	add.s	%f4 %f1 %f1
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f7 %f1
	add.s	%f1 %f9 %f1
	mul.s	%f0 %f1 %f0
	j	tail_b.2572
tail_b.2571 :
	ilw.s	%r0 %f7 l.56
	div.s	%f4 %f7 %f4
	ilw.s	%r0 %f8 l.89
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f4 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f4 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f4 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f4 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f0
tail_b.2572 :
	ilw.s	%r0 %f1 l.88
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f1 %f0
branching_b.1619 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f7
	lw.s	%r0 %f1 556
	lw	%r1 %r9 20
	addi	%r9 %r9 4
	lw.s	%r9 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r1 %r9 16
	addi	%r9 %r9 4
	lw.s	%r9 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	fbge	%f5 %f2 tail_b.2575
tail_b.2574 :
	neg.s	%f5 %f1
	j	branching_b.1620
tail_b.2575 :
	mov.s	%f5 %f1
branching_b.1620 :
	fbge	%f1 %f6 tail_b.2577
tail_b.2576 :
	addi	%r0 %r9 1
	j	branching_b.1621
tail_b.2577 :
	addi	%r0 %r9 0
branching_b.1621 :
	beq	%r9 %r0 branching_b.1622
tail_b.2587 :
	ilw.s	%r0 %f1 l.78
	j	branching_b.1628
branching_b.1622 :
	div.s	%f5 %f0 %f0
	fbge	%f0 %f2 tail_b.2579
tail_b.2578 :
	neg.s	%f0 %f6
	j	branching_b.1623
tail_b.2579 :
	mov.s	%f0 %f6
branching_b.1623 :
	fbg	%f2 %f6 branching_b.1626
branching_b.1624 :
	ilw.s	%r0 %f0 l.80
	fbge	%f6 %f0 branching_b.1625
tail_b.2580 :
	ilw.s	%r0 %f5 l.56
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f4
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f4 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f6 %f0 %f4
	mul.s	%f1 %f8 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f6 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2586
branching_b.1625 :
	ilw.s	%r0 %f0 l.81
	fbge	%f6 %f0 tail_b.2582
tail_b.2581 :
	ilw.s	%r0 %f4 l.56
	sub.s	%f4 %f6 %f1
	add.s	%f4 %f6 %f0
	div.s	%f0 %f1 %f1
	ilw.s	%r0 %f5 l.59
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f8 l.83
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f8 %f8
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f8 l.85
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f4 %f0 %f1
	j	tail_b.2586
tail_b.2582 :
	ilw.s	%r0 %f0 l.56
	div.s	%f6 %f0 %f6
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f9 l.89
	neg.s	%f6 %f0
	mul.s	%f6 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f6 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f6 %f0 %f5
	mul.s	%f1 %f4 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f4 l.84
	mul.s	%f6 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f6 %f0 %f4
	mul.s	%f1 %f5 %f0
	add.s	%f0 %f4 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f6 %f4 %f4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f6 %f0 %f4
	mul.s	%f1 %f5 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2586
branching_b.1626 :
	neg.s	%f6 %f4
	ilw.s	%r0 %f0 l.80
	fbge	%f4 %f0 branching_b.1627
tail_b.2583 :
	ilw.s	%r0 %f5 l.58
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f4 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f4 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f4 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f4 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2586
branching_b.1627 :
	ilw.s	%r0 %f0 l.81
	fbge	%f4 %f0 tail_b.2585
tail_b.2584 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f4 %f0
	add.s	%f1 %f4 %f1
	div.s	%f1 %f0 %f5
	ilw.s	%r0 %f4 l.58
	ilw.s	%r0 %f9 l.59
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f5 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f8
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f5 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f8
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f4 %f0 %f1
	j	tail_b.2586
tail_b.2585 :
	ilw.s	%r0 %f5 l.56
	div.s	%f4 %f5 %f4
	ilw.s	%r0 %f8 l.89
	neg.s	%f4 %f0
	mul.s	%f4 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f4 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f4 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f4 %f0 %f9
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f4 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f1
tail_b.2586 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f1 %f1
branching_b.1628 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f5
	ilw.s	%r0 %f1 l.90
	ilw.s	%r0 %f0 l.62
	sub.s	%f7 %f0 %f4
	mul.s	%f4 %f4 %f4
	sub.s	%f4 %f1 %f1
	sub.s	%f5 %f0 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f2 tail_b.2589
tail_b.2588 :
	addi	%r0 %r9 1
	j	branching_b.1629
tail_b.2589 :
	addi	%r0 %r9 0
branching_b.1629 :
	beq	%r9 %r0 tail_b.2590
tail_b.2591 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2592
tail_b.2590 :
tail_b.2592 :
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.91
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1630 :
	lw	%r0 %r9 536
	sw	%r26 %r4 -1936
	sw	%r26 %r5 -1940
	sw	%r26 %r6 -1944
	sw	%r26 %r7 -1948
	sw	%r26 %r3 -1952
	sw	%r26 %r8 -1956
	sw	%r26 %r11 -1960
	sw	%r26 %r2 -1964
	sw	%r26 %r12 -1968
	sw	%r26 %r10 -1972
	sw.s	%r26 %f2 -1976
	sw.s	%r26 %f3 -1980
	sw	%r26 %r1 -1984
	mov	%r9 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -1988
	addi	%r26 %r26 -1992
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 1992
	lw	%r26 %r28 -1988
	mov	%r1 %r9
	lw	%r26 %r4 -1936
	lw	%r26 %r5 -1940
	lw	%r26 %r6 -1944
	lw	%r26 %r7 -1948
	lw	%r26 %r3 -1952
	lw	%r26 %r8 -1956
	lw	%r26 %r11 -1960
	lw	%r26 %r2 -1964
	lw	%r26 %r12 -1968
	lw	%r26 %r10 -1972
	lw.s	%r26 %f2 -1976
	lw.s	%r26 %f3 -1980
	lw	%r26 %r1 -1984
	beq	%r9 %r0 branching_b.1631
tail_b.2599 :
	j	tail_b.2674
branching_b.1631 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f4
	lw.s	%r0 %f0 572
	lw.s	%r0 %f1 316
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	lw.s	%r0 %f0 576
	lw.s	%r0 %f1 320
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2595
tail_b.2594 :
	addi	%r0 %r9 1
	j	branching_b.1632
tail_b.2595 :
	addi	%r0 %r9 0
branching_b.1632 :
	beq	%r9 %r0 tail_b.2596
tail_b.2597 :
	j	tail_b.2598
tail_b.2596 :
	ilw.s	%r0 %f0 l.51
tail_b.2598 :
	mul.s	%f0 %f3 %f0
	lw	%r1 %r1 28
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
	lw.s	%r0 %f0 600
	lw.s	%r0 %f1 588
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2674
branching_b.1598 :
	lw	%r1 %r9 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f2 tail_b.2544
tail_b.2543 :
	addi	%r0 %r13 1
	j	branching_b.1599
tail_b.2544 :
	addi	%r0 %r13 0
branching_b.1599 :
	beq	%r13 %r0 branching_b.1600
tail_b.2547 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.2548
branching_b.1600 :
	beq	%r9 %r0 tail_b.2545
tail_b.2546 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f1
	j	tail_b.2548
tail_b.2545 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f1
tail_b.2548 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1601
branching_b.1634 :
	beq	%r1 %r0 tail_b.2602
branching_b.1635 :
	ilw.s	%r0 %f3 l.70
	fbge	%f0 %f3 tail_b.2604
tail_b.2603 :
	addi	%r0 %r1 1
	j	branching_b.1636
tail_b.2604 :
	addi	%r0 %r1 0
	j	branching_b.1636
tail_b.2602 :
	addi	%r0 %r1 0
branching_b.1636 :
	beq	%r1 %r0 tail_b.2605
branching_b.1637 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r13 0
	lw	%r9 %r9 0
	lw	%r13 %r1 4
	beq	%r1 %r8 branching_b.1638
branching_b.1642 :
	beq	%r1 %r11 tail_b.2614
branching_b.1643 :
	lw.s	%r0 %f3 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f4
	lw.s	%r0 %f3 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f5
	lw.s	%r0 %f3 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f6
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f3
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f9
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f8
	lw	%r13 %r1 12
	beq	%r1 %r0 tail_b.2615
tail_b.2616 :
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f7 0
	mul.s	%f7 %f6 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.69
	div.s	%f7 %f0 %f0
	add.s	%f0 %f3 %f0
	sw.s	%r0 %f0 568
	lw	%r13 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f3
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f3 %f0
	div.s	%f7 %f0 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 572
	lw	%r13 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f3
	lw	%r13 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f3 %f0
	div.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1644
tail_b.2615 :
	sw.s	%r0 %f3 568
	sw.s	%r0 %f9 572
	sw.s	%r0 %f8 576
	j	branching_b.1644
tail_b.2614 :
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
	j	branching_b.1647
branching_b.1638 :
	lw	%r0 %r14 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r14 %r1 -1
	addi	%r14 %r14 -1
	slli	%r14 %r14 2
	add	%r9 %r14 %r9
	lw.s	%r9 %f0 0
	fbne	%f0 %f2 tail_b.2607
tail_b.2606 :
	addi	%r0 %r9 1
	j	branching_b.1639
tail_b.2607 :
	addi	%r0 %r9 0
	j	branching_b.1639
tail_b.2605 :
	j	tail_b.2674
branching_b.1639 :
	beq	%r9 %r0 branching_b.1640
tail_b.2612 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2613
branching_b.1640 :
	fbge	%f2 %f0 tail_b.2609
tail_b.2608 :
	addi	%r0 %r9 1
	j	branching_b.1641
tail_b.2609 :
	addi	%r0 %r9 0
branching_b.1641 :
	beq	%r9 %r0 tail_b.2610
tail_b.2611 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2613
tail_b.2610 :
	ilw.s	%r0 %f0 l.58
tail_b.2613 :
	neg.s	%f0 %f0
	slli	%r1 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1647 :
	lw	%r13 %r1 0
	lw	%r13 %r9 32
	lw.s	%r9 %f0 0
	sw.s	%r0 %f0 580
	lw	%r13 %r9 32
	addi	%r9 %r9 4
	lw.s	%r9 %f0 0
	sw.s	%r0 %f0 584
	lw	%r13 %r9 32
	addi	%r9 %r9 8
	lw.s	%r9 %f0 0
	sw.s	%r0 %f0 588
	beq	%r1 %r8 branching_b.1648
branching_b.1653 :
	beq	%r1 %r11 tail_b.2632
branching_b.1654 :
	beq	%r1 %r2 tail_b.2633
branching_b.1655 :
	beq	%r1 %r5 branching_b.1656
tail_b.2667 :
	j	branching_b.1676
branching_b.1656 :
	lw.s	%r0 %f3 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f3
	lw	%r13 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f3 %f0
	lw.s	%r0 %f4 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	sub.s	%f3 %f4 %f4
	lw	%r13 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f4 %f3
	mul.s	%f0 %f0 %f4
	mul.s	%f3 %f3 %f5
	add.s	%f5 %f4 %f5
	fbge	%f0 %f2 tail_b.2635
tail_b.2634 :
	neg.s	%f0 %f4
	j	branching_b.1657
tail_b.2635 :
	mov.s	%f0 %f4
	j	branching_b.1657
tail_b.2633 :
	lw.s	%r0 %f3 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f4
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	sub.s	%f3 %f0 %f0
	mul.s	%f4 %f4 %f3
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f3 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f3 l.73
	div.s	%f3 %f0 %f3
	floor.w.s	%f3 %f0
	sub.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f3 %f0
	sw	%r26 %r4 -1988
	sw	%r26 %r5 -1992
	sw	%r26 %r6 -1996
	sw	%r26 %r7 -2000
	sw	%r26 %r3 -2004
	sw	%r26 %r8 -2008
	sw	%r26 %r11 -2012
	sw	%r26 %r2 -2016
	sw	%r26 %r12 -2020
	sw	%r26 %r10 -2024
	sw.s	%r26 %f2 -2028
	sw.s	%r26 %f1 -2032
	sw	%r26 %r13 -2036
	sw	%r26 %r28 -2040
	addi	%r26 %r26 -2044
	jal	cos.0
	addi	%r26 %r26 2044
	lw	%r26 %r28 -2040
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f4 l.52
	mul.s	%f4 %f0 %f3
	sw.s	%r0 %f3 584
	ilw.s	%r0 %f3 l.56
	sub.s	%f0 %f3 %f0
	mul.s	%f4 %f0 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r4 -1988
	lw	%r26 %r5 -1992
	lw	%r26 %r6 -1996
	lw	%r26 %r7 -2000
	lw	%r26 %r3 -2004
	lw	%r26 %r8 -2008
	lw	%r26 %r11 -2012
	lw	%r26 %r2 -2016
	lw	%r26 %r12 -2020
	lw	%r26 %r10 -2024
	lw.s	%r26 %f2 -2028
	lw.s	%r26 %f1 -2032
	lw	%r26 %r13 -2036
	j	branching_b.1676
tail_b.2632 :
	lw.s	%r0 %f3 556
	ilw.s	%r0 %f0 l.74
	mul.s	%f0 %f3 %f0
	sw	%r26 %r4 -2040
	sw	%r26 %r5 -2044
	sw	%r26 %r6 -2048
	sw	%r26 %r7 -2052
	sw	%r26 %r3 -2056
	sw	%r26 %r8 -2060
	sw	%r26 %r11 -2064
	sw	%r26 %r2 -2068
	sw	%r26 %r12 -2072
	sw	%r26 %r10 -2076
	sw.s	%r26 %f2 -2080
	sw.s	%r26 %f1 -2084
	sw	%r26 %r13 -2088
	sw	%r26 %r28 -2092
	addi	%r26 %r26 -2096
	jal	sin.0
	addi	%r26 %r26 2096
	lw	%r26 %r28 -2092
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f3 l.52
	mul.s	%f0 %f3 %f4
	sw.s	%r0 %f4 580
	ilw.s	%r0 %f4 l.56
	sub.s	%f0 %f4 %f0
	mul.s	%f0 %f3 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r4 -2040
	lw	%r26 %r5 -2044
	lw	%r26 %r6 -2048
	lw	%r26 %r7 -2052
	lw	%r26 %r3 -2056
	lw	%r26 %r8 -2060
	lw	%r26 %r11 -2064
	lw	%r26 %r2 -2068
	lw	%r26 %r12 -2072
	lw	%r26 %r10 -2076
	lw.s	%r26 %f2 -2080
	lw.s	%r26 %f1 -2084
	lw	%r26 %r13 -2088
	j	branching_b.1676
branching_b.1648 :
	lw.s	%r0 %f3 552
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.71
	mul.s	%f4 %f3 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f5 l.72
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f3 %f0
	ilw.s	%r0 %f6 l.73
	fbge	%f0 %f6 tail_b.2624
tail_b.2623 :
	addi	%r0 %r9 1
	j	branching_b.1649
tail_b.2624 :
	addi	%r0 %r9 0
branching_b.1649 :
	lw.s	%r0 %f0 560
	lw	%r13 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	sub.s	%f3 %f0 %f3
	mul.s	%f4 %f3 %f0
	floor.w.s	%f0 %f0
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f3 %f0
	fbge	%f0 %f6 tail_b.2626
tail_b.2625 :
	addi	%r0 %r1 1
	j	branching_b.1650
tail_b.2626 :
	addi	%r0 %r1 0
branching_b.1650 :
	beq	%r9 %r0 branching_b.1651
branching_b.1652 :
	beq	%r1 %r0 tail_b.2629
tail_b.2630 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2631
tail_b.2629 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2631
branching_b.1651 :
	beq	%r1 %r0 tail_b.2627
tail_b.2628 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2631
tail_b.2627 :
	ilw.s	%r0 %f0 l.52
tail_b.2631 :
	sw.s	%r0 %f0 584
	j	branching_b.1676
branching_b.1657 :
	ilw.s	%r0 %f6 l.76
	fbge	%f4 %f6 tail_b.2637
tail_b.2636 :
	addi	%r0 %r1 1
	j	branching_b.1658
tail_b.2637 :
	addi	%r0 %r1 0
branching_b.1658 :
	beq	%r1 %r0 branching_b.1659
tail_b.2647 :
	ilw.s	%r0 %f3 l.78
	j	branching_b.1665
branching_b.1659 :
	div.s	%f0 %f3 %f0
	fbge	%f0 %f2 tail_b.2639
tail_b.2638 :
	neg.s	%f0 %f7
	j	branching_b.1660
tail_b.2639 :
	mov.s	%f0 %f7
branching_b.1660 :
	fbg	%f2 %f7 branching_b.1663
branching_b.1661 :
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1662
tail_b.2640 :
	ilw.s	%r0 %f4 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f3 l.83
	mul.s	%f7 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.85
	mul.s	%f7 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.87
	mul.s	%f7 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.2646
branching_b.1662 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2642
tail_b.2641 :
	ilw.s	%r0 %f9 l.56
	sub.s	%f9 %f7 %f3
	add.s	%f9 %f7 %f0
	div.s	%f0 %f3 %f8
	ilw.s	%r0 %f4 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f3
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f7 l.83
	mul.s	%f8 %f7 %f7
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f8 %f7 %f7
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f10
	mul.s	%f3 %f7 %f0
	add.s	%f0 %f10 %f7
	ilw.s	%r0 %f0 l.86
	mul.s	%f8 %f0 %f0
	mul.s	%f3 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.87
	mul.s	%f8 %f7 %f7
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.2646
tail_b.2642 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f10
	ilw.s	%r0 %f3 l.58
	ilw.s	%r0 %f9 l.89
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f4
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f4
	mul.s	%f7 %f8 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f7 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f3 %f0 %f0
	j	tail_b.2646
branching_b.1663 :
	neg.s	%f7 %f8
	ilw.s	%r0 %f0 l.80
	fbge	%f8 %f0 branching_b.1664
tail_b.2643 :
	ilw.s	%r0 %f7 l.58
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f4
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f3
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.84
	mul.s	%f8 %f3 %f3
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.85
	mul.s	%f8 %f3 %f3
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.86
	mul.s	%f8 %f3 %f3
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f9
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f3
	mul.s	%f4 %f9 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2646
branching_b.1664 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 tail_b.2645
tail_b.2644 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f8 %f3
	add.s	%f0 %f8 %f0
	div.s	%f0 %f3 %f10
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f9 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f3
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f8
	mul.s	%f3 %f4 %f0
	add.s	%f0 %f8 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f0
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f4 l.85
	mul.s	%f10 %f4 %f4
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f4 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f4
	mul.s	%f3 %f8 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2646
tail_b.2645 :
	ilw.s	%r0 %f4 l.56
	div.s	%f8 %f4 %f9
	ilw.s	%r0 %f8 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f3
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f7 l.83
	mul.s	%f9 %f7 %f7
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f9 %f7 %f7
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.85
	mul.s	%f9 %f7 %f7
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f9 %f7 %f7
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.87
	mul.s	%f9 %f7 %f7
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f4 %f0 %f0
tail_b.2646 :
	ilw.s	%r0 %f3 l.88
	mul.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f3 %f3
branching_b.1665 :
	floor.w.s	%f3 %f0
	sub.s	%f0 %f3 %f4
	lw.s	%r0 %f3 556
	lw	%r13 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f0
	lw	%r13 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f0 %f3
	fbge	%f5 %f2 tail_b.2649
tail_b.2648 :
	neg.s	%f5 %f0
	j	branching_b.1666
tail_b.2649 :
	mov.s	%f5 %f0
branching_b.1666 :
	fbge	%f0 %f6 tail_b.2651
tail_b.2650 :
	addi	%r0 %r1 1
	j	branching_b.1667
tail_b.2651 :
	addi	%r0 %r1 0
branching_b.1667 :
	beq	%r1 %r0 branching_b.1668
tail_b.2661 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.1674
branching_b.1668 :
	div.s	%f5 %f3 %f0
	fbge	%f0 %f2 tail_b.2653
tail_b.2652 :
	neg.s	%f0 %f7
	j	branching_b.1669
tail_b.2653 :
	mov.s	%f0 %f7
branching_b.1669 :
	fbg	%f2 %f7 branching_b.1672
branching_b.1670 :
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1671
tail_b.2654 :
	ilw.s	%r0 %f5 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f3
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f0 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f3
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.2660
branching_b.1671 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2656
tail_b.2655 :
	ilw.s	%r0 %f5 l.56
	sub.s	%f5 %f7 %f0
	add.s	%f5 %f7 %f3
	div.s	%f3 %f0 %f9
	ilw.s	%r0 %f6 l.59
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f3
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f7
	mul.s	%f8 %f3 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f3 l.84
	mul.s	%f9 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f7
	mul.s	%f8 %f3 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f3 l.86
	mul.s	%f9 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.87
	mul.s	%f9 %f3 %f3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.2660
tail_b.2656 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f7
	ilw.s	%r0 %f9 l.58
	ilw.s	%r0 %f3 l.89
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f8
	mul.s	%f6 %f5 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f7 %f5 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f7 %f5 %f5
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f9 %f0 %f0
	j	tail_b.2660
branching_b.1672 :
	neg.s	%f7 %f8
	ilw.s	%r0 %f0 l.80
	fbge	%f8 %f0 branching_b.1673
tail_b.2657 :
	ilw.s	%r0 %f6 l.58
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f3 l.82
	mul.s	%f8 %f3 %f3
	ilw.s	%r0 %f5 l.83
	mul.s	%f8 %f5 %f5
	mul.s	%f0 %f3 %f3
	add.s	%f3 %f5 %f7
	ilw.s	%r0 %f3 l.84
	mul.s	%f8 %f3 %f5
	mul.s	%f0 %f7 %f3
	add.s	%f3 %f5 %f3
	ilw.s	%r0 %f5 l.85
	mul.s	%f8 %f5 %f5
	mul.s	%f0 %f3 %f3
	add.s	%f3 %f5 %f3
	ilw.s	%r0 %f5 l.86
	mul.s	%f8 %f5 %f5
	mul.s	%f0 %f3 %f3
	add.s	%f3 %f5 %f3
	ilw.s	%r0 %f5 l.87
	mul.s	%f8 %f5 %f5
	mul.s	%f0 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.2660
branching_b.1673 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 tail_b.2659
tail_b.2658 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f8 %f3
	add.s	%f0 %f8 %f0
	div.s	%f0 %f3 %f7
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f9 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f3 l.83
	mul.s	%f7 %f3 %f3
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f3 %f8
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f3
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.86
	mul.s	%f7 %f3 %f3
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f8
	mul.s	%f6 %f3 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.2660
tail_b.2659 :
	ilw.s	%r0 %f7 l.56
	div.s	%f8 %f7 %f3
	ilw.s	%r0 %f6 l.89
	neg.s	%f3 %f0
	mul.s	%f3 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f3 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f3 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f3 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f3 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f3 %f5 %f5
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f3 %f0 %f0
	mul.s	%f8 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f3 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
tail_b.2660 :
	ilw.s	%r0 %f3 l.88
	mul.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f3 %f0
branching_b.1674 :
	floor.w.s	%f0 %f3
	sub.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.90
	ilw.s	%r0 %f5 l.62
	sub.s	%f4 %f5 %f4
	mul.s	%f4 %f4 %f4
	sub.s	%f4 %f3 %f3
	sub.s	%f0 %f5 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f3 %f0
	fbge	%f0 %f2 tail_b.2663
tail_b.2662 :
	addi	%r0 %r1 1
	j	branching_b.1675
tail_b.2663 :
	addi	%r0 %r1 0
branching_b.1675 :
	beq	%r1 %r0 tail_b.2664
tail_b.2665 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2666
tail_b.2664 :
tail_b.2666 :
	ilw.s	%r0 %f3 l.52
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.91
	div.s	%f0 %f3 %f0
	sw.s	%r0 %f0 588
branching_b.1676 :
	lw	%r0 %r1 536
	sw	%r26 %r4 -2092
	sw	%r26 %r5 -2096
	sw	%r26 %r6 -2100
	sw	%r26 %r7 -2104
	sw	%r26 %r3 -2108
	sw	%r26 %r8 -2112
	sw	%r26 %r11 -2116
	sw	%r26 %r2 -2120
	sw	%r26 %r12 -2124
	sw	%r26 %r10 -2128
	sw.s	%r26 %f2 -2132
	sw.s	%r26 %f1 -2136
	sw	%r26 %r13 -2140
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -2144
	addi	%r26 %r26 -2148
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 2148
	lw	%r26 %r28 -2144
	lw	%r26 %r4 -2092
	lw	%r26 %r5 -2096
	lw	%r26 %r6 -2100
	lw	%r26 %r7 -2104
	lw	%r26 %r3 -2108
	lw	%r26 %r8 -2112
	lw	%r26 %r11 -2116
	lw	%r26 %r2 -2120
	lw	%r26 %r12 -2124
	lw	%r26 %r10 -2128
	lw.s	%r26 %f2 -2132
	lw.s	%r26 %f1 -2136
	lw	%r26 %r13 -2140
	beq	%r1 %r0 branching_b.1677
tail_b.2673 :
	j	tail_b.2674
branching_b.1677 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f3 312
	mul.s	%f3 %f0 %f4
	lw.s	%r0 %f3 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f4 %f0
	lw.s	%r0 %f4 576
	lw.s	%r0 %f3 320
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f0 %f0
	neg.s	%f0 %f0
	fbge	%f2 %f0 tail_b.2669
tail_b.2668 :
	addi	%r0 %r1 1
	j	branching_b.1678
tail_b.2669 :
	addi	%r0 %r1 0
branching_b.1678 :
	beq	%r1 %r0 tail_b.2670
tail_b.2671 :
	j	tail_b.2672
tail_b.2670 :
	ilw.s	%r0 %f0 l.51
tail_b.2672 :
	mul.s	%f0 %f1 %f1
	lw	%r13 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f1 592
	lw.s	%r0 %f0 580
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f0 596
	lw.s	%r0 %f1 584
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	lw.s	%r0 %f0 588
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2674
branching_b.1644 :
	lw	%r13 %r9 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f3
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f3 %f0
	lw.s	%r0 %f3 576
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f0 %f0
	sqrt.s	%f0 %f3
	fbne	%f3 %f2 tail_b.2618
tail_b.2617 :
	addi	%r0 %r1 1
	j	branching_b.1645
tail_b.2618 :
	addi	%r0 %r1 0
branching_b.1645 :
	beq	%r1 %r0 branching_b.1646
tail_b.2621 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2622
branching_b.1646 :
	beq	%r9 %r0 tail_b.2619
tail_b.2620 :
	ilw.s	%r0 %f0 l.58
	div.s	%f3 %f0 %f0
	j	tail_b.2622
tail_b.2619 :
	ilw.s	%r0 %f0 l.56
	div.s	%f3 %f0 %f0
tail_b.2622 :
	lw.s	%r0 %f3 568
	mul.s	%f0 %f3 %f3
	sw.s	%r0 %f3 568
	lw.s	%r0 %f3 572
	mul.s	%f0 %f3 %f3
	sw.s	%r0 %f3 572
	lw.s	%r0 %f3 576
	mul.s	%f0 %f3 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1647
postloop_b.53 :
tail_b.2677 :
	slli	%r6 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f0 604
	mov	%r1 %r2
	lw.s	%r2 %f2 0
	lw.s	%r0 %f1 592
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	addi	%r1 %r2 4
	lw.s	%r2 %f1 0
	lw.s	%r0 %f2 596
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f1 612
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	lw.s	%r0 %f2 600
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 612
	j	tail_b.2678
postloop_b.54 :
return_point.18 :
	retl
pretrace_diffuse_rays.0 :
	mov	%r1 %r31
	mov	%r2 %r1
	mov	%r31 %r2
preloop_b.55 :
	mov	%r1 %r3
	addi	%r0 %r4 4
pretrace_diffuse_rays_loop.0 :
	ble	%r3 %r4 branching_b.1680
tail_b.2846 :
	j	postloop_b.57
branching_b.1680 :
	lw	%r2 %r1 8
	slli	%r3 %r5 2
	add	%r1 %r5 %r1
	lw	%r1 %r1 0
	ble	%r0 %r1 branching_b.1681
tail_b.2845 :
	j	postloop_b.57
branching_b.1681 :
	lw	%r2 %r1 12
	slli	%r3 %r5 2
	add	%r1 %r5 %r1
	lw	%r1 %r1 0
	beq	%r1 %r0 tail_b.2681
preloop_b.56 :
	lw	%r2 %r1 24
	lw	%r1 %r1 0
	ilw.s	%r0 %f3 l.51
	sw.s	%r0 %f3 592
	sw.s	%r0 %f3 596
	sw.s	%r0 %f3 600
	lw	%r2 %r7 28
	lw	%r2 %r5 4
	slli	%r1 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r6 0
	slli	%r3 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r7 0
	slli	%r3 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r8 0
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
	addi	%r1 %r9 -1
setup_startp_constants_loop.1 :
	ble	%r0 %r9 branching_b.1683
tail_b.2690 :
	j	postloop_b.55
branching_b.1683 :
	slli	%r9 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r11 0
	lw	%r11 %r10 40
	lw	%r11 %r5 4
	mov	%r8 %r1
	lw.s	%r1 %f0 0
	lw	%r11 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	mov	%r10 %r1
	sw.s	%r1 %f0 0
	addi	%r8 %r1 4
	lw.s	%r1 %f1 0
	lw	%r11 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r10 %r1 4
	sw.s	%r1 %f0 0
	addi	%r8 %r1 8
	lw.s	%r1 %f1 0
	lw	%r11 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	addi	%r10 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	beq	%r5 %r1 tail_b.2682
branching_b.1684 :
	bl	%r1 %r5 branching_b.1685
tail_b.2688 :
	j	tail_b.2689
branching_b.1685 :
	mov	%r10 %r1
	lw.s	%r1 %f6 0
	addi	%r10 %r1 4
	lw.s	%r1 %f5 0
	addi	%r10 %r1 8
	lw.s	%r1 %f4 0
	mul.s	%f6 %f6 %f0
	lw	%r11 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	mul.s	%f5 %f5 %f2
	lw	%r11 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f4 %f4 %f0
	lw	%r11 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	lw	%r11 %r1 12
	beq	%r1 %r0 tail_b.2683
tail_b.2684 :
	mul.s	%f4 %f5 %f0
	lw	%r11 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f2
	mul.s	%f6 %f4 %f1
	lw	%r11 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	mul.s	%f5 %f6 %f2
	lw	%r11 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	j	branching_b.1686
tail_b.2683 :
	j	branching_b.1686
tail_b.2682 :
	lw	%r11 %r1 16
	mov	%r10 %r5
	lw.s	%r5 %f0 0
	addi	%r10 %r5 4
	lw.s	%r5 %f1 0
	addi	%r10 %r5 8
	lw.s	%r5 %f2 0
	mov	%r1 %r5
	lw.s	%r5 %f4 0
	mul.s	%f0 %f4 %f4
	addi	%r1 %r5 4
	lw.s	%r5 %f0 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f1
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r10 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.2689
tail_b.2681 :
tail_b.2844 :
	addi	%r3 %r3 1
	j	pretrace_diffuse_rays_loop.0
branching_b.1686 :
	addi	%r0 %r1 3
	beq	%r5 %r1 tail_b.2685
tail_b.2686 :
	j	tail_b.2687
tail_b.2685 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f1 %f1
tail_b.2687 :
	addi	%r10 %r1 12
	sw.s	%r1 %f1 0
tail_b.2689 :
	addi	%r9 %r9 -1
	j	setup_startp_constants_loop.1
postloop_b.55 :
preloop_b.57 :
	addi	%r0 %r5 118
iter_trace_diffuse_rays_loop.1 :
	ble	%r0 %r5 branching_b.1688
tail_b.2842 :
	j	postloop_b.56
branching_b.1688 :
	slli	%r5 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 0
	mov	%r1 %r8
	lw.s	%r8 %f0 0
	mov	%r7 %r8
	lw.s	%r8 %f1 0
	mul.s	%f1 %f0 %f1
	addi	%r1 %r8 4
	lw.s	%r8 %f2 0
	addi	%r7 %r8 4
	lw.s	%r8 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	addi	%r7 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	fbge	%f1 %f3 tail_b.2692
tail_b.2691 :
	addi	%r0 %r1 1
	j	branching_b.1689
tail_b.2692 :
	addi	%r0 %r1 0
branching_b.1689 :
	beq	%r1 %r0 branching_b.1690
branching_b.1736 :
	addi	%r5 %r1 1
	slli	%r1 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r8 0
	ilw.s	%r0 %f0 l.93
	div.s	%f0 %f1 %f4
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r1 536
	sw	%r26 %r2 0
	sw	%r26 %r4 -4
	sw	%r26 %r3 -8
	sw.s	%r26 %f3 -12
	sw	%r26 %r6 -16
	sw	%r26 %r7 -20
	sw	%r26 %r5 -24
	sw	%r26 %r8 -28
	sw.s	%r26 %f4 -32
	mov	%r8 %r3
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -36
	addi	%r26 %r26 -40
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 40
	lw	%r26 %r28 -36
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.68
	lw	%r26 %r2 0
	lw	%r26 %r4 -4
	lw	%r26 %r3 -8
	lw.s	%r26 %f3 -12
	lw	%r26 %r6 -16
	lw	%r26 %r7 -20
	lw	%r26 %r5 -24
	lw	%r26 %r8 -28
	lw.s	%r26 %f4 -32
	fbge	%f0 %f1 tail_b.2768
tail_b.2767 :
	addi	%r0 %r1 1
	j	branching_b.1737
tail_b.2768 :
	addi	%r0 %r1 0
	j	branching_b.1737
branching_b.1690 :
	slli	%r5 %r1 2
	add	%r6 %r1 %r1
	lw	%r1 %r8 0
	ilw.s	%r0 %f0 l.94
	div.s	%f0 %f1 %f2
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r1 536
	sw	%r26 %r2 -36
	sw	%r26 %r4 -40
	sw	%r26 %r3 -44
	sw.s	%r26 %f3 -48
	sw	%r26 %r6 -52
	sw	%r26 %r7 -56
	sw	%r26 %r5 -60
	sw	%r26 %r8 -64
	sw.s	%r26 %f2 -68
	mov	%r8 %r3
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -72
	addi	%r26 %r26 -76
	jal	trace_or_matrix_fast.0
	addi	%r26 %r26 76
	lw	%r26 %r28 -72
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.68
	lw	%r26 %r2 -36
	lw	%r26 %r4 -40
	lw	%r26 %r3 -44
	lw.s	%r26 %f3 -48
	lw	%r26 %r6 -52
	lw	%r26 %r7 -56
	lw	%r26 %r5 -60
	lw	%r26 %r8 -64
	lw.s	%r26 %f2 -68
	fbge	%f0 %f1 tail_b.2694
tail_b.2693 :
	addi	%r0 %r1 1
	j	branching_b.1691
tail_b.2694 :
	addi	%r0 %r1 0
branching_b.1691 :
	beq	%r1 %r0 tail_b.2695
branching_b.1692 :
	ilw.s	%r0 %f0 l.70
	fbge	%f1 %f0 tail_b.2697
tail_b.2696 :
	addi	%r0 %r1 1
	j	branching_b.1693
tail_b.2697 :
	addi	%r0 %r1 0
	j	branching_b.1693
tail_b.2695 :
	addi	%r0 %r1 0
branching_b.1693 :
	beq	%r1 %r0 tail_b.2698
branching_b.1694 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r9 0
	lw	%r8 %r11 0
	lw	%r9 %r8 4
	addi	%r0 %r10 1
	beq	%r8 %r10 branching_b.1695
branching_b.1699 :
	addi	%r0 %r1 2
	beq	%r8 %r1 tail_b.2707
branching_b.1700 :
	lw.s	%r0 %f0 552
	lw	%r9 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f8
	lw.s	%r0 %f0 556
	lw	%r9 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f1 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f6
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f1
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f5
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f9
	lw	%r9 %r1 12
	beq	%r1 %r0 tail_b.2708
tail_b.2709 :
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f7
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.69
	div.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 568
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f0
	lw	%r9 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f0 %f0
	div.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r0 %f0 572
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f1
	lw	%r9 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	div.s	%f7 %f0 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1701
tail_b.2708 :
	sw.s	%r0 %f1 568
	sw.s	%r0 %f5 572
	sw.s	%r0 %f9 576
	j	branching_b.1701
tail_b.2707 :
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
	j	branching_b.1704
branching_b.1695 :
	lw	%r0 %r1 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r1 %r8 -1
	addi	%r1 %r1 -1
	slli	%r1 %r1 2
	add	%r11 %r1 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.2700
tail_b.2699 :
	addi	%r0 %r1 1
	j	branching_b.1696
tail_b.2700 :
	addi	%r0 %r1 0
	j	branching_b.1696
tail_b.2698 :
tail_b.2841 :
	addi	%r5 %r5 -2
	j	iter_trace_diffuse_rays_loop.1
branching_b.1696 :
	beq	%r1 %r0 branching_b.1697
tail_b.2705 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2706
branching_b.1697 :
	fbge	%f3 %f0 tail_b.2702
tail_b.2701 :
	addi	%r0 %r1 1
	j	branching_b.1698
tail_b.2702 :
	addi	%r0 %r1 0
branching_b.1698 :
	beq	%r1 %r0 tail_b.2703
tail_b.2704 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2706
tail_b.2703 :
	ilw.s	%r0 %f0 l.58
tail_b.2706 :
	neg.s	%f0 %f0
	slli	%r8 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1704 :
	lw	%r9 %r8 0
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
	beq	%r8 %r10 branching_b.1705
branching_b.1710 :
	addi	%r0 %r1 2
	beq	%r8 %r1 tail_b.2725
branching_b.1711 :
	addi	%r0 %r1 3
	beq	%r8 %r1 tail_b.2726
branching_b.1712 :
	beq	%r8 %r4 branching_b.1713
tail_b.2760 :
	j	branching_b.1733
branching_b.1713 :
	lw.s	%r0 %f0 552
	lw	%r9 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f4 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f0
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f4 0
	sqrt.s	%f4 %f4
	mul.s	%f4 %f0 %f5
	mul.s	%f1 %f1 %f4
	mul.s	%f5 %f5 %f0
	add.s	%f0 %f4 %f4
	fbge	%f1 %f3 tail_b.2728
tail_b.2727 :
	neg.s	%f1 %f0
	j	branching_b.1714
tail_b.2728 :
	mov.s	%f1 %f0
	j	branching_b.1714
tail_b.2726 :
	lw.s	%r0 %f0 552
	lw	%r9 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f4
	lw.s	%r0 %f0 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.73
	div.s	%f1 %f0 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.75
	mul.s	%f1 %f0 %f0
	sw	%r26 %r2 -72
	sw	%r26 %r4 -76
	sw	%r26 %r3 -80
	sw.s	%r26 %f3 -84
	sw	%r26 %r6 -88
	sw	%r26 %r7 -92
	sw	%r26 %r5 -96
	sw.s	%r26 %f2 -100
	sw	%r26 %r9 -104
	sw	%r26 %r28 -108
	addi	%r26 %r26 -112
	jal	cos.0
	addi	%r26 %r26 112
	lw	%r26 %r28 -108
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f4 l.52
	mul.s	%f4 %f1 %f0
	sw.s	%r0 %f0 584
	ilw.s	%r0 %f0 l.56
	sub.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r2 -72
	lw	%r26 %r4 -76
	lw	%r26 %r3 -80
	lw.s	%r26 %f3 -84
	lw	%r26 %r6 -88
	lw	%r26 %r7 -92
	lw	%r26 %r5 -96
	lw.s	%r26 %f2 -100
	lw	%r26 %r9 -104
	j	branching_b.1733
tail_b.2725 :
	lw.s	%r0 %f1 556
	ilw.s	%r0 %f0 l.74
	mul.s	%f0 %f1 %f0
	sw	%r26 %r2 -108
	sw	%r26 %r4 -112
	sw	%r26 %r3 -116
	sw.s	%r26 %f3 -120
	sw	%r26 %r6 -124
	sw	%r26 %r7 -128
	sw	%r26 %r5 -132
	sw.s	%r26 %f2 -136
	sw	%r26 %r9 -140
	sw	%r26 %r28 -144
	addi	%r26 %r26 -148
	jal	sin.0
	addi	%r26 %r26 148
	lw	%r26 %r28 -144
	mul.s	%f0 %f0 %f4
	ilw.s	%r0 %f0 l.52
	mul.s	%f4 %f0 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f1 l.56
	sub.s	%f4 %f1 %f1
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r2 -108
	lw	%r26 %r4 -112
	lw	%r26 %r3 -116
	lw.s	%r26 %f3 -120
	lw	%r26 %r6 -124
	lw	%r26 %r7 -128
	lw	%r26 %r5 -132
	lw.s	%r26 %f2 -136
	lw	%r26 %r9 -140
	j	branching_b.1733
branching_b.1705 :
	lw.s	%r0 %f0 552
	lw	%r9 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	ilw.s	%r0 %f4 l.71
	mul.s	%f4 %f1 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f5 l.72
	mul.s	%f5 %f0 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f6 l.73
	fbge	%f0 %f6 tail_b.2717
tail_b.2716 :
	addi	%r0 %r8 1
	j	branching_b.1706
tail_b.2717 :
	addi	%r0 %r8 0
branching_b.1706 :
	lw.s	%r0 %f1 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f1
	floor.w.s	%f1 %f1
	mul.s	%f5 %f1 %f1
	sub.s	%f1 %f0 %f0
	fbge	%f0 %f6 tail_b.2719
tail_b.2718 :
	addi	%r0 %r1 1
	j	branching_b.1707
tail_b.2719 :
	addi	%r0 %r1 0
branching_b.1707 :
	beq	%r8 %r0 branching_b.1708
branching_b.1709 :
	beq	%r1 %r0 tail_b.2722
tail_b.2723 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2724
tail_b.2722 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2724
branching_b.1708 :
	beq	%r1 %r0 tail_b.2720
tail_b.2721 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2724
tail_b.2720 :
	ilw.s	%r0 %f0 l.52
tail_b.2724 :
	sw.s	%r0 %f0 584
	j	branching_b.1733
branching_b.1714 :
	ilw.s	%r0 %f6 l.76
	fbge	%f0 %f6 tail_b.2730
tail_b.2729 :
	addi	%r0 %r1 1
	j	branching_b.1715
tail_b.2730 :
	addi	%r0 %r1 0
branching_b.1715 :
	beq	%r1 %r0 branching_b.1716
tail_b.2740 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.1722
branching_b.1716 :
	div.s	%f1 %f5 %f0
	fbge	%f0 %f3 tail_b.2732
tail_b.2731 :
	neg.s	%f0 %f8
	j	branching_b.1717
tail_b.2732 :
	mov.s	%f0 %f8
branching_b.1717 :
	fbg	%f3 %f8 branching_b.1720
branching_b.1718 :
	ilw.s	%r0 %f0 l.80
	fbge	%f8 %f0 branching_b.1719
tail_b.2733 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f8 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f1
	mul.s	%f5 %f9 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f8 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.2739
branching_b.1719 :
	ilw.s	%r0 %f0 l.81
	fbge	%f8 %f0 tail_b.2735
tail_b.2734 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f8 %f0
	add.s	%f7 %f8 %f1
	div.s	%f1 %f0 %f5
	ilw.s	%r0 %f9 l.59
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f1
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f10
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f1
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.2739
tail_b.2735 :
	ilw.s	%r0 %f0 l.56
	div.s	%f8 %f0 %f9
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f8 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f1
	mul.s	%f7 %f10 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f9 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2739
branching_b.1720 :
	neg.s	%f8 %f10
	ilw.s	%r0 %f0 l.80
	fbge	%f10 %f0 branching_b.1721
tail_b.2736 :
	ilw.s	%r0 %f8 l.58
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f10 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f10 %f0 %f7
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f7 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f8 %f0 %f1
	j	tail_b.2739
branching_b.1721 :
	ilw.s	%r0 %f0 l.81
	fbge	%f10 %f0 tail_b.2738
tail_b.2737 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f10 %f1
	add.s	%f0 %f10 %f0
	div.s	%f0 %f1 %f10
	ilw.s	%r0 %f7 l.58
	ilw.s	%r0 %f9 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f8
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f1
	mul.s	%f5 %f8 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f8
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f8 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f10 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f10 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f7 %f0 %f1
	j	tail_b.2739
tail_b.2738 :
	ilw.s	%r0 %f9 l.56
	div.s	%f10 %f9 %f5
	ilw.s	%r0 %f7 l.89
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f5 %f0 %f1
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f5 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f9 %f0 %f1
tail_b.2739 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f1 %f0
branching_b.1722 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f5
	lw.s	%r0 %f0 556
	lw	%r9 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	fbge	%f4 %f3 tail_b.2742
tail_b.2741 :
	neg.s	%f4 %f0
	j	branching_b.1723
tail_b.2742 :
	mov.s	%f4 %f0
branching_b.1723 :
	fbge	%f0 %f6 tail_b.2744
tail_b.2743 :
	addi	%r0 %r1 1
	j	branching_b.1724
tail_b.2744 :
	addi	%r0 %r1 0
branching_b.1724 :
	beq	%r1 %r0 branching_b.1725
tail_b.2754 :
	ilw.s	%r0 %f1 l.78
	j	branching_b.1731
branching_b.1725 :
	div.s	%f4 %f1 %f0
	fbge	%f0 %f3 tail_b.2746
tail_b.2745 :
	neg.s	%f0 %f7
	j	branching_b.1726
tail_b.2746 :
	mov.s	%f0 %f7
branching_b.1726 :
	fbg	%f3 %f7 branching_b.1729
branching_b.1727 :
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1728
tail_b.2747 :
	ilw.s	%r0 %f4 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f7 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f6
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f1
	mul.s	%f8 %f6 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.2753
branching_b.1728 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2749
tail_b.2748 :
	ilw.s	%r0 %f4 l.56
	sub.s	%f4 %f7 %f1
	add.s	%f4 %f7 %f0
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f6 l.59
	neg.s	%f0 %f1
	mul.s	%f0 %f1 %f9
	ilw.s	%r0 %f1 l.82
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f7 l.83
	mul.s	%f0 %f7 %f7
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f7 %f8
	ilw.s	%r0 %f1 l.84
	mul.s	%f0 %f1 %f7
	mul.s	%f9 %f8 %f1
	add.s	%f1 %f7 %f8
	ilw.s	%r0 %f1 l.85
	mul.s	%f0 %f1 %f7
	mul.s	%f9 %f8 %f1
	add.s	%f1 %f7 %f1
	ilw.s	%r0 %f7 l.86
	mul.s	%f0 %f7 %f7
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f7 %f7
	ilw.s	%r0 %f1 l.87
	mul.s	%f0 %f1 %f1
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f1 %f1
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.2753
tail_b.2749 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f7
	ilw.s	%r0 %f4 l.58
	ilw.s	%r0 %f8 l.89
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f1
	mul.s	%f9 %f6 %f0
	add.s	%f0 %f1 %f6
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f1
	mul.s	%f9 %f6 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f6
	mul.s	%f9 %f1 %f0
	add.s	%f0 %f6 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f4 %f0 %f0
	j	tail_b.2753
branching_b.1729 :
	neg.s	%f7 %f0
	ilw.s	%r0 %f1 l.80
	fbge	%f0 %f1 branching_b.1730
tail_b.2750 :
	ilw.s	%r0 %f7 l.58
	neg.s	%f0 %f1
	mul.s	%f0 %f1 %f6
	ilw.s	%r0 %f1 l.82
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f4 l.83
	mul.s	%f0 %f4 %f4
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.84
	mul.s	%f0 %f1 %f8
	mul.s	%f6 %f4 %f1
	add.s	%f1 %f8 %f4
	ilw.s	%r0 %f1 l.85
	mul.s	%f0 %f1 %f8
	mul.s	%f6 %f4 %f1
	add.s	%f1 %f8 %f1
	ilw.s	%r0 %f4 l.86
	mul.s	%f0 %f4 %f4
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f4 %f4
	ilw.s	%r0 %f1 l.87
	mul.s	%f0 %f1 %f1
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f1 %f1
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2753
branching_b.1730 :
	ilw.s	%r0 %f1 l.81
	fbge	%f0 %f1 tail_b.2752
tail_b.2751 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f0 %f4
	add.s	%f1 %f0 %f0
	div.s	%f0 %f4 %f7
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f4 l.59
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f8 l.83
	mul.s	%f7 %f8 %f8
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.84
	mul.s	%f7 %f8 %f8
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.85
	mul.s	%f7 %f0 %f9
	mul.s	%f6 %f8 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f8 l.86
	mul.s	%f7 %f8 %f8
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f6 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2753
tail_b.2752 :
	ilw.s	%r0 %f7 l.56
	div.s	%f0 %f7 %f9
	ilw.s	%r0 %f1 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f4
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f8
	mul.s	%f6 %f4 %f0
	add.s	%f0 %f8 %f4
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f0 %f4
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f8
	mul.s	%f6 %f4 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f9 %f4 %f4
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f4 %f4
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f6 %f4 %f4
	add.s	%f4 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
tail_b.2753 :
	ilw.s	%r0 %f1 l.88
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.75
	div.s	%f1 %f0 %f1
branching_b.1731 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f4
	ilw.s	%r0 %f6 l.90
	ilw.s	%r0 %f1 l.62
	sub.s	%f5 %f1 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f6 %f5
	sub.s	%f4 %f1 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f5 %f0
	fbge	%f0 %f3 tail_b.2756
tail_b.2755 :
	addi	%r0 %r1 1
	j	branching_b.1732
tail_b.2756 :
	addi	%r0 %r1 0
branching_b.1732 :
	beq	%r1 %r0 tail_b.2757
tail_b.2758 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2759
tail_b.2757 :
tail_b.2759 :
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.91
	div.s	%f1 %f0 %f0
	sw.s	%r0 %f0 588
branching_b.1733 :
	lw	%r0 %r1 536
	sw	%r26 %r2 -144
	sw	%r26 %r4 -148
	sw	%r26 %r3 -152
	sw.s	%r26 %f3 -156
	sw	%r26 %r6 -160
	sw	%r26 %r7 -164
	sw	%r26 %r5 -168
	sw.s	%r26 %f2 -172
	sw	%r26 %r9 -176
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -180
	addi	%r26 %r26 -184
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 184
	lw	%r26 %r28 -180
	lw	%r26 %r2 -144
	lw	%r26 %r4 -148
	lw	%r26 %r3 -152
	lw.s	%r26 %f3 -156
	lw	%r26 %r6 -160
	lw	%r26 %r7 -164
	lw	%r26 %r5 -168
	lw.s	%r26 %f2 -172
	lw	%r26 %r9 -176
	beq	%r1 %r0 branching_b.1734
tail_b.2766 :
	j	tail_b.2841
branching_b.1734 :
	lw.s	%r0 %f0 568
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f4
	lw.s	%r0 %f1 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f1
	lw.s	%r0 %f4 576
	lw.s	%r0 %f0 320
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	fbge	%f3 %f0 tail_b.2762
tail_b.2761 :
	addi	%r0 %r1 1
	j	branching_b.1735
tail_b.2762 :
	addi	%r0 %r1 0
branching_b.1735 :
	beq	%r1 %r0 tail_b.2763
tail_b.2764 :
	j	tail_b.2765
tail_b.2763 :
	ilw.s	%r0 %f0 l.51
tail_b.2765 :
	mul.s	%f0 %f2 %f0
	lw	%r9 %r1 28
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
	j	tail_b.2841
branching_b.1701 :
	lw	%r9 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f1 572
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r0 %f1 576
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f1
	fbne	%f1 %f3 tail_b.2711
tail_b.2710 :
	addi	%r0 %r8 1
	j	branching_b.1702
tail_b.2711 :
	addi	%r0 %r8 0
branching_b.1702 :
	beq	%r8 %r0 branching_b.1703
tail_b.2714 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2715
branching_b.1703 :
	beq	%r1 %r0 tail_b.2712
tail_b.2713 :
	ilw.s	%r0 %f0 l.58
	div.s	%f1 %f0 %f0
	j	tail_b.2715
tail_b.2712 :
	ilw.s	%r0 %f0 l.56
	div.s	%f1 %f0 %f0
tail_b.2715 :
	lw.s	%r0 %f1 568
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 568
	lw.s	%r0 %f1 572
	mul.s	%f0 %f1 %f1
	sw.s	%r0 %f1 572
	lw.s	%r0 %f1 576
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1704
branching_b.1737 :
	beq	%r1 %r0 tail_b.2769
branching_b.1738 :
	ilw.s	%r0 %f0 l.70
	fbge	%f1 %f0 tail_b.2771
tail_b.2770 :
	addi	%r0 %r1 1
	j	branching_b.1739
tail_b.2771 :
	addi	%r0 %r1 0
	j	branching_b.1739
tail_b.2769 :
	addi	%r0 %r1 0
branching_b.1739 :
	beq	%r1 %r0 tail_b.2772
branching_b.1740 :
	lw	%r0 %r1 564
	slli	%r1 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r9 0
	lw	%r8 %r1 0
	lw	%r9 %r8 4
	addi	%r0 %r10 1
	beq	%r8 %r10 branching_b.1741
branching_b.1745 :
	addi	%r0 %r1 2
	beq	%r8 %r1 tail_b.2781
branching_b.1746 :
	lw.s	%r0 %f0 552
	lw	%r9 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw.s	%r0 %f0 556
	lw	%r9 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f8
	lw.s	%r0 %f0 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f6
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f9
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f2
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f7
	lw	%r9 %r1 12
	beq	%r1 %r0 tail_b.2782
tail_b.2783 :
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f8 %f5
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.69
	div.s	%f5 %f0 %f0
	add.s	%f0 %f9 %f0
	sw.s	%r0 %f0 568
	lw	%r9 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f9
	lw	%r9 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f9 %f0
	div.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 572
	lw	%r9 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	lw	%r9 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f8 %f1
	add.s	%f1 %f0 %f0
	div.s	%f5 %f0 %f0
	add.s	%f0 %f7 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1747
tail_b.2782 :
	sw.s	%r0 %f9 568
	sw.s	%r0 %f2 572
	sw.s	%r0 %f7 576
	j	branching_b.1747
tail_b.2781 :
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
	j	branching_b.1750
branching_b.1741 :
	lw	%r0 %r8 544
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 568
	sw.s	%r0 %f0 572
	sw.s	%r0 %f0 576
	addi	%r8 %r11 -1
	addi	%r8 %r8 -1
	slli	%r8 %r8 2
	add	%r1 %r8 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f3 tail_b.2774
tail_b.2773 :
	addi	%r0 %r1 1
	j	branching_b.1742
tail_b.2774 :
	addi	%r0 %r1 0
	j	branching_b.1742
tail_b.2772 :
	j	tail_b.2841
branching_b.1742 :
	beq	%r1 %r0 branching_b.1743
tail_b.2779 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2780
branching_b.1743 :
	fbge	%f3 %f0 tail_b.2776
tail_b.2775 :
	addi	%r0 %r1 1
	j	branching_b.1744
tail_b.2776 :
	addi	%r0 %r1 0
branching_b.1744 :
	beq	%r1 %r0 tail_b.2777
tail_b.2778 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2780
tail_b.2777 :
	ilw.s	%r0 %f0 l.58
tail_b.2780 :
	neg.s	%f0 %f0
	slli	%r11 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1750 :
	lw	%r9 %r8 0
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
	beq	%r8 %r10 branching_b.1751
branching_b.1756 :
	addi	%r0 %r1 2
	beq	%r8 %r1 tail_b.2799
branching_b.1757 :
	addi	%r0 %r1 3
	beq	%r8 %r1 tail_b.2800
branching_b.1758 :
	beq	%r8 %r4 branching_b.1759
tail_b.2834 :
	j	branching_b.1779
branching_b.1759 :
	lw.s	%r0 %f1 552
	lw	%r9 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r9 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f5
	lw.s	%r0 %f1 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r9 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f0
	mul.s	%f5 %f5 %f2
	mul.s	%f0 %f0 %f1
	add.s	%f1 %f2 %f2
	fbge	%f5 %f3 tail_b.2802
tail_b.2801 :
	neg.s	%f5 %f1
	j	branching_b.1760
tail_b.2802 :
	mov.s	%f5 %f1
	j	branching_b.1760
tail_b.2800 :
	lw.s	%r0 %f1 552
	lw	%r9 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f2
	lw.s	%r0 %f1 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mul.s	%f2 %f2 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.73
	div.s	%f1 %f0 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f1 %f0
	sw	%r26 %r2 -180
	sw	%r26 %r4 -184
	sw	%r26 %r3 -188
	sw.s	%r26 %f3 -192
	sw	%r26 %r6 -196
	sw	%r26 %r7 -200
	sw	%r26 %r5 -204
	sw.s	%r26 %f4 -208
	sw	%r26 %r9 -212
	sw	%r26 %r28 -216
	addi	%r26 %r26 -220
	jal	cos.0
	addi	%r26 %r26 220
	lw	%r26 %r28 -216
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f0 l.52
	mul.s	%f0 %f1 %f2
	sw.s	%r0 %f2 584
	ilw.s	%r0 %f2 l.56
	sub.s	%f1 %f2 %f1
	mul.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r2 -180
	lw	%r26 %r4 -184
	lw	%r26 %r3 -188
	lw.s	%r26 %f3 -192
	lw	%r26 %r6 -196
	lw	%r26 %r7 -200
	lw	%r26 %r5 -204
	lw.s	%r26 %f4 -208
	lw	%r26 %r9 -212
	j	branching_b.1779
tail_b.2799 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.74
	mul.s	%f1 %f0 %f0
	sw	%r26 %r2 -216
	sw	%r26 %r4 -220
	sw	%r26 %r3 -224
	sw.s	%r26 %f3 -228
	sw	%r26 %r6 -232
	sw	%r26 %r7 -236
	sw	%r26 %r5 -240
	sw.s	%r26 %f4 -244
	sw	%r26 %r9 -248
	sw	%r26 %r28 -252
	addi	%r26 %r26 -256
	jal	sin.0
	addi	%r26 %r26 256
	lw	%r26 %r28 -252
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f2 l.52
	mul.s	%f0 %f2 %f1
	sw.s	%r0 %f1 580
	ilw.s	%r0 %f1 l.56
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f2 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r2 -216
	lw	%r26 %r4 -220
	lw	%r26 %r3 -224
	lw.s	%r26 %f3 -228
	lw	%r26 %r6 -232
	lw	%r26 %r7 -236
	lw	%r26 %r5 -240
	lw.s	%r26 %f4 -244
	lw	%r26 %r9 -248
	j	branching_b.1779
branching_b.1751 :
	lw.s	%r0 %f1 552
	lw	%r9 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f2
	ilw.s	%r0 %f6 l.71
	mul.s	%f6 %f2 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f1 l.72
	mul.s	%f1 %f0 %f0
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.73
	fbge	%f0 %f2 tail_b.2791
tail_b.2790 :
	addi	%r0 %r8 1
	j	branching_b.1752
tail_b.2791 :
	addi	%r0 %r8 0
branching_b.1752 :
	lw.s	%r0 %f0 560
	lw	%r9 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f5 0
	sub.s	%f5 %f0 %f5
	mul.s	%f6 %f5 %f0
	floor.w.s	%f0 %f0
	mul.s	%f1 %f0 %f0
	sub.s	%f0 %f5 %f0
	fbge	%f0 %f2 tail_b.2793
tail_b.2792 :
	addi	%r0 %r1 1
	j	branching_b.1753
tail_b.2793 :
	addi	%r0 %r1 0
branching_b.1753 :
	beq	%r8 %r0 branching_b.1754
branching_b.1755 :
	beq	%r1 %r0 tail_b.2796
tail_b.2797 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2798
tail_b.2796 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2798
branching_b.1754 :
	beq	%r1 %r0 tail_b.2794
tail_b.2795 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2798
tail_b.2794 :
	ilw.s	%r0 %f0 l.52
tail_b.2798 :
	sw.s	%r0 %f0 584
	j	branching_b.1779
branching_b.1760 :
	ilw.s	%r0 %f6 l.76
	fbge	%f1 %f6 tail_b.2804
tail_b.2803 :
	addi	%r0 %r1 1
	j	branching_b.1761
tail_b.2804 :
	addi	%r0 %r1 0
branching_b.1761 :
	beq	%r1 %r0 branching_b.1762
tail_b.2814 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.1768
branching_b.1762 :
	div.s	%f5 %f0 %f0
	fbge	%f0 %f3 tail_b.2806
tail_b.2805 :
	neg.s	%f0 %f7
	j	branching_b.1763
tail_b.2806 :
	mov.s	%f0 %f7
branching_b.1763 :
	fbg	%f3 %f7 branching_b.1766
branching_b.1764 :
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1765
tail_b.2807 :
	ilw.s	%r0 %f8 l.56
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f7 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f7 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2813
branching_b.1765 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2809
tail_b.2808 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f7 %f0
	add.s	%f1 %f7 %f5
	div.s	%f5 %f0 %f8
	ilw.s	%r0 %f9 l.59
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f8 %f0 %f5
	mul.s	%f7 %f10 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f8 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f8 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.86
	mul.s	%f8 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2813
tail_b.2809 :
	ilw.s	%r0 %f0 l.56
	div.s	%f7 %f0 %f9
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f7 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f9 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f9 %f1 %f1
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f8
	mul.s	%f10 %f1 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.86
	mul.s	%f9 %f0 %f1
	mul.s	%f10 %f8 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f9 %f1 %f1
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.2813
branching_b.1766 :
	neg.s	%f7 %f7
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1767
tail_b.2810 :
	ilw.s	%r0 %f8 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f7 %f0 %f1
	mul.s	%f9 %f5 %f0
	add.s	%f0 %f1 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f1
	mul.s	%f9 %f5 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f7 %f1 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f7 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f1
	mul.s	%f9 %f5 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2813
branching_b.1767 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2812
tail_b.2811 :
	ilw.s	%r0 %f0 l.56
	sub.s	%f0 %f7 %f1
	add.s	%f0 %f7 %f0
	div.s	%f0 %f1 %f1
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f5 l.59
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f7
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f9
	mul.s	%f10 %f7 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f7 l.84
	mul.s	%f1 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f10 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.86
	mul.s	%f1 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f10 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.2813
tail_b.2812 :
	ilw.s	%r0 %f5 l.56
	div.s	%f7 %f5 %f9
	ilw.s	%r0 %f7 l.89
	neg.s	%f9 %f0
	mul.s	%f9 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f9 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f9 %f0 %f1
	mul.s	%f8 %f10 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f9 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f9 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f5 %f0 %f0
tail_b.2813 :
	ilw.s	%r0 %f1 l.88
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.75
	div.s	%f1 %f0 %f0
branching_b.1768 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f5
	lw.s	%r0 %f1 556
	lw	%r9 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw	%r9 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	fbge	%f2 %f3 tail_b.2816
tail_b.2815 :
	neg.s	%f2 %f1
	j	branching_b.1769
tail_b.2816 :
	mov.s	%f2 %f1
branching_b.1769 :
	fbge	%f1 %f6 tail_b.2818
tail_b.2817 :
	addi	%r0 %r1 1
	j	branching_b.1770
tail_b.2818 :
	addi	%r0 %r1 0
branching_b.1770 :
	beq	%r1 %r0 branching_b.1771
tail_b.2828 :
	ilw.s	%r0 %f1 l.78
	j	branching_b.1777
branching_b.1771 :
	div.s	%f2 %f0 %f0
	fbge	%f0 %f3 tail_b.2820
tail_b.2819 :
	neg.s	%f0 %f2
	j	branching_b.1772
tail_b.2820 :
	mov.s	%f0 %f2
branching_b.1772 :
	fbg	%f3 %f2 branching_b.1775
branching_b.1773 :
	ilw.s	%r0 %f0 l.80
	fbge	%f2 %f0 branching_b.1774
tail_b.2821 :
	ilw.s	%r0 %f7 l.56
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f6
	ilw.s	%r0 %f0 l.82
	mul.s	%f2 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f2 %f0 %f8
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f8 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f2 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f2 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f2 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f2 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2827
branching_b.1774 :
	ilw.s	%r0 %f0 l.81
	fbge	%f2 %f0 tail_b.2823
tail_b.2822 :
	ilw.s	%r0 %f7 l.56
	sub.s	%f7 %f2 %f1
	add.s	%f7 %f2 %f0
	div.s	%f0 %f1 %f1
	ilw.s	%r0 %f6 l.59
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f2
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.84
	mul.s	%f1 %f2 %f2
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f8
	mul.s	%f9 %f2 %f0
	add.s	%f0 %f8 %f2
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f2 %f2
	add.s	%f2 %f0 %f8
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f2
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.2827
tail_b.2823 :
	ilw.s	%r0 %f0 l.56
	div.s	%f2 %f0 %f8
	ilw.s	%r0 %f2 l.58
	ilw.s	%r0 %f7 l.89
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.82
	mul.s	%f8 %f1 %f1
	ilw.s	%r0 %f6 l.83
	mul.s	%f8 %f6 %f6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f1
	ilw.s	%r0 %f6 l.84
	mul.s	%f8 %f6 %f6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f6
	ilw.s	%r0 %f1 l.85
	mul.s	%f8 %f1 %f1
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f1 %f1
	ilw.s	%r0 %f6 l.86
	mul.s	%f8 %f6 %f6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f6 %f6
	ilw.s	%r0 %f1 l.87
	mul.s	%f8 %f1 %f1
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f1 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f2 %f0 %f0
	j	tail_b.2827
branching_b.1775 :
	neg.s	%f2 %f7
	ilw.s	%r0 %f0 l.80
	fbge	%f7 %f0 branching_b.1776
tail_b.2824 :
	ilw.s	%r0 %f1 l.58
	neg.s	%f7 %f0
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f7 %f0 %f0
	ilw.s	%r0 %f2 l.83
	mul.s	%f7 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f6
	ilw.s	%r0 %f0 l.84
	mul.s	%f7 %f0 %f2
	mul.s	%f8 %f6 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.85
	mul.s	%f7 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.86
	mul.s	%f7 %f2 %f2
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.87
	mul.s	%f7 %f0 %f6
	mul.s	%f8 %f2 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	tail_b.2827
branching_b.1776 :
	ilw.s	%r0 %f0 l.81
	fbge	%f7 %f0 tail_b.2826
tail_b.2825 :
	ilw.s	%r0 %f1 l.56
	sub.s	%f1 %f7 %f0
	add.s	%f1 %f7 %f1
	div.s	%f1 %f0 %f2
	ilw.s	%r0 %f6 l.58
	ilw.s	%r0 %f7 l.59
	neg.s	%f2 %f0
	mul.s	%f2 %f0 %f8
	ilw.s	%r0 %f0 l.82
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f2 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f2 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.85
	mul.s	%f2 %f0 %f1
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f1 %f9
	ilw.s	%r0 %f0 l.86
	mul.s	%f2 %f0 %f1
	mul.s	%f8 %f9 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f2 %f0 %f9
	mul.s	%f8 %f1 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f2 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f6 %f0 %f0
	j	tail_b.2827
tail_b.2826 :
	ilw.s	%r0 %f9 l.56
	div.s	%f7 %f9 %f8
	ilw.s	%r0 %f2 l.89
	neg.s	%f8 %f0
	mul.s	%f8 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f8 %f0 %f6
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f8 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f8 %f0 %f6
	mul.s	%f7 %f1 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f8 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f9 %f0 %f0
tail_b.2827 :
	ilw.s	%r0 %f1 l.88
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.75
	div.s	%f1 %f0 %f1
branching_b.1777 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f6
	ilw.s	%r0 %f1 l.90
	ilw.s	%r0 %f2 l.62
	sub.s	%f5 %f2 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	sub.s	%f6 %f2 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f3 tail_b.2830
tail_b.2829 :
	addi	%r0 %r1 1
	j	branching_b.1778
tail_b.2830 :
	addi	%r0 %r1 0
branching_b.1778 :
	beq	%r1 %r0 tail_b.2831
tail_b.2832 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2833
tail_b.2831 :
tail_b.2833 :
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.91
	div.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
branching_b.1779 :
	lw	%r0 %r1 536
	sw	%r26 %r2 -252
	sw	%r26 %r4 -256
	sw	%r26 %r3 -260
	sw.s	%r26 %f3 -264
	sw	%r26 %r6 -268
	sw	%r26 %r7 -272
	sw	%r26 %r5 -276
	sw.s	%r26 %f4 -280
	sw	%r26 %r9 -284
	mov	%r1 %r2
	mov	%r0 %r1
	sw	%r26 %r28 -288
	addi	%r26 %r26 -292
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 292
	lw	%r26 %r28 -288
	lw	%r26 %r2 -252
	lw	%r26 %r4 -256
	lw	%r26 %r3 -260
	lw.s	%r26 %f3 -264
	lw	%r26 %r6 -268
	lw	%r26 %r7 -272
	lw	%r26 %r5 -276
	lw.s	%r26 %f4 -280
	lw	%r26 %r9 -284
	beq	%r1 %r0 branching_b.1780
tail_b.2840 :
	j	tail_b.2841
branching_b.1780 :
	lw.s	%r0 %f1 568
	lw.s	%r0 %f0 312
	mul.s	%f0 %f1 %f1
	lw.s	%r0 %f2 572
	lw.s	%r0 %f0 316
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	lw.s	%r0 %f2 320
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	fbge	%f3 %f0 tail_b.2836
tail_b.2835 :
	addi	%r0 %r1 1
	j	branching_b.1781
tail_b.2836 :
	addi	%r0 %r1 0
branching_b.1781 :
	beq	%r1 %r0 tail_b.2837
tail_b.2838 :
	j	tail_b.2839
tail_b.2837 :
	ilw.s	%r0 %f0 l.51
tail_b.2839 :
	mul.s	%f0 %f4 %f1
	lw	%r9 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f2
	lw.s	%r0 %f0 592
	lw.s	%r0 %f1 580
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f0 596
	lw.s	%r0 %f1 584
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	lw.s	%r0 %f0 588
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	j	tail_b.2841
branching_b.1747 :
	lw	%r9 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f1
	lw.s	%r0 %f0 572
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f3 tail_b.2785
tail_b.2784 :
	addi	%r0 %r8 1
	j	branching_b.1748
tail_b.2785 :
	addi	%r0 %r8 0
branching_b.1748 :
	beq	%r8 %r0 branching_b.1749
tail_b.2788 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.2789
branching_b.1749 :
	beq	%r1 %r0 tail_b.2786
tail_b.2787 :
	ilw.s	%r0 %f1 l.58
	div.s	%f0 %f1 %f1
	j	tail_b.2789
tail_b.2786 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f1
tail_b.2789 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1750
postloop_b.56 :
tail_b.2843 :
	lw	%r2 %r1 20
	slli	%r3 %r5 2
	add	%r1 %r5 %r1
	lw	%r1 %r5 0
	lw.s	%r0 %f0 592
	mov	%r5 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 596
	addi	%r5 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 600
	addi	%r5 %r1 8
	sw.s	%r1 %f0 0
	j	tail_b.2844
postloop_b.57 :
return_point.19 :
	retl
pretrace_pixels.0 :
	mov	%r1 %r5
	mov	%r3 %r1
	mov.s	%f2 %f4
	mov.s	%f1 %f3
	mov.s	%f0 %f2
preloop_b.58 :
	mov	%r2 %r3
	mov	%r1 %r7
	addi	%r0 %r6 696
	addi	%r0 %r4 0
pretrace_pixels_loop.0 :
	ble	%r0 %r3 branching_b.1783
tail_b.2952 :
	j	postloop_b.60
branching_b.1783 :
	lw.s	%r0 %f0 632
	lw	%r0 %r1 624
	sub	%r3 %r1 %r1
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
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f6 l.51
	fbne	%f0 %f6 tail_b.2848
tail_b.2847 :
	addi	%r0 %r1 1
	j	branching_b.1784
tail_b.2848 :
	addi	%r0 %r1 0
branching_b.1784 :
	beq	%r1 %r0 tail_b.2849
tail_b.2850 :
	ilw.s	%r0 %f1 l.56
	j	preloop_b.59
tail_b.2849 :
	ilw.s	%r0 %f1 l.56
	div.s	%f0 %f1 %f1
preloop_b.59 :
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
	ilw.s	%r0 %f5 l.56
	slli	%r3 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r11 0
	mov	%r4 %r13
	mov.s	%f5 %f7
	mov.s	%f6 %f8
	addi	%r0 %r8 552
	addi	%r0 %r12 4
trace_ray_loop.1 :
	ble	%r13 %r12 branching_b.1786
tail_b.2943 :
	j	postloop_b.58
branching_b.1786 :
	lw	%r11 %r9 8
	ilw.s	%r0 %f0 l.53
	sw.s	%r0 %f0 548
	lw	%r0 %r2 536
	sw	%r26 %r5 0
	sw.s	%r26 %f2 -4
	sw.s	%r26 %f3 -8
	sw.s	%r26 %f4 -12
	sw	%r26 %r6 -16
	sw	%r26 %r4 -20
	sw	%r26 %r3 -24
	sw	%r26 %r7 -28
	sw.s	%r26 %f6 -32
	sw.s	%r26 %f5 -36
	sw	%r26 %r11 -40
	sw	%r26 %r8 -44
	sw	%r26 %r12 -48
	sw	%r26 %r13 -52
	sw.s	%r26 %f7 -56
	sw.s	%r26 %f8 -60
	sw	%r26 %r9 -64
	mov	%r6 %r3
	mov	%r0 %r1
	sw	%r26 %r28 -68
	addi	%r26 %r26 -72
	jal	trace_or_matrix.0
	addi	%r26 %r26 72
	lw	%r26 %r28 -68
	lw.s	%r0 %f1 548
	ilw.s	%r0 %f0 l.68
	lw	%r26 %r5 0
	lw.s	%r26 %f2 -4
	lw.s	%r26 %f3 -8
	lw.s	%r26 %f4 -12
	lw	%r26 %r6 -16
	lw	%r26 %r4 -20
	lw	%r26 %r3 -24
	lw	%r26 %r7 -28
	lw.s	%r26 %f6 -32
	lw.s	%r26 %f5 -36
	lw	%r26 %r11 -40
	lw	%r26 %r8 -44
	lw	%r26 %r12 -48
	lw	%r26 %r13 -52
	lw.s	%r26 %f7 -56
	lw.s	%r26 %f8 -60
	lw	%r26 %r9 -64
	fbge	%f0 %f1 tail_b.2852
tail_b.2851 :
	addi	%r0 %r1 1
	j	branching_b.1787
tail_b.2852 :
	addi	%r0 %r1 0
branching_b.1787 :
	beq	%r1 %r0 tail_b.2853
branching_b.1788 :
	ilw.s	%r0 %f0 l.70
	fbge	%f1 %f0 tail_b.2855
tail_b.2854 :
	addi	%r0 %r1 1
	j	branching_b.1789
tail_b.2855 :
	addi	%r0 %r1 0
	j	branching_b.1789
tail_b.2853 :
	addi	%r0 %r1 0
branching_b.1789 :
	beq	%r1 %r0 branching_b.1790
branching_b.1793 :
	lw	%r0 %r2 564
	slli	%r2 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r14 0
	lw	%r14 %r10 8
	lw	%r14 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f7 %f0 %f9
	lw	%r14 %r16 4
	addi	%r0 %r15 1
	beq	%r16 %r15 branching_b.1794
branching_b.1798 :
	addi	%r0 %r1 2
	beq	%r16 %r1 tail_b.2869
branching_b.1799 :
	lw.s	%r0 %f1 552
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw.s	%r0 %f1 556
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f10 0
	sub.s	%f10 %f1 %f11
	lw.s	%r0 %f1 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f10 0
	sub.s	%f10 %f1 %f10
	lw	%r14 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f13
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f11 %f15
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f10 %f14
	lw	%r14 %r1 12
	beq	%r1 %r0 tail_b.2870
tail_b.2871 :
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f11 %f12
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f10 %f1
	add.s	%f1 %f12 %f1
	ilw.s	%r0 %f16 l.69
	div.s	%f16 %f1 %f1
	add.s	%f1 %f13 %f1
	sw.s	%r0 %f1 568
	lw	%r14 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f12
	lw	%r14 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f10 %f1
	add.s	%f1 %f12 %f1
	div.s	%f16 %f1 %f1
	add.s	%f1 %f15 %f1
	sw.s	%r0 %f1 572
	lw	%r14 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r14 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f11 %f0
	add.s	%f0 %f1 %f0
	div.s	%f16 %f0 %f0
	add.s	%f0 %f14 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1800
tail_b.2870 :
	sw.s	%r0 %f13 568
	sw.s	%r0 %f15 572
	sw.s	%r0 %f14 576
	j	branching_b.1800
tail_b.2869 :
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
	j	branching_b.1803
branching_b.1794 :
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
	fbne	%f0 %f6 tail_b.2862
tail_b.2861 :
	addi	%r0 %r1 1
	j	branching_b.1795
tail_b.2862 :
	addi	%r0 %r1 0
	j	branching_b.1795
branching_b.1790 :
	addi	%r0 %r1 -1
	slli	%r13 %r2 2
	add	%r9 %r2 %r2
	sw	%r2 %r1 0
	bne	%r13 %r0 branching_b.1791
tail_b.2860 :
	j	postloop_b.58
branching_b.1791 :
	lw.s	%r0 %f0 696
	lw.s	%r0 %f1 312
	mul.s	%f1 %f0 %f5
	lw.s	%r0 %f1 700
	lw.s	%r0 %f0 316
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f1
	lw.s	%r0 %f0 704
	lw.s	%r0 %f5 320
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f1
	fbge	%f6 %f1 tail_b.2857
tail_b.2856 :
	addi	%r0 %r1 1
	j	branching_b.1792
tail_b.2857 :
	addi	%r0 %r1 0
branching_b.1792 :
	beq	%r1 %r0 tail_b.2858
tail_b.2859 :
	mul.s	%f1 %f1 %f0
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f0 %f1
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
	j	postloop_b.58
tail_b.2858 :
	j	postloop_b.58
branching_b.1795 :
	beq	%r1 %r0 branching_b.1796
tail_b.2867 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2868
branching_b.1796 :
	fbge	%f6 %f0 tail_b.2864
tail_b.2863 :
	addi	%r0 %r1 1
	j	branching_b.1797
tail_b.2864 :
	addi	%r0 %r1 0
branching_b.1797 :
	beq	%r1 %r0 tail_b.2865
tail_b.2866 :
	ilw.s	%r0 %f0 l.56
	j	tail_b.2868
tail_b.2865 :
	ilw.s	%r0 %f0 l.58
tail_b.2868 :
	neg.s	%f0 %f0
	slli	%r16 %r1 2
	addi	%r1 %r1 568
	sw.s	%r1 %f0 0
branching_b.1803 :
	lw.s	%r0 %f0 552
	sw.s	%r0 %f0 636
	lw.s	%r0 %f0 556
	sw.s	%r0 %f0 640
	lw.s	%r0 %f0 560
	sw.s	%r0 %f0 644
	lw	%r14 %r16 0
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
	beq	%r16 %r15 branching_b.1804
branching_b.1809 :
	addi	%r0 %r1 2
	beq	%r16 %r1 tail_b.2887
branching_b.1810 :
	addi	%r0 %r1 3
	beq	%r16 %r1 tail_b.2888
branching_b.1811 :
	beq	%r16 %r12 branching_b.1812
tail_b.2922 :
	j	branching_b.1832
branching_b.1812 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r14 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f10
	lw.s	%r0 %f0 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r14 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f1
	mul.s	%f10 %f10 %f11
	mul.s	%f1 %f1 %f0
	add.s	%f0 %f11 %f11
	fbge	%f10 %f6 tail_b.2890
tail_b.2889 :
	neg.s	%f10 %f0
	j	branching_b.1813
tail_b.2890 :
	mov.s	%f10 %f0
	j	branching_b.1813
tail_b.2888 :
	lw.s	%r0 %f0 552
	lw	%r14 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw.s	%r0 %f0 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f10 0
	sub.s	%f10 %f0 %f10
	mul.s	%f1 %f1 %f0
	mul.s	%f10 %f10 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.73
	div.s	%f0 %f1 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.75
	mul.s	%f0 %f1 %f0
	sw	%r26 %r5 -68
	sw.s	%r26 %f2 -72
	sw.s	%r26 %f3 -76
	sw.s	%r26 %f4 -80
	sw	%r26 %r6 -84
	sw	%r26 %r4 -88
	sw	%r26 %r3 -92
	sw	%r26 %r7 -96
	sw.s	%r26 %f6 -100
	sw.s	%r26 %f5 -104
	sw	%r26 %r11 -108
	sw	%r26 %r8 -112
	sw	%r26 %r12 -116
	sw	%r26 %r13 -120
	sw.s	%r26 %f7 -124
	sw.s	%r26 %f8 -128
	sw	%r26 %r9 -132
	sw	%r26 %r2 -136
	sw	%r26 %r14 -140
	sw	%r26 %r10 -144
	sw.s	%r26 %f9 -148
	sw	%r26 %r28 -152
	addi	%r26 %r26 -156
	jal	cos.0
	addi	%r26 %r26 156
	lw	%r26 %r28 -152
	mul.s	%f0 %f0 %f0
	ilw.s	%r0 %f10 l.52
	mul.s	%f10 %f0 %f1
	sw.s	%r0 %f1 584
	lw.s	%r26 %f5 -104
	sub.s	%f0 %f5 %f0
	mul.s	%f10 %f0 %f0
	sw.s	%r0 %f0 588
	lw	%r26 %r5 -68
	lw.s	%r26 %f2 -72
	lw.s	%r26 %f3 -76
	lw.s	%r26 %f4 -80
	lw	%r26 %r6 -84
	lw	%r26 %r4 -88
	lw	%r26 %r3 -92
	lw	%r26 %r7 -96
	lw.s	%r26 %f6 -100
	lw	%r26 %r11 -108
	lw	%r26 %r8 -112
	lw	%r26 %r12 -116
	lw	%r26 %r13 -120
	lw.s	%r26 %f7 -124
	lw.s	%r26 %f8 -128
	lw	%r26 %r9 -132
	lw	%r26 %r2 -136
	lw	%r26 %r14 -140
	lw	%r26 %r10 -144
	lw.s	%r26 %f9 -148
	j	branching_b.1832
tail_b.2887 :
	lw.s	%r0 %f0 556
	ilw.s	%r0 %f1 l.74
	mul.s	%f1 %f0 %f0
	sw	%r26 %r5 -152
	sw.s	%r26 %f2 -156
	sw.s	%r26 %f3 -160
	sw.s	%r26 %f4 -164
	sw	%r26 %r6 -168
	sw	%r26 %r4 -172
	sw	%r26 %r3 -176
	sw	%r26 %r7 -180
	sw.s	%r26 %f6 -184
	sw.s	%r26 %f5 -188
	sw	%r26 %r11 -192
	sw	%r26 %r8 -196
	sw	%r26 %r12 -200
	sw	%r26 %r13 -204
	sw.s	%r26 %f7 -208
	sw.s	%r26 %f8 -212
	sw	%r26 %r9 -216
	sw	%r26 %r2 -220
	sw	%r26 %r14 -224
	sw	%r26 %r10 -228
	sw.s	%r26 %f9 -232
	sw	%r26 %r28 -236
	addi	%r26 %r26 -240
	jal	sin.0
	addi	%r26 %r26 240
	lw	%r26 %r28 -236
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f10 l.52
	mul.s	%f1 %f10 %f0
	sw.s	%r0 %f0 580
	lw.s	%r26 %f5 -188
	sub.s	%f1 %f5 %f0
	mul.s	%f0 %f10 %f0
	sw.s	%r0 %f0 584
	lw	%r26 %r5 -152
	lw.s	%r26 %f2 -156
	lw.s	%r26 %f3 -160
	lw.s	%r26 %f4 -164
	lw	%r26 %r6 -168
	lw	%r26 %r4 -172
	lw	%r26 %r3 -176
	lw	%r26 %r7 -180
	lw.s	%r26 %f6 -184
	lw	%r26 %r11 -192
	lw	%r26 %r8 -196
	lw	%r26 %r12 -200
	lw	%r26 %r13 -204
	lw.s	%r26 %f7 -208
	lw.s	%r26 %f8 -212
	lw	%r26 %r9 -216
	lw	%r26 %r2 -220
	lw	%r26 %r14 -224
	lw	%r26 %r10 -228
	lw.s	%r26 %f9 -232
	j	branching_b.1832
branching_b.1804 :
	lw.s	%r0 %f1 552
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f11 l.71
	mul.s	%f11 %f1 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f10 l.72
	mul.s	%f10 %f0 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f12 l.73
	fbge	%f0 %f12 tail_b.2879
tail_b.2878 :
	addi	%r0 %r15 1
	j	branching_b.1805
tail_b.2879 :
	addi	%r0 %r15 0
branching_b.1805 :
	lw.s	%r0 %f1 560
	lw	%r14 %r1 20
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	mul.s	%f11 %f1 %f0
	floor.w.s	%f0 %f0
	mul.s	%f10 %f0 %f0
	sub.s	%f0 %f1 %f0
	fbge	%f0 %f12 tail_b.2881
tail_b.2880 :
	addi	%r0 %r1 1
	j	branching_b.1806
tail_b.2881 :
	addi	%r0 %r1 0
branching_b.1806 :
	beq	%r15 %r0 branching_b.1807
branching_b.1808 :
	beq	%r1 %r0 tail_b.2884
tail_b.2885 :
	ilw.s	%r0 %f0 l.52
	j	tail_b.2886
tail_b.2884 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2886
branching_b.1807 :
	beq	%r1 %r0 tail_b.2882
tail_b.2883 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2886
tail_b.2882 :
	ilw.s	%r0 %f0 l.52
tail_b.2886 :
	sw.s	%r0 %f0 584
	j	branching_b.1832
branching_b.1813 :
	ilw.s	%r0 %f12 l.76
	fbge	%f0 %f12 tail_b.2892
tail_b.2891 :
	addi	%r0 %r1 1
	j	branching_b.1814
tail_b.2892 :
	addi	%r0 %r1 0
branching_b.1814 :
	beq	%r1 %r0 branching_b.1815
tail_b.2902 :
	ilw.s	%r0 %f1 l.78
	j	branching_b.1821
branching_b.1815 :
	div.s	%f10 %f1 %f14
	fbge	%f14 %f6 tail_b.2894
tail_b.2893 :
	neg.s	%f14 %f14
	j	branching_b.1816
tail_b.2894 :
branching_b.1816 :
	fbg	%f6 %f14 branching_b.1819
branching_b.1817 :
	ilw.s	%r0 %f0 l.80
	fbge	%f14 %f0 branching_b.1818
tail_b.2895 :
	neg.s	%f14 %f0
	mul.s	%f14 %f0 %f13
	ilw.s	%r0 %f0 l.82
	mul.s	%f14 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f14 %f0 %f0
	mul.s	%f13 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f14 %f0 %f0
	mul.s	%f13 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f14 %f1 %f1
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f1 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f14 %f0 %f1
	mul.s	%f13 %f10 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f14 %f0 %f0
	mul.s	%f13 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f14 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2901
branching_b.1818 :
	ilw.s	%r0 %f0 l.81
	fbge	%f14 %f0 tail_b.2897
tail_b.2896 :
	sub.s	%f5 %f14 %f0
	add.s	%f5 %f14 %f1
	div.s	%f1 %f0 %f13
	ilw.s	%r0 %f0 l.59
	neg.s	%f13 %f1
	mul.s	%f13 %f1 %f14
	ilw.s	%r0 %f1 l.82
	mul.s	%f13 %f1 %f1
	ilw.s	%r0 %f10 l.83
	mul.s	%f13 %f10 %f10
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f10 %f1
	ilw.s	%r0 %f10 l.84
	mul.s	%f13 %f10 %f10
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f10 %f10
	ilw.s	%r0 %f1 l.85
	mul.s	%f13 %f1 %f1
	mul.s	%f14 %f10 %f10
	add.s	%f10 %f1 %f15
	ilw.s	%r0 %f1 l.86
	mul.s	%f13 %f1 %f10
	mul.s	%f14 %f15 %f1
	add.s	%f1 %f10 %f1
	ilw.s	%r0 %f10 l.87
	mul.s	%f13 %f10 %f10
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f10 %f1
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f13 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2901
tail_b.2897 :
	div.s	%f14 %f5 %f13
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f14 l.89
	neg.s	%f13 %f0
	mul.s	%f13 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f13 %f0 %f15
	ilw.s	%r0 %f0 l.83
	mul.s	%f13 %f0 %f16
	mul.s	%f10 %f15 %f0
	add.s	%f0 %f16 %f15
	ilw.s	%r0 %f0 l.84
	mul.s	%f13 %f0 %f16
	mul.s	%f10 %f15 %f0
	add.s	%f0 %f16 %f0
	ilw.s	%r0 %f15 l.85
	mul.s	%f13 %f15 %f15
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f15 %f15
	ilw.s	%r0 %f0 l.86
	mul.s	%f13 %f0 %f0
	mul.s	%f10 %f15 %f15
	add.s	%f15 %f0 %f0
	ilw.s	%r0 %f15 l.87
	mul.s	%f13 %f15 %f15
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f15 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f13 %f0
	add.s	%f0 %f14 %f0
	mul.s	%f1 %f0 %f1
	j	tail_b.2901
branching_b.1819 :
	neg.s	%f14 %f0
	ilw.s	%r0 %f1 l.80
	fbge	%f0 %f1 branching_b.1820
tail_b.2898 :
	ilw.s	%r0 %f13 l.58
	neg.s	%f0 %f1
	mul.s	%f0 %f1 %f14
	ilw.s	%r0 %f1 l.82
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f10 l.83
	mul.s	%f0 %f10 %f10
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f10 %f10
	ilw.s	%r0 %f1 l.84
	mul.s	%f0 %f1 %f1
	mul.s	%f14 %f10 %f10
	add.s	%f10 %f1 %f1
	ilw.s	%r0 %f10 l.85
	mul.s	%f0 %f10 %f10
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f10 %f10
	ilw.s	%r0 %f1 l.86
	mul.s	%f0 %f1 %f1
	mul.s	%f14 %f10 %f10
	add.s	%f10 %f1 %f10
	ilw.s	%r0 %f1 l.87
	mul.s	%f0 %f1 %f1
	mul.s	%f14 %f10 %f10
	add.s	%f10 %f1 %f1
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f0 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f13 %f0 %f1
	j	tail_b.2901
branching_b.1820 :
	ilw.s	%r0 %f1 l.81
	fbge	%f0 %f1 tail_b.2900
tail_b.2899 :
	sub.s	%f5 %f0 %f1
	add.s	%f5 %f0 %f0
	div.s	%f0 %f1 %f15
	ilw.s	%r0 %f1 l.58
	ilw.s	%r0 %f14 l.59
	neg.s	%f15 %f0
	mul.s	%f15 %f0 %f13
	ilw.s	%r0 %f0 l.82
	mul.s	%f15 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f15 %f0 %f16
	mul.s	%f13 %f10 %f0
	add.s	%f0 %f16 %f0
	ilw.s	%r0 %f10 l.84
	mul.s	%f15 %f10 %f10
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f10 %f0
	ilw.s	%r0 %f10 l.85
	mul.s	%f15 %f10 %f10
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f15 %f0 %f0
	mul.s	%f13 %f10 %f10
	add.s	%f10 %f0 %f0
	ilw.s	%r0 %f10 l.87
	mul.s	%f15 %f10 %f10
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f15 %f0
	add.s	%f0 %f14 %f0
	mul.s	%f1 %f0 %f1
	j	tail_b.2901
tail_b.2900 :
	div.s	%f0 %f5 %f1
	ilw.s	%r0 %f13 l.89
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f14
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f0
	mul.s	%f14 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f14 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f0
	mul.s	%f14 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.86
	mul.s	%f1 %f0 %f0
	mul.s	%f14 %f10 %f10
	add.s	%f10 %f0 %f0
	ilw.s	%r0 %f10 l.87
	mul.s	%f1 %f10 %f10
	mul.s	%f14 %f0 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f14 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f13 %f0
	mul.s	%f5 %f0 %f1
tail_b.2901 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.75
	div.s	%f1 %f0 %f1
branching_b.1821 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f10
	lw.s	%r0 %f0 556
	lw	%r14 %r1 20
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r14 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	fbge	%f11 %f6 tail_b.2904
tail_b.2903 :
	neg.s	%f11 %f0
	j	branching_b.1822
tail_b.2904 :
	mov.s	%f11 %f0
branching_b.1822 :
	fbge	%f0 %f12 tail_b.2906
tail_b.2905 :
	addi	%r0 %r1 1
	j	branching_b.1823
tail_b.2906 :
	addi	%r0 %r1 0
branching_b.1823 :
	beq	%r1 %r0 branching_b.1824
tail_b.2916 :
	ilw.s	%r0 %f0 l.78
	j	branching_b.1830
branching_b.1824 :
	div.s	%f11 %f1 %f11
	fbge	%f11 %f6 tail_b.2908
tail_b.2907 :
	neg.s	%f11 %f11
	j	branching_b.1825
tail_b.2908 :
branching_b.1825 :
	fbg	%f6 %f11 branching_b.1828
branching_b.1826 :
	ilw.s	%r0 %f0 l.80
	fbge	%f11 %f0 branching_b.1827
tail_b.2909 :
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f12 l.83
	mul.s	%f11 %f12 %f12
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f12 %f0
	ilw.s	%r0 %f12 l.84
	mul.s	%f11 %f12 %f12
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f12 %f12
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f13
	mul.s	%f1 %f12 %f0
	add.s	%f0 %f13 %f12
	ilw.s	%r0 %f0 l.86
	mul.s	%f11 %f0 %f13
	mul.s	%f1 %f12 %f0
	add.s	%f0 %f13 %f12
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f13
	mul.s	%f1 %f12 %f0
	add.s	%f0 %f13 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2915
branching_b.1827 :
	ilw.s	%r0 %f0 l.81
	fbge	%f11 %f0 tail_b.2911
tail_b.2910 :
	sub.s	%f5 %f11 %f0
	add.s	%f5 %f11 %f1
	div.s	%f1 %f0 %f11
	ilw.s	%r0 %f12 l.59
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f14
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f13
	mul.s	%f14 %f1 %f0
	add.s	%f0 %f13 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f0
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f0
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f11 %f1 %f1
	mul.s	%f14 %f0 %f0
	add.s	%f0 %f1 %f13
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f1
	mul.s	%f14 %f13 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f14 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f5 %f0 %f1
	j	tail_b.2915
tail_b.2911 :
	div.s	%f11 %f5 %f0
	ilw.s	%r0 %f13 l.58
	ilw.s	%r0 %f12 l.89
	neg.s	%f0 %f1
	mul.s	%f0 %f1 %f14
	ilw.s	%r0 %f1 l.82
	mul.s	%f0 %f1 %f11
	ilw.s	%r0 %f1 l.83
	mul.s	%f0 %f1 %f1
	mul.s	%f14 %f11 %f11
	add.s	%f11 %f1 %f11
	ilw.s	%r0 %f1 l.84
	mul.s	%f0 %f1 %f1
	mul.s	%f14 %f11 %f11
	add.s	%f11 %f1 %f1
	ilw.s	%r0 %f11 l.85
	mul.s	%f0 %f11 %f11
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f11 %f1
	ilw.s	%r0 %f11 l.86
	mul.s	%f0 %f11 %f11
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f11 %f11
	ilw.s	%r0 %f1 l.87
	mul.s	%f0 %f1 %f1
	mul.s	%f14 %f11 %f11
	add.s	%f11 %f1 %f1
	mul.s	%f14 %f1 %f1
	add.s	%f1 %f0 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f13 %f0 %f1
	j	tail_b.2915
branching_b.1828 :
	neg.s	%f11 %f13
	ilw.s	%r0 %f0 l.80
	fbge	%f13 %f0 branching_b.1829
tail_b.2912 :
	ilw.s	%r0 %f12 l.58
	neg.s	%f13 %f0
	mul.s	%f13 %f0 %f11
	ilw.s	%r0 %f0 l.82
	mul.s	%f13 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f13 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f13 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f14
	ilw.s	%r0 %f0 l.85
	mul.s	%f13 %f0 %f1
	mul.s	%f11 %f14 %f0
	add.s	%f0 %f1 %f14
	ilw.s	%r0 %f0 l.86
	mul.s	%f13 %f0 %f1
	mul.s	%f11 %f14 %f0
	add.s	%f0 %f1 %f14
	ilw.s	%r0 %f0 l.87
	mul.s	%f13 %f0 %f1
	mul.s	%f11 %f14 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f13 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f12 %f0 %f1
	j	tail_b.2915
branching_b.1829 :
	ilw.s	%r0 %f0 l.81
	fbge	%f13 %f0 tail_b.2914
tail_b.2913 :
	sub.s	%f5 %f13 %f0
	add.s	%f5 %f13 %f1
	div.s	%f1 %f0 %f14
	ilw.s	%r0 %f13 l.58
	ilw.s	%r0 %f12 l.59
	neg.s	%f14 %f0
	mul.s	%f14 %f0 %f11
	ilw.s	%r0 %f0 l.82
	mul.s	%f14 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f14 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.84
	mul.s	%f14 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f14 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.86
	mul.s	%f14 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f15
	ilw.s	%r0 %f0 l.87
	mul.s	%f14 %f0 %f1
	mul.s	%f11 %f15 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f14 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f13 %f0 %f1
	j	tail_b.2915
tail_b.2914 :
	div.s	%f13 %f5 %f12
	ilw.s	%r0 %f11 l.89
	neg.s	%f12 %f0
	mul.s	%f12 %f0 %f13
	ilw.s	%r0 %f0 l.82
	mul.s	%f12 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f12 %f1 %f1
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f12 %f0 %f0
	mul.s	%f13 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f12 %f0 %f0
	mul.s	%f13 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.86
	mul.s	%f12 %f0 %f0
	mul.s	%f13 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f12 %f0 %f0
	mul.s	%f13 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f12 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f5 %f0 %f1
tail_b.2915 :
	ilw.s	%r0 %f0 l.88
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.75
	div.s	%f0 %f1 %f0
branching_b.1830 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f11
	ilw.s	%r0 %f12 l.90
	ilw.s	%r0 %f1 l.62
	sub.s	%f10 %f1 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f12 %f10
	sub.s	%f11 %f1 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f10 %f0
	fbge	%f0 %f6 tail_b.2918
tail_b.2917 :
	addi	%r0 %r1 1
	j	branching_b.1831
tail_b.2918 :
	addi	%r0 %r1 0
branching_b.1831 :
	beq	%r1 %r0 tail_b.2919
tail_b.2920 :
	ilw.s	%r0 %f0 l.51
	j	tail_b.2921
tail_b.2919 :
tail_b.2921 :
	ilw.s	%r0 %f1 l.52
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.91
	div.s	%f0 %f1 %f0
	sw.s	%r0 %f0 588
branching_b.1832 :
	mul	%r2 %r12 %r1
	lw	%r0 %r2 544
	add	%r1 %r2 %r2
	slli	%r13 %r1 2
	add	%r9 %r1 %r1
	sw	%r1 %r2 0
	lw	%r11 %r1 4
	slli	%r13 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f0 552
	mov	%r2 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 556
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 560
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	lw	%r11 %r1 12
	lw	%r14 %r2 28
	lw.s	%r2 %f1 0
	ilw.s	%r0 %f0 l.62
	fbge	%f1 %f0 tail_b.2924
tail_b.2923 :
	addi	%r0 %r2 1
	j	branching_b.1833
tail_b.2924 :
	addi	%r0 %r2 0
branching_b.1833 :
	beq	%r2 %r0 tail_b.2925
tail_b.2926 :
	slli	%r13 %r2 2
	add	%r1 %r2 %r1
	sw	%r1 %r0 0
	j	branching_b.1834
tail_b.2925 :
	addi	%r0 %r2 1
	slli	%r13 %r15 2
	add	%r1 %r15 %r1
	sw	%r1 %r2 0
	lw	%r11 %r15 16
	slli	%r13 %r1 2
	add	%r15 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f0 580
	mov	%r2 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 584
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 588
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	slli	%r13 %r1 2
	add	%r15 %r1 %r1
	lw	%r1 %r2 0
	ilw.s	%r0 %f0 l.77
	mul.s	%f9 %f0 %f0
	mov	%r2 %r1
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	mov	%r2 %r1
	sw.s	%r1 %f1 0
	addi	%r2 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r2 %r1 4
	sw.s	%r1 %f1 0
	addi	%r2 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	lw	%r11 %r2 28
	slli	%r13 %r1 2
	add	%r2 %r1 %r1
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
branching_b.1834 :
	ilw.s	%r0 %f11 l.79
	lw.s	%r0 %f0 696
	lw.s	%r0 %f1 568
	mul.s	%f1 %f0 %f0
	lw.s	%r0 %f1 700
	lw.s	%r0 %f10 572
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f10 704
	lw.s	%r0 %f0 576
	mul.s	%f0 %f10 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f0 %f11 %f0
	lw.s	%r0 %f1 696
	lw.s	%r0 %f10 568
	mul.s	%f10 %f0 %f10
	add.s	%f10 %f1 %f1
	sw.s	%r0 %f1 696
	lw.s	%r0 %f10 700
	lw.s	%r0 %f1 572
	mul.s	%f1 %f0 %f1
	add.s	%f1 %f10 %f1
	sw.s	%r0 %f1 700
	lw.s	%r0 %f1 704
	lw.s	%r0 %f10 576
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 704
	lw	%r14 %r1 28
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f11
	lw	%r0 %r2 536
	sw	%r26 %r5 -236
	sw.s	%r26 %f2 -240
	sw.s	%r26 %f3 -244
	sw.s	%r26 %f4 -248
	sw	%r26 %r6 -252
	sw	%r26 %r4 -256
	sw	%r26 %r3 -260
	sw	%r26 %r7 -264
	sw.s	%r26 %f6 -268
	sw.s	%r26 %f5 -272
	sw	%r26 %r11 -276
	sw	%r26 %r8 -280
	sw	%r26 %r12 -284
	sw	%r26 %r13 -288
	sw.s	%r26 %f7 -292
	sw.s	%r26 %f8 -296
	sw	%r26 %r9 -300
	sw	%r26 %r14 -304
	sw	%r26 %r10 -308
	sw.s	%r26 %f9 -312
	sw.s	%r26 %f11 -316
	mov	%r0 %r1
	sw	%r26 %r28 -320
	addi	%r26 %r26 -324
	jal	shadow_check_one_or_matrix.0
	addi	%r26 %r26 324
	lw	%r26 %r28 -320
	lw	%r26 %r5 -236
	lw.s	%r26 %f2 -240
	lw.s	%r26 %f3 -244
	lw.s	%r26 %f4 -248
	lw	%r26 %r6 -252
	lw	%r26 %r4 -256
	lw	%r26 %r3 -260
	lw	%r26 %r7 -264
	lw.s	%r26 %f6 -268
	lw.s	%r26 %f5 -272
	lw	%r26 %r11 -276
	lw	%r26 %r8 -280
	lw	%r26 %r12 -284
	lw	%r26 %r13 -288
	lw.s	%r26 %f7 -292
	lw.s	%r26 %f8 -296
	lw	%r26 %r9 -300
	lw	%r26 %r14 -304
	lw	%r26 %r10 -308
	lw.s	%r26 %f9 -312
	lw.s	%r26 %f11 -316
	beq	%r1 %r0 branching_b.1835
tail_b.2935 :
	j	branching_b.1839
branching_b.1835 :
	lw.s	%r0 %f1 568
	lw.s	%r0 %f0 312
	mul.s	%f0 %f1 %f0
	lw.s	%r0 %f10 572
	lw.s	%r0 %f1 316
	mul.s	%f1 %f10 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r0 %f1 576
	lw.s	%r0 %f10 320
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	mul.s	%f9 %f0 %f1
	lw.s	%r0 %f0 696
	lw.s	%r0 %f10 312
	mul.s	%f10 %f0 %f10
	lw.s	%r0 %f0 700
	lw.s	%r0 %f12 316
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f10 %f10
	lw.s	%r0 %f0 704
	lw.s	%r0 %f12 320
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f10 %f0
	neg.s	%f0 %f10
	fbge	%f6 %f1 tail_b.2928
tail_b.2927 :
	addi	%r0 %r1 1
	j	branching_b.1836
tail_b.2928 :
	addi	%r0 %r1 0
branching_b.1836 :
	beq	%r1 %r0 tail_b.2929
tail_b.2930 :
	lw.s	%r0 %f12 604
	lw.s	%r0 %f0 580
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f12 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f12 608
	lw.s	%r0 %f0 584
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f12 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f12 612
	lw.s	%r0 %f0 588
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f12 %f0
	sw.s	%r0 %f0 612
	j	branching_b.1837
tail_b.2929 :
branching_b.1837 :
	fbge	%f6 %f10 tail_b.2932
tail_b.2931 :
	addi	%r0 %r1 1
	j	branching_b.1838
tail_b.2932 :
	addi	%r0 %r1 0
branching_b.1838 :
	beq	%r1 %r0 tail_b.2933
tail_b.2934 :
	mul.s	%f10 %f10 %f0
	mul.s	%f0 %f0 %f0
	mul.s	%f11 %f0 %f1
	lw.s	%r0 %f0 604
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f0 608
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
	j	branching_b.1839
tail_b.2933 :
branching_b.1839 :
	lw.s	%r0 %f0 552
	sw.s	%r0 %f0 648
	lw.s	%r0 %f0 556
	sw.s	%r0 %f0 652
	lw.s	%r0 %f0 560
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r2 -1
	sw	%r26 %r5 -320
	sw.s	%r26 %f2 -324
	sw.s	%r26 %f3 -328
	sw.s	%r26 %f4 -332
	sw	%r26 %r6 -336
	sw	%r26 %r4 -340
	sw	%r26 %r3 -344
	sw	%r26 %r7 -348
	sw.s	%r26 %f6 -352
	sw.s	%r26 %f5 -356
	sw	%r26 %r11 -360
	sw	%r26 %r8 -364
	sw	%r26 %r12 -368
	sw	%r26 %r13 -372
	sw.s	%r26 %f7 -376
	sw.s	%r26 %f8 -380
	sw	%r26 %r9 -384
	sw	%r26 %r14 -388
	sw	%r26 %r10 -392
	sw.s	%r26 %f9 -396
	sw.s	%r26 %f11 -400
	mov	%r8 %r1
	sw	%r26 %r28 -404
	addi	%r26 %r26 -408
	jal	setup_startp_constants.0
	addi	%r26 %r26 408
	lw	%r26 %r28 -404
	lw	%r0 %r1 1736
	addi	%r1 %r1 -1
	lw	%r26 %r6 -336
	lw.s	%r26 %f9 -396
	lw.s	%r26 %f11 -400
	sw	%r26 %r6 -404
	mov	%r6 %r2
	mov.s	%f11 %f1
	mov.s	%f9 %f0
	sw	%r26 %r28 -408
	addi	%r26 %r26 -412
	jal	trace_reflections.0
	addi	%r26 %r26 412
	lw	%r26 %r28 -408
	ilw.s	%r0 %f0 l.92
	lw	%r26 %r5 -320
	lw.s	%r26 %f2 -324
	lw.s	%r26 %f3 -328
	lw.s	%r26 %f4 -332
	lw	%r26 %r6 -404
	lw	%r26 %r4 -340
	lw	%r26 %r3 -344
	lw	%r26 %r7 -348
	lw.s	%r26 %f6 -352
	lw.s	%r26 %f5 -356
	lw	%r26 %r11 -360
	lw	%r26 %r8 -364
	lw	%r26 %r12 -368
	lw	%r26 %r13 -372
	lw.s	%r26 %f7 -376
	lw.s	%r26 %f8 -380
	lw	%r26 %r9 -384
	lw	%r26 %r14 -388
	lw	%r26 %r10 -392
	fbge	%f0 %f7 tail_b.2937
tail_b.2936 :
	addi	%r0 %r1 1
	j	branching_b.1840
tail_b.2937 :
	addi	%r0 %r1 0
branching_b.1840 :
	beq	%r1 %r0 tail_b.2938
branching_b.1841 :
	bl	%r13 %r12 tail_b.2939
tail_b.2940 :
	j	branching_b.1842
tail_b.2939 :
	addi	%r13 %r1 1
	addi	%r0 %r2 -1
	slli	%r1 %r1 2
	add	%r9 %r1 %r1
	sw	%r1 %r2 0
	j	branching_b.1842
tail_b.2938 :
	j	postloop_b.58
branching_b.1842 :
	addi	%r0 %r1 2
	beq	%r10 %r1 tail_b.2941
tail_b.2942 :
	j	postloop_b.58
tail_b.2941 :
	lw	%r14 %r1 28
	lw.s	%r1 %f0 0
	sub.s	%f0 %f5 %f0
	mul.s	%f0 %f7 %f7
	addi	%r13 %r13 1
	lw.s	%r0 %f0 548
	add.s	%f0 %f8 %f0
	mov.s	%f0 %f8
	j	trace_ray_loop.1
branching_b.1800 :
	lw	%r14 %r1 24
	lw.s	%r0 %f0 568
	mul.s	%f0 %f0 %f0
	lw.s	%r0 %f1 572
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r0 %f0 576
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	fbne	%f0 %f6 tail_b.2873
tail_b.2872 :
	addi	%r0 %r16 1
	j	branching_b.1801
tail_b.2873 :
	addi	%r0 %r16 0
branching_b.1801 :
	beq	%r16 %r0 branching_b.1802
tail_b.2876 :
	ilw.s	%r0 %f1 l.56
	j	tail_b.2877
branching_b.1802 :
	beq	%r1 %r0 tail_b.2874
tail_b.2875 :
	ilw.s	%r0 %f1 l.58
	div.s	%f0 %f1 %f1
	j	tail_b.2877
tail_b.2874 :
	div.s	%f0 %f5 %f1
tail_b.2877 :
	lw.s	%r0 %f0 568
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 568
	lw.s	%r0 %f0 572
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 572
	lw.s	%r0 %f0 576
	mul.s	%f1 %f0 %f0
	sw.s	%r0 %f0 576
	j	branching_b.1803
postloop_b.58 :
preloop_b.60 :
	slli	%r3 %r1 2
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
	slli	%r3 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 24
	sw	%r1 %r7 0
	slli	%r3 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r9 0
	mov	%r4 %r10
	addi	%r0 %r8 4
pretrace_diffuse_rays_loop.1 :
	ble	%r10 %r8 branching_b.1844
tail_b.2948 :
	j	postloop_b.59
branching_b.1844 :
	lw	%r9 %r2 8
	slli	%r10 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r1 0
	ble	%r0 %r1 branching_b.1845
tail_b.2947 :
	j	postloop_b.59
branching_b.1845 :
	lw	%r9 %r1 12
	slli	%r10 %r2 2
	add	%r1 %r2 %r1
	lw	%r1 %r1 0
	beq	%r1 %r0 tail_b.2944
tail_b.2945 :
	lw	%r9 %r1 24
	lw	%r1 %r1 0
	ilw.s	%r0 %f0 l.51
	sw.s	%r0 %f0 592
	sw.s	%r0 %f0 596
	sw.s	%r0 %f0 600
	lw	%r9 %r11 28
	lw	%r9 %r2 4
	slli	%r1 %r1 2
	addi	%r1 %r1 716
	lw	%r1 %r12 0
	slli	%r10 %r1 2
	add	%r11 %r1 %r1
	lw	%r1 %r13 0
	slli	%r10 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r11 0
	mov	%r11 %r1
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 648
	addi	%r11 %r1 4
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 652
	addi	%r11 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 656
	lw	%r0 %r1 0
	addi	%r1 %r2 -1
	sw	%r26 %r5 -408
	sw.s	%r26 %f2 -412
	sw.s	%r26 %f3 -416
	sw.s	%r26 %f4 -420
	sw	%r26 %r6 -424
	sw	%r26 %r4 -428
	sw	%r26 %r3 -432
	sw	%r26 %r7 -436
	sw	%r26 %r9 -440
	sw	%r26 %r8 -444
	sw	%r26 %r10 -448
	sw	%r26 %r12 -452
	sw	%r26 %r13 -456
	sw	%r26 %r11 -460
	mov	%r11 %r1
	sw	%r26 %r28 -464
	addi	%r26 %r26 -468
	jal	setup_startp_constants.0
	addi	%r26 %r26 468
	lw	%r26 %r28 -464
	addi	%r0 %r1 118
	lw	%r26 %r12 -452
	lw	%r26 %r13 -456
	lw	%r26 %r11 -460
	mov	%r1 %r4
	mov	%r11 %r3
	mov	%r13 %r2
	mov	%r12 %r1
	sw	%r26 %r28 -464
	addi	%r26 %r26 -468
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 468
	lw	%r26 %r28 -464
	lw	%r26 %r9 -440
	lw	%r9 %r2 20
	lw	%r26 %r10 -448
	slli	%r10 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r2 0
	lw.s	%r0 %f0 592
	mov	%r2 %r1
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 596
	addi	%r2 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r0 %f0 600
	addi	%r2 %r1 8
	sw.s	%r1 %f0 0
	lw	%r26 %r5 -408
	lw.s	%r26 %f2 -412
	lw.s	%r26 %f3 -416
	lw.s	%r26 %f4 -420
	lw	%r26 %r6 -424
	lw	%r26 %r4 -428
	lw	%r26 %r3 -432
	lw	%r26 %r7 -436
	lw	%r26 %r8 -444
	j	tail_b.2946
tail_b.2944 :
tail_b.2946 :
	addi	%r10 %r10 1
	j	pretrace_diffuse_rays_loop.1
postloop_b.59 :
branching_b.1846 :
	addi	%r3 %r3 -1
	addi	%r7 %r1 1
	addi	%r0 %r2 5
	ble	%r2 %r1 tail_b.2949
tail_b.2950 :
	j	tail_b.2951
tail_b.2949 :
	addi	%r1 %r1 -5
tail_b.2951 :
	mov	%r1 %r7
	j	pretrace_pixels_loop.0
postloop_b.60 :
return_point.20 :
	retl
scan_pixel.0 :
	mov	%r5 %r7
	mov	%r3 %r8
preloop_b.61 :
	mov	%r1 %r6
scan_pixel_loop.0 :
	lw	%r0 %r1 616
	bl	%r6 %r1 branching_b.1848
tail_b.3003 :
	j	postloop_b.63
branching_b.1848 :
	slli	%r6 %r1 2
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
	bl	%r1 %r3 branching_b.1849
tail_b.2957 :
	addi	%r0 %r1 0
	j	branching_b.1852
branching_b.1849 :
	bl	%r0 %r2 branching_b.1850
tail_b.2956 :
	addi	%r0 %r1 0
	j	branching_b.1852
branching_b.1850 :
	addi	%r6 %r3 1
	lw	%r0 %r1 616
	bl	%r3 %r1 branching_b.1851
tail_b.2955 :
	addi	%r0 %r1 0
	j	branching_b.1852
branching_b.1851 :
	bl	%r0 %r6 tail_b.2953
tail_b.2954 :
	addi	%r0 %r1 0
	j	branching_b.1852
tail_b.2953 :
	addi	%r0 %r1 1
branching_b.1852 :
	addi	%r0 %r11 0
	beq	%r1 %r0 preloop_b.62
preloop_b.63 :
	addi	%r0 %r10 4
try_exploit_neighbors_loop.1 :
	slli	%r6 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r5 0
	ble	%r11 %r10 branching_b.1862
tail_b.2983 :
	j	postloop_b.62
branching_b.1862 :
	lw	%r5 %r3 8
	slli	%r11 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	ble	%r0 %r1 branching_b.1863
tail_b.2982 :
	j	postloop_b.62
branching_b.1863 :
	slli	%r6 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r3 8
	slli	%r11 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r9 0
	slli	%r6 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 8
	slli	%r11 %r3 2
	add	%r1 %r3 %r1
	lw	%r1 %r1 0
	beq	%r1 %r9 branching_b.1864
tail_b.2977 :
	addi	%r0 %r1 0
	j	branching_b.1867
branching_b.1864 :
	slli	%r6 %r1 2
	add	%r7 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r3 8
	slli	%r11 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r9 branching_b.1865
tail_b.2976 :
	addi	%r0 %r1 0
	j	branching_b.1867
branching_b.1865 :
	addi	%r6 %r1 -1
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 8
	slli	%r11 %r3 2
	add	%r1 %r3 %r1
	lw	%r1 %r1 0
	beq	%r1 %r9 branching_b.1866
tail_b.2975 :
	addi	%r0 %r1 0
	j	branching_b.1867
branching_b.1866 :
	addi	%r6 %r1 1
	slli	%r1 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r3 8
	slli	%r11 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r9 tail_b.2973
tail_b.2974 :
	addi	%r0 %r1 0
	j	branching_b.1867
tail_b.2973 :
	addi	%r0 %r1 1
	j	branching_b.1867
preloop_b.62 :
	slli	%r6 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r10 0
	addi	%r0 %r12 4
do_without_neighbors_loop.1 :
	ble	%r11 %r12 branching_b.1854
tail_b.2972 :
	j	postloop_b.61
branching_b.1854 :
	lw	%r10 %r1 8
	slli	%r11 %r3 2
	add	%r1 %r3 %r1
	lw	%r1 %r1 0
	ble	%r0 %r1 branching_b.1855
tail_b.2971 :
	j	postloop_b.61
branching_b.1855 :
	lw	%r10 %r3 12
	slli	%r11 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	beq	%r1 %r0 tail_b.2958
branching_b.1856 :
	lw	%r10 %r3 20
	lw	%r10 %r5 28
	lw	%r10 %r9 4
	lw	%r10 %r13 16
	slli	%r11 %r1 2
	add	%r3 %r1 %r1
	lw	%r1 %r1 0
	mov	%r1 %r3
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 592
	addi	%r1 %r3 4
	lw.s	%r3 %f0 0
	sw.s	%r0 %f0 596
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	sw.s	%r0 %f0 600
	lw	%r10 %r1 24
	lw	%r1 %r14 0
	slli	%r11 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r5 0
	slli	%r11 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r9 0
	bne	%r14 %r0 tail_b.2959
tail_b.2960 :
	j	branching_b.1857
tail_b.2959 :
	lw	%r0 %r3 716
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
	sw	%r26 %r2 0
	sw	%r26 %r8 -4
	sw	%r26 %r4 -8
	sw	%r26 %r7 -12
	sw	%r26 %r6 -16
	sw	%r26 %r10 -20
	sw	%r26 %r12 -24
	sw	%r26 %r11 -28
	sw	%r26 %r13 -32
	sw	%r26 %r14 -36
	sw	%r26 %r5 -40
	sw	%r26 %r9 -44
	sw	%r26 %r3 -48
	mov	%r1 %r2
	mov	%r9 %r1
	sw	%r26 %r28 -52
	addi	%r26 %r26 -56
	jal	setup_startp_constants.0
	addi	%r26 %r26 56
	lw	%r26 %r28 -52
	addi	%r0 %r1 118
	lw	%r26 %r3 -48
	lw	%r26 %r5 -40
	lw	%r26 %r9 -44
	sw	%r26 %r5 -52
	sw	%r26 %r9 -56
	mov	%r1 %r4
	mov	%r5 %r2
	mov	%r3 %r1
	mov	%r9 %r3
	sw	%r26 %r28 -60
	addi	%r26 %r26 -64
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 64
	lw	%r26 %r28 -60
	lw	%r26 %r2 0
	lw	%r26 %r8 -4
	lw	%r26 %r4 -8
	lw	%r26 %r7 -12
	lw	%r26 %r6 -16
	lw	%r26 %r10 -20
	lw	%r26 %r12 -24
	lw	%r26 %r11 -28
	lw	%r26 %r13 -32
	lw	%r26 %r14 -36
	lw	%r26 %r5 -52
	lw	%r26 %r9 -56
	j	branching_b.1857
tail_b.2958 :
tail_b.2970 :
	addi	%r11 %r11 1
	j	do_without_neighbors_loop.1
branching_b.1857 :
	addi	%r0 %r1 1
	bne	%r14 %r1 tail_b.2961
tail_b.2962 :
	j	branching_b.1858
tail_b.2961 :
	lw	%r0 %r3 720
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
	sw	%r26 %r2 -60
	sw	%r26 %r8 -64
	sw	%r26 %r4 -68
	sw	%r26 %r7 -72
	sw	%r26 %r6 -76
	sw	%r26 %r10 -80
	sw	%r26 %r12 -84
	sw	%r26 %r11 -88
	sw	%r26 %r13 -92
	sw	%r26 %r14 -96
	sw	%r26 %r5 -100
	sw	%r26 %r9 -104
	sw	%r26 %r3 -108
	mov	%r1 %r2
	mov	%r9 %r1
	sw	%r26 %r28 -112
	addi	%r26 %r26 -116
	jal	setup_startp_constants.0
	addi	%r26 %r26 116
	lw	%r26 %r28 -112
	addi	%r0 %r1 118
	lw	%r26 %r3 -108
	lw	%r26 %r5 -100
	lw	%r26 %r9 -104
	sw	%r26 %r5 -112
	sw	%r26 %r9 -116
	mov	%r1 %r4
	mov	%r5 %r2
	mov	%r3 %r1
	mov	%r9 %r3
	sw	%r26 %r28 -120
	addi	%r26 %r26 -124
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 124
	lw	%r26 %r28 -120
	lw	%r26 %r2 -60
	lw	%r26 %r8 -64
	lw	%r26 %r4 -68
	lw	%r26 %r7 -72
	lw	%r26 %r6 -76
	lw	%r26 %r10 -80
	lw	%r26 %r12 -84
	lw	%r26 %r11 -88
	lw	%r26 %r13 -92
	lw	%r26 %r14 -96
	lw	%r26 %r5 -112
	lw	%r26 %r9 -116
branching_b.1858 :
	addi	%r0 %r1 2
	bne	%r14 %r1 tail_b.2963
tail_b.2964 :
	j	branching_b.1859
tail_b.2963 :
	lw	%r0 %r3 724
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
	sw	%r26 %r2 -120
	sw	%r26 %r8 -124
	sw	%r26 %r4 -128
	sw	%r26 %r7 -132
	sw	%r26 %r6 -136
	sw	%r26 %r10 -140
	sw	%r26 %r12 -144
	sw	%r26 %r11 -148
	sw	%r26 %r13 -152
	sw	%r26 %r14 -156
	sw	%r26 %r5 -160
	sw	%r26 %r9 -164
	sw	%r26 %r3 -168
	mov	%r1 %r2
	mov	%r9 %r1
	sw	%r26 %r28 -172
	addi	%r26 %r26 -176
	jal	setup_startp_constants.0
	addi	%r26 %r26 176
	lw	%r26 %r28 -172
	addi	%r0 %r1 118
	lw	%r26 %r3 -168
	lw	%r26 %r5 -160
	lw	%r26 %r9 -164
	sw	%r26 %r5 -172
	sw	%r26 %r9 -176
	mov	%r1 %r4
	mov	%r5 %r2
	mov	%r3 %r1
	mov	%r9 %r3
	sw	%r26 %r28 -180
	addi	%r26 %r26 -184
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 184
	lw	%r26 %r28 -180
	lw	%r26 %r2 -120
	lw	%r26 %r8 -124
	lw	%r26 %r4 -128
	lw	%r26 %r7 -132
	lw	%r26 %r6 -136
	lw	%r26 %r10 -140
	lw	%r26 %r12 -144
	lw	%r26 %r11 -148
	lw	%r26 %r13 -152
	lw	%r26 %r14 -156
	lw	%r26 %r5 -172
	lw	%r26 %r9 -176
branching_b.1859 :
	addi	%r0 %r1 3
	bne	%r14 %r1 tail_b.2965
tail_b.2966 :
	j	branching_b.1860
tail_b.2965 :
	lw	%r0 %r3 728
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
	sw	%r26 %r2 -180
	sw	%r26 %r8 -184
	sw	%r26 %r4 -188
	sw	%r26 %r7 -192
	sw	%r26 %r6 -196
	sw	%r26 %r10 -200
	sw	%r26 %r12 -204
	sw	%r26 %r11 -208
	sw	%r26 %r13 -212
	sw	%r26 %r14 -216
	sw	%r26 %r5 -220
	sw	%r26 %r9 -224
	sw	%r26 %r3 -228
	mov	%r1 %r2
	mov	%r9 %r1
	sw	%r26 %r28 -232
	addi	%r26 %r26 -236
	jal	setup_startp_constants.0
	addi	%r26 %r26 236
	lw	%r26 %r28 -232
	addi	%r0 %r1 118
	lw	%r26 %r3 -228
	lw	%r26 %r5 -220
	lw	%r26 %r9 -224
	sw	%r26 %r5 -232
	sw	%r26 %r9 -236
	mov	%r1 %r4
	mov	%r5 %r2
	mov	%r3 %r1
	mov	%r9 %r3
	sw	%r26 %r28 -240
	addi	%r26 %r26 -244
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 244
	lw	%r26 %r28 -240
	lw	%r26 %r2 -180
	lw	%r26 %r8 -184
	lw	%r26 %r4 -188
	lw	%r26 %r7 -192
	lw	%r26 %r6 -196
	lw	%r26 %r10 -200
	lw	%r26 %r12 -204
	lw	%r26 %r11 -208
	lw	%r26 %r13 -212
	lw	%r26 %r14 -216
	lw	%r26 %r5 -232
	lw	%r26 %r9 -236
branching_b.1860 :
	bne	%r14 %r12 tail_b.2967
tail_b.2968 :
	j	tail_b.2969
tail_b.2967 :
	lw	%r0 %r3 732
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
	sw	%r26 %r2 -240
	sw	%r26 %r8 -244
	sw	%r26 %r4 -248
	sw	%r26 %r7 -252
	sw	%r26 %r6 -256
	sw	%r26 %r10 -260
	sw	%r26 %r12 -264
	sw	%r26 %r11 -268
	sw	%r26 %r13 -272
	sw	%r26 %r5 -276
	sw	%r26 %r9 -280
	sw	%r26 %r3 -284
	mov	%r1 %r2
	mov	%r9 %r1
	sw	%r26 %r28 -288
	addi	%r26 %r26 -292
	jal	setup_startp_constants.0
	addi	%r26 %r26 292
	lw	%r26 %r28 -288
	addi	%r0 %r1 118
	lw	%r26 %r3 -284
	lw	%r26 %r5 -276
	lw	%r26 %r9 -280
	mov	%r1 %r4
	mov	%r5 %r2
	mov	%r3 %r1
	mov	%r9 %r3
	sw	%r26 %r28 -288
	addi	%r26 %r26 -292
	jal	iter_trace_diffuse_rays.0
	addi	%r26 %r26 292
	lw	%r26 %r28 -288
	lw	%r26 %r2 -240
	lw	%r26 %r8 -244
	lw	%r26 %r4 -248
	lw	%r26 %r7 -252
	lw	%r26 %r6 -256
	lw	%r26 %r10 -260
	lw	%r26 %r12 -264
	lw	%r26 %r11 -268
	lw	%r26 %r13 -272
tail_b.2969 :
	slli	%r11 %r1 2
	add	%r13 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f0 604
	mov	%r1 %r3
	lw.s	%r3 %f2 0
	lw.s	%r0 %f1 592
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f2 608
	addi	%r1 %r3 4
	lw.s	%r3 %f0 0
	lw.s	%r0 %f1 596
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f0 612
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	lw.s	%r0 %f1 600
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 612
	j	tail_b.2970
postloop_b.61 :
branching_b.1869 :
	lw.s	%r0 %f0 604
	mfc1	%r1 %f0
	addi	%r0 %r5 255
	bl	%r5 %r1 tail_b.2984
branching_b.1870 :
	bl	%r1 %r0 tail_b.2985
tail_b.2986 :
	j	branching_b.1871
tail_b.2985 :
	addi	%r0 %r1 0
	j	branching_b.1871
tail_b.2984 :
	addi	%r0 %r1 255
branching_b.1871 :
	addi	%r1 %r3 1
	addi	%r0 %r9 655
	mul	%r3 %r9 %r3
	slli	%r3 %r14 -16
	addi	%r0 %r10 100
	mul	%r14 %r10 %r3
	sub	%r1 %r3 %r3
	addi	%r3 %r3 1
	addi	%r0 %r12 6553
	mul	%r3 %r12 %r3
	slli	%r3 %r3 -16
	mul	%r14 %r10 %r11
	sub	%r1 %r11 %r13
	addi	%r0 %r11 10
	mul	%r3 %r11 %r1
	sub	%r13 %r1 %r1
	bl	%r0 %r14 tail_b.2987
branching_b.1872 :
	bl	%r0 %r3 tail_b.2988
tail_b.2989 :
	addi	%r1 %r1 48
	out	%r1
	j	branching_b.1873
tail_b.2988 :
	addi	%r3 %r3 48
	out	%r3
	addi	%r1 %r1 48
	out	%r1
	j	branching_b.1873
tail_b.2987 :
	addi	%r14 %r13 48
	out	%r13
	addi	%r3 %r3 48
	out	%r3
	addi	%r1 %r1 48
	out	%r1
branching_b.1873 :
	addi	%r0 %r1 32
	out	%r1
	lw.s	%r0 %f0 608
	mfc1	%r1 %f0
	bl	%r5 %r1 tail_b.2990
branching_b.1874 :
	bl	%r1 %r0 tail_b.2991
tail_b.2992 :
	mov	%r1 %r13
	j	branching_b.1875
tail_b.2991 :
	addi	%r0 %r13 0
	j	branching_b.1875
tail_b.2990 :
	addi	%r0 %r13 255
branching_b.1875 :
	addi	%r13 %r1 1
	mul	%r1 %r9 %r1
	slli	%r1 %r14 -16
	mul	%r14 %r10 %r1
	sub	%r13 %r1 %r1
	addi	%r1 %r1 1
	mul	%r1 %r12 %r1
	slli	%r1 %r3 -16
	mul	%r14 %r10 %r1
	sub	%r13 %r1 %r1
	mul	%r3 %r11 %r13
	sub	%r1 %r13 %r13
	bl	%r0 %r14 tail_b.2993
branching_b.1876 :
	bl	%r0 %r3 tail_b.2994
tail_b.2995 :
	addi	%r13 %r1 48
	out	%r1
	j	branching_b.1877
tail_b.2994 :
	addi	%r3 %r1 48
	out	%r1
	addi	%r13 %r1 48
	out	%r1
	j	branching_b.1877
tail_b.2993 :
	addi	%r14 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
	addi	%r13 %r1 48
	out	%r1
branching_b.1877 :
	addi	%r0 %r1 32
	out	%r1
	lw.s	%r0 %f0 612
	mfc1	%r1 %f0
	bl	%r5 %r1 tail_b.2996
branching_b.1878 :
	bl	%r1 %r0 tail_b.2997
tail_b.2998 :
	mov	%r1 %r5
	j	branching_b.1879
tail_b.2997 :
	addi	%r0 %r5 0
	j	branching_b.1879
tail_b.2996 :
	addi	%r0 %r5 255
branching_b.1879 :
	addi	%r5 %r1 1
	mul	%r1 %r9 %r1
	slli	%r1 %r9 -16
	mul	%r9 %r10 %r1
	sub	%r5 %r1 %r1
	addi	%r1 %r1 1
	mul	%r1 %r12 %r1
	slli	%r1 %r3 -16
	mul	%r9 %r10 %r1
	sub	%r5 %r1 %r1
	mul	%r3 %r11 %r5
	sub	%r1 %r5 %r5
	bl	%r0 %r9 tail_b.2999
branching_b.1880 :
	bl	%r0 %r3 tail_b.3000
tail_b.3001 :
	addi	%r5 %r1 48
	out	%r1
	j	tail_b.3002
tail_b.3000 :
	addi	%r3 %r1 48
	out	%r1
	addi	%r5 %r1 48
	out	%r1
	j	tail_b.3002
tail_b.2999 :
	addi	%r9 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
	addi	%r5 %r1 48
	out	%r1
tail_b.3002 :
	addi	%r0 %r1 10
	out	%r1
	addi	%r6 %r6 1
	j	scan_pixel_loop.0
branching_b.1867 :
	beq	%r1 %r0 tail_b.2978
branching_b.1868 :
	lw	%r5 %r1 12
	slli	%r11 %r3 2
	add	%r1 %r3 %r1
	lw	%r1 %r1 0
	beq	%r1 %r0 tail_b.2979
tail_b.2980 :
	slli	%r6 %r1 2
	add	%r8 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 20
	addi	%r6 %r3 -1
	slli	%r3 %r3 2
	add	%r4 %r3 %r3
	lw	%r3 %r3 0
	lw	%r3 %r12 20
	slli	%r6 %r3 2
	add	%r4 %r3 %r3
	lw	%r3 %r3 0
	lw	%r3 %r13 20
	addi	%r6 %r3 1
	slli	%r3 %r3 2
	add	%r4 %r3 %r3
	lw	%r3 %r3 0
	lw	%r3 %r5 20
	slli	%r6 %r3 2
	add	%r7 %r3 %r3
	lw	%r3 %r3 0
	lw	%r3 %r9 20
	slli	%r11 %r3 2
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
	slli	%r11 %r1 2
	add	%r12 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f1 592
	mov	%r1 %r3
	lw.s	%r3 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	addi	%r1 %r3 4
	lw.s	%r3 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	slli	%r11 %r1 2
	add	%r13 %r1 %r1
	lw	%r1 %r3 0
	lw.s	%r0 %f1 592
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	slli	%r11 %r1 2
	add	%r5 %r1 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f0 592
	mov	%r1 %r3
	lw.s	%r3 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	addi	%r1 %r3 4
	lw.s	%r3 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	slli	%r11 %r1 2
	add	%r9 %r1 %r1
	lw	%r1 %r3 0
	lw.s	%r0 %f1 592
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 592
	lw.s	%r0 %f1 596
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 596
	lw.s	%r0 %f1 600
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 600
	slli	%r6 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	lw	%r1 %r1 16
	slli	%r11 %r3 2
	add	%r1 %r3 %r1
	lw	%r1 %r1 0
	lw.s	%r0 %f1 604
	mov	%r1 %r3
	lw.s	%r3 %f0 0
	lw.s	%r0 %f2 592
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r0 %f0 604
	lw.s	%r0 %f2 608
	addi	%r1 %r3 4
	lw.s	%r3 %f0 0
	lw.s	%r0 %f1 596
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 608
	lw.s	%r0 %f2 612
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	lw.s	%r0 %f1 600
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r0 %f0 612
	j	tail_b.2981
tail_b.2979 :
	j	tail_b.2981
tail_b.2978 :
	slli	%r6 %r1 2
	add	%r4 %r1 %r1
	lw	%r1 %r1 0
	sw	%r26 %r2 -288
	sw	%r26 %r8 -292
	sw	%r26 %r4 -296
	sw	%r26 %r7 -300
	sw	%r26 %r6 -304
	mov	%r11 %r2
	sw	%r26 %r28 -308
	addi	%r26 %r26 -312
	jal	do_without_neighbors.0
	addi	%r26 %r26 312
	lw	%r26 %r28 -308
	lw	%r26 %r2 -288
	lw	%r26 %r8 -292
	lw	%r26 %r4 -296
	lw	%r26 %r7 -300
	lw	%r26 %r6 -304
	j	postloop_b.62
tail_b.2981 :
	addi	%r11 %r1 1
	mov	%r1 %r11
	j	try_exploit_neighbors_loop.1
postloop_b.62 :
	j	branching_b.1869
postloop_b.63 :
return_point.21 :
	retl
calc_dirvecs.0 :
	mov	%r3 %r6
	mov.s	%f0 %f3
preloop_b.64 :
	mov	%r2 %r3
	addi	%r0 %r5 0
calc_dirvecs_loop.0 :
	ble	%r0 %r1 preloop_b.65
tail_b.3035 :
	j	postloop_b.66
preloop_b.65 :
	mtc1	%r1 %f0
	ilw.s	%r0 %f4 l.86
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f1 l.95
	sub.s	%f1 %f0 %f6
	ilw.s	%r0 %f2 l.51
	mov	%r5 %r4
	mov.s	%f2 %f8
	mov.s	%f2 %f1
	addi	%r0 %r2 5
calc_dirvec_loop.2 :
	ble	%r2 %r4 tail_b.3004
branching_b.1883 :
	mul.s	%f1 %f1 %f0
	ilw.s	%r0 %f9 l.92
	add.s	%f9 %f0 %f0
	sqrt.s	%f0 %f8
	ilw.s	%r0 %f7 l.56
	div.s	%f8 %f7 %f10
	fbg	%f2 %f10 branching_b.1886
branching_b.1884 :
	ilw.s	%r0 %f0 l.80
	fbge	%f10 %f0 branching_b.1885
tail_b.3005 :
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f5
	mul.s	%f1 %f11 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f11
	mul.s	%f1 %f5 %f0
	add.s	%f0 %f11 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f10 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f10 %f4 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f10 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	j	branching_b.1888
branching_b.1885 :
	ilw.s	%r0 %f0 l.81
	fbge	%f10 %f0 tail_b.3007
tail_b.3006 :
	sub.s	%f7 %f10 %f0
	add.s	%f7 %f10 %f1
	div.s	%f1 %f0 %f1
	ilw.s	%r0 %f11 l.59
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f12
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f5
	mul.s	%f10 %f12 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f1 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f12
	mul.s	%f10 %f5 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f1 %f4 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f7 %f0 %f0
	j	branching_b.1888
tail_b.3007 :
	div.s	%f10 %f7 %f13
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f0 l.89
	neg.s	%f13 %f1
	mul.s	%f13 %f1 %f11
	ilw.s	%r0 %f1 l.82
	mul.s	%f13 %f1 %f12
	ilw.s	%r0 %f1 l.83
	mul.s	%f13 %f1 %f5
	mul.s	%f11 %f12 %f1
	add.s	%f1 %f5 %f5
	ilw.s	%r0 %f1 l.84
	mul.s	%f13 %f1 %f12
	mul.s	%f11 %f5 %f1
	add.s	%f1 %f12 %f12
	ilw.s	%r0 %f1 l.85
	mul.s	%f13 %f1 %f5
	mul.s	%f11 %f12 %f1
	add.s	%f1 %f5 %f5
	mul.s	%f13 %f4 %f1
	mul.s	%f11 %f5 %f5
	add.s	%f5 %f1 %f1
	ilw.s	%r0 %f5 l.87
	mul.s	%f13 %f5 %f5
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f13 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f10 %f0 %f0
	j	branching_b.1888
branching_b.1886 :
	neg.s	%f10 %f10
	ilw.s	%r0 %f0 l.80
	fbge	%f10 %f0 branching_b.1887
tail_b.3008 :
	ilw.s	%r0 %f5 l.58
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f11
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f12
	mul.s	%f11 %f1 %f0
	add.s	%f0 %f12 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f10 %f4 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f10 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f0
	j	branching_b.1888
branching_b.1887 :
	ilw.s	%r0 %f0 l.81
	fbge	%f10 %f0 tail_b.3010
tail_b.3009 :
	sub.s	%f7 %f10 %f1
	add.s	%f7 %f10 %f0
	div.s	%f0 %f1 %f11
	ilw.s	%r0 %f10 l.58
	ilw.s	%r0 %f12 l.59
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f11 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f11 %f4 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f10 %f0 %f0
	j	branching_b.1888
tail_b.3010 :
	div.s	%f10 %f7 %f5
	ilw.s	%r0 %f10 l.89
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f12
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f11
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f1
	mul.s	%f12 %f11 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f5 %f4 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f5 %f1 %f1
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f7 %f0 %f0
	j	branching_b.1888
tail_b.3004 :
	mul.s	%f8 %f8 %f0
	mul.s	%f1 %f1 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.56
	add.s	%f0 %f5 %f5
	sqrt.s	%f5 %f5
	div.s	%f5 %f8 %f8
	div.s	%f5 %f1 %f6
	div.s	%f5 %f0 %f7
	slli	%r3 %r2 2
	addi	%r2 %r2 716
	lw	%r2 %r4 0
	slli	%r6 %r2 2
	add	%r4 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 0
	mov	%r2 %r7
	sw.s	%r7 %f8 0
	addi	%r2 %r7 4
	sw.s	%r7 %f6 0
	addi	%r2 %r2 8
	sw.s	%r2 %f7 0
	addi	%r6 %r2 40
	slli	%r2 %r2 2
	add	%r4 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 0
	neg.s	%f6 %f0
	mov	%r2 %r7
	sw.s	%r7 %f8 0
	addi	%r2 %r7 4
	sw.s	%r7 %f7 0
	addi	%r2 %r2 8
	sw.s	%r2 %f0 0
	addi	%r6 %r2 80
	slli	%r2 %r2 2
	add	%r4 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r7 0
	neg.s	%f8 %f1
	neg.s	%f6 %f0
	mov	%r7 %r2
	sw.s	%r2 %f7 0
	addi	%r7 %r2 4
	sw.s	%r2 %f1 0
	addi	%r7 %r2 8
	sw.s	%r2 %f0 0
	addi	%r6 %r2 1
	slli	%r2 %r2 2
	add	%r4 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r7 0
	neg.s	%f8 %f0
	neg.s	%f6 %f1
	neg.s	%f7 %f5
	mov	%r7 %r2
	sw.s	%r2 %f0 0
	addi	%r7 %r2 4
	sw.s	%r2 %f1 0
	addi	%r7 %r2 8
	sw.s	%r2 %f5 0
	addi	%r6 %r2 41
	slli	%r2 %r2 2
	add	%r4 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 0
	neg.s	%f8 %f1
	neg.s	%f7 %f0
	mov	%r2 %r7
	sw.s	%r7 %f1 0
	addi	%r2 %r7 4
	sw.s	%r7 %f0 0
	addi	%r2 %r2 8
	sw.s	%r2 %f6 0
	addi	%r6 %r2 81
	slli	%r2 %r2 2
	add	%r4 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r4 0
	neg.s	%f7 %f0
	mov	%r4 %r2
	sw.s	%r2 %f0 0
	addi	%r4 %r2 4
	sw.s	%r2 %f8 0
	addi	%r4 %r2 8
	sw.s	%r2 %f6 0
postloop_b.64 :
preloop_b.66 :
	mtc1	%r1 %f0
	mul.s	%f4 %f0 %f0
	ilw.s	%r0 %f7 l.92
	add.s	%f7 %f0 %f6
	addi	%r6 %r7 2
	mov	%r5 %r2
	mov.s	%f2 %f0
	mov.s	%f2 %f1
	addi	%r0 %r4 5
calc_dirvec_loop.1 :
	ble	%r4 %r2 tail_b.3018
branching_b.1894 :
	mul.s	%f1 %f1 %f0
	add.s	%f7 %f0 %f0
	sqrt.s	%f0 %f9
	ilw.s	%r0 %f8 l.56
	div.s	%f9 %f8 %f1
	fbg	%f2 %f1 branching_b.1897
branching_b.1895 :
	ilw.s	%r0 %f0 l.80
	fbge	%f1 %f0 branching_b.1896
tail_b.3019 :
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f11
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f5
	mul.s	%f10 %f11 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f10 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f1 %f0 %f11
	mul.s	%f10 %f5 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f1 %f4 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f1 %f5 %f5
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	j	branching_b.1899
branching_b.1896 :
	ilw.s	%r0 %f0 l.81
	fbge	%f1 %f0 tail_b.3021
tail_b.3020 :
	sub.s	%f8 %f1 %f5
	add.s	%f8 %f1 %f0
	div.s	%f0 %f5 %f10
	ilw.s	%r0 %f11 l.59
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f10 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f5
	mul.s	%f10 %f4 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f8 %f0 %f0
	j	branching_b.1899
tail_b.3021 :
	div.s	%f1 %f8 %f10
	ilw.s	%r0 %f11 l.58
	ilw.s	%r0 %f1 l.89
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f12
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f10 %f5 %f5
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.84
	mul.s	%f10 %f5 %f5
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f13
	mul.s	%f12 %f5 %f0
	add.s	%f0 %f13 %f0
	mul.s	%f10 %f4 %f5
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f12 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f11 %f0 %f0
	j	branching_b.1899
branching_b.1897 :
	neg.s	%f1 %f11
	ilw.s	%r0 %f0 l.80
	fbge	%f11 %f0 branching_b.1898
tail_b.3022 :
	ilw.s	%r0 %f10 l.58
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f12
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f12 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f11 %f4 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f11 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f10 %f0 %f0
	j	branching_b.1899
branching_b.1898 :
	ilw.s	%r0 %f0 l.81
	fbge	%f11 %f0 tail_b.3024
tail_b.3023 :
	sub.s	%f8 %f11 %f1
	add.s	%f8 %f11 %f0
	div.s	%f0 %f1 %f11
	ilw.s	%r0 %f12 l.58
	ilw.s	%r0 %f10 l.59
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f11 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f13
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f13 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f11 %f4 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f12 %f0 %f0
	j	branching_b.1899
tail_b.3024 :
	div.s	%f11 %f8 %f11
	ilw.s	%r0 %f5 l.89
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f10
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f10 %f10
	add.s	%f10 %f0 %f10
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f10 %f10
	add.s	%f10 %f0 %f0
	mul.s	%f11 %f4 %f10
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f10 %f10
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f10 %f10
	add.s	%f10 %f0 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	branching_b.1899
tail_b.3018 :
	mul.s	%f0 %f0 %f4
	mul.s	%f1 %f1 %f2
	add.s	%f2 %f4 %f2
	ilw.s	%r0 %f5 l.56
	add.s	%f5 %f2 %f2
	sqrt.s	%f2 %f4
	div.s	%f4 %f0 %f2
	div.s	%f4 %f1 %f1
	div.s	%f4 %f5 %f6
	slli	%r3 %r2 2
	addi	%r2 %r2 716
	lw	%r2 %r8 0
	slli	%r7 %r2 2
	add	%r8 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r4 0
	mov	%r4 %r2
	sw.s	%r2 %f2 0
	addi	%r4 %r2 4
	sw.s	%r2 %f1 0
	addi	%r4 %r2 8
	sw.s	%r2 %f6 0
	addi	%r7 %r2 40
	slli	%r2 %r2 2
	add	%r8 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r4 0
	neg.s	%f1 %f0
	mov	%r4 %r2
	sw.s	%r2 %f2 0
	addi	%r4 %r2 4
	sw.s	%r2 %f6 0
	addi	%r4 %r2 8
	sw.s	%r2 %f0 0
	addi	%r7 %r2 80
	slli	%r2 %r2 2
	add	%r8 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r4 0
	neg.s	%f2 %f0
	neg.s	%f1 %f4
	mov	%r4 %r2
	sw.s	%r2 %f6 0
	addi	%r4 %r2 4
	sw.s	%r2 %f0 0
	addi	%r4 %r2 8
	sw.s	%r2 %f4 0
	addi	%r7 %r2 1
	slli	%r2 %r2 2
	add	%r8 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r4 0
	neg.s	%f2 %f0
	neg.s	%f1 %f5
	neg.s	%f6 %f4
	mov	%r4 %r2
	sw.s	%r2 %f0 0
	addi	%r4 %r2 4
	sw.s	%r2 %f5 0
	addi	%r4 %r2 8
	sw.s	%r2 %f4 0
	addi	%r7 %r2 41
	slli	%r2 %r2 2
	add	%r8 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r2 0
	neg.s	%f2 %f4
	neg.s	%f6 %f0
	mov	%r2 %r4
	sw.s	%r4 %f4 0
	addi	%r2 %r4 4
	sw.s	%r4 %f0 0
	addi	%r2 %r2 8
	sw.s	%r2 %f1 0
	addi	%r7 %r2 81
	slli	%r2 %r2 2
	add	%r8 %r2 %r2
	lw	%r2 %r2 0
	lw	%r2 %r4 0
	neg.s	%f6 %f0
	mov	%r4 %r2
	sw.s	%r2 %f0 0
	addi	%r4 %r2 4
	sw.s	%r2 %f2 0
	addi	%r4 %r2 8
	sw.s	%r2 %f1 0
postloop_b.65 :
branching_b.1904 :
	addi	%r1 %r2 -1
	addi	%r3 %r3 1
	addi	%r0 %r1 5
	ble	%r1 %r3 tail_b.3032
tail_b.3033 :
	j	tail_b.3034
tail_b.3032 :
	addi	%r3 %r3 -5
tail_b.3034 :
	mov	%r2 %r1
	j	calc_dirvecs_loop.0
branching_b.1899 :
	mul.s	%f6 %f0 %f0
	sw	%r26 %r6 0
	sw.s	%r26 %f3 -4
	sw	%r26 %r5 -8
	sw	%r26 %r1 -12
	sw	%r26 %r3 -16
	sw.s	%r26 %f4 -20
	sw.s	%r26 %f2 -24
	sw.s	%r26 %f7 -28
	sw.s	%r26 %f6 -32
	sw	%r26 %r7 -36
	sw	%r26 %r4 -40
	sw	%r26 %r2 -44
	sw.s	%r26 %f9 -48
	sw.s	%r26 %f8 -52
	sw.s	%r26 %f0 -56
	sw	%r26 %r28 -60
	addi	%r26 %r26 -64
	jal	sin.0
	addi	%r26 %r26 64
	lw	%r26 %r28 -60
	mov.s	%f0 %f1
	lw.s	%r26 %f0 -56
	sw.s	%r26 %f1 -60
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	cos.0
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw.s	%r26 %f1 -60
	div.s	%f0 %f1 %f0
	lw.s	%r26 %f9 -48
	mul.s	%f9 %f0 %f9
	lw	%r26 %r2 -44
	addi	%r2 %r2 1
	mul.s	%f9 %f9 %f0
	lw.s	%r26 %f7 -28
	add.s	%f7 %f0 %f0
	sqrt.s	%f0 %f10
	lw.s	%r26 %f8 -52
	div.s	%f10 %f8 %f11
	lw	%r26 %r6 0
	lw.s	%r26 %f3 -4
	lw	%r26 %r5 -8
	lw	%r26 %r1 -12
	lw	%r26 %r3 -16
	lw.s	%r26 %f4 -20
	lw.s	%r26 %f2 -24
	lw.s	%r26 %f6 -32
	lw	%r26 %r7 -36
	lw	%r26 %r4 -40
	fbg	%f2 %f11 branching_b.1902
branching_b.1900 :
	ilw.s	%r0 %f0 l.80
	fbge	%f11 %f0 branching_b.1901
tail_b.3025 :
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f12
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f5
	mul.s	%f12 %f1 %f0
	add.s	%f0 %f5 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f5
	mul.s	%f12 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f11 %f4 %f1
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f11 %f1 %f1
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.3031
branching_b.1901 :
	ilw.s	%r0 %f0 l.81
	fbge	%f11 %f0 tail_b.3027
tail_b.3026 :
	sub.s	%f8 %f11 %f1
	add.s	%f8 %f11 %f0
	div.s	%f0 %f1 %f11
	ilw.s	%r0 %f5 l.59
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f12
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.85
	mul.s	%f11 %f1 %f1
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f11 %f4 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f0
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.3031
tail_b.3027 :
	div.s	%f11 %f8 %f1
	ilw.s	%r0 %f8 l.58
	ilw.s	%r0 %f11 l.89
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f12
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f0
	mul.s	%f12 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f13
	mul.s	%f12 %f5 %f0
	add.s	%f0 %f13 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f1 %f5 %f5
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f4 %f5
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f5 %f13
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f5
	mul.s	%f12 %f13 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.3031
branching_b.1902 :
	neg.s	%f11 %f11
	ilw.s	%r0 %f0 l.80
	fbge	%f11 %f0 branching_b.1903
tail_b.3028 :
	ilw.s	%r0 %f8 l.58
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f12
	mul.s	%f1 %f5 %f0
	add.s	%f0 %f12 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f12
	mul.s	%f1 %f5 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f11 %f4 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f11 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f8 %f0 %f0
	j	tail_b.3031
branching_b.1903 :
	ilw.s	%r0 %f0 l.81
	fbge	%f11 %f0 tail_b.3030
tail_b.3029 :
	sub.s	%f8 %f11 %f1
	add.s	%f8 %f11 %f0
	div.s	%f0 %f1 %f11
	ilw.s	%r0 %f12 l.58
	ilw.s	%r0 %f8 l.59
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f5 l.83
	mul.s	%f11 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f13
	mul.s	%f1 %f5 %f0
	add.s	%f0 %f13 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f11 %f4 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.87
	mul.s	%f11 %f5 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f12 %f0 %f0
	j	tail_b.3031
tail_b.3030 :
	div.s	%f11 %f8 %f11
	ilw.s	%r0 %f12 l.89
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f11 %f4 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.87
	mul.s	%f11 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f8 %f0 %f0
tail_b.3031 :
	mul.s	%f3 %f0 %f1
	sw	%r26 %r6 -64
	sw.s	%r26 %f3 -68
	sw	%r26 %r5 -72
	sw	%r26 %r1 -76
	sw	%r26 %r3 -80
	sw.s	%r26 %f4 -84
	sw.s	%r26 %f2 -88
	sw.s	%r26 %f7 -92
	sw.s	%r26 %f6 -96
	sw	%r26 %r7 -100
	sw	%r26 %r4 -104
	sw.s	%r26 %f9 -108
	sw	%r26 %r2 -112
	sw.s	%r26 %f10 -116
	sw.s	%r26 %f1 -120
	mov.s	%f1 %f0
	sw	%r26 %r28 -124
	addi	%r26 %r26 -128
	jal	sin.0
	addi	%r26 %r26 128
	lw	%r26 %r28 -124
	lw.s	%r26 %f1 -120
	sw.s	%r26 %f0 -124
	mov.s	%f1 %f0
	sw	%r26 %r28 -128
	addi	%r26 %r26 -132
	jal	cos.0
	addi	%r26 %r26 132
	lw	%r26 %r28 -128
	mov.s	%f0 %f1
	lw.s	%r26 %f0 -124
	div.s	%f1 %f0 %f0
	lw.s	%r26 %f10 -116
	mul.s	%f10 %f0 %f1
	lw	%r26 %r2 -112
	lw.s	%r26 %f9 -108
	mov.s	%f9 %f0
	lw	%r26 %r6 -64
	lw.s	%r26 %f3 -68
	lw	%r26 %r5 -72
	lw	%r26 %r1 -76
	lw	%r26 %r3 -80
	lw.s	%r26 %f4 -84
	lw.s	%r26 %f2 -88
	lw.s	%r26 %f7 -92
	lw.s	%r26 %f6 -96
	lw	%r26 %r7 -100
	lw	%r26 %r4 -104
	j	calc_dirvec_loop.1
branching_b.1888 :
	mul.s	%f6 %f0 %f1
	sw	%r26 %r6 -128
	sw.s	%r26 %f3 -132
	sw	%r26 %r5 -136
	sw	%r26 %r1 -140
	sw	%r26 %r3 -144
	sw.s	%r26 %f4 -148
	sw.s	%r26 %f6 -152
	sw.s	%r26 %f2 -156
	sw	%r26 %r2 -160
	sw	%r26 %r4 -164
	sw.s	%r26 %f9 -168
	sw.s	%r26 %f8 -172
	sw.s	%r26 %f7 -176
	sw.s	%r26 %f1 -180
	mov.s	%f1 %f0
	sw	%r26 %r28 -184
	addi	%r26 %r26 -188
	jal	sin.0
	addi	%r26 %r26 188
	lw	%r26 %r28 -184
	lw.s	%r26 %f1 -180
	sw.s	%r26 %f0 -184
	mov.s	%f1 %f0
	sw	%r26 %r28 -188
	addi	%r26 %r26 -192
	jal	cos.0
	addi	%r26 %r26 192
	lw	%r26 %r28 -188
	mov.s	%f0 %f1
	lw.s	%r26 %f0 -184
	div.s	%f1 %f0 %f0
	lw.s	%r26 %f8 -172
	mul.s	%f8 %f0 %f8
	lw	%r26 %r4 -164
	addi	%r4 %r4 1
	mul.s	%f8 %f8 %f0
	lw.s	%r26 %f9 -168
	add.s	%f9 %f0 %f0
	sqrt.s	%f0 %f9
	lw.s	%r26 %f7 -176
	div.s	%f9 %f7 %f10
	lw	%r26 %r6 -128
	lw.s	%r26 %f3 -132
	lw	%r26 %r5 -136
	lw	%r26 %r1 -140
	lw	%r26 %r3 -144
	lw.s	%r26 %f4 -148
	lw.s	%r26 %f6 -152
	lw.s	%r26 %f2 -156
	lw	%r26 %r2 -160
	fbg	%f2 %f10 branching_b.1891
branching_b.1889 :
	ilw.s	%r0 %f0 l.80
	fbge	%f10 %f0 branching_b.1890
tail_b.3011 :
	neg.s	%f10 %f0
	mul.s	%f10 %f0 %f5
	ilw.s	%r0 %f0 l.82
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f1 l.83
	mul.s	%f10 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f11
	ilw.s	%r0 %f0 l.85
	mul.s	%f10 %f0 %f1
	mul.s	%f5 %f11 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f4 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f10 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f10 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.3017
branching_b.1890 :
	ilw.s	%r0 %f0 l.81
	fbge	%f10 %f0 tail_b.3013
tail_b.3012 :
	sub.s	%f7 %f10 %f1
	add.s	%f7 %f10 %f0
	div.s	%f0 %f1 %f11
	ilw.s	%r0 %f10 l.59
	neg.s	%f11 %f0
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.82
	mul.s	%f11 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.85
	mul.s	%f11 %f0 %f12
	mul.s	%f1 %f5 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f11 %f4 %f5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f11 %f0 %f12
	mul.s	%f1 %f5 %f0
	add.s	%f0 %f12 %f0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f11 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f7 %f0 %f0
	j	tail_b.3017
tail_b.3013 :
	div.s	%f10 %f7 %f0
	ilw.s	%r0 %f5 l.58
	ilw.s	%r0 %f10 l.89
	neg.s	%f0 %f1
	mul.s	%f0 %f1 %f11
	ilw.s	%r0 %f1 l.82
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f7 l.83
	mul.s	%f0 %f7 %f7
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f7 %f1
	ilw.s	%r0 %f7 l.84
	mul.s	%f0 %f7 %f7
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f7 %f1
	ilw.s	%r0 %f7 l.85
	mul.s	%f0 %f7 %f7
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f7 %f1
	mul.s	%f0 %f4 %f7
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f7 %f1
	ilw.s	%r0 %f7 l.87
	mul.s	%f0 %f7 %f7
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f7 %f1
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f5 %f0 %f0
	j	tail_b.3017
branching_b.1891 :
	neg.s	%f10 %f5
	ilw.s	%r0 %f0 l.80
	fbge	%f5 %f0 branching_b.1892
tail_b.3014 :
	ilw.s	%r0 %f10 l.58
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.82
	mul.s	%f5 %f1 %f7
	ilw.s	%r0 %f1 l.83
	mul.s	%f5 %f1 %f1
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f1 %f1
	ilw.s	%r0 %f7 l.84
	mul.s	%f5 %f7 %f7
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f7 %f7
	ilw.s	%r0 %f1 l.85
	mul.s	%f5 %f1 %f1
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f1 %f7
	mul.s	%f5 %f4 %f1
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f1 %f7
	ilw.s	%r0 %f1 l.87
	mul.s	%f5 %f1 %f1
	mul.s	%f0 %f7 %f7
	add.s	%f7 %f1 %f1
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f10 %f0 %f0
	j	tail_b.3017
branching_b.1892 :
	ilw.s	%r0 %f0 l.81
	fbge	%f5 %f0 tail_b.3016
tail_b.3015 :
	sub.s	%f7 %f5 %f0
	add.s	%f7 %f5 %f1
	div.s	%f1 %f0 %f1
	ilw.s	%r0 %f11 l.58
	ilw.s	%r0 %f10 l.59
	neg.s	%f1 %f0
	mul.s	%f1 %f0 %f7
	ilw.s	%r0 %f0 l.82
	mul.s	%f1 %f0 %f5
	ilw.s	%r0 %f0 l.83
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.84
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.85
	mul.s	%f1 %f5 %f5
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f1 %f4 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f5
	ilw.s	%r0 %f0 l.87
	mul.s	%f1 %f0 %f0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f0 %f0
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f11 %f0 %f0
	j	tail_b.3017
tail_b.3016 :
	div.s	%f5 %f7 %f5
	ilw.s	%r0 %f11 l.89
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f10
	ilw.s	%r0 %f0 l.82
	mul.s	%f5 %f0 %f1
	ilw.s	%r0 %f0 l.83
	mul.s	%f5 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.84
	mul.s	%f5 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.85
	mul.s	%f5 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f5 %f4 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.87
	mul.s	%f5 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f7 %f0 %f0
tail_b.3017 :
	mul.s	%f3 %f0 %f0
	sw	%r26 %r6 -188
	sw.s	%r26 %f3 -192
	sw	%r26 %r5 -196
	sw	%r26 %r1 -200
	sw	%r26 %r3 -204
	sw.s	%r26 %f4 -208
	sw.s	%r26 %f6 -212
	sw.s	%r26 %f2 -216
	sw	%r26 %r2 -220
	sw.s	%r26 %f8 -224
	sw	%r26 %r4 -228
	sw.s	%r26 %f9 -232
	sw.s	%r26 %f0 -236
	sw	%r26 %r28 -240
	addi	%r26 %r26 -244
	jal	sin.0
	addi	%r26 %r26 244
	lw	%r26 %r28 -240
	mov.s	%f0 %f1
	lw.s	%r26 %f0 -236
	sw.s	%r26 %f1 -240
	sw	%r26 %r28 -244
	addi	%r26 %r26 -248
	jal	cos.0
	addi	%r26 %r26 248
	lw	%r26 %r28 -244
	lw.s	%r26 %f1 -240
	div.s	%f0 %f1 %f0
	lw.s	%r26 %f9 -232
	mul.s	%f9 %f0 %f1
	lw	%r26 %r4 -228
	lw.s	%r26 %f8 -224
	lw	%r26 %r6 -188
	lw.s	%r26 %f3 -192
	lw	%r26 %r5 -196
	lw	%r26 %r1 -200
	lw	%r26 %r3 -204
	lw.s	%r26 %f4 -208
	lw.s	%r26 %f6 -212
	lw.s	%r26 %f2 -216
	lw	%r26 %r2 -220
	j	calc_dirvec_loop.2
postloop_b.66 :
return_point.22 :
	retl
create_dirvec_elements.0 :
	mov	%r1 %r31
	mov	%r2 %r1
	mov	%r31 %r2
preloop_b.67 :
	mov	%r1 %r5
create_dirvec_elements_loop.0 :
	ble	%r0 %r5 tail_b.3036
tail_b.3037 :
	j	postloop_b.67
tail_b.3036 :
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r4
	lw	%r0 %r1 0
	sw	%r26 %r2 0
	mov	%r4 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r2 %r4
	lw	%r26 %r2 0
	mov	%r27 %r3
	addi	%r27 %r27 8
	sw	%r3 %r1 4
	sw	%r3 %r4 0
	mov	%r3 %r1
	slli	%r5 %r3 2
	add	%r2 %r3 %r3
	sw	%r3 %r1 0
	addi	%r5 %r1 -1
	mov	%r1 %r5
	j	create_dirvec_elements_loop.0
postloop_b.67 :
return_point.23 :
	retl
init_dirvec_constants.0 :
	mov	%r1 %r31
	mov	%r2 %r1
	mov	%r31 %r2
preloop_b.68 :
	mov	%r1 %r8
init_dirvec_constants_loop.0 :
	ble	%r0 %r8 preloop_b.69
tail_b.3089 :
	j	postloop_b.69
preloop_b.69 :
	slli	%r8 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r7 0
	lw	%r0 %r1 0
	addi	%r1 %r6 -1
iter_setup_dirvec_constants_loop.6 :
	ble	%r0 %r6 branching_b.1908
tail_b.3087 :
	j	postloop_b.68
branching_b.1908 :
	slli	%r6 %r1 2
	addi	%r1 %r1 48
	lw	%r1 %r4 0
	lw	%r7 %r9 4
	lw	%r7 %r3 0
	lw	%r4 %r5 4
	addi	%r0 %r1 1
	beq	%r5 %r1 branching_b.1909
branching_b.1927 :
	addi	%r0 %r1 2
	beq	%r5 %r1 branching_b.1928
branching_b.1930 :
	addi	%r0 %r1 5
	ilw.s	%r0 %f0 l.51
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r5
	mov	%r3 %r1
	lw.s	%r1 %f4 0
	addi	%r3 %r1 4
	lw.s	%r1 %f5 0
	addi	%r3 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f4 %f4 %f3
	lw	%r4 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f3 %f3
	mul.s	%f5 %f5 %f6
	lw	%r4 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f2 %f3
	lw	%r4 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f6 0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f1 %f3
	lw	%r4 %r1 12
	beq	%r1 %r0 tail_b.3077
tail_b.3078 :
	mul.s	%f2 %f5 %f1
	lw	%r4 %r1 36
	lw.s	%r1 %f6 0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f3 %f3
	mul.s	%f4 %f2 %f1
	lw	%r4 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f5 %f4 %f2
	lw	%r4 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f3
	j	branching_b.1931
tail_b.3077 :
	j	branching_b.1931
branching_b.1928 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f1 l.51
	mov.s	%f1 %f0
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r5
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	lw	%r4 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	addi	%r3 %r1 4
	lw.s	%r1 %f3 0
	lw	%r4 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	addi	%r3 %r1 8
	lw.s	%r1 %f3 0
	lw	%r4 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f2
	fbge	%f1 %f2 tail_b.3073
tail_b.3072 :
	addi	%r0 %r1 1
	j	branching_b.1929
tail_b.3073 :
	addi	%r0 %r1 0
	j	branching_b.1929
branching_b.1909 :
	addi	%r0 %r1 6
	ilw.s	%r0 %f1 l.51
	mov.s	%f1 %f0
	sw	%r26 %r28 0
	jal	min_caml_create_float_array
	lw	%r26 %r28 0
	mov	%r1 %r10
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.3039
tail_b.3038 :
	addi	%r0 %r1 1
	j	branching_b.1910
tail_b.3039 :
	addi	%r0 %r1 0
branching_b.1910 :
	beq	%r1 %r0 branching_b.1911
tail_b.3048 :
	ilw.s	%r0 %f0 l.51
	addi	%r10 %r1 4
	sw.s	%r1 %f0 0
	j	branching_b.1915
branching_b.1911 :
	lw	%r4 %r5 24
	mov	%r3 %r1
	lw.s	%r1 %f0 0
	fbge	%f0 %f1 tail_b.3041
tail_b.3040 :
	addi	%r0 %r1 1
	j	branching_b.1912
tail_b.3041 :
	addi	%r0 %r1 0
branching_b.1912 :
	beq	%r5 %r0 tail_b.3042
branching_b.1913 :
	beq	%r1 %r0 tail_b.3043
tail_b.3044 :
	addi	%r0 %r5 0
	j	branching_b.1914
tail_b.3043 :
	addi	%r0 %r5 1
	j	branching_b.1914
tail_b.3042 :
	mov	%r1 %r5
branching_b.1914 :
	lw	%r4 %r1 16
	lw.s	%r1 %f0 0
	beq	%r5 %r0 tail_b.3045
tail_b.3046 :
	j	tail_b.3047
tail_b.3045 :
	neg.s	%f0 %f0
tail_b.3047 :
	mov	%r10 %r1
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f0 l.56
	mov	%r3 %r1
	lw.s	%r1 %f2 0
	div.s	%f2 %f0 %f0
	addi	%r10 %r1 4
	sw.s	%r1 %f0 0
branching_b.1915 :
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.3050
tail_b.3049 :
	addi	%r0 %r1 1
	j	branching_b.1916
tail_b.3050 :
	addi	%r0 %r1 0
branching_b.1916 :
	beq	%r1 %r0 branching_b.1917
tail_b.3059 :
	ilw.s	%r0 %f0 l.51
	addi	%r10 %r1 12
	sw.s	%r1 %f0 0
	j	branching_b.1921
branching_b.1917 :
	lw	%r4 %r5 24
	addi	%r3 %r1 4
	lw.s	%r1 %f0 0
	fbge	%f0 %f1 tail_b.3052
tail_b.3051 :
	addi	%r0 %r1 1
	j	branching_b.1918
tail_b.3052 :
	addi	%r0 %r1 0
branching_b.1918 :
	beq	%r5 %r0 tail_b.3053
branching_b.1919 :
	beq	%r1 %r0 tail_b.3054
tail_b.3055 :
	addi	%r0 %r5 0
	j	branching_b.1920
tail_b.3054 :
	addi	%r0 %r5 1
	j	branching_b.1920
tail_b.3053 :
	mov	%r1 %r5
branching_b.1920 :
	lw	%r4 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	beq	%r5 %r0 tail_b.3056
tail_b.3057 :
	j	tail_b.3058
tail_b.3056 :
	neg.s	%f0 %f0
tail_b.3058 :
	addi	%r10 %r1 8
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f0 l.56
	addi	%r3 %r1 4
	lw.s	%r1 %f2 0
	div.s	%f2 %f0 %f0
	addi	%r10 %r1 12
	sw.s	%r1 %f0 0
branching_b.1921 :
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	fbne	%f0 %f1 tail_b.3061
tail_b.3060 :
	addi	%r0 %r1 1
	j	branching_b.1922
tail_b.3061 :
	addi	%r0 %r1 0
branching_b.1922 :
	beq	%r1 %r0 branching_b.1923
tail_b.3070 :
	ilw.s	%r0 %f0 l.51
	addi	%r10 %r1 20
	sw.s	%r1 %f0 0
	j	tail_b.3071
branching_b.1923 :
	lw	%r4 %r5 24
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	fbge	%f0 %f1 tail_b.3063
tail_b.3062 :
	addi	%r0 %r1 1
	j	branching_b.1924
tail_b.3063 :
	addi	%r0 %r1 0
branching_b.1924 :
	beq	%r5 %r0 tail_b.3064
branching_b.1925 :
	beq	%r1 %r0 tail_b.3065
tail_b.3066 :
	addi	%r0 %r5 0
	j	branching_b.1926
tail_b.3065 :
	addi	%r0 %r5 1
	j	branching_b.1926
tail_b.3064 :
	mov	%r1 %r5
branching_b.1926 :
	lw	%r4 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	beq	%r5 %r0 tail_b.3067
tail_b.3068 :
	j	tail_b.3069
tail_b.3067 :
	neg.s	%f0 %f0
tail_b.3069 :
	addi	%r10 %r1 16
	sw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.56
	addi	%r3 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f0 %f1 %f0
	addi	%r10 %r1 20
	sw.s	%r1 %f0 0
tail_b.3071 :
	slli	%r6 %r1 2
	add	%r9 %r1 %r1
	sw	%r1 %r10 0
tail_b.3086 :
	addi	%r6 %r1 -1
	mov	%r1 %r6
	j	iter_setup_dirvec_constants_loop.6
branching_b.1929 :
	beq	%r1 %r0 tail_b.3074
tail_b.3075 :
	ilw.s	%r0 %f0 l.58
	div.s	%f2 %f0 %f0
	mov	%r5 %r1
	sw.s	%r1 %f0 0
	lw	%r4 %r1 16
	lw.s	%r1 %f0 0
	div.s	%f2 %f0 %f0
	neg.s	%f0 %f0
	addi	%r5 %r1 4
	sw.s	%r1 %f0 0
	lw	%r4 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f0 0
	div.s	%f2 %f0 %f0
	neg.s	%f0 %f0
	addi	%r5 %r1 8
	sw.s	%r1 %f0 0
	lw	%r4 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f0 0
	div.s	%f2 %f0 %f0
	neg.s	%f0 %f0
	addi	%r5 %r1 12
	sw.s	%r1 %f0 0
	j	tail_b.3076
tail_b.3074 :
	ilw.s	%r0 %f0 l.51
	mov	%r5 %r1
	sw.s	%r1 %f0 0
tail_b.3076 :
	slli	%r6 %r1 2
	add	%r9 %r1 %r1
	sw	%r1 %r5 0
	j	tail_b.3086
branching_b.1931 :
	mov	%r3 %r1
	lw.s	%r1 %f2 0
	lw	%r4 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f1
	neg.s	%f1 %f5
	addi	%r3 %r1 4
	lw.s	%r1 %f1 0
	lw	%r4 %r1 16
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	neg.s	%f1 %f4
	addi	%r3 %r1 8
	lw.s	%r1 %f1 0
	lw	%r4 %r1 16
	addi	%r1 %r1 8
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	neg.s	%f1 %f7
	mov	%r5 %r1
	sw.s	%r1 %f3 0
	lw	%r4 %r1 12
	bne	%r1 %r0 tail_b.3079
tail_b.3080 :
	addi	%r5 %r1 4
	sw.s	%r1 %f5 0
	addi	%r5 %r1 8
	sw.s	%r1 %f4 0
	addi	%r5 %r1 12
	sw.s	%r1 %f7 0
	j	branching_b.1932
tail_b.3079 :
	addi	%r3 %r1 8
	lw.s	%r1 %f2 0
	lw	%r4 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f2
	addi	%r3 %r1 4
	lw.s	%r1 %f6 0
	lw	%r4 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f6 %f1
	add.s	%f1 %f2 %f1
	ilw.s	%r0 %f6 l.69
	div.s	%f6 %f1 %f1
	sub.s	%f1 %f5 %f1
	addi	%r5 %r1 4
	sw.s	%r1 %f1 0
	addi	%r3 %r1 8
	lw.s	%r1 %f1 0
	lw	%r4 %r1 36
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f2
	mov	%r3 %r1
	lw.s	%r1 %f5 0
	lw	%r4 %r1 36
	addi	%r1 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f5 %f1
	add.s	%f1 %f2 %f1
	div.s	%f6 %f1 %f1
	sub.s	%f1 %f4 %f1
	addi	%r5 %r1 8
	sw.s	%r1 %f1 0
	addi	%r3 %r1 4
	lw.s	%r1 %f2 0
	lw	%r4 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f2 %f4
	lw.s	%r3 %f1 0
	lw	%r4 %r1 36
	addi	%r1 %r1 4
	lw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f4 %f1
	div.s	%f6 %f1 %f1
	sub.s	%f1 %f7 %f1
	addi	%r5 %r1 12
	sw.s	%r1 %f1 0
branching_b.1932 :
	fbne	%f3 %f0 tail_b.3082
tail_b.3081 :
	addi	%r0 %r1 1
	j	branching_b.1933
tail_b.3082 :
	addi	%r0 %r1 0
branching_b.1933 :
	beq	%r1 %r0 tail_b.3083
tail_b.3084 :
	j	tail_b.3085
tail_b.3083 :
	ilw.s	%r0 %f0 l.56
	div.s	%f3 %f0 %f0
	addi	%r5 %r1 16
	sw.s	%r1 %f0 0
tail_b.3085 :
	slli	%r6 %r1 2
	add	%r9 %r1 %r1
	sw	%r1 %r5 0
	j	tail_b.3086
postloop_b.68 :
tail_b.3088 :
	addi	%r8 %r8 -1
	j	init_dirvec_constants_loop.0
postloop_b.69 :
return_point.24 :
	retl
#libraries
min_caml_create_array :
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
