#include "TR/ParticleManager.h"

ParticleManager::ParticleManager(unsigned int count) : poolSize(count) {
    for (unsigned int i = 0; i < count; i++) {
        pool.push_front(new TRParticle());
    }
}

TRParticle* ParticleManager::allocateParticle(float lifelen) {
    if (pool.empty()) { return nullptr; }

    TRParticle *ret = pool.front();
    pool.pop_front();
    active.push_back(ret);

    ret->dead = false;
    ret->elapsedTime = 0.f;
    ret->lifeLen = std::max(lifelen, 0.1f);
    
    return ret;
}

void ParticleManager::clearParticles() {
    for (TRParticle *p : active) {
        pool.push_front(p);
    }
    active.clear();
}

void ParticleManager::update(const glm::mat4 &viewMatrix) {
    particles.clear();
    std::list<TRParticle*>::iterator it = active.begin();

    while (it != active.end()) {
        TRParticle *p = *it;
        p->update(viewMatrix);
        if (p->dead) { // dead, remove
            it = active.erase(it);
            pool.push_front(p);
        }
        else {
            it++;
            if (p->particleTexture != nullptr) {
                particles[p->particleTexture.get()].push_back(p);
            }
        }
    }
}

ParticleManager::~ParticleManager() {
    for (TRParticle *p : active) {
        delete p;
    }
    for (TRParticle *p : pool) {
        delete p;
    }
}