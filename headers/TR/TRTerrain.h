#ifndef SRC_ENGINE_SCENE_TERRAIN_TRTERRAIN
#define SRC_ENGINE_SCENE_TERRAIN_TRTERRAIN

#include <vector>
#include <memory>

#include "TR/TRLoader.h"
#include "TR/TRHeightmap.h"
#include "TR/TRCamera.h"
#include "glm/vec3.hpp"
#include "glm/mat4x4.hpp"


struct TerrainTexInfo {
    const TRTexture * const splatMap;
    const TRTexture * const rtex;
    const TRTexture * const gtex;
    const TRTexture * const btex;
    const TRTexture * const ntex;
    float tiling;
    TerrainTexInfo(TRTexture *splatMap, TRTexture *rtex, TRTexture *gtex, TRTexture *btex, TRTexture *ntex, float tiling)
    : splatMap(splatMap), rtex(rtex), gtex(gtex), btex(btex), ntex(ntex), tiling(tiling) {}
    
    TerrainTexInfo(const TerrainTexInfo&) = delete;
    TerrainTexInfo& operator=(const TerrainTexInfo&) = delete;
};

struct TileData {
    const glm::vec3 position;
    const glm::vec3 center;
    const float radius;
    const float maxHeight;
    TileData(float x, float y, float z, float radius, float mh, float tileSize, float cy)
    : position(x, y, z), center(x + tileSize * 0.5f, cy, z + tileSize * 0.5f),
     radius(radius), maxHeight(mh) {}
};

class TRTerrain {
    friend class DefrTerrainRenderer;
public:
    TRTerrain(const glm::vec3 &position, int tileCnt, float tileSize, float heightFactor, 
    TRHeightmap *heightMap, const std::shared_ptr<TerrainTexInfo> &texInfo, float normalStrength);
    ~TRTerrain();

    float getHeightRaw(float x, float z) const;
    float getHeightBC(float x, float z) const;
    
    const glm::vec3 position;
    const int tileCnt;
    const float tileSize;

    const float heightFactor;
    float edgesPerRTHeight = 10.f;

    float minTess = 1.f, maxTess = 64.f;

    float waterLevelCull = -std::numeric_limits<float>::infinity();

    const TRHeightmap *heightMap;
    const TRTexture *normalMap;
    std::shared_ptr<TerrainTexInfo> texInfo;
private:
    std::vector<std::vector<TileData>> tiles;
    void calcTile(int i, int j);
    float mmul;

    const GLuint vaoID, vboID;
    float *buffer;

    int update(TRCamera *camera);
};

#endif /* SRC_ENGINE_SCENE_TERRAIN_TRTERRAIN */
