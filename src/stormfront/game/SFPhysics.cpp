#include "SF/SFPhysics.h"

#include "TR/TRDisplayManager.h"
#include "SF/SFResources.h"
#include "SF/SFEnemy.h"

#include <random>

AOES SFPhysics::aoes(100);

std::list<SFBullet*> SFPhysics::activePlayerBullets;
std::forward_list<SFBullet*> SFPhysics::playerBulletPool;

std::list<EnemyBullet> SFPhysics::enemyBullets;
std::shared_ptr<GroupEntity> SFPhysics::enemyMissiles;
EnemyMissile* SFPhysics::closestMissile = nullptr;

TRScene *SFPhysics::scene;
SFPlayer *SFPhysics::player;

TRAudioSource *SFPhysics::src;

std::mt19937 mymt = std::mt19937(std::random_device()());
std::uniform_int_distribution<int> dist = std::uniform_int_distribution<int>(0, 2);


void SFPhysics::init(TRScene *scene, SFPlayer *player) {
    SFPhysics::scene = scene;
    SFPhysics::player = player;

    for (unsigned int i = 0; i < 100; i++) {
        playerBulletPool.push_front(new SFBullet());
    }

    enemyMissiles = std::make_shared<GroupEntity>();
    scene->addEntityToRoot(enemyMissiles);

    src = new TRAudioSource(0.3f);
    SFResources::sg()->sfSources.push_back(src);
}

void SFPhysics::addPlayerBullet(const glm::vec3 &pos, const glm::vec3 &vel) {
    if (playerBulletPool.empty()) { return; }
    SFBullet *b = playerBulletPool.front();
    playerBulletPool.pop_front();
    activePlayerBullets.push_back(b);
    
    b->pos = pos;
    b->velocity = vel;
}

void SFPhysics::playerBulletHit(SFBullet *bullet, float y) {
    bullet->pos.y = y;
    aoes.add(bullet->pos, 3.f, 1.f);
    
    TRParticle *p;
    for (unsigned i = 0; i < 1; i++) {
        if ((p = scene->particleManager->allocateParticle(1.f))) {
            p->particleTexture = SFResources::sg()->dustExplosion;
            p->position = bullet->pos + glm::vec3(0.f, 1.5f, 0.f);
            p->scale = 3.f;
            p->velocity = glm::vec3(0.f, 0.f, 0.f);
        }
    }
}

void SFPhysics::updatePlayerBullets() {

    std::list<SFBullet*>::iterator it = activePlayerBullets.begin();

    while (it != activePlayerBullets.end()) {
        SFBullet *b = *it;
        
        b->pos += b->velocity * TRDisplayManager::getFrameDelta();
        b->velocity.y -= 9.81f * TRDisplayManager::getFrameDelta();
        float terrainHeight = std::max(scene->terrain->getHeightRaw(b->pos.x, b->pos.z), scene->water->position.y);

        if (b->pos.y <= terrainHeight) { // bullet die
            it = activePlayerBullets.erase(it);
            playerBulletPool.push_front(b);
            playerBulletHit(b, terrainHeight);
        }
        else {
            it++;
        }
    }

    if (player->missile != nullptr) {
        player->missile->update(scene);
        const auto &m = player->missile->position;
        float th = scene->terrain->getHeightRaw(m.x, m.z); // dont let missile explode on contact with water
        if (m.y < th) {
            scene->removeEntityFromRoot(player->missile);
            player->missile->onCollide(scene, th, aoes);
            player->missile = nullptr;
        }
    }
}

void SFPhysics::collisionPass(std::list<std::shared_ptr<TRSceneEntity>> &enemies) {
    for (const auto &el : enemies) {
        SFEnemy *enemy = static_cast<SFEnemy*>(el.get());
        for (unsigned i = 0; i < aoes.size(); i++) {
            const AOE &aoe = aoes[i];

            float dx = enemy->position.x - aoe.pos.x;
            float dz = enemy->position.z - aoe.pos.z;
            float distSquared = dx * dx + dz * dz;
            float radiiSquared = (enemy->bounds.getVolume().sphere.radius + aoe.radius) * (enemy->bounds.getVolume().sphere.radius + aoe.radius);

            if (distSquared <= radiiSquared) {
                if (distSquared <= radiiSquared * 0.2f) { // within first 1/5th
                    enemy->damage(aoe.damage);
                }
                else {
                    distSquared -= radiiSquared * 0.2f;
                    radiiSquared *= 0.8f;
                    enemy->damage(aoe.damage * (1.f - distSquared / radiiSquared));
                }
            }
        }
    }
    aoes.reset();
}



void SFPhysics::enemyCollisionUpdatePass() {
    {std::list<EnemyBullet>::iterator it = enemyBullets.begin();

    while (it != enemyBullets.end()) {
        EnemyBullet &bullet = *it;
        bullet.pos += bullet.velocity * TRDisplayManager::getFrameDelta();

        if (player->bounds.getVolume().intersectsSphere(bullet.pos, 0.f)) {
            it = enemyBullets.erase(it);
            player->takeDamage(1);

            src->play(SFResources::sg()->ricoshitSound[0]);

            TRParticle *p;
            if ((p = scene->particleManager->allocateParticle(1.f))) {
                p->particleTexture = SFResources::sg()->fireExplosion;
                p->position = player->position;
                p->scale = 2.5f;
                p->velocity = (bullet.pos - player->position) * 0.5f;
            }
        }
        else if (bullet.pos.y > 1000.f) {
            it = enemyBullets.erase(it);
        }
        else {
            it++;
        }
    }}

    auto it = enemyMissiles->children.begin();
    
    closestMissile = nullptr;

    while (it != enemyMissiles->children.end()) {
        EnemyMissile *missile = static_cast<EnemyMissile*>((*it).get());
        bool dead = missile->update(player);

        if (!dead) {
            if (!closestMissile || TRMath::distanceSquared(player->position, missile->position) < TRMath::distanceSquared(player->position, closestMissile->position)) {
                closestMissile = missile;
            }
        }

        if (missile->bounds.getVolume().intersectsSphere(player->bounds.getVolume())) {
            it = enemyMissiles->children.erase(it);
            player->takeDamage(25);
            missile->explosion(scene);
        }
        else if (dead) {
            it = enemyMissiles->children.erase(it);
        }
        else {
            it++;
        }
    }
}


void SFPhysics::cleanUp() {
    for (SFBullet *b : activePlayerBullets) {
        delete b;
    }
    for (SFBullet *b : playerBulletPool) {
        delete b;
    }
    delete src;
}