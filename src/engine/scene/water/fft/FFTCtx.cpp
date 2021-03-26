#include "TR/FFTCtx.h"

#include <cmath>
#include <cstdio>

FFTCtx::FFTCtx(int N) : N(N), logN(int(std::log2(N))) {
    if (N == 0 || (N & (N - 1)) != 0) {
        printf("ERROR: FFT N value %d is not a power of two\n", N);
        exit(1);
    }
    if (N < 32) {
        printf("ERROR: FFT N value %d is less than 32\n", N);
        exit(1);
    }
}