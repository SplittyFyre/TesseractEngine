#ifndef SRC_ENGINE_SCENE_WATER_FFT_FFTCTX
#define SRC_ENGINE_SCENE_WATER_FFT_FFTCTX

#include <glm/glm.hpp>

struct FFTCtx {
    FFTCtx(int N);
    const int N;
    const int logN;

    float A = 20.f;
    float L = 1000.f;
    float capillarSupression = 0.5f;
    float windpower = 2.f;
    glm::vec2 w = glm::vec2(1.f, 0.f);
    float windspeed = 26.f;
    
    float g = 9.81f;    // jupiter water
    float timestep = 1.f;
};

#endif /* SRC_ENGINE_SCENE_WATER_FFT_FFTCTX */
