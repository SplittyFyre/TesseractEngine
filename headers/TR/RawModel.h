/*
 * RawModel.h
 *
 *  Created on: Mar. 21, 2020
 *      Author: oscar
 */

#ifndef ENGINE_RENDERENGINE_RAWMODEL_H_
#define ENGINE_RENDERENGINE_RAWMODEL_H_

#include <GL/glew.h>
#include <memory>
#include "TR/BoundingVolume.h"

struct RawModel {
	const GLuint vaoID;
	const unsigned int vertexCnt;
	const std::shared_ptr<BoundingVolume> boundingVolume;
	const bool instanced;
	bool doubleSidedFaces = false;

	RawModel(GLuint vaoid, unsigned int vtxCnt, const std::shared_ptr<BoundingVolume> &bv, bool instanced = false)
	: vaoID(vaoid), vertexCnt(vtxCnt), boundingVolume(bv), instanced(instanced) { }
};

#endif /* ENGINE_RENDERENGINE_RAWMODEL_H_ */
