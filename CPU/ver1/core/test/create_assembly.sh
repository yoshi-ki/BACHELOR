#!/bin/bash

#$1== .sld file

cd ../../compiler/min-caml

make

./min-caml ../../core/test/$1

mv ./$1.s ../../core/test/$1.s

cd ../../simulator

make

./simulator ../core/test/$1.s -a

cp machine_code.txt ../core/test/machine_code.txt

