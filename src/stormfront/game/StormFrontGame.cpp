#include "SF/StormFrontGame.h"

#include "TR/TRDisplayManager.h"
#include "TR/RogueCamera.h"
#include "TR/SimpleGeometry.h"
#include "SF/SFCamera.h"
#include "TR/TRKeyboard.h"
#include "TR/TRRay.h"
#include "SF/SFPhysics.h"
#include "SF/SFEnemy.h"
#include "SF/DevMode.h"

#include "TR/OBJParser.h"
#include "SF/MainMenu.h"
#include "SF/Settings.h"
#include "SF/PauseMenu.h"
#include "TR/TRUtil.h"

#include <random>

static bool flag = true;

StormFrontGame::StormFrontGame() {
    tp = new ThreadPool(2);
}

void StormFrontGame::makeAuxilliaryScenes() {

     {
         auto a = std::make_shared<RogueCamera>(glm::vec3(4.045741f, 1.550072f, 3.592138f), 1.f, 10000.f, 70.f);
         a->disableMove = true;
         scapeCam = a;
     }
    scapeCam->pitch = 14.625011f;
    scapeCam->yaw = -24.839994f;

    scape = new TRScene(scapeCam, 0);

    scape->lights.push_back(std::make_shared<TRLight>(glm::vec3(0, 200000, -100000), glm::vec3(1.3f)));

    scape->skybox = std::move(std::make_unique<TRSkyBox>(1000.f));
	scape->skybox->upperFadeBound = 0.025f;
	scape->skybox->lowerFadeBound = 0.f;

    scape->skyCtx.setSkyCol(1.f, 1.f, 1.f);
    scape->skyCtx.fogDensity = 0.003f;
    scape->skyCtx.fogGradient = 1.f;
	
	scape->skybox->texture1 = res->skyboxTexture;

    scape->water = std::move(
        std::make_unique<TRPlasticWater>(glm::vec3(0.f), 2000.f, res->waterDUDV, res->waterNormal, 3.f, glm::vec3(0.325f, 0.393f, 0.454f))
    );
    scape->water->shineDamper = 10.f;
    scape->water->tiling = 1000.f;
}

