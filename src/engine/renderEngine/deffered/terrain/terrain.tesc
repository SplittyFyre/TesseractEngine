#version 430 core

layout (vertices = 4) out;

layout (location = 0) in vec2 inUV[];
layout (location = 0) out vec2 outUV[4];

uniform mat4 vpMatrix;
uniform float p11;

uniform float edgesPerRTHeight;

uniform float minTess;
uniform float maxTess;


float tessFactor(vec3 p1, vec3 p2) {
    float D = distance(p1, p2);
    vec3 midpoint = (p1 + p2) * 0.5;
    
    float clipW = (vpMatrix * vec4(midpoint, 1.0)).w;
    float Dprime = abs((D * p11) / clipW);

    return clamp(Dprime * edgesPerRTHeight, minTess, maxTess);
}


void main(void) {
    if (gl_InvocationID == 0) {
        gl_TessLevelOuter[2] = tessFactor(gl_in[3].gl_Position.xyz, gl_in[0].gl_Position.xyz);
		gl_TessLevelOuter[1] = tessFactor(gl_in[0].gl_Position.xyz, gl_in[1].gl_Position.xyz);
		gl_TessLevelOuter[0] = tessFactor(gl_in[1].gl_Position.xyz, gl_in[2].gl_Position.xyz);
		gl_TessLevelOuter[3] = tessFactor(gl_in[2].gl_Position.xyz, gl_in[3].gl_Position.xyz);
		
		gl_TessLevelInner[0] = mix(gl_TessLevelOuter[0], gl_TessLevelOuter[3], 0.5);
		gl_TessLevelInner[1] = mix(gl_TessLevelOuter[2], gl_TessLevelOuter[1], 0.5);
    }

    gl_out[gl_InvocationID].gl_Position = gl_in[gl_InvocationID].gl_Position;
    outUV[gl_InvocationID] = inUV[gl_InvocationID];
}