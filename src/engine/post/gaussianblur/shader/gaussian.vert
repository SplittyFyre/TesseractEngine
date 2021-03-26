#version 430 core

const vec2 data[4] = vec2[]
(
    vec2(-1.0, 1.0),
    vec2(-1.0, -1.0),
    vec2(1.0, 1.0),
    vec2(1.0, -1.0)
);

layout (location = 0) out vec2 blurCoords[11];

uniform float resolution;
uniform vec2 direction;

void main(void) {
    vec2 position = data[gl_VertexID];
    gl_Position = vec4(position, 0.0, 1.0);

    vec2 textureCoords = position * 0.5 + 0.5; 
    float pixelSize = 1.0 / resolution;

    for (int i = -5; i <= 5; i++) {
        blurCoords[i + 5] = textureCoords + (pixelSize * i * direction);
    }
}