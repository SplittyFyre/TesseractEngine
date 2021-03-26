#ifndef HEADERS_TR_DEFRTERRAINSHADER
#define HEADERS_TR_DEFRTERRAINSHADER

#include "TR/ShaderProgram.h"

#include "TR/TRCamera.h"
#include "glm/glm.hpp"


class DefrTerrainShader : public ShaderProgram {
public:
    DefrTerrainShader();
    ~DefrTerrainShader();

    inline void loadMatrices(TRCamera *camera) {
        loadMat4("vpMatrix", camera->getVPMatrix()); loadFloat("p11", camera->getProjectionMatrix()[1][1]);
    }

    inline void loadPatchSize(float size) {
        loadFloat("size", size);
    }
    
    inline void loadStartPos(const glm::vec3 &pos) {
        loadVec3("startPos", pos);
    } 
    inline void loadTotalSize(float totalSize) {
        loadFloat("totalSize", totalSize);
    }  

    inline void loadHeightFactor(float hf) {
        loadFloat("heightFactor", hf);
    }

    inline void loadEdgesPerRTHeight(float f) {
        loadFloat("edgesPerRTHeight", f);
    }

    inline void loadTiling(float t) {
        loadFloat("tiling", t);
    }

    inline void loadTessClamp(float min, float max) {
        loadFloat("minTess", min);
        loadFloat("maxTess", max);
    }

    void connectTextureUnits();

protected:
    void getAllUniformLocations() override;
};

#endif /* HEADERS_TR_DEFRTERRAINSHADER */
