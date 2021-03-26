#include "SF/TreborTruck.h"
#include "TR/TRDisplayManager.h"

#include "TR/TRMath.h"
#include <random>

#include "SF/SFPhysics.h"

static std::uniform_real_distribution<float> inacc(-0.5f, 0.5f);

void TreborTruck::attack(SFPlayer *player) {
    constexpr float range = 2000.f;
    float dist = TRMath::distanceSquared(position, player->position);
    if (dist < range * range) {
        timer += TRDisplayManager::getFrameDelta();

        if (timer > 5.f) {
            
            /*glm::vec3 v = glm::normalize(player->position - position) * 1000.f;

            v.x += inacc(rng);
            v.y += inacc(rng);
            v.z += inacc(rng);

            SFPhysics::addEnemyBullet(position, v);

            timer = 0.f;*/

            timer = 0.f;

            //SFPhysics::addEnemyMissile(position);

        }

    }
}