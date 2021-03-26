/*
 * BoundingVolume.h
 *
 *  Created on: Mar. 23, 2020
 *      Author: oscar
 */

#ifndef ENGINE_COLLISION_BOUNDINGVOLUME_H_
#define ENGINE_COLLISION_BOUNDINGVOLUME_H_

#include <glm/vec3.hpp>

struct BoundingBox {
	float minX = 0.f, minY = 0.f, minZ = 0.f;
	float maxX = 0.f, maxY = 0.f, maxZ = 0.f;
};

struct BoundingSphere {
	float x = 0.f, y = 0.f, z = 0.f;
	float radius = 0.f;
};

class BoundingVolume {
public:

	BoundingBox box;
	BoundingSphere sphere;

	BoundingVolume() {} // default constructor with box and sphere zeroed out

	BoundingVolume(float minX, float minY, float minZ, float maxX, float maxY, float maxZ, float sphereRadius) {
		box.minX = minX;
		box.minY = minY;
		box.minZ = minZ;
		box.maxX = maxX;
		box.maxY = maxY;
		box.maxZ = maxZ;

		sphere.radius = sphereRadius;
	}

	BoundingVolume(const BoundingVolume &other) {
		box.minX = other.box.minX;
		box.minY = other.box.minY;
		box.minZ = other.box.minZ;
		box.maxX = other.box.maxX;
		box.maxY = other.box.maxY;
		box.maxZ = other.box.maxZ;
		
		sphere.radius = other.sphere.radius;
	}
	
	BoundingVolume& operator=(const BoundingVolume&) = delete;

	inline bool intersectsBox(const BoundingVolume &other) const {
		return (
		(this->box.minX <= other.box.maxX && this->box.maxX >= other.box.minX) &&
		(this->box.minY <= other.box.maxY && this->box.maxY >= other.box.minY) &&
		(this->box.minZ <= other.box.maxZ && this->box.maxZ >= other.box.minZ)
		);
	}

	bool intersectsSphere(const BoundingVolume &other) const {
		float dx = this->sphere.x - other.sphere.x;
		float dy = this->sphere.y - other.sphere.y;
		float dz = this->sphere.z - other.sphere.z;
		// avoid expensive sqrt()
		return ( (dx * dx + dy * dy + dz * dz) <= ((this->sphere.radius + other.sphere.radius) * (this->sphere.radius + other.sphere.radius)) );
	}

	bool intersectsSphere(const glm::vec3 &pos, float radius) const {
		float dx = this->sphere.x - pos.x;
		float dy = this->sphere.y - pos.y;
		float dz = this->sphere.z - pos.z;
		// avoid expensive sqrt()
		return ( (dx * dx + dy * dy + dz * dz) <= ((this->sphere.radius + radius) * (this->sphere.radius + radius)) );
	}

};

#endif /* ENGINE_COLLISION_BOUNDINGVOLUME_H_ */
