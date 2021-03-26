#include "TR/GaussianBlur.h"

void GaussianBlur::renderBlur(GLuint colourTexture) {

    GLuint intex = colourTexture;

    glBindVertexArray(TRLoader::dummyVAO);
    glDisable(GL_DEPTH_TEST);

    shader.start();
    glActiveTexture(GL_TEXTURE0);

    for (int i = 0; i < itercnt; i++) {
        ping->bindToDraw();
        shader.loadResolution(TRDisplayManager::getWidth() * fboScale);
        shader.loadDirection(1.f, 0.f);
        glBindTexture(GL_TEXTURE_2D, intex);
        glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
        ping->unbind();

        pong->bindToDraw();
        shader.loadResolution(TRDisplayManager::getHeight() * fboScale);
        shader.loadDirection(0.f, 1.f);
        glBindTexture(GL_TEXTURE_2D, ping->getTextureHandle(0));
        glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
        pong->unbind();

        intex = pong->getTextureHandle(0);
    }
    shader.stop();

    glEnable(GL_DEPTH_TEST);
    glBindVertexArray(0);
} 