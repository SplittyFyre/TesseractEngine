#ifndef HEADERS_TR_FFTWATERSHADER
#define HEADERS_TR_FFTWATERSHADER

#include "TR/ShaderProgram.h"
#include "TR/TRDisplayManager.h"
#include "TR/TRCamera.h"

class FFTWaterShader : public ShaderProgram {
public:
    FFTWaterShader();
    ~FFTWaterShader() {};

    inline void loadMatrices(TRCamera *camera) {
        loadMat4("vpMatrix", camera->getVPMatrix()); loadFloat("p11", camera->getProjectionMatrix()[1][1]);
    }
    
    inline void loadStartPos(const glm::vec3 &pos) {
        loadVec3("startPos", pos);
    } 
    inline void loadTotalSize(float totalSize) {
        loadFloat("totalSize", totalSize);
    }  

    inline void loadEdgesPerRTHeight(float f) {
        loadFloat("edgesPerRTHeight", f);
    }

    inline void loadTessClamp(float min, float max) {
        loadFloat("minTess", min);
        loadFloat("maxTess", max);
    }

    inline void loadTiling(float tiling) {
        loadFloat("tiling", tiling);
    }

    inline void loadColour(const glm::vec3 &col) {
        loadVec3("colour", col);
    }

    inline void loadSpecular(float r, float sd) {
        loadFloat("reflectivity", r); loadFloat("shineDamper", sd);
    }

private:
    void getAllUniformLocations() override;
};

#endif /* HEADERS_TR_FFTWATERSHADER */
