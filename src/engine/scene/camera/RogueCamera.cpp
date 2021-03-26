/*
 * RogueCamera.cpp
 *
 *  Created on: Mar. 23, 2020
 *      Author: oscar
 */

#include "TR/RogueCamera.h"

#include "TR/TRKeyboard.h"
#include "TR/TRDisplayManager.h"

#include <cmath>

inline float toRadians(float deg) {
	return ((deg / 180.f) * M_PI);
}


void RogueCamera::move() {

	if (disableMove) return;

	float mov = 0;
	float up = 0;

	if (TRKeyboard::isKeyDown(GLFW_KEY_W)) {
		mov = speed;
	}
	else if (TRKeyboard::isKeyDown(GLFW_KEY_S)) {
		mov = -speed;
	}

	if (TRKeyboard::isKeyDown(GLFW_KEY_A)) {
		yaw -= (90.f * TRDisplayManager::getFrameDelta());
	}
	else if (TRKeyboard::isKeyDown(GLFW_KEY_D)) {
		yaw += (90.f * TRDisplayManager::getFrameDelta());
	}

	if (TRKeyboard::isKeyDown(GLFW_KEY_SPACE)) {
		up = vspeed;
	}
	else if (TRKeyboard::isKeyDown(GLFW_KEY_LEFT_SHIFT)) {
		up = -vspeed;
	}

	if (TRKeyboard::isKeyDown(GLFW_KEY_K)) {
		pitch -= 45.f * TRDisplayManager::getFrameDelta();
	}
	else if (TRKeyboard::isKeyDown(GLFW_KEY_J)) {
		pitch += 45.f * TRDisplayManager::getFrameDelta();
	}

	float distanceMoved = mov * TRDisplayManager::getFrameDelta();
	float dx = distanceMoved * sinf(toRadians(180.f - yaw));
	float dy = up * TRDisplayManager::getFrameDelta();
	float dz = distanceMoved * cosf(toRadians(180.f - yaw));

	position.x += dx;
	position.y += dy;
	position.z += dz;

}
