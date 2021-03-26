#ifndef SRC_ENGINE_SCENE_WATER_FFT_INVERSION_INVERSIONSHADER
#define SRC_ENGINE_SCENE_WATER_FFT_INVERSION_INVERSIONSHADER

#include "TR/ShaderProgram.h"

class InversionShader : public ShaderProgram {
public:
    InversionShader();
    ~InversionShader() {};
    inline void loadN(int N) { loadInt("N", N); }
private:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_SCENE_WATER_FFT_INVERSION_INVERSIONSHADER */
