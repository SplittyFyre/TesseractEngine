#include "TR/FreqDomain.h"

#include "TR/TRLoader.h"
#include "TR/TRDisplayManager.h"

void FreqDomain::update() {

    time += TRDisplayManager::getFrameDelta() * ctx.timestep;

    shader.start();

    glBindImageTexture(0, fftdat.h0k->texID, 0, false, 0, GL_READ_ONLY, GL_RGBA32F);
    glBindImageTexture(1, fftdat.h0minusk->texID, 0, false, 0, GL_READ_ONLY, GL_RGBA32F);
    glBindImageTexture(2, hkt->texID, 0, false, 0, GL_WRITE_ONLY, GL_RGBA32F);
    glBindImageTexture(3, chop_hkt->texID, 0, false, 0, GL_WRITE_ONLY, GL_RGBA32F);

    shader.load(ctx.L, time, ctx.N);

    shader.dispatchCompute(ctx.N, ctx.N, 1);
    glFinish();

    shader.stop();
}