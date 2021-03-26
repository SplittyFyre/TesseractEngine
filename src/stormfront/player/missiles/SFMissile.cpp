#include "SF/SFMissile.h"

#include "TR/TRDisplayManager.h"

#include <cmath>

#define TODEG 57.2957795130823f

#define SPEED 444.f

const glm::vec3 SFMissile::missileScale = glm::vec3(0.1203305f);

void SFMissile::update(TRScene *scene) {
    glm::vec3 dir = glm::normalize((*target) - position);

    position += dir * SPEED * TRDisplayManager::getFrameDelta();
    
    rotY = TODEG * std::atan2(dir.x, dir.z);
    rotX = TODEG * -std::atan2(dir.y, std::sqrt(dir.z * dir.z + dir.x * dir.x));
}


void SFMissile::onCollide(TRScene *scene, float y, AOES &aoes) {
    glm::vec3 collidePos = glm::vec3(position.x, y, position.z);
    TRParticle *p = scene->particleManager->allocateParticle(2.f);
    if (p) {
        p->position = collidePos;
        p->scale = 15;
        p->particleTexture = SFResources::sg()->fireExplosion;
    }
    aoes.add(collidePos, 20.f, 10.f);
}