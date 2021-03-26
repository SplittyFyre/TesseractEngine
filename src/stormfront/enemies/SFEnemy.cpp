#include "SF/SFEnemy.h"

#include "TR/TRDisplayManager.h"

#include <cmath>
#include <iostream>

std::mt19937 SFEnemy::rng = std::mt19937(std::random_device()());

#define TODEG 57.2957795130823f

float SFEnemy::update(TRScene *scene) {

    if (path.ok()) {
        glm::vec2 diff = path.get() - glm::vec2(position.x, position.z);
    
        if (glm::length(diff) <= 10.f) {
            path.advance();
            // dispatch rotation:
            if (path.ok()) {
                rotateTimer = 0.f;
                toAng = TODEG * std::atan2(path.get().x - position.x, path.get().y - position.z);
                fromAng = rotY;
            }
        }

        float distanceMoved = speed * TRDisplayManager::getFrameDelta();
        diff = glm::normalize(diff) * distanceMoved;
        position.x += diff.x; position.z += diff.y;

        distanceLeft -= distanceMoved;
    }
    else {
        return -1.f; // negative distance = lose
    }

    if (rotateTimer <= turnTime) {
        rotY = fromAng + (rotateTimer * lerpFac) * (toAng - fromAng); // lerp
        rotateTimer += TRDisplayManager::getFrameDelta();
    }

    position.y = scene->terrain->getHeightBC(position.x, position.z) - model->getRawModel()->boundingVolume->box.minY * scale.y;

    return distanceLeft;
}


void SFEnemy::damage(float d) {
    float blocked = armour * d; // have armor remove a% of damage
    d -= blocked;
    
    health -= d;
}