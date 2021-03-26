#ifndef SRC_STORMFRONT_ENEMIES_ENEMYMISSILE
#define SRC_STORMFRONT_ENEMIES_ENEMYMISSILE

#include "TR/LeafGeometry.h"
#include "TR/TRScene.h"

#include "SF/SFResources.h"

class SFPlayer;

class EnemyMissile : public LeafGeometry {
public:
    EnemyMissile(const glm::vec3 &position);
    ~EnemyMissile() {};
    bool update(SFPlayer *player);
    void explosion(TRScene *scene);
    inline void die() { life = 999999999.f; }
    inline float getLife() const { return life; }
private:
    float timer = 0.f;
    float life = 0.f;
    float distanceTraveled = 0.f;
    bool fail = false;
    const float failDist;
    glm::vec3 dir;
    static const glm::vec3 missileScale;
};

#endif /* SRC_STORMFRONT_ENEMIES_ENEMYMISSILE */
