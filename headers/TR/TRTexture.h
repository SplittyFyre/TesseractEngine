/*
 * TRTexture.h
 *
 *  Created on: Mar. 21, 2020
 *      Author: oscar
 */

#ifndef HEADERS_TR_TRTEXTURE_H_
#define HEADERS_TR_TRTEXTURE_H_

#include <GL/glew.h>

struct TRTexture {
	const GLuint texID;
	const int width, height;

	TRTexture(GLuint textureID, int width, int height)
	: texID(textureID), width(width), height(height) { }
	
	TRTexture(const TRTexture&) = delete;
	TRTexture& operator=(const TRTexture&) = delete;
};

#endif /* HEADERS_TR_TRTEXTURE_H_ */
