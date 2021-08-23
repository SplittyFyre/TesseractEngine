#ifndef HEADERS_TR_DEFFEREDSHADERW
#define HEADERS_TR_DEFFEREDSHADERW

#include "TR/ShaderProgram.h"
#include "TR/TRScene.h"

class DefferedShaderW : public ShaderProgram {
public:
    DefferedShaderW();
    virtual ~DefferedShaderW() {};
    
    void connectTextureUnits();

    void loadLight(const std::shared_ptr<TRLight> &light);

    inline void loadAmbientLightLvl(float light) { loadFloat("ambientLightLvl", light); };
    inline void loadInvProjectionMat(const glm::mat4 &invp) { loadMat4("invProjectionMatrix", invp); };
    inline void loadInvViewMat(const glm::mat4 &invv) { loadMat4("invViewMatrix", invv); };
    inline void loadMatTexProj(const glm::mat4 &m) { loadMat4("matTexProj", m); }
    inline void loadCameraPos(const glm::vec3 &pos) { loadVec3("cameraPos", pos); };

    void loadSkyCtx(const SkyContext &ctx);
    void loadTimer();

protected:
    void getAllUniformLocations() override;
private:
    float timer = 0.f;
};

#endif /* HEADERS_TR_DEFFEREDSHADERW */
