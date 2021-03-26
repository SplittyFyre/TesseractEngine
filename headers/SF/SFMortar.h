#ifndef SRC_STORMFRONT_GAME_TURRETS_SFMORTAR
#define SRC_STORMFRONT_GAME_TURRETS_SFMORTAR

#include "TR/LeafGeometry.h"

#include "SF/SFEnemy.h"
#include "SF/SFResources.h"

#include <limits>

class SFMortar : public LeafGeometry {
public:
    SFMortar() : LeafGeometry(SFResources::sg()->markerModel, glm::vec3(3383.225586f, 79.422050f, 3146.168213f), 0.f, 0.f, 0.f, glm::vec3(10.f)) {};
    ~SFMortar() {};
    void update(TRScene *scene);
    void notifyOfEnemy(SFEnemy *enemy);
private:
    float timer = 0.f;
    SFEnemy *target = nullptr;
    float best = std::numeric_limits<float>::infinity();
};

#endif /* SRC_STORMFRONT_GAME_TURRETS_SFMORTAR */
