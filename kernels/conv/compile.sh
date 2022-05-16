clang-12 -emit-llvm -O3 -fno-unroll-loops -o conv.bc -c conv.c
#clang -emit-llvm -O3 -o conv.bc -c conv.c
llvm-dis-12 conv.bc -o conv.ll
