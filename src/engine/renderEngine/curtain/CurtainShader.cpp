#include "TR/CurtainShader.h"

#define VTXFILE     "src/engine/renderEngine/curtain/curtain.vert"
#define FRAGFILE    "src/engine/renderEngine/curtain/curtain.frag"

CurtainShader::CurtainShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}

void CurtainShader::getAllUniformLocations() {
    addUniformVariable("colour");
    addUniformVariable("solid");
}