void StormFrontGame::makeScene() {

    player = std::make_shared<SFPlayer>(res, 3.f, 10000.f, 70.f);

    devCam = std::make_shared<RogueCamera>(glm::vec3(3955.828125, 0.f, 1606.251465), 3.f, 10000.f, 70.f);

    scene = new TRScene(player->getCamera());
    scene->setAmbientLight(0.5f);
    scene->lights.push_back(std::make_shared<TRLight>(glm::vec3(-100000, 500000, 100000), glm::vec3(1.2f)));

    scene->addEntityToRoot(player);

    scene->skybox = std::move(std::make_unique<TRSkyBox>(1000.f));
	scene->skybox->upperFadeBound = 0.35f;
	scene->skybox->lowerFadeBound = 0.f;

	scene->skybox->texture1 = res->skyboxTexture;

    auto a = TRLoader::loadTexture("res/blazeit.png");

    auto pack = std::make_shared<TerrainTexInfo>(TRLoader::loadTexture("res/Island-Splatmap.png"), a, TRLoader::loadTexture("res/Ground_11_DIF.png"), TRLoader::loadTexture("res/desert_sand.png"), a, 6000.f);
    scene->terrain = std::move(std::unique_ptr<TRTerrain>(new TRTerrain(glm::vec3(0.f), 64, 62.5f * 2.f, 450.f, TRLoader::loadHeightMap("res/Island-Heightmap.png"), pack, 0.05f)));
    scene->terrain->edgesPerRTHeight = 30.f;

    scene->skyCtx.setSkyCol(0.777f, 0.891f, 0.95f);
    scene->skyCtx.fogDensity = 0.0008f;
    scene->skyCtx.fogGradient = 1.f;

    float add = 0.05f;
    scene->water = std::move(
		std::make_unique<TRPlasticWater>(glm::vec3(4000.f, -220.f, 4000.f), 32000.f, res->waterDUDV, res->waterNormal, 2.0f, glm::vec3(0.225f, 0.293f, 0.354f) + glm::vec3(add))
	);
	scene->water->tiling = 16000;
    scene->water->reflectivity = 0.5f;
    scene->water->shineDamper = 10.f;

    /*FFTCtx ctx = FFTCtx(256);
    ctx.A = 10.f;
    ctx.timestep = 0.5f;

    FFTData fftdat = FFTPreComp::compute(ctx);
 
    scene->fftwater = std::move(std::make_unique<FFTWater>(
        glm::vec3(-4000.f, -220.f, -4000.f), 16000.f, ctx, fftdat, glm::vec3(0.325f, 0.393f, 0.454f)
    ));

    scene->fftwater->shineDamper = 10.f;
    scene->fftwater->tiling = 800.f;
    scene->fftwater->normalStrength = 3.f;*/

    scene->terrain->waterLevelCull = scene->water->position.y;

    makeAuxilliaryScenes();

    scene->addEntityToRoot(treeNode);

    std::vector<TRStaticInstance> trees;

    std::mt19937 mt(std::random_device{}());

    std::uniform_real_distribution<float> position(3000.f, 5000.f);
    std::uniform_real_distribution<float> scale(25.f, 40.f);
    std::uniform_real_distribution<float> rotation(-180.f, 180.f);
    
    std::uniform_int_distribution<int> index(0, 3);

    FILE *file = fopen("res/tree_patterns/left.txt", "r");

    float vs = 0.686680925275629;
    float hs = vs * 0.75f;

    glm::vec3 treeScale(hs, vs, hs);

    float x, y, z;
    while (fscanf(file, "%f %f %f", &x, &y, &z) != EOF) {
        trees.emplace_back(
            glm::vec3(x, y, z),
            0.f, rotation(mt), 0.f, treeScale, 0
        );
    }

    fclose(file);

    file = fopen("res/tree_patterns/remote_ridge.txt", "r");

    while (fscanf(file, "%f %f %f", &x, &y, &z) != EOF) {
        trees.emplace_back(
            glm::vec3(x, y, z),
            0.f, rotation(mt), 0.f, treeScale, 0
        );
    }

    fclose(file);

    file = fopen("res/tree_patterns/never_seen.txt", "r");

    while (fscanf(file, "%f %f %f", &x, &y, &z) != EOF) {
        trees.emplace_back(
            glm::vec3(x, y, z),
            0.f, rotation(mt), 0.f, treeScale, 0
        );
    }

    fclose(file);

    /*for (int i = 0; i < 1000; i++) {

        float x = position(mt), z = position(mt);

        trees.emplace_back(
            glm::vec3(x, scene->terrain->getHeightBC(x, z), z),
            0.f, rotation(mt), 0.f, glm::vec3(scale(mt)),
            index(mt)
        );
    }*/

    auto hilltree = OBJParser::parseObjModel("res/hilltree.obj");

    //scene->addStaticEntityBatch(hilltree.get(), res->treeSkin, trees, true);
}

bool StormFrontGame::updateWinState(TesseractEngine *engine) {

    TRDisplayManager::ungrabCursor();

    float &timer = gameState->timer;
    timer += TRDisplayManager::getFrameDelta();

    if (timer > 3.f) {
        if (flag) {
            gameState->stopAudio();
            TRAudio::setMasterVolume(1.f);
            flag = false;
        }

        if (timer <= 4.f) {
            engine->renderCurtain(0.f, 0.f, 0.f, 1.f);
        }
        else {
            ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.5f, 0.5f), 0, ImVec2(0.5f, 0.5f));
            ImGui::SetNextWindowSize(ImVec2(0, 0));
            ImGui::Begin("Welp", nullptr, ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize);
            ImGui::PushFont(res->menuFont);

            ImGui::Text("Success");
            ImGui::Text("Stuff and Stuff I guess");
            if (ImGui::Button("Move on with life")) {
                gameState->won = false;
                gameState->timer = 0.f;
                menuStack.push(MAINMENU);
                flag = true;
            }
            ImGui::PopFont();
            ImGui::End();

            engine->renderScene(scape);
            TRDisplayManager::renderImGui();

            if (timer <= 5.f) {
                engine->renderCurtain(0.f, 0.f, 0.f, 5.f - timer);
            }
        }
        return true;
    }

    return false;
}

