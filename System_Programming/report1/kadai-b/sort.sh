#!/bin/sh
find coreutils-8.9 -name "*.c"|xargs wc -l|sort -n|awk '{print $2}'> result.txt

