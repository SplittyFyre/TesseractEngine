#include "TR/DynamicBounds.h"

void DynamicBounds::update(const glm::vec3 &pos, float maxScale) {

    dynamicVolume.sphere.x = pos.x;
    dynamicVolume.sphere.y = pos.y;
    dynamicVolume.sphere.z = pos.z;
    
    dynamicVolume.sphere.radius = staticVolume.sphere.radius * maxScale;
}