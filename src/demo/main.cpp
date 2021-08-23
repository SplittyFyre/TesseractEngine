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

void fftdemo() {
    engine = new TesseractEngine();

    FFTCtx ctx = FFTCtx(512);
    ctx.timestep = 1.f;
    ctx.A = 0.6f;
    ctx.timestep = 0.5f;

    FFTData fftdat = FFTPreComp::compute(ctx);

    scene = new TRScene(std::make_shared<RogueCamera>(glm::vec3(0.f, 35.f, 0.f), 1.f, 2000.f, 70.f, 60.f, 30.f));
    scene->camera->pitch = 44.235;
    scene->camera->yaw = -33.03;
    scene->setAmbientLight(0.5f);
    scene->skyCtx.setSkyCol(1.f, 1.f, 1.f);
    scene->skyCtx.fogDensity = 0.0008f;
    scene->skyCtx.fogGradient = 1.f;

    auto water = std::make_unique<FFTWater>(
        glm::vec3(0.f), 125.f*0.5f, 64, ctx, fftdat, glm::vec3(0.325f, 0.393f, 0.454f)
    );
    water->tiling = 32.f;
    water->edgesPerRTHeight = 25.f;
    water->normalStrength = 0.08f;

    water->reflectivity = 0.4f;
    water->shineDamper = 20.f;

    float add = -0.1f;

    /*auto a = TRLoader::loadTexture("res/blazeit.png");

    auto pack = std::make_shared<TerrainTexInfo>(TRLoader::loadTexture("res/Island-Splatmap.png"), a, a, a, a, 6000.f);
    scene->terrain = std::move(std::unique_ptr<TRTerrain>(new TRTerrain(glm::vec3(0.f, 100.f, 0.f), 64, 62.5f * 2.f, 450.f, TRLoader::loadHeightMap("res/Island-Heightmap.png"), pack, 0.05f)));
    scene->terrain->edgesPerRTHeight = 30.f;*/

    scene->fftwater = std::move(water);

    std::vector<const char *> textures = {
        "res/daytime/RT.png",
        "res/daytime/LF.png",
        "res/daytime/DN.png",
        "res/daytime/UP.png",
        "res/daytime/BK.png",
        "res/daytime/FT.png"
    };

    scene->skybox = std::move(std::make_unique<TRSkyBox>(1000.f));
    scene->skybox->texture1 = TRLoader::loadCubeMap(textures);


    auto a = TRLoader::loadTexture("res/desert_sand.png");
    auto pack = std::make_shared<TerrainTexInfo>(TRLoader::loadTexture("res/Island-Splatmap.png"), a, a, a, a, 240.f);
    scene->terrain = std::move(std::unique_ptr<TRTerrain>(new TRTerrain(glm::vec3(-500.f, 10.f, -500.f), 8, 125.f, 75.f, TRLoader::loadHeightMap("res/heightmap.png"), pack, 0.05f)));
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

        ImGui::Begin("Debug");
        ImGui::Text("x: %.3f", scene->camera->position.x);
        ImGui::Text("y: %.3f", scene->camera->position.y);
        ImGui::Text("z: %.3f", scene->camera->position.z);

        ImGui::Spacing();

        ImGui::SliderFloat("normal", &scene->fftwater->normalStrength, 0.0, 10.0);
        ImGui::End();

        /*ImGui::Begin("Ocean Displacement");
        ImGui::Image((void*) (uintptr_t) scene->fftwater->getDisplacementMap()->texID, ImVec2(512, 512));
        ImGui::End();*/

        //scene->camera->position.y = scene->terrain->getHeightBC(scene->camera->position.x, scene->camera->position.z) + 1.85f;
        scene->fftwater->colour = glm::vec3(0.325f, 0.393f, 0.454f) + glm::vec3(add);
        
        engine->renderScene(scene);
        TRDisplayManager::updateDisplay();
    }

    delete engine;
    delete scene;
}









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


void terraindemo() {
    engine = new TesseractEngine();

    scene = new TRScene(std::make_shared<RogueCamera>(glm::vec3(0.f), 1.f, 50000.f, 70.f, 500.f, 250.f));
    scene->setAmbientLight(0.5f);

    auto a = TRLoader::loadTexture("res/blazeit.png");

    auto pack = std::make_shared<TerrainTexInfo>(TRLoader::loadTexture("res/Island-Splatmap.png"), a, a, a, a, 6000.f);
    scene->terrain = std::move(std::unique_ptr<TRTerrain>(new TRTerrain(glm::vec3(0.f, 100.f, 0.f), 64, 62.5f * 2.f, 450.f, TRLoader::loadHeightMap("res/Island-Heightmap.png"), pack, 0.05f)));
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







int main(void) {

    TRDisplayManager::createDisplay(930, 1016, 60, "StormFront", nullptr);

    fftdemo();
    
    TRDisplayManager::closeDisplay();

    return 0;
}