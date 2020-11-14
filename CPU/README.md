# CPU-exprtiment-2
2019-CPUexperiment group2

This project is focused on creating the processor that can compile ray trace program which is written in Ocaml. Ver2 contains final processor.

## ISA

This ISA is created based on MIPS ISA.

(https://docs.google.com/spreadsheets/d/1S7Tib46fWvVVH2yp3mJZjy4btH2G-5mOYBWfz0f_rwY/edit?usp=sharing)

Sorry that ISA is written in Japanese :(

## Compiler
Compiler is modified version of mincaml(http://esumii.github.io/min-caml/). Some optimizations are additionally implemented based on it. These optimizations successfully eliminates nearly 75% of instructions compared with naive mincaml.

## Core
This directory contains code for processor core. This core is 6 line pipeline. (Fetch, Decode, Exec1, Exec2, Exec3, Store).
cpu.v is the main part of the processor.

## Simulator
New simulator directory is the best version. New fast simulator a faster version. This simulator contains some options for debugging. Please read README in the directory.

## FPU
FPU contains fadd, fsub, fmul, fdiv, fsqrt, and some easy implementaion like (compare, neg). For fdiv, newton raphson method is used. To compute the value of inverse and square root, Newton method is used.