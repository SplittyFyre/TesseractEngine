#version 430 core

layout (location = 0) in vec2 textureCoords;

layout (location = 0) out vec4 outColour;

layout (binding = 0) uniform sampler2D sceneTex;

uniform float width;
uniform float height;

uniform float EDGE_THRESHOLD_MIN;
uniform float EDGE_THRESHOLD_MAX;

const float SUBPIXEL_QUALITY = 0.75;

const int ITER = 12;

const float QUALITY[12] = float[] (
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.5,
    2.0,
    2.0,
    2.0,
    2.0,
    4.0,
    8.0
);

void main(void) {

    vec4 center = texture(sceneTex, textureCoords);

    float lumaCenter = center.a;

    float lumaDown = textureOffset(sceneTex, textureCoords, ivec2(0, -1)).a;
    float lumaUp = textureOffset(sceneTex, textureCoords, ivec2(0, 1)).a;
    float lumaLeft = textureOffset(sceneTex, textureCoords, ivec2(-1, 0)).a;
    float lumaRight = textureOffset(sceneTex, textureCoords, ivec2(1, 0)).a;

    float lumaMin = min(lumaCenter, min(min(lumaDown, lumaUp), min(lumaLeft, lumaRight)));
    float lumaMax = max(lumaCenter, max(max(lumaDown, lumaUp), max(lumaLeft, lumaRight)));

    float lumaRange = lumaMax - lumaMin;

    if (lumaRange < max(EDGE_THRESHOLD_MIN, lumaMax * EDGE_THRESHOLD_MAX)) {
        outColour = center;
        return;
    }

    float lumaDownLeft = textureOffset(sceneTex, textureCoords, ivec2(-1, -1)).a;
    float lumaUpRight = textureOffset(sceneTex, textureCoords, ivec2(1, 1)).a;
    float lumaUpLeft = textureOffset(sceneTex, textureCoords, ivec2(-1, 1)).a;
    float lumaDownRight = textureOffset(sceneTex, textureCoords, ivec2(1, -1)).a;

    float lumaDownUp = lumaDown + lumaUp;
    float lumaLeftRight = lumaLeft + lumaRight;

    float lumaLeftCorners = lumaDownLeft + lumaUpLeft;
    float lumaDownCorners = lumaDownLeft + lumaDownRight;
    float lumaRightCorners = lumaDownRight + lumaUpRight;
    float lumaUpCorners = lumaUpRight + lumaUpLeft;

    float edgeHorizontal =  abs(-2.0 * lumaLeft + lumaLeftCorners)  + abs(-2.0 * lumaCenter + lumaDownUp ) * 2.0    + abs(-2.0 * lumaRight + lumaRightCorners);
    float edgeVertical   =  abs(-2.0 * lumaUp + lumaUpCorners)      + abs(-2.0 * lumaCenter + lumaLeftRight) * 2.0  + abs(-2.0 * lumaDown + lumaDownCorners);

    bool isHorizontal = (edgeHorizontal >= edgeVertical);

    float luma1 = isHorizontal ? lumaDown : lumaLeft;
    float luma2 = isHorizontal ? lumaUp : lumaRight;

    float gradient1 = luma1 - lumaCenter;
    float gradient2 = luma2 - lumaCenter;

    bool is1Steepest = abs(gradient1) >= abs(gradient2);

    float gradientScaled = 0.25 * max(abs(gradient1), abs(gradient2));


    float stepLength = isHorizontal ? (1.f / height) : (1.f / width);

    float lumaLocalAverage = 0.0;

    if (is1Steepest) {
        stepLength = -stepLength;
        lumaLocalAverage = 0.5 * (luma1 + lumaCenter);
    }
    else {
        lumaLocalAverage = 0.5 * (luma2 + lumaCenter);
    }

    vec2 currentUV = textureCoords;
    if (isHorizontal) {
        currentUV.y += stepLength * 0.5;
    }
    else {
        currentUV.x += stepLength * 0.5;
    }

    vec2 offset = isHorizontal ? vec2(1.f / width, 0.0) : vec2(0.0, 1.f / height);

    vec2 uv1 = currentUV - offset;
    vec2 uv2 = currentUV + offset;

    float lumaEnd1 = texture(sceneTex, uv1).a;
    float lumaEnd2 = texture(sceneTex, uv2).a;
    lumaEnd1 -= lumaLocalAverage;
    lumaEnd2 -= lumaLocalAverage;

    bool reached1 = abs(lumaEnd1) >= gradientScaled;
    bool reached2 = abs(lumaEnd2) >= gradientScaled;
    bool reachedBoth = reached1 && reached2;

    if (!reached1) {
        uv1 -= offset;
    }
    if (!reached2) {
        uv2 -= offset;
    }

    if (!reachedBoth) {
        
        for (int i = 2; i < ITER; i++) {
            if (!reached1) {
                lumaEnd1 = texture(sceneTex, uv1).a;
                lumaEnd1 -= lumaLocalAverage;
            }
            if (!reached2) {
                lumaEnd2 = texture(sceneTex, uv2).a;
                lumaEnd2 -= lumaLocalAverage;
            }

            reached1 = abs(lumaEnd1) >= gradientScaled;
            reached2 = abs(lumaEnd2) >= gradientScaled;
            reachedBoth = reached1 && reached2;

            if(!reached1){
                uv1 -= offset * QUALITY[i];
            }
            if(!reached2){
                uv2 += offset * QUALITY[i];
            }

            if (reachedBoth) {
                break;
            }
        }

    }


    float distance1 = isHorizontal ? (textureCoords.x - uv1.x) : (textureCoords.y - uv1.y);
    float distance2 = isHorizontal ? (uv2.x - textureCoords.x) : (uv2.y - textureCoords.y);

    bool isDirection1 = distance1 < distance2;
    float distanceFinal = min(distance1, distance2);

    float edgeThickness = distance1 + distance2;

    float pixelOffset = -distanceFinal / edgeThickness + 0.5;

    bool isLumaCenterSmaller = lumaCenter < lumaLocalAverage;
    bool correctVariation = ((isDirection1 ? lumaEnd1 : lumaEnd2) < 0.0) != isLumaCenterSmaller;

    float finalOffset = correctVariation ? pixelOffset : 0.0;


    // subpixel
    /*float lumaAverage = (1.0 / float(ITER)) * (2.0 * (lumaDownUp + lumaLeftRight) + lumaLeftCorners + lumaRightCorners);

    float subPixelOffset1 = clamp(abs(lumaAverage - lumaCenter) / lumaRange, 0.0, 1.0);
    float subPixelOffset2 = (-2.0 * subPixelOffset1 + 3.0) * subPixelOffset1 * subPixelOffset1;

    float subPixelOffsetFinal = subPixelOffset2 * subPixelOffset2 * SUBPIXEL_QUALITY;

    finalOffset = max(finalOffset, subPixelOffsetFinal);*/


    vec2 finalUV = textureCoords;

    if (isHorizontal) {
        finalUV.y += finalOffset * stepLength;
    }
    else {
        finalUV.x += finalOffset * stepLength;
    }

    outColour = texture(sceneTex, finalUV);
}