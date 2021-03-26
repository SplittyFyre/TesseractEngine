#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_SKYBOX_DEFRSKYBOXRENDERER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_SKYBOX_DEFRSKYBOXRENDERER

#include "TR/DefrSkyboxShader.h"
#include "TR/TRScene.h"

class DefrSkyboxRenderer {
public:
    DefrSkyboxRenderer();
    virtual ~DefrSkyboxRenderer();

    void render(TRScene *scene);
private:
    DefrSkyboxShader shader;
    void bindTextures(const TRSkyBox &skybox);
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_SKYBOX_DEFRSKYBOXRENDERER */
