#include "TR/FXAAShader.h"

#include "TR/TRDisplayManager.h"

#define VTXFILE     "src/engine/post/fxaa/fxaa.vert"
#define FRAGFILE    "src/engine/post/fxaa/fxaa.frag"

FXAAShader::FXAAShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}

void FXAAShader::getAllUniformLocations() {
    addUniformVariable("width");
    addUniformVariable("height");
    addUniformVariable("EDGE_THRESHOLD_MIN");
    addUniformVariable("EDGE_THRESHOLD_MAX");
}

void FXAAShader::loadUniforms(float edgeMin, float edgeMax) {
    loadFloat("width", TRDisplayManager::getWidth());
    loadFloat("height", TRDisplayManager::getHeight());
    loadFloat("EDGE_THRESHOLD_MIN", edgeMin);
    loadFloat("EDGE_THRESHOLD_MAX", edgeMax);
}