#include "TR/DefrSkyboxRenderer.h"

#include "TR/TesseractEngine.h"

DefrSkyboxRenderer::DefrSkyboxRenderer() {
    shader.start();
    shader.connectTextureUnits();
    shader.stop();
}

void DefrSkyboxRenderer::bindTextures(const TRSkyBox &skybox) {
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_CUBE_MAP, skybox.texture1->texID);

    bool b = true;
    if (skybox.texture2 != nullptr) {
        glActiveTexture(GL_TEXTURE1);
        glBindTexture(GL_TEXTURE_CUBE_MAP, skybox.texture2->texID);
        b = false;
    }
    shader.loadHasOnlyOneTexture(b);
}

void DefrSkyboxRenderer::render(TRScene *scene) {

    const TRSkyBox &skybox = *scene->skybox;

    if (skybox.texture1 == nullptr) {
        puts("error: skybox texture1 is nullptr");
        exit(1);
    }

    TesseractEngine::enableFaceCulling();
    glDisable(GL_DEPTH_TEST);

    shader.start();
    shader.loadViewMatrix(scene->camera.get(), skybox.rotation);
    shader.loadProjectionMatrix(scene->camera->getProjectionMatrix());
    shader.loadSkyColour(scene->skyCtx.skyR, scene->skyCtx.skyG, scene->skyCtx.skyB);
    shader.loadFadeLimits(skybox.lowerFadeBound, skybox.upperFadeBound);
    shader.loadBlendFactor(skybox.blend);
    shader.loadYOffset(skybox.yOffset);
    shader.loadBloom(skybox.bloom);

    glBindVertexArray(skybox.model->vaoID);

    GLuint op;
    if (skybox.gradientMode) {
        op = 1;
        shader.loadGradientFactors(skybox.gradient1, skybox.gradient2);
    }
    else {
        op = 0;
        bindTextures(skybox);
    }
    glUniformSubroutinesuiv(GL_FRAGMENT_SHADER, 1, &op);

    glDrawArrays(GL_TRIANGLES, 0, skybox.model->vertexCnt);

    glBindVertexArray(0);
    shader.stop();
}

DefrSkyboxRenderer::~DefrSkyboxRenderer() {

}