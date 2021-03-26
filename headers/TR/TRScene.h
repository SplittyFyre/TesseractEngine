/*
 * TRScene.h
 *
 *  Created on: Mar. 25, 2020
 *      Author: oscar
 */

#ifndef ENGINE_SCENE_TRSCENE_H_
#define ENGINE_SCENE_TRSCENE_H_

#include <memory>
#include <vector>
#include <glm/glm.hpp>

#include "TR/TRCamera.h"
#include "TR/TRTerrain.h"
#include "TR/TRSkybox.h"
#include "TR/ParticleManager.h"
#include "TR/TRPlasticWater.h"
#include "TR/FFTWater.h"
#include "TR/TRLensFlare.h"

#include "TR/GroupEntity.h"

#include "TR/TRStaticBatch.h"

#define TRSCENE_FORWARD_MAX_LIGHTS 16
#define TRSCENE_DEFFERED_MAX_LIGHTS 128

struct TRSun {
	TRTexture *texture;
	glm::vec3 position;
	float scale;
	TRSun(TRTexture *tex, const glm::vec3 &pos, float scale = 1.f) 
	: texture(tex), position(pos), scale(scale) {}

	void update(TRCamera *camera);

	inline const glm::vec2 &getScreenPos() const { return screenPos; }
	inline bool isOnScreen() const { return onScreen; }
	inline const glm::mat4 &getMatrix() const { return matrix; }
private:
	glm::vec2 screenPos;
	glm::mat4 matrix;
	bool onScreen;
};

struct SkyContext {
	float fogDensity, fogGradient;
	float skyR, skyG, skyB;

	SkyContext(float density = 0.000075f, float gradient = 5.f, float r = 0.f, float g = 0.f, float b = 0.f)
	: fogDensity(density), fogGradient(gradient), skyR(r), skyG(g), skyB(b)
	{}

	void setSkyCol(float r, float g, float b) {
		skyR = r; skyG = g; skyB = b;
	}

	std::shared_ptr<TRLensFlare> lensFlare = nullptr;
	std::shared_ptr<TRSun> sun = nullptr;
};

struct TRLight {
	glm::vec3 position, colour, attenuation;

	TRLight(const glm::vec3 &pos, const glm::vec3 &col) : position(pos), colour(col), attenuation(1.f, 0.f, 0.f) {}

	TRLight(const glm::vec3 &pos,
			const glm::vec3 &col,
			const glm::vec3 &att) : position(pos), colour(col), attenuation(att) {}
};


class TRScene {
public:
	TRScene(const std::shared_ptr<TRCamera> &camera, unsigned int maxParticles = 1000);
	~TRScene();

	SkyContext skyCtx;
	std::unique_ptr<TRSkyBox> skybox = nullptr;

	std::unique_ptr<TRTerrain> terrain = nullptr;

	std::unique_ptr<TRPlasticWater> water = nullptr;
	std::unique_ptr<FFTWater> fftwater = nullptr;

	std::shared_ptr<TRCamera> camera;

	std::vector<std::shared_ptr<TRLight>> lights;
	
	ParticleManager* const particleManager;

	inline float getAmbientLight() const { return ambientLight; }
	inline void setAmbientLight(float al) { ambientLight = al; }

	inline void addEntityToRoot(const std::shared_ptr<TRSceneEntity> &entity) { rootEntity->addChild(entity); }
	inline void removeEntityFromRoot(const std::shared_ptr<TRSceneEntity> &entity) { rootEntity->removeChild(entity); }
	void updateSceneGraph();

	void immediateEntity(TexturedModel *model, const glm::vec3 &pos, float rx, float ry, float rz, const glm::vec3 &scale);

	inline void addStaticEntityBatch(MeshData *meshData, const std::shared_ptr<ModelSkin> &skin, const std::vector<TRStaticInstance> &instances, bool dsf = false)
	{ staticBatches.emplace_back(meshData, skin, instances, dsf); }
	inline const std::vector<TRStaticBatch> &getStaticBatches() const 
	{ return staticBatches; }

	
	inline void cleanUp() 
	{ TRSceneEntity::batchMap.clear(); TRSceneEntity::instancedBatchMap.clear(); immediateEntities.clear(); }
	
private:
	float ambientLight = 0.5f;

	std::unique_ptr<GroupEntity> rootEntity = std::make_unique<GroupEntity>();

	std::vector<glm::mat4> immediateEntities;

	std::vector<TRStaticBatch> staticBatches;
};

#endif /* ENGINE_SCENE_TRSCENE_H_ */
