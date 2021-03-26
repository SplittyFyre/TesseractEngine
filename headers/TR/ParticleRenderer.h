#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_PARTICLE_PARTICLERENDERER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_PARTICLE_PARTICLERENDERER

#include <unordered_map>
#include <vector>

#include "TR/TRScene.h"
#include "TR/TRParticle.h"
#include "ParticleShader.h"

class ParticleRenderer {
public:
    ParticleRenderer(unsigned int maxInstances);
    virtual ~ParticleRenderer();
    void render(TRScene *scene);
private:
    ParticleShader shader;
    const unsigned int maxInstances;
    const GLuint vaoID, vboID;
    float *buffer;
    int bufferPointer = 0;
    void storeMatrix(TRParticle *particle);
    void updateTexData(TRParticle *particle);
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_PARTICLE_PARTICLERENDERER */
