#include "TR/TRTerrain.h"

#include "TR/NormalCompGen.h"
#include "TR/TRMath.h"


// position :P
#define INSTANCE_DATA_LENF 3

void TRTerrain::calcTile(int i, int j) {
    float minHeight = std::numeric_limits<float>::infinity();
    float maxHeight = -std::numeric_limits<float>::infinity();

    float x = i * tileSize;
    float z = j * tileSize;

    for (int k = x * mmul; k < (x + tileSize) * mmul; k++) {
        for (int l = z * mmul; l < (z + tileSize) * mmul; l++) {
            float at = heightMap->heightField[k + (heightMap->size * l)] * heightFactor + position.y;
            minHeight = std::min(minHeight, at);
            maxHeight = std::max(maxHeight, at);
        }
    }

    float mid = (minHeight + maxHeight) * 0.5f;

    float radius = maxHeight - mid;
    radius = std::max(radius, tileSize * sqrtf(2.f) * 0.5f);

    tiles[i].emplace_back(
        position.x + (i * tileSize), position.y, position.z + (j * tileSize),
        radius, maxHeight, tileSize, mid
    );
}

TRTerrain::TRTerrain(const glm::vec3 &position, int tileCnt, float tileSize, float heightFactor, TRHeightmap *heightMap, const std::shared_ptr<TerrainTexInfo> &texInfo, float normalStrength) 
    : position(position), tileCnt(tileCnt), tileSize(tileSize), heightFactor(heightFactor), heightMap(heightMap),
     normalMap(NormalCompGen::generateTerrainNormals(heightMap, normalStrength)),
     texInfo(texInfo),
     vaoID(TRLoader::createVAO()), vboID(TRLoader::createEmptyVBO(INSTANCE_DATA_LENF * tileCnt * tileCnt)) {

    TRLoader::addInstancedAttrib(vaoID, vboID, 0, 3, INSTANCE_DATA_LENF, 0);
    buffer = new float[INSTANCE_DATA_LENF * tileCnt * tileCnt];

    mmul = (heightMap->size - 1) / (tileSize * tileCnt);  // local / totalSize * (mapSize - 1)

    tiles.resize(tileCnt);
    for (int i = 0; i < tileCnt; i++) {
        for (int j = 0; j < tileCnt; j++) {
            calcTile(i, j);
        }
    }
}

float TRTerrain::getHeightRaw(float x, float z) const {
    float lx = x - position.x; float lz = z - position.z;
    int ix = lx * mmul; int iz = lz * mmul;
    if (ix < 0 || ix >= heightMap->size || iz < 0 || iz >= heightMap->size) 
        return 0.f;
    return heightMap->heightField[ix + (heightMap->size * iz)] * heightFactor + position.y;
}

float TRTerrain::getHeightBC(float x, float z) const {
    float lx = x - position.x; float lz = z - position.z;
    int ix = lx * mmul; int iz = lz * mmul;
    if (ix < 0 || ix >= heightMap->size - 1 || iz < 0 || iz >= heightMap->size - 1) 
        return 0.f;

    float gss = (tileSize * tileCnt) / (heightMap->size - 1);

    float xCoord = std::fmod(lx, gss) * mmul;
    float zCoord = std::fmod(lz, gss) * mmul;
    float ans;
    if (xCoord <= 1.f - zCoord) {
        ans = TRMath::baryCentric(
            0, heightMap->heightField[ix + (heightMap->size * iz)] * heightFactor, 0, 1,
            heightMap->heightField[ix + 1 + (heightMap->size * iz)] * heightFactor, 0, 0,
			heightMap->heightField[ix + (heightMap->size * (iz + 1))] * heightFactor, 1,
            xCoord, zCoord
        );
    }
    else {
        ans = TRMath::baryCentric(
            1, heightMap->heightField[ix + 1 + (heightMap->size * iz)] * heightFactor, 0, 1,
            heightMap->heightField[ix + 1 + (heightMap->size * (iz + 1))] * heightFactor, 1, 0,
            heightMap->heightField[ix + (heightMap->size * (iz + 1))] * heightFactor, 1, 
            xCoord, zCoord
        );
    }
    return ans + position.y;
}



int TRTerrain::update(TRCamera *camera) {
    int ptr = 0;
    int num = 0;
    for (int i = 0; i < tileCnt; i++) {
        for (int j = 0; j < tileCnt; j++) {
            if (tiles[i][j].maxHeight >= waterLevelCull && camera->frustumCheck(tiles[i][j].center, tiles[i][j].radius)) {
                buffer[ptr++] = tiles[i][j].position.x;
                buffer[ptr++] = tiles[i][j].position.y;
                buffer[ptr++] = tiles[i][j].position.z;
                num++;
            }
        }
    }
    TRLoader::updateVbo(vboID, buffer, num * INSTANCE_DATA_LENF);
    return num;
}

TRTerrain::~TRTerrain() {
    delete buffer;
}