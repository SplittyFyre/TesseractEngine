#include "TR/FreqShader.h"

#define COMPFILE "src/engine/scene/water/fft/freqdmn/freqdomain.comp"

FreqShader::FreqShader() : ShaderProgram(COMPFILE) {
    setup();
}

void FreqShader::getAllUniformLocations() {
    addUniformVariable("L");
    addUniformVariable("time");
    addUniformVariable("N");
}