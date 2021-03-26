#ifndef SRC_STORMFRONT_ENEMIES_TYPES_TREBORTRUCK
#define SRC_STORMFRONT_ENEMIES_TYPES_TREBORTRUCK

#include "SF/SFEnemy.h"

class TreborTruck : public SFEnemy {
public:
    TreborTruck(const Blueprint &blueprint, PathData &pd)
    : SFEnemy(blueprint, pd) {};
    ~TreborTruck() {};
    
    void attack(SFPlayer *player) override;
private:
    float timer = 0.f;
};

#endif /* SRC_STORMFRONT_ENEMIES_TYPES_TREBORTRUCK */
