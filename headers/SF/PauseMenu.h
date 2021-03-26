#ifndef HEADERS_SF_PAUSEMENU
#define HEADERS_SF_PAUSEMENU

#include "TR/TesseractEngine.h"
#include <stack>

namespace PauseMenu {
    bool update(TesseractEngine *engine, std::stack<int> &menuStack, bool &paused);
}

#endif /* HEADERS_SF_PAUSEMENU */
