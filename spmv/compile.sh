clang -emit-llvm -fno-unroll-loops -O3 -o spmv.bc -c spmv.c
#llvm-dis fir.bc -o fir.ll
