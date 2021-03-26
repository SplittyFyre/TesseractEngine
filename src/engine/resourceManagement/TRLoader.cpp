/*
 * Loader.cpp
 *
 *  Created on: Mar. 22, 2020
 *      Author: oscar
 */

#include "TR/TRLoader.h"
#include <string>
#include <limits>
#include <random>

#define STB_IMAGE_IMPLEMENTATION
#include "STB/stb_image.h"

static constexpr bool DEFAULT_MIPMAP = true;
static constexpr float DEFAULT_LODBIAS = -0.4f;
static constexpr float DEFAULT_ANISO = 4.0f;

std::vector<TRTexture*> TRLoader::textures;
std::vector<TRHeightmap*> TRLoader::heightMaps;
std::vector<GLuint> TRLoader::vaos, TRLoader::vbos;
std::vector<TRFbo*> TRLoader::fbos;
std::vector<GLQuery*> TRLoader::queries;

GLuint TRLoader::dummyVAO;
GLuint TRLoader::entityInstancedVBO = std::numeric_limits<GLuint>::max();

#define ENTITY_INSTANCE_LEN 18  // 16 + 2 (matrix + texoffset)

void TRLoader::init() {
	dummyVAO = createVAO();
}

void TRLoader::initEntityInstancedVBO(unsigned int cnt) {
	entityInstancedVBO = TRLoader::createEmptyVBO(ENTITY_INSTANCE_LEN * cnt);
}

void TRLoader::updateEntityVBO(float *data, int dataLen) {
	updateVbo(entityInstancedVBO, data, dataLen);
}

GLuint TRLoader::createVAO() {
	GLuint vaoid;
	glGenVertexArrays(1, &vaoid);
	vaos.push_back(vaoid);
	// no auto-bind
	return vaoid;
}

GLuint TRLoader::createEmptyVBO(int floatcnt) {
	GLuint vbo;
	glGenBuffers(1, &vbo);
	vbos.push_back(vbo);
	glBindBuffer(GL_ARRAY_BUFFER, vbo);
	glBufferData(GL_ARRAY_BUFFER, floatcnt * sizeof(float), NULL, GL_DYNAMIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	return vbo;
}

GLuint TRLoader::createEmptyVBOStatic(int floatcnt) {
	GLuint vbo;
	glGenBuffers(1, &vbo);
	vbos.push_back(vbo);
	glBindBuffer(GL_ARRAY_BUFFER, vbo);
	glBufferData(GL_ARRAY_BUFFER, floatcnt * sizeof(float), NULL, GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	return vbo;
}

void TRLoader::updateVbo(GLuint vboID, float *data, int dataLen) {
	glBindBuffer(GL_ARRAY_BUFFER, vboID);
	glBufferData(GL_ARRAY_BUFFER, dataLen * sizeof(float), NULL, GL_DYNAMIC_DRAW);
	glBufferSubData(GL_ARRAY_BUFFER, 0, dataLen * sizeof(float), (void*) data);
	glBindBuffer(GL_ARRAY_BUFFER, 0);
}

void TRLoader::updateVboStatic(GLuint vboID, float *data, int dataLen) {
	glBindBuffer(GL_ARRAY_BUFFER, vboID);
	glBufferData(GL_ARRAY_BUFFER, dataLen * sizeof(float), NULL, GL_STATIC_DRAW);
	glBufferSubData(GL_ARRAY_BUFFER, 0, dataLen * sizeof(float), (void*) data);
	glBindBuffer(GL_ARRAY_BUFFER, 0);
}

void TRLoader::addInstancedAttrib(GLuint vao, GLuint vbo, int attrib, int elemSize, int stride, int offset) {
	glBindVertexArray(vao);
	glBindBuffer(GL_ARRAY_BUFFER, vbo);
	glVertexAttribPointer(attrib, elemSize, GL_FLOAT, false, stride * sizeof(float), (void*) (offset * sizeof(float)));
	glVertexAttribDivisor(attrib, 1);
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	
	glEnableVertexAttribArray(attrib);
	glBindVertexArray(0);
}

void TRLoader::storeDataInAttribList(int attribNum, int coordSize, const void *data, int dataSize) {
	GLuint vboID;
	glGenBuffers(1, &vboID);
	vbos.push_back(vboID);

	glBindBuffer(GL_ARRAY_BUFFER, vboID);
	glBufferData(GL_ARRAY_BUFFER, dataSize, data, GL_STATIC_DRAW);
	glVertexAttribPointer(attribNum, coordSize, GL_FLOAT, GL_FALSE, 0, nullptr);
	glBindBuffer(GL_ARRAY_BUFFER, 0);

	glEnableVertexAttribArray(attribNum);
}

void TRLoader::bindIndicesBuffer(const std::vector<int> &indices) {
	GLuint vboid;
	glGenBuffers(1, &vboid);
	vbos.push_back(vboid);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vboid);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(int), indices.data(), GL_STATIC_DRAW);
}


std::shared_ptr<RawModel> TRLoader::loadToModel(MeshData *mesh) {
	GLuint vaoid = createVAO();
	glBindVertexArray(vaoid);
	bindIndicesBuffer(mesh->indices);
	storeDataInAttribList(0, 3, mesh->vertices.data(), mesh->vertices.size() * sizeof(float));
	storeDataInAttribList(1, 2, mesh->uvCoords.data(), mesh->uvCoords.size() * sizeof(float));
	storeDataInAttribList(2, 3, mesh->normals.data(), mesh->normals.size() * sizeof(float));
	glBindVertexArray(0);
	return std::make_shared<RawModel>(vaoid, mesh->indices.size(), std::make_shared<BoundingVolume>(mesh->boundingVolume));
}

std::shared_ptr<RawModel> TRLoader::loadToModelInstanced(MeshData *mesh) {
	if (entityInstancedVBO == std::numeric_limits<GLuint>::max()) {
		puts("ERROR: attempted to load instanced model without prior initialization of instanced VBO");
		exit(1);
	}
	GLuint vaoid = createVAO();
	glBindVertexArray(vaoid);
	bindIndicesBuffer(mesh->indices);
	storeDataInAttribList(0, 3, mesh->vertices.data(), mesh->vertices.size() * sizeof(float));
	storeDataInAttribList(1, 2, mesh->uvCoords.data(), mesh->uvCoords.size() * sizeof(float));
	storeDataInAttribList(2, 3, mesh->normals.data(), mesh->normals.size() * sizeof(float));
	glBindVertexArray(0);

	addInstancedAttrib(vaoid, entityInstancedVBO, 3, 4, ENTITY_INSTANCE_LEN, 0);
	addInstancedAttrib(vaoid, entityInstancedVBO, 4, 4, ENTITY_INSTANCE_LEN, 4);
	addInstancedAttrib(vaoid, entityInstancedVBO, 5, 4, ENTITY_INSTANCE_LEN, 8);
	addInstancedAttrib(vaoid, entityInstancedVBO, 6, 4, ENTITY_INSTANCE_LEN, 12);
	addInstancedAttrib(vaoid, entityInstancedVBO, 7, 2, ENTITY_INSTANCE_LEN, 16);

	return std::make_shared<RawModel>(vaoid, mesh->indices.size(), std::make_shared<BoundingVolume>(mesh->boundingVolume), true);
}

std::shared_ptr<RawModel> TRLoader::loadToModel(const std::vector<float> &positions, int dimensions) {
	GLuint vaoid = createVAO();
	glBindVertexArray(vaoid);
	storeDataInAttribList(0, dimensions, positions.data(), positions.size() * sizeof(float));
	glBindVertexArray(0);
	return std::make_shared<RawModel>(vaoid, positions.size() / dimensions, nullptr);
}




BufferedImage TRLoader::loadImage(const char *filename) {
	int width, height, nc;
	stbi_uc *data = stbi_load(filename, &width, &height, &nc, 4);
	if (data == NULL) {
		printf("ERROR: stbi error loading image '%s'\n", filename);
		exit(1);
	}
	return BufferedImage(data, width, height);
}

TRTexture* TRLoader::loadTexture(BufferedImage &bi, bool mipmap, float lodBias, float maxAnisotropy) {
	GLuint texID;
	glGenTextures(1, &texID);
	glBindTexture(GL_TEXTURE_2D, texID);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, bi.width, bi.height, 0, GL_RGBA, GL_UNSIGNED_BYTE, bi.data);

	if (mipmap) 
		glGenerateMipmap(GL_TEXTURE_2D);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, mipmap ? GL_LINEAR_MIPMAP_LINEAR : GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_LOD_BIAS, lodBias);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAX_ANISOTROPY_EXT, maxAnisotropy);

	stbi_image_free((void*) bi.data);
	bi.data = nullptr;

	TRTexture *texture = new TRTexture(texID, bi.width, bi.height);
	textures.push_back(texture);
	return texture;
}

TRTexture* TRLoader::loadTexture(BufferedImage &bi) {
	return TRLoader::loadTexture(bi, DEFAULT_MIPMAP, DEFAULT_LODBIAS, DEFAULT_ANISO);
}


TRTexture* TRLoader::genTexStorage2D(int dim, GLenum internalFormat, bool wl) {
	GLuint texID;
	glGenTextures(1, &texID);
	glBindTexture(GL_TEXTURE_2D, texID);
	glTexStorage2D(GL_TEXTURE_2D, 1, internalFormat, dim, dim);

	if (wl) {
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
	}
	
	TRTexture *texture = new TRTexture(texID, dim, dim);
	textures.push_back(texture);
	return texture;
}


TRTexture* TRLoader::loadTexture(const char *fileName, bool mipmap, float lodBias, float maxAnisotropy) {
	int width, height, numComponents;
	stbi_uc *imageData = stbi_load(fileName, &width, &height, &numComponents, 4);

	if (imageData == NULL) {
		printf("ERROR: stbi error loading image '%s'\n", fileName);
		exit(1);
	}

	GLuint texID;
	glGenTextures(1, &texID);
	glBindTexture(GL_TEXTURE_2D, texID);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, imageData);

	if (mipmap) 
		glGenerateMipmap(GL_TEXTURE_2D);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, mipmap ? GL_LINEAR_MIPMAP_LINEAR : GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_LOD_BIAS, lodBias);
	glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAX_ANISOTROPY_EXT, maxAnisotropy);

	stbi_image_free(imageData);

	TRTexture *texture = new TRTexture(texID, width, height);
	textures.push_back(texture);
	return texture;
}

TRTexture* TRLoader::loadTexture(const char *fileName) {
	return TRLoader::loadTexture(fileName, DEFAULT_MIPMAP, DEFAULT_LODBIAS, DEFAULT_ANISO);
}

TRTexture *TRLoader::loadTexture(float r, float g, float b) {
	GLuint texID;
	glGenTextures(1, &texID);
	glBindTexture(GL_TEXTURE_2D, texID);

	float data[] = {r, g, b, 1.f};
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA32F, 1, 1, 0, GL_RGBA, GL_FLOAT, data);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	TRTexture *texture = new TRTexture(texID, 1, 1);
	textures.push_back(texture);
	return texture;
}

TRHeightmap* TRLoader::loadHeightMap(const char *fileName) {
	int width, height, numComponents;
	stbi_us *imageData = stbi_load_16(fileName, &width, &height, &numComponents, STBI_grey);
	if (imageData == NULL) {
		printf("ERROR: stbi error loading heightmap for '%s'\n", fileName);
		exit(1);
	}
	if (width != height) {
		printf("ERROR: heightmap '%s' has width %d != height %d\n", fileName, width, height);
		exit(1);
	}

	GLuint texID;
	glGenTextures(1, &texID);
	glBindTexture(GL_TEXTURE_2D, texID);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_R16, width, height, 0, GL_RED, GL_UNSIGNED_SHORT, imageData);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	std::vector<float> heightfield(width * height); // access method will be i + (dim * j)
	
	for (int i = 0; i < width * height; i++) {
		unsigned short colour = imageData[i];
		// normalize
		float norm = (float(colour) / std::numeric_limits<unsigned short>::max());
		heightfield[i] = (norm - 0.5f);
	}

	stbi_image_free(imageData);

	TRHeightmap *heightmap = new TRHeightmap(texID, width, std::move(heightfield));
	heightMaps.push_back(heightmap);
	return heightmap;
}

TRTexture* TRLoader::loadCubeMap(const std::vector<const char*> &fileNames) {
	
	if (fileNames.size() != 6) {
		printf("cube map texture needs 6 files, not %lu\n", fileNames.size());
		exit(1);
	}

	GLuint texID;
	glGenTextures(1, &texID);
	glBindTexture(GL_TEXTURE_CUBE_MAP, texID);

	int width, height, channels;
	for (int i = 0; i < 6; i++) {
		stbi_uc *data = stbi_load(fileNames[i], &width, &height, &channels, 4);
		if (data == NULL) {
			printf("ERROR: failed to load texture for cubemap part '%s'\n", fileNames[i]);
			exit(1);
		}
		glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X + i, 0, GL_RGBA8, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);
		stbi_image_free(data);
	}

	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	TRTexture *texture = new TRTexture(texID, -1, -1);
	textures.push_back(texture);
	return texture;
}

TRFbo* TRLoader::makeFbo(int width, int height, int dType, const std::vector<GLenum> &formats, float scale) {
	TRFbo *fbo = new TRFbo(width, height, dType, formats, scale);
	fbos.push_back(fbo);
	return fbo;
}

GLQuery* TRLoader::genQuery(GLenum type) {
	GLuint id;
	glGenQueries(1, &id);
	GLQuery *query = new GLQuery(id, type);
	queries.push_back(query);
	return query;
}

void TRLoader::rebulidFbos(int w, int h) {
	for (TRFbo *fbo : fbos) {
		fbo->rebuild(w, h);
	}
}

void TRLoader::cleanUp() {
	printf("Cleaning up %lu vaos, %lu vbos, %lu textures, %lu fbos, %lu queries\n", vaos.size(), vbos.size(), textures.size(), fbos.size(), queries.size());

	glDeleteVertexArrays(vaos.size(), vaos.data());
	glDeleteBuffers(vbos.size(), vbos.data());

	for (TRTexture *tex : textures) {
		glDeleteTextures(1, &tex->texID);
		delete tex;
	}

	for (TRHeightmap *heightmap : heightMaps) {
		glDeleteTextures(1, &heightmap->texID);
		puts("Cleaned up heightmap");
		delete heightmap;
	}

	for (TRFbo *fbo : fbos) {
		delete fbo; // destructor handles resources
	}

	for (GLQuery *query : queries) {
		glDeleteQueries(1, &query->queryID);
		delete query;
	}
}