void StormFrontGame::updateLoseState(TesseractEngine *engine) {

    TRDisplayManager::ungrabCursor();

    float &timer = gameState->timer;
    timer += TRDisplayManager::getFrameDelta();

    if (timer <= 3.f) {
        engine->renderCurtain(0.f, 0.f, 0.f, 1.f);
    }
    else {
        ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.5f, 0.5f), 0, ImVec2(0.5f, 0.5f));
        ImGui::SetNextWindowSize(ImVec2(0, 0));
        ImGui::Begin("Welp", nullptr, ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize);
        ImGui::PushFont(res->menuFont);

        ImGui::Text("Failure: Breach");
        ImGui::Text("17 Rounds Survived");
        if (ImGui::Button("Move on with life")) {
            gameState->lost = false;
            gameState->timer = 0.f;
            menuStack.push(MAINMENU);
        }
        ImGui::PopFont();
        ImGui::End();

        engine->renderScene(scape);
        TRDisplayManager::renderImGui();

        if (timer <= 4.f) {
            engine->renderCurtain(0.f, 0.f, 0.f, 4.f - timer);
        }
    }
}



bool StormFrontGame::updateMenu(TesseractEngine *engine) {
    if (menuStack.empty()) {
        return false;
    }
    switch (menuStack.top()) {
        case MAINMENU:
            MainMenu::update(engine, gameState, menuStack);
            break;

        case SETTINGS:
            Settings::update(engine, gameState, menuStack);
            break;

        default:
            printf("WARNING: invalid menu id %d\n", menuStack.top());
            menuStack.pop();
            break;
    }

    return true;
}

void StormFrontGame::mainGameLoop(TesseractEngine *engine) {

    if (gameState->lost) {
        gameState->stopAudio();
        updateLoseState(engine);
        return;
    }
    else if (gameState->won) {
        if (updateWinState(engine)) {
            return;
        }
    }

    if (TRKeyboard::getCbKey(GLFW_KEY_ESCAPE) && !gameState->won && !player->inGunMode()) {
        paused = !paused;
        if (paused) {
            gameState->pauseAudio();
        }
        else {
            gameState->unpauseAudio();
        }
    }

    if (!paused) {
        if (devMode) {
            DevMode::update(res, scene, devCam.get(), treeNode.get());
            scene->camera = devCam;
        }
        else {
            player->update(scene, gameState);
            scene->camera = player->getCamera();
        }

        auto a = tp->enqueue([] { SFPhysics::updatePlayerBullets(); });
        gameState->update();
        a.get();

        auto b = tp->enqueue([] { SFPhysics::enemyCollisionUpdatePass(); });
        SFPhysics::collisionPass(gameState->getEnemies());
        b.get();
    }

    engine->renderScene(scene);

    if (paused) {
        if (PauseMenu::update(engine, menuStack, paused)) {
            paused = false;
            gameState->unpauseAudio();
        }
    }

    TRDisplayManager::renderImGui();

    if (gameState->won && gameState->timer <= 3.f) {
        float fac = gameState->timer / 3.f;
        engine->renderCurtain(0.f, 0.f, 0.f, fac);
        TRAudio::setMasterVolume(1.f - fac);
    }
}

void StormFrontGame::run(TesseractEngine *engine) {

    // load resources (placeholder)
    res = new SFResources();
    makeScene();
    gameState = new GameState(scene, player.get());
    SFPhysics::init(scene, player.get());

    while (!TRDisplayManager::windowShouldClose()) {

        handle();

        ImGui::Begin("dong-er");
        if (ImGui::Button("win")) {
            gameState->won = true;
        }
        if (ImGui::Button("die")) {
            gameState->lost = true;
        }
        ImGui::End();

        

        if (!updateMenu(engine)) {
            mainGameLoop(engine);
        }

        TRDisplayManager::updateDisplay();
        SFResources::sg()->registerFontChanges();
    }

}


void StormFrontGame::handle() {
    if (TRKeyboard::getCbKey(GLFW_KEY_F11)) {
        if (TRDisplayManager::isFullScreen()) {
            TRDisplayManager::exitFullScreen();
        }
        else {
            TRDisplayManager::goFullScreen();
        }
    }

    if (TRKeyboard::isKeyDown(GLFW_KEY_F3) && TRKeyboard::getCbKey(GLFW_KEY_G)) {
        devMode = !devMode;
    }
}

StormFrontGame::~StormFrontGame() {
    delete scene;
    delete scape;
    delete res;
    delete gameState;
    delete tp;
    SFPhysics::cleanUp();
}


