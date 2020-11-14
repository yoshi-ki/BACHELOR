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

rm ./result.ppm
cp ./minrt.s ../../simulator/newsimulator/test/minrt.s

cat ./data/raytracer/sld/$1.sld > ../../simulator/newsimulator/input.txt

cd ../../simulator/newsimulator
rm ./result.bin

make

./simulator ./test/minrt.s $2 $3

if [ -e "result.bin" ]; then
    cp "result.bin" ../../compiler/new-mc/result.ppm
fi
