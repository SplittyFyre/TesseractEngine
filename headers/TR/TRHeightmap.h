#ifndef HEADERS_TR_TRHEIGHTMAP
#define HEADERS_TR_TRHEIGHTMAP

#include <GL/glew.h>

#include <vector>

struct TRHeightmap {
    const GLuint texID;
    const int size;
    const std::vector<float> heightField;
    TRHeightmap(GLuint texID, int size, std::vector<float> &&field)
    : texID(texID), size(size), heightField(std::move(field)) {}
};

#endif /* HEADERS_TR_TRHEIGHTMAP */
