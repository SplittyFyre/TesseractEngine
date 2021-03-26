#ifndef SRC_ENGINE_POST_FXAA_FXAASHADER
#define SRC_ENGINE_POST_FXAA_FXAASHADER

#include "TR/ShaderProgram.h"

class FXAAShader : public ShaderProgram {
public:
    FXAAShader();
    ~FXAAShader() {};
    void loadUniforms(float edgeMin, float edgeMax);
protected:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_POST_FXAA_FXAASHADER */
