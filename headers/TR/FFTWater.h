#ifndef SRC_ENGINE_SCENE_WATER_FFT_FFTWATER
#define SRC_ENGINE_SCENE_WATER_FFT_FFTWATER

#include "TR/FFTCtx.h"
#include "TR/TRCamera.h"

#include "TR/FreqDomain.h"
#include "TR/Butterflies.h"
#include "TR/WaterNormals.h"

class FFTWater {
    friend class FFTWaterRenderer;
public:
    FFTWater(const glm::vec3 &pos, float tileSize, int tileCnt, const FFTCtx &ctx, FFTData fftdata, const glm::vec3 &col);
    ~FFTWater();
    void update(TRCamera *camera);
    
    const float tileSize;
    const int tileCnt;

    const glm::vec3 position;
    glm::vec3 colour;
    float normalStrength = 0.1f;
    float edgesPerRTHeight = 25.f;

    float minTess = 1.f;
    float maxTess = 64.f;
    float tiling = 1.f;

    float reflectivity = 0.2f, shineDamper = 15.f;
    inline const TRTexture * const getNormalMap() const { return normalMap; }
private:
    const FFTCtx ctx;
    FreqDomain freqdomain;
    Butterflies butterflies;
    WaterNormals waterNormals;
    TRTexture * const normalMap;

    const GLuint vaoID, vboID;
};

#endif /* SRC_ENGINE_SCENE_WATER_FFT_FFTWATER */
