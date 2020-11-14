#!/bin/bash

./min-caml $1

cp ./$1.s ../../simulator/test/$1.s

cd ../../simulator

make

./simulator ./test/$1.s

echo -ne '\n' >> ./result.bin 

cp ./result.bin ../compiler/min-caml/result.txt
