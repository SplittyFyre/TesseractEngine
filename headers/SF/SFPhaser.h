#ifndef SRC_STORMFRONT_GAME_TURRETS_SFPHASER
#define SRC_STORMFRONT_GAME_TURRETS_SFPHASER

#include "TR/TRSpatialEntity.h"
#include "TR/LeafGeometry.h"

#include "SF/SFEnemy.h"
#include "SF/SFResources.h"

class SFPhaser : public TRSpatialEntity<SFPhaser> {
    friend TRSpatialEntity<SFPhaser>;
public:
    SFPhaser() : TRSpatialEntity(glm::vec3(4327.228516f, 77.402176f + 15.f, 4292.241699f), 0.f, 0.f, 0.f, glm::vec3(10.f)),
    laserBeam(std::make_shared<LeafGeometry>(SFResources::sg()->laserModel, glm::vec3(0.f), 0.f, 0.f, 0.f, glm::vec3(laserDiameter))) {};
    ~SFPhaser() {};
    void update(TRScene *scene);
    void notifyOfEnemy(const std::shared_ptr<SFEnemy> &enemy);
private:
    void entityUpdate();
    void boom();

    std::shared_ptr<LeafGeometry> laserBeam;

    float timer = 0.f;
    float actionTimer = 0.f;
    float prevAngleH = 0.f, prevAngleV = 0.f;
    bool firing = false;
    std::shared_ptr<SFEnemy> target = nullptr;

    static const float laserDiameter;
};

#endif /* SRC_STORMFRONT_GAME_TURRETS_SFPHASER */
