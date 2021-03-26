#ifndef HEADERS_TR_MESHDATA
#define HEADERS_TR_MESHDATA

#include <vector>

#include "TR/BoundingVolume.h"

struct MeshData {
    const std::vector<int> indices;
    const std::vector<float> vertices;
    const std::vector<float> uvCoords;
    const std::vector<float> normals;
    const std::vector<float> tangents;
    const bool hasTangents;

    const BoundingVolume boundingVolume;

    MeshData(std::vector<int> &&indices, std::vector<float> &&vertices, std::vector<float> &&uvCoords, std::vector<float> &&normals, const BoundingVolume &bv)
    : indices(std::move(indices)),
    vertices(std::move(vertices)),
    uvCoords(std::move(uvCoords)),
    normals(std::move(normals)),
    hasTangents(false),
    boundingVolume(bv) {}

    MeshData(std::vector<int> &&indices, std::vector<float> &&vertices, std::vector<float> &&uvCoords, std::vector<float> &&normals, std::vector<float> &&tangents, const BoundingVolume &bv)
    : indices(std::move(indices)),
    vertices(std::move(vertices)),
    uvCoords(std::move(uvCoords)),
    normals(std::move(normals)),
    tangents(std::move(tangents)),
    hasTangents(true),
    boundingVolume(bv) {}

    static MeshData biquad;
};

#endif /* HEADERS_TR_MESHDATA */
