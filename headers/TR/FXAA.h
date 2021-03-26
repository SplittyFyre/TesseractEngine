#ifndef SRC_ENGINE_POST_FXAA_FXAA
#define SRC_ENGINE_POST_FXAA_FXAA

#include "TR/FXAAShader.h"
#include "TR/TRLoader.h"

class FXAA {
public:
    FXAA() {};
    ~FXAA() {};
    void doFXAA(GLuint tex);
    float edgeMin = 0.0312f;
    float edgeMax = 0.125f;
private:
    FXAAShader shader;
};

#endif /* SRC_ENGINE_POST_FXAA_FXAA */
