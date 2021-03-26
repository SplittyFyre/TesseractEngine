#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_FFTWATER_FFTWATERRENDERER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_FFTWATER_FFTWATERRENDERER

#include "TR/TRScene.h"
#include "TR/FFTWaterShader.h"

class FFTWaterRenderer {
public:
    FFTWaterRenderer() {};
    ~FFTWaterRenderer() {};
    void render(TRScene *scene);
private:
    FFTWaterShader shader;
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_FFTWATER_FFTWATERRENDERER */
