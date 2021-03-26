#include "TR/NormalCompShader.h"

#define COMPFILE "src/engine/renderEngine/deffered/terrain/normalcomp/terrainNormal.comp"

NormalCompShader::NormalCompShader() : ShaderProgram(COMPFILE) {
    setup();
}

void NormalCompShader::getAllUniformLocations() {
    addUniformVariable("strength");
}

NormalCompShader::~NormalCompShader() {

}