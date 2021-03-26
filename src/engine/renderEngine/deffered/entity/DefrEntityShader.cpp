#include "TR/DefrEntityShader.h"

#define VTXFILE "src/engine/renderEngine/deffered/entity/entity.vert"
#define FRAGFILE "src/engine/renderEngine/deffered/entity/entity.frag"

DefrEntityShader::DefrEntityShader() : ShaderProgram(VTXFILE, FRAGFILE) {
    setup();
}

void DefrEntityShader::getAllUniformLocations() {
	addUniformVariable("hasPropertyMap");
	addUniformVariable("transformationMatrix");
	addUniformVariable("vpMatrix");
	addUniformVariable("shineDamper");
	addUniformVariable("reflectivity");
	addUniformVariable("bloomFactor");
    addUniformVariable("atlasSize");
	addUniformVariable("texOffset");
    addUniformVariable("FCcol");
    addUniformVariable("doFC");
}

void DefrEntityShader::loadShineVariables(float damper, float reflectivity) {
    loadFloat("shineDamper", damper);
	loadFloat("reflectivity", reflectivity);
}


DefrEntityShader::~DefrEntityShader() {

}