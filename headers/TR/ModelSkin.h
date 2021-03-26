/*
 * ModelSkin.h
 *
 *  Created on: Mar. 21, 2020
 *      Author: oscar
 */

#ifndef HEADERS_TR_MODELSKIN_H_
#define HEADERS_TR_MODELSKIN_H_

#include "TR/TRTexture.h"
#include "glm/vec3.hpp"

class ModelSkin {
public:
	ModelSkin(TRTexture *texture, TRTexture *propertyMap = nullptr, int atlasSize = 1)
	: texture(texture), propertyMap(propertyMap), hasPropertyMap(propertyMap != nullptr), atlasSize(atlasSize) {}

	~ModelSkin() {};

	float reflectivity = 0.f, shineDamper = 1.f;
	float bloomFactor = 1.f;
	bool transparent = false;
	bool useFakeLighting = false;

	bool useFillColour = false;
	glm::vec3 fillColourValue = glm::vec3(0.f);

	const TRTexture * const texture;
	const TRTexture * const propertyMap;
	const bool hasPropertyMap;
	const int atlasSize;
};

#endif /* HEADERS_TR_MODELSKIN_H_ */
