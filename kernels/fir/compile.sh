clang -emit-llvm -fno-unroll-loops -O3 -o fir.bc -c fir.cpp
#llvm-dis fir.bc -o fir.ll
