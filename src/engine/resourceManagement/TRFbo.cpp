/*
 * TRFbo.cpp
 *
 *  Created on: Mar. 29, 2020
 *      Author: oscar
 */

#include "TR/TRFbo.h"
#include "TR/TRDisplayManager.h"
#include "TR/TRLoader.h"

#include <cstdio>

TRFbo::TRFbo(int width, int height, int dType, const std::vector<GLenum> &formats, float scale)
: width(width * scale), height(height * scale), dType(dType), colourFormats(std::move(formats)), scale(scale) {
	build();
}

TRFbo::~TRFbo() {
	clean();
}

void TRFbo::blit(TRFbo *output, int read, int draw, bool depth) {
	glBindFramebuffer(GL_DRAW_FRAMEBUFFER, output->fboID);
	glBindFramebuffer(GL_READ_FRAMEBUFFER, this->fboID);
	glReadBuffer(GL_COLOR_ATTACHMENT0 + read);

	GLbitfield mask = GL_COLOR_BUFFER_BIT;
	if (depth)
		mask |= GL_DEPTH_BUFFER_BIT;
	glBlitFramebuffer(0, 0, this->width, this->height, 0, 0, output->width, output->height,
	 mask, GL_NEAREST);

	 unbind();
}

void TRFbo::blitToScreen(int read) {
	glBindFramebuffer(GL_DRAW_FRAMEBUFFER, 0);
	glBindFramebuffer(GL_READ_FRAMEBUFFER, this->fboID);
	glReadBuffer(GL_COLOR_ATTACHMENT0 + read);
	glDrawBuffer(GL_BACK);

	glBlitFramebuffer(0, 0, width, height, 0, 0, TRDisplayManager::getWidth(), TRDisplayManager::getHeight(),
	GL_COLOR_BUFFER_BIT, GL_NEAREST);

	unbind();
}

void TRFbo::blitDepth(TRFbo *output) {
	glBindFramebuffer(GL_DRAW_FRAMEBUFFER, output->fboID);
	glBindFramebuffer(GL_READ_FRAMEBUFFER, this->fboID);
	
	glBlitFramebuffer(0, 0, this->width, this->height, 0, 0, output->width, output->height,
		GL_DEPTH_BUFFER_BIT, GL_NEAREST);

	unbind();
}

void TRFbo::rebuild(int width, int height) {
	this->width = int(width * scale);
	this->height = int(height * scale);
	clean();
	build();
}

void TRFbo::bindToDraw() {
	glBindFramebuffer(GL_DRAW_FRAMEBUFFER, this->fboID);
	glViewport(0, 0, width, height);
}
void TRFbo::bindToRead() {
	glBindTexture(GL_TEXTURE_2D, 0);
	glBindFramebuffer(GL_READ_FRAMEBUFFER, this->fboID);
	glReadBuffer(GL_COLOR_ATTACHMENT0);
}
void TRFbo::unbind() {
	glBindFramebuffer(GL_FRAMEBUFFER, 0);
	glViewport(0, 0, TRDisplayManager::getWidth(), TRDisplayManager::getHeight());
}

void TRFbo::build() {
	glGenFramebuffers(1, &fboID);
	glBindFramebuffer(GL_FRAMEBUFFER, fboID);

	GLuint tex;
	std::vector<GLenum> drawbufs;
	for (unsigned i = 0; i < colourFormats.size(); i++) {
		GLenum e = colourFormats[i];

		glGenTextures(1, &tex);
		glBindTexture(GL_TEXTURE_2D, tex);

		glTexStorage2D(GL_TEXTURE_2D, 1, e, width, height);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

		glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0 + i, GL_TEXTURE_2D, tex, 0);
		
		colourTextures.push_back(tex);
		drawbufs.push_back(GL_COLOR_ATTACHMENT0 + i);
	}
	
	glDrawBuffers(drawbufs.size(), drawbufs.data());

	if (dType == TEX_DEPTH) {
		glGenTextures(1, &tex);
		glBindTexture(GL_TEXTURE_2D, tex);

		glTexStorage2D(GL_TEXTURE_2D, 1, GL_DEPTH_COMPONENT24, width, height);

		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

		glFramebufferTexture2D(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_TEXTURE_2D, tex, 0);

		depthAttachment = tex;
	}
	else if (dType == BUF_DEPTH) {
		GLuint depthBuffer;
		glGenRenderbuffers(1, &depthBuffer);
		glBindRenderbuffer(GL_RENDERBUFFER, depthBuffer);

		glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT24, width, height);

		glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, depthBuffer);

		depthAttachment = depthBuffer;
	}

	unbind();

	printf("framebuffer built with width: %d | height: %d\n", width, height);
}

void TRFbo::clean() {
	glDeleteFramebuffers(1, &fboID);
	glDeleteTextures(colourTextures.size(), colourTextures.data());
	colourTextures.clear();
	if (dType == TEX_DEPTH)
		glDeleteTextures(1, &depthAttachment);
	else if (dType == BUF_DEPTH)
		glDeleteRenderbuffers(1, &depthAttachment);
}