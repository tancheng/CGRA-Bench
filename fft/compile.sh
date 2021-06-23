clang -emit-llvm -O3 -fno-unroll-loops -o fft.bc -c fft_256.c
#llvm-dis fft.bc -o fft.ll
