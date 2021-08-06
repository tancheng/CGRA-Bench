/* 32-tap FIR filter processing 1 point */
/* Modified to use arrays - SMP */

//#include "traps.h"

#define SIZE 10000

int nnz = 100;
int val[SIZE];
int col[SIZE];
int row[SIZE];
int feature[SIZE];
int output[SIZE];

void spmv(int nnz, int val[], int col[], int row[], int feature[], int output[]);

int main()
{

//  input_dsp (input, NTAPS, 0);

  spmv(nnz, val, col, row, feature, output);

//  output_dsp (input, NTAPS, 0);
//  output_dsp (coefficients, NTAPS, 0);
//  output_dsp (output, NTAPS, 0);
  return 0;
}

void spmv(int nnz, int val[], int col[], int row[], int feature[], int output[])
{
  int i = 0;
  int temp;
  for (i = 0; i < nnz; ++i) {
    i++;
    temp = val[i] * feature[ col[i] ];
    output[ row[i] ] += temp;
  }

}
