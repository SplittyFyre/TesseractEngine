#version 430 core

#define MAX_LIGHTS 128

layout (location = 0) in vec2 textureCoords;

layout (location = 0) out vec4 outColour;


uniform vec3 lightPosition[MAX_LIGHTS];
uniform vec3 lightColour[MAX_LIGHTS];
uniform vec3 attenuation[MAX_LIGHTS];
uniform int lightsInUse;
uniform float ambientLightLvl;

uniform sampler2D diffuseTexture;
uniform sampler2D normalTexture;
uniform sampler2D miscTexture;
uniform sampler2D depthTexture;

uniform mat4 invProjectionMatrix;
uniform mat4 invViewMatrix;
uniform vec3 cameraPos;

uniform float fogDensity;
uniform float fogGradient;
uniform vec3 skyColour;


vec4 depthToViewPos(float depth) {
    float z = depth * 2.0 - 1.0;
    vec4 clipSpace = vec4(textureCoords * 2.0 - 1.0, z, 1.0);
    vec4 viewSpace = invProjectionMatrix * clipSpace;
    viewSpace /= viewSpace.w;
    return viewSpace;
}

vec4 applyLight(vec4 textureColour, vec3 usePos, vec3 normal, vec3 unitCamVec, float reflectivity, float shineDamper) {
    vec3 totalDiffuse = vec3(0.0);
    vec3 totalSpecular = vec3(0.0);
    
    for (int i = 0; i < lightsInUse; i++) {

        vec3 toLightVector = lightPosition[i] - usePos.xyz;

        float dist = length(toLightVector);
        float attFactor = attenuation[i].x + (attenuation[i].y * dist) + (attenuation[i].z * dist * dist);
        
        vec3 unitLV = normalize(toLightVector);
        float NDotL = dot(normal, unitLV);
        float brightness = max(NDotL, 0.0);

        vec3 lightDirection = -unitLV;
        vec3 reflectedDirection = reflect(lightDirection, normal);
        
        float specularFactor = max(dot(reflectedDirection, unitCamVec), 0.0);
        float dampedFactor = pow(specularFactor, shineDamper);
    
        totalDiffuse += ((brightness * lightColour[i]) / attFactor);
        totalSpecular += ((dampedFactor * reflectivity * lightColour[i]) / attFactor);
    }
    totalDiffuse = max(totalDiffuse, ambientLightLvl);

    return vec4(totalDiffuse, 1.0) * textureColour + vec4(totalSpecular, 1.0);
}

vec4 applyFog(vec4 colin, vec3 viewPosition, vec3 usePos) {
    float d = length(viewPosition.xyz);
    float visibility = exp(-pow(d * fogDensity, fogGradient));
    visibility = clamp(visibility, 0.0, 1.0);

    return mix(vec4(skyColour, 1.0), colin, visibility);
}

void main(void) {

    vec4 miscInfo = texture(miscTexture, textureCoords);
    float reflectivity = miscInfo.r;
    float shineDamper = miscInfo.g;

    vec4 viewPos = depthToViewPos(texture(depthTexture, textureCoords).x);
    vec4 usePos = invViewMatrix * viewPos;
    //vec4 usePos = viewPos;

    vec4 normTex = texture(normalTexture, textureCoords);
    vec3 normal = normalize(normTex.xyz);
    vec3 unitCamVec = normalize(cameraPos - usePos.xyz);

    vec4 colour = texture(diffuseTexture, textureCoords);

    if (abs(normTex.w) > 0.5)
        colour = applyLight(colour, usePos.xyz, normal, unitCamVec, reflectivity, shineDamper);
    if (normTex.w > 0.0)
        colour = applyFog(colour, viewPos.xyz, usePos.xyz);
    
    outColour = colour;
}