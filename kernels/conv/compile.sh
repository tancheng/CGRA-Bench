clang -emit-llvm -O3 -fno-unroll-loops -o conv.bc -c conv.c
#clang -emit-llvm -O3 -o conv.bc -c conv.c
#llvm-dis fir.bc -o fir.ll
