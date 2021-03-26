#include "TR/ParticleRenderer.h"

#include <algorithm>
#include "TR/TRLoader.h"
#include "TR/TesseractEngine.h"

#define GLM_ENABLE_EXPERIMENTAL
#include <glm/gtx/transform.hpp>

#define INSTANCE_DATA_LENF 21

ParticleRenderer::ParticleRenderer(unsigned int maxInstances) :
    maxInstances(maxInstances), vaoID(TRLoader::createVAO()), vboID(TRLoader::createEmptyVBO(INSTANCE_DATA_LENF * maxInstances)) {
    TRLoader::addInstancedAttrib(vaoID, vboID, 0, 4, INSTANCE_DATA_LENF, 0);
    TRLoader::addInstancedAttrib(vaoID, vboID, 1, 4, INSTANCE_DATA_LENF, 4);
    TRLoader::addInstancedAttrib(vaoID, vboID, 2, 4, INSTANCE_DATA_LENF, 8);
    TRLoader::addInstancedAttrib(vaoID, vboID, 3, 4, INSTANCE_DATA_LENF, 12);
    TRLoader::addInstancedAttrib(vaoID, vboID, 4, 4, INSTANCE_DATA_LENF, 16);
    TRLoader::addInstancedAttrib(vaoID, vboID, 5, 1, INSTANCE_DATA_LENF, 20);
    buffer = new float[maxInstances * INSTANCE_DATA_LENF];
}

void ParticleRenderer::render(TRScene *scene) {
    shader.start();
    glEnable(GL_BLEND);
    glDepthMask(false);
    glEnable(GL_DEPTH_TEST);
    TesseractEngine::disableFaceCulling();

    shader.loadProjectionMatrix(scene->camera->getProjectionMatrix());

    glBindVertexArray(vaoID);

    glActiveTexture(GL_TEXTURE0);
    for (const std::pair<ParticleTexture*, std::vector<TRParticle*>> &pair : scene->particleManager->particles) {

        glBindTexture(GL_TEXTURE_2D, pair.first->texture->texID);
        shader.loadNumRows((float) pair.first->numberOfRows);

        if (pair.first->blend) {
            glBlendFunc(GL_SRC_ALPHA, GL_ONE);
        }
        else {
            glBlendFunc(GL_ONE, GL_ZERO);
        }

        const std::vector<TRParticle*> &group = pair.second;
        bufferPointer = 0;

        int size = std::min((unsigned int) group.size(), maxInstances);

        for (int i = 0; i < size; i++) {
            TRParticle *p = group[i];
            storeMatrix(p);
            updateTexData(p);
        }

        TRLoader::updateVbo(vboID, buffer, size * INSTANCE_DATA_LENF);

        glDrawArraysInstanced(GL_TRIANGLE_STRIP, 0, 4, size);
    }


    glBindVertexArray(0);

    glDepthMask(true);
    glDisable(GL_BLEND);
    shader.stop();
}

void ParticleRenderer::storeMatrix(TRParticle *particle) {
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            buffer[bufferPointer++] = particle->getMatrix()[i][j];
        }
    }
}

void ParticleRenderer::updateTexData(TRParticle *particle) {
    buffer[bufferPointer++] = particle->texOffsetCurrent.x;
    buffer[bufferPointer++] = particle->texOffsetCurrent.y;
    buffer[bufferPointer++] = particle->texOffsetNext.x;
    buffer[bufferPointer++] = particle->texOffsetNext.y;
    buffer[bufferPointer++] = particle->texBlend;
}

ParticleRenderer::~ParticleRenderer() {
    delete buffer;
}