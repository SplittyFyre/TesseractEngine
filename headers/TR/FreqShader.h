#ifndef SRC_ENGINE_SCENE_WATER_FFT_FREQDMN_FREQSHADER
#define SRC_ENGINE_SCENE_WATER_FFT_FREQDMN_FREQSHADER

#include "TR/ShaderProgram.h"

class FreqShader : public ShaderProgram {
public:
    FreqShader();
    ~FreqShader() {};
    inline void load(float L, float t, int N) { loadFloat("L", L); loadFloat("time", t); loadInt("N", N); }
private:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_SCENE_WATER_FFT_FREQDMN_FREQSHADER */
