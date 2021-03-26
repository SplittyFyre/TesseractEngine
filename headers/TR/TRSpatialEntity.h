#ifndef SRC_ENGINE_SCENE_ENTITIES_TRSPATIALENTITY
#define SRC_ENGINE_SCENE_ENTITIES_TRSPATIALENTITY

#include "TR/TRSceneEntity.h"

#include "TR/TRMath.h"

template <typename T>
class TRSpatialEntity : public TRSceneEntity {
public:
    TRSpatialEntity(const glm::vec3 &position, float rx, float ry, float rz, const glm::vec3 &scale)
    : position(position), rotX(rx), rotY(ry), rotZ(rz), scale(scale) {};
    virtual ~TRSpatialEntity() {};
    
    void sceneGraphUpdate() override;

    glm::vec3 position;
	float rotX = 0.f, rotY = 0.f, rotZ = 0.f;
	glm::vec3 scale;

    inline const glm::vec3 &getWorldPos() const { return worldPosition; }
    inline float getMaxScale() const { return maxScale; }
private:
    glm::vec3 worldPosition;
    float maxScale;
    glm::mat4 transform, nsTransform;

    void calculate();
protected:
    inline void renderModel(TexturedModel *model, int atlasIndex = 0) {
        if (TRSceneEntity::camera->frustumCheck(worldPosition, model->getRawModel()->boundingVolume->sphere.radius * maxScale)) {
            registerModel(model, &transform, atlasIndex);
        }
    }
    inline void renderModel_f(TexturedModel *model, int atlasIndex = 0) {
        registerModel(model, &transform, atlasIndex);
    }
};

template <typename T>
void TRSpatialEntity<T>::sceneGraphUpdate() {
    calculate();
    TRSceneEntity::matrixStack.push(&nsTransform);
    static_cast<T*>(this)->entityUpdate();
    TRSceneEntity::matrixStack.pop();
}

template <typename T>
void TRSpatialEntity<T>::calculate() {
    TRMath::createTransformationMatrix(&nsTransform, position, rotX, rotY, rotZ);
    if (TRSceneEntity::matrixStack.empty()) {
        transform = nsTransform * glm::scale(scale);
        worldPosition = position;
    }
    else {
        //transform = (*matrixStack.top()) * transform;
        //nsTransform = (*matrixStack.top()) * nsTransform;
        nsTransform = (*matrixStack.top()) * nsTransform;
        transform = nsTransform * glm::scale(scale);
        worldPosition.x = transform[3][0]; worldPosition.y = transform[3][1]; worldPosition.z = transform[3][2];
    }
    maxScale = std::max(scale.x, std::max(scale.y, scale.z));
}

#endif /* SRC_ENGINE_SCENE_ENTITIES_TRSPATIALENTITY */
