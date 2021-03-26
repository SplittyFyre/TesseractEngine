#version 430 core

const vec2 data[4] = vec2[]
(
    vec2(-0.5, -0.5),
    vec2(-0.5, 0.5),
    vec2(0.5, -0.5),
    vec2(0.5, 0.5)
);

layout (location = 0) out vec2 textureCoords;

uniform vec4 transform;

void main(void) {
    vec2 position = data[gl_VertexID];

    textureCoords = position + vec2(0.5, 0.5);
    textureCoords.y = 1.0 - textureCoords.y;

    vec2 screenPos = position * transform.zw + transform.xy;
    screenPos.x = screenPos.x * 2.0 - 1.0;
    screenPos.y = screenPos.y * -2.0 + 1.0;

    gl_Position = vec4(screenPos, 0.0, 1.0);
}