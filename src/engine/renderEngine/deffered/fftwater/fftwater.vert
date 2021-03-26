#version 430 core

layout (location = 0) in vec3 translate;

uniform vec3 startPos;
uniform float totalSize;

uniform float tiling;

layout (location = 0) out vec2 uvCoords;

const vec3 data[4] = vec3[]
(
    vec3(0.0, 0.0, 1.0),
    vec3(0.0, 0.0, 0.0),
    vec3(1.0, 0.0, 0.0),
    vec3(1.0, 0.0, 1.0)
);

void main(void) {
    vec3 pick = (data[gl_VertexID] * translate.y) + vec3(translate.x, 0.0, translate.z);
    gl_Position = vec4(pick, 1.0); // in world space

    uvCoords = vec2((pick.x - startPos.x) / totalSize, (pick.z - startPos.z) / totalSize) * tiling;
}