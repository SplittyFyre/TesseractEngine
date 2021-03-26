/*
 * TRFbo.h
 *
 *  Created on: Mar. 29, 2020
 *      Author: oscar
 */

#ifndef ENGINE_RESOURCEMANAGEMENT_TRFBO_H_
#define ENGINE_RESOURCEMANAGEMENT_TRFBO_H_

#include <GL/glew.h>
#include <vector>
#include "TR/TRTexture.h"

#define NO_DEPTH 0
#define TEX_DEPTH 1
#define BUF_DEPTH 2

class TRFbo {
	friend class TRLoader;
public:
	void bindToDraw();
	void unbind();

	void rebuild(int width, int height);

	inline GLuint getTextureHandle(int attach) { return colourTextures[attach]; }
	inline GLuint getDepthHandle() { return depthAttachment; }

	void blit(TRFbo *output, int read, int draw, bool depth = true);
	void blitToScreen(int read);
	void blitDepth(TRFbo *output);

private:
	TRFbo(int width, int height, int dType, const std::vector<GLenum> &formats, float scale);
	~TRFbo();
	void build();
	void clean();

	void bindToRead();

	GLuint fboID;
	int width, height;
	const int dType;
	std::vector<GLuint> colourTextures;
	const std::vector<GLenum> colourFormats;

	GLuint depthAttachment;

	const float scale;
};

#endif /* ENGINE_RESOURCEMANAGEMENT_TRFBO_H_ */
