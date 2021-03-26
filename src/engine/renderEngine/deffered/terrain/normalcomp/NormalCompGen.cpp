#include "TR/NormalCompGen.h"

#include "TR/NormalCompShader.h"
#include "TR/TRLoader.h"

TRTexture *NormalCompGen::generateTerrainNormals(TRHeightmap *heightMap, float strength) {

    int N = heightMap->size;

    TRTexture *normalTexture = TRLoader::genTexStorage2D(N, GL_RGBA32F, true);

    NormalCompShader shader;

    shader.start();
    glBindImageTexture(0, normalTexture->texID, 0, false, 0, GL_WRITE_ONLY, GL_RGBA32F);
    glBindImageTexture(1, heightMap->texID, 0, false, 0, GL_READ_ONLY, GL_R16);
    shader.loadStrength(strength);
    shader.dispatchCompute(N, N, 1);
    shader.stop();

    return normalTexture;
}