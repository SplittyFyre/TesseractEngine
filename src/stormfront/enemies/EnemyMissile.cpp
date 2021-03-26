#include "SF/EnemyMissile.h"

#include "TR/TRUtil.h"
#include "SF/SFPlayer.h"
#include "TR/TRDisplayManager.h"

#define TODEG 57.2957795130823f

#define SPEED 500.f
#define LIFELEN 10.f

const glm::vec3 EnemyMissile::missileScale = glm::vec3(0.1203305f * 2.f);

static std::uniform_real_distribution<float> failRange(1000.f, 2000.f);

EnemyMissile::EnemyMissile(const glm::vec3 &position)
: LeafGeometry(SFResources::sg()->missileModel, position, 0.f, 0.f, 0.f, missileScale), 
  failDist(failRange(TRUtil::mt)) {}

bool EnemyMissile::update(SFPlayer *player) {
    timer += TRDisplayManager::getFrameDelta();
    life += TRDisplayManager::getFrameDelta();

    if (!fail) {
        dir = glm::normalize(player->position - position);
        distanceTraveled += SPEED * TRDisplayManager::getFrameDelta();
        position += dir * SPEED * TRDisplayManager::getFrameDelta();
        if (timer > 0.2f) {
            timer = 0.f;
            rotY = TODEG * std::atan2(dir.x, dir.z);
            rotX = TODEG * -std::atan2(dir.y, std::sqrt(dir.z * dir.z + dir.x * dir.x));

            if (distanceTraveled >= failDist) {
                fail = true;
            }
        }
    }
    else { // continue on previous course forever
        position += dir * SPEED * TRDisplayManager::getFrameDelta();
    }
    
    return life >= LIFELEN;
}



void EnemyMissile::explosion(TRScene *scene) {
    TRParticle *p;
    if ((p = scene->particleManager->allocateParticle(1.f))) {
        p->particleTexture = SFResources::sg()->fireExplosion;
        p->position = position;
        p->scale = 20.f;
        p->velocity = glm::vec3(0.f);
    }
}