#include "TR/PlasticWaterRenderer.h"

#include "TR/TesseractEngine.h"
#include "TR/TRLoader.h"

void PlasticWaterRenderer::render(TRScene *scene) {
    shader.start();
    shader.loadUniforms(scene);

    TesseractEngine::enableFaceCulling();

    glBindVertexArray(TRLoader::dummyVAO);

    glDrawArrays(GL_TRIANGLES, 0, 6);
    
    glBindVertexArray(0);

    shader.stop();
}