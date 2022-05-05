clang-12 -emit-llvm -O3 -fno-vectorize -fno-unroll-loops -o gemm.bc -c gemm.c
llvm-dis-12 gemm.bc -o gemm.ll
#clang -emit-llvm -O3 -o gemm.bc -c gemm.c
#llvm-dis fir.bc -o fir.ll
