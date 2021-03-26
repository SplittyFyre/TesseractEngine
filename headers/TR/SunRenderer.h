#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_SUN_SUNRENDERER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_SUN_SUNRENDERER

#include "TR/SunShader.h"

class SunRenderer {
public:
    SunRenderer() {};
    ~SunRenderer() {};
    void render(TRScene *scene);
private:
    SunShader shader;
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_SUN_SUNRENDERER */
