#ifndef SRC_ENGINE_SCENE_SKYBOX_TRSKYBOX
#define SRC_ENGINE_SCENE_SKYBOX_TRSKYBOX

#include <memory>
#include "TR/RawModel.h"
#include "TR/TRTexture.h"

class TRSkyBox {
public:
    TRSkyBox(float size);
    ~TRSkyBox() {};

    const float size;
    const std::shared_ptr<RawModel> model;

    float rotation = 0.f;
    float lowerFadeBound = -1000000.f, upperFadeBound = -1000000.f;
    float blend = 0.f;
    float yOffset = 0.f;
    float bloom = 0.f;

    bool gradientMode = false;

    TRTexture *texture1 = nullptr, *texture2 = nullptr;

    glm::vec3 gradient1 = glm::vec3(0.f, 0.f, 1.f);
    glm::vec3 gradient2 = glm::vec3(1.f, 1.f, 1.f);
};

#endif /* SRC_ENGINE_SCENE_SKYBOX_TRSKYBOX */
