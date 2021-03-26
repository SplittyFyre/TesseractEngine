#include "TR/BloomCombiner.h"

#include "TR/TRLoader.h"

void BloomCombiner::combineBloom(GLuint sceneTex, GLuint highlightTex) {
    glDisable(GL_DEPTH_TEST);
    glClear(GL_COLOR_BUFFER_BIT);
    glBindVertexArray(TRLoader::dummyVAO);

    shader.start();
    shader.loadHighlightFactor(factor);

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, sceneTex);
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, highlightTex);

    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

    shader.stop();

    glBindVertexArray(0);
    glEnable(GL_DEPTH_TEST);
}