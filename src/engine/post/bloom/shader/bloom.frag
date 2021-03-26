#version 430 core

layout (location = 0) in vec2 textureCoords;

layout (location = 0) out vec4 outColour;

layout (binding = 0) uniform sampler2D sceneTex;
layout (binding = 1) uniform sampler2D highlightTex;

uniform float highlightFactor;

float rgb2luma(vec3 rgb) {
    return sqrt(dot(rgb, vec3(0.299, 0.587, 0.114)));
}

void main(void) {
    vec4 sceneCol = texture(sceneTex, textureCoords);
    vec4 highlightCol = texture(highlightTex, textureCoords);
    outColour = sceneCol + highlightCol * highlightFactor;
    outColour.a = rgb2luma(outColour.rgb);
}