#include "TR/GroupEntity.h"

void GroupEntity::sceneGraphUpdate() {
    for (const auto &child : children) {
        child->sceneGraphUpdate();
    }
}