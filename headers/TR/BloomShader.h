#ifndef SRC_ENGINE_POST_BLOOM_BLOOMSHADER
#define SRC_ENGINE_POST_BLOOM_BLOOMSHADER

#include "TR/ShaderProgram.h"

class BloomShader : public ShaderProgram {
public:
    BloomShader();
    ~BloomShader() {};
    inline void loadHighlightFactor(float hf) { loadFloat("highlightFactor", hf); }
protected:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_POST_BLOOM_BLOOMSHADER */
