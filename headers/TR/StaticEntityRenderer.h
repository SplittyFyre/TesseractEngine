#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_STATIC_STATICENTITYRENDERER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_STATIC_STATICENTITYRENDERER

#include "TR/InstancedEntityShader.h"
#include "TR/TRScene.h"

class StaticEntityRenderer {
public:
    StaticEntityRenderer() {};
    ~StaticEntityRenderer() {};

    void render(TRScene *scene);
private:
    InstancedEntityShader shader;

    void prepare(TRScene *scene);
    void prepareTexturedModel(const TexturedModel *model);
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_STATIC_STATICENTITYRENDERER */
