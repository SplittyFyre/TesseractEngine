/*
 * TesseractEngine.cpp
 *
 *  Created on: Mar. 21, 2020
 *      Author: oscar
 */

#include "TR/TesseractEngine.h"

#include "TR/TRDisplayManager.h"
#include "TR/TRKeyboard.h"

#include <stdio.h>


TesseractEngine *TesseractEngine::activeInstance = nullptr;

TesseractEngine::TesseractEngine(unsigned int maxEntityInstances, unsigned int maxParticleInstances, float blurFboScale) {

	if (TesseractEngine::activeInstance != nullptr) {
		puts("Error: only one instance of TesseractEngine class may exist");
		exit(1);
	}

	TesseractEngine::activeInstance = this;

	gbuffer = TRLoader::makeFbo(TRDisplayManager::getWidth(), TRDisplayManager::getHeight(), TEX_DEPTH, {GL_RGBA8, GL_RGBA16F, GL_RGBA16F, GL_RGBA32F});
	fbo = TRLoader::makeFbo(TRDisplayManager::getWidth(), TRDisplayManager::getHeight(), TEX_DEPTH, {GL_RGBA8});
	aa = TRLoader::makeFbo(TRDisplayManager::getWidth(), TRDisplayManager::getHeight(), NO_DEPTH, {GL_RGBA8});

	renderer = new DefferedRenderSystem(maxEntityInstances);
	defferedProcessor = new DefferedProcessing();
	defferedProcessorWater = new DefferedProcessingW();
	particleRenderer = new ParticleRenderer(maxParticleInstances);
	blurrer = new GaussianBlur(blurFboScale, 1);
	bloom = new BloomCombiner(1.0f);
	fxaa = new FXAA();
	lensFlareRenderer = new FlareRenderer();
	tp = new ThreadPool(2);

	meta = new TREngineMeta(
		blurrer->itercnt, bloom->factor, fxaa->edgeMin, fxaa->edgeMax
	);

	TRLoader::initEntityInstancedVBO(maxEntityInstances);
}


void TesseractEngine::doUpdates(TRScene *scene) {
	scene->camera->update();
	if (scene->skyCtx.sun != nullptr)
		scene->skyCtx.sun->update(scene->camera.get());
	
	sceneGraphFuture = tp->enqueue([scene] {
		scene->updateSceneGraph();
	});
	particlesFuture = tp->enqueue([scene] {
		scene->particleManager->update(scene->camera->getViewMatrix());
	});
}

void TesseractEngine::renderScene(TRScene *scene) {
	doUpdates(scene);

	gbuffer->bindToDraw();
	renderer->renderMainPass(scene, sceneGraphFuture); 	// main render
	gbuffer->unbind();

	gbuffer->blitDepth(fbo);
	fbo->bindToDraw();					// deffered	
	
	defferedProcessor->doDefferedProcessing(scene, gbuffer);
	
	particlesFuture.get();
	particleRenderer->render(scene);	// render alpha
	lensFlareRenderer->doQuery(scene);
	fbo->unbind();

	fbo->blit(gbuffer, 0, 0, false);
	fbo->bindToDraw();
	defferedProcessorWater->doDefferedProcessing(scene, gbuffer);
	fbo->unbind();

	fbo->blitToScreen(0);
	scene->cleanUp();
	return;

										// blur bright buffer
	blurrer->renderBlur(gbuffer->getTextureHandle(3));

	if (doFXAA) {
		aa->bindToDraw();
		bloom->combineBloom(fbo->getTextureHandle(0), blurrer->getOutputTex());
		aa->unbind();
		fxaa->doFXAA(aa->getTextureHandle(0));
	}
	else {
		bloom->combineBloom(fbo->getTextureHandle(0), blurrer->getOutputTex());
	}

	lensFlareRenderer->render(scene);

	scene->cleanUp();
}

void TesseractEngine::renderCurtain(float r, float g, float b, float a) {
	curtainRenderer.render(r, g, b, a);
}
void TesseractEngine::renderCurtain(TRTexture *texture) {
	curtainRenderer.render(texture);
}

void TesseractEngine::enableFaceCulling() {
	glEnable(GL_CULL_FACE);
	glCullFace(GL_BACK);
}

void TesseractEngine::disableFaceCulling() {
	glDisable(GL_CULL_FACE);
}

TesseractEngine::~TesseractEngine() {
	delete tp;
	delete renderer;
	delete defferedProcessor;
	delete defferedProcessorWater;
	delete particleRenderer;
	delete blurrer;
	delete bloom;
	delete fxaa;
	delete lensFlareRenderer;
	delete meta;
}

