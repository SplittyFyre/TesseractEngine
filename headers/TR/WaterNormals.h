#ifndef SRC_ENGINE_SCENE_WATER_FFT_NORMALS_WATERNORMALS
#define SRC_ENGINE_SCENE_WATER_FFT_NORMALS_WATERNORMALS

#include "TR/ShaderProgram.h"

#include "TR/TRTexture.h"

class WaterNormals : public ShaderProgram {
public:
    WaterNormals();
    ~WaterNormals() {};
    void update(TRTexture *heightMap, TRTexture *normalMap, int N, float str);
private:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_SCENE_WATER_FFT_NORMALS_WATERNORMALS */
