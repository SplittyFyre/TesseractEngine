// some demos of engine features

#include "TR/TRDisplayManager.h"
#include "TR/TRKeyboard.h"
#include "TR/TesseractEngine.h"
#include "TR/FFTPreComp.h"
#include "TR/FreqDomain.h"
#include "TR/Butterflies.h"
#include "TR/WaterNormals.h"
#include "TR/RogueCamera.h"
#include "TR/OBJParser.h"
#include "TR/SimpleGeometry.h"

#include <iostream>

#include <imgui/imgui.h>

TesseractEngine *engine;
TRScene *scene;

void dragondemo() {
    engine = new TesseractEngine();

    scene = new TRScene(std::make_shared<RogueCamera>(glm::vec3(0, 46.55, 203.4), 1.f, 1000.f, 70.f, 100.f, 50.f));
    scene->setAmbientLight(0.5f);
    scene->skyCtx.setSkyCol(1.f, 1.f, 1.f);

    std::vector<const char *> textures = {
        "res/daytime/RT.png",
        "res/daytime/LF.png",
        "res/daytime/DN.png",
        "res/daytime/UP.png",
        "res/daytime/BK.png",
        "res/daytime/FT.png"
    };

    scene->skybox = std::move(std::make_unique<TRSkyBox>(100.f));
    scene->skybox->texture1 = TRLoader::loadCubeMap(textures);

    scene->lights.push_back(std::make_shared<TRLight>(glm::vec3(0, 1000, 2000), glm::vec3(1.3f)));

    

    std::shared_ptr<RawModel> rawModel = TRLoader::loadToModel(OBJParser::parseObjModel("res/dragon.obj").get());
    std::shared_ptr<ModelSkin> skin = std::make_shared<ModelSkin>(TRLoader::loadTexture("res/gold.png"));
    skin->reflectivity = 1.5f;
    skin->shineDamper = 15.f;
    std::shared_ptr<TexturedModel> model = std::make_shared<TexturedModel>(rawModel, skin);

    std::shared_ptr<TexturedModel> model2 = std::make_shared<TexturedModel>(TRLoader::loadToModel(OBJParser::parseObjModel("res/bunny.obj").get()), skin);

    auto dragon = std::shared_ptr<SimpleGeometry>(new SimpleGeometry(model, glm::vec3(0.f), 0.f, 0.f, 0.f, glm::vec3(10)));

    dragon->addChild(std::shared_ptr<SimpleGeometry>(new SimpleGeometry(model2, glm::vec3(100.f, 50.f, 0.f), 0.f, 0.f, 0.f, glm::vec3(4))));
    dragon->addChild(std::shared_ptr<SimpleGeometry>(new SimpleGeometry(model2, glm::vec3(-100.f, 50.f, 0.f), 0.f, 0.f, 0.f, glm::vec3(4))));

    scene->addEntityToRoot(dragon);

    while (!TRDisplayManager::windowShouldClose()) {

        if (TRKeyboard::getCbKey(GLFW_KEY_F11)) {
            if (TRDisplayManager::isFullScreen()) {
                TRDisplayManager::exitFullScreen();
            }
            else {
                TRDisplayManager::goFullScreen();
            }
        }

        dragon->rotY += 30.f * TRDisplayManager::getFrameDelta();

        engine->renderScene(scene);
        TRDisplayManager::updateDisplay();
    }

    delete engine;
    delete scene;
}
