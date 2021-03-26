#ifndef SRC_ENGINE_RENDERENGINE_FX_LENSFLARE_FLARERENDERER
#define SRC_ENGINE_RENDERENGINE_FX_LENSFLARE_FLARERENDERER

#include "TR/FlareShader.h"
#include "TR/FlareQueryShader.h"

#include "TR/TRLoader.h"
#include "TR/TRScene.h"

class FlareRenderer {
public:
    FlareRenderer() {};
    ~FlareRenderer() {};
    void render(TRScene *scene);
    void doQuery(TRScene *scene);
private:
    float coverage = 0.f;
    void actualRender(TRLensFlare *flare, float brightness, const glm::vec2 &toCenter, const glm::vec2 &sunPos);
    FlareShader shader;
    FlareQueryShader queryShader;
    GLQuery *query = TRLoader::genQuery(GL_SAMPLES_PASSED);
};

#endif /* SRC_ENGINE_RENDERENGINE_FX_LENSFLARE_FLARERENDERER */
