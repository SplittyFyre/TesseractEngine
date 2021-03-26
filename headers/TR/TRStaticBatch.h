#ifndef HEADERS_TR_TRSTATICBATCH
#define HEADERS_TR_TRSTATICBATCH

#include <GL/glew.h>
#include <memory>
#include <vector>
#include "TR/MeshData.h"
#include "TR/TexturedModel.h"

#include "glm/vec3.hpp"

struct TRStaticInstance {
	const glm::vec3 position;
	const float rx, ry, rz;
	const glm::vec3 scale;
	const int atlasIndex;
	TRStaticInstance(const glm::vec3 &pos, float rx, float ry, float rz, const glm::vec3 &scale, int atlasIndex = 0)
	: position(pos), rx(rx), ry(ry), rz(rz), scale(scale), atlasIndex(atlasIndex) {}
};

class TRStaticBatch {
public:
	const std::shared_ptr<TexturedModel> model;
	const GLuint vboID;
	const unsigned int count;
    TRStaticBatch(MeshData *meshData, const std::shared_ptr<ModelSkin> &skin, const std::vector<TRStaticInstance> &instances, bool dsf);
	~TRStaticBatch() {};
};

#endif /* HEADERS_TR_TRSTATICBATCH */
