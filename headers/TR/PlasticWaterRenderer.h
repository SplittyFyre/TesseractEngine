#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_WATER_PLASTICWATERRENDERER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_WATER_PLASTICWATERRENDERER

#include "TR/PlasticWaterShader.h"

class PlasticWaterRenderer {
public:
    PlasticWaterRenderer() {};
    ~PlasticWaterRenderer() {};
    void render(TRScene *scene);
private:
    PlasticWaterShader shader;
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_WATER_PLASTICWATERRENDERER */
