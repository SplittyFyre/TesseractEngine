#ifndef SRC_STORMFRONT_ENEMIES_SFENEMY
#define SRC_STORMFRONT_ENEMIES_SFENEMY

#include "TR/LeafGeometry.h"
#include "TR/TRScene.h"
#include "SF/SFResources.h"
#include "SF/SFPath.h"
#include "SF/Blueprint.h"
#include "SF/SFPlayer.h"

#include <random>

class SFEnemy : public LeafGeometry {
public:
    SFEnemy(const Blueprint &blueprint, PathData &pd) : 
    LeafGeometry(blueprint.model, glm::vec3(0.f), 0.f, 0.f, 0.f, glm::vec3(blueprint.scale)),
    health(blueprint.health), armour(blueprint.armour),
    speed(blueprint.speed), turnTime(blueprint.turnTime), lerpFac(1.f / turnTime),
    path(pd), distanceLeft(pd.getTotalDistance()) { path.setInitial(this); };
    virtual ~SFEnemy() {};

    float update(TRScene *scene);
    inline float getDistanceLeft() const { return distanceLeft; }
    virtual void attack(SFPlayer *player) = 0;

    inline bool isDead() const { return health <= 0.f; }
    void damage(float d);
private:
    float health = 50.f;
    const float armour;

    const float speed;
    const float turnTime;
    const float lerpFac;

    float fromAng = 0.f, toAng = 0.f;
    float rotateTimer = 256.f; // arbitrary large number
    
    SFPath path;
    float distanceLeft;
protected:
    static std::mt19937 rng;
};

#endif /* SRC_STORMFRONT_ENEMIES_SFENEMY */
