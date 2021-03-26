#ifndef SRC_ENGINE_COLLISION_DYNAMICBOUNDS
#define SRC_ENGINE_COLLISION_DYNAMICBOUNDS

#include "TR/BoundingVolume.h"

#include <glm/glm.hpp>

class DynamicBounds {
public:
    DynamicBounds(const BoundingVolume &bv) : staticVolume(bv) {};
    ~DynamicBounds() {};

    void update(const glm::vec3 &pos, float maxScale);

    inline const BoundingVolume &getVolume() const { return dynamicVolume; }
private:
    const BoundingVolume staticVolume;
    BoundingVolume dynamicVolume;
};

#endif /* SRC_ENGINE_COLLISION_DYNAMICBOUNDS */
