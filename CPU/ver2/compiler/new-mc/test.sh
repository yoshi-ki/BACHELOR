#!/bin/bash

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
    cat ./input.txt > ../../simulator/newsimulator/input.txt
fi

cp ./test/$1.s ../../simulator/newsimulator/test/$1.s

cd ../../simulator/newsimulator
rm ./result.bin

make

./simulator ./test/$1.s $2 $3

if [ -e "result.bin" ]; then
    cp ./result.bin ../../compiler/new-mc/result.txt
fi
