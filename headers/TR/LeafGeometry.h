#ifndef SRC_ENGINE_SCENE_ENTITIES_LEAFGEOMETRY
#define SRC_ENGINE_SCENE_ENTITIES_LEAFGEOMETRY

#include "TR/TRSpatialEntity.h"

#include "TR/DynamicBounds.h"

class LeafGeometry : public TRSpatialEntity<LeafGeometry> {
    friend class TRSpatialEntity<LeafGeometry>;
public:
    LeafGeometry(const std::shared_ptr<TexturedModel> &model,
                    const glm::vec3 &position, float rx, float ry, float rz,
                    const glm::vec3 &scale)
                    : TRSpatialEntity(position, rx, ry, rz, scale), model(model), bounds(*(model->getRawModel()->boundingVolume)) {};
    ~LeafGeometry() {};

    std::shared_ptr<TexturedModel> model;
    int atlasIndex = 0;

    DynamicBounds bounds;
private:
    inline void entityUpdate() { bounds.update(position, getMaxScale()); renderModel(model.get(), atlasIndex); };
};

#endif /* SRC_ENGINE_SCENE_ENTITIES_LEAFGEOMETRY */
