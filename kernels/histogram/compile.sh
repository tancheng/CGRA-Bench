#clang-12 -emit-llvm -O3 -fno-unroll-loops -o kernel.bc -c histogram.cpp
clang-12 -emit-llvm -O3 -fno-unroll-loops -Rpass-analysis=loop-vectorize -o kernel.bc -c histogram.cpp
llvm-dis-12 kernel.bc -o kernel.ll
