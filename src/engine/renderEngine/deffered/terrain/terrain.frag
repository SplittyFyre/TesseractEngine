#version 430 core

layout (location = 0) in vec2 uvCoords;

layout (location = 0) out vec4 outDiffuse;
layout (location = 1) out vec4 outNormal;
layout (location = 2) out vec4 outMisc;
layout (location = 3) out vec4 outBloom;

uniform sampler2D splatMap;
uniform sampler2D rtex;
uniform sampler2D gtex;
uniform sampler2D btex;
uniform sampler2D ntex;

uniform float tiling;

uniform sampler2D normalMap;
uniform vec3 startPos;
uniform float totalSize;

void main(void) {

    vec4 splat = texture(splatMap, uvCoords);

    float nAmount = 1 - (splat.r + splat.g + splat.b);
   
    vec2 tiledCoords = uvCoords * tiling;

    vec4 terrainColour = 
    texture(ntex, tiledCoords) * nAmount +
    texture(rtex, tiledCoords) * splat.r +
    texture(gtex, tiledCoords) * splat.g +
    texture(btex, tiledCoords) * splat.b;

    outDiffuse = terrainColour;
    vec3 sampleNormal = texture(normalMap, uvCoords).xyz;
    outNormal = vec4(sampleNormal * totalSize + startPos, 1.0);
    outMisc = vec4(0.0, 1.0, 0.0, 0.0);
    outBloom = vec4(0.0);
}