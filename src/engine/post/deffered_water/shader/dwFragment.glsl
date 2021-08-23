#version 430 core

layout (location = 0) in vec2 textureCoords;

layout (location = 0) out vec4 outColour;

uniform vec3 lightPosition;
uniform vec3 lightColour;
uniform vec3 lightAttenuation;
uniform float ambientLightLvl;

uniform sampler2D diffuseTexture;
uniform sampler2D depthTexture;
uniform sampler2D heightMap;
uniform sampler2D normalMap;
uniform sampler2D foamMap;
uniform sampler2D reflectionTexture;

uniform mat4 invProjectionMatrix;
uniform mat4 invViewMatrix;
uniform mat4 matTexProj;
uniform vec3 cameraPos;

uniform float fogDensity;
uniform float fogGradient;
uniform vec3 skyColour;

uniform float timer;


float waterHeight = 0.0;
float scale = 100.0; // how many meters per heightfield
float R0 = 0.5;
float refractionStrength = 0.0;
float refractionScale = 0.005;
float fadeSpeed = 0.15;
float sunScale = 3.0;

vec3 waterColour = vec3(0.325, 0.393, 0.454) - vec3(0.1);
vec3 deepWaterColour = waterColour;

float visibility = 4.0;
vec3 colourExtinction = vec3(7.0, 30.0, 40.0);
float shoreHardness = 1.0;
vec2 windDirection = vec2(1, 0);
vec3 foamExistence = vec3(0.65, 1.35, 0.3);
float foamIntensity = 0.1;
float reflectDisp = 1.7;

float saturate(float f) {
    return clamp(f, 0.0, 1.0);
}
vec3 saturate(vec3 v) {
    return clamp(v, 0.0, 1.0);
}

vec4 depthToViewPos(float depth) {
    float z = depth * 2.0 - 1.0;
    vec4 clipSpace = vec4(textureCoords * 2.0 - 1.0, z, 1.0);
    vec4 viewSpace = invProjectionMatrix * clipSpace;
    viewSpace /= viewSpace.w;
    return viewSpace;
}



float fresnelTerm(vec3 normal, vec3 eyev) {
    float angle = 1.0 - max(0.0, dot(normal, eyev));
    float fresnel = angle * angle;
    fresnel = fresnel * fresnel;
    fresnel = fresnel * angle;
    return saturate(fresnel * (1.0 - saturate(R0)) + R0 - refractionStrength);
}

vec4 applyLight(vec4 textureColour, vec3 usePos, vec3 normal, vec3 unitCamVec, float reflectivity, float shineDamper, vec3 foam) {
    vec3 totalDiffuse = vec3(0.0);
    vec3 totalSpecular = vec3(0.0);
    
    vec3 toLightVector = lightPosition - usePos.xyz;

    float dist = length(toLightVector);
    float attFactor = lightAttenuation.x + (lightAttenuation.y * dist) + (lightAttenuation.z * dist * dist);
    
    vec3 unitLV = normalize(toLightVector);
    float NDotL = dot(normal, unitLV);
    float brightness = max(NDotL, 0.0);

    vec3 lightDirection = -unitLV;
    vec3 reflectedDirection = reflect(lightDirection, normal);
    
    float specularFactor = max(dot(reflectedDirection, unitCamVec), 0.0);
    float dampedFactor = pow(specularFactor, shineDamper);

    totalDiffuse += ((brightness * lightColour) / attFactor);
    totalSpecular += ((dampedFactor * reflectivity * lightColour) / attFactor);
    
    totalDiffuse = max(totalDiffuse, ambientLightLvl);

    return vec4(totalDiffuse, 1.0) * textureColour + vec4(max(totalSpecular, foam), 1.0);
}

