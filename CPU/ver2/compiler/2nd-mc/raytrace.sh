#!/bin/bash

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

if [ -e "result.ppm" ]; then
    rm ./result.ppm
    echo "deleted result.ppm"
fi

cp ./minrt.s ../../simulator/newsimulator/test/minrt.s

cat ./data/raytracer/sld/$1.sld > ../../simulator/newsimulator/input.txt

cd ../../simulator/newsimulator

if [ -e "result.bin" ]; then
    rm ./result.bin
    echo "deleted result.bin"
fi

make

./simulator ./test/minrt.s $2 $3

if [ -e "result.bin" ]; then
    cp "result.bin" ../../compiler/2nd-mc/result.ppm
    cp "result.bin" ../../compiler/2nd-mc/result.txt
fi
