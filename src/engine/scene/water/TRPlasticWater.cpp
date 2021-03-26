#include "TR/TRPlasticWater.h"

#include "TR/TRDisplayManager.h"
#include <cmath>

void TRPlasticWater::update() {
    movedFactor += speed * TRDisplayManager::getFrameDelta();
    movedFactor = std::fmod(movedFactor, 1.f);
}