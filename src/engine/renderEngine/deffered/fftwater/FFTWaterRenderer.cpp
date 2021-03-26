#include "TR/FFTWaterRenderer.h"

void FFTWaterRenderer::render(TRScene *scene) {

    glEnable(GL_DEPTH_TEST);

    FFTWater *water = scene->fftwater.get();

    shader.start();

    shader.loadMatrices(scene->camera.get());

    shader.loadStartPos(water->position);
    shader.loadTotalSize(water->tileSize * water->tileCnt);

    shader.loadEdgesPerRTHeight(water->edgesPerRTHeight);

    shader.loadTessClamp(water->minTess, water->maxTess);

    shader.loadTiling(water->tiling);
    shader.loadColour(water->colour);
    shader.loadSpecular(water->reflectivity, water->shineDamper);

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, water->butterflies.displacement->texID);
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, water->normalMap->texID);

    glBindVertexArray(water->vaoID);
    
    glPatchParameteri(GL_PATCH_VERTICES, 4);
    glDrawArraysInstanced(GL_PATCHES, 0, 4, water->tileCnt * water->tileCnt);
    
    glBindVertexArray(0);

    shader.stop();
}