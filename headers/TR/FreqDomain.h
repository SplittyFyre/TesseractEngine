#ifndef SRC_ENGINE_SCENE_WATER_FFT_FREQDOMAIN
#define SRC_ENGINE_SCENE_WATER_FFT_FREQDOMAIN

#include "TR/FFTPreComp.h"
#include "TR/TRLoader.h"
#include "TR/FreqShader.h"
#include "TR/FFTCtx.h"

class FreqDomain {
public:
    FreqDomain(const FFTCtx &ctx, FFTData fftdat) :
    hkt(TRLoader::genTexStorage2D(ctx.N, GL_RGBA32F)),
    chop_hkt(TRLoader::genTexStorage2D(ctx.N, GL_RGBA32F)),
    ctx(ctx),
    fftdat(fftdat) {};

    ~FreqDomain() {};
    void update();
    TRTexture * const hkt;
    TRTexture * const chop_hkt;
private:
    const FFTCtx ctx;
    FFTData fftdat;
    FreqShader shader;
    float time = 0.f;
};

#endif /* SRC_ENGINE_SCENE_WATER_FFT_FREQDOMAIN */
