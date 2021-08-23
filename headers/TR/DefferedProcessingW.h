#ifndef HEADERS_TR_DEFFEREDPROCESSINGW
#define HEADERS_TR_DEFFEREDPROCESSINGW

#include "TR/TRScene.h"
#include "TR/TRFbo.h"
#include "TR/DefferedShaderW.h"

class DefferedProcessingW {
public:
    DefferedProcessingW();
    void doDefferedProcessing(TRScene *scene, TRFbo *gbuf, TRFbo *ree, TRFbo *reflection);
private:
    DefferedShaderW shader;
    void start();
    void end();
    TRTexture *foamTex;
};

#endif /* HEADERS_TR_DEFFEREDPROCESSINGW */
