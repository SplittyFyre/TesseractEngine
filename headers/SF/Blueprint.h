#ifndef HEADERS_SF_BLUEPRINT
#define HEADERS_SF_BLUEPRINT

#include "TR/TexturedModel.h"
#include <memory>

struct Blueprint {
    std::shared_ptr<TexturedModel> model = nullptr;
    float scale = 10.f;

    float health = 100.f;
    float armour = 0.1f;

    float speed = 50.f;
    float turnTime = 1.f;
};

#endif /* HEADERS_SF_BLUEPRINT */
