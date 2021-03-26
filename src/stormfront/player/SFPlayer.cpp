#include "SF/SFPlayer.h"

#include "TR/TRKeyboard.h"
#include "TR/TRDisplayManager.h"
#include "TR/TRMouse.h"
#include "TR/TRUtil.h"
#include "TR/TRRay.h"

#include "SF/GameState.h"

#include <algorithm>
#include <cmath>

constexpr float TORAD = 0.01745329251994329576923690768488612713442871888541725456097191440171009114603449443682241569634509482212304492507f;
template <typename T> inline int sign(T val) {
    return (T(0) < val) - (val < T(0));
}

static constexpr float modelScale = 2.40661f; // 1 unit ~= 1 meter

static const glm::vec3 missilePositions[8] = {
	glm::vec3(1.415f, -0.09f, -0.5f) * modelScale,
	glm::vec3(1.415f, -0.25f, -0.5f) * modelScale, 
	glm::vec3(1.255f, -0.09f, -0.5f) * modelScale, 
	glm::vec3(1.255f, -0.25f, -0.5f) * modelScale, 
	glm::vec3(-1.385f, -0.09f, -0.5f) * modelScale,
	glm::vec3(-1.385f, -0.25f, -0.5f) * modelScale,
	glm::vec3(-1.225f, -0.09f, -0.5f) * modelScale,
	glm::vec3(-1.225f, -0.25f, -0.5f) * modelScale
};

static const ImVec4 missileColours[5] = { 
    ImVec4(0.f, 0.f, 0.f, 1.f),     // none
    ImVec4(1.f, 0.f, 0.f, 1.f),     // standard
    ImVec4(1.f, 0.5f, 0.f, 1.f),    // hellfire
    ImVec4(0.f, 1.f, 0.f, 1.f),     // cluster
    ImVec4(0.6f, 0.f, 0.6f, 1.f)    // antimatter   
};

static const char * missileNames[5] = {
    "<Empty>",
    "Standard",
    "Hellfire",
    "Cluster",
    "Antimatter"
};

static const ImU32 healthColours[3] = {
    ImGui::ColorConvertFloat4ToU32(ImVec4(0, 0, 0, 1)),
    ImGui::ColorConvertFloat4ToU32(ImVec4(0.649f, 0.027f, 0.027f, 1.f)),
    ImGui::ColorConvertFloat4ToU32(ImVec4(0.f, 1.f, 1.f, 1.f))
};



SFPlayer::SFPlayer(SFResources *res, float np, float fp, float fov)
: TRSpatialEntity(glm::vec3(3955.828125, 0.f, 1606.251465), 0.f, 0.f, 0.f, glm::vec3(modelScale)), bounds(*res->helicopterModel->getRawModel()->boundingVolume),
mainBody(res->helicopterModel),
rotor(std::make_shared<LeafGeometry>(res->rotorModel, glm::vec3(0.f), 0.f, 0.f, 0.f, glm::vec3(modelScale))),
backRotor(std::make_shared<LeafGeometry>(res->backRotorModel, glm::vec3(0.8062f, 3.08f, -11.3592f), 0.f, 0.f, 0.f, glm::vec3(modelScale * 0.75f))),

tpCam(std::make_shared<SFCamera>(this, np, fp, fov)),
gunnerCam(std::make_shared<GunnerCamera>(this, np, fp)),

res(res)
{   
    for (int i = 0; i < 8; i++) {
        missileEntities[i] = std::make_shared<LeafGeometry>(
            res->missileModel, missilePositions[i], 0.f, 0.f, 0.f, SFMissile::missileScale
        );
    }

    res->sfSources.push_back(&source);
}

// game-specific update
void SFPlayer::update(TRScene *scene, GameState *gameState) {

    if (TRKeyboard::getCbKey(GLFW_KEY_SEMICOLON)) {
        if (gunMode) {
            gunMode = false;
            gameState->rotorSource.setVolume(1.f);
            TRDisplayManager::ungrabCursor();
        }
        else {
            gunMode = true;
            gameState->rotorSource.setVolume(0.5f);
            rotX = 0.f; rvX = 0.f;
            TRDisplayManager::grabCursor();
        }
    }
    
    if (!gunMode) {
        updateRotX();
    }
    updateRotY();

    move();
    updateWeapons(scene);

    renderGuis(scene, gameState);
}

