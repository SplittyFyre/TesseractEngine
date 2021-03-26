#version 430 core

layout (location = 0) in vec3 textureCoords;

layout (location = 0) out vec4 outDiffuse;
layout (location = 1) out vec4 outNormal;
layout (location = 3) out vec4 outBloom;

uniform samplerCube cubeMap1;
uniform samplerCube cubeMap2;

uniform float blendFactor;
uniform vec3 skyColour;
uniform bool hasOnlyOneTexture;

uniform vec3 gradientColour1;
uniform vec3 gradientColour2;

uniform float lowerFade;
uniform float upperFade;

uniform float bloom;

uniform vec3 camPos;


subroutine vec4 colourfunc_t(float);

layout (index = 0)
subroutine (colourfunc_t) vec4 cubemapColour(float f) {
    vec4 finalColour;
    if (hasOnlyOneTexture) {
        finalColour = texture(cubeMap1, textureCoords);
    }
    else {
        finalColour = mix(texture(cubeMap1, textureCoords), texture(cubeMap2, textureCoords), blendFactor);
    }
    return mix(vec4(skyColour, 1.0), finalColour, f);
}

layout (index = 1)
subroutine (colourfunc_t) vec4 gradientColour(float f) {
    return mix(vec4(gradientColour2, 1.0), vec4(gradientColour1, 1.0), f); // flipped for matching with sky technically
}

layout (location = 0) subroutine uniform colourfunc_t colourfunc;



void main(void) {

    float f = (normalize(textureCoords).y - lowerFade) / (upperFade - lowerFade);
    f = clamp(f, 0.0, 1.0);

    outDiffuse = colourfunc(f);
    outNormal = vec4(0.0, 0.0, 0.0, -0.1); // no lighting or fog
    outBloom = outDiffuse * bloom;
}