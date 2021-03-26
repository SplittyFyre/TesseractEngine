#include "TR/DefferedProcessing.h"

#include <GL/glew.h>
#include "TR/TRLoader.h"
#include "TR/TesseractEngine.h"

DefferedProcessing::DefferedProcessing() {
    shader.start();
    shader.connectTextureUnits();
    shader.stop();
}


void DefferedProcessing::doDefferedProcessing(TRScene *scene, TRFbo *gbuf) {
    start();
    shader.start();

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, gbuf->getTextureHandle(0));
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, gbuf->getTextureHandle(1));
    glActiveTexture(GL_TEXTURE2);
    glBindTexture(GL_TEXTURE_2D, gbuf->getTextureHandle(2));
    glActiveTexture(GL_TEXTURE3);
    glBindTexture(GL_TEXTURE_2D, gbuf->getDepthHandle());

    shader.loadCameraPos(scene->camera->position);
    shader.loadInvProjectionMat(scene->camera->getInvProjectionMatrix());
    shader.loadInvViewMat(scene->camera->getInvViewMatrix());
    shader.loadAmbientLightLvl(scene->getAmbientLight());
    shader.loadLights(scene->lights);

    shader.loadSkyCtx(scene->skyCtx);

    glClear(GL_COLOR_BUFFER_BIT);
	glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
	glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

    shader.stop();
    end();
}


void DefferedProcessing::start() {
    glBindVertexArray(TRLoader::dummyVAO);
    glDisable(GL_DEPTH_TEST);
    TesseractEngine::enableFaceCulling();
}

void DefferedProcessing::end() {
    glEnable(GL_DEPTH_TEST);
    glBindVertexArray(0);
}