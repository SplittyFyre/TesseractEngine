#include "TR/FFTPreComp.h"

#include "TR/TRLoader.h"
#include <GL/glew.h>
#include <glm/glm.hpp>

#include <random>
#include <algorithm>
#include <cmath>

static std::mt19937 mt = std::mt19937(std::random_device()());
static std::normal_distribution<float> gaussianDist = std::normal_distribution<float>(0.f, 1.f);
inline float randGaussian() {
    return gaussianDist(mt);
}


float phillips(glm::vec2 k, const FFTCtx &ctx) {

    const float L = (ctx.windspeed * ctx.windspeed) / ctx.g;

    float lenk = glm::length(k);
    if (lenk < 0.0001f) {
        return 0.f;
    }

    float kdw = glm::dot(glm::normalize(k), glm::normalize(ctx.w));

    float mid = 
    (std::exp(-(1.f / (lenk * L * lenk * L))))
    / 
    (std::pow(lenk, 4.f))
    *
    std::exp(-(lenk * lenk) * ctx.capillarSupression * ctx.capillarSupression);

    return ctx.A * mid * std::pow(kdw, ctx.windpower);
}

FFTData FFTPreComp::compute(const FFTCtx &ctx) {

    const int N = ctx.N;

    float *datK = new float[N * N * 4]; int p1 = 0;
    float *datminusK = new float[N * N * 4]; int p2 = 0;

    for (int y = 0; y < N; y++) {
        for (int x = 0; x < N; x++) {

            float n = float(x) - float(N) / 2.f; float m = float(y) - float(N) / 2.f;

            glm::vec2 k(2.f * M_PI * n / ctx.L, 2.f * M_PI * m / ctx.L);

            float h0k = std::sqrt(phillips(k, ctx)) / std::sqrt(2.f);
            float h0minusk = std::sqrt(phillips(-k, ctx)) / std::sqrt(2.f); 

            datK[p1++] = h0k * randGaussian();
            datK[p1++] = h0k * randGaussian();
            datK[p1++] = 0.f;
            datK[p1++] = 1.f;

            datminusK[p2++] = h0minusk * randGaussian();
            datminusK[p2++] = h0minusk * randGaussian();
            datminusK[p2++] = 0.f;
            datminusK[p2++] = 1.f;
        }
    }

    return { makeTexture(datK, N, N), makeTexture(datminusK, N, N), computeTwiddle(ctx) };
}



int getBitReversed(int idx, int num) {
    int retval = 0;
    for (int i = 0; i < num; i++) {
        if ((idx >> i) & 1) {
            retval |= (1 << (num - i - 1));
        }
    }
    return retval;
}

TRTexture* FFTPreComp::computeTwiddle(const FFTCtx &ctx) {

    const int N = ctx.N;
    const int logN = ctx.logN;

    float *data = new float[logN * N * 4]; // width = logN, height = N
    int ptr = 0;

    for (int y = 0; y < N; y++) {
        for (int x = 0; x < logN; x++) {

            float k = std::fmod(y * N / float(1 << (x + 1)), float(N));

            int span = 1 << x; // 2 pow x
            bool top = (y % (1 << (x + 1)) < span);

            float re = std::cos(2.f * M_PI * k / N);
            float im = std::sin(2.f * M_PI * k / N);

            data[ptr++] = re;
            data[ptr++] = im;
            if (x == 0) {
                if (top) {
                    data[ptr++] = getBitReversed(y, logN);
                    data[ptr++] = getBitReversed(y + 1, logN);
                }
                else {
                    data[ptr++] = getBitReversed(y - 1, logN);
                    data[ptr++] = getBitReversed(y, logN);
                }
            }
            else {
                if (top) {
                    data[ptr++] = y;
                    data[ptr++] = y + span;
                }
                else {
                    data[ptr++] = y - span;
                    data[ptr++] = y;
                }
            }
        }
    }

    return makeTexture(data, logN, N);
}



TRTexture* FFTPreComp::makeTexture(float *data, int w, int h) {
    GLuint texID;
    glGenTextures(1, &texID);
    glBindTexture(GL_TEXTURE_2D, texID);

    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA32F, w, h, 0, GL_RGBA, GL_FLOAT, data);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

    delete data;

    TRTexture *tex = new TRTexture(texID, w, h);
    TRLoader::textures.push_back(tex);
    return tex;
}