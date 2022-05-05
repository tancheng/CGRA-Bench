clang-12 -emit-llvm -O3 -fno-unroll-loops -o kernel_new.bc -c kernel.cpp
llvm-dis-12 kernel_new.bc -o kernel_new.ll
