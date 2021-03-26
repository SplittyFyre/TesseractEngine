#ifndef SRC_STORMFRONT_PLAYER_SFCAMERA
#define SRC_STORMFRONT_PLAYER_SFCAMERA

#include "TR/TRCamera.h"

class SFPlayer;

class SFCamera : public TRCamera {
public:
    SFCamera(SFPlayer *player, float np, float fp, float fov) : TRCamera(glm::vec3(0.f), np, fp, fov),
    player(player) { pitch = 20.f; };
    ~SFCamera() {};
private:
    void move() override;
    void calc(float horiz, float vertic);

    SFPlayer *player;

    float distanceFrom = 20.f;
    float angleAround = 0.f;
};

#endif /* SRC_STORMFRONT_PLAYER_SFCAMERA */
