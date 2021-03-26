#version 430 core

layout (location = 0) in vec2 texCoords;
layout (location = 1) in vec3 normal;

layout (location = 0) out vec4 outDiffuse;
layout (location = 1) out vec4 outNormal;
layout (location = 2) out vec4 outMisc;
layout (location = 3) out vec4 outBloom;

layout (binding = 0) uniform sampler2D modelTexture;
layout (binding = 1) uniform sampler2D propertyMap;
uniform bool hasPropertyMap;

uniform float bloomFactor;

// specular info
uniform float reflectivity;
uniform float shineDamper;

// fill colour info
uniform bool doFC;
uniform vec3 FCcol;

void main(void) {

    vec4 textureColour = texture(modelTexture, texCoords);

    if (textureColour.a < 0.5) {
        if (doFC) {
            textureColour = vec4(FCcol, 1.0);
        }
        else {
            discard;
        }
    }
    outDiffuse = vec4(textureColour.xyz, 1.0);

    outNormal = vec4(normal, 1.0);

    outBloom = vec4(0.0, 0.0, 0.0, 0.0);

    float re = reflectivity;
    if (hasPropertyMap) {
        vec4 property = texture(propertyMap, texCoords);
        outBloom = outDiffuse * property.r * bloomFactor;
        re *= property.g;
    }
    outMisc = vec4(re, shineDamper, 0.0, 0.0);
}