void SFPlayer::move() {

    const float delta = TRDisplayManager::getFrameDelta();

    rotor->rotY += 360.f * 8.f * delta;
    rotor->rotY = std::fmod(rotor->rotY, 360.f);
    backRotor->rotX += 360.f * 5.f * delta;

    float mag = 15.f * throttle * delta;

    hvelocity += mag * std::sin(rotX * TORAD);
    hvelocity *= std::pow(0.9f, delta); // decelerate

    float vx = hvelocity * std::sin(rotY * TORAD);
    float vz = hvelocity * std::cos(rotY * TORAD);

    vvelocity += mag * std::cos(rotX * TORAD);
    if (vvelocity > -60.f) // apply gravity only if
        vvelocity -= 9.81f * delta;

    vvelocity = std::min(vvelocity, 30.f); // make sure we dont become a rocket ship

    if (throttle < 0.5f) {
        hover = false;
    }
    else if (hover) {
        vvelocity -= sign<float>(vvelocity) * 15.f * delta;
    }

    position.x += vx * delta;
    position.y += vvelocity * delta;
    position.z += vz * delta;
}

void SFPlayer::updateRotX() {
    constexpr float speed = 70.f;
    constexpr float rlim = 50.f;
    constexpr float divrlim = 1.f / rlim;
    constexpr float retspeed = 0.1f;

    const float delta = TRDisplayManager::getFrameDelta();

    if (TRKeyboard::isKeyDown(GLFW_KEY_W)) {
        rotX += (rlim - rotX) * divrlim * speed * delta;
    }
    else if (TRKeyboard::isKeyDown(GLFW_KEY_S)) {
        rotX += (-rlim - rotX) * divrlim * speed * delta;
    }
    else {
        rotX *= std::pow(retspeed, delta);
    }
    rotX = std::clamp<float>(rotX, -rlim, rlim);
}

void SFPlayer::updateRotY() {
    constexpr float acel = 25.f;
    constexpr float dcel = 0.15f;
    constexpr float vlim = 50.f;

    const float delta = TRDisplayManager::getFrameDelta();
    
    if (TRKeyboard::isKeyDown(GLFW_KEY_A)) {
        rvY += acel * delta;
    }
    else if (TRKeyboard::isKeyDown(GLFW_KEY_D)) {
        rvY -= acel * delta;
    }
    else {
        rvY *= std::pow(dcel, delta);
    }
    rvY = std::clamp<float>(rvY, -vlim, vlim);
    rotY += rvY * delta;
}

void SFPlayer::updateRotZ() {
    
}

void SFPlayer::takeDamage(int dmg) {
    if (useShield && shield > 0) {
        shield -= dmg;
        if (shield < 0) shield = 0;
    }
    else {
        health -= dmg;
        if (health < 0) health = 0;
    }
}


