#ifndef SRC_STORMFRONT_PLAYER_SFMISSILE
#define SRC_STORMFRONT_PLAYER_SFMISSILE

#include "TR/LeafGeometry.h"
#include "TR/TRScene.h"
#include "SF/SFResources.h"
#include "SF/AOES.h"

#include <glm/glm.hpp>

class SFMissile : public LeafGeometry {
public:
    SFMissile(glm::vec3 *target, const glm::vec3 &pos) :
    LeafGeometry(SFResources::sg()->missileModel, pos, 0.f, 0.f, 0.f, missileScale), target(target) {};
    ~SFMissile() {};
    void update(TRScene *scene);
    virtual void onCollide(TRScene *scene, float y, AOES &aoes);
    static const glm::vec3 missileScale;
private:
    glm::vec3 * const target;
};

#endif /* SRC_STORMFRONT_PLAYER_SFMISSILE */
