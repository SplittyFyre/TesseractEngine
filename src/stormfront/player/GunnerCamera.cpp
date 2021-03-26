#include "SF/GunnerCamera.h"

#include "SF/SFPlayer.h"
#include "TR/TRDisplayManager.h"
#include "TR/TRKeyboard.h"

#include <algorithm>

void GunnerCamera::zoom() {
    zoomed = true;
    sensitivity = 0.05f;
    modifyProjection(ZOOMED_FOV);
}
void GunnerCamera::unzoom() {
    zoomed = false;
    sensitivity = 0.1f;
    modifyProjection(DEFAULT_FOV);
}

void GunnerCamera::move() {

    if (TRKeyboard::getCbKey(GLFW_KEY_Z)) {
        if (zoomed) {
            unzoom();
        }
        else {
            zoom();
        }
    }

    position = player->position;
    position.y -= 2.5f;

    pitch -= TRDisplayManager::Mouse::getDY() * sensitivity;
    pitch = std::clamp<float>(pitch, 10.f, 60.f);

    lyaw += TRDisplayManager::Mouse::getDX() * sensitivity;
    lyaw = std::clamp<float>(lyaw, -50.f, 50.f);
    yaw = -(lyaw + player->rotY) + 180.f;
}