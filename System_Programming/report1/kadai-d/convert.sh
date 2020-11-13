#!/bin/sh
for filename in *.cpp
do
	mv ${filename} ${filename%.cpp}.cc
	cat ${filename%.cpp}.cc | sed -e '2s/NEET the 3rd/Yoshiki Fujiwara/g' > ${filename1%.cpp}.cc
	cp ${filename1%.cpp}.cc ${filename%.cpp}.cc
	rm ${filename1%.cpp}.cc

	cat ${filename%.cpp}.cc | sed -e '2s/neet3@example.com/yoshiyoshi_utokyo@icloud.com/g' > ${filename1%.cpp}.cc
	cp ${filename1%.cpp}.cc ${filename%.cpp}.cc
	rm ${filename1%.cpp}.cc

	cat ${filename%.cpp}.cc | sed -e 's/[ \t]*$//' > ${filename1%.cpp}.cc
	cp ${filename1%.cpp}.cc ${filename%.cpp}.cc
	rm ${filename1%.cpp}.cc

done
