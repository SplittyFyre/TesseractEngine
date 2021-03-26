
#ifndef ENGINE_POST_DEFFERED_DEFFERED_PROCESSING_H_
#define ENGINE_POST_DEFFERED_DEFFERED_PROCESSING_H_

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

#endif /* ENGINE_POST_DEFFERED_DEFFERED_PROCESSING_H_ */