void SFPlayer::updateWeapons(TRScene *scene) {

    constexpr float ldRange = 500.f;

    if (laserDefense) {
        if (ldCooldown > 0.f) {
            ldCooldown -= TRDisplayManager::getFrameDelta();
        }
        else {
            EnemyMissile *enemyMissile = SFPhysics::getClosestEnemyMissile();
            if (enemyMissile && TRMath::distanceSquared(enemyMissile->position, position) < ldRange * ldRange && enemyMissile->getLife() >= 1.f) {
                enemyMissile->die();
                enemyMissile->explosion(scene);
                ldCooldown = 5.f;
            }
        }
    }


    if (gunMode) {

        if (TRDisplayManager::Mouse::getScrollY() > 0.5) {
            weapon++;
        }
        else if (TRDisplayManager::Mouse::getScrollY() < -0.5) {
            weapon--;
        }
        if (weapon < 0) {
            weapon = NUM_WEAPONS - 1;
        }
        else if (weapon >= NUM_WEAPONS) {
            weapon = 0;
        }

        // universal events
        TRRay ray = gunnerCam->castRayNDC(0.f, 0.f);
        this->inRange = ray.intersectionTerrain(scene->terrain.get(), this->targetPos, 2500.f);
        
        cannonHeat -= 0.5f * TRDisplayManager::getFrameDelta();
        cannonHeat = std::max(0.f, cannonHeat);



        if (weapon == CANNON) {
            if (!cannonDisabled) {
                if (TRMouse::isMouseButtonDown(TRMOUSE_LEFT) && cannonAmmo > 0) {
                    timerCannon += TRDisplayManager::getFrameDelta();
                    if (timerCannon > 0.1f) {
                        timerCannon = 0.f;
                        cannonHeat += 0.1f;
                        cannonAmmo--;
                        
                        glm::vec3 bulletDirection = ray.rayDir * 810.f + glm::vec3(cannonDist(mt), cannonDist(mt), cannonDist(mt));
                        SFPhysics::addPlayerBullet(gunnerCam->position, bulletDirection);

                        if (doubleShot) {
                            glm::vec3 bulletDirection = ray.rayDir * 810.f + glm::vec3(cannonDist(mt), cannonDist(mt), cannonDist(mt));
                            SFPhysics::addPlayerBullet(gunnerCam->position, bulletDirection);
                        }

                        source.play(res->cannonSound);
                    }
                }

                if (cannonHeat > 0.9f) {
                    cannonDisabled = true;
                }
            }
            else if (cannonHeat < 0.25f) {
                cannonDisabled = false;
            }
        }
        else if (weapon == MISSILE) {
            for (int i = 0; i < 8; i++) {
                if (TRKeyboard::getCbKey(GLFW_KEY_1 + i)) {
                    activeMissile = i;
                }
            }

            if (!missile && missiles[activeMissile] && inRange && TRMouse::isMouseButtonDown(TRMOUSE_LEFT)) {
                missile = std::make_shared<SFMissile>(&targetPos, position);
                scene->addEntityToRoot(missile);
                missiles[activeMissile] = EMPTY;
            }
        }

    }
}

void SFPlayer::fireMissile(TRScene *scene) {
    missile = std::make_shared<SFMissile>(&targetPos, position);

    switch (missiles[activeMissile]) {
        case STANDARD:
            break;
        case HELLFIRE:
            break;
        case CLUSTER:
            break;
        case ANTIMATTER:
            break;
    }
}


void SFPlayer::entityUpdate() {
    bounds.update(position, getMaxScale());
    renderModel(mainBody.get());
    rotor->sceneGraphUpdate();
    backRotor->sceneGraphUpdate();

    for (int i = 0; i < 8; i++) {
        if (missiles[i] != EMPTY)
            missileEntities[i]->sceneGraphUpdate();
    }
}




void SFPlayer::cleanState() {
    position = glm::vec3(3955.828125, 0.f, 1606.251465);
    rotX = rotY = rotZ = rvX = rvY = hvelocity = vvelocity = 0.f;
    throttle = 1.f; hover = true;
    missile = nullptr;

    gunMode = false;
    weapon = CANNON;

    cannonAmmo = 1200;

    activeMissile = 0;

    missiles = {STANDARD, STANDARD, STANDARD, STANDARD, HELLFIRE, HELLFIRE, HELLFIRE, HELLFIRE};

    refreshHealth();
}
























void SFPlayer::renderGuis(TRScene *scene, GameState *gameState) {
    ImGui::PushFont(res->gpFont);
    ImGui::PushStyleVar(ImGuiStyleVar_WindowRounding, 0.f);

    renderHudGuis(scene, gameState);
    if (gunMode)
        renderGunnerGuis();

    ImGui::PopStyleVar();
    ImGui::PopFont();
}



