#ifndef SRC_ENGINE_SCENE_WATER_FFT_BUTTERFLY_BUTTERFLYSHADER
#define SRC_ENGINE_SCENE_WATER_FFT_BUTTERFLY_BUTTERFLYSHADER

#include "TR/ShaderProgram.h"

class ButterflyShader : public ShaderProgram {
public:
    ButterflyShader();
    ~ButterflyShader() {};
    inline void setPingPong(bool b) { loadBoolean("pingpong", b); }
    inline void setHorizontal(bool b) { loadBoolean("horiz", b); }
    inline void setStage(int s) { loadInt("stage", s); }
private:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_SCENE_WATER_FFT_BUTTERFLY_BUTTERFLYSHADER */
