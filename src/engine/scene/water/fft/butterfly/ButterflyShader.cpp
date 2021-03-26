#include "TR/ButterflyShader.h"

#define COMPFILE "src/engine/scene/water/fft/butterfly/butterfly.comp"

ButterflyShader::ButterflyShader() : ShaderProgram(COMPFILE) {
    setup();
}

void ButterflyShader::getAllUniformLocations() {
    addUniformVariable("pingpong");
    addUniformVariable("horiz");
    addUniformVariable("stage");
}