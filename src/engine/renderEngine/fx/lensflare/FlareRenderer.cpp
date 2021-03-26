#include "TR/FlareRenderer.h"

#include "TR/TRDisplayManager.h"

#include <iostream>

static const glm::vec2 screenCenter(0.5f, 0.5f);

void FlareRenderer::render(TRScene *scene) {

    if (scene->skyCtx.lensFlare == nullptr || scene->skyCtx.sun == nullptr) {
        return;
    }

    if (!scene->skyCtx.sun->isOnScreen()) {
        return;
    }
    
    glm::vec2 sunCoords = scene->skyCtx.sun->getScreenPos();
    sunCoords.x = (sunCoords.x + 1.f) * 0.5f;
    sunCoords.y = 1.f - (sunCoords.y + 1.f) * 0.5f;

    glm::vec2 toCenter = screenCenter - sunCoords;
    float brightness = 1 - (glm::length(toCenter) / scene->skyCtx.lensFlare->brightThreshold);
    brightness *= coverage;

    if (brightness > 0.f) {
        actualRender(scene->skyCtx.lensFlare.get(), brightness, toCenter, sunCoords);
    }
}

void FlareRenderer::actualRender(TRLensFlare *flare, float brightness, const glm::vec2 &toCenter, const glm::vec2 &sunPos) {
    shader.start();
    shader.loadBrightness(brightness * flare->globalBrightness);

    glBindVertexArray(TRLoader::dummyVAO);
    glDisable(GL_DEPTH_TEST);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE);

    glActiveTexture(GL_TEXTURE0);
    for (unsigned int i = 0; i < flare->textures.size(); i++) {
        const LensFlareTex &ft = flare->textures[i];

        shader.loadFlare(toCenter.x * i * flare->spacing + sunPos.x,
                         toCenter.y * i * flare->spacing + sunPos.y,
                         ft.scale, ft.scale * TRDisplayManager::getAspectRatio());
        glBindTexture(GL_TEXTURE_2D, ft.texture->texID);
        glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    }

    shader.stop();

    glBindVertexArray(0);
    glDisable(GL_BLEND);
}


void FlareRenderer::doQuery(TRScene *scene) {
    if (scene->skyCtx.lensFlare == nullptr || scene->skyCtx.sun == nullptr) {
        coverage = 1.f;
        return;
    }
    if (query->isResultReady()) {
        int visible = query->getResult();
        float full = scene->skyCtx.lensFlare->fullCoverage * TRDisplayManager::getWidth() * TRDisplayManager::getHeight();
        coverage = std::min(visible / full, 1.f);
    }
    if (!query->isInUse()) {
        glColorMask(false, false, false, false);
        queryShader.start();
        queryShader.loadUniforms(scene);
        glBindVertexArray(TRLoader::dummyVAO);
        glDepthMask(false);
        glEnable(GL_DEPTH_TEST);
        query->start();
        glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
        query->stop();
        glDepthMask(true);
        glBindVertexArray(0);
        queryShader.stop();
        glColorMask(true, true, true, true);
    }
}