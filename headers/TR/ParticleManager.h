#ifndef SRC_ENGINE_SCENE_PARTICLES_PARTICLEMANAGER
#define SRC_ENGINE_SCENE_PARTICLES_PARTICLEMANAGER

#include <forward_list>
#include <list>
#include <unordered_map>
#include <vector>

#include "TR/TRParticle.h"

#include <glm/mat4x4.hpp>

class ParticleManager {
    friend class TRScene;
    friend class TesseractEngine;
    friend class ParticleRenderer;
public:
    TRParticle* allocateParticle(float lifelen);
    void clearParticles();
private:
    std::list<TRParticle*> active;
    std::forward_list<TRParticle*> pool;
    const unsigned int poolSize;
    ParticleManager(unsigned int count);
    ~ParticleManager();
    void update(const glm::mat4 &viewMatrix);

    std::unordered_map<ParticleTexture*, std::vector<TRParticle*>> particles;
};

#endif /* SRC_ENGINE_SCENE_PARTICLES_PARTICLEMANAGER */
