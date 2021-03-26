#version 430 core

layout (location = 0) in vec2 uvCoords;

layout (location = 0) out vec4 outDiffuse;
layout (location = 1) out vec4 outNormal;
layout (location = 2) out vec4 outMisc;
layout (location = 3) out vec4 outBloom;

layout (binding = 1) uniform sampler2D normalMap;

uniform vec3 startPos;
uniform float totalSize;

uniform vec3 colour;
uniform float reflectivity;
uniform float shineDamper;

void main(void) {
    outDiffuse = vec4(colour, 1.0);

    vec3 sampleNormal = texture(normalMap, uvCoords).xyz;
    outNormal = vec4(sampleNormal * totalSize + startPos, 1.0);

    outMisc = vec4(reflectivity, shineDamper, 0.0, 0.0);
    outBloom = vec4(0.0);
}