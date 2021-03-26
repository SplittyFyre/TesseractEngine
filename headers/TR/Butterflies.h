#ifndef SRC_ENGINE_SCENE_WATER_FFT_BUTTERFLY_BUTTERFLIES
#define SRC_ENGINE_SCENE_WATER_FFT_BUTTERFLY_BUTTERFLIES

#include "TR/FFTPreComp.h"
#include "TR/FFTCtx.h"
#include "TR/FreqDomain.h"
#include "TR/ButterflyShader.h"
#include "TR/InversionShader.h"
#include "TR/TRLoader.h"

class Butterflies {
public:
    Butterflies(const FFTCtx &ctx, FFTData fftdat) :
    displacement(TRLoader::genTexStorage2D(ctx.N, GL_RGBA32F)),
    ctx(ctx),
    fftdat(fftdat),
    pong(TRLoader::genTexStorage2D(ctx.N, GL_RGBA32F, true)),
    chop_pong(TRLoader::genTexStorage2D(ctx.N, GL_RGBA32F)) {};

    ~Butterflies() {};
    void update(const FreqDomain &freqdomain);

    TRTexture *displacement;
public:
    const FFTCtx ctx;
    FFTData fftdat;
    TRTexture * const pong;
    TRTexture * const chop_pong;

    ButterflyShader shader;
    InversionShader inversionShader;
};

#endif /* SRC_ENGINE_SCENE_WATER_FFT_BUTTERFLY_BUTTERFLIES */
