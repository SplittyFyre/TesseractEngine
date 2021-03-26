#ifndef SRC_STORMFRONT_ENEMIES_PATH
#define SRC_STORMFRONT_ENEMIES_PATH

#include <vector>
#include <glm/vec2.hpp>

class PathData {
    friend class SFPath;
public:
    PathData(const char *filename);
    ~PathData() {};
    inline const std::vector<glm::vec2> &getPositions() const { return positions; }
    inline float getTotalDistance() const { return totalDistance; }
private:
    std::vector<glm::vec2> positions;
    float totalDistance = 0.f;
};

#endif /* SRC_STORMFRONT_ENEMIES_PATH */
