#include "TR/SunShader.h"

#include "TR/TRDisplayManager.h"

#define GLM_ENABLE_EXPERIMENTAL
#include <glm/gtx/transform.hpp>

#define VTXFILE     "src/engine/renderEngine/deffered/sun/sun.vert"
#define FRAGFILE    "src/engine/renderEngine/deffered/sun/sun.frag"

SunShader::SunShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}

void SunShader::getAllUniformLocations() {
    addUniformVariable("transformationMatrix");
    addUniformVariable("vpMatrix");
}


void SunShader::loadUniforms(TRScene *scene) {
    loadMat4("transformationMatrix", scene->skyCtx.sun->getMatrix()
     * glm::scale(glm::vec3(scene->skyCtx.sun->scale)));
    loadMat4("vpMatrix", scene->camera->getVPMatrix());
}