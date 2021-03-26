/*
 * TRCamera.cpp
 *
 *  Created on: Mar. 22, 2020
 *      Author: oscar
 */

#include "TR/TRCamera.h"

#include "TR/TRDisplayManager.h"
#include "TR/TRRay.h"


std::unordered_set<TRCamera*> TRCamera::cameras;

TRCamera::TRCamera(const glm::vec3 &pos, float np, float fp, float fov)
: position(pos), nearPlane(np), farPlane(fp), fov(fov), useFarPlane(fp) { TRCamera::cameras.insert(this); }

TRCamera::~TRCamera() { TRCamera::cameras.erase(this); }

void TRCamera::extractAxes() {
	caX.x = viewMatrix[0][0]; caX.y = viewMatrix[1][0]; caX.z = viewMatrix[2][0];
	caY.x = viewMatrix[0][1]; caY.y = viewMatrix[1][1]; caY.z = viewMatrix[2][1];
	caZ.x = viewMatrix[0][2]; caZ.y = viewMatrix[1][2]; caZ.z = viewMatrix[2][2];
}

void TRCamera::updateMatrices() {
	viewMatrix = glm::mat4(1.f); // identity matrix
	viewMatrix *= glm::rotate(glm::radians(pitch), glm::vec3(1, 0, 0));
	viewMatrix *= glm::rotate(glm::radians(yaw), glm::vec3(0, 1, 0));
	viewMatrix *= glm::translate(-position);
	//viewMatrix = glm::lookAt(*position, (*position) + glm::vec3(0, 0, -1), glm::vec3(0, 1, 0));
	invViewMatrix = glm::inverse(viewMatrix);

	extractAxes();

	if (pChanged) {
		pChanged = false;
		float rad = glm::radians(fov);
		projectionMatrix = glm::perspective(rad, (float) TRDisplayManager::getWidth() / (float) TRDisplayManager::getHeight(), nearPlane, farPlane);
		invProjectionMatrix = glm::inverse(projectionMatrix);
		tang = std::tan(rad * 0.5f);
		cy = 1.f / std::cos(rad * 0.5f);
		float angh = glm::radians(fov * TRDisplayManager::getAspectRatio());
		cx = 1.f / std::cos(angh * 0.5f);
	}

	VPMatrix = projectionMatrix * viewMatrix;
}

void TRCamera::modifyProjection(float np, float fp, float fov) {
	this->nearPlane = np;
	this->farPlane = fp;
	this->fov = fov;
	pChanged = true;
}
void TRCamera::modifyProjection(float fov) {
	this->fov = fov;
	pChanged = true;
}

void TRCamera::update() {
	move();
	updateMatrices();
}


bool TRCamera::frustumCheck(const glm::vec3 &worldPos, float sr) const {
	glm::vec3 v = worldPos - this->position;
	
	float pcZ = -glm::dot(v, caZ);
	if (pcZ > useFarPlane + sr || pcZ < nearPlane - sr) {
		return false;
	}

	float pcY = glm::dot(v, caY);
	float hd2 = pcZ * tang;
	float d = cy * sr;
	if (-hd2 > pcY + d || pcY - d > hd2) {
		return false;
	}

	float pcX = glm::dot(v, caX);
	float wd2 = hd2 * TRDisplayManager::getAspectRatio();
	d = cx * sr;
	if (-wd2 > pcX + d || pcX - d > wd2) {
		return false;
	}

	return true;
}


TRRay TRCamera::castRayNDC(float ndcx, float ndcy) const {
	glm::vec4 clip = glm::vec4(ndcx, ndcy, -1.f, 1.f);
	glm::vec4 eye = invProjectionMatrix * clip;
	eye.z = -1.f;
	eye.w = 0.f;
	glm::vec3 world = glm::vec3(invViewMatrix * eye);
	
	glm::vec3 ray = glm::normalize(world);

	return TRRay(position, ray);
}

TRRay TRCamera::castRayCursor() const {
	float ndcx = (2.f * TRDisplayManager::Mouse::getX()) / TRDisplayManager::getWidth() - 1.f;
	float ndcy = 1.f - (2.f * TRDisplayManager::Mouse::getY()) / TRDisplayManager::getHeight();
	return castRayNDC(ndcx, ndcy);
}
