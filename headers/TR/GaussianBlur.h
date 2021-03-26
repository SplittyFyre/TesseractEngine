#ifndef SRC_ENGINE_POST_GAUSSIANBLUR_GAUSSIANBLUR
#define SRC_ENGINE_POST_GAUSSIANBLUR_GAUSSIANBLUR

#include "TR/BlurShader.h"
#include "TR/TRDisplayManager.h"
#include "TR/TRLoader.h"

class GaussianBlur {
public:
    GaussianBlur(float fboScale, int itercnt) 
    : fboScale(fboScale), itercnt(itercnt),
      ping(TRLoader::makeFbo(TRDisplayManager::getWidth(), TRDisplayManager::getHeight(), NO_DEPTH, {GL_RGBA32F}, fboScale)),
      pong(TRLoader::makeFbo(TRDisplayManager::getWidth(), TRDisplayManager::getHeight(), NO_DEPTH, {GL_RGBA32F}, fboScale)) {};
    ~GaussianBlur() {};
    void renderBlur(GLuint colourTexture);
    
private:
    const float fboScale;
public:
    int itercnt;

    inline GLuint getOutputTex() { return pong->getTextureHandle(0); }
private:
    BlurShader shader;
    TRFbo *ping, *pong;
};

#endif /* SRC_ENGINE_POST_GAUSSIANBLUR_GAUSSIANBLUR */
