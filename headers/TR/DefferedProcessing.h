
#ifndef HEADERS_TR_DEFFEREDPROCESSING
#define HEADERS_TR_DEFFEREDPROCESSING

#include <memory>
#include "TR/RawModel.h"
#include "TR/TRFbo.h"
#include "TR/DefferedShader.h"

class DefferedProcessing {
public:
    DefferedProcessing();
    ~DefferedProcessing() {};
    void doDefferedProcessing(TRScene *scene, TRFbo *gbuf);

private:
    DefferedShader shader;
    void start();
    void end();
};

#endif /* HEADERS_TR_DEFFEREDPROCESSING */
