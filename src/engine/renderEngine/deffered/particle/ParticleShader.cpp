#include "TR/ParticleShader.h"

#define VTXFILE "src/engine/renderEngine/deffered/particle/particle.vert"
#define FRAGFILE "src/engine/renderEngine/deffered/particle/particle.frag"

ParticleShader::ParticleShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}

void ParticleShader::getAllUniformLocations() {
    addUniformVariable("projectionMatrix");
    addUniformVariable("numRows");
}

ParticleShader::~ParticleShader() {

}