void SFPlayer::renderHudGuis(TRScene *scene, GameState *gameState) {

    // render text info
    ImGui::SetNextWindowPos(ImVec2(0, 0));
    ImGui::SetNextWindowSize(ImVec2(0, 0));

    ImGui::PushStyleColor(ImGuiCol_Text, ImVec4(1, 1, 1, 1));
    ImGui::Begin("Flight Info", nullptr, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoBackground);
    ImGui::Text("altitude: %.2fm", this->position.y - scene->terrain->getHeightRaw(position.x, position.z));
    ImGui::Text("velocity: %dkm/h", int(this->hvelocity * 3.6f));
    ImGui::PopStyleColor();

    
    if (!gunMode) {// render hover button
        if (!hover) {
            ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(1.f, 0.f, 0.f, 1.f));
            ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(1.f, 0.f, 0.f, 1.f));
            ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(1.f, 0.f, 0.f, 1.f));
        }
        else {
            ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(0.f, 1.f, 0.f, 1.f));
            ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.f, 1.f, 0.f, 1.f));
            ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0.f, 1.f, 0.f, 1.f));
        }
        ImGui::PushStyleColor(ImGuiCol_Text, ImVec4(0, 0, 0, 1.f));
        if (ImGui::Button("Hover")) {
            hover = !hover;
        }
        ImGui::PopStyleColor(4);
    }


    ImGui::End();
    

    if (!gunMode) { // render throttle
        ImVec2 s = TRUtil::Gui::RelativeSqrY(0.015625f, 0.5f);

        ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.0125f, 0.5f), 0, ImVec2(0.0125f, 0.5f));
        ImGui::SetNextWindowSize(ImVec2(0, 0));
        ImGui::Begin("Throttle", nullptr, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoBackground);
        
        ImGui::TextColored(ImVec4(1.f, 1.f, 1.f, 1.f), "%d%%", int(throttle * 100));
        ImGui::PushStyleColor(ImGuiCol_FrameBg, ImVec4(0.196f, 0.204f, 0.204f, 0.5f));
        ImGui::PushStyleColor(ImGuiCol_FrameBgHovered, ImVec4(0.196f, 0.204f, 0.204f, 0.5f));
        ImGui::PushStyleColor(ImGuiCol_FrameBgActive, ImVec4(0.831f, 0.055f, 0.353f, 0.5f));
        ImGui::PushStyleColor(ImGuiCol_SliderGrab, ImVec4(0.62f, 0.71f, 0.627f, 1.f));
        ImGui::PushStyleColor(ImGuiCol_SliderGrabActive, ImVec4(0.62f, 0.71f, 0.627f, 1.f));
        //ImGui::PushStyleVar(ImGuiStyleVar_GrabMinSize, s.y * 0.02f);
        if (ImGui::VSliderFloat("", s, &this->throttle, 0.f, 1.f, "")) {
            gameState->rotorSource.setPitch((throttle * (1.f - 0.8f) + 0.8f));
        }
        //ImGui::PopStyleVar();
        ImGui::PopStyleColor(5);

        ImGui::End();
    }

    ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.5f, 0.98f), 0, ImVec2(0.5f, 0.98f));
    ImGui::SetNextWindowSize(ImVec2(0, 0));
    ImGui::Begin("Health", nullptr, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoBackground);

    ImDrawList *dl = ImGui::GetWindowDrawList();

    float p2 = (useShield && shield > 0) ? (float(shield) / maxShield) : (float(health) / maxHealth);
    float p1 = 1.f - p2;
    int cidx = (useShield && shield > 0) ? 2 : 1;

    ImVec2 start = ImGui::GetCursorScreenPos();
    ImVec2 size = TRUtil::Gui::Relative(0.5f * p1, 0.005f);
    ImVec2 end = ImVec2(start.x + size.x, start.y + size.y);    

    dl->AddRectFilled(start, end, healthColours[cidx - 1]);

    start.x = end.x;
    size = TRUtil::Gui::Relative(0.5f * p2, 0.005f);
    end = ImVec2(start.x + size.x, start.y + size.y); 

    ImGui::Dummy(TRUtil::Gui::Relative(0.5f, 0.005f));

    dl->AddRectFilled(start, end, healthColours[cidx]);

    ImGui::End();
}

