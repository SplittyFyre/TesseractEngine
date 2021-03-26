#ifndef SRC_ENGINE_RENDERENGINE_CURTAIN_CURTAINSHADER
#define SRC_ENGINE_RENDERENGINE_CURTAIN_CURTAINSHADER

#include "TR/ShaderProgram.h"

class CurtainShader : public ShaderProgram {
public:
    CurtainShader();
    ~CurtainShader() {};
    inline void loadColour(float r, float g, float b, float a) { loadVec4("colour", r, g, b, a); }
    inline void loadSolid(bool b) { loadBoolean("solid", b); }
protected:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_RENDERENGINE_CURTAIN_CURTAINSHADER */
