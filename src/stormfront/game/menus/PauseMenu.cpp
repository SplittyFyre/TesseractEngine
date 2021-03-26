#include "SF/PauseMenu.h"

#include "SF/MenuTypes.h"
#include "SF/SFResources.h"

#include "TR/TRUtil.h"
#include <imgui/imgui.h>

bool PauseMenu::update(TesseractEngine *engine, std::stack<int> &menuStack, bool &paused) {
    bool retval = false;

    engine->renderCurtain(0.2f, 0.2f, 0.2f, 0.5f);

    ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.5f, 0.5f), 0, ImVec2(0.5f, 0.5f));
    ImGui::SetNextWindowSize(ImVec2(0, 0));
    ImGui::Begin("Pause", nullptr, ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize);

    ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(0, 0, 0, 0));
    ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(1, 0, 0, 0.2f));
    ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0, 1, 0, 0.2f));

    ImVec2 size = TRUtil::Gui::RelativeSqrX(0.075f, 0.075f);

    if (ImGui::ImageButton((void*) (uintptr_t) SFResources::sg()->continueButton->texID, size)) {
        retval = true;
    }

    if (ImGui::ImageButton((void*) (uintptr_t) SFResources::sg()->settingsButton->texID, size)) {
        menuStack.push(SETTINGS);
    }

    if (ImGui::ImageButton((void*) (uintptr_t) SFResources::sg()->quitButton->texID, size)) {
        paused = false;
        menuStack.push(MAINMENU);
    }

    ImGui::PopStyleColor(3);

    ImGui::End();

    return retval;
}