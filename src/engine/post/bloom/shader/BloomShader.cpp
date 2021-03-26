#include "TR/BloomShader.h"

#define VTXFILE     "src/engine/post/bloom/shader/bloom.vert"
#define FRAGFILE    "src/engine/post/bloom/shader/bloom.frag"

BloomShader::BloomShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}

void BloomShader::getAllUniformLocations() {
    addUniformVariable("highlightFactor");
}