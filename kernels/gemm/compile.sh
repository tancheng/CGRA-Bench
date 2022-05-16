clang-12 -emit-llvm -O3 -Rpass-analysis=loop-vectorize -fno-unroll-loops -o kernel.bc -c gemm.c
llvm-dis-12 kernel.bc -o kernel.ll
#clang -emit-llvm -O3 -o gemm.bc -c gemm.c
#llvm-dis fir.bc -o fir.ll
