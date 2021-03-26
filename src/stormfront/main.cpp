#include "TR/TRDisplayManager.h"
#include "TR/TRKeyboard.h"
#include "TR/TesseractEngine.h"
#include "TR/FFTPreComp.h"
#include "TR/FreqDomain.h"
#include "TR/Butterflies.h"
#include "TR/WaterNormals.h"

#include "SF/StormFrontGame.h"
#include <iostream>

#define FFT 1

int main(void) {

    TRDisplayManager::createDisplay(930, 1016, 60, "StormFront", nullptr);

    #if !FFT

    TesseractEngine *engine = new TesseractEngine();

    StormFrontGame *game = new StormFrontGame();

    game->run(engine);

    delete game;
    delete engine;

    #else

    TesseractEngine *engine = new TesseractEngine();

    FFTCtx ctx = FFTCtx(256);
    ctx.timestep = 1.f;
    ctx.A = 6.f * 2.f;

    FFTData fftdat = FFTPreComp::compute(ctx);

    TRScene *scene = new TRScene(std::make_shared<RogueCamera>(glm::vec3(0.f), 1.f, 50000.f, 70.f, 100.f, 50.f));
    scene->setAmbientLight(0.5f);
    scene->skyCtx.setSkyCol(1.f, 1.f, 1.f);
    scene->skyCtx.fogDensity = 0.0008f;
    scene->skyCtx.fogGradient = 1.f;

    auto water = std::make_unique<FFTWater>(
        glm::vec3(0.f), 125.f*0.5f, 64, ctx, fftdat, glm::vec3(0.325f, 0.393f, 0.454f)
    );
    water->tiling = 32.f;
    water->edgesPerRTHeight = 20.f;
    water->normalStrength = 5.f;

    water->reflectivity = 0.4f;
    water->shineDamper = 20.f;

    float add = 0.f;

    /*auto a = TRLoader::loadTexture("res/blazeit.png");

    auto pack = std::make_shared<TerrainTexInfo>(TRLoader::loadTexture("res/Island-Splatmap.png"), a, a, a, a, 6000.f);
    scene->terrain = std::move(std::unique_ptr<TRTerrain>(new TRTerrain(glm::vec3(0.f), 64, 62.5f * 2.f, 450.f, TRLoader::loadHeightMap("res/Island-Heightmap.png"), pack, 0.05f)));
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

    scene->skybox = std::move(std::make_unique<TRSkyBox>(10000.f));
    scene->skybox->texture1 = TRLoader::loadCubeMap(textures);


    scene->lights.push_back(std::make_shared<TRLight>(glm::vec3(0, 200000, -100000), glm::vec3(1.3f)));

    while (!TRDisplayManager::windowShouldClose()) {

        ImGui::Begin("util");
        ImGui::SliderFloat("ns", &scene->fftwater->normalStrength, 0.f, 10.f, "%.5f");
        ImGui::SliderFloat("colour", &add, -1.f, 1.f);
        ImGui::End();

        scene->fftwater->colour = glm::vec3(0.325f, 0.393f, 0.454f) + glm::vec3(add);

        ImGui::Begin("FPS");
        ImGui::Text("%f", 1.f / TRDisplayManager::getFrameDelta());
        ImGui::End();
        
        engine->renderScene(scene);
        TRDisplayManager::updateDisplay();
    }

    delete engine;
    delete scene;

    #endif
    
    TRDisplayManager::closeDisplay();

    return 0;
}