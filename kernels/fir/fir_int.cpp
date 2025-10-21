/* 32-tap FIR filter processing 1 point */
/* Modified to use arrays - SMP */

//#include "traps.h"

#define NTAPS 32

int input[NTAPS];
int output[NTAPS];
int coefficients[NTAPS] = {
    0, 1, 3, -2, 0, 0, -3, 1,
    0, 1, 3, -2, 0, 0, -3, 1,
    0, 1, 3, -2, 0, 0, -3, 1,
    0, 1, 3, -2, 0, 0, -3, 1};

int kernel(int input[], int output[], int coefficient[]);

int main()
{

//  input_dsp (input, NTAPS, 0);

  int returned_value = kernel(input, output, coefficients);

//  output_dsp (input, NTAPS, 0);
//  output_dsp (coefficients, NTAPS, 0);
//  output_dsp (output, NTAPS, 0);
  output[0] = returned_value;
  return 0;
}

int kernel(int input[], int output[], int coefficient[])
/*   input :           input sample array */
/*   output:           output sample array */
/*   coefficient:      coefficient array */
{
  int i;
  int sum = 0;
  for (i = 0; i < NTAPS; ++i) {
    sum += input[i] * coefficient[i];
  }
  return sum;
}

