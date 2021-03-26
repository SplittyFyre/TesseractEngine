#include "SF/SFMortar.h"

#include "TR/TRDisplayManager.h"
#include "TR/TRMath.h"
#include "TR/TRUtil.h"

static std::normal_distribution<float> accuracy(0.f, 20.f);

void SFMortar::update(TRScene *scene) {
    timer += TRDisplayManager::getFrameDelta();
    if (timer < 5.f) return;

    if (target) {

        glm::vec3 pos = target->position;
        pos.x += accuracy(TRUtil::mt);
        pos.z += accuracy(TRUtil::mt);

        TRParticle *p;
        if ((p = scene->particleManager->allocateParticle(1.f))) {
            p->particleTexture = SFResources::sg()->fireExplosion;
            p->position = pos;
            p->scale = 40.f;
            p->velocity = glm::vec3(0.f);
        }
        SFPhysics::addAoeDamage(pos, 40.f, 2.f);

        timer = 0.f;
    }

    target = nullptr;
    best = std::numeric_limits<float>::infinity();
}


void SFMortar::notifyOfEnemy(SFEnemy *enemy) { // yields closest enemy within maxRange
    constexpr float maxRange = 3000.f;
    float dist = TRMath::distanceSquared(position, enemy->position);
    if (dist < maxRange * maxRange) {
        if (dist < best) {
            best = dist;
            target = enemy;
        }
    }
}