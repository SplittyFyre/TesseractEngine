#ifndef HEADERS_TR_SUNSHADER
#define HEADERS_TR_SUNSHADER

#include "TR/ShaderProgram.h"

#include "TR/TRScene.h"

class SunShader : public ShaderProgram {
public:
    SunShader();
    ~SunShader() {};
    void loadUniforms(TRScene *scene);
protected:
    void getAllUniformLocations() override;
};

#endif /* HEADERS_TR_SUNSHADER */
