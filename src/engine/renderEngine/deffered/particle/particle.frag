#version 430 core

layout (location = 0) in vec2 textureCoords1;
layout (location = 1) in vec2 textureCoords2;
layout (location = 2) in float blend;

layout (location = 0) out vec4 outDiffuse;

layout (binding = 0) uniform sampler2D particleTexture;

void main(void) {
    vec4 colour1 = texture(particleTexture, textureCoords1);
    vec4 colour2 = texture(particleTexture, textureCoords2);

    outDiffuse = mix(colour1, colour2, blend);
}