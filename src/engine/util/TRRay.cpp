#include "TR/TRRay.h"

bool TRRay::terrainIntersectInRange(float s, float e, TRTerrain *terrain) {
    glm::vec3 a = getRayPoint(s), b = getRayPoint(e);
    return (
        a.y > terrain->getHeightRaw(a.x, a.z) &&
        b.y < terrain->getHeightRaw(b.x, b.z)
    );
}

bool TRRay::intersectionTerrain(TRTerrain *terrain, glm::vec3 &output, float range, unsigned itercnt) {
    if (terrainIntersectInRange(0.f, range, terrain)) {
        float s = 0.f, e = range;
        float half = s + ((e - s) * 0.5f);
        for (unsigned i = 0; i < itercnt; i++) {
            if (terrainIntersectInRange(s, half, terrain)) {
                e = half;
            }
            else {
                s = half;
            }
            half = s + ((e - s) * 0.5f);
        }
        output = getRayPoint(half);
        return true;
    }
    return false;
}