#ifndef SRC_STORMFRONT_GAME_SFRESOURCES
#define SRC_STORMFRONT_GAME_SFRESOURCES

#include "TR/TRTexture.h"
#include "TR/TRParticle.h"
#include "TR/TexturedModel.h"
#include "TR/TRAudio.h"
#include "TR/TRAudioSource.h"
#include <memory>

#include <imgui/imgui.h>

struct SFResources {
    std::shared_ptr<TexturedModel> helicopterModel;
    std::shared_ptr<TexturedModel> rotorModel;
    std::shared_ptr<TexturedModel> backRotorModel;
    SFResources();
    ~SFResources();

    std::shared_ptr<TexturedModel> missileModel;
    std::shared_ptr<TexturedModel> laserModel;

    std::shared_ptr<TexturedModel> truckModel;

    std::shared_ptr<TexturedModel> markerModel;

    std::shared_ptr<ModelSkin> treeSkin;
    std::shared_ptr<TexturedModel> treeModel;

    TRTexture *skyboxTexture;

    TRTexture *waterDUDV, *waterNormal;

    std::shared_ptr<ParticleTexture> dustExplosion;
    std::shared_ptr<ParticleTexture> fireExplosion;

    ImFont *gpFont = ImGui::GetIO().Fonts->AddFontFromFileTTF("res/Ubuntu-R.ttf", 18);
    ImFont *menuFont = ImGui::GetIO().Fonts->AddFontFromFileTTF("res/Ubuntu-R.ttf", 36);

    inline void notifyFontChange(int gp, int menu) { fontChanged = true; this->gp = gp; this->menu = menu; }
    void registerFontChanges();

    TRTexture *crosshair;

    TRTexture *continueButton, *playButton, *settingsButton, *quitButton;
    TRTexture *mortarIcon, *turretIcon;
    TRTexture *armourIcon;
    TRTexture *mountains;

    std::vector<TRAudioSource*> sfSources;

    TRSound cannonSound;
    TRSound rotorSound;
    TRSound ricoshitSound[3];
    TRStreamAudio *streamAudio;
    BufferedAudio *vput;

    static inline SFResources * sg() { return singleton; }
private:

    bool fontChanged = false;
    int gp, menu;

    static SFResources *singleton;
};

#endif /* SRC_STORMFRONT_GAME_SFRESOURCES */