void SFPlayer::renderGunnerGuis() {
    // render crosshair
    {
        ImVec2 s = TRUtil::Gui::RelativeSqrX(0.1f, 0.1f);
        ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, ImVec2(0.f, 0.f));
        ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.5f, 0.5f), 0, ImVec2(0.5f, 0.5f));
        ImGui::SetNextWindowSize(s);
        ImGui::Begin("CrossHair", nullptr, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoBackground);
        ImGui::Image((void*) (uintptr_t) res->crosshair->texID, s);
        ImGui::End();
        ImGui::PopStyleVar();
    }


    // render weapons widget:

    ImGui::SetNextWindowSize(ImVec2(0, 0));
    ImGui::SetNextWindowPos(TRUtil::Gui::Relative(1.f, 0.5f), 0, ImVec2(1.f, 0.5f));
    ImGui::Begin("WeaponsWidget", nullptr, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize);

    ImGui::PushStyleColor(ImGuiCol_Text, ImVec4(1, 1, 1, 1));

    if (weapon == CANNON) {
        ImGui::PushStyleColor(ImGuiCol_SliderGrab, ImVec4(1, 0, 0, 0.5f));
        ImGui::PushStyleColor(ImGuiCol_FrameBg, ImVec4(cannonHeat * 1.f, 0, 0, 1));
        ImGui::Spacing();
        ImGui::SetNextItemWidth(ImGui::GetContentRegionAvail().x);

        ImGui::SliderFloat("", &this->cannonHeat, 0.f, 1.f, "");
        //ImGui::VSliderFloat("", TRUtil::Gui::RelativeSqrY(0.02f, 0.2f), &this->cannonHeat, 0.f, 1.f, "");
        ImGui::PopStyleColor(2);
        ImGui::AlignTextToFramePadding();
        ImGui::Text("Ammo: %u", cannonAmmo);
    }
    else if (weapon == MISSILE) {
        float av = ImGui::GetContentRegionAvail().x;
        float squareSize = 0.3f;
        ImVec2 per = ImVec2(squareSize * av, squareSize * av);
        float rest = (1.f - 2.f * squareSize) / 3.f;
        ImVec2 spacing = ImVec2(rest * av, rest * av);

        ImDrawList *dl = ImGui::GetWindowDrawList();

        ImVec2 p = ImGui::GetCursorScreenPos();
        p.x += spacing.x; p.y += spacing.y;

        ImVec2 start = ImVec2(p.x, p.y);
        ImVec2 end = ImVec2(start.x + per.x, start.y + per.y);

        for (int i = 0; i < 8; i++) {

            dl->AddRectFilled(start, end, ImGui::ColorConvertFloat4ToU32(missileColours[missiles[i]]));

            if (i == activeMissile) {
                dl->AddRect(start, end, IM_COL32(255, 255, 0, 255), 0.f, 15, per.x * 0.1f);
            }
            
            if (i % 2) {
                start.x = p.x;
                start.y = end.y + spacing.y;
            }
            else {
                start.x = end.x + spacing.x;
            }
            end.x = start.x + per.x;
            end.y = start.y + per.y;
        }
        ImGui::Dummy(ImVec2(per.x * 2 + spacing.x * 3, per.y * 4 + spacing.y * 5));

        ImGui::Text("%d: %s", activeMissile + 1, missileNames[missiles[activeMissile]]);
    }

    ImGui::Dummy(TRUtil::Gui::Relative(0.f, 0.01f));

    if (inRange) {
        ImGui::Text("Distance: %.2f", glm::length(targetPos - position));
    }
    else {
        ImGui::Text("<Out Of Range>");
    }

    //ImGui::SetCursorScreenPos(TRUtil::Gui::Relative(0.5f, 0.5f));

    ImGui::PopStyleColor();

    ImGui::End();
}













void SFPlayer::serialize(BinaryUtil &io) {
    // spatial data
    io(position);
    io(rotY);

    // weapon data
    io(cannonAmmo);
    for (int i = 0; i < 8; i++) {
        io(missiles[i]);
    }
}