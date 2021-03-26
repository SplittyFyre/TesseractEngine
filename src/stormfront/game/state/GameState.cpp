#include "SF/GameState.h"

#include "SF/SFResources.h"
#include "SF/BinaryUtil.h"
#include "SF/TreborTruck.h"
#include "SF/SFShop.h"
#include "SF/SFPhysics.h"

#include "TR/TRUtil.h"
#include "TR/TRDisplayManager.h"
#include <fstream>
#include <cstdio>


static const char * const dataFile = "data/game.dat";

std::array<Spawner, NUM_SPAWNERS> GameState::spawners = {
    Spawner("res/paths/pathleft.txt"),
    Spawner("res/paths/pathmain1.txt"),
    Spawner("res/paths/pathmain2.txt"),
    Spawner("res/paths/patha.txt")
};


void Spawner::update(GroupEntity *sgEnemies) {
    if (cooldown > 0.f) {
        cooldown -= TRDisplayManager::getFrameDelta();
    }
    else if (!queue.empty()) {
        const auto &pkg = queue.front();
        if (std::holds_alternative<Blueprint*>(pkg)) {
            sgEnemies->addChild(std::make_shared<TreborTruck>(*std::get<Blueprint*>(pkg), this->pathData));
            cooldown = 1.f;
        }
        else {
            cooldown = std::get<float>(pkg);
        }
        queue.pop_front();
    }
}

void GameState::removeSaved() {
    checkForSaved();
    if (!hasSaved) {
        return;
    }
    if (remove(dataFile)) {
        puts("ERROR: error removing save file");
        exit(1);
    }
    hasSaved = false;
}

void GameState::cleanState() {
    for (auto &s : spawners) {
        s.clean();
    }
    
    checkForSaved();
    round = 1;
    roundInProgress = false;
    numEnemies = 42069; // might as well :P

    player->cleanState();
    rotorSource.setPitch(1.f);

    sgEnemies->children.clear();
    SFPhysics::clearMissiles();
    scene->particleManager->clearParticles();

    if (towerMortar) {
        scene->removeEntityFromRoot(towerMortar);
        towerMortar = nullptr;
    }
    if (towerPhaserLeft) {
        scene->removeEntityFromRoot(towerPhaserLeft);
        towerPhaserLeft = nullptr;
    }
    if (towerPhaserRight) {
        scene->removeEntityFromRoot(towerPhaserRight);
        towerPhaserRight = nullptr;
    }

    currency = 40000;
    delete shop;
    shop = new SFShop(this);
    shop->cleanPlayer();
}




    // model, scale    health, armour    speed, turntime
void GameState::makeBlueprints() {
    Blueprint truckbp;
    truckbp.model = SFResources::sg()->truckModel;
    truckbp.scale = 0.3086277945313445f;
    truckbp.health = 5.f;
    truckbp.armour = 0.05f;
    truckbp.speed = 30.f;
    truckbp.turnTime = 0.2f;

    enemyBlueprints["Truck"] = truckbp;
}



void GameState::startAudio() {
    rotorSource.setVolume(1.f);
    rotorSource.play(SFResources::sg()->rotorSound);
}
void GameState::stopAudio() {
    rotorSource.stop();
    if (musicPlaying) {
        SFResources::sg()->streamAudio->stop();
    }
}

void GameState::pauseAudio() {
    rotorSource.pause();
    if (musicPlaying) {
        SFResources::sg()->streamAudio->stop();
    }
}
void GameState::unpauseAudio() {
    rotorSource.resume();
    if (musicPlaying) {
        SFResources::sg()->streamAudio->play();
    }
}



GameState::GameState(TRScene *scene, SFPlayer *player) : scene(scene), player(player), shop(new SFShop(this)) {
    scene->addEntityToRoot(sgEnemies);
    makeBlueprints();
    checkForSaved();

    SFResources::sg()->sfSources.push_back(&rotorSource);
    rotorSource.setLooping(true);
}

GameState::~GameState() {
    delete shop;
}


void GameState::checkForSaved() {
    FILE *f = fopen(dataFile, "rb");
    if (f != NULL) {
        hasSaved = true;
        fclose(f);
    }
    else {
        hasSaved = false;
    }
}

void GameState::update() {

    if (player->isDead()) {
        lose();
    }

    if (roundInProgress) {
        updateRound();
    }
    else if (!player->inGunMode()) {
        shop->render();
    }

    if (musicPlaying) {
        if (!SFResources::sg()->streamAudio->update()) {
            musicPlaying = false;
        }
    }

    ImGui::Begin("Music");
    if (ImGui::Button("Play")) {
        SFResources::sg()->streamAudio->wind(SFResources::sg()->vput);
        SFResources::sg()->streamAudio->play();
        musicPlaying = true;
    }
    ImGui::End();

    if (!won) {
        ImGui::SetNextWindowPos(TRUtil::Gui::Relative(1.f, 0.f), 0, ImVec2(1.f, 0.f));
        ImGui::SetNextWindowSize(ImVec2(0, 0));
        ImGui::Begin("RoundInfo", nullptr, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoBackground);
        
        ImGui::Text("Round %u", round);
        if (roundInProgress) {
            ImGui::Text("%u left", numEnemies);
        }
        else {
            if (ImGui::Button("Advance")) {
                nextRound();
            }
            if (ImGui::Button("Shop")) {
                shop->show = !shop->show;
            }
        }
        ImGui::End();
    }

    if (SFPhysics::missilesInFlight() || breachImminent) {
        ImGui::SetNextWindowPos(TRUtil::Gui::Relative(0.5f, 0.2f), 0, ImVec2(0.5f, 0.2f));
        ImGui::SetNextWindowSize(ImVec2(0, 0));
        ImGui::Begin("Alerta", nullptr, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoBackground);
        ImGui::PushStyleColor(ImGuiCol_Text, ImVec4(1, 0, 0, 1));

        if (SFPhysics::missilesInFlight()) {
            ImGui::Text("Incoming Missile");
        }

        if (breachImminent) {
            ImGui::Text("Breach Imminent");
        }

        ImGui::PopStyleColor();
        ImGui::End();
    }
}

void GameState::nextRound() {
    roundInProgress = true;
    for (Spawner &s : spawners) {
        s.cooldown = -1.f; // 'refresh'
    }
    loadRound();
}

void GameState::updateRound() {
    for (Spawner &s : spawners) {
        s.update(sgEnemies.get());
    }

    updateEnemies(); // might set lost flag

    if (towerMortar)
        towerMortar->update(scene);
    if (towerPhaserLeft)
        towerPhaserLeft->update(scene);
    if (towerPhaserRight)
        towerPhaserRight->update(scene);

    if (!numEnemies && !lost) { // round complete
        onCompleteRound();
    }
}

void GameState::onCompleteRound() {
    roundInProgress = false;
    round++;
    if (round > 30) {
        won = true;
        removeSaved();
    }
    else {
        serialize();
    }
    player->refreshHealth();
    SFPhysics::clearMissiles();
}

void GameState::updateEnemies() {
    auto it = sgEnemies->children.begin();

    breachImminent = false;

    while (it != sgEnemies->children.end()) {
        SFEnemy *enemy = static_cast<SFEnemy*>((*it).get());

        if (enemy->isDead()) {
            it = sgEnemies->children.erase(it);
            numEnemies--;
        }
        else {
            float f = enemy->update(scene);

            if (towerMortar)
                towerMortar->notifyOfEnemy(enemy);
            if (towerPhaserLeft)
                towerPhaserLeft->notifyOfEnemy(std::static_pointer_cast<SFEnemy>(*it));
            if (towerPhaserRight)
                towerPhaserRight->notifyOfEnemy(std::static_pointer_cast<SFEnemy>(*it));

            if (f < 500.f) {
                breachImminent = true;
                if (f < 0.f) {
                    lose();
                }
            }

            enemy->attack(player);
            it++;
        }
    }
}


void GameState::loadRound() {
    std::string filename = "res/rounds/" + std::to_string(round) + ".txt";

    std::ifstream fin = std::ifstream(filename);
    if (!fin.is_open()) {
        printf("failed to open round file %s\n", filename.c_str());
        roundInProgress = false;
        return;
    }

    numEnemies = 0;

    std::string ins; int s;
    while (fin >> ins >> s) {
        if (ins == "Wait") {
            float t;   // spawner, time
            fin >> t;
            if (s == -1) {
                for (auto &spawner : spawners) {
                    spawner.queue.push_front(t);
                }
            }
            else {
                spawners[s].queue.push_front(t); 
            }
        }
        else {
            auto it = enemyBlueprints.find(ins);
            if (it == enemyBlueprints.end()) {
                printf("unknown enemy type '%s' in round file %s\n", ins.c_str(), filename.c_str());
                exit(1);
            }
            
            if (s == -1) {
                for (auto &spawner : spawners) {
                    spawner.queue.push_front(&(it->second)); numEnemies++;
                }
            }
            else {
                spawners[s].queue.push_front(&(it->second)); numEnemies++;
            }
        }  
    }

    fin.close();
}







void GameState::serialize() {
    std::fstream fout(dataFile, std::ios::binary | std::ios::out | std::ios::trunc);
    BinaryUtil io(fout, false);
    serialProcess(io);
    fout.close();

    hasSaved = true;
}

void GameState::unserialize() {
    std::fstream fin(dataFile, std::ios::binary | std::ios::in);
    BinaryUtil io(fin, true);
    serialProcess(io);
    fin.close();
}

void GameState::serialProcess(BinaryUtil &io) {
    io(round);
    io(currency);
    player->serialize(io);
    shop->serialize(io);
} 

