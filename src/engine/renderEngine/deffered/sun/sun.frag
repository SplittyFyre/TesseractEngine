#version 430 core

layout (location = 0) in vec2 textureCoords;

layout (location = 0) out vec4 outColour;
layout (location = 1) out vec4 outNormal;

layout (binding = 0) uniform sampler2D tex;

void main(void) {
    outColour = texture(tex, textureCoords);
    outNormal = vec4(0.0, 0.0, 0.0, -0.1); // technically defferred, set ignore flag
}