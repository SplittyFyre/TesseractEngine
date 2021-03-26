/*
 * TRScene.cpp
 *
 *  Created on: Mar. 25, 2020
 *      Author: oscar
 */

#include "TR/TRScene.h"

#include "TR/TRMath.h"

void TRSun::update(TRCamera *camera) {
	glm::vec3 movedPos = this->position + camera->position;
	glm::vec4 coords = camera->getVPMatrix() * glm::vec4(movedPos, 1.0);
    if (coords.w <= 0.f) {
        onScreen = false;
		return;
    }
    screenPos.x = coords.x / coords.w;
    screenPos.y = coords.y / coords.w;
    onScreen = true;

	const glm::mat4 &viewMat = camera->getViewMatrix();
	matrix = glm::translate(movedPos);
	matrix[0][0] = viewMat[0][0];
	matrix[0][1] = viewMat[1][0];
	matrix[0][2] = viewMat[2][0];
	matrix[1][0] = viewMat[0][1];
	matrix[1][1] = viewMat[1][1];
	matrix[1][2] = viewMat[2][1];
	matrix[2][0] = viewMat[0][2];
	matrix[2][1] = viewMat[1][2];
	matrix[2][2] = viewMat[2][2];
}



TRScene::TRScene(const std::shared_ptr<TRCamera> &camera, unsigned int maxParticles) : particleManager(new ParticleManager(maxParticles)) {
	this->camera = camera;
}

void TRScene::immediateEntity(TexturedModel *model, const glm::vec3 &pos, float rx, float ry, float rz, const glm::vec3 &scale) {
	glm::mat4 mat;
	TRMath::createTransformationMatrix(&mat, pos, rx, ry, rz, scale);
	immediateEntities.push_back(mat);
	if (model->getRawModel()->instanced)
		TRSceneEntity::instancedBatchMap[model].push_back({&immediateEntities.back(), 0});
	else
		TRSceneEntity::batchMap[model].push_back({&immediateEntities.back(), 0});
}

void TRScene::updateSceneGraph() {
	TRSceneEntity::camera = this->camera.get();
	rootEntity->sceneGraphUpdate();
}

TRScene::~TRScene() {
	delete particleManager;
}

