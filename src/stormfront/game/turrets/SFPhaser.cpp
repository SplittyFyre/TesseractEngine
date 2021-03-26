#include "SF/SFPhaser.h"

#include "TR/TRDisplayManager.h"

#define TODEG 57.2957795130823f

const float SFPhaser::laserDiameter = 1.f;

void SFPhaser::update(TRScene *scene) {
    timer += TRDisplayManager::getFrameDelta();

    firing = false;

    if (timer > 5.f) {
        if (!target) return;

        if (target->isDead()) {
            actionTimer = 0.f;
            timer = 0.f;
            target = nullptr;
            return;
        }

        actionTimer += TRDisplayManager::getFrameDelta();

        glm::vec3 d = target->position - position;

        float angleH = TODEG * std::atan2(d.x, d.z);
        float angleV = TODEG * -std::atan2(d.y, std::sqrt(d.x * d.x + d.z * d.z));

        if (actionTimer <= 1.f) {
            rotY = prevAngleH + (angleH - prevAngleH) * actionTimer;
            rotX = prevAngleV + (angleV - prevAngleV) * actionTimer;
        }
        else if (actionTimer <= 2.f) {
            laserBeam->scale.z = std::sqrt(d.x * d.x + d.y * d.y + d.z * d.z);
            firing = true;
            rotY = angleH;
            rotX = angleV;
        }
        else {
            boom();
            target = nullptr;
            actionTimer = 0.f;
            timer = 0.f;
        }
    }
    else {
        prevAngleH = rotY;
        prevAngleV = rotX;
    }
}

void SFPhaser::notifyOfEnemy(const std::shared_ptr<SFEnemy> &enemy) {
    if (timer > 5.f) {
        if (!target || enemy->getDistanceLeft() < target->getDistanceLeft()) {
            target = enemy;
        }
    } 
}


void SFPhaser::entityUpdate() {
    renderModel(SFResources::sg()->helicopterModel.get());
    if (firing) {
        laserBeam->sceneGraphUpdate();
    }
}


void SFPhaser::boom() {
    target->damage(10.f);
}