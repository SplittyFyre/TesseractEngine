#include "TR/FXAA.h"

void FXAA::doFXAA(GLuint tex) {
    glDisable(GL_DEPTH_TEST);
    glClear(GL_COLOR_BUFFER_BIT);
    glBindVertexArray(TRLoader::dummyVAO);

    shader.start();

    shader.loadUniforms(edgeMin, edgeMax);

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, tex);

    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

    shader.stop();

    glBindVertexArray(0);
    glEnable(GL_DEPTH_TEST);
}