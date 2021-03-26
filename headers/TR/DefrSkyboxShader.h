#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_SKYBOX_DEFRSKYBOXSHADER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_SKYBOX_DEFRSKYBOXSHADER

#include "TR/ShaderProgram.h"
#include "TR/TRCamera.h"
#include "glm/glm.hpp"

class DefrSkyboxShader : public ShaderProgram {
public:
    DefrSkyboxShader();
    virtual ~DefrSkyboxShader();

    void loadViewMatrix(TRCamera *camera, float rotation);
    void loadFadeLimits(float low, float up);
    void connectTextureUnits();

    inline void loadGradientFactors(const glm::vec3 &a, const glm::vec3 &b) {
        loadVec3("gradientColour1", a); loadVec3("gradientColour2", b);
    }

    inline void loadSkyColour(float r, float g, float b) {
        loadVec3("skyColour", r, g, b);
    }
    inline void loadBlendFactor(float f) {
        loadFloat("blendFactor", f);
    }
    inline void loadHasOnlyOneTexture(bool b) {
        loadBoolean("hasOnlyOneTexture", b);
    }
    inline void loadProjectionMatrix(const glm::mat4 &mat) {
        loadMat4("projectionMatrix", mat);
    }
    inline void loadYOffset(float f) {
        loadFloat("yOffset", f);
    }
    inline void loadBloom(float bloom) {
        loadFloat("bloom", bloom);
    }

protected:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_SKYBOX_DEFRSKYBOXSHADER */
