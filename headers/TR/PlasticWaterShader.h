#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_WATER_PLASTICWATERSHADER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_WATER_PLASTICWATERSHADER

#include "TR/ShaderProgram.h"

#include "TR/TRScene.h"

class PlasticWaterShader : public ShaderProgram {
public:
    PlasticWaterShader();
    ~PlasticWaterShader() {};

    void loadUniforms(TRScene *scene);

protected:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_WATER_PLASTICWATERSHADER */
