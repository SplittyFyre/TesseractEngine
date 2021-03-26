/*
 * Loader.h
 *
 *  Created on: Mar. 22, 2020
 *      Author: oscar
 */

#ifndef ENGINE_RESOURCEMANAGEMENT_LOADER_H_
#define ENGINE_RESOURCEMANAGEMENT_LOADER_H_

#include <GL/glew.h>
#include <vector>
#include <memory>
#include "TR/RawModel.h"
#include "TR/MeshData.h"
#include "TR/TRTexture.h"
#include "TR/TRHeightmap.h"
#include "TR/TRFbo.h"
#include "TR/GLQuery.h"


struct BufferedImage {
    const unsigned char *data;
    const int width, height;
    BufferedImage(unsigned char *data, int width, int height)
    : data(data), width(width), height(height) {}
};

class TRLoader {
    friend class TRDisplayManager;
    friend class TesseractEngine;
    friend class FFTPreComp;
public:
    TRLoader() = delete;
    ~TRLoader() = delete;
    static void cleanUp();
public:
    static GLuint createVAO();
    static GLuint createEmptyVBO(int floatcnt);
    static GLuint createEmptyVBOStatic(int floatcnt);
    static void addInstancedAttrib(GLuint vao, GLuint vbo, int attrib, int elemSize, int stride, int offset);
    static void updateVbo(GLuint vboID, float *data, int dataLen);
    static void updateVboStatic(GLuint vboID, float *data, int dataLen);

    static std::shared_ptr<RawModel> loadToModel(MeshData *mesh);
    static std::shared_ptr<RawModel> loadToModelInstanced(MeshData *mesh);
    static std::shared_ptr<RawModel> loadToModel(const std::vector<float> &positions, int dimensions);

    static BufferedImage loadImage(const char *filename);
    static TRTexture* loadTexture(BufferedImage &bi, bool mipmap, float lodBias, float maxAnisotropy);
    static TRTexture* loadTexture(BufferedImage &bi);

    static TRTexture* genTexStorage2D(int dim, GLenum internalFormat, bool wl = false);
    static TRTexture* loadTexture(const char *fileName, bool mipmap, float lodBias, float maxAnisotropy);
    static TRTexture* loadTexture(const char *fileName);
    static TRTexture* loadTexture(float r, float g, float b);

    static TRHeightmap* loadHeightMap(const char *fileName);

    static TRTexture* loadCubeMap(const std::vector<const char*> &fileNames);

    static TRFbo* makeFbo(int width, int height, int dType, const std::vector<GLenum> &formats, float scale = 1.f);

    static GLQuery* genQuery(GLenum type);

public:
    static GLuint dummyVAO;

    static void updateEntityVBO(float *data, int dataLen);
private:
    static GLuint entityInstancedVBO;

    static void init();
    static void initEntityInstancedVBO(unsigned int cnt);
    static void rebulidFbos(int w, int h);

    static void storeDataInAttribList(int attribNum, int coordSize, const void *data, int dataSize);
    static void bindIndicesBuffer(const std::vector<int> &indices);

    static std::vector<TRTexture*> textures;
    static std::vector<TRHeightmap*> heightMaps;
    static std::vector<GLuint> vaos, vbos;
    static std::vector<TRFbo*> fbos;
    static std::vector<GLQuery*> queries;
};

#endif /* ENGINE_RESOURCEMANAGEMENT_LOADER_H_ */
