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
#include "TR/TRLensFlare.h"

#include <iostream>

#include <imgui/imgui.h>

void terraindemo() {
    TesseractEngine *engine = new TesseractEngine();

    TRScene *scene = new TRScene(std::make_shared<RogueCamera>(glm::vec3(0.f), 1.f, 50000.f, 70.f, 500.f, 250.f));
    scene->setAmbientLight(0.5f);

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

    auto a = TRLoader::loadTexture("res/blazeit.png");
    auto b = TRLoader::loadTexture("res/Ground_11_DIF.png");

    auto pack = std::make_shared<TerrainTexInfo>(TRLoader::loadTexture("res/slopeextractfixed.png"), b, b, b, a, 400.f);
    scene->terrain = std::move(std::unique_ptr<TRTerrain>(new TRTerrain(glm::vec3(0.f, 100.f, 0.f), 64, 62.5f * 2.f, 1600.f, TRLoader::loadHeightMap("res/hhm.png"), pack, 0.05f)));
    scene->terrain->edgesPerRTHeight = 30.f;

    scene->lights.push_back(std::make_shared<TRLight>(glm::vec3(0, 200000, -100000), glm::vec3(1.3f)));

    while (!TRDisplayManager::windowShouldClose()) {

        if (TRKeyboard::getCbKey(GLFW_KEY_F11)) {
            if (TRDisplayManager::isFullScreen()) {
                TRDisplayManager::exitFullScreen();
            }
            else {
                TRDisplayManager::goFullScreen();
            }
        }
        engine->renderScene(scene);
        TRDisplayManager::updateDisplay();
    }

    delete engine;
    delete scene;
}
