#include "SF/PathData.h"

#include <glm/glm.hpp>

#include <cstdio>
#include <cstdlib>

PathData::PathData(const char *filename) {

    FILE *file = fopen(filename, "r");

    if (file == NULL) {
        printf("SFPath: error opening file '%s'\n", filename);
        exit(1);
    }

    float x, z;
    while (fscanf(file, "%f %f", &x, &z) != EOF) {
        positions.emplace_back(x, z);
    }

    fclose(file);

    if (positions.size() < 2) {
        printf("SFPath: error: file '%s' needs atleast 2 points\n", filename);
        exit(1);
    }

    for (unsigned i = 1; i < positions.size(); i++) {
        totalDistance += glm::length(positions[i] - positions[i - 1]);
    }
}