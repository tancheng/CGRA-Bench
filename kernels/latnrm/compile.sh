clang-3.8 -emit-llvm -O3 -fno-unroll-loops -o latnrm.bc -c latnrm_8_1.c
#llvm-dis latnrm.bc -o latnrm.ll
