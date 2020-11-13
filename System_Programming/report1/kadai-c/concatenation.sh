#!/bin/sh
for i in `seq -w 0 99`
do 	
	wget http://www.pf.is.s.u-tokyo.ac.jp/syspro/static/kadai1/1.pdf.${i}
done

touch 1.pdf
for i in `seq -w 0 99`
do
	cat 1.pdf.${i} >> 1.pdf
done

for i in `seq -w 0 99`
do
	rm 1.pdf.${i}
done
