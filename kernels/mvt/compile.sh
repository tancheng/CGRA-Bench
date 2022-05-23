clang-12 -emit-llvm -O3 -Rpass-analysis=loop-vectorize -fno-unroll-loops -o kernel.bc -c mvt.c
llvm-dis-12 kernel.bc -o kernel.ll
