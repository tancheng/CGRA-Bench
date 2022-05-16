clang-12 -emit-llvm -fno-unroll-loops -Rpass-analysis=loop-vectorize -O3 -o kernel.bc -c spmv.c
llvm-dis-12 kernel.bc -o kernel.ll
