#ifndef HEADERS_SF_SETTINGS
#define HEADERS_SF_SETTINGS

#include "TR/TesseractEngine.h"
#include "SF/GameState.h"

#include <stack>

namespace Settings {
    void update(TesseractEngine *engine, GameState *gameState, std::stack<int> &menuStack);
}

#endif /* HEADERS_SF_SETTINGS */
