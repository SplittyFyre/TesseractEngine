#include "SF/SFPath.h"

#include "SF/SFEnemy.h"

#include <cmath>

#define TODEG 57.2957795130823f

void SFPath::setInitial(SFEnemy *enemy) {
    enemy->position.x = data->positions[0].x;
    enemy->position.z = data->positions[0].y;
    enemy->rotY = TODEG * std::atan2(data->positions[1].x - enemy->position.x, data->positions[1].y - enemy->position.z);
}