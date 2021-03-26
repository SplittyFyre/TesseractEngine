#include "SF/SFShop.h"

#include "SF/SFResources.h"

#include "TR/TRUtil.h"
#include <imgui/imgui.h>


static const int turretCosts[3] = { 100, 250, 250 };
static const char * const turretNames[3] = { "Mortar", "Leftside Turret", "Rightside Turret" };

void SFShop::turretSetColours(int idx) {
    if (turrets[idx]) {
        ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(1, 1, 1, 0.8f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(1, 1, 1, 0.8f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(1, 1, 1, 0.8f));
    }
    else if (currency >= turretCosts[idx]) {
        ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(0, 0.5f, 0, 0.5f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0, 0.5f, 0, 0.8f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0, 0.5f, 0, 0.8f));
    }
    else {
        ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(0.5f, 0, 0, 0.5f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0.5f, 0, 0, 0.8f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.5f, 0, 0, 0.8f));
    }
}


void SFShop::createTurret(int idx) {
    switch (idx) {
        case 0:
            gameState->makeMortar();
            break;
        case 1:
            gameState->makePhaserLeft();
            break;
        case 2:
            gameState->makePhaserRight();
            break;
    }
}

void SFShop::buyTurret(int idx) {
    if (!turrets[idx] && currency >= turretCosts[idx]) {
        currency -= turretCosts[idx];
        turrets[idx] = true;
        createTurret(idx);
    }
}
void SFShop::turretTooltip(int idx) {
    if (!turrets[idx] && ImGui::IsItemHovered()) {
        ImGui::BeginTooltip();
        ImGui::Text("$%d: %s", turretCosts[idx], turretNames[idx]);
        ImGui::EndTooltip();
    }
}

void SFShop::pageTurrets() {
    float x = ImGui::GetContentRegionAvail().x * 0.4f;
    ImVec2 size = ImVec2(x, x);
    float centerx = TRDisplayManager::getWidth() * 0.5f;

    const float betweenSpacing = x * 0.2f;

    ImGui::Dummy(ImVec2(0, x * 0.5f));
    turretSetColours(0);
    ImGui::SetCursorScreenPos(ImVec2(centerx - (0.5f * x), ImGui::GetCursorScreenPos().y));
    if (ImGui::ImageButton((void*) (uintptr_t) SFResources::sg()->mortarIcon->texID, size)) {
        buyTurret(0);
    }
    turretTooltip(0);

    ImGui::Dummy(ImVec2(0, betweenSpacing));
    turretSetColours(1);
    ImGui::SetCursorScreenPos(ImVec2(centerx - (0.5f * x), ImGui::GetCursorScreenPos().y));
    if (ImGui::ImageButton((void*) (uintptr_t) SFResources::sg()->turretIcon->texID, size)) {
        buyTurret(1);
    }
    turretTooltip(1);

    ImGui::Dummy(ImVec2(0, betweenSpacing));
    turretSetColours(2);
    
    ImGui::PushID(0);
    ImGui::SetCursorScreenPos(ImVec2(centerx - (0.5f * x), ImGui::GetCursorScreenPos().y));
    if (ImGui::ImageButton((void*) (uintptr_t) SFResources::sg()->turretIcon->texID, size, ImVec2(1, 0), ImVec2(0, 1))) {
        buyTurret(2);
    }
    ImGui::PopID();
    turretTooltip(2);

    ImGui::Dummy(ImVec2(0, betweenSpacing));

    ImGui::PopStyleColor(9);
}



static const int miscCosts[4] = { 100, 400, 700, 300 };
static const char * const miscNames[4] = { "Better Armour", "Shield", "Laser Denial System", "Double Shot" };

