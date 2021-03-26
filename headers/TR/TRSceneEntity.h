#ifndef SRC_ENGINE_SCENE_ENTITIES_TRSCENEENTITY
#define SRC_ENGINE_SCENE_ENTITIES_TRSCENEENTITY

#include <unordered_map>
#include <vector>
#include <stack>

#include "TR/TexturedModel.h"
#include "TR/TRCamera.h"

#include <glm/glm.hpp>

struct RenderData {
    const glm::mat4 *matrix;
    const int atlasIndex;
};
typedef std::unordered_map<TexturedModel*, std::vector<RenderData>> BatchMap;

class TRSceneEntity {
    friend class TRScene;
    friend class DefrEntityRenderer;
public:
    TRSceneEntity() {};
    virtual ~TRSceneEntity() {};
    virtual void sceneGraphUpdate() = 0;
protected:
    inline void registerModel(TexturedModel *model, const glm::mat4 *matrix, int atlasIndex) {
        if (model->getRawModel()->instanced) {
            instancedBatchMap[model].push_back({matrix, atlasIndex});
        }
        else {
            batchMap[model].push_back({matrix, atlasIndex});
        }
    }
    static BatchMap batchMap, instancedBatchMap;
    static std::stack<glm::mat4*> matrixStack;
    static TRCamera *camera;
};

#endif /* SRC_ENGINE_SCENE_ENTITIES_TRSCENEENTITY */
