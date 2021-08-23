/*
 * TRCamera.h
 *
 *  Created on: Mar. 22, 2020
 *      Author: oscar
 */

#ifndef ENGINE_SCENE_CAMERA_TRCAMERA_H_
#define ENGINE_SCENE_CAMERA_TRCAMERA_H_

#define GLM_ENABLE_EXPERIMENTAL
#include <glm/gtx/transform.hpp>

#include <unordered_set>

// hey TRCamera.h, just giving you a heads up that a class TRRay that you are working with exists
// you do not need the definition, and if I gave it to you anyway, it will create a horrible paradox and our compilers would explode
class TRRay;

class TRCamera {
public:
	TRCamera(const glm::vec3 &pos, float np, float fp, float fov);
	virtual ~TRCamera();
	TRCamera(const TRCamera&) = delete;
	TRCamera& operator=(const TRCamera&) = delete;

	glm::vec3 position;
	float pitch = 0.f, yaw = 0.f, roll = 0.f;
	
	inline const glm::mat4 &getViewMatrix() const { return viewMatrix; }
	inline const glm::mat4 &getProjectionMatrix() const { return projectionMatrix; }
	inline const glm::mat4 &getVPMatrix() const { return VPMatrix; }
	inline const glm::mat4 &getInvViewMatrix() const { return invViewMatrix; }
	inline const glm::mat4 &getInvProjectionMatrix() const { return invProjectionMatrix; }

	bool frustumCheck(const glm::vec3 &worldPos, float sr) const;
	TRRay castRayCursor() const;
	TRRay castRayNDC(float ndcx, float ndcy) const;

	void modifyProjection(float np, float fp, float fov);
	void modifyProjection(float fov);
	inline void notifyResize() { pChanged = true; }

	void update();
	void updateMatrices();

	static std::unordered_set<TRCamera*> cameras;
private:
	glm::mat4 viewMatrix, projectionMatrix, VPMatrix;
	glm::mat4 invViewMatrix, invProjectionMatrix;
	float tang, cx, cy;
	void extractAxes();
	virtual void move() {};

	bool pChanged = true;
	float nearPlane, farPlane, fov;
public:
	float useFarPlane;
private:
	glm::vec3 caX, caY, caZ;
};

#endif /* ENGINE_SCENE_CAMERA_TRCAMERA_H_ */
