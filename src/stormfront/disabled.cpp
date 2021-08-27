
// this main file is disable as of now
#if 0
#include "TR/TRDisplayManager.h"
#include "TR/TRKeyboard.h"
#include "TR/TesseractEngine.h"
#include "TR/FFTPreComp.h"
#include "TR/FreqDomain.h"
#include "TR/Butterflies.h"
#include "TR/WaterNormals.h"

#include "SF/StormFrontGame.h"
#include <iostream>

int main(void) {

    TRDisplayManager::createDisplay(930, 1016, 60, "StormFront", nullptr);

    TesseractEngine *engine = new TesseractEngine();

    StormFrontGame *game = new StormFrontGame();

    game->run(engine);

    delete game;
    delete engine;
    
    TRDisplayManager::closeDisplay();

    return 0;
}
#endif