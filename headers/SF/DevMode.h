#ifndef SRC_STORMFRONT_UTIL_DEVMODE
#define SRC_STORMFRONT_UTIL_DEVMODE

#include "TR/TRScene.h"
#include "SF/SFResources.h"

#include <vector>

#include <glm/vec3.hpp>

class DevMode {
public:
    DevMode() = delete;
    ~DevMode() = delete;
    static void update(SFResources *res, TRScene *scene, TRCamera *cam, GroupEntity *treeNode);
private:

    static void trees(TRScene *scene, TRCamera *cam, GroupEntity *treeNode);
    static void pathMaker(SFResources *res, TRScene *scene, TRCamera *cam);
    static void terrainTess(TRScene *scene);
    static void fogControl(TRScene *scene);

    static std::vector<glm::vec3> path;
};

#endif /* SRC_STORMFRONT_UTIL_DEVMODE */
