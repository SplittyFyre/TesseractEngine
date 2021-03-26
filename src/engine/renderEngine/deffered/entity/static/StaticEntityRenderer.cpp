#include "TR/StaticEntityRenderer.h"

#include "TR/TesseractEngine.h"

void StaticEntityRenderer::render(TRScene *scene) {
    prepare(scene);
    for (const TRStaticBatch &batch : scene->getStaticBatches()) {
        prepareTexturedModel(batch.model.get());
        glDrawElementsInstanced(GL_TRIANGLES, batch.model->getRawModel()->vertexCnt, GL_UNSIGNED_INT, 0, batch.count);
    }
    glBindVertexArray(0);
    shader.stop();
}

void StaticEntityRenderer::prepare(TRScene *scene) {
    shader.start();
    shader.loadVPMatrix(scene->camera->getVPMatrix());
    glEnable(GL_DEPTH_TEST);
}

void StaticEntityRenderer::prepareTexturedModel(const TexturedModel *model) {
    RawModel *rawModel = model->getRawModel().get();
	ModelSkin *skin = model->getSkin().get();

	glBindVertexArray(rawModel->vaoID);

	if (rawModel->doubleSidedFaces) {
		TesseractEngine::disableFaceCulling();
	}
	else {
		TesseractEngine::enableFaceCulling();
	}
	shader.loadShineVariables(skin->shineDamper, skin->reflectivity);
	shader.loadBloomFactor(skin->bloomFactor);

	shader.loadDoFC(skin->useFillColour);
	if (skin->useFillColour) {
		shader.loadFCcol(skin->fillColourValue);
	}

	shader.loadAtlasSize(skin->atlasSize);
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, skin->texture->texID);

	shader.loadHasPropertyMap(skin->hasPropertyMap);
	if (skin->hasPropertyMap) {
		glActiveTexture(GL_TEXTURE1);
		glBindTexture(GL_TEXTURE_2D, skin->propertyMap->texID);
	}
}