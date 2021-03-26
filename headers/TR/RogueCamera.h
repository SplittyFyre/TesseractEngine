/*
 * RogueCamera.h
 *
 *  Created on: Mar. 23, 2020
 *      Author: oscar
 */

#ifndef ENGINE_SCENE_CAMERA_ROGUECAMERA_H_
#define ENGINE_SCENE_CAMERA_ROGUECAMERA_H_

#include "TR/TRCamera.h"

class RogueCamera : public TRCamera {
public:
	RogueCamera(const glm::vec3 &pos, float np, float fp, float fov, float speed = 500.f, float vspeed = 250.f)
	: TRCamera(pos, np, fp, fov), speed(speed), vspeed(vspeed) {};
	~RogueCamera() {};
	float speed, vspeed;
	bool disableMove = false;
private:
	void move() override;
};

#endif /* ENGINE_SCENE_CAMERA_ROGUECAMERA_H_ */
