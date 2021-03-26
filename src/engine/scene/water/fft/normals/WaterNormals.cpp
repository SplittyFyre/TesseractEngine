#include "TR/WaterNormals.h"

#define COMPFILE "src/engine/scene/water/fft/normals/waternormals.comp"

WaterNormals::WaterNormals() : ShaderProgram(COMPFILE) {
    setup();
}

void WaterNormals::getAllUniformLocations() {
    addUniformVariable("normalStrength");
    addUniformVariable("N");
}


void WaterNormals::update(TRTexture *heightMap, TRTexture *normalMap, int N, float str) {
    this->start();

    loadFloat("normalStrength", str);
    loadFloat("N", N);

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, heightMap->texID);

    glBindImageTexture(0, normalMap->texID, 0, false, 0, GL_WRITE_ONLY, GL_RGBA32F);

    this->dispatchCompute(N, N, 1);
    glFinish();

    this->stop();
}