#include "TR/FlareShader.h"

#define VTXFILE     "src/engine/renderEngine/fx/lensflare/lensflare.vert"
#define FRAGFILE    "src/engine/renderEngine/fx/lensflare/lensflare.frag"

FlareShader::FlareShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}

void FlareShader::getAllUniformLocations() {
    addUniformVariable("transform");
    addUniformVariable("brightness");
}

void FlareShader::loadFlare(float x, float y, float sx, float sy) {
    loadVec4("transform", x, y, sx, sy);
}