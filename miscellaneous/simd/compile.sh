clang -emit-llvm -O3 -fno-unroll-loops -o kernel.bc -c kernel.cpp
llvm-dis kernel.bc -o kernel.ll
