#include "TR/TRStaticBatch.h"

#include "TR/TRLoader.h"
#include "TR/TRMath.h"

#include "glm/gtc/type_ptr.hpp"

#define INSTANCED_DATA_LEN 18

TRStaticBatch::TRStaticBatch(MeshData *meshData, const std::shared_ptr<ModelSkin> &skin, const std::vector<TRStaticInstance> &instances, bool dsf)
    : model(std::make_shared<TexturedModel>(TRLoader::loadToModel(meshData), skin)),
     vboID(TRLoader::createEmptyVBOStatic(INSTANCED_DATA_LEN * instances.size())), count(instances.size()) {

    model->getRawModel()->doubleSidedFaces = dsf;

    GLuint vaoID = model->getRawModel()->vaoID;
    TRLoader::addInstancedAttrib(vaoID, vboID, 3, 4, INSTANCED_DATA_LEN, 0);
    TRLoader::addInstancedAttrib(vaoID, vboID, 4, 4, INSTANCED_DATA_LEN, 4);
    TRLoader::addInstancedAttrib(vaoID, vboID, 5, 4, INSTANCED_DATA_LEN, 8);
    TRLoader::addInstancedAttrib(vaoID, vboID, 6, 4, INSTANCED_DATA_LEN, 12);
    TRLoader::addInstancedAttrib(vaoID, vboID, 7, 2, INSTANCED_DATA_LEN, 16);
    
    float *data = new float[INSTANCED_DATA_LEN * count];

    int ptr = 0;
    glm::mat4 mat;
    for (const TRStaticInstance &instance : instances) {
        TRMath::createTransformationMatrix(&mat, instance.position, instance.rx, instance.ry, instance.rz, instance.scale);
        float *vp = (float*) glm::value_ptr(mat);
        for (int i = 0; i < 16; i++) {
            data[ptr++] = vp[i];
        }
        
        float tx, ty;
        int asize = model->getSkin()->atlasSize;
        if (asize > 1) {
            int column = instance.atlasIndex % asize;
            float x = float(column) / float(asize);
            int row = instance.atlasIndex / asize;
            float y = float(row) / float(asize);
            tx = x; ty = y;
        }
        else {
            tx = ty = 0.f;
        }

        data[ptr++] = tx; data[ptr++] = ty;
    }

    TRLoader::updateVboStatic(vboID, data, INSTANCED_DATA_LEN * count);

    delete data;
} 