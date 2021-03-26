#ifndef HEADERS_SF_AOES
#define HEADERS_SF_AOES

#include <vector>
#include <glm/vec3.hpp>

struct AOE {
    glm::vec3 pos = glm::vec3(0.f);
    float radius = 0.f;
    float damage = 0.f;
    void set(const glm::vec3 &pos, float radius, float damage) {
        this->pos = pos;
        this->radius = radius;
        this->damage = damage;
    }
};

class AOES {
public:
    AOES(unsigned size) : aoes(size) {}
    ~AOES() {}
    inline AOE &operator[] (std::size_t i) { return aoes[i]; }
    inline void reset() { idx = 0; }
    inline unsigned size() { return idx; }

    inline void add(const glm::vec3 &pos, float radius, float damage) {
        if (idx < aoes.size()) {
            aoes[idx++].set(pos, radius, damage);
        }
    }

private:
    unsigned idx = 0;
    std::vector<AOE> aoes;
};

#endif /* HEADERS_SF_AOES */
