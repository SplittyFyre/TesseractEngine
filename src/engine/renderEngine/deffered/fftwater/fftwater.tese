#version 430 core

layout (quads, fractional_even_spacing) in;

layout (location = 0) in vec2 inUV[];

layout (location = 0) out vec2 outUV;

uniform mat4 vpMatrix;

layout (binding = 0) uniform sampler2D heightMap;

void main(void) {

    vec4 p1 = mix(gl_in[1].gl_Position, gl_in[0].gl_Position, gl_TessCoord.x);
	vec4 p2 = mix(gl_in[2].gl_Position, gl_in[3].gl_Position, gl_TessCoord.x);
    vec4 finalPos = mix(p1, p2, gl_TessCoord.y);

    vec2 uv1 = mix(inUV[1], inUV[0], gl_TessCoord.x);
	vec2 uv2 = mix(inUV[2], inUV[3], gl_TessCoord.x);
	outUV = mix(uv1, uv2, gl_TessCoord.y);

    vec4 disp = texture(heightMap, outUV); disp.w = 0.0;
    finalPos += disp;

    gl_Position = vpMatrix * finalPos;
}