void SFShop::miscIcon(GLuint tex, int idx) {
    ImGui::PushID(42069 + idx);

    if (ImGui::ImageButton((void*) (uintptr_t) tex, TRUtil::Gui::RelativeSqrX(0.1f, 0.1f))) {
        if (!misc[idx] && currency >= miscCosts[idx]) {
            currency -= miscCosts[idx];
            misc[idx] = true;
        }
    }
    ImGui::PopID();
    
    if (!misc[idx]) {
        ImDrawList *dl = ImGui::GetWindowDrawList();
        dl->AddRectFilled(ImGui::GetItemRectMin(), ImGui::GetItemRectMax(), ImGui::ColorConvertFloat4ToU32(ImVec4(0, 0, 0, 0.5f)));
    }
    
    if (!misc[idx] && ImGui::IsItemHovered()) {
        ImGui::BeginTooltip();
        ImGui::PushStyleColor(ImGuiCol_Text, (currency >= miscCosts[idx]) ? ImVec4(0, 0.75f, 0, 1) : ImVec4(0.75f, 0, 0, 1));
        ImGui::Text("$%d: %s", miscCosts[idx], miscNames[idx]);
        ImGui::PopStyleColor();
        ImGui::EndTooltip();
    }
}

void SFShop::pageMisc() {
    ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(0, 0, 0, 0));
    ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0, 0, 0, 0));
    ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0, 0, 0, 0));

    for (int i = 0; i < 4; i++) {
        miscIcon(SFResources::sg()->armourIcon->texID, i);
        ImGui::SameLine();
    }

    ImGui::PopStyleColor(3);

    modifyPlayer();
}

void SFShop::modifyPlayer() {
    if (misc[0]) { // better armour
        gameState->player->increaseMaxHealth();
    }
    if (misc[1]) { // shield
        gameState->player->useShield = true;
    }
    if (misc[2]) { // laser anti missile
        gameState->player->laserDefense = true;
    }
    if (misc[3]) { // double shot
        gameState->player->doubleShot = true;
    }
}

void SFShop::cleanPlayer() {
    gameState->player->reduceMaxHealth();
    gameState->player->useShield = false;
    gameState->player->laserDefense = false;
    gameState->player->doubleShot = false;
}



void SFShop::render() {

    if (!show) {
        return;
    }

    ImGui::PushFont(SFResources::sg()->menuFont);

    ImGui::PushStyleColor(ImGuiCol_WindowBg, ImVec4(0, 0, 0, 0.8f));
    ImGui::PushStyleVar(ImGuiStyleVar_WindowBorderSize, 0);
    ImGui::PushStyleVar(ImGuiStyleVar_WindowRounding, 0);
    ImGui::PushStyleVar(ImGuiStyleVar_PopupBorderSize, 0);
    ImGui::PushStyleVar(ImGuiStyleVar_PopupRounding, 0);
    

    ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.5f, 0.5f), 0, ImVec2(0.5f, 0.5f));
    ImGui::SetNextWindowSize(ImVec2(0, 0));
    ImGui::Begin("Shop", nullptr, ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoTitleBar);

    if (ImGui::Button("Missiles")) mode = Mode::MISSILES;
    ImGui::SameLine();
    if (ImGui::Button("Towers")) mode = Mode::TOWERS;
    ImGui::SameLine();
    if (ImGui::Button("Misc")) mode = Mode::MISC;

    ImGui::Text("Currency: %d", currency);

    switch (mode) {
        case Mode::MISSILES:
            break;
        case Mode::TOWERS:
            pageTurrets();
            break;
        case Mode::MISC:
            pageMisc();
            break;
    }

    /*ImGui::Columns(2, nullptr, false);

    ImGui::Button("Standard");
    ImGui::Button("Hellfire");
    ImGui::Button("Cluster");
    ImGui::Button("Antimatter");
    ImGui::NextColumn();

    ImGui::Text("gya");
    ImGui::Text("wait");
    ImGui::NextColumn();*/

    ImGui::End();

    ImGui::PopFont();
    ImGui::PopStyleColor();
    ImGui::PopStyleVar(4);
}



void SFShop::serialize(BinaryUtil &io) {
    for (int i = 0; i < 3; i++) {
        io(turrets[i]);
    }
    for (int i = 0; i < 4; i++) {
        io(misc[i]);
    }

    if (io.read) {
        for (int i = 0; i < 3; i++) if (turrets[i]) createTurret(i);
        modifyPlayer();
    }
}