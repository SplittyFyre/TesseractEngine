#ifndef SRC_ENGINE_SCENE_PARTICLES_TRPARTICLE
#define SRC_ENGINE_SCENE_PARTICLES_TRPARTICLE

#include <memory>

#include "TR/TRTexture.h"
#include "glm/vec2.hpp"
#include "glm/vec3.hpp"
#include "glm/mat4x4.hpp"

struct ParticleTexture {
    const TRTexture * const texture;
    const int numberOfRows;
    bool blend = true;
    ParticleTexture(TRTexture *texture, int numRows) 
    : texture(texture), numberOfRows(numRows) {}
};

class TRParticle {
    friend class ParticleManager;
    friend class ParticleRenderer;
public:
    glm::vec3 position = glm::vec3(0.f, 0.f, 0.f);
    glm::vec3 velocity = glm::vec3(0.f, 0.f, 0.f);
    float rotation = 0.f, scale = 1.f;
    float gravity = 0.f;
    std::shared_ptr<ParticleTexture> particleTexture = nullptr;

    inline void die() { lifeLen = -1.f; }
    inline bool isDead() const { return dead; };
    inline const glm::mat4 &getMatrix() const { return mat; }
private:
    TRParticle() {};
    ~TRParticle() {};

    bool dead = true;
    float lifeLen = 1.f, elapsedTime = 0.f;

    glm::vec2 texOffsetCurrent = glm::vec2(0.f, 0.f);
    glm::vec2 texOffsetNext = glm::vec2(0.f, 0.f);
    float texBlend = 0.f;
    void updateTexCoordInfo();
    void setTexOffset(glm::vec2 &target, int index);

    glm::mat4 mat;

    void update(const glm::mat4 &viewMatrix);
};

#endif /* SRC_ENGINE_SCENE_PARTICLES_TRPARTICLE */
