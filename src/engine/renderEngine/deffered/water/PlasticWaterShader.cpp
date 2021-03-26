#include "TR/PlasticWaterShader.h"

#define VTXFILE "src/engine/renderEngine/deffered/water/plasticWater.vert"
#define FRAGFILE "src/engine/renderEngine/deffered/water/plasticWater.frag"

PlasticWaterShader::PlasticWaterShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}

void PlasticWaterShader::getAllUniformLocations() {
    addUniformVariable("translate");
    addUniformVariable("scale");
    addUniformVariable("vpMatrix");

    addUniformVariable("tiling");
    addUniformVariable("movedFactor");

    addUniformVariable("waterColour");
    addUniformVariable("reflectivity");
    addUniformVariable("shineDamper");

    addUniformVariable("strength");
}

void PlasticWaterShader::loadUniforms(TRScene *scene) {
    TRPlasticWater *water = scene->water.get();

    loadVec3("translate", water->position);
    loadFloat("scale", water->scale);
    loadMat4("vpMatrix", scene->camera->getVPMatrix());
    
    loadFloat("tiling", water->tiling);
    loadFloat("movedFactor", water->getMovedFactor());
    
    loadVec3("waterColour", water->colour);
    loadFloat("reflectivity", water->reflectivity);
    loadFloat("shineDamper", water->shineDamper);

    loadFloat("strength", water->normalStrength);

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, water->dudvMap->texID);
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, water->normalMap->texID);
}