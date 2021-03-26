#ifndef SRC_STORMFRONT_PLAYER_GUNNERCAMERA
#define SRC_STORMFRONT_PLAYER_GUNNERCAMERA

#include "TR/TRCamera.h"

class SFPlayer;

#define DEFAULT_FOV 50.f
#define ZOOMED_FOV 15.f

class GunnerCamera : public TRCamera {
public:
    GunnerCamera(SFPlayer *player, float np, float fp) : TRCamera(glm::vec3(0.f), np, fp, DEFAULT_FOV), player(player) {};
    ~GunnerCamera() {};
private:
    void move() override;
    SFPlayer *player;

    float lyaw = 0.f;

    void zoom();
    void unzoom();
    float sensitivity = 0.2f;
    bool zoomed = false;
};

#endif /* SRC_STORMFRONT_PLAYER_GUNNERCAMERA */
