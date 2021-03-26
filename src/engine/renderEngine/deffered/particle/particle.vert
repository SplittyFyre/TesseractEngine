#version 430 core

layout (location = 0) in mat4 modelView;
layout (location = 4) in vec4 texOffsets;
layout (location = 5) in float blend;

uniform mat4 projectionMatrix;
uniform float numRows;

layout (location = 0) out vec2 textureCoords1;
layout (location = 1) out vec2 textureCoords2;
layout (location = 2) out float outBlend;

const vec2 data[4] = vec2[]
(
    vec2(-0.5, 0.5),
    vec2(-0.5, -0.5),
    vec2(0.5, 0.5),
    vec2(0.5, -0.5)
);

void main(void) {
    vec2 pos = data[gl_VertexID];

    vec2 texCoords = pos + vec2(0.5, 0.5);
    texCoords.y = 1.0 - texCoords.y;
    texCoords /= numRows;
    textureCoords1 = texCoords + texOffsets.xy;
    textureCoords2 = texCoords + texOffsets.zw;
    outBlend = blend;

    gl_Position = projectionMatrix * modelView * vec4(pos, 0.0, 1.0);
}