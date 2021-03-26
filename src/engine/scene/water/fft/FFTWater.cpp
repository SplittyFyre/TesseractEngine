#include "TR/FFTWater.h"
#include <iostream>

#define INSTANCE_DATA_LENF 3
#include <imgui/imgui.h>

FFTWater::FFTWater(const glm::vec3 &pos, float tileSize, int tileCnt, const FFTCtx &ctx, FFTData fftdata, const glm::vec3 &col) : 
tileSize(tileSize), tileCnt(tileCnt),
position(pos), colour(col), ctx(ctx), freqdomain(ctx, fftdata), butterflies(ctx, fftdata),
normalMap(TRLoader::genTexStorage2D(ctx.N, GL_RGBA32F, true)),
vaoID(TRLoader::createVAO()), vboID(TRLoader::createEmptyVBOStatic(INSTANCE_DATA_LENF * tileCnt * tileCnt)) 
{
    TRLoader::addInstancedAttrib(vaoID, vboID, 0, 3, INSTANCE_DATA_LENF, 0);

    float *buffer = new float[INSTANCE_DATA_LENF * tileCnt * tileCnt];
    int ptr = 0;

    for (int i = 0; i < tileCnt; i++) {
        for (int j = 0; j < tileCnt; j++) {
            buffer[ptr++] = pos.x + tileSize * i;
            buffer[ptr++] = tileSize;
            buffer[ptr++] = pos.z + tileSize * j;
        }
    }

    TRLoader::updateVboStatic(vboID, buffer, INSTANCE_DATA_LENF * tileCnt * tileCnt);

    delete[] buffer;
}

FFTWater::~FFTWater() {

}

void FFTWater::update(TRCamera *camera) {
    freqdomain.update();

    butterflies.update(freqdomain);

    waterNormals.update(butterflies.displacement, normalMap, ctx.N, normalStrength);
}
