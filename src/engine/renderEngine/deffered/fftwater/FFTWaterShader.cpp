#include "TR/FFTWaterShader.h"

#define VTXFILE  "src/engine/renderEngine/deffered/fftwater/fftwater.vert"
#define CTRLFILE "src/engine/renderEngine/deffered/fftwater/fftwater.tesc"
#define EVALFILE "src/engine/renderEngine/deffered/fftwater/fftwater.tese"
#define FRAGFILE "src/engine/renderEngine/deffered/fftwater/fftwater.frag"

FFTWaterShader::FFTWaterShader() : ShaderProgram(VTXFILE, FRAGFILE, CTRLFILE, EVALFILE) {
    setup();
}

void FFTWaterShader::getAllUniformLocations() {
    addUniformVariable("vpMatrix");
    addUniformVariable("p11");
    addUniformVariable("edgesPerRTHeight");

    addUniformVariable("startPos");
    addUniformVariable("totalSize");

    addUniformVariable("minTess");
    addUniformVariable("maxTess");

    addUniformVariable("tiling");
    addUniformVariable("colour");
    addUniformVariable("reflectivity");
    addUniformVariable("shineDamper");
}