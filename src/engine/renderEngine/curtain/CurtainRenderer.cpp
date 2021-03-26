#include "TR/CurtainRenderer.h"

#include "TR/TRLoader.h"

void CurtainRenderer::render(float r, float g, float b, float a) {
    shader.start();
    glEnable(GL_BLEND);
    glDisable(GL_DEPTH_TEST);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    shader.loadColour(r, g, b, a);
    shader.loadSolid(true);

    glBindVertexArray(TRLoader::dummyVAO);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    glBindVertexArray(0);

    glDisable(GL_BLEND);
    shader.stop();
}

void CurtainRenderer::render(TRTexture *texture) {
    shader.start();
    glDisable(GL_DEPTH_TEST);

    shader.loadSolid(false);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, texture->texID);

    glBindVertexArray(TRLoader::dummyVAO);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    glBindVertexArray(0);  

    shader.stop();
}