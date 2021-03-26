#version 430 core

layout (location = 0) in vec2 textureCoords;

layout (location = 0) out vec4 outColour;

layout (binding = 0) uniform sampler2D tex;

uniform vec4 colour;
uniform bool solid;

void main(void) {
    if (solid) {
        outColour = colour;
    }
    else {
        outColour = texture(tex, textureCoords);
    }
}