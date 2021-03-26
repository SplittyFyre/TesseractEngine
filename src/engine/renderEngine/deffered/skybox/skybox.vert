#version 430 core

layout (location = 0) in vec3 position;

layout (location = 0) out vec3 textureCoords;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

uniform float yOffset;

void main(void) {
    gl_Position = projectionMatrix * viewMatrix * vec4(position, 1.0);
    textureCoords = position;
}