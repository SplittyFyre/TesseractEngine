#ifndef SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_DEFRENTITYSHADER
#define SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_DEFRENTITYSHADER

#include <memory>
#include "TR/ShaderProgram.h"
#include "TR/TRCamera.h"

class DefrEntityShader : public ShaderProgram {
public:
    DefrEntityShader();
    ~DefrEntityShader();

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

protected:
    void getAllUniformLocations() override;
};

#endif /* SRC_ENGINE_RENDERENGINE_DEFFERED_ENTITY_DEFRENTITYSHADER */
