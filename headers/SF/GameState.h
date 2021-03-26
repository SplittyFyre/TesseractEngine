#ifndef SRC_STORMFRONT_GAME_STATE_GAMESTATE
#define SRC_STORMFRONT_GAME_STATE_GAMESTATE

#define MAX_ROUND 30

#include "TR/GroupEntity.h"
#include "TR/TRAudio.h"
#include "TR/TRScene.h"
#include "SF/SFEnemy.h"
#include "SF/Blueprint.h"
#include "SF/SFPlayer.h"

#include "SF/SFMortar.h"
#include "SF/SFPhaser.h"

#include <memory>
#include <array>
#include <unordered_map>
#include <deque>
#include <string>
#include <variant>

#define NUM_SPAWNERS 4

struct Spawner {
    Spawner(const char *pathfile) : pathData(pathfile) {}
    void update(GroupEntity *sgEnemies);

    PathData pathData;
    float cooldown = 0.f;
    std::deque<std::variant<Blueprint*, float>> queue;
    inline void clean() { queue.clear(); cooldown = 0.f; }
};

class SFShop;

class GameState {
    friend class SFPlayer;
    friend SFShop;
public:
    GameState(TRScene *scene, SFPlayer *player);
    ~GameState();
    void update();
    inline std::list<std::shared_ptr<TRSceneEntity>> &getEnemies() { return sgEnemies->children; };
    inline bool hasSavedGame() const { return hasSaved; }
    void unserialize();
    void removeSaved();
    void cleanState();

    void startAudio();
    void stopAudio();
    void pauseAudio();
    void unpauseAudio();

    inline TRScene * const getScene() const { return scene; }

    bool won = false;
    bool lost = false;
    float timer = 0.f; // shared
private:
    TRAudioSource rotorSource;
    bool musicPlaying = false;
private:

    inline void lose() { if (!won) { lost = true; removeSaved(); } }

    TRScene * const scene;
    SFPlayer * const player;

    int currency = 400;
    SFShop *shop;

    bool breachImminent = false;
    
    void nextRound();
    void updateRound();
    void onCompleteRound();

    void loadRound();
    void updateEnemies();

    bool hasSaved = false;
    void checkForSaved();
    unsigned int round = 1;
    bool roundInProgress = false; // transient
    unsigned int numEnemies = 42069; // transient

    void serialize();
    void serialProcess(BinaryUtil &io);

    std::shared_ptr<GroupEntity> sgEnemies = std::make_shared<GroupEntity>();

    std::shared_ptr<SFMortar> towerMortar = nullptr;
    std::shared_ptr<SFPhaser> towerPhaserLeft = nullptr, towerPhaserRight = nullptr;
    
    inline void makeMortar() { towerMortar = std::make_shared<SFMortar>(); scene->addEntityToRoot(towerMortar); }
    inline void makePhaserLeft() { towerPhaserLeft = std::make_shared<SFPhaser>(); scene->addEntityToRoot(towerPhaserLeft); }
    inline void makePhaserRight() { towerPhaserRight = std::make_shared<SFPhaser>(); scene->addEntityToRoot(towerPhaserRight); }

    void makeBlueprints();
    std::unordered_map<std::string, Blueprint> enemyBlueprints;

    static std::array<Spawner, NUM_SPAWNERS> spawners;
};

#endif /* SRC_STORMFRONT_GAME_STATE_GAMESTATE */
