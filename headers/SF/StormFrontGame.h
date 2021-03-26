#ifndef SRC_STORMFRONT_GAME_STORMFRONTGAME
#define SRC_STORMFRONT_GAME_STORMFRONTGAME

#include "TR/TesseractEngine.h"
#include "TR/TRCamera.h"
#include "TR/GroupEntity.h"
#include "TR/RogueCamera.h"

#include "SF/SFResources.h"
#include "SF/SFPlayer.h"
#include "SF/GameState.h"

#include "SF/MenuTypes.h"
#include "TR/TRStreamAudio.h"
#include <stack>

#include "TP/ThreadPool.hpp"

class StormFrontGame {
public:
    StormFrontGame();
    ~StormFrontGame();
    void run(TesseractEngine *engine);

private:
    bool paused = false;
    bool devMode = false;
    std::stack<int> menuStack = std::stack<int>({MAINMENU});
    std::shared_ptr<RogueCamera> devCam;

    void makeScene();
    void makeAuxilliaryScenes();

    bool updateMenu(TesseractEngine *engine);
    void mainGameLoop(TesseractEngine *engine);

    bool updateWinState(TesseractEngine *engine);
    void updateLoseState(TesseractEngine *engine);

    void handle();

    SFResources *res;

    TRScene *scene;
    TRScene *scape;
    std::shared_ptr<TRCamera> scapeCam;
    std::shared_ptr<SFPlayer> player;

    std::shared_ptr<GroupEntity> treeNode = std::make_shared<GroupEntity>();

    GameState *gameState;

    ThreadPool *tp;
};

#endif /* SRC_STORMFRONT_GAME_STORMFRONTGAME */
