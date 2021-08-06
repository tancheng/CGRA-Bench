clang -emit-llvm -O3 -fno-unroll-loops -o gemm.bc -c gemm.c
#clang -emit-llvm -O3 -o gemm.bc -c gemm.c
#llvm-dis fir.bc -o fir.ll
