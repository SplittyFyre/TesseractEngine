#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_DEFRENTITYRENDERSYSTEM
#define SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_DEFRENTITYRENDERSYSTEM

#include <glm/glm.hpp>
#include "TR/TexturedModel.h"
#include "TR/DefrEntityShader.h"
#include "TR/InstancedEntityShader.h"
#include "TR/TRScene.h"
#include "TR/TRSceneEntity.h"

class DefrEntityRenderer {
public:
    DefrEntityRenderer(unsigned int maxEntityInstaces);
    ~DefrEntityRenderer();

    void render(TRScene *scene);

private:
    DefrEntityShader shader;
    InstancedEntityShader instancedShader;

    const unsigned int maxInstances;
    float *buffer;
    int bufferPtr = 0;

    void prepareTexturedModel(const TexturedModel *model);
    void prepareTexturedModelInstanced(const TexturedModel *model);
	void prepareInstance(const TexturedModel *model, const RenderData &entity);
    void prepareInstanceInstanced(const TexturedModel *model, const RenderData &entity);
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_DEFRENTITYRENDERSYSTEM */
