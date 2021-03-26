#include "TR/DefferedShader.h"

#define VTXFILE     "src/engine/post/deffered/shader/defferedVertex.glsl"
#define FRAGFILE    "src/engine/post/deffered/shader/defferedFragment.glsl"

DefferedShader::DefferedShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}

void DefferedShader::connectTextureUnits() {
    loadInt("diffuseTexture", 0);
    loadInt("normalTexture", 1);
    loadInt("miscTexture", 2);
    loadInt("depthTexture", 3);
}

void DefferedShader::getAllUniformLocations() {
    addUniformVariable("diffuseTexture");
    addUniformVariable("normalTexture");
    addUniformVariable("miscTexture");
    addUniformVariable("depthTexture");

    for (int i = 0; i < TRSCENE_DEFFERED_MAX_LIGHTS; i++) {
        location_lightPosition[i] = getUniformLocation((std::string("lightPosition[") + std::to_string(i) + "]").c_str());
		location_lightColour[i] = getUniformLocation((std::string("lightColour[") + std::to_string(i) + "]").c_str());
		location_attenuation[i] = getUniformLocation((std::string("attenuation[") + std::to_string(i) + "]").c_str());
    }
    addUniformVariable("lightsInUse");
    
    addUniformVariable("ambientLightLvl");

    addUniformVariable("invProjectionMatrix");
    addUniformVariable("invViewMatrix");
    addUniformVariable("cameraPos");

    addUniformVariable("fogDensity");
    addUniformVariable("fogGradient");
    addUniformVariable("skyColour");
}

void DefferedShader::loadLights(const std::vector<std::shared_ptr<TRLight>> &lights) {
    
    const int to = std::min(TRSCENE_DEFFERED_MAX_LIGHTS, (int) lights.size());

    for (int i = 0; i < to; i++) {
        const auto &light = lights[i];
        loadVec3(location_lightPosition[i], light->position);
		loadVec3(location_lightColour[i], light->colour);
		loadVec3(location_attenuation[i], light->attenuation);
    }

    loadInt("lightsInUse", to);
}

void DefferedShader::loadSkyCtx(const SkyContext &ctx) {
    loadFloat("fogDensity", ctx.fogDensity);
    loadFloat("fogGradient", ctx.fogGradient);
    loadVec3("skyColour", ctx.skyR, ctx.skyG, ctx.skyB);
}

DefferedShader::~DefferedShader() {

}