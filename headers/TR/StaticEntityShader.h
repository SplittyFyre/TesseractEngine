#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_STATIC_STATICENTITYSHADER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_STATIC_STATICENTITYSHADER

#include "TR/ShaderProgram.h"

class StaticEntityShader : public ShaderProgram {
public:
    StaticEntityShader();
    ~StaticEntityShader() {};

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
	inline void loadVPMatrix(const glm::mat4 &vpmat) {
		loadMat4("vpMatrix", vpmat);
	}
	inline void loadFakeLight(bool b) {
		loadBoolean("useFakeLight", b);
	}
	inline void loadBloomFactor(float bf) {
		loadFloat("bloomFactor", bf);
	}

protected:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_STATIC_STATICENTITYSHADER */
