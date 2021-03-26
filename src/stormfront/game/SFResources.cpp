#include "SF/SFResources.h"

#include "TR/TRLoader.h"
#include "TR/OBJParser.h"

#include <iostream>
#include <imgui/imgui_impl_opengl3.h>

SFResources *SFResources::singleton;

SFResources::SFResources() {

    SFResources::singleton = this;

    {
        std::shared_ptr<RawModel> rawModel = TRLoader::loadToModel(OBJParser::parseObjModel("res/helibody.obj").get());
        rawModel->doubleSidedFaces = true;
        TRTexture *helitex = TRLoader::loadTexture("res/helitex.png");
        std::shared_ptr<ModelSkin> skin = std::make_shared<ModelSkin>(helitex);
        skin->reflectivity = 0.5f;
        skin->shineDamper = 15.f;
        helicopterModel = std::make_shared<TexturedModel>(rawModel, skin);
        rotorModel = std::make_shared<TexturedModel>(TRLoader::loadToModel(OBJParser::parseObjModel("res/helimainrotor.obj").get()), skin);
        backRotorModel = std::make_shared<TexturedModel>(TRLoader::loadToModel(OBJParser::parseObjModel("res/helibackrotor.obj").get()), skin);
    }

    {
        auto skin = std::make_shared<ModelSkin>(TRLoader::loadTexture("res/missiletex.png"));
        skin->reflectivity = 0.5f;
        skin->shineDamper = 10.f;
        missileModel = std::make_shared<TexturedModel>(
            TRLoader::loadToModel(OBJParser::parseObjModel("res/missilemodel.obj").get()),
            skin
        );
    }

    {
        laserModel = std::make_shared<TexturedModel>(
            TRLoader::loadToModel(OBJParser::parseObjModel("res/perfect_cylinder.obj").get()),
            std::make_shared<ModelSkin>(TRLoader::loadTexture(0.f, 1.f, 0.f), TRLoader::loadTexture(1.f, 0.f, 0.f))
        );
    }

    {
        truckModel = std::make_shared<TexturedModel>(
            TRLoader::loadToModelInstanced(OBJParser::parseObjModel("res/Military_Truck.obj").get()),
            std::make_shared<ModelSkin>(TRLoader::loadTexture("res/Military_Game_Texture_Sheet.png"))
        );
    }

    {
        markerModel = std::make_shared<TexturedModel>(
            TRLoader::loadToModelInstanced(OBJParser::parseObjModel("res/icosphere.obj").get()),
            std::make_shared<ModelSkin>(TRLoader::loadTexture(1.f, 0.f, 0.f))
        );
    }

    {
        /*std::vector<const char *> textures = {
            "res/daytime/RT.png",
            "res/daytime/LF.png",
            "res/daytime/DN.png",
            "res/daytime/UP.png",
            "res/daytime/BK.png",
            "res/daytime/FT.png"
	    };*/
        std::vector<const char *> textures = {
            "res/bluecloud_rt.png",
            "res/bluecloud_lf.png",
            "res/bluecloud_up.png",
            "res/bluecloud_dn.png",
            "res/bluecloud_bk.png",
            "res/bluecloud_ft.png"
	    };
        skyboxTexture = TRLoader::loadCubeMap(textures);
    }

    waterDUDV = TRLoader::loadTexture("res/waterDUDV.png");
    waterNormal = TRLoader::loadTexture("res/waterNormal.png");

    continueButton = TRLoader::loadTexture("res/continue.png");
    playButton = TRLoader::loadTexture("res/play.png");
    settingsButton = TRLoader::loadTexture("res/settings.png");
    quitButton = TRLoader::loadTexture("res/quit.png");
    mountains = TRLoader::loadTexture("res/mountains.png");

    mortarIcon = TRLoader::loadTexture("res/mortar.png");
    turretIcon = TRLoader::loadTexture("res/turret.png");

    armourIcon = TRLoader::loadTexture("res/bad.png");


    crosshair = TRLoader::loadTexture("res/targetreticle.png");

    dustExplosion = std::make_shared<ParticleTexture>(TRLoader::loadTexture("res/dustExplosion.png"), 6);
    fireExplosion = std::make_shared<ParticleTexture>(TRLoader::loadTexture("res/fieryexplosion.png"), 6);


    cannonSound = TRAudio::loadSound("res/30mmshot.wav");
    rotorSound = TRAudio::loadSound("res/normal.wav");
    ricoshitSound[0] = TRAudio::loadSound("res/hit1.wav");
    ricoshitSound[1] = TRAudio::loadSound("res/hit2.wav");
    ricoshitSound[2] = TRAudio::loadSound("res/hit3.wav");

    streamAudio = TRAudio::makeStreamAudio();
    vput = TRAudio::loadBufferedAudio("res/vput.wav");

    treeSkin = std::make_shared<ModelSkin>(TRLoader::loadTexture("res/Pinetree_D.png"));

    treeModel = std::make_shared<TexturedModel>(
        TRLoader::loadToModelInstanced(OBJParser::parseObjModel("res/landtree.obj").get()),
        treeSkin
    );
    treeModel->getRawModel()->doubleSidedFaces = true;
}

SFResources::~SFResources() {
    delete vput;
}



void SFResources::registerFontChanges() {
    if (fontChanged) {
        fontChanged = false;

        ImGui::GetIO().Fonts->Clear();
        gpFont = ImGui::GetIO().Fonts->AddFontFromFileTTF("res/Ubuntu-R.ttf", gp);
        menuFont = ImGui::GetIO().Fonts->AddFontFromFileTTF("res/Ubuntu-R.ttf", menu);

        ImGui::GetIO().Fonts->Build();

        ImGui_ImplOpenGL3_DestroyFontsTexture();
        ImGui_ImplOpenGL3_CreateFontsTexture();

        puts("Rebuilt StormFront Font Atlas");
    }
}