#ifndef SRC_STORMFRONT_GAME_STATE_SFSHOP
#define SRC_STORMFRONT_GAME_STATE_SFSHOP

#include "SF/GameState.h"

#include <array>

class SFShop {
public:
    SFShop(GameState *gameState) : gameState(gameState), currency(gameState->currency) {};
    ~SFShop() {};
    void render();
    bool show = false;

    void serialize(BinaryUtil &io);
    void cleanPlayer();
private:
    void pageTurrets();
    void turretSetColours(int idx);
    void createTurret(int idx);
    void buyTurret(int idx);
    void turretTooltip(int idx);

    void pageMisc();
    void miscIcon(GLuint tex, int idx);
    void modifyPlayer();
private:
    enum class Mode {
        MISSILES, TOWERS, MISC
    };
    Mode mode = Mode::MISSILES;

    GameState * const gameState;
    int &currency;

    std::array<bool, 3> turrets = { false, false, false };
    std::array<bool, 4> misc = { false, false, false, false };
};

#endif /* SRC_STORMFRONT_GAME_STATE_SFSHOP */
