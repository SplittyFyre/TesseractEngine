#version 430 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec2 textureCoordinates;
layout (location = 2) in vec3 normal;

layout (location = 0) out vec2 passTexCoords;
layout (location = 1) out vec3 surfaceNormal;

uniform mat4 transformationMatrix;
uniform mat4 vpMatrix;

uniform float atlasSize;
uniform vec2 texOffset;

void main(void) {

    vec4 worldPosition = transformationMatrix * vec4(position, 1.0);

    gl_Position = vpMatrix * worldPosition;

    surfaceNormal = (transformationMatrix * vec4(normal, 0.0)).xyz;

    passTexCoords = (textureCoordinates / atlasSize) + texOffset;
}