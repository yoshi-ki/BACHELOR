#!/bin/bash

cp ./test/$1.s ../../simulator/simulator/test/$1.s

INPUT=FALSE

while :
do
    case $1 in
	-i) INPUT=TRUE
	     shift
	     ;;
	--) shift
	    break
	    ;;
	*) break
	   ;;
    esac
done

if [ "$INPUT" = "TRUE" ]; then
    cat ./input.txt > ../../simulator/simulator/input.txt
fi

cd ../../simulator/simulator
rm ./result.bin

make

./simulator ./test/$1.s $2 $3

cp ./result.bin ../../compiler/min-caml/result.ppm

