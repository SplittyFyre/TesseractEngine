#version 430 core

layout (location = 0) in vec2 blurCoords[11];

layout (location = 0) out vec4 outColour;

layout (binding = 0) uniform sampler2D image;

/*vec4 blur9(vec2 uv) {
    vec4 colour = vec4(0.0);
    vec2 off1 = vec2(1.3846153846) * direction;
    vec2 off2 = vec2(3.2307692308) * direction;
    colour += texture(image, uv) * 0.2270270270;
    colour += texture(image, uv + (off1 / resolution)) * 0.3162162162;
    colour += texture(image, uv - (off1 / resolution)) * 0.3162162162;
    colour += texture(image, uv + (off2 / resolution)) * 0.0702702703;
    colour += texture(image, uv - (off2 / resolution)) * 0.0702702703;
    return colour;
}

vec4 blur13(vec2 uv) {
    vec4 colour = vec4(0.0);
    vec2 off1 = vec2(1.411764705882353) * direction;
    vec2 off2 = vec2(3.2941176470588234) * direction;
    vec2 off3 = vec2(5.176470588235294) * direction;
    colour += texture(image, uv) * 0.1964825501511404;
    colour += texture(image, uv + (off1 / resolution)) * 0.2969069646728344;
    colour += texture(image, uv - (off1 / resolution)) * 0.2969069646728344;
    colour += texture(image, uv + (off2 / resolution)) * 0.09447039785044732;
    colour += texture(image, uv - (off2 / resolution)) * 0.09447039785044732;
    colour += texture(image, uv + (off3 / resolution)) * 0.010381362401148057;
    colour += texture(image, uv - (off3 / resolution)) * 0.010381362401148057;
    return colour;
}*/

void main(void) {
    vec4 colour = vec4(0.0);
	colour += texture(image, blurCoords[0]) * 0.0093;
    colour += texture(image, blurCoords[1]) * 0.028002;
    colour += texture(image, blurCoords[2]) * 0.065984;
    colour += texture(image, blurCoords[3]) * 0.121703;
    colour += texture(image, blurCoords[4]) * 0.175713;
    colour += texture(image, blurCoords[5]) * 0.198596;
    colour += texture(image, blurCoords[6]) * 0.175713;
    colour += texture(image, blurCoords[7]) * 0.121703;
    colour += texture(image, blurCoords[8]) * 0.065984;
    colour += texture(image, blurCoords[9]) * 0.028002;
    colour += texture(image, blurCoords[10]) * 0.0093;

    outColour = colour;
}