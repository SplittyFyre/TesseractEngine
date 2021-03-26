#include "TR/DefrEntityRenderer.h"
#include "TR/TesseractEngine.h"

#define INSTANCED_DATA_LEN 18

DefrEntityRenderer::DefrEntityRenderer(unsigned int maxEntityInstaces) : maxInstances(maxEntityInstaces) {
	buffer = new float[maxInstances * INSTANCED_DATA_LEN];
}

void DefrEntityRenderer::render(TRScene *scene) {

	glEnable(GL_DEPTH_TEST);

	// render normal
	shader.start();

    shader.loadVPMatrix(scene->camera->getVPMatrix());
	for (const auto &pair : TRSceneEntity::batchMap) {
		TexturedModel *model = pair.first;
		prepareTexturedModel(model);
		for (const RenderData &entity : pair.second) {
			prepareInstance(model, entity);
			glDrawElements(GL_TRIANGLES, model->getRawModel()->vertexCnt, GL_UNSIGNED_INT, 0);
		}
	}
	glBindVertexArray(0);
	shader.stop();

	// render instanced
	instancedShader.start();
	instancedShader.loadVPMatrix(scene->camera->getVPMatrix());
	for (const auto &pair : TRSceneEntity::instancedBatchMap) {
		TexturedModel *model = pair.first;
		prepareTexturedModelInstanced(model);
		bufferPtr = 0;
		
		int size = std::min((unsigned int) pair.second.size(), maxInstances);

		for (int i = 0; i < size; i++) {
			const RenderData &entity = pair.second[i];
			prepareInstanceInstanced(model, entity);
		}

		TRLoader::updateEntityVBO(buffer, size * INSTANCED_DATA_LEN);

		glDrawElementsInstanced(GL_TRIANGLES, model->getRawModel()->vertexCnt, GL_UNSIGNED_INT, 0, size);
	}
	glBindVertexArray(0);
	instancedShader.stop();
}

void DefrEntityRenderer::prepareTexturedModel(const TexturedModel *model) {
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

void DefrEntityRenderer::prepareTexturedModelInstanced(const TexturedModel *model) {
    RawModel *rawModel = model->getRawModel().get();
	ModelSkin *skin = model->getSkin().get();

	glBindVertexArray(rawModel->vaoID);

	if (rawModel->doubleSidedFaces) {
		TesseractEngine::disableFaceCulling();
	}
	else {
		TesseractEngine::enableFaceCulling();
	}
	instancedShader.loadShineVariables(skin->shineDamper, skin->reflectivity);
	instancedShader.loadBloomFactor(skin->bloomFactor);

	instancedShader.loadDoFC(skin->useFillColour);
	if (skin->useFillColour) {
		instancedShader.loadFCcol(skin->fillColourValue);
	}

	instancedShader.loadAtlasSize(skin->atlasSize);
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, skin->texture->texID);

	instancedShader.loadHasPropertyMap(skin->hasPropertyMap);
	if (skin->hasPropertyMap) {
		glActiveTexture(GL_TEXTURE1);
		glBindTexture(GL_TEXTURE_2D, skin->propertyMap->texID);
	}
}


void DefrEntityRenderer::prepareInstance(const TexturedModel *model, const RenderData &entity) {
	shader.loadTransformationMatrix(*entity.matrix);
	int asize = model->getSkin()->atlasSize;
	if (asize > 1) {
		int column = entity.atlasIndex % asize;
		float x = float(column) / float(asize);
		int row = entity.atlasIndex / asize;
		float y = float(row) / float(asize);
		shader.loadTexOffset(x, y);
	}
	else {
		shader.loadTexOffset(0.f, 0.f);
	}
}

void DefrEntityRenderer::prepareInstanceInstanced(const TexturedModel *model, const RenderData &entity) {
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			buffer[bufferPtr++] = (*entity.matrix)[i][j];
		}
	}
	
	int asize = model->getSkin()->atlasSize;
	float x, y;
	if (asize > 1) {
		int column = entity.atlasIndex % asize;
		x = float(column) / float(asize);
		int row = entity.atlasIndex / asize;
		y = float(row) / float(asize);
	}
	else {
		x = y = 0.f;
	}

	buffer[bufferPtr++] = x;
	buffer[bufferPtr++] = y;
}

DefrEntityRenderer::~DefrEntityRenderer() {
	delete buffer;
}