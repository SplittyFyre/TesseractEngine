#version 430 core

layout (location = 0) in vec3 translate;

uniform float size;
uniform vec3 startPos;
uniform float totalSize;

layout (location = 0) out vec2 uvCoords;

const vec3 data[4] = vec3[]
(
    vec3(0.0, 0.0, 1.0),
    vec3(0.0, 0.0, 0.0),
    vec3(1.0, 0.0, 0.0),
    vec3(1.0, 0.0, 1.0)
);

void main(void) {
    vec3 pick = (data[gl_VertexID] * size) + translate;
    gl_Position = vec4(pick, 1.0); // in world space

    uvCoords = vec2((pick.x - startPos.x) / totalSize, (pick.z - startPos.z) / totalSize);
}