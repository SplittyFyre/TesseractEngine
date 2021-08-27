#include "TR/DefferedProcessingW.h"

#include <GL/glew.h>
#include "TR/TRLoader.h"
#include "TR/TesseractEngine.h"

DefferedProcessingW::DefferedProcessingW() {
    shader.start();
    shader.connectTextureUnits();
    shader.stop();
    foamTex = TRLoader::loadTexture("res/foam.png");
}

void DefferedProcessingW::doDefferedProcessing(TRScene *scene, TRFbo *gbuf, TRFbo *ree) {
    start();
    shader.start();

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, ree->getTextureHandle(0));
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, gbuf->getDepthHandle());
    glActiveTexture(GL_TEXTURE2);
    glBindTexture(GL_TEXTURE_2D, scene->fftwater->getDisplacementMap()->texID);
    glActiveTexture(GL_TEXTURE3);
    glBindTexture(GL_TEXTURE_2D, scene->fftwater->getNormalMap()->texID);
    glActiveTexture(GL_TEXTURE4);
    glBindTexture(GL_TEXTURE_2D, foamTex->texID);

    shader.loadCameraPos(scene->camera->position);
    shader.loadInvProjectionMat(scene->camera->getInvProjectionMatrix());
    shader.loadInvViewMat(scene->camera->getInvViewMatrix());
    shader.loadMatTexProj(
        scene->camera->getVPMatrix() /* glm::mat4({0.5f, 0.0f, 0.0f, 0.5f},
                                                {0.0f, 0.5f, 0.0f, 0.5f},
                                                {0.0f, 0.0f, 0.0f, 0.5f},
                                                {0.0f, 0.0f, 0.0f, 1.0f})*/
    );
    shader.loadAmbientLightLvl(scene->getAmbientLight());
    shader.loadLight(scene->lights.front());

    shader.loadSkyCtx(scene->skyCtx);
    shader.loadTimer();

    glClear(GL_COLOR_BUFFER_BIT);
	glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
	glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

    shader.stop();
    end();
}

void DefferedProcessingW::start() {
    glBindVertexArray(TRLoader::dummyVAO);
    glDisable(GL_DEPTH_TEST);
    TesseractEngine::enableFaceCulling();
}

void DefferedProcessingW::end() {
    glEnable(GL_DEPTH_TEST);
    glBindVertexArray(0);
}