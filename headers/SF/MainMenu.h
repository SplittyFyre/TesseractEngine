#ifndef SRC_STORMFRONT_GAME_MENUS_MAINMENU
#define SRC_STORMFRONT_GAME_MENUS_MAINMENU

#include "TR/TesseractEngine.h"
#include "SF/GameState.h"

#include <stack>

namespace MainMenu {
    void update(TesseractEngine *engine, GameState *gameState, std::stack<int> &menuStack);
}

#endif /* SRC_STORMFRONT_GAME_MENUS_MAINMENU */
