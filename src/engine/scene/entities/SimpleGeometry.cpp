#include "TR/SimpleGeometry.h"

void SimpleGeometry::entityUpdate() {
    bounds.update(position, getMaxScale());
    renderModel(model.get(), atlasIndex);
    for (const auto &child : children) {
        child->sceneGraphUpdate();
    }
}