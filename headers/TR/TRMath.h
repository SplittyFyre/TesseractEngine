/*
 * TRMath.h
 *
 *  Created on: Mar. 25, 2020
 *      Author: oscar
 */

#ifndef ENGINE_UTIL_TRMATH_H_
#define ENGINE_UTIL_TRMATH_H_

#define GLM_ENABLE_EXPERIMENTAL
#include <glm/gtx/transform.hpp>

class TRMath {
public:
	static void createTransformationMatrix(glm::mat4 *dest, const glm::vec3 &translation, float rotX, float rotY, float rotZ, const glm::vec3 &scale);
	static void createTransformationMatrix(glm::mat4 *ns, glm::mat4 *dest, const glm::vec3 &translation, float rotX, float rotY, float rotZ, const glm::vec3 &scale);
	static void createTransformationMatrix(glm::mat4 *ns, const glm::vec3 &translation, float rotX, float rotY, float rotZ);

	static float baryCentric(float p1x, float p1y, float p1z, float p2x, float p2y, float p2z, float p3x, float p3y, float p3z, float posx, float posy);

	static inline float length(float x, float y, float z) {
		return std::sqrt(x * x + y * y + z * z);
	}

	static inline float distanceSquared(const glm::vec3 &a, const glm::vec3 &b) {
		float dx = b.x - a.x;
		float dy = b.y - a.y;
		float dz = b.z - a.z;
		return dx * dx + dy * dy + dz * dz;
	}
};

#endif /* ENGINE_UTIL_TRMATH_H_ */
