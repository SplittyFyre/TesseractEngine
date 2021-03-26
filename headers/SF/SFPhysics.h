#ifndef SRC_STORMFRONT_GAME_SFPHYSICS
#define SRC_STORMFRONT_GAME_SFPHYSICS

#include "TR/TRScene.h"
#include "TR/TRAudio.h"

#include "SF/SFPlayer.h"
#include "SF/AOES.h"
#include "SF/EnemyMissile.h"
#include "TR/GroupEntity.h"

#include <glm/glm.hpp>

#include <vector>
#include <list>
#include <forward_list>

#define MAX_ENEMY_MISSILES 4

struct SFBullet {
    glm::vec3 pos, velocity;
    SFBullet() : pos(0.f), velocity(0.f) {}
};

// enemy bullet is different from SFBullet, believe me ;)
struct EnemyBullet {
    glm::vec3 pos, velocity;
    EnemyBullet(const glm::vec3 &pos, const glm::vec3 &vel) : pos(pos), velocity(vel) {}
    EnemyBullet(float x, float y, float z, float vx, float vy, float vz)
    : pos(x, y, z), velocity(vx, vy, vz) {}
};

class SFPhysics {
public:
    SFPhysics() = delete;
    ~SFPhysics() = delete;

    static void init(TRScene *scene, SFPlayer *player);
    static void cleanUp();

    static void addPlayerBullet(const glm::vec3 &pos, const glm::vec3 &vel);
    static inline void addAoeDamage(const glm::vec3 &pos, float radius, float damage)
    { aoes.add(pos, radius, damage); }
    static void updatePlayerBullets();
    static void collisionPass(std::list<std::shared_ptr<TRSceneEntity>> &enemies);

    static inline void addEnemyBullet(const glm::vec3 &pos, const glm::vec3 &vel) { enemyBullets.emplace_back(pos, vel); }
    static inline void addEnemyMissile(const glm::vec3 &pos) 
    { if (enemyMissiles->children.size() < MAX_ENEMY_MISSILES) enemyMissiles->addChild(std::make_shared<EnemyMissile>(pos)); }
    static inline bool missilesInFlight() { return !enemyMissiles->children.empty(); }
    static inline EnemyMissile *getClosestEnemyMissile() { return closestMissile; }
    static void enemyCollisionUpdatePass();
    static inline void clearMissiles() { enemyMissiles->children.clear(); closestMissile = nullptr; }
private:
    static void playerBulletHit(SFBullet *bullet, float y);
private:

    static TRAudioSource *src;

    static TRScene *scene;
    static SFPlayer *player;

    static std::list<SFBullet*> activePlayerBullets;
    static std::forward_list<SFBullet*> playerBulletPool;

    static std::list<EnemyBullet> enemyBullets;
    static std::shared_ptr<GroupEntity> enemyMissiles;
    static EnemyMissile *closestMissile;
    
    static AOES aoes;
};

#endif /* SRC_STORMFRONT_GAME_SFPHYSICS */