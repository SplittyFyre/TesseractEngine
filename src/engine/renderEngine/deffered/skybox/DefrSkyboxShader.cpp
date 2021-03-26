#include "TR/DefrSkyboxShader.h"

#define VTXFILE "src/engine/renderEngine/deffered/skybox/skybox.vert"
#define FRAGFILE "src/engine/renderEngine/deffered/skybox/skybox.frag"

DefrSkyboxShader::DefrSkyboxShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}


void DefrSkyboxShader::getAllUniformLocations() {
    addUniformVariable("viewMatrix");
    addUniformVariable("projectionMatrix");
    addUniformVariable("skyColour");
    addUniformVariable("blendFactor");
    addUniformVariable("hasOnlyOneTexture");
    addUniformVariable("lowerFade");
    addUniformVariable("upperFade");

    addUniformVariable("gradientColour1");
    addUniformVariable("gradientColour2");

    addUniformVariable("cubeMap1");
    addUniformVariable("cubeMap2");

    addUniformVariable("yOffset");
    addUniformVariable("bloom");

    addUniformVariable("camPos");
}

void DefrSkyboxShader::loadViewMatrix(TRCamera *camera, float rotation) {
    glm::mat4 mat = camera->getViewMatrix(); // copy
    mat[3][0] = 0.f;
    mat[3][1] = 0.f;
    mat[3][2] = 0.f;
    loadMat4("viewMatrix", mat * glm::rotate(glm::radians(rotation), glm::vec3(0, 1, 0)));
    loadVec3("camPos", camera->position);
}

void DefrSkyboxShader::loadFadeLimits(float low, float up) {
    loadFloat("lowerFade", low);
    loadFloat("upperFade", up);
}

void DefrSkyboxShader::connectTextureUnits() {
    loadInt("cubeMap1", 0);
    loadInt("cubeMap2", 1);
}

DefrSkyboxShader::~DefrSkyboxShader() {

}