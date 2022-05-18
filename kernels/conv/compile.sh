clang-12 -emit-llvm -O3 -fno-unroll-loops -o kernel.bc -c conv.c
#opt-12 --loop-unroll --unroll-count=2 kernel.bc -o kernel.bc
llvm-dis-12 kernel.bc -o kernel.ll
