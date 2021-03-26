#version 430 core

layout (location = 0) in vec2 textureCoords;

layout (location = 0) out vec4 outDiffuse;
layout (location = 1) out vec4 outNormal;
layout (location = 2) out vec4 outMisc;
layout (location = 3) out vec4 outBloom;

layout (binding = 0) uniform sampler2D dudvMap;
layout (binding = 1) uniform sampler2D normalMap;

uniform float movedFactor;

uniform vec3 waterColour;
uniform float reflectivity;
uniform float shineDamper;

uniform float strength;

void main(void) {

    vec2 dp = texture(dudvMap, vec2(textureCoords.x + movedFactor, textureCoords.y)).rg * 0.1;
	vec2 distortedTexCoords = textureCoords + vec2(dp.x, dp.y + movedFactor);

	vec4 normalMapColour = texture(normalMap, distortedTexCoords);
	vec3 normal = vec3(normalMapColour.r * 2.0 - 1.0, normalMapColour.b * strength, normalMapColour.g * 2.0 - 1.0);
	
    outDiffuse = vec4(waterColour, 1.0);
    outNormal = vec4(normal, 1.0);
    outMisc = vec4(reflectivity, shineDamper, 1.0, 0.0);
    outBloom = vec4(0.0);
}