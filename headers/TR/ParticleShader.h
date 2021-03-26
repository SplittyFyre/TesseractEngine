#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_PARTICLE_PARTICLESHADER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_PARTICLE_PARTICLESHADER

#include "TR/ShaderProgram.h"

class ParticleShader : public ShaderProgram {
public:
    ParticleShader();
    virtual ~ParticleShader();

    inline void loadProjectionMatrix(const glm::mat4 &pmat) {
        loadMat4("projectionMatrix", pmat);
    }
    inline void loadNumRows(float f) {
        loadFloat("numRows", f);
    }

protected:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_PARTICLE_PARTICLESHADER */
