#include "TR/DefrTerrainShader.h"

#define VTXFILE "src/engine/renderEngine/deffered/terrain/terrain.vert"
#define CTRLFILE "src/engine/renderEngine/deffered/terrain/terrain.tesc"
#define EVALFILE "src/engine/renderEngine/deffered/terrain/terrain.tese"
#define FRAGFILE "src/engine/renderEngine/deffered/terrain/terrain.frag"

DefrTerrainShader::DefrTerrainShader() : ShaderProgram(VTXFILE, FRAGFILE, CTRLFILE, EVALFILE) {
    setup();
}

void DefrTerrainShader::getAllUniformLocations() {
    addUniformVariable("vpMatrix");
    addUniformVariable("p11");

    addUniformVariable("size"); // patch size
    addUniformVariable("startPos");
    addUniformVariable("totalSize");

    addUniformVariable("edgesPerRTHeight");

    addUniformVariable("heightFactor");
    addUniformVariable("heightMap");
    addUniformVariable("normalMap");

    addUniformVariable("splatMap");
    addUniformVariable("rtex");
    addUniformVariable("gtex");
    addUniformVariable("btex");
    addUniformVariable("ntex");
    addUniformVariable("tiling");

    addUniformVariable("minTess");
    addUniformVariable("maxTess");
}

void DefrTerrainShader::connectTextureUnits() {
    loadInt("heightMap", 0);
    loadInt("normalMap", 1);
    loadInt("splatMap", 2);
    loadInt("rtex", 3);
    loadInt("gtex", 4);
    loadInt("btex", 5);
    loadInt("ntex", 6);
}

DefrTerrainShader::~DefrTerrainShader() {

}