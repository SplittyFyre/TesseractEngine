#ifndef SRC_ENGINE_SCENE_WATER_FFT_FFTPRECOMP
#define SRC_ENGINE_SCENE_WATER_FFT_FFTPRECOMP

#include "TR/TRTexture.h"

#include "TR/FFTCtx.h"

struct FFTData {
    TRTexture * const h0k;
    TRTexture * const h0minusk;
    TRTexture * const twiddle;
};

class FFTPreComp { // needs friendship with TRLoader
public:
    FFTPreComp() = delete;
    ~FFTPreComp() = delete;
    static FFTData compute(const FFTCtx &ctx);
private:
    static TRTexture* computeTwiddle(const FFTCtx &ctx);
    static TRTexture* makeTexture(float *data, int w, int h);
};

#endif /* SRC_ENGINE_SCENE_WATER_FFT_FFTPRECOMP*/
