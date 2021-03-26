#version 430 core

const vec2 data[4] = vec2[]
(
    vec2(-0.5, 0.5),
    vec2(-0.5, -0.5),
    vec2(0.5, 0.5),
    vec2(0.5, -0.5)
);

uniform mat4 transformationMatrix;
uniform mat4 vpMatrix;

void main(void) {
    vec2 vtxpos = data[gl_VertexID];

	gl_Position = vpMatrix * transformationMatrix * vec4(vtxpos, 0.0, 1.0);
    gl_Position.z = 0.9999 * gl_Position.w;
}