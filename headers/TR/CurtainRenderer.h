#ifndef SRC_ENGINE_RENDERENGINE_CURTAIN_CURTAINRENDERER
#define SRC_ENGINE_RENDERENGINE_CURTAIN_CURTAINRENDERER

#include "TR/CurtainShader.h"

#include "TR/TRTexture.h"

class CurtainRenderer {
public:
    CurtainRenderer() {};
    ~CurtainRenderer() {};
    void render(float r, float g, float b, float a);
    void render(TRTexture *texture);
private:
    CurtainShader shader;
};

#endif /* SRC_ENGINE_RENDERENGINE_CURTAIN_CURTAINRENDERER */
