#!/bin/bash

rm ./result.ppm
cp ./minrt.s ../../simulator/simulator/test/minrt.s

cat ./data/raytracer/sld/$1.sld > ../../simulator/simulator/input.txt

cd ../../simulator/simulator
rm ./result.bin

make

./simulator ./test/minrt.s

if [ -e "result.bin" ]; then
    cp "result.bin" ../../compiler/min-caml/result.ppm
fi
