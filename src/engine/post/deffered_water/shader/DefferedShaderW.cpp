#include "TR/DefferedShaderW.h"

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
}

void DefferedShaderW::getAllUniformLocations() {
    addUniformVariable("diffuseTexture");
    addUniformVariable("depthTexture");
    addUniformVariable("heightMap");
    addUniformVariable("normalMap");

    addUniformVariable("lightPosition");
    addUniformVariable("lightColour");
    addUniformVariable("lightAttenuation");
    addUniformVariable("ambientLightLvl");

    addUniformVariable("invProjectionMatrix");
    addUniformVariable("invViewMatrix");
    addUniformVariable("cameraPos");

    addUniformVariable("fogDensity");
    addUniformVariable("fogGradient");
    addUniformVariable("skyColour");
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