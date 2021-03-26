#include "TR/OBJParser.h"

#define TINYOBJLOADER_IMPLEMENTATION
#include <tinyobj/tiny_obj_loader.h>

#include <vector>
#include <unordered_map>
#include <map>
#include <cstdio>

#include <glm/glm.hpp>
#define GLM_ENABLE_EXPERIMENTAL
#include <glm/gtx/hash.hpp>


struct Vertex {
    glm::vec3 position;
    glm::vec2 uv;
    glm::vec3 normal;

    Vertex(float x, float y, float z, float u, float v, float nx, float ny, float nz) :
    position(x, y, z), uv(u, v), normal(nx, ny, nz) {}

    bool operator==(const Vertex &other) const {
        return position == other.position && uv == other.uv && normal == other.normal;
    }
    bool operator<(const Vertex &other) const {
        return std::memcmp((void*) this, (void*) &other, sizeof(Vertex)) > 0;
    }
};

// copied from boost :P
template <class T>
inline void hash_combine(std::size_t& seed, const T& v) {
    std::hash<T> hasher;
    seed ^= hasher(v) + 0x9e3779b9 + (seed << 6) + (seed >> 2);
}

namespace std {
    template<> struct hash<Vertex> {
        size_t operator()(const Vertex &vertex) const {
            size_t ret = 0;
            hash_combine(ret, vertex.position);
            hash_combine(ret, vertex.uv);
            hash_combine(ret, vertex.normal);
            return ret;
        }
    };
}

typedef std::map<Vertex, int> VertexMap;

namespace OBJParser {

std::shared_ptr<MeshData> parseObjModel(const char *filename) {

    tinyobj::attrib_t attrib;
    std::vector<tinyobj::shape_t> shapes;
    std::vector<tinyobj::material_t> materials;
    std::string warn, err;

    if (!tinyobj::LoadObj(&attrib, &shapes, &materials, &warn, &err, filename)) {
        printf("TinyOBJ error for file %s :  %s\n", filename, (warn + err).c_str());
        exit(1);
    }

    std::vector<float> positions;
    std::vector<float> texCoords;
    std::vector<float> normals;
    std::vector<int> indices;

    int num = 0;
    VertexMap mapp;

    float sphereRadius = 0.f;
    float minX = 0.f, minY = 0.f, minZ = 0.f;
    float maxX = 0.f, maxY = 0.f, maxZ = 0.f;

    for (const auto &shape : shapes) {
        for (const tinyobj::index_t &index : shape.mesh.indices) {
            Vertex v(
                attrib.vertices[3 * index.vertex_index + 0], attrib.vertices[3 * index.vertex_index + 1], attrib.vertices[3 * index.vertex_index + 2],
                attrib.texcoords[2 * index.texcoord_index + 0], 1.f - attrib.texcoords[2 * index.texcoord_index + 1],
                attrib.normals[3 * index.normal_index + 0], attrib.normals[3 * index.normal_index + 1], attrib.normals[3 * index.normal_index + 2]
            );

            auto it = mapp.find(v);
            if (it == mapp.end()) {
                int idx = num++;
                mapp[v] = idx;
                indices.push_back(idx);

                positions.push_back(v.position.x); positions.push_back(v.position.y); positions.push_back(v.position.z);
                texCoords.push_back(v.uv.x); texCoords.push_back(v.uv.y);
                normals.push_back(v.normal.x); normals.push_back(v.normal.y); normals.push_back(v.normal.z);


                minX = std::min(minX, v.position.x); minY = std::min(minY, v.position.y); minZ = std::min(minZ, v.position.z);
                maxX = std::max(maxX, v.position.x); maxY = std::max(maxX, v.position.y); maxZ = std::max(maxZ, v.position.z);

                sphereRadius = std::max(sphereRadius,
                    std::sqrt(v.position.x * v.position.x + v.position.y * v.position.y + v.position.z * v.position.z)
                );
            }
            else { // already found, push existing index
                indices.push_back(it->second);
            }
        }
    }

    return std::make_shared<MeshData>(
        std::move(indices), std::move(positions), std::move(texCoords), std::move(normals), 
        BoundingVolume(minX, minY, minZ, maxX, maxY, maxZ, sphereRadius)
    );
}

}