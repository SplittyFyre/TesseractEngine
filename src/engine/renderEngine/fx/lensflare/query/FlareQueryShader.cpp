#include "TR/FlareQueryShader.h"

#include "TR/TRDisplayManager.h"

#define VTXFILE "src/engine/renderEngine/fx/lensflare/query/flarequery.vert"
#define FRAGFILE "src/engine/renderEngine/fx/lensflare/query/flarequery.frag"

FlareQueryShader::FlareQueryShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}

void FlareQueryShader::getAllUniformLocations() {
    addUniformVariable("transformationMatrix");
    addUniformVariable("vpMatrix");
}


void FlareQueryShader::loadUniforms(TRScene *scene) {
    loadMat4("transformationMatrix", scene->skyCtx.sun->getMatrix()
     * glm::scale(glm::vec3(scene->skyCtx.lensFlare->otScale)));
    loadMat4("vpMatrix", scene->camera->getVPMatrix());
}