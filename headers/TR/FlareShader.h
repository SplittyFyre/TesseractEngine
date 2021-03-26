#ifndef SRC_ENGINE_RENDERENGINE_FX_LENSFLARE_FLARESHADER
#define SRC_ENGINE_RENDERENGINE_FX_LENSFLARE_FLARESHADER

#include "TR/ShaderProgram.h"

#include "TR/TRLensFlare.h"

class FlareShader : public ShaderProgram {
public:
    FlareShader();
    ~FlareShader() {};
    void loadFlare(float x, float y, float sx, float sy);
    inline void loadBrightness(float b) { loadFloat("brightness", b); }
protected:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_RENDERENGINE_FX_LENSFLARE_FLARESHADER */
