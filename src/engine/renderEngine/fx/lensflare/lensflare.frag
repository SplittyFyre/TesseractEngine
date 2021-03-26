#version 430 core

layout (location = 0) in vec2 uvCoords;

layout (location = 0) out vec4 outColour;

layout (binding = 0) uniform sampler2D tex;

uniform float brightness;

void main(void) {
    outColour = texture(tex, uvCoords);
    outColour.a *= brightness;
}