#include "SF/Settings.h"

#include "SF/SFResources.h"
#include "TR/TRUtil.h"
#include "TR/TRKeyboard.h"
#include <imgui/imgui.h>

static int gpFont = 18;
static int menuFont = 36;

static const float tessFactors[4] = {
    10.f, 20.f, 30.f, 50.f
};

// BE2950
// CA8B1C
// 9AA752
// 058077
// 0AB498

// other:
// 091C23
// 485A73
// 5B8E95
// B3D2C3
// E3E2D2

static const ImVec4 red = ImVec4(0.745, 0.161, 0.314, 1);
static const ImVec4 yellow = ImVec4(0.792, 0.545, 0.11, 1);
static const ImVec4 green = ImVec4(0.604, 0.655, 0.322, 1);
static const ImVec4 dark_turqoise = ImVec4(0.02, 0.502, 0.467, 1); 
static const ImVec4 light_turqoise = ImVec4(0.039, 0.706, 0.596, 1); 

void Settings::update(TesseractEngine *engine, GameState *gameState, std::stack<int> &menuStack) {

    if (TRKeyboard::getCbKey(GLFW_KEY_ESCAPE)) {
        menuStack.pop();
        return;
    }

    SFResources *res = SFResources::sg();

    engine->renderCurtain(0.118f, 0.157f, 0.196f, 1.f);

    ImGui::PushFont(res->menuFont);

    ImGui::PushStyleColor(ImGuiCol_FrameBg, dark_turqoise);
    ImGui::PushStyleColor(ImGuiCol_SliderGrab, light_turqoise);

    ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.1f, 0.2f), 0, ImVec2(0, 0));
    ImGui::SetNextWindowSize(ImVec2(0, 0));
    ImGui::Begin("Audio", nullptr, ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoTitleBar);

    ImGui::Text("Audio:");
    static int sound = 100;
    static int music = 100;

    if (ImGui::SliderInt("Sound", &sound, 0, 100)) {
        float m = sound / 100.f;
        for (TRAudioSource *src : res->sfSources) {
            src->setVolumeMultiplier(m);
        }
    }
    if (ImGui::SliderInt("Music", &music, 0, 100)) {
        float m = music / 100.f;
        res->streamAudio->setVolumeMultiplier(m);
    }
    
    ImGui::End();

    ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.1f, 0.8f), 0, ImVec2(0, 1));
    ImGui::SetNextWindowSize(ImVec2(0, 0));
    ImGui::Begin("Font", nullptr, ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoTitleBar);

    ImGui::Text("Font:");
    ImGui::Text("Gameplay Font Size");
    ImGui::SliderInt("", &gpFont, 12, 144);
    ImGui::Text("Menu Font Size");
    ImGui::SliderInt("##", &menuFont, 12, 144);

    ImGui::PushFont(res->gpFont);
    ImGui::Text("I am a sample gameplay text!");
    ImGui::PopFont();

    if (ImGui::Button("Apply Changes")) {
        res->notifyFontChange(gpFont, menuFont);
    }

    ImGui::End();


    ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.5f, 0.5f), 0, ImVec2(0, 0.5f));
    ImGui::SetNextWindowSize(ImVec2(0, 0));
    ImGui::Begin("TerrainTess", nullptr, ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoTitleBar);
    
    ImGui::Text("Terrain Tesselation Quality");

    static int tessMode = 2;
    ImGui::RadioButton("Crap", &tessMode, 0); ImGui::SameLine();
    ImGui::RadioButton("Ok", &tessMode, 1); ImGui::SameLine();
    ImGui::RadioButton("Good", &tessMode, 2); ImGui::SameLine();
    ImGui::RadioButton("Ultra", &tessMode, 3);
    ImGui::RadioButton("Custom", &tessMode, 4);

    if (tessMode == 4) {
        ImGui::SameLine();
        ImGui::SliderFloat("", &(gameState->getScene()->terrain->edgesPerRTHeight), 1.f, 100.f, "%.2f");
        gameState->getScene()->terrain->edgesPerRTHeight = std::clamp(gameState->getScene()->terrain->edgesPerRTHeight, 1.f, 100.f);
    } else {
        gameState->getScene()->terrain->edgesPerRTHeight = tessFactors[tessMode];
    }

    ImGui::End();
    


    ImGui::PopFont();
    ImGui::PopStyleColor(2);

    return;

    ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.1f, 0.1f), 0, ImVec2(0.1f, 0.1f));
    ImGui::Begin("FontSettings", nullptr, ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoTitleBar);

    ImGui::Text("Gameplay Font Size");
    ImGui::SliderInt("", &gpFont, 12, 144);
    ImGui::Text("Menu Font Size");
    ImGui::SliderInt("##", &menuFont, 12, 144);

    ImGui::PushFont(res->gpFont);
    ImGui::Text("I am a sample gameplay text!");
    ImGui::PopFont();

    if (ImGui::Button("Apply Changes")) {
        res->notifyFontChange(gpFont, menuFont);
    }

    if (ImGui::Button("Exit")) {
        menuStack.pop();
    }

    ImGui::End(); 

    ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.9f, 0.1f), 0, ImVec2(0.9f, 0.1f));
    ImGui::SetNextWindowSize(ImVec2(0, 0));
    ImGui::Begin("TerrainTess", nullptr, ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoTitleBar);
    
    ImGui::Text("Terrain Tesselation Quality");

    ImGui::RadioButton("Crap", &tessMode, 0); ImGui::SameLine();
    ImGui::RadioButton("Ok", &tessMode, 1); ImGui::SameLine();
    ImGui::RadioButton("Good", &tessMode, 2); ImGui::SameLine();
    ImGui::RadioButton("Ultra", &tessMode, 3);
    ImGui::RadioButton("Custom", &tessMode, 4);

    if (tessMode == 4) {
        ImGui::SameLine();
        ImGui::SliderFloat("", &(gameState->getScene()->terrain->edgesPerRTHeight), 1.f, 100.f, "%.2f");
        gameState->getScene()->terrain->edgesPerRTHeight = std::clamp(gameState->getScene()->terrain->edgesPerRTHeight, 1.f, 100.f);
    } else {
        gameState->getScene()->terrain->edgesPerRTHeight = tessFactors[tessMode];
    }

    ImGui::End();

    /*ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.5f, 0.5f), 0, ImVec2(0.5f, 0.5f));
    ImGui::SetNextWindowSize(ImVec2(0, 0));
    ImGui::Begin("Settings", nullptr, ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize);

    ImGui::Text("Gameplay Font Size");
    ImGui::SliderInt(" ", &gpFont, 12, 144);
    ImGui::Text("Menu Font Size");
    ImGui::SliderInt("  ", &menuFont, 12, 144);

    ImGui::PushFont(res->gpFont);
    ImGui::Text("I am a sample gameplay text!");
    ImGui::PopFont();

    if (ImGui::Button("Apply Changes")) {
        res->notifyFontChange(gpFont, menuFont);
    }

    if (ImGui::Button("Exit")) {
        menuStack.pop();
    }

    ImGui::End();*/

    ImGui::PopFont();
}
