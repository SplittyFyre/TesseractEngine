#include "TR/DefrTerrainRenderer.h"

#include "TR/TRLoader.h"
#include "TR/TesseractEngine.h"

DefrTerrainRenderer::DefrTerrainRenderer() {
    shader.start();
    shader.connectTextureUnits();
    shader.stop();
}

void DefrTerrainRenderer::render(TRScene *scene) {
    TesseractEngine::enableFaceCulling();
    glEnable(GL_DEPTH_TEST);

    TRTerrain *terrain = scene->terrain.get();

    shader.start();
    shader.loadMatrices(scene->camera.get());

    shader.loadPatchSize(terrain->tileSize);
    shader.loadStartPos(terrain->position);
    shader.loadTotalSize(terrain->tileCnt * terrain->tileSize);
    shader.loadHeightFactor(terrain->heightFactor);

    shader.loadEdgesPerRTHeight(terrain->edgesPerRTHeight);
    shader.loadTessClamp(terrain->minTess, terrain->maxTess);

    bindTextures(terrain);
    shader.loadTiling(terrain->texInfo->tiling);

    glBindVertexArray(terrain->vaoID);

    glEnableVertexAttribArray(0);

    glPatchParameteri(GL_PATCH_VERTICES, 4);

    glDrawArraysInstanced(GL_PATCHES, 0, 4, terrain->update(scene->camera.get()));
    
    glBindVertexArray(0);

    shader.stop();
}

void DefrTerrainRenderer::bindTextures(TRTerrain *terrain) {
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, terrain->heightMap->texID);
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, terrain->normalMap->texID);

    glActiveTexture(GL_TEXTURE2);
    glBindTexture(GL_TEXTURE_2D, terrain->texInfo->splatMap->texID);
    glActiveTexture(GL_TEXTURE3);
    glBindTexture(GL_TEXTURE_2D, terrain->texInfo->rtex->texID);
    glActiveTexture(GL_TEXTURE4);
    glBindTexture(GL_TEXTURE_2D, terrain->texInfo->gtex->texID);
    glActiveTexture(GL_TEXTURE5);
    glBindTexture(GL_TEXTURE_2D, terrain->texInfo->btex->texID);
    glActiveTexture(GL_TEXTURE6);
    glBindTexture(GL_TEXTURE_2D, terrain->texInfo->ntex->texID);
}


DefrTerrainRenderer::~DefrTerrainRenderer() {
    
}