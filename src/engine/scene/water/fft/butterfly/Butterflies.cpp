#include "TR/Butterflies.h"

void Butterflies::update(const FreqDomain &freqdomain) {
    shader.start();

    glBindImageTexture(0, fftdat.twiddle->texID, 0, false, 0, GL_READ_ONLY, GL_RGBA32F);
    glBindImageTexture(1, freqdomain.hkt->texID, 0, false, 0, GL_READ_WRITE, GL_RGBA32F);
    glBindImageTexture(2, pong->texID, 0, false, 0, GL_READ_WRITE, GL_RGBA32F);
    glBindImageTexture(3, freqdomain.chop_hkt->texID, 0, false, 0, GL_READ_WRITE, GL_RGBA32F);
    glBindImageTexture(4, chop_pong->texID, 0, false, 0, GL_READ_WRITE, GL_RGBA32F);

    bool pingpong = false;

    shader.setHorizontal(true);
    
    for (int i = 0; i < ctx.logN; i++) {
        shader.setPingPong(pingpong);
        shader.setStage(i);
        shader.dispatchCompute(ctx.N / 16, ctx.N / 16, 1);
        glFinish();
        pingpong = !pingpong;
    }

    shader.setHorizontal(false);
    
    for (int i = 0; i < ctx.logN; i++) {
        shader.setPingPong(pingpong);
        shader.setStage(i);
        shader.dispatchCompute(ctx.N / 16, ctx.N / 16, 1);
        glFinish();
        pingpong = !pingpong;
    }

    shader.stop();

    inversionShader.start();

    inversionShader.loadN(ctx.N);

    TRTexture* src = !pingpong ? freqdomain.hkt : pong;
    TRTexture* chop_src = !pingpong ? freqdomain.chop_hkt : chop_pong;

    glBindImageTexture(0, displacement->texID, 0, false, 0, GL_WRITE_ONLY, GL_RGBA32F);
    glBindImageTexture(1, src->texID, 0, false, 0, GL_READ_ONLY, GL_RGBA32F); // src
    glBindImageTexture(2, chop_src->texID, 0, false, 0, GL_READ_ONLY, GL_RGBA32F); // chopsrc

    inversionShader.dispatchCompute(ctx.N, ctx.N, 1);
    glFinish();

    inversionShader.stop();
}