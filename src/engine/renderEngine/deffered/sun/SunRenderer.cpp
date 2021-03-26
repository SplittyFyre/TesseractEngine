#include "TR/SunRenderer.h"

#include "TR/TRLoader.h"

void SunRenderer::render(TRScene *scene) {

    if (!scene->skyCtx.sun->isOnScreen()) {
        return;
    }

    shader.start();

    glBindVertexArray(TRLoader::dummyVAO);
    glDepthMask(false);
    glEnablei(GL_BLEND, 0);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, scene->skyCtx.sun->texture->texID);
    shader.loadUniforms(scene);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

    glDepthMask(true);
    glDisablei(GL_BLEND, 0);
    glBindVertexArray(0);

    shader.stop();
}