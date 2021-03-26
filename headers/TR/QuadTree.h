#ifndef SRC_ENGINE_UTIL_QUADTREE_QUADTREE
#define SRC_ENGINE_UTIL_QUADTREE_QUADTREE

#include <glm/glm.hpp>
#include <vector>
#include <array>

class QuadTree {
public:
    enum class Type { ROOT, NW, NE, SE, SW };
public:
    QuadTree(QuadTree *parent, Type t, float x, float y, float z, float edgeLen);
    ~QuadTree();
    void updateChildren(const glm::vec3 &camPos, std::vector<QuadTree*> &renderList);
    void updateNeighbours();

    inline float getX() const { return x; }
    inline float getZ() const { return z; }
    inline float getScale() const { return edgeLen; }
    inline const std::array<float, 4> &getTessScales() const { return tessScales; }
private:
    void updateTessScaling();

    const QuadTree * const parent;
    const Type type;

    const float x, y, z;
    const float edgeLen, halfEdgeLen;
    std::array<float, 4> tessScales = { 1.f, 1.f, 1.f, 1.f };
    inline void setTess(int idx, bool b) { tessScales[idx] = b ? 0.5f : 1.f; }

    QuadTree *childNW = nullptr,
    *childNE = nullptr,
    *childSE = nullptr,
    *childSW = nullptr;
    bool hasChildren = false;

    QuadTree *neighbourN = nullptr,
    *neighbourE = nullptr,
    *neighbourS = nullptr,
    *neighbourW = nullptr;

public:
    static float minEdgeLength;
    static float splitDistanceMultiplier;
};

#endif /* SRC_ENGINE_UTIL_QUADTREE_QUADTREE */
