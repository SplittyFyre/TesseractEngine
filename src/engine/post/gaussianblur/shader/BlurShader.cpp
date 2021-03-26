#include "TR/BlurShader.h"

#define VTXFILE "src/engine/post/gaussianblur/shader/gaussian.vert"
#define FRAGFILE "src/engine/post/gaussianblur/shader/gaussian.frag"

BlurShader::BlurShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}

void BlurShader::getAllUniformLocations() {
    addUniformVariable("direction");
    addUniformVariable("resolution");
}