#include "TR/DefferedShaderW.h"

#include "TR/TRDisplayManager.h"

#define VTXFILE     "src/engine/post/deffered_water/shader/dwVertex.glsl"
#define FRAGFILE    "src/engine/post/deffered_water/shader/dwFragment.glsl"

DefferedShaderW::DefferedShaderW() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}

void DefferedShaderW::connectTextureUnits() {
    loadInt("diffuseTexture", 0);
    loadInt("depthTexture", 1);
    loadInt("heightMap", 2);
    loadInt("normalMap", 3);
    loadInt("foamMap", 4);
    loadInt("reflectionTexture", 5);
}

void DefferedShaderW::getAllUniformLocations() {
    addUniformVariable("diffuseTexture");
    addUniformVariable("depthTexture");
    addUniformVariable("heightMap");
    addUniformVariable("normalMap");
    addUniformVariable("foamMap");
    addUniformVariable("reflectionTexture");

    addUniformVariable("lightPosition");
    addUniformVariable("lightColour");
    addUniformVariable("lightAttenuation");
    addUniformVariable("ambientLightLvl");

    addUniformVariable("invProjectionMatrix");
    addUniformVariable("invViewMatrix");
    addUniformVariable("matTexProj");
    addUniformVariable("cameraPos");

    addUniformVariable("fogDensity");
    addUniformVariable("fogGradient");
    addUniformVariable("skyColour");

    addUniformVariable("timer");
}

void DefferedShaderW::loadLight(const std::shared_ptr<TRLight> &light) {
    loadVec3("lightPosition", light->position);
    loadVec3("lightColour", light->colour);
    loadVec3("lightAttenuation", light->attenuation);
}

void DefferedShaderW::loadSkyCtx(const SkyContext &ctx) {
    loadFloat("fogDensity", ctx.fogDensity);
    loadFloat("fogGradient", ctx.fogGradient);
    loadVec3("skyColour", ctx.skyR, ctx.skyG, ctx.skyB);
}

void DefferedShaderW::loadTimer() {
    loadFloat("timer", timer += TRDisplayManager::getFrameDelta());
}