#version 430 core

// attrib-less rendering, yay!

layout (location = 0) out vec2 textureCoords;

const vec3 data[6] = vec3[]
(
    vec3(-0.5, 0.0, -0.5),
    vec3(-0.5, 0.0, 0.5),
    vec3(0.5, 0.0, -0.5),
    vec3(0.5, 0.0, -0.5),
    vec3(-0.5, 0.0, 0.5),
    vec3(0.5, 0.0, 0.5)
);

uniform vec3 translate;
uniform float scale;
uniform mat4 vpMatrix;

uniform float tiling;

void main(void) {
    vec3 pos = data[gl_VertexID];
    gl_Position = vpMatrix * vec4(pos * scale + translate, 1.0);

    textureCoords = vec2(pos.x * 0.5 + 0.5, pos.z * 0.5 + 0.5) * tiling;
}