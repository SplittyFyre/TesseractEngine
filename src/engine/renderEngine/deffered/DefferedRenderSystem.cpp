#include "TR/DefferedRenderSystem.h"

#include "TR/TesseractEngine.h"
#include "TR/TRKeyboard.h"

DefferedRenderSystem::DefferedRenderSystem(unsigned int maxEntityInstaces) : defrEntityRenderer(maxEntityInstaces) {
    TesseractEngine::enableFaceCulling();
}

void DefferedRenderSystem::prepare() {
    glEnable(GL_DEPTH_TEST);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glClearColor(0, 0, 0, 1);
	glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
}

void DefferedRenderSystem::renderReflectionPass(TRScene *scene) {
    prepare();

    scene->camera->position.y *= -1;
    scene->camera->pitch *= -1;
    scene->camera->updateMatrices();

    if (scene->skybox != nullptr)
        defrSkyboxRenderer.render(scene);

    scene->camera->position.y *= -1;
    scene->camera->pitch *= -1;
    scene->camera->updateMatrices();
}

void DefferedRenderSystem::renderMainPass(TRScene *scene, std::future<void> &sgUpdate) {

    prepare();

    if (TRKeyboard::isKeyDown(GLFW_KEY_F3))
		glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);

    if (scene->skybox != nullptr)
        defrSkyboxRenderer.render(scene);

    if (scene->skyCtx.sun != nullptr) 
        sunRenderer.render(scene);
    
    if (scene->terrain != nullptr) 
        defrTerrainRenderer.render(scene);
    
    if (scene->fftwater != nullptr) {
        scene->fftwater->update(scene->camera.get());
        //fftWaterRenderer.render(scene);   
    }

    staticEntityRenderer.render(scene); // give scene graph more updating time if needed

    sgUpdate.get();
    defrEntityRenderer.render(scene);

    if (scene->water != nullptr) {
        scene->water->update();
        plasticWaterRenderer.render(scene);
    }
}

DefferedRenderSystem::~DefferedRenderSystem() {
    
}