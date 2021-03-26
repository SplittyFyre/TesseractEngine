#ifndef SRC_ENGINE_POST_BLOOM_BLOOMCOMBINER
#define SRC_ENGINE_POST_BLOOM_BLOOMCOMBINER

#include "TR/BloomShader.h"

class BloomCombiner {
public:
    BloomCombiner(float factor) : factor(factor) {};
    ~BloomCombiner() {};
    void combineBloom(GLuint sceneTex, GLuint highlightTex);
    float factor = 1.0f;
private:
    BloomShader shader;
};

#endif /* SRC_ENGINE_POST_BLOOM_BLOOMCOMBINER */
