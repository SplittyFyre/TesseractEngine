#ifndef HEADERS_TR_TRUTIL
#define HEADERS_TR_TRUTIL

#include <cstdio>
#include <random>

#include <imgui/imgui.h>
#include "TR/TRDisplayManager.h"
#include "glm/gtx/string_cast.hpp"

namespace TRUtil {

    extern std::mt19937 mt;

    template <typename T>
    inline bool within(T x, T a, T b) {
        return x >= a && x <= b;
    }

    inline void printVector(const glm::vec3 &vec) {
        puts(glm::to_string(vec).c_str());
    }

    namespace Gui {
        inline ImVec2 Relative(float x, float y) { return ImVec2(x * TRDisplayManager::getWidth(), y * TRDisplayManager::getHeight()); }

        // cheap
        inline ImVec2 RelativeSqrX(float x, float y) { return Relative(x, y * TRDisplayManager::getAspectRatio()); }
        inline ImVec2 RelativeSqrY(float x, float y) { return Relative(x / TRDisplayManager::getAspectRatio(), y); }
    }
}

#endif /* HEADERS_TR_TRUTIL */
