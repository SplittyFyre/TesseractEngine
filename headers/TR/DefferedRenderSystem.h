#ifndef HEADERS_TR_DEFFEREDRENDERSYSTEM
#define HEADERS_TR_DEFFEREDRENDERSYSTEM

#include <memory>
#include <future>
#include <glm/glm.hpp>
#include "TR/TRScene.h"
#include "TR/DefrEntityRenderer.h"
#include "TR/StaticEntityRenderer.h"
#include "TR/DefrTerrainRenderer.h"
#include "TR/DefrSkyboxRenderer.h"
#include "TR/PlasticWaterRenderer.h"
#include "TR/FFTWaterRenderer.h"
#include "TR/SunRenderer.h"

class DefferedRenderSystem {
public:
    DefferedRenderSystem(unsigned int maxEntityInstances);
    ~DefferedRenderSystem();

    void renderMainPass(TRScene *scene, std::future<void> &sgUpdate);

private:

    void prepare();

    DefrEntityRenderer defrEntityRenderer;
    DefrTerrainRenderer defrTerrainRenderer;
    DefrSkyboxRenderer defrSkyboxRenderer;
    SunRenderer sunRenderer;

    StaticEntityRenderer staticEntityRenderer;
    PlasticWaterRenderer plasticWaterRenderer;
    FFTWaterRenderer fftWaterRenderer;
};


#endif /* HEADERS_TR_DEFFEREDRENDERSYSTEM */
