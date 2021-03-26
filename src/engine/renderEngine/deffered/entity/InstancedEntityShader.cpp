#include "TR/InstancedEntityShader.h"

#define VTXFILE "src/engine/renderEngine/deffered/entity/instancedEntity.vert"
#define FRAGFILE "src/engine/renderEngine/deffered/entity/entity.frag"

InstancedEntityShader::InstancedEntityShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}


void InstancedEntityShader::getAllUniformLocations() {
    addUniformVariable("hasPropertyMap");
	addUniformVariable("vpMatrix");
	addUniformVariable("shineDamper");
	addUniformVariable("reflectivity");
	addUniformVariable("bloomFactor");
    addUniformVariable("atlasSize");
    addUniformVariable("FCcol");
    addUniformVariable("doFC");
}

void InstancedEntityShader::loadShineVariables(float damper, float reflectivity) {
    loadFloat("shineDamper", damper);
	loadFloat("reflectivity", reflectivity);
}