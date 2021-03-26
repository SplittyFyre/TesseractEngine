/*
 * TesseractEngine.h
 *
 *  Created on: Mar. 21, 2020
 *      Author: oscar
 */

#ifndef ENGINE_RENDERENGINE_TESSERACTENGINE_H_
#define ENGINE_RENDERENGINE_TESSERACTENGINE_H_

#include <memory>
#include "DefferedRenderSystem.h"
#include "DefferedProcessing.h"
#include "TRDisplayManager.h"
#include "TRFbo.h"
#include "ParticleRenderer.h"
#include "TR/GaussianBlur.h"
#include "TR/BloomCombiner.h"
#include "TR/FXAA.h"
#include "TR/FlareRenderer.h"
#include "TR/CurtainRenderer.h"
#include "TP/ThreadPool.hpp"

struct TREngineMeta {
	int &bloomBlurIterCnt;
	float &bloomStrength;
	float &fxaaEdgeMin;
	float &fxaaEdgeMax;
	TREngineMeta(int &bbic, float &bs, float &emin, float &emax)
	: bloomBlurIterCnt(bbic), bloomStrength(bs),
	fxaaEdgeMin(emin), fxaaEdgeMax(emax) {}
};

class TesseractEngine {
public:
	TesseractEngine(unsigned int maxEntityInstances = 1000, unsigned int maxParticleInstances = 1000, float blurFboScale = 0.5f);
	~TesseractEngine();

	void renderScene(TRScene *scene);

	void renderCurtain(float r, float g, float b, float a);
	void renderCurtain(TRTexture *texture);

	static void enableFaceCulling();
	static void disableFaceCulling();

	static inline TesseractEngine *getActive() { return activeInstance; };
private:
	static TesseractEngine *activeInstance;

	DefferedRenderSystem *renderer;
	DefferedProcessing *defferedProcessor;
	ParticleRenderer *particleRenderer;
	FlareRenderer *lensFlareRenderer;
	CurtainRenderer curtainRenderer;

	GaussianBlur *blurrer;
	BloomCombiner *bloom;
	FXAA *fxaa;

	TRFbo *gbuffer;
	TRFbo *fbo;
	TRFbo *aa;

	void doUpdates(TRScene *scene);

	ThreadPool *tp;

	std::future<void> sceneGraphFuture;
	std::future<void> particlesFuture;

public:
	bool doFXAA = true;
	TREngineMeta *meta;
};

#endif /* ENGINE_RENDERENGINE_TESSERACTENGINE_H_ */
