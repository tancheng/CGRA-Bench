clang-3.8 -emit-llvm -fno-unroll-loops -O3 -o fir.bc -c fir.c
#llvm-dis fir.bc -o fir.ll
