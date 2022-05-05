/* 32-tap FIR filter processing 1 point */
/* Modified to use arrays - SMP */

//#include "traps.h"

#define NTAPS 320

float input[NTAPS];
float output[NTAPS];
float coefficients[NTAPS] = {0.25, 1.50, 3.75, -2.25, 0.50, 0.75, -3.00, 1.25,
0.25, 1.50, 3.75, -2.25, 0.50, 0.75, -3.00, 1.25,
0.25, 1.50, 3.75, -2.25, 0.50, 0.75, -3.00, 1.25,
0.25, 1.50, 3.75, -2.25, 0.50, 0.75, -3.00, 1.25};

void fir(float input[], float output[], float coefficient[]);

int main()
{

//  input_dsp (input, NTAPS, 0);

  fir(input, output, coefficients);

//  output_dsp (input, NTAPS, 0);
//  output_dsp (coefficients, NTAPS, 0);
//  output_dsp (output, NTAPS, 0);
  return 0;
}

void fir(float input[], float output[], float coefficient[])
/*   input :           input sample array */
/*   output:           output sample array */
/*   coefficient:      coefficient array */
{
  int i;
  int j;
  float sum;
  int* C;
//#pragma clang loop vectorize(enable) interleave(enable)
#pragma clang loop vectorize_width(8) interleave(enable)
  for (i = 0; i < NTAPS; ++i) {
    if (i%8 != 0)
      sum += input[i] * coefficient[i];
  }
  output[0] = sum;
}

