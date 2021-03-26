#ifndef SRC_ENGINE_SCENE_ENTITIES_ROOTENTITY
#define SRC_ENGINE_SCENE_ENTITIES_ROOTENTITY

#include "TR/TRSceneEntity.h"

#include <list>

class GroupEntity : public TRSceneEntity {
public:
    GroupEntity() {};
    ~GroupEntity() {};
    void sceneGraphUpdate() override;
    inline void addChild(const std::shared_ptr<TRSceneEntity> &child) {
        children.push_back(child);
    }
    inline void removeChild(const std::shared_ptr<TRSceneEntity> &child) {
        children.remove(child);
    }

    std::list<std::shared_ptr<TRSceneEntity>> children;
};

#endif /* SRC_ENGINE_SCENE_ENTITIES_ROOTENTITY */
