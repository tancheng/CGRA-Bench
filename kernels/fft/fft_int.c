/* 256-point complex FFT (radix-2, in-place, decimation-in-time) */
/* Integer-only variant with a simple main */

#define NPOINTS 256
#define NSTAGES 8

int data_real[256];
int data_imag[256];
int coef_real[256];
int coef_imag[256];

void kernel(int data_real[], int data_imag[],
            int coef_real[], int coef_imag[]);

int main()
{
  int i;

  for (i = 0; i < NPOINTS; ++i) {
    data_real[i] = i;
    data_imag[i] = 1;
    coef_real[i] = 2;
    coef_imag[i] = 2;
  }

  kernel(data_real, data_imag, coef_real, coef_imag);

  return 0;
}

void kernel(int data_real[], int data_imag[],
            int coef_real[], int coef_imag[])
/* data_real:         real data points */
/* data_imag:         imaginary data points */
/* coef_real:         real coefficient points */
/* coef_imag:         imaginary coefficient points */
{
  int i;
  int j;
  int k;
  int temp_real;
  int temp_imag;
  int Wr;
  int Wi;

  int groupsPerStage = 1;
  int buttersPerGroup = NPOINTS / 2;
  int coef_base = 0;
  for (i = 0; i < NSTAGES; ++i) {
    for (j = 0; j < groupsPerStage; ++j) {
      Wr = coef_real[coef_base + j];
      Wi = coef_imag[coef_base + j];
      for (k = 0; k < buttersPerGroup; ++k) {
        temp_real = Wr * data_real[2*j*buttersPerGroup+buttersPerGroup+k] -
                    Wi * data_imag[2*j*buttersPerGroup+buttersPerGroup+k];
        temp_imag = Wi * data_real[2*j*buttersPerGroup+buttersPerGroup+k] +
                    Wr * data_imag[2*j*buttersPerGroup+buttersPerGroup+k];
        data_real[2*j*buttersPerGroup+buttersPerGroup+k] =
                    data_real[2*j*buttersPerGroup+k] - temp_real;
        data_real[2*j*buttersPerGroup+k] += temp_real;
        data_imag[2*j*buttersPerGroup+buttersPerGroup+k] =
                    data_imag[2*j*buttersPerGroup+k] - temp_imag;
        data_imag[2*j*buttersPerGroup+k] += temp_imag;
      }
    }
    groupsPerStage = groupsPerStage * 2;
    buttersPerGroup = buttersPerGroup / 2;
    coef_base = (coef_base << 1) + 1;
  }
}