vec4 waterCalc() {

    vec3 colour2 = texture(diffuseTexture, textureCoords).rgb;
    vec3 colour = colour2;

    float sceneDepth = texture(depthTexture, textureCoords).r;
    vec3 worldPos = (invViewMatrix * depthToViewPos(sceneDepth)).xyz;

    vec3 eyeVec = worldPos - cameraPos;
    float cameraDepth = cameraPos.y - worldPos.y;

    float level = waterHeight;

    vec3 eyeVecNorm = normalize(eyeVec);
    float t = (level - cameraPos.y) / eyeVecNorm.y;
    vec3 surfacePoint = cameraPos + eyeVecNorm * t;

    vec2 texC = vec2(0.0);
    const int samples = 10;

    float biasFactor = 1.0 / float(samples);
    for (int i = 0; i < samples; i++) {
        texC = (surfacePoint.xz + eyeVecNorm.xz * biasFactor) / scale;

        float bias = texture(heightMap, texC).y * biasFactor;

        level += bias;
        t = (level - cameraPos.y) / eyeVecNorm.y;
        surfacePoint = cameraPos + eyeVecNorm * t;
    }

    float depth = length(worldPos - surfacePoint);
    float depth2 = surfacePoint.y - worldPos.y;

    eyeVecNorm = normalize(cameraPos - surfacePoint);

    vec3 normal = normalize(texture(normalMap, texC).xyz);
    texC = textureCoords;
    texC += sin(timer * 1.8 + 3.0 * abs(worldPos.y)) * (refractionScale * min(depth2, 1.0));
    texC = clamp(texC, vec2(0.0), vec2(0.999));
    vec3 refraction = texture(diffuseTexture, texC).rgb;

    vec3 waterPosition = surfacePoint;
    waterPosition.y -= (level - waterHeight);
    vec4 texCoordProj = matTexProj * vec4(waterPosition, 1.0);
    texCoordProj.x = texCoordProj.x + reflectDisp * normal.x;
    texCoordProj.z = texCoordProj.z + reflectDisp * normal.z;
    texCoordProj /= texCoordProj.w;
    texCoordProj.xy = (texCoordProj.xy / 2.0) + 0.5;
    texCoordProj.y = 1.0 - texCoordProj.y;

    vec3 reflection = texture(reflectionTexture, texCoordProj.xy).rgb;
    
    float fresnel = fresnelTerm(normal, eyeVecNorm);

    float depthN = depth * fadeSpeed;
    float waterCol = saturate(length(lightColour) / sunScale);
    refraction = mix(mix(refraction, waterColour * waterCol, saturate(depthN / visibility)),
        deepWaterColour * waterCol, saturate(depth2 / colourExtinction));

    
    vec3 foam = vec3(0.0);

    texC = (surfacePoint.xz + eyeVecNorm.xz * 0.1) * 0.05 + timer * 0.05 * windDirection + sin(timer * 0.001 + worldPos.x) * 0.005;
    vec2 texC2 = (surfacePoint.xz + eyeVecNorm.xz * 0.1) * 0.05 + timer * 0.1 * windDirection + sin(timer * 0.001 + worldPos.z) * 0.005;

    /*vec4 foam1 = texture(foamMap, texC), foam2 = texture(foamMap, texC2);
    
    if (depth2 < foamExistence.x) {
        foam = (foam1.r + foam2).rgb * foamIntensity;
    }
    else if (depth2 < foamExistence.y) {
        foam = mix((foam1 + foam2) * foamIntensity, vec4(0.0), (depth2 - foamExistence.x) / (foamExistence.y - foamExistence.x)).rgb;
    }

    foam *= lightColour.rgb;*/

    colour = mix(refraction, waterColour, fresnel);
    colour = applyLight(vec4(colour, 1.0), surfacePoint, normal, eyeVecNorm, 0.4, 20.0, foam).rgb;
    colour = mix(refraction, colour, saturate(depth * shoreHardness));

    vec4 ans = vec4(mix(colour, colour2, step(level, worldPos.y)), 1.0);
    return ans;
}

void main(void) {

    float depth = texture(depthTexture, textureCoords).x;
    vec4 viewPos = depthToViewPos(depth);
    vec4 usePos = invViewMatrix * viewPos;
    
    //outColour = texture(diffuseTexture, textureCoords);
    outColour = waterCalc();
}