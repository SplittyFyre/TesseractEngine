#ifndef HEADERS_TR_DEFFEREDPROCESSINGW
#define HEADERS_TR_DEFFEREDPROCESSINGW

#include "TR/TRScene.h"
#include "TR/TRFbo.h"
#include "TR/DefferedShaderW.h"

class DefferedProcessingW {
public:
    DefferedProcessingW();
    void doDefferedProcessing(TRScene *scene, TRFbo *gbuf);
private:
    DefferedShaderW shader;
    void start();
    void end();
};

#endif /* HEADERS_TR_DEFFEREDPROCESSINGW */
