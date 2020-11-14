#!/bin/bash

#$1==.ml file, $2==input .txt file

./min-caml ./test/$1

cp ./test/$1.s ../../simulator/test/$1.s

if [ $# == 2 ]; then
  cp ./test/$2 ../../simulator/input.txt
fi

cd ../../simulator

make

./simulator ./test/$1.s

if [ -e "result.txt" ]; then
  cat "result.txt"
fi
