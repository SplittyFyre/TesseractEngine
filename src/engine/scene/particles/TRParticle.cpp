#include "TR/TRParticle.h"

#include "TR/TRDisplayManager.h"

#define GLM_ENABLE_EXPERIMENTAL
#include <glm/gtx/transform.hpp>

void TRParticle::update(const glm::mat4 &viewMatrix) {
    float delta = TRDisplayManager::getFrameDelta();

    velocity.y -= (gravity * delta);

    position.x += velocity.x * delta;
    position.y += velocity.y * delta;
    position.z += velocity.z * delta;

    updateTexCoordInfo();
    elapsedTime += delta;
    dead = elapsedTime > lifeLen;

    if (!dead) {
        mat = glm::translate(position);
        mat[0][0] = viewMatrix[0][0];
        mat[0][1] = viewMatrix[1][0];
        mat[0][2] = viewMatrix[2][0];
        mat[1][0] = viewMatrix[0][1];
        mat[1][1] = viewMatrix[1][1];
        mat[1][2] = viewMatrix[2][1];
        mat[2][0] = viewMatrix[0][2];
        mat[2][1] = viewMatrix[1][2];
        mat[2][2] = viewMatrix[2][2];
        mat *= glm::rotate(glm::radians(rotation), glm::vec3(0, 0, 1));
        mat *= glm::scale(glm::vec3(scale));
        mat = viewMatrix * mat;
    }
}


void TRParticle::updateTexCoordInfo() {
    float lf = elapsedTime / lifeLen;
    int numStages = particleTexture->numberOfRows * particleTexture->numberOfRows;
    float progession = lf * numStages;
    int idx1 = int(progession);
    int idx2 = (idx1 < numStages - 1) ? (idx1 + 1) : (idx1);
    setTexOffset(texOffsetCurrent, idx1);
    setTexOffset(texOffsetNext, idx2);
    texBlend = progession - idx1;
}

void TRParticle::setTexOffset(glm::vec2 &target, int index) {
    int column = index % particleTexture->numberOfRows;
    int row = index / particleTexture->numberOfRows;
    target.x = float(column) / particleTexture->numberOfRows;
    target.y = float(row) / particleTexture->numberOfRows;
}