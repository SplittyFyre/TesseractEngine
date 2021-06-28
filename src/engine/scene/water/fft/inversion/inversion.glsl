#version 430 core

layout (local_size_x = 1, local_size_y = 1) in;

layout (binding = 0, rgba32f) writeonly uniform image2D displacement;

layout (binding = 1, rgba32f) readonly uniform image2D src;
layout (binding = 2, rgba32f) readonly uniform image2D chop_src;

uniform int N;

const float perms[] = { 1.0, -1.0 };

void main(void) {

    ivec2 loc = ivec2(gl_GlobalInvocationID.xy);

	int index = int(mod((int(loc.x + loc.y)), 2));
	float perm = perms[index];
    perm = 1.0;

    float dy = imageLoad(src, loc).r;
    vec4 tmp = imageLoad(chop_src, loc);
    float dx = tmp.r;
    float dz = tmp.b;

    float norm = perm / float(N * N);

    imageStore(displacement, loc, vec4(dx * norm, dy * norm, dz * norm, 1.0));
}