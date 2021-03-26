#include "TR/InversionShader.h"

#define COMPFILE "src/engine/scene/water/fft/inversion/inversion.glsl"

InversionShader::InversionShader() : ShaderProgram(COMPFILE) {
    setup();
}

void InversionShader::getAllUniformLocations() {
    addUniformVariable("N");
}