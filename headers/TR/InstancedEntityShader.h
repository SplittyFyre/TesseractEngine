#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_INSTANCEDENTITYSHADER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_INSTANCEDENTITYSHADER

#include "TR/ShaderProgram.h"

class InstancedEntityShader : public ShaderProgram {
public:
    InstancedEntityShader();
    ~InstancedEntityShader() {};

    void loadShineVariables(float damper, float reflectivity);

    inline void loadDoFC(bool b) {
		loadBoolean("doFC", b);
	}
	inline void loadFCcol(const glm::vec3 &vec) {
		loadVec3("FCcol", vec);
	}
    inline void loadHasPropertyMap(bool b) {
		loadBoolean("hasPropertyMap", b);
	}
	inline void loadAtlasSize(float num) {
		loadFloat("atlasSize", num);
	}
	inline void loadTexOffset(float x, float y) {
		loadVec2("texOffset", x, y);
	}
	inline void loadTransformationMatrix(const glm::mat4 &matrix) {
		loadMat4("transformationMatrix", matrix);
	}
	inline void loadVPMatrix(const glm::mat4 &vpmat) {
		loadMat4("vpMatrix", vpmat);
	}
	inline void loadBloomFactor(float bf) {
		loadFloat("bloomFactor", bf);
	}

private:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_INSTANCEDENTITYSHADER */
