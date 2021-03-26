#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_TERRAIN_NORMALCOMP_NORMALCOMPSHADER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_TERRAIN_NORMALCOMP_NORMALCOMPSHADER

#include "TR/ShaderProgram.h"
#include "TR/TRHeightmap.h"

class NormalCompShader : public ShaderProgram {
public:
    NormalCompShader();
    ~NormalCompShader();
    inline void loadStrength(float str) { loadFloat("strength", str); }
protected:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_TERRAIN_NORMALCOMP_NORMALCOMPSHADER */
