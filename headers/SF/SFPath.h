#ifndef HEADERS_SF_SFPATH
#define HEADERS_SF_SFPATH

#include "SF/PathData.h"

#include <glm/glm.hpp>

class SFEnemy;

class SFPath {
public:
    SFPath(PathData &data) : data(&data) {};
    ~SFPath() {};

    void setInitial(SFEnemy *enemy);
    
    inline void advance() { idx++; }
    inline bool ok() { return idx < data->positions.size(); }
    inline const glm::vec2 &get() const { return data->positions[idx]; }
private:
    PathData *data;
    unsigned idx = 1;
};

#endif /* HEADERS_SF_SFPATH */
