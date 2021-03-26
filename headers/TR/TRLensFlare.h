#ifndef HEADERS_TR_TRLENSFLARE
#define HEADERS_TR_TRLENSFLARE

#include "TR/TRTexture.h"

#include <vector>

struct LensFlareTex {
    const TRTexture * const texture;
    const float scale;
};

struct TRLensFlare {
    const float spacing;
    const float brightThreshold;
    float globalBrightness = 1.f;
    const std::vector<LensFlareTex> textures;
    float otScale, fullCoverage;

    TRLensFlare(float spacing, float brightThreshold, const std::vector<LensFlareTex> &textures, float otScale, float fullCoverage)
    : spacing(spacing), brightThreshold(brightThreshold), textures(std::move(textures)), otScale(otScale), fullCoverage(fullCoverage) {}
};

#endif /* HEADERS_TR_TRLENSFLARE */
