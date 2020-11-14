#!/bin/bash

#$1== .sld file

./min-caml ./data/raytracer/minrt

cp ./data/raytracer/minrt.s ../../simulator/test/minrt.s

cp ./data/raytracer/sld/$1.sld ../../simulator/input.txt

cd ../../simulator

make

./simulator ./test/minrt.s

if [ -e "result.bin" ]; then
  cat "result.bin"
fi
