#ifndef SRC_ENGINE_SCENE_ENTITIES_SIMPLEGEOMETRY
#define SRC_ENGINE_SCENE_ENTITIES_SIMPLEGEOMETRY

#include "TR/TRSpatialEntity.h"
#include "TR/DynamicBounds.h"

#include <memory>
#include <list>

class SimpleGeometry : public TRSpatialEntity<SimpleGeometry> {
    friend class TRSpatialEntity<SimpleGeometry>;
public:
    SimpleGeometry(const std::shared_ptr<TexturedModel> &model,
                    const glm::vec3 &position, float rx, float ry, float rz,
                    const glm::vec3 &scale)
                    : TRSpatialEntity(position, rx, ry, rz, scale), model(model), bounds(*(model->getRawModel()->boundingVolume)) {};
    ~SimpleGeometry() {};

    std::shared_ptr<TexturedModel> model;
    int atlasIndex = 0;

    inline void addChild(const std::shared_ptr<TRSceneEntity> &child) {
        children.push_back(child);
    }
    inline void removeChild(const std::shared_ptr<TRSceneEntity> &child) {
        children.remove(child);
    }

    DynamicBounds bounds;

private:
    void entityUpdate();
    std::list<std::shared_ptr<TRSceneEntity>> children;
};

#endif /* SRC_ENGINE_SCENE_ENTITIES_SIMPLEGEOMETRY */
