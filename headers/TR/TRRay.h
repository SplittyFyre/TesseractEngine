#ifndef SRC_ENGINE_UTIL_TRRAY
#define SRC_ENGINE_UTIL_TRRAY

#include <glm/glm.hpp>

#include "TR/TRTerrain.h"

class TRRay {
public:
    TRRay(const glm::vec3 &camPos, const glm::vec3 &ray) : camPos(camPos), rayDir(ray) {}
    ~TRRay() {};
    const glm::vec3 camPos, rayDir;

    bool intersectionTerrain(TRTerrain *terrain, glm::vec3 &output, float range = 1000.f, unsigned itercnt = 200);
private:
    bool terrainIntersectInRange(float s, float e, TRTerrain *terrain);
    
    inline glm::vec3 getRayPoint(float f) { return camPos + (rayDir * f); }
};

#endif /* SRC_ENGINE_UTIL_TRRAY */
