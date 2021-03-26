#ifndef SRC_ENGINE_RENDERENGINE_FX_LENSFLARE_QUERY_FLAREQUERYSHADER
#define SRC_ENGINE_RENDERENGINE_FX_LENSFLARE_QUERY_FLAREQUERYSHADER

#include "TR/ShaderProgram.h"

#include "TR/TRScene.h"

class FlareQueryShader : public ShaderProgram {
public:
    FlareQueryShader();
    ~FlareQueryShader() {};
    void loadUniforms(TRScene *scene);
protected:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_RENDERENGINE_FX_LENSFLARE_QUERY_FLAREQUERYSHADER */
