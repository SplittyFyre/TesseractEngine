#ifndef SRC_ENGINE_SCENE_WATER_TRPLASTICWATER
#define SRC_ENGINE_SCENE_WATER_TRPLASTICWATER

#include "TR/TRTexture.h"

#include "glm/vec3.hpp"
#include <memory>

class TRPlasticWater {
public:
    TRPlasticWater(const glm::vec3 &pos, float scale, TRTexture *dudv, TRTexture *norm, float normalStrength, const glm::vec3 &waterColour)
    : position(pos), scale(scale), colour(waterColour), dudvMap(dudv), normalMap(norm), normalStrength(normalStrength) {};
    ~TRPlasticWater() {};
    
    glm::vec3 position;
    float scale;

    float speed = 0.03f;
    float reflectivity = 0.5f, shineDamper = 15.f;
    float tiling = 5.f;

    glm::vec3 colour;
    TRTexture * const dudvMap;
    TRTexture * const normalMap;

    float normalStrength;

    // 'flows' the water
    void update(); 

    inline float getMovedFactor() const { return movedFactor; }
private:
    float movedFactor = 0.f;
};

#endif /* SRC_ENGINE_SCENE_WATER_TRPLASTICWATER */
