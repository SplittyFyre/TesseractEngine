#ifndef SRC_STORMFRONT_PLAYER_SFPLAYER
#define SRC_STORMFRONT_PLAYER_SFPLAYER

#include "TR/TRSpatialEntity.h"
#include "TR/LeafGeometry.h"
#include "TR/DynamicBounds.h"
#include "TR/TRScene.h"
#include "TR/TRAudioSource.h"
#include "SF/SFResources.h"
#include "SF/SFCamera.h"
#include "SF/GunnerCamera.h"
#include "SF/SFPhysics.h"
#include "SF/SFMissile.h"

#include "SF/BinaryUtil.h"
#include <memory>
#include <array>
#include <random>
#include <imgui/imgui.h>

#define CANNON 0
#define MISSILE 1

#define NUM_WEAPONS 2


#define EMPTY 0
#define STANDARD 1
#define HELLFIRE 2
#define CLUSTER 3
#define ANTIMATTER 4

class GameState;

class SFPlayer : public TRSpatialEntity<SFPlayer> {
    friend class TRSpatialEntity<SFPlayer>;
    friend class SFShop;
public:
    SFPlayer(SFResources *res, float np, float fp, float fov);
    ~SFPlayer() {};
    void update(TRScene *scene, GameState *gameState);

    void serialize(BinaryUtil &io);
    void cleanState();
    
    DynamicBounds bounds;
private:
    void updateRotX();
    void updateRotY();
    void updateRotZ();
    void move();

    void renderGuis(TRScene *scene, GameState *gameState);
    void renderHudGuis(TRScene *scene, GameState *gameState);
    void renderGunnerGuis();

    void updateWeapons(TRScene *scene);
    void fireMissile(TRScene *scene);

    void entityUpdate();
    std::shared_ptr<TexturedModel> mainBody;
    std::shared_ptr<LeafGeometry> rotor;
    std::shared_ptr<LeafGeometry> backRotor;
private:
    std::shared_ptr<SFCamera> tpCam;
    std::shared_ptr<GunnerCamera> gunnerCam;

    float rvX = 0.f, rvY = 0.f;
    float hvelocity = 0.f, vvelocity = 0.f;
    float throttle = 1.f;
    bool hover = true;
public:
    std::shared_ptr<SFMissile> missile = nullptr;
    inline bool inGunMode() const { return gunMode; }
    inline std::shared_ptr<TRCamera> getCamera() const { 
        if (gunMode) 
            return gunnerCam;
        else
            return tpCam;
    }

    inline bool isDead() const { return health <= 0; }
    inline void refreshHealth() { health = maxHealth; shield = maxShield; }
    inline void setUseShield(bool b) { useShield = b; }
    void takeDamage(int dmg);
private:
    TRAudioSource source = TRAudioSource(0.1f);

    inline void increaseMaxHealth() { maxHealth = 50; health = maxHealth; }
    inline void reduceMaxHealth() { maxHealth = 20; health = maxHealth; }
    int maxHealth = 20;
    const int maxShield = 100;
    bool useShield = false;

    int health = maxHealth;
    int shield = maxShield;

    std::mt19937 mt = std::mt19937(std::random_device()());
    std::uniform_real_distribution<float> cannonDist = std::uniform_real_distribution<float>(-2.5f, 2.5f);

    float ldCooldown = 0.f;
    bool laserDefense = false;
    bool doubleShot = false;

    bool gunMode = false;
    int weapon = CANNON;

    unsigned cannonAmmo = 1200;
    float cannonHeat = 0.f;
    bool cannonDisabled = false;
    float timerCannon = 0.f;

    std::array<int, 8> missiles = { STANDARD, STANDARD, STANDARD, STANDARD, HELLFIRE, HELLFIRE, HELLFIRE, HELLFIRE };
    int activeMissile = 0;
    std::shared_ptr<LeafGeometry> missileEntities[8];

    glm::vec3 targetPos;
    bool inRange = false;

    SFResources * const res;
};

#endif /* SRC_STORMFRONT_PLAYER_SFPLAYER */
