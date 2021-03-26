#ifndef HEADERS_TR_DEFRTERRAINRENDERER
#define HEADERS_TR_DEFRTERRAINRENDERER

#include "TR/DefrTerrainShader.h"
#include "TR/TRScene.h"
#include "glm/glm.hpp"

class DefrTerrainRenderer {
public:
    DefrTerrainRenderer();
    virtual ~DefrTerrainRenderer();

    void render(TRScene *scene);

private:
    DefrTerrainShader shader;
    void bindTextures(TRTerrain *terrain);
};

#endif /* HEADERS_TR_DEFRTERRAINRENDERER */
