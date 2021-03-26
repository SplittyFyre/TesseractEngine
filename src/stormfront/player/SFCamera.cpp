#include "SF/SFCamera.h"

#include "SF/SFPlayer.h"
#include "TR/TRKeyboard.h"
#include "TR/TRMouse.h"
#include "TR/TRDisplayManager.h"
#include <cmath>
#include <algorithm>

constexpr float TORAD = 0.01745329251994329576923690768488612713442871888541725456097191440171009114603449443682241569634509482212304492507f;

void SFCamera::move() {
    if (TRKeyboard::isKeyDown(GLFW_KEY_C) || TRMouse::isMouseButtonDown(TRMOUSE_MIDDLE)) {
        pitch -= TRDisplayManager::Mouse::getDY() * 0.1f;
		angleAround += TRDisplayManager::Mouse::getDX() * 0.3f;
    }
    distanceFrom -= (TRDisplayManager::Mouse::getScrollY() * 5.f);

    distanceFrom = std::clamp<float>(distanceFrom, 16.f, 100.f);

    calc(
        distanceFrom * std::cos(pitch * TORAD),
        distanceFrom * std::sin(pitch * TORAD)
    );
    yaw = 180.f - (player->rotY + angleAround);
}

void SFCamera::calc(float horiz, float vertic) {
    float theta = player->rotY + angleAround;
    float offsetX = horiz * std::sin(theta * TORAD);
    float offsetZ = horiz * std::cos(theta * TORAD);
    position.x = player->position.x - offsetX;
    position.z = player->position.z - offsetZ;
    position.y = player->position.y + vertic;
}