#version 430 core

const vec2 data[4] = vec2[]
(
    vec2(-0.5, 0.5),
    vec2(-0.5, -0.5),
    vec2(0.5, 0.5),
    vec2(0.5, -0.5)
);

layout (location = 0) out vec2 textureCoords;

uniform mat4 transformationMatrix;
uniform mat4 vpMatrix;

void main(void) {
    vec2 vtxpos = data[gl_VertexID];

	textureCoords = vtxpos + vec2(0.5, 0.5);
	textureCoords.y = 1.0 - textureCoords.y;

	gl_Position = vpMatrix * transformationMatrix * vec4(vtxpos, 0.0, 1.0);
}