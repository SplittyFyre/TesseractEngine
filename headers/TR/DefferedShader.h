#ifndef ENGINE_POST_DEFFERED_SHADER_DEFFERED_SHADER_H_
#define ENGINE_POST_DEFFERED_SHADER_DEFFERED_SHADER_H_

#include "TR/ShaderProgram.h"
#include "TR/TRScene.h"

class DefferedShader : public ShaderProgram {
public:
    DefferedShader();
    virtual ~DefferedShader();

    void connectTextureUnits();

    void loadLights(const std::vector<std::shared_ptr<TRLight>> &lights);

    inline void loadAmbientLightLvl(float light) { loadFloat("ambientLightLvl", light); };
    inline void loadInvProjectionMat(const glm::mat4 &invp) { loadMat4("invProjectionMatrix", invp); };
    inline void loadInvViewMat(const glm::mat4 &invv) { loadMat4("invViewMatrix", invv); };
    inline void loadCameraPos(const glm::vec3 &pos) { loadVec3("cameraPos", pos); };

    void loadSkyCtx(const SkyContext &ctx);

private:
    GLuint location_lightPosition[TRSCENE_DEFFERED_MAX_LIGHTS];
    GLuint location_lightColour[TRSCENE_DEFFERED_MAX_LIGHTS];
    GLuint location_attenuation[TRSCENE_DEFFERED_MAX_LIGHTS];

protected:
    void getAllUniformLocations() override;
};

#endif /* ENGINE_POST_DEFFERED_SHADER_DEFFERED_SHADER_H_ */