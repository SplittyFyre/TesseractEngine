#ifndef SRC_ENGINE_POST_GAUSSIANBLUR_SHADER_BLURSHADER
#define SRC_ENGINE_POST_GAUSSIANBLUR_SHADER_BLURSHADER

#include "TR/ShaderProgram.h"

class BlurShader: public ShaderProgram {
public:
    BlurShader();
    ~BlurShader() {};

    inline void loadDirection(float x, float y) {
        loadVec2("direction", x, y);
    }
    inline void loadResolution(float f) {
        loadFloat("resolution", f);
    }

protected:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_POST_GAUSSIANBLUR_SHADER_BLURSHADER */
