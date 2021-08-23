all: bin/ExecuteMe
obj/main.o: src/demo/main.cpp headers/TR/TRDisplayManager.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h include/GLFW/glfw3.h \
 headers/TR/TRKeyboard.h headers/TR/TesseractEngine.h \
 headers/TR/DefferedRenderSystem.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRScene.h headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h headers/TR/RawModel.h headers/TR/BoundingVolume.h \
 headers/TR/MeshData.h headers/TR/TRTexture.h headers/TR/TRHeightmap.h \
 headers/TR/TRFbo.h headers/TR/GLQuery.h headers/TR/TRSkybox.h \
 headers/TR/ParticleManager.h headers/TR/TRParticle.h \
 headers/TR/TRPlasticWater.h headers/TR/FFTWater.h headers/TR/FFTCtx.h \
 headers/TR/FreqDomain.h headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/DefrEntityRenderer.h \
 headers/TR/DefrEntityShader.h headers/TR/InstancedEntityShader.h \
 headers/TR/StaticEntityRenderer.h headers/TR/DefrTerrainRenderer.h \
 headers/TR/DefrTerrainShader.h headers/TR/DefrSkyboxRenderer.h \
 headers/TR/DefrSkyboxShader.h headers/TR/PlasticWaterRenderer.h \
 headers/TR/PlasticWaterShader.h headers/TR/FFTWaterRenderer.h \
 headers/TR/FFTWaterShader.h headers/TR/SunRenderer.h \
 headers/TR/SunShader.h headers/TR/DefferedProcessing.h \
 headers/TR/DefferedShader.h headers/TR/DefferedProcessingW.h \
 headers/TR/DefferedShaderW.h headers/TR/TRDisplayManager.h \
 headers/TR/TRFbo.h headers/TR/ParticleRenderer.h \
 headers/TR/ParticleShader.h headers/TR/GaussianBlur.h \
 headers/TR/BlurShader.h headers/TR/BloomCombiner.h \
 headers/TR/BloomShader.h headers/TR/FXAA.h headers/TR/FXAAShader.h \
 headers/TR/FlareRenderer.h headers/TR/FlareShader.h \
 headers/TR/FlareQueryShader.h headers/TR/CurtainRenderer.h \
 headers/TR/CurtainShader.h headers/TP/ThreadPool.hpp \
 headers/TR/RogueCamera.h headers/TR/OBJParser.h \
 headers/TR/SimpleGeometry.h headers/TR/TRSpatialEntity.h \
 headers/TR/TRMath.h headers/TR/DynamicBounds.h include/imgui/imgui.h \
 include/imgui/imconfig.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/demo/main.cpp -o obj/main.o
obj/dragon.o: src/demo/dragon.cpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/demo/dragon.cpp -o obj/dragon.o
obj/TRMath.o: src/engine/util/TRMath.cpp headers/TR/TRMath.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/../simd/platform.h include/glm/gtx/../fwd.hpp \
 include/glm/gtx/../detail/qualifier.hpp \
 include/glm/gtx/../detail/setup.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/../detail/./compute_vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/./setup.hpp \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec3.hpp include/glm/gtx/.././ext/vector_bool3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.inl \
 include/glm/gtx/.././ext/vector_bool3_precision.hpp \
 include/glm/gtx/.././ext/vector_float3.hpp \
 include/glm/gtx/.././ext/vector_float3_precision.hpp \
 include/glm/gtx/.././ext/vector_double3.hpp \
 include/glm/gtx/.././ext/vector_double3_precision.hpp \
 include/glm/gtx/.././ext/vector_int3.hpp \
 include/glm/gtx/.././ext/vector_int3_precision.hpp \
 include/glm/gtx/.././ext/vector_uint3.hpp \
 include/glm/gtx/.././ext/vector_uint3_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/util/TRMath.cpp -o obj/TRMath.o
obj/TRUtil.o: src/engine/util/TRUtil.cpp headers/TR/TRUtil.h \
 include/imgui/imgui.h include/imgui/imconfig.h \
 headers/TR/TRDisplayManager.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/GLFW/glfw3.h include/glm/gtx/string_cast.hpp \
 include/glm/gtx/../glm.hpp include/glm/gtx/../detail/_fixes.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/../simd/platform.h include/glm/gtx/../fwd.hpp \
 include/glm/gtx/../detail/qualifier.hpp \
 include/glm/gtx/../detail/setup.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/../detail/./compute_vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/./setup.hpp \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec3.hpp include/glm/gtx/.././ext/vector_bool3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.inl \
 include/glm/gtx/.././ext/vector_bool3_precision.hpp \
 include/glm/gtx/.././ext/vector_float3.hpp \
 include/glm/gtx/.././ext/vector_float3_precision.hpp \
 include/glm/gtx/.././ext/vector_double3.hpp \
 include/glm/gtx/.././ext/vector_double3_precision.hpp \
 include/glm/gtx/.././ext/vector_int3.hpp \
 include/glm/gtx/.././ext/vector_int3_precision.hpp \
 include/glm/gtx/.././ext/vector_uint3.hpp \
 include/glm/gtx/.././ext/vector_uint3_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/type_precision.hpp \
 include/glm/gtx/../gtc/../gtc/quaternion.hpp \
 include/glm/gtx/../gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../gtc/../gtc/constants.inl \
 include/glm/gtx/../gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtx/../gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtx/../gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtx/../gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtx/../gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtx/../gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtx/../gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtx/../gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtx/../gtc/../gtc/quaternion.inl \
 include/glm/gtx/../gtc/../gtc/epsilon.hpp \
 include/glm/gtx/../gtc/../gtc/../detail/setup.hpp \
 include/glm/gtx/../gtc/../gtc/epsilon.inl \
 include/glm/gtx/../gtc/../gtc/vec1.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtx/../gtc/../ext/scalar_int_sized.hpp \
 include/glm/gtx/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/scalar_uint_sized.hpp \
 include/glm/gtx/../gtc/type_precision.inl \
 include/glm/gtx/../gtx/dual_quaternion.hpp \
 include/glm/gtx/../gtx/dual_quaternion.inl \
 include/glm/gtx/string_cast.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/util/TRUtil.cpp -o obj/TRUtil.o
obj/TRRay.o: src/engine/util/TRRay.cpp headers/TR/TRRay.h \
 include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRTexture.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/util/TRRay.cpp -o obj/TRRay.o
obj/TRKeyboard.o: src/engine/util/TRKeyboard.cpp headers/TR/TRKeyboard.h \
 headers/TR/TRDisplayManager.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/util/TRKeyboard.cpp -o obj/TRKeyboard.o
obj/ThreadPool.o: src/engine/util/TP/ThreadPool.cpp \
 headers/TP/ThreadPool.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/util/TP/ThreadPool.cpp -o obj/ThreadPool.o
obj/QuadTree.o: src/engine/util/quadtree/QuadTree.cpp \
 headers/TR/QuadTree.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/util/quadtree/QuadTree.cpp -o obj/QuadTree.o
obj/BoundingVolume.o: src/engine/collision/BoundingVolume.cpp \
 headers/TR/BoundingVolume.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/collision/BoundingVolume.cpp -o obj/BoundingVolume.o
obj/DynamicBounds.o: src/engine/collision/DynamicBounds.cpp \
 headers/TR/DynamicBounds.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/fwd.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/setup.hpp \
 include/glm/detail/type_half.inl include/glm/integer.hpp \
 include/glm/detail/func_integer.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/collision/DynamicBounds.cpp -o obj/DynamicBounds.o
obj/TesseractEngine.o: src/engine/renderEngine/TesseractEngine.cpp \
 headers/TR/TesseractEngine.h headers/TR/DefferedRenderSystem.h \
 include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRScene.h headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/DefrEntityRenderer.h \
 headers/TR/DefrEntityShader.h headers/TR/InstancedEntityShader.h \
 headers/TR/StaticEntityRenderer.h headers/TR/DefrTerrainRenderer.h \
 headers/TR/DefrTerrainShader.h headers/TR/DefrSkyboxRenderer.h \
 headers/TR/DefrSkyboxShader.h headers/TR/PlasticWaterRenderer.h \
 headers/TR/PlasticWaterShader.h headers/TR/FFTWaterRenderer.h \
 headers/TR/FFTWaterShader.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/DefferedShaderW.h \
 headers/TR/TRDisplayManager.h headers/TR/TRFbo.h \
 headers/TR/ParticleRenderer.h headers/TR/ParticleShader.h \
 headers/TR/GaussianBlur.h headers/TR/BlurShader.h \
 headers/TR/BloomCombiner.h headers/TR/BloomShader.h headers/TR/FXAA.h \
 headers/TR/FXAAShader.h headers/TR/FlareRenderer.h \
 headers/TR/FlareShader.h headers/TR/FlareQueryShader.h \
 headers/TR/CurtainRenderer.h headers/TR/CurtainShader.h \
 headers/TP/ThreadPool.hpp headers/TR/TRKeyboard.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/TesseractEngine.cpp -o obj/TesseractEngine.o
obj/TRDisplayManager.o: src/engine/renderEngine/TRDisplayManager.cpp \
 headers/TR/TRDisplayManager.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/GLFW/glfw3.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/../simd/platform.h include/glm/gtx/../fwd.hpp \
 include/glm/gtx/../detail/qualifier.hpp \
 include/glm/gtx/../detail/setup.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/../detail/./compute_vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/./setup.hpp \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec3.hpp include/glm/gtx/.././ext/vector_bool3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.inl \
 include/glm/gtx/.././ext/vector_bool3_precision.hpp \
 include/glm/gtx/.././ext/vector_float3.hpp \
 include/glm/gtx/.././ext/vector_float3_precision.hpp \
 include/glm/gtx/.././ext/vector_double3.hpp \
 include/glm/gtx/.././ext/vector_double3_precision.hpp \
 include/glm/gtx/.././ext/vector_int3.hpp \
 include/glm/gtx/.././ext/vector_int3_precision.hpp \
 include/glm/gtx/.././ext/vector_uint3.hpp \
 include/glm/gtx/.././ext/vector_uint3_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRLoader.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/TR/TRKeyboard.h \
 include/imgui/imgui.h include/imgui/imconfig.h \
 include/imgui/imgui_impl_opengl3.h include/imgui/imgui_impl_glfw.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/TRDisplayManager.cpp -o obj/TRDisplayManager.o
obj/FlareRenderer.o: \
 src/engine/renderEngine/fx/lensflare/FlareRenderer.cpp \
 headers/TR/FlareRenderer.h headers/TR/FlareShader.h \
 headers/TR/ShaderProgram.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRLensFlare.h \
 headers/TR/TRTexture.h headers/TR/FlareQueryShader.h \
 headers/TR/TRScene.h headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h headers/TR/RawModel.h headers/TR/BoundingVolume.h \
 headers/TR/MeshData.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/GroupEntity.h \
 headers/TR/TRSceneEntity.h headers/TR/TexturedModel.h \
 headers/TR/ModelSkin.h headers/TR/TRStaticBatch.h \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/fx/lensflare/FlareRenderer.cpp -o obj/FlareRenderer.o
obj/FlareShader.o: src/engine/renderEngine/fx/lensflare/FlareShader.cpp \
 headers/TR/FlareShader.h headers/TR/ShaderProgram.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRLensFlare.h \
 headers/TR/TRTexture.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/fx/lensflare/FlareShader.cpp -o obj/FlareShader.o
obj/FlareQueryShader.o: \
 src/engine/renderEngine/fx/lensflare/query/FlareQueryShader.cpp \
 headers/TR/FlareQueryShader.h headers/TR/ShaderProgram.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRScene.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRTexture.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/fx/lensflare/query/FlareQueryShader.cpp -o obj/FlareQueryShader.o
obj/CurtainRenderer.o: \
 src/engine/renderEngine/curtain/CurtainRenderer.cpp \
 headers/TR/CurtainRenderer.h headers/TR/CurtainShader.h \
 headers/TR/ShaderProgram.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRTexture.h \
 headers/TR/TRLoader.h headers/TR/RawModel.h headers/TR/BoundingVolume.h \
 headers/TR/MeshData.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/curtain/CurtainRenderer.cpp -o obj/CurtainRenderer.o
obj/CurtainShader.o: src/engine/renderEngine/curtain/CurtainShader.cpp \
 headers/TR/CurtainShader.h headers/TR/ShaderProgram.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/curtain/CurtainShader.cpp -o obj/CurtainShader.o
obj/DefferedRenderSystem.o: \
 src/engine/renderEngine/deffered/DefferedRenderSystem.cpp \
 headers/TR/DefferedRenderSystem.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRScene.h headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/DefrEntityRenderer.h \
 headers/TR/DefrEntityShader.h headers/TR/InstancedEntityShader.h \
 headers/TR/StaticEntityRenderer.h headers/TR/DefrTerrainRenderer.h \
 headers/TR/DefrTerrainShader.h headers/TR/DefrSkyboxRenderer.h \
 headers/TR/DefrSkyboxShader.h headers/TR/PlasticWaterRenderer.h \
 headers/TR/PlasticWaterShader.h headers/TR/FFTWaterRenderer.h \
 headers/TR/FFTWaterShader.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/TesseractEngine.h headers/TR/DefferedRenderSystem.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/DefferedShaderW.h \
 headers/TR/TRDisplayManager.h headers/TR/TRFbo.h \
 headers/TR/ParticleRenderer.h headers/TR/ParticleShader.h \
 headers/TR/GaussianBlur.h headers/TR/BlurShader.h \
 headers/TR/BloomCombiner.h headers/TR/BloomShader.h headers/TR/FXAA.h \
 headers/TR/FXAAShader.h headers/TR/FlareRenderer.h \
 headers/TR/FlareShader.h headers/TR/FlareQueryShader.h \
 headers/TR/CurtainRenderer.h headers/TR/CurtainShader.h \
 headers/TP/ThreadPool.hpp headers/TR/TRKeyboard.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/DefferedRenderSystem.cpp -o obj/DefferedRenderSystem.o
obj/DefrSkyboxRenderer.o: \
 src/engine/renderEngine/deffered/skybox/DefrSkyboxRenderer.cpp \
 headers/TR/DefrSkyboxRenderer.h headers/TR/DefrSkyboxShader.h \
 headers/TR/ShaderProgram.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl \
 headers/TR/TRScene.h headers/TR/TRTerrain.h headers/TR/TRLoader.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/TesseractEngine.h \
 headers/TR/DefferedRenderSystem.h headers/TR/DefrEntityRenderer.h \
 headers/TR/DefrEntityShader.h headers/TR/InstancedEntityShader.h \
 headers/TR/StaticEntityRenderer.h headers/TR/DefrTerrainRenderer.h \
 headers/TR/DefrTerrainShader.h headers/TR/PlasticWaterRenderer.h \
 headers/TR/PlasticWaterShader.h headers/TR/FFTWaterRenderer.h \
 headers/TR/FFTWaterShader.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/DefferedShaderW.h \
 headers/TR/TRDisplayManager.h headers/TR/TRFbo.h \
 headers/TR/ParticleRenderer.h headers/TR/ParticleShader.h \
 headers/TR/GaussianBlur.h headers/TR/BlurShader.h \
 headers/TR/BloomCombiner.h headers/TR/BloomShader.h headers/TR/FXAA.h \
 headers/TR/FXAAShader.h headers/TR/FlareRenderer.h \
 headers/TR/FlareShader.h headers/TR/FlareQueryShader.h \
 headers/TR/CurtainRenderer.h headers/TR/CurtainShader.h \
 headers/TP/ThreadPool.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/skybox/DefrSkyboxRenderer.cpp -o obj/DefrSkyboxRenderer.o
obj/DefrSkyboxShader.o: \
 src/engine/renderEngine/deffered/skybox/DefrSkyboxShader.cpp \
 headers/TR/DefrSkyboxShader.h headers/TR/ShaderProgram.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/skybox/DefrSkyboxShader.cpp -o obj/DefrSkyboxShader.o
obj/ParticleRenderer.o: \
 src/engine/renderEngine/deffered/particle/ParticleRenderer.cpp \
 headers/TR/ParticleRenderer.h headers/TR/TRScene.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/ParticleShader.h \
 headers/TR/TesseractEngine.h headers/TR/DefferedRenderSystem.h \
 headers/TR/DefrEntityRenderer.h headers/TR/DefrEntityShader.h \
 headers/TR/InstancedEntityShader.h headers/TR/StaticEntityRenderer.h \
 headers/TR/DefrTerrainRenderer.h headers/TR/DefrTerrainShader.h \
 headers/TR/DefrSkyboxRenderer.h headers/TR/DefrSkyboxShader.h \
 headers/TR/PlasticWaterRenderer.h headers/TR/PlasticWaterShader.h \
 headers/TR/FFTWaterRenderer.h headers/TR/FFTWaterShader.h \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h \
 headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/DefferedShaderW.h \
 headers/TR/TRDisplayManager.h headers/TR/TRFbo.h \
 headers/TR/ParticleRenderer.h headers/TR/GaussianBlur.h \
 headers/TR/BlurShader.h headers/TR/BloomCombiner.h \
 headers/TR/BloomShader.h headers/TR/FXAA.h headers/TR/FXAAShader.h \
 headers/TR/FlareRenderer.h headers/TR/FlareShader.h \
 headers/TR/FlareQueryShader.h headers/TR/CurtainRenderer.h \
 headers/TR/CurtainShader.h headers/TP/ThreadPool.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/particle/ParticleRenderer.cpp -o obj/ParticleRenderer.o
obj/ParticleShader.o: \
 src/engine/renderEngine/deffered/particle/ParticleShader.cpp \
 headers/TR/ParticleShader.h headers/TR/ShaderProgram.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/particle/ParticleShader.cpp -o obj/ParticleShader.o
obj/DefrTerrainShader.o: \
 src/engine/renderEngine/deffered/terrain/DefrTerrainShader.cpp \
 headers/TR/DefrTerrainShader.h headers/TR/ShaderProgram.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/terrain/DefrTerrainShader.cpp -o obj/DefrTerrainShader.o
obj/DefrTerrainRenderer.o: \
 src/engine/renderEngine/deffered/terrain/DefrTerrainRenderer.cpp \
 headers/TR/DefrTerrainRenderer.h headers/TR/DefrTerrainShader.h \
 headers/TR/ShaderProgram.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl \
 headers/TR/TRScene.h headers/TR/TRTerrain.h headers/TR/TRLoader.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/TesseractEngine.h \
 headers/TR/DefferedRenderSystem.h headers/TR/DefrEntityRenderer.h \
 headers/TR/DefrEntityShader.h headers/TR/InstancedEntityShader.h \
 headers/TR/StaticEntityRenderer.h headers/TR/DefrSkyboxRenderer.h \
 headers/TR/DefrSkyboxShader.h headers/TR/PlasticWaterRenderer.h \
 headers/TR/PlasticWaterShader.h headers/TR/FFTWaterRenderer.h \
 headers/TR/FFTWaterShader.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/DefferedShaderW.h \
 headers/TR/TRDisplayManager.h headers/TR/TRFbo.h \
 headers/TR/ParticleRenderer.h headers/TR/ParticleShader.h \
 headers/TR/GaussianBlur.h headers/TR/BlurShader.h \
 headers/TR/BloomCombiner.h headers/TR/BloomShader.h headers/TR/FXAA.h \
 headers/TR/FXAAShader.h headers/TR/FlareRenderer.h \
 headers/TR/FlareShader.h headers/TR/FlareQueryShader.h \
 headers/TR/CurtainRenderer.h headers/TR/CurtainShader.h \
 headers/TP/ThreadPool.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/terrain/DefrTerrainRenderer.cpp -o obj/DefrTerrainRenderer.o
obj/NormalCompShader.o: \
 src/engine/renderEngine/deffered/terrain/normalcomp/NormalCompShader.cpp \
 headers/TR/NormalCompShader.h headers/TR/ShaderProgram.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRHeightmap.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/terrain/normalcomp/NormalCompShader.cpp -o obj/NormalCompShader.o
obj/NormalCompGen.o: \
 src/engine/renderEngine/deffered/terrain/normalcomp/NormalCompGen.cpp \
 headers/TR/NormalCompGen.h headers/TR/TRHeightmap.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/TRTexture.h \
 headers/TR/NormalCompShader.h headers/TR/ShaderProgram.h \
 include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/terrain/normalcomp/NormalCompGen.cpp -o obj/NormalCompGen.o
obj/FFTWaterShader.o: \
 src/engine/renderEngine/deffered/fftwater/FFTWaterShader.cpp \
 headers/TR/FFTWaterShader.h headers/TR/ShaderProgram.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/transform.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/fftwater/FFTWaterShader.cpp -o obj/FFTWaterShader.o
obj/FFTWaterRenderer.o: \
 src/engine/renderEngine/deffered/fftwater/FFTWaterRenderer.cpp \
 headers/TR/FFTWaterRenderer.h headers/TR/TRScene.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/FFTWaterShader.h \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/fftwater/FFTWaterRenderer.cpp -o obj/FFTWaterRenderer.o
obj/DefrEntityShader.o: \
 src/engine/renderEngine/deffered/entity/DefrEntityShader.cpp \
 headers/TR/DefrEntityShader.h headers/TR/ShaderProgram.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/entity/DefrEntityShader.cpp -o obj/DefrEntityShader.o
obj/DefrEntityRenderer.o: \
 src/engine/renderEngine/deffered/entity/DefrEntityRenderer.cpp \
 headers/TR/DefrEntityRenderer.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TexturedModel.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 headers/TR/ModelSkin.h headers/TR/TRTexture.h \
 headers/TR/DefrEntityShader.h headers/TR/ShaderProgram.h \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl \
 headers/TR/InstancedEntityShader.h headers/TR/TRScene.h \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/MeshData.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TRStaticBatch.h headers/TR/TesseractEngine.h \
 headers/TR/DefferedRenderSystem.h headers/TR/StaticEntityRenderer.h \
 headers/TR/DefrTerrainRenderer.h headers/TR/DefrTerrainShader.h \
 headers/TR/DefrSkyboxRenderer.h headers/TR/DefrSkyboxShader.h \
 headers/TR/PlasticWaterRenderer.h headers/TR/PlasticWaterShader.h \
 headers/TR/FFTWaterRenderer.h headers/TR/FFTWaterShader.h \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h \
 headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/DefferedShaderW.h \
 headers/TR/TRDisplayManager.h headers/TR/TRFbo.h \
 headers/TR/ParticleRenderer.h headers/TR/ParticleShader.h \
 headers/TR/GaussianBlur.h headers/TR/BlurShader.h \
 headers/TR/BloomCombiner.h headers/TR/BloomShader.h headers/TR/FXAA.h \
 headers/TR/FXAAShader.h headers/TR/FlareRenderer.h \
 headers/TR/FlareShader.h headers/TR/FlareQueryShader.h \
 headers/TR/CurtainRenderer.h headers/TR/CurtainShader.h \
 headers/TP/ThreadPool.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/entity/DefrEntityRenderer.cpp -o obj/DefrEntityRenderer.o
obj/InstancedEntityShader.o: \
 src/engine/renderEngine/deffered/entity/InstancedEntityShader.cpp \
 headers/TR/InstancedEntityShader.h headers/TR/ShaderProgram.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/entity/InstancedEntityShader.cpp -o obj/InstancedEntityShader.o
obj/StaticEntityRenderer.o: \
 src/engine/renderEngine/deffered/entity/static/StaticEntityRenderer.cpp \
 headers/TR/StaticEntityRenderer.h headers/TR/InstancedEntityShader.h \
 headers/TR/ShaderProgram.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRScene.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRTexture.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/TesseractEngine.h \
 headers/TR/DefferedRenderSystem.h headers/TR/DefrEntityRenderer.h \
 headers/TR/DefrEntityShader.h headers/TR/DefrTerrainRenderer.h \
 headers/TR/DefrTerrainShader.h headers/TR/DefrSkyboxRenderer.h \
 headers/TR/DefrSkyboxShader.h headers/TR/PlasticWaterRenderer.h \
 headers/TR/PlasticWaterShader.h headers/TR/FFTWaterRenderer.h \
 headers/TR/FFTWaterShader.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/DefferedShaderW.h \
 headers/TR/TRDisplayManager.h headers/TR/TRFbo.h \
 headers/TR/ParticleRenderer.h headers/TR/ParticleShader.h \
 headers/TR/GaussianBlur.h headers/TR/BlurShader.h \
 headers/TR/BloomCombiner.h headers/TR/BloomShader.h headers/TR/FXAA.h \
 headers/TR/FXAAShader.h headers/TR/FlareRenderer.h \
 headers/TR/FlareShader.h headers/TR/FlareQueryShader.h \
 headers/TR/CurtainRenderer.h headers/TR/CurtainShader.h \
 headers/TP/ThreadPool.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/entity/static/StaticEntityRenderer.cpp -o obj/StaticEntityRenderer.o
obj/PlasticWaterRenderer.o: \
 src/engine/renderEngine/deffered/water/PlasticWaterRenderer.cpp \
 headers/TR/PlasticWaterRenderer.h headers/TR/PlasticWaterShader.h \
 headers/TR/ShaderProgram.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRScene.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRTexture.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/TesseractEngine.h \
 headers/TR/DefferedRenderSystem.h headers/TR/DefrEntityRenderer.h \
 headers/TR/DefrEntityShader.h headers/TR/InstancedEntityShader.h \
 headers/TR/StaticEntityRenderer.h headers/TR/DefrTerrainRenderer.h \
 headers/TR/DefrTerrainShader.h headers/TR/DefrSkyboxRenderer.h \
 headers/TR/DefrSkyboxShader.h headers/TR/FFTWaterRenderer.h \
 headers/TR/FFTWaterShader.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/DefferedShaderW.h \
 headers/TR/TRDisplayManager.h headers/TR/TRFbo.h \
 headers/TR/ParticleRenderer.h headers/TR/ParticleShader.h \
 headers/TR/GaussianBlur.h headers/TR/BlurShader.h \
 headers/TR/BloomCombiner.h headers/TR/BloomShader.h headers/TR/FXAA.h \
 headers/TR/FXAAShader.h headers/TR/FlareRenderer.h \
 headers/TR/FlareShader.h headers/TR/FlareQueryShader.h \
 headers/TR/CurtainRenderer.h headers/TR/CurtainShader.h \
 headers/TP/ThreadPool.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/water/PlasticWaterRenderer.cpp -o obj/PlasticWaterRenderer.o
obj/PlasticWaterShader.o: \
 src/engine/renderEngine/deffered/water/PlasticWaterShader.cpp \
 headers/TR/PlasticWaterShader.h headers/TR/ShaderProgram.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRScene.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRTexture.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/water/PlasticWaterShader.cpp -o obj/PlasticWaterShader.o
obj/SunRenderer.o: src/engine/renderEngine/deffered/sun/SunRenderer.cpp \
 headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/ShaderProgram.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRScene.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRTexture.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/sun/SunRenderer.cpp -o obj/SunRenderer.o
obj/SunShader.o: src/engine/renderEngine/deffered/sun/SunShader.cpp \
 headers/TR/SunShader.h headers/TR/ShaderProgram.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRScene.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRTexture.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/renderEngine/deffered/sun/SunShader.cpp -o obj/SunShader.o
obj/TRAudioSource.o: src/engine/audio/TRAudioSource.cpp \
 headers/TR/TRAudioSource.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/audio/TRAudioSource.cpp -o obj/TRAudioSource.o
obj/TRAudio.o: src/engine/audio/TRAudio.cpp headers/TR/TRAudio.h \
 include/AL/alc.h include/AL/al.h headers/TR/TRStreamAudio.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/audio/TRAudio.cpp -o obj/TRAudio.o
obj/TRStreamAudio.o: src/engine/audio/TRStreamAudio.cpp \
 headers/TR/TRStreamAudio.h include/AL/al.h headers/TR/TRAudio.h \
 include/AL/alc.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/audio/TRStreamAudio.cpp -o obj/TRStreamAudio.o
obj/imgui_demo.o: src/engine/imgui/imgui_demo.cpp include/imgui/imgui.h \
 include/imgui/imconfig.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/imgui/imgui_demo.cpp -o obj/imgui_demo.o
obj/imgui_draw.o: src/engine/imgui/imgui_draw.cpp include/imgui/imgui.h \
 include/imgui/imconfig.h include/imgui/imgui_internal.h \
 include/imgui/imstb_textedit.h include/imgui/imstb_rectpack.h \
 include/imgui/imstb_truetype.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/imgui/imgui_draw.cpp -o obj/imgui_draw.o
obj/imgui.o: src/engine/imgui/imgui.cpp include/imgui/imgui.h \
 include/imgui/imconfig.h include/imgui/imgui_internal.h \
 include/imgui/imstb_textedit.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/imgui/imgui.cpp -o obj/imgui.o
obj/imgui_widgets.o: src/engine/imgui/imgui_widgets.cpp \
 include/imgui/imgui.h include/imgui/imconfig.h \
 include/imgui/imgui_internal.h include/imgui/imstb_textedit.h \
 include/imgui/imstb_textedit.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/imgui/imgui_widgets.cpp -o obj/imgui_widgets.o
obj/imgui_impl_opengl3.o: src/engine/imgui/special/imgui_impl_opengl3.cpp \
 include/imgui/imgui.h include/imgui/imconfig.h \
 include/imgui/imgui_impl_opengl3.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/imgui/special/imgui_impl_opengl3.cpp -o obj/imgui_impl_opengl3.o
obj/imgui_impl_glfw.o: src/engine/imgui/special/imgui_impl_glfw.cpp \
 include/imgui/imgui.h include/imgui/imconfig.h \
 include/imgui/imgui_impl_glfw.h include/GLFW/glfw3.h include/GL/gl.h \
 include/GL/glext.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/imgui/special/imgui_impl_glfw.cpp -o obj/imgui_impl_glfw.o
obj/FXAAShader.o: src/engine/post/fxaa/FXAAShader.cpp \
 headers/TR/FXAAShader.h headers/TR/ShaderProgram.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/post/fxaa/FXAAShader.cpp -o obj/FXAAShader.o
obj/FXAA.o: src/engine/post/fxaa/FXAA.cpp headers/TR/FXAA.h \
 headers/TR/FXAAShader.h headers/TR/ShaderProgram.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRTexture.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/post/fxaa/FXAA.cpp -o obj/FXAA.o
obj/BloomCombiner.o: src/engine/post/bloom/BloomCombiner.cpp \
 headers/TR/BloomCombiner.h headers/TR/BloomShader.h \
 headers/TR/ShaderProgram.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRTexture.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/post/bloom/BloomCombiner.cpp -o obj/BloomCombiner.o
obj/BloomShader.o: src/engine/post/bloom/shader/BloomShader.cpp \
 headers/TR/BloomShader.h headers/TR/ShaderProgram.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/post/bloom/shader/BloomShader.cpp -o obj/BloomShader.o
obj/DefferedProcessingW.o: \
 src/engine/post/deffered_water/DefferedProcessingW.cpp \
 headers/TR/DefferedProcessingW.h headers/TR/TRScene.h \
 include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/DefferedShaderW.h \
 headers/TR/TesseractEngine.h headers/TR/DefferedRenderSystem.h \
 headers/TR/DefrEntityRenderer.h headers/TR/DefrEntityShader.h \
 headers/TR/InstancedEntityShader.h headers/TR/StaticEntityRenderer.h \
 headers/TR/DefrTerrainRenderer.h headers/TR/DefrTerrainShader.h \
 headers/TR/DefrSkyboxRenderer.h headers/TR/DefrSkyboxShader.h \
 headers/TR/PlasticWaterRenderer.h headers/TR/PlasticWaterShader.h \
 headers/TR/FFTWaterRenderer.h headers/TR/FFTWaterShader.h \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h \
 headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/TRDisplayManager.h \
 headers/TR/TRFbo.h headers/TR/ParticleRenderer.h \
 headers/TR/ParticleShader.h headers/TR/GaussianBlur.h \
 headers/TR/BlurShader.h headers/TR/BloomCombiner.h \
 headers/TR/BloomShader.h headers/TR/FXAA.h headers/TR/FXAAShader.h \
 headers/TR/FlareRenderer.h headers/TR/FlareShader.h \
 headers/TR/FlareQueryShader.h headers/TR/CurtainRenderer.h \
 headers/TR/CurtainShader.h headers/TP/ThreadPool.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/post/deffered_water/DefferedProcessingW.cpp -o obj/DefferedProcessingW.o
obj/DefferedShaderW.o: \
 src/engine/post/deffered_water/shader/DefferedShaderW.cpp \
 headers/TR/DefferedShaderW.h headers/TR/ShaderProgram.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRScene.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRTexture.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/post/deffered_water/shader/DefferedShaderW.cpp -o obj/DefferedShaderW.o
obj/DefferedProcessing.o: src/engine/post/deffered/DefferedProcessing.cpp \
 headers/TR/DefferedProcessing.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/TRFbo.h \
 headers/TR/TRTexture.h headers/TR/DefferedShader.h \
 headers/TR/ShaderProgram.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/fwd.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/setup.hpp \
 include/glm/detail/type_half.inl include/glm/integer.hpp \
 include/glm/detail/func_integer.inl include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRScene.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/MeshData.h \
 headers/TR/TRHeightmap.h headers/TR/GLQuery.h headers/TR/TRSkybox.h \
 headers/TR/ParticleManager.h headers/TR/TRParticle.h \
 headers/TR/TRPlasticWater.h headers/TR/FFTWater.h headers/TR/FFTCtx.h \
 headers/TR/FreqDomain.h headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/Butterflies.h headers/TR/ButterflyShader.h \
 headers/TR/InversionShader.h headers/TR/WaterNormals.h \
 headers/TR/TRLensFlare.h headers/TR/GroupEntity.h \
 headers/TR/TRSceneEntity.h headers/TR/TexturedModel.h \
 headers/TR/ModelSkin.h headers/TR/TRStaticBatch.h \
 headers/TR/TesseractEngine.h headers/TR/DefferedRenderSystem.h \
 headers/TR/DefrEntityRenderer.h headers/TR/DefrEntityShader.h \
 headers/TR/InstancedEntityShader.h headers/TR/StaticEntityRenderer.h \
 headers/TR/DefrTerrainRenderer.h headers/TR/DefrTerrainShader.h \
 headers/TR/DefrSkyboxRenderer.h headers/TR/DefrSkyboxShader.h \
 headers/TR/PlasticWaterRenderer.h headers/TR/PlasticWaterShader.h \
 headers/TR/FFTWaterRenderer.h headers/TR/FFTWaterShader.h \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h \
 headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedProcessingW.h \
 headers/TR/DefferedShaderW.h headers/TR/TRDisplayManager.h \
 headers/TR/TRFbo.h headers/TR/ParticleRenderer.h \
 headers/TR/ParticleShader.h headers/TR/GaussianBlur.h \
 headers/TR/BlurShader.h headers/TR/BloomCombiner.h \
 headers/TR/BloomShader.h headers/TR/FXAA.h headers/TR/FXAAShader.h \
 headers/TR/FlareRenderer.h headers/TR/FlareShader.h \
 headers/TR/FlareQueryShader.h headers/TR/CurtainRenderer.h \
 headers/TR/CurtainShader.h headers/TP/ThreadPool.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/post/deffered/DefferedProcessing.cpp -o obj/DefferedProcessing.o
obj/DefferedShader.o: src/engine/post/deffered/shader/DefferedShader.cpp \
 headers/TR/DefferedShader.h headers/TR/ShaderProgram.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRScene.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/transform.inl \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRTexture.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/post/deffered/shader/DefferedShader.cpp -o obj/DefferedShader.o
obj/GaussianBlur.o: src/engine/post/gaussianblur/GaussianBlur.cpp \
 headers/TR/GaussianBlur.h headers/TR/BlurShader.h \
 headers/TR/ShaderProgram.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h headers/TR/TRTexture.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/post/gaussianblur/GaussianBlur.cpp -o obj/GaussianBlur.o
obj/BlurShader.o: src/engine/post/gaussianblur/shader/BlurShader.cpp \
 headers/TR/BlurShader.h headers/TR/ShaderProgram.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/post/gaussianblur/shader/BlurShader.cpp -o obj/BlurShader.o
obj/ShaderProgram.o: src/engine/resourceManagement/ShaderProgram.cpp \
 headers/TR/ShaderProgram.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/resourceManagement/ShaderProgram.cpp -o obj/ShaderProgram.o
obj/OBJParser.o: src/engine/resourceManagement/OBJParser.cpp \
 headers/TR/OBJParser.h headers/TR/MeshData.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp \
 include/tinyobj/tiny_obj_loader.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/fwd.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/setup.hpp \
 include/glm/detail/type_half.inl include/glm/integer.hpp \
 include/glm/detail/func_integer.inl include/glm/gtx/hash.hpp \
 include/glm/gtx/../gtc/vec1.hpp \
 include/glm/gtx/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtx/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtx/../gtc/../ext/vector_float1.hpp \
 include/glm/gtx/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtx/../gtc/../ext/vector_double1.hpp \
 include/glm/gtx/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtx/../gtc/../ext/vector_int1.hpp \
 include/glm/gtx/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtx/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtx/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtx/../gtc/quaternion.hpp \
 include/glm/gtx/../gtc/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../gtc/constants.inl \
 include/glm/gtx/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtx/../gtc/../ext/vector_relational.hpp \
 include/glm/gtx/../gtc/../ext/vector_relational.inl \
 include/glm/gtx/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtx/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtx/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtx/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtx/../gtc/../ext/quaternion_common.inl \
 include/glm/gtx/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtx/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtx/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtx/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtx/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtx/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtx/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtx/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtx/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtx/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtx/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtx/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtx/../gtc/quaternion.inl include/glm/gtx/../gtc/epsilon.hpp \
 include/glm/gtx/../gtc/../detail/setup.hpp \
 include/glm/gtx/../gtc/epsilon.inl \
 include/glm/gtx/../gtx/dual_quaternion.hpp \
 include/glm/gtx/../gtx/dual_quaternion.inl include/glm/gtx/hash.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/resourceManagement/OBJParser.cpp -o obj/OBJParser.o
obj/TRLoader.o: src/engine/resourceManagement/TRLoader.cpp \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h include/STB/stb_image.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/resourceManagement/TRLoader.cpp -o obj/TRLoader.o
obj/TRFbo.o: src/engine/resourceManagement/TRFbo.cpp headers/TR/TRFbo.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/TRTexture.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/MeshData.h \
 headers/TR/TRHeightmap.h headers/TR/GLQuery.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/resourceManagement/TRFbo.cpp -o obj/TRFbo.o
obj/TRTexture.o: src/engine/resourceManagement/dataStructs/TRTexture.cpp \
 headers/TR/TRTexture.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/resourceManagement/dataStructs/TRTexture.cpp -o obj/TRTexture.o
obj/ModelSkin.o: src/engine/resourceManagement/dataStructs/ModelSkin.cpp \
 headers/TR/ModelSkin.h headers/TR/TRTexture.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/resourceManagement/dataStructs/ModelSkin.cpp -o obj/ModelSkin.o
obj/MeshData.o: src/engine/resourceManagement/dataStructs/MeshData.cpp \
 headers/TR/MeshData.h headers/TR/BoundingVolume.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/resourceManagement/dataStructs/MeshData.cpp -o obj/MeshData.o
obj/TexturedModel.o: \
 src/engine/resourceManagement/dataStructs/TexturedModel.cpp \
 headers/TR/TexturedModel.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/resourceManagement/dataStructs/TexturedModel.cpp -o obj/TexturedModel.o
obj/RawModel.o: src/engine/resourceManagement/dataStructs/RawModel.cpp \
 headers/TR/RawModel.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/BoundingVolume.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/resourceManagement/dataStructs/RawModel.cpp -o obj/RawModel.o
obj/TRScene.o: src/engine/scene/TRScene.cpp headers/TR/TRScene.h \
 include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/TRMath.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/TRScene.cpp -o obj/TRScene.o
obj/TRSkybox.o: src/engine/scene/skybox/TRSkybox.cpp \
 headers/TR/TRSkybox.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/TRTexture.h \
 headers/TR/TRLoader.h headers/TR/MeshData.h headers/TR/TRHeightmap.h \
 headers/TR/TRFbo.h headers/TR/GLQuery.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/skybox/TRSkybox.cpp -o obj/TRSkybox.o
obj/TRTerrain.o: src/engine/scene/terrain/TRTerrain.cpp \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../glm.hpp include/glm/gtx/../detail/_fixes.hpp \
 include/glm/gtx/../detail/setup.hpp include/glm/gtx/../fwd.hpp \
 include/glm/gtx/../vec2.hpp include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/NormalCompGen.h \
 headers/TR/TRMath.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/terrain/TRTerrain.cpp -o obj/TRTerrain.o
obj/ParticleManager.o: src/engine/scene/particles/ParticleManager.cpp \
 headers/TR/ParticleManager.h headers/TR/TRParticle.h \
 headers/TR/TRTexture.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/mat4x4.hpp \
 include/glm/./ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../vec4.hpp \
 include/glm/./ext/../detail/.././ext/vector_bool4.hpp \
 include/glm/./ext/../detail/.././ext/vector_bool4_precision.hpp \
 include/glm/./ext/../detail/.././ext/vector_float4.hpp \
 include/glm/./ext/../detail/.././ext/vector_float4_precision.hpp \
 include/glm/./ext/../detail/.././ext/vector_double4.hpp \
 include/glm/./ext/../detail/.././ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/.././ext/../detail/setup.hpp \
 include/glm/./ext/../detail/.././ext/vector_int4.hpp \
 include/glm/./ext/../detail/.././ext/vector_int4_precision.hpp \
 include/glm/./ext/../detail/.././ext/vector_uint4.hpp \
 include/glm/./ext/../detail/.././ext/vector_uint4_precision.hpp \
 include/glm/./ext/../detail/../mat2x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x2_precision.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/matrix_float4x4.hpp \
 include/glm/./ext/matrix_float4x4_precision.hpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/particles/ParticleManager.cpp -o obj/ParticleManager.o
obj/TRParticle.o: src/engine/scene/particles/TRParticle.cpp \
 headers/TR/TRParticle.h headers/TR/TRTexture.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/mat4x4.hpp \
 include/glm/./ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../vec4.hpp \
 include/glm/./ext/../detail/.././ext/vector_bool4.hpp \
 include/glm/./ext/../detail/.././ext/vector_bool4_precision.hpp \
 include/glm/./ext/../detail/.././ext/vector_float4.hpp \
 include/glm/./ext/../detail/.././ext/vector_float4_precision.hpp \
 include/glm/./ext/../detail/.././ext/vector_double4.hpp \
 include/glm/./ext/../detail/.././ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/.././ext/../detail/setup.hpp \
 include/glm/./ext/../detail/.././ext/vector_int4.hpp \
 include/glm/./ext/../detail/.././ext/vector_int4_precision.hpp \
 include/glm/./ext/../detail/.././ext/vector_uint4.hpp \
 include/glm/./ext/../detail/.././ext/vector_uint4_precision.hpp \
 include/glm/./ext/../detail/../mat2x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x2_precision.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/matrix_float4x4.hpp \
 include/glm/./ext/matrix_float4x4_precision.hpp \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/particles/TRParticle.cpp -o obj/TRParticle.o
obj/RogueCamera.o: src/engine/scene/camera/RogueCamera.cpp \
 headers/TR/RogueCamera.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/../simd/platform.h include/glm/gtx/../fwd.hpp \
 include/glm/gtx/../detail/qualifier.hpp \
 include/glm/gtx/../detail/setup.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/../detail/./compute_vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/./setup.hpp \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec3.hpp include/glm/gtx/.././ext/vector_bool3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.inl \
 include/glm/gtx/.././ext/vector_bool3_precision.hpp \
 include/glm/gtx/.././ext/vector_float3.hpp \
 include/glm/gtx/.././ext/vector_float3_precision.hpp \
 include/glm/gtx/.././ext/vector_double3.hpp \
 include/glm/gtx/.././ext/vector_double3_precision.hpp \
 include/glm/gtx/.././ext/vector_int3.hpp \
 include/glm/gtx/.././ext/vector_int3_precision.hpp \
 include/glm/gtx/.././ext/vector_uint3.hpp \
 include/glm/gtx/.././ext/vector_uint3_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRKeyboard.h \
 headers/TR/TRDisplayManager.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/camera/RogueCamera.cpp -o obj/RogueCamera.o
obj/TRCamera.o: src/engine/scene/camera/TRCamera.cpp \
 headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../glm.hpp include/glm/gtx/../detail/_fixes.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/../simd/platform.h include/glm/gtx/../fwd.hpp \
 include/glm/gtx/../detail/qualifier.hpp \
 include/glm/gtx/../detail/setup.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/../detail/./compute_vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/./setup.hpp \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec3.hpp include/glm/gtx/.././ext/vector_bool3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.inl \
 include/glm/gtx/.././ext/vector_bool3_precision.hpp \
 include/glm/gtx/.././ext/vector_float3.hpp \
 include/glm/gtx/.././ext/vector_float3_precision.hpp \
 include/glm/gtx/.././ext/vector_double3.hpp \
 include/glm/gtx/.././ext/vector_double3_precision.hpp \
 include/glm/gtx/.././ext/vector_int3.hpp \
 include/glm/gtx/.././ext/vector_int3_precision.hpp \
 include/glm/gtx/.././ext/vector_uint3.hpp \
 include/glm/gtx/.././ext/vector_uint3_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRDisplayManager.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h include/GLFW/glfw3.h \
 headers/TR/TRRay.h headers/TR/TRTerrain.h headers/TR/TRLoader.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/camera/TRCamera.cpp -o obj/TRCamera.o
obj/TRPlasticWater.o: src/engine/scene/water/TRPlasticWater.cpp \
 headers/TR/TRPlasticWater.h headers/TR/TRTexture.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/water/TRPlasticWater.cpp -o obj/TRPlasticWater.o
obj/FFTCtx.o: src/engine/scene/water/fft/FFTCtx.cpp headers/TR/FFTCtx.h \
 include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/water/fft/FFTCtx.cpp -o obj/FFTCtx.o
obj/FFTWater.o: src/engine/scene/water/fft/FFTWater.cpp \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/TRTexture.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/TRLoader.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/FreqShader.h headers/TR/ShaderProgram.h \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h include/imgui/imgui.h include/imgui/imconfig.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/water/fft/FFTWater.cpp -o obj/FFTWater.o
obj/Butterflies.o: src/engine/scene/water/fft/butterfly/Butterflies.cpp \
 headers/TR/Butterflies.h headers/TR/FFTPreComp.h headers/TR/TRTexture.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h headers/TR/FFTCtx.h \
 include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/FreqDomain.h headers/TR/TRLoader.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/FreqShader.h headers/TR/ShaderProgram.h \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/ButterflyShader.h \
 headers/TR/InversionShader.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/water/fft/butterfly/Butterflies.cpp -o obj/Butterflies.o
obj/ButterflyShader.o: \
 src/engine/scene/water/fft/butterfly/ButterflyShader.cpp \
 headers/TR/ButterflyShader.h headers/TR/ShaderProgram.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/water/fft/butterfly/ButterflyShader.cpp -o obj/ButterflyShader.o
obj/WaterNormals.o: src/engine/scene/water/fft/normals/WaterNormals.cpp \
 headers/TR/WaterNormals.h headers/TR/ShaderProgram.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRTexture.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/water/fft/normals/WaterNormals.cpp -o obj/WaterNormals.o
obj/FFTPreComp.o: src/engine/scene/water/fft/precomp/FFTPreComp.cpp \
 headers/TR/FFTPreComp.h headers/TR/TRTexture.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/FFTCtx.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRLoader.h headers/TR/RawModel.h headers/TR/BoundingVolume.h \
 headers/TR/MeshData.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/water/fft/precomp/FFTPreComp.cpp -o obj/FFTPreComp.o
obj/InversionShader.o: \
 src/engine/scene/water/fft/inversion/InversionShader.cpp \
 headers/TR/InversionShader.h headers/TR/ShaderProgram.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/water/fft/inversion/InversionShader.cpp -o obj/InversionShader.o
obj/FreqShader.o: src/engine/scene/water/fft/freqdmn/FreqShader.cpp \
 headers/TR/FreqShader.h headers/TR/ShaderProgram.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/water/fft/freqdmn/FreqShader.cpp -o obj/FreqShader.o
obj/FreqDomain.o: src/engine/scene/water/fft/freqdmn/FreqDomain.cpp \
 headers/TR/FreqDomain.h headers/TR/FFTPreComp.h headers/TR/TRTexture.h \
 include/GL/glew.h include/GL/glu.h include/GL/gl.h headers/TR/FFTCtx.h \
 include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRLoader.h headers/TR/RawModel.h headers/TR/BoundingVolume.h \
 headers/TR/MeshData.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/FreqShader.h headers/TR/ShaderProgram.h \
 include/glm/gtc/type_ptr.hpp include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../gtc/constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/scalar_constants.inl \
 include/glm/gtc/../gtc/../gtc/constants.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_projection.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtc/../gtc/../gtc/../ext/matrix_transform.inl \
 include/glm/gtc/../gtc/../gtc/matrix_transform.inl \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/water/fft/freqdmn/FreqDomain.cpp -o obj/FreqDomain.o
obj/GroupEntity.o: src/engine/scene/entities/GroupEntity.cpp \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/entities/GroupEntity.cpp -o obj/GroupEntity.o
obj/TRSceneEntity.o: src/engine/scene/entities/TRSceneEntity.cpp \
 headers/TR/TRSceneEntity.h headers/TR/TexturedModel.h \
 headers/TR/RawModel.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/BoundingVolume.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/entities/TRSceneEntity.cpp -o obj/TRSceneEntity.o
obj/SimpleGeometry.o: src/engine/scene/entities/SimpleGeometry.cpp \
 headers/TR/SimpleGeometry.h headers/TR/TRSpatialEntity.h \
 headers/TR/TRSceneEntity.h headers/TR/TexturedModel.h \
 headers/TR/RawModel.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/BoundingVolume.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRMath.h \
 headers/TR/DynamicBounds.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/entities/SimpleGeometry.cpp -o obj/SimpleGeometry.o
obj/TRSpatialEntity.o: src/engine/scene/entities/TRSpatialEntity.cpp \
 headers/TR/TRSpatialEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRMath.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/entities/TRSpatialEntity.cpp -o obj/TRSpatialEntity.o
obj/TRStaticBatch.o: src/engine/scene/entities/static/TRStaticBatch.cpp \
 headers/TR/TRStaticBatch.h include/GL/glew.h include/GL/glu.h \
 include/GL/gl.h headers/TR/MeshData.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/TexturedModel.h \
 headers/TR/RawModel.h headers/TR/ModelSkin.h headers/TR/TRTexture.h \
 headers/TR/TRLoader.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRMath.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../glm.hpp include/glm/gtx/../detail/_fixes.hpp \
 include/glm/gtx/../detail/setup.hpp include/glm/gtx/../fwd.hpp \
 include/glm/gtx/../vec2.hpp include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/engine/scene/entities/static/TRStaticBatch.cpp -o obj/TRStaticBatch.o
obj/disabled.o: src/stormfront/disabled.cpp

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/disabled.cpp -o obj/disabled.o
obj/DevMode.o: src/stormfront/util/DevMode.cpp headers/SF/DevMode.h \
 headers/TR/TRScene.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/SF/SFResources.h headers/TR/TRAudio.h \
 include/AL/alc.h include/AL/al.h headers/TR/TRStreamAudio.h \
 headers/TR/TRAudioSource.h include/imgui/imgui.h \
 include/imgui/imconfig.h headers/TR/TRRay.h headers/TR/TRKeyboard.h \
 headers/TR/TRMouse.h headers/TR/TRDisplayManager.h include/GLFW/glfw3.h \
 headers/SF/PathData.h headers/TR/LeafGeometry.h \
 headers/TR/TRSpatialEntity.h headers/TR/TRMath.h \
 headers/TR/DynamicBounds.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/util/DevMode.cpp -o obj/DevMode.o
obj/SFPhysics.o: src/stormfront/game/SFPhysics.cpp headers/SF/SFPhysics.h \
 headers/TR/TRScene.h include/glm/glm.hpp include/glm/detail/_fixes.hpp \
 include/glm/detail/setup.hpp include/glm/detail/../simd/platform.h \
 include/glm/fwd.hpp include/glm/detail/qualifier.hpp \
 include/glm/detail/setup.hpp include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/SF/SFPlayer.h \
 headers/TR/TRSpatialEntity.h headers/TR/TRMath.h \
 headers/TR/LeafGeometry.h headers/TR/DynamicBounds.h \
 headers/TR/TRAudioSource.h headers/SF/SFResources.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/SF/SFCamera.h \
 headers/SF/GunnerCamera.h headers/SF/SFMissile.h headers/SF/AOES.h \
 headers/SF/BinaryUtil.h headers/SF/EnemyMissile.h \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h headers/SF/SFEnemy.h \
 headers/SF/SFPath.h headers/SF/PathData.h headers/SF/Blueprint.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/game/SFPhysics.cpp -o obj/SFPhysics.o
obj/StormFrontGame.o: src/stormfront/game/StormFrontGame.cpp \
 headers/SF/StormFrontGame.h headers/TR/TesseractEngine.h \
 headers/TR/DefferedRenderSystem.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRScene.h headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/DefrEntityRenderer.h \
 headers/TR/DefrEntityShader.h headers/TR/InstancedEntityShader.h \
 headers/TR/StaticEntityRenderer.h headers/TR/DefrTerrainRenderer.h \
 headers/TR/DefrTerrainShader.h headers/TR/DefrSkyboxRenderer.h \
 headers/TR/DefrSkyboxShader.h headers/TR/PlasticWaterRenderer.h \
 headers/TR/PlasticWaterShader.h headers/TR/FFTWaterRenderer.h \
 headers/TR/FFTWaterShader.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/DefferedShaderW.h \
 headers/TR/TRDisplayManager.h headers/TR/TRFbo.h \
 headers/TR/ParticleRenderer.h headers/TR/ParticleShader.h \
 headers/TR/GaussianBlur.h headers/TR/BlurShader.h \
 headers/TR/BloomCombiner.h headers/TR/BloomShader.h headers/TR/FXAA.h \
 headers/TR/FXAAShader.h headers/TR/FlareRenderer.h \
 headers/TR/FlareShader.h headers/TR/FlareQueryShader.h \
 headers/TR/CurtainRenderer.h headers/TR/CurtainShader.h \
 headers/TP/ThreadPool.hpp headers/TR/RogueCamera.h \
 headers/SF/SFResources.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/TR/TRAudioSource.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/SF/SFPlayer.h \
 headers/TR/TRSpatialEntity.h headers/TR/TRMath.h \
 headers/TR/LeafGeometry.h headers/TR/DynamicBounds.h \
 headers/SF/SFCamera.h headers/SF/GunnerCamera.h headers/SF/SFPhysics.h \
 headers/SF/AOES.h headers/SF/EnemyMissile.h headers/SF/SFMissile.h \
 headers/SF/BinaryUtil.h headers/SF/GameState.h headers/SF/SFEnemy.h \
 headers/SF/SFPath.h headers/SF/PathData.h headers/SF/Blueprint.h \
 headers/SF/SFMortar.h headers/SF/SFPhaser.h headers/SF/MenuTypes.h \
 headers/TR/SimpleGeometry.h headers/TR/TRKeyboard.h headers/TR/TRRay.h \
 headers/SF/DevMode.h headers/TR/OBJParser.h headers/SF/MainMenu.h \
 headers/SF/Settings.h headers/SF/PauseMenu.h headers/TR/TRUtil.h \
 include/glm/gtx/string_cast.hpp \
 include/glm/gtx/../gtc/type_precision.hpp \
 include/glm/gtx/../gtc/../ext/scalar_int_sized.hpp \
 include/glm/gtx/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/scalar_uint_sized.hpp \
 include/glm/gtx/../gtc/type_precision.inl \
 include/glm/gtx/../gtx/dual_quaternion.hpp \
 include/glm/gtx/../gtx/dual_quaternion.inl \
 include/glm/gtx/string_cast.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/game/StormFrontGame.cpp -o obj/StormFrontGame.o
obj/SFResources.o: src/stormfront/game/SFResources.cpp \
 headers/SF/SFResources.h headers/TR/TRTexture.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/TRParticle.h \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/mat4x4.hpp \
 include/glm/./ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../vec4.hpp \
 include/glm/./ext/../detail/.././ext/vector_bool4.hpp \
 include/glm/./ext/../detail/.././ext/vector_bool4_precision.hpp \
 include/glm/./ext/../detail/.././ext/vector_float4.hpp \
 include/glm/./ext/../detail/.././ext/vector_float4_precision.hpp \
 include/glm/./ext/../detail/.././ext/vector_double4.hpp \
 include/glm/./ext/../detail/.././ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/.././ext/../detail/setup.hpp \
 include/glm/./ext/../detail/.././ext/vector_int4.hpp \
 include/glm/./ext/../detail/.././ext/vector_int4_precision.hpp \
 include/glm/./ext/../detail/.././ext/vector_uint4.hpp \
 include/glm/./ext/../detail/.././ext/vector_uint4_precision.hpp \
 include/glm/./ext/../detail/../mat2x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x2_precision.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/matrix_float4x4.hpp \
 include/glm/./ext/matrix_float4x4_precision.hpp \
 headers/TR/TexturedModel.h headers/TR/RawModel.h \
 headers/TR/BoundingVolume.h headers/TR/ModelSkin.h headers/TR/TRAudio.h \
 include/AL/alc.h include/AL/al.h headers/TR/TRStreamAudio.h \
 headers/TR/TRAudioSource.h include/imgui/imgui.h \
 include/imgui/imconfig.h headers/TR/TRLoader.h headers/TR/MeshData.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/OBJParser.h include/imgui/imgui_impl_opengl3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/game/SFResources.cpp -o obj/SFResources.o
obj/SFPhaser.o: src/stormfront/game/turrets/SFPhaser.cpp \
 headers/SF/SFPhaser.h headers/TR/TRSpatialEntity.h \
 headers/TR/TRSceneEntity.h headers/TR/TexturedModel.h \
 headers/TR/RawModel.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/BoundingVolume.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRMath.h \
 headers/TR/LeafGeometry.h headers/TR/DynamicBounds.h \
 headers/SF/SFEnemy.h headers/TR/TRScene.h headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h headers/TR/MeshData.h headers/TR/TRHeightmap.h \
 headers/TR/TRFbo.h headers/TR/GLQuery.h headers/TR/TRSkybox.h \
 headers/TR/ParticleManager.h headers/TR/TRParticle.h \
 headers/TR/TRPlasticWater.h headers/TR/FFTWater.h headers/TR/FFTCtx.h \
 headers/TR/FreqDomain.h headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRStaticBatch.h \
 headers/SF/SFResources.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/TR/TRAudioSource.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/SF/SFPath.h \
 headers/SF/PathData.h headers/SF/Blueprint.h headers/SF/SFPlayer.h \
 headers/SF/SFCamera.h headers/SF/GunnerCamera.h headers/SF/SFPhysics.h \
 headers/SF/AOES.h headers/SF/EnemyMissile.h headers/SF/SFMissile.h \
 headers/SF/BinaryUtil.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/game/turrets/SFPhaser.cpp -o obj/SFPhaser.o
obj/SFMortar.o: src/stormfront/game/turrets/SFMortar.cpp \
 headers/SF/SFMortar.h headers/TR/LeafGeometry.h \
 headers/TR/TRSpatialEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRMath.h \
 headers/TR/DynamicBounds.h headers/SF/SFEnemy.h headers/TR/TRScene.h \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/MeshData.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRStaticBatch.h \
 headers/SF/SFResources.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/TR/TRAudioSource.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/SF/SFPath.h \
 headers/SF/PathData.h headers/SF/Blueprint.h headers/SF/SFPlayer.h \
 headers/SF/SFCamera.h headers/SF/GunnerCamera.h headers/SF/SFPhysics.h \
 headers/SF/AOES.h headers/SF/EnemyMissile.h headers/SF/SFMissile.h \
 headers/SF/BinaryUtil.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/TRUtil.h include/glm/gtx/string_cast.hpp \
 include/glm/gtx/../gtc/type_precision.hpp \
 include/glm/gtx/../gtc/../ext/scalar_int_sized.hpp \
 include/glm/gtx/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/scalar_uint_sized.hpp \
 include/glm/gtx/../gtc/type_precision.inl \
 include/glm/gtx/../gtx/dual_quaternion.hpp \
 include/glm/gtx/../gtx/dual_quaternion.inl \
 include/glm/gtx/string_cast.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/game/turrets/SFMortar.cpp -o obj/SFMortar.o
obj/PauseMenu.o: src/stormfront/game/menus/PauseMenu.cpp \
 headers/SF/PauseMenu.h headers/TR/TesseractEngine.h \
 headers/TR/DefferedRenderSystem.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRScene.h headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/DefrEntityRenderer.h \
 headers/TR/DefrEntityShader.h headers/TR/InstancedEntityShader.h \
 headers/TR/StaticEntityRenderer.h headers/TR/DefrTerrainRenderer.h \
 headers/TR/DefrTerrainShader.h headers/TR/DefrSkyboxRenderer.h \
 headers/TR/DefrSkyboxShader.h headers/TR/PlasticWaterRenderer.h \
 headers/TR/PlasticWaterShader.h headers/TR/FFTWaterRenderer.h \
 headers/TR/FFTWaterShader.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/DefferedShaderW.h \
 headers/TR/TRDisplayManager.h headers/TR/TRFbo.h \
 headers/TR/ParticleRenderer.h headers/TR/ParticleShader.h \
 headers/TR/GaussianBlur.h headers/TR/BlurShader.h \
 headers/TR/BloomCombiner.h headers/TR/BloomShader.h headers/TR/FXAA.h \
 headers/TR/FXAAShader.h headers/TR/FlareRenderer.h \
 headers/TR/FlareShader.h headers/TR/FlareQueryShader.h \
 headers/TR/CurtainRenderer.h headers/TR/CurtainShader.h \
 headers/TP/ThreadPool.hpp headers/SF/MenuTypes.h \
 headers/SF/SFResources.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/TR/TRAudioSource.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/TR/TRUtil.h \
 include/glm/gtx/string_cast.hpp \
 include/glm/gtx/../gtc/type_precision.hpp \
 include/glm/gtx/../gtc/../ext/scalar_int_sized.hpp \
 include/glm/gtx/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/scalar_uint_sized.hpp \
 include/glm/gtx/../gtc/type_precision.inl \
 include/glm/gtx/../gtx/dual_quaternion.hpp \
 include/glm/gtx/../gtx/dual_quaternion.inl \
 include/glm/gtx/string_cast.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/game/menus/PauseMenu.cpp -o obj/PauseMenu.o
obj/Settings.o: src/stormfront/game/menus/Settings.cpp \
 headers/SF/Settings.h headers/TR/TesseractEngine.h \
 headers/TR/DefferedRenderSystem.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRScene.h headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/DefrEntityRenderer.h \
 headers/TR/DefrEntityShader.h headers/TR/InstancedEntityShader.h \
 headers/TR/StaticEntityRenderer.h headers/TR/DefrTerrainRenderer.h \
 headers/TR/DefrTerrainShader.h headers/TR/DefrSkyboxRenderer.h \
 headers/TR/DefrSkyboxShader.h headers/TR/PlasticWaterRenderer.h \
 headers/TR/PlasticWaterShader.h headers/TR/FFTWaterRenderer.h \
 headers/TR/FFTWaterShader.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/DefferedShaderW.h \
 headers/TR/TRDisplayManager.h headers/TR/TRFbo.h \
 headers/TR/ParticleRenderer.h headers/TR/ParticleShader.h \
 headers/TR/GaussianBlur.h headers/TR/BlurShader.h \
 headers/TR/BloomCombiner.h headers/TR/BloomShader.h headers/TR/FXAA.h \
 headers/TR/FXAAShader.h headers/TR/FlareRenderer.h \
 headers/TR/FlareShader.h headers/TR/FlareQueryShader.h \
 headers/TR/CurtainRenderer.h headers/TR/CurtainShader.h \
 headers/TP/ThreadPool.hpp headers/SF/GameState.h headers/TR/TRAudio.h \
 include/AL/alc.h include/AL/al.h headers/TR/TRStreamAudio.h \
 headers/SF/SFEnemy.h headers/TR/LeafGeometry.h \
 headers/TR/TRSpatialEntity.h headers/TR/TRMath.h \
 headers/TR/DynamicBounds.h headers/SF/SFResources.h \
 headers/TR/TRAudioSource.h include/imgui/imgui.h \
 include/imgui/imconfig.h headers/SF/SFPath.h headers/SF/PathData.h \
 headers/SF/Blueprint.h headers/SF/SFPlayer.h headers/SF/SFCamera.h \
 headers/SF/GunnerCamera.h headers/SF/SFPhysics.h headers/SF/AOES.h \
 headers/SF/EnemyMissile.h headers/SF/SFMissile.h headers/SF/BinaryUtil.h \
 headers/SF/SFMortar.h headers/SF/SFPhaser.h headers/TR/TRUtil.h \
 include/glm/gtx/string_cast.hpp \
 include/glm/gtx/../gtc/type_precision.hpp \
 include/glm/gtx/../gtc/../ext/scalar_int_sized.hpp \
 include/glm/gtx/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/scalar_uint_sized.hpp \
 include/glm/gtx/../gtc/type_precision.inl \
 include/glm/gtx/../gtx/dual_quaternion.hpp \
 include/glm/gtx/../gtx/dual_quaternion.inl \
 include/glm/gtx/string_cast.inl headers/TR/TRKeyboard.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/game/menus/Settings.cpp -o obj/Settings.o
obj/MainMenu.o: src/stormfront/game/menus/MainMenu.cpp \
 headers/SF/MainMenu.h headers/TR/TesseractEngine.h \
 headers/TR/DefferedRenderSystem.h include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/detail/../simd/platform.h include/glm/fwd.hpp \
 include/glm/detail/qualifier.hpp include/glm/detail/setup.hpp \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/type_half.inl \
 include/glm/integer.hpp include/glm/detail/func_integer.inl \
 headers/TR/TRScene.h headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/RawModel.h headers/TR/BoundingVolume.h headers/TR/MeshData.h \
 headers/TR/TRTexture.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/ModelSkin.h \
 headers/TR/TRStaticBatch.h headers/TR/DefrEntityRenderer.h \
 headers/TR/DefrEntityShader.h headers/TR/InstancedEntityShader.h \
 headers/TR/StaticEntityRenderer.h headers/TR/DefrTerrainRenderer.h \
 headers/TR/DefrTerrainShader.h headers/TR/DefrSkyboxRenderer.h \
 headers/TR/DefrSkyboxShader.h headers/TR/PlasticWaterRenderer.h \
 headers/TR/PlasticWaterShader.h headers/TR/FFTWaterRenderer.h \
 headers/TR/FFTWaterShader.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/SunRenderer.h headers/TR/SunShader.h \
 headers/TR/DefferedProcessing.h headers/TR/DefferedShader.h \
 headers/TR/DefferedProcessingW.h headers/TR/DefferedShaderW.h \
 headers/TR/TRDisplayManager.h headers/TR/TRFbo.h \
 headers/TR/ParticleRenderer.h headers/TR/ParticleShader.h \
 headers/TR/GaussianBlur.h headers/TR/BlurShader.h \
 headers/TR/BloomCombiner.h headers/TR/BloomShader.h headers/TR/FXAA.h \
 headers/TR/FXAAShader.h headers/TR/FlareRenderer.h \
 headers/TR/FlareShader.h headers/TR/FlareQueryShader.h \
 headers/TR/CurtainRenderer.h headers/TR/CurtainShader.h \
 headers/TP/ThreadPool.hpp headers/SF/GameState.h headers/TR/TRAudio.h \
 include/AL/alc.h include/AL/al.h headers/TR/TRStreamAudio.h \
 headers/SF/SFEnemy.h headers/TR/LeafGeometry.h \
 headers/TR/TRSpatialEntity.h headers/TR/TRMath.h \
 headers/TR/DynamicBounds.h headers/SF/SFResources.h \
 headers/TR/TRAudioSource.h include/imgui/imgui.h \
 include/imgui/imconfig.h headers/SF/SFPath.h headers/SF/PathData.h \
 headers/SF/Blueprint.h headers/SF/SFPlayer.h headers/SF/SFCamera.h \
 headers/SF/GunnerCamera.h headers/SF/SFPhysics.h headers/SF/AOES.h \
 headers/SF/EnemyMissile.h headers/SF/SFMissile.h headers/SF/BinaryUtil.h \
 headers/SF/SFMortar.h headers/SF/SFPhaser.h headers/SF/MenuTypes.h \
 headers/TR/TRUtil.h include/glm/gtx/string_cast.hpp \
 include/glm/gtx/../gtc/type_precision.hpp \
 include/glm/gtx/../gtc/../ext/scalar_int_sized.hpp \
 include/glm/gtx/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/scalar_uint_sized.hpp \
 include/glm/gtx/../gtc/type_precision.inl \
 include/glm/gtx/../gtx/dual_quaternion.hpp \
 include/glm/gtx/../gtx/dual_quaternion.inl \
 include/glm/gtx/string_cast.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/game/menus/MainMenu.cpp -o obj/MainMenu.o
obj/GameState.o: src/stormfront/game/state/GameState.cpp \
 headers/SF/GameState.h headers/TR/GroupEntity.h \
 headers/TR/TRSceneEntity.h headers/TR/TexturedModel.h \
 headers/TR/RawModel.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/BoundingVolume.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/TR/TRScene.h \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/MeshData.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/TRStaticBatch.h headers/SF/SFEnemy.h \
 headers/TR/LeafGeometry.h headers/TR/TRSpatialEntity.h \
 headers/TR/TRMath.h headers/TR/DynamicBounds.h headers/SF/SFResources.h \
 headers/TR/TRAudioSource.h include/imgui/imgui.h \
 include/imgui/imconfig.h headers/SF/SFPath.h headers/SF/PathData.h \
 headers/SF/Blueprint.h headers/SF/SFPlayer.h headers/SF/SFCamera.h \
 headers/SF/GunnerCamera.h headers/SF/SFPhysics.h headers/SF/AOES.h \
 headers/SF/EnemyMissile.h headers/SF/SFMissile.h headers/SF/BinaryUtil.h \
 headers/SF/SFMortar.h headers/SF/SFPhaser.h headers/SF/TreborTruck.h \
 headers/SF/SFShop.h headers/TR/TRUtil.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h include/glm/gtx/string_cast.hpp \
 include/glm/gtx/../gtc/type_precision.hpp \
 include/glm/gtx/../gtc/../ext/scalar_int_sized.hpp \
 include/glm/gtx/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/scalar_uint_sized.hpp \
 include/glm/gtx/../gtc/type_precision.inl \
 include/glm/gtx/../gtx/dual_quaternion.hpp \
 include/glm/gtx/../gtx/dual_quaternion.inl \
 include/glm/gtx/string_cast.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/game/state/GameState.cpp -o obj/GameState.o
obj/SFShop.o: src/stormfront/game/state/shop/SFShop.cpp \
 headers/SF/SFShop.h headers/SF/GameState.h headers/TR/GroupEntity.h \
 headers/TR/TRSceneEntity.h headers/TR/TexturedModel.h \
 headers/TR/RawModel.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/BoundingVolume.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/TR/TRScene.h \
 headers/TR/TRTerrain.h headers/TR/TRLoader.h headers/TR/MeshData.h \
 headers/TR/TRHeightmap.h headers/TR/TRFbo.h headers/TR/GLQuery.h \
 headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/TRStaticBatch.h headers/SF/SFEnemy.h \
 headers/TR/LeafGeometry.h headers/TR/TRSpatialEntity.h \
 headers/TR/TRMath.h headers/TR/DynamicBounds.h headers/SF/SFResources.h \
 headers/TR/TRAudioSource.h include/imgui/imgui.h \
 include/imgui/imconfig.h headers/SF/SFPath.h headers/SF/PathData.h \
 headers/SF/Blueprint.h headers/SF/SFPlayer.h headers/SF/SFCamera.h \
 headers/SF/GunnerCamera.h headers/SF/SFPhysics.h headers/SF/AOES.h \
 headers/SF/EnemyMissile.h headers/SF/SFMissile.h headers/SF/BinaryUtil.h \
 headers/SF/SFMortar.h headers/SF/SFPhaser.h headers/TR/TRUtil.h \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h \
 include/glm/gtx/string_cast.hpp \
 include/glm/gtx/../gtc/type_precision.hpp \
 include/glm/gtx/../gtc/../ext/scalar_int_sized.hpp \
 include/glm/gtx/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/scalar_uint_sized.hpp \
 include/glm/gtx/../gtc/type_precision.inl \
 include/glm/gtx/../gtx/dual_quaternion.hpp \
 include/glm/gtx/../gtx/dual_quaternion.inl \
 include/glm/gtx/string_cast.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/game/state/shop/SFShop.cpp -o obj/SFShop.o
obj/EnemyMissile.o: src/stormfront/enemies/EnemyMissile.cpp \
 headers/SF/EnemyMissile.h headers/TR/LeafGeometry.h \
 headers/TR/TRSpatialEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRMath.h \
 headers/TR/DynamicBounds.h headers/TR/TRScene.h headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h headers/TR/MeshData.h headers/TR/TRHeightmap.h \
 headers/TR/TRFbo.h headers/TR/GLQuery.h headers/TR/TRSkybox.h \
 headers/TR/ParticleManager.h headers/TR/TRParticle.h \
 headers/TR/TRPlasticWater.h headers/TR/FFTWater.h headers/TR/FFTCtx.h \
 headers/TR/FreqDomain.h headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRStaticBatch.h \
 headers/SF/SFResources.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/TR/TRAudioSource.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/TR/TRUtil.h \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h \
 include/glm/gtx/string_cast.hpp \
 include/glm/gtx/../gtc/type_precision.hpp \
 include/glm/gtx/../gtc/../ext/scalar_int_sized.hpp \
 include/glm/gtx/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/scalar_uint_sized.hpp \
 include/glm/gtx/../gtc/type_precision.inl \
 include/glm/gtx/../gtx/dual_quaternion.hpp \
 include/glm/gtx/../gtx/dual_quaternion.inl \
 include/glm/gtx/string_cast.inl headers/SF/SFPlayer.h \
 headers/SF/SFCamera.h headers/SF/GunnerCamera.h headers/SF/SFPhysics.h \
 headers/SF/AOES.h headers/SF/SFMissile.h headers/SF/BinaryUtil.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/enemies/EnemyMissile.cpp -o obj/EnemyMissile.o
obj/SFPath.o: src/stormfront/enemies/SFPath.cpp headers/SF/SFPath.h \
 headers/SF/PathData.h include/glm/vec2.hpp \
 include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/fwd.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/setup.hpp \
 include/glm/detail/type_half.inl include/glm/integer.hpp \
 include/glm/detail/func_integer.inl headers/SF/SFEnemy.h \
 headers/TR/LeafGeometry.h headers/TR/TRSpatialEntity.h \
 headers/TR/TRSceneEntity.h headers/TR/TexturedModel.h \
 headers/TR/RawModel.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/BoundingVolume.h headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRMath.h \
 headers/TR/DynamicBounds.h headers/TR/TRScene.h headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h headers/TR/MeshData.h headers/TR/TRHeightmap.h \
 headers/TR/TRFbo.h headers/TR/GLQuery.h headers/TR/TRSkybox.h \
 headers/TR/ParticleManager.h headers/TR/TRParticle.h \
 headers/TR/TRPlasticWater.h headers/TR/FFTWater.h headers/TR/FFTCtx.h \
 headers/TR/FreqDomain.h headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRStaticBatch.h \
 headers/SF/SFResources.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/TR/TRAudioSource.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/SF/Blueprint.h \
 headers/SF/SFPlayer.h headers/SF/SFCamera.h headers/SF/GunnerCamera.h \
 headers/SF/SFPhysics.h headers/SF/AOES.h headers/SF/EnemyMissile.h \
 headers/SF/SFMissile.h headers/SF/BinaryUtil.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/enemies/SFPath.cpp -o obj/SFPath.o
obj/PathData.o: src/stormfront/enemies/PathData.cpp headers/SF/PathData.h \
 include/glm/vec2.hpp include/glm/./ext/vector_bool2.hpp \
 include/glm/./ext/../detail/type_vec2.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec2.inl \
 include/glm/./ext/../detail/./compute_vector_relational.hpp \
 include/glm/./ext/../detail/./setup.hpp \
 include/glm/./ext/vector_bool2_precision.hpp \
 include/glm/./ext/vector_float2.hpp \
 include/glm/./ext/vector_float2_precision.hpp \
 include/glm/./ext/vector_double2.hpp \
 include/glm/./ext/vector_double2_precision.hpp \
 include/glm/./ext/vector_int2.hpp \
 include/glm/./ext/vector_int2_precision.hpp \
 include/glm/./ext/vector_uint2.hpp \
 include/glm/./ext/vector_uint2_precision.hpp include/glm/glm.hpp \
 include/glm/detail/_fixes.hpp include/glm/detail/setup.hpp \
 include/glm/fwd.hpp include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp include/glm/vec4.hpp \
 include/glm/./ext/vector_bool4.hpp \
 include/glm/./ext/../detail/type_vec4.hpp \
 include/glm/./ext/../detail/type_vec4.inl \
 include/glm/./ext/vector_bool4_precision.hpp \
 include/glm/./ext/vector_float4.hpp \
 include/glm/./ext/vector_float4_precision.hpp \
 include/glm/./ext/vector_double4.hpp \
 include/glm/./ext/vector_double4_precision.hpp \
 include/glm/./ext/../detail/setup.hpp include/glm/./ext/vector_int4.hpp \
 include/glm/./ext/vector_int4_precision.hpp \
 include/glm/./ext/vector_uint4.hpp \
 include/glm/./ext/vector_uint4_precision.hpp include/glm/mat2x2.hpp \
 include/glm/./ext/matrix_double2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.hpp \
 include/glm/./ext/../detail/type_mat2x2.inl \
 include/glm/./ext/../detail/../matrix.hpp \
 include/glm/./ext/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/./ext/../detail/../mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/./ext/../detail/../mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/./ext/../detail/../mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/./ext/../detail/../mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/./ext/../detail/../mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/./ext/../detail/../mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/./ext/../detail/../mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/./ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/./ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/./ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/./ext/../detail/../detail/func_matrix.inl \
 include/glm/./ext/../detail/../detail/../geometric.hpp \
 include/glm/./ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/./ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/./ext/../detail/../detail/../detail/../common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/./ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/./ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/./ext/matrix_double2x2_precision.hpp \
 include/glm/./ext/matrix_float2x2.hpp \
 include/glm/./ext/matrix_float2x2_precision.hpp \
 include/glm/trigonometric.hpp include/glm/detail/func_trigonometric.inl \
 include/glm/packing.hpp include/glm/detail/func_packing.inl \
 include/glm/detail/type_half.hpp include/glm/detail/setup.hpp \
 include/glm/detail/type_half.inl include/glm/integer.hpp \
 include/glm/detail/func_integer.inl

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/enemies/PathData.cpp -o obj/PathData.o
obj/SFEnemy.o: src/stormfront/enemies/SFEnemy.cpp headers/SF/SFEnemy.h \
 headers/TR/LeafGeometry.h headers/TR/TRSpatialEntity.h \
 headers/TR/TRSceneEntity.h headers/TR/TexturedModel.h \
 headers/TR/RawModel.h include/GL/glew.h include/GL/glu.h include/GL/gl.h \
 headers/TR/BoundingVolume.h include/glm/vec3.hpp \
 include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRMath.h \
 headers/TR/DynamicBounds.h headers/TR/TRScene.h headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h headers/TR/MeshData.h headers/TR/TRHeightmap.h \
 headers/TR/TRFbo.h headers/TR/GLQuery.h headers/TR/TRSkybox.h \
 headers/TR/ParticleManager.h headers/TR/TRParticle.h \
 headers/TR/TRPlasticWater.h headers/TR/FFTWater.h headers/TR/FFTCtx.h \
 headers/TR/FreqDomain.h headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRStaticBatch.h \
 headers/SF/SFResources.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/TR/TRAudioSource.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/SF/SFPath.h \
 headers/SF/PathData.h headers/SF/Blueprint.h headers/SF/SFPlayer.h \
 headers/SF/SFCamera.h headers/SF/GunnerCamera.h headers/SF/SFPhysics.h \
 headers/SF/AOES.h headers/SF/EnemyMissile.h headers/SF/SFMissile.h \
 headers/SF/BinaryUtil.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/enemies/SFEnemy.cpp -o obj/SFEnemy.o
obj/TreborTruck.o: src/stormfront/enemies/types/TreborTruck.cpp \
 headers/SF/TreborTruck.h headers/SF/SFEnemy.h headers/TR/LeafGeometry.h \
 headers/TR/TRSpatialEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRMath.h \
 headers/TR/DynamicBounds.h headers/TR/TRScene.h headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h headers/TR/MeshData.h headers/TR/TRHeightmap.h \
 headers/TR/TRFbo.h headers/TR/GLQuery.h headers/TR/TRSkybox.h \
 headers/TR/ParticleManager.h headers/TR/TRParticle.h \
 headers/TR/TRPlasticWater.h headers/TR/FFTWater.h headers/TR/FFTCtx.h \
 headers/TR/FreqDomain.h headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRStaticBatch.h \
 headers/SF/SFResources.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/TR/TRAudioSource.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/SF/SFPath.h \
 headers/SF/PathData.h headers/SF/Blueprint.h headers/SF/SFPlayer.h \
 headers/SF/SFCamera.h headers/SF/GunnerCamera.h headers/SF/SFPhysics.h \
 headers/SF/AOES.h headers/SF/EnemyMissile.h headers/SF/SFMissile.h \
 headers/SF/BinaryUtil.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/enemies/types/TreborTruck.cpp -o obj/TreborTruck.o
obj/SFCamera.o: src/stormfront/player/SFCamera.cpp headers/SF/SFCamera.h \
 headers/TR/TRCamera.h include/glm/gtx/transform.hpp \
 include/glm/gtx/../glm.hpp include/glm/gtx/../detail/_fixes.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/../simd/platform.h include/glm/gtx/../fwd.hpp \
 include/glm/gtx/../detail/qualifier.hpp \
 include/glm/gtx/../detail/setup.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/../detail/./compute_vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/./setup.hpp \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec3.hpp include/glm/gtx/.././ext/vector_bool3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.inl \
 include/glm/gtx/.././ext/vector_bool3_precision.hpp \
 include/glm/gtx/.././ext/vector_float3.hpp \
 include/glm/gtx/.././ext/vector_float3_precision.hpp \
 include/glm/gtx/.././ext/vector_double3.hpp \
 include/glm/gtx/.././ext/vector_double3_precision.hpp \
 include/glm/gtx/.././ext/vector_int3.hpp \
 include/glm/gtx/.././ext/vector_int3_precision.hpp \
 include/glm/gtx/.././ext/vector_uint3.hpp \
 include/glm/gtx/.././ext/vector_uint3_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/SF/SFPlayer.h \
 headers/TR/TRSpatialEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 headers/TR/ModelSkin.h headers/TR/TRTexture.h headers/TR/TRMath.h \
 headers/TR/LeafGeometry.h headers/TR/DynamicBounds.h \
 headers/TR/TRScene.h headers/TR/TRTerrain.h headers/TR/TRLoader.h \
 headers/TR/MeshData.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRStaticBatch.h \
 headers/TR/TRAudioSource.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/SF/SFResources.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/SF/GunnerCamera.h \
 headers/SF/SFPhysics.h headers/SF/AOES.h headers/SF/EnemyMissile.h \
 headers/SF/SFMissile.h headers/SF/BinaryUtil.h headers/TR/TRKeyboard.h \
 headers/TR/TRMouse.h headers/TR/TRDisplayManager.h include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/player/SFCamera.cpp -o obj/SFCamera.o
obj/GunnerCamera.o: src/stormfront/player/GunnerCamera.cpp \
 headers/SF/GunnerCamera.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/../simd/platform.h include/glm/gtx/../fwd.hpp \
 include/glm/gtx/../detail/qualifier.hpp \
 include/glm/gtx/../detail/setup.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/../detail/./compute_vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/./setup.hpp \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec3.hpp include/glm/gtx/.././ext/vector_bool3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.hpp \
 include/glm/gtx/.././ext/../detail/type_vec3.inl \
 include/glm/gtx/.././ext/vector_bool3_precision.hpp \
 include/glm/gtx/.././ext/vector_float3.hpp \
 include/glm/gtx/.././ext/vector_float3_precision.hpp \
 include/glm/gtx/.././ext/vector_double3.hpp \
 include/glm/gtx/.././ext/vector_double3_precision.hpp \
 include/glm/gtx/.././ext/vector_int3.hpp \
 include/glm/gtx/.././ext/vector_int3_precision.hpp \
 include/glm/gtx/.././ext/vector_uint3.hpp \
 include/glm/gtx/.././ext/vector_uint3_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/SF/SFPlayer.h \
 headers/TR/TRSpatialEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 headers/TR/ModelSkin.h headers/TR/TRTexture.h headers/TR/TRMath.h \
 headers/TR/LeafGeometry.h headers/TR/DynamicBounds.h \
 headers/TR/TRScene.h headers/TR/TRTerrain.h headers/TR/TRLoader.h \
 headers/TR/MeshData.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRStaticBatch.h \
 headers/TR/TRAudioSource.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/SF/SFResources.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/SF/SFCamera.h \
 headers/SF/SFPhysics.h headers/SF/AOES.h headers/SF/EnemyMissile.h \
 headers/SF/SFMissile.h headers/SF/BinaryUtil.h \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h \
 headers/TR/TRKeyboard.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/player/GunnerCamera.cpp -o obj/GunnerCamera.o
obj/SFPlayer.o: src/stormfront/player/SFPlayer.cpp headers/SF/SFPlayer.h \
 headers/TR/TRSpatialEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRMath.h \
 headers/TR/LeafGeometry.h headers/TR/DynamicBounds.h \
 headers/TR/TRScene.h headers/TR/TRTerrain.h headers/TR/TRLoader.h \
 headers/TR/MeshData.h headers/TR/TRHeightmap.h headers/TR/TRFbo.h \
 headers/TR/GLQuery.h headers/TR/TRSkybox.h headers/TR/ParticleManager.h \
 headers/TR/TRParticle.h headers/TR/TRPlasticWater.h \
 headers/TR/FFTWater.h headers/TR/FFTCtx.h headers/TR/FreqDomain.h \
 headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRStaticBatch.h \
 headers/TR/TRAudioSource.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/SF/SFResources.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/SF/SFCamera.h \
 headers/SF/GunnerCamera.h headers/SF/SFPhysics.h headers/SF/AOES.h \
 headers/SF/EnemyMissile.h headers/SF/SFMissile.h headers/SF/BinaryUtil.h \
 headers/TR/TRKeyboard.h headers/TR/TRDisplayManager.h \
 include/GLFW/glfw3.h headers/TR/TRMouse.h headers/TR/TRUtil.h \
 include/glm/gtx/string_cast.hpp \
 include/glm/gtx/../gtc/type_precision.hpp \
 include/glm/gtx/../gtc/../ext/scalar_int_sized.hpp \
 include/glm/gtx/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/scalar_uint_sized.hpp \
 include/glm/gtx/../gtc/type_precision.inl \
 include/glm/gtx/../gtx/dual_quaternion.hpp \
 include/glm/gtx/../gtx/dual_quaternion.inl \
 include/glm/gtx/string_cast.inl headers/TR/TRRay.h \
 headers/SF/GameState.h headers/SF/SFEnemy.h headers/SF/SFPath.h \
 headers/SF/PathData.h headers/SF/Blueprint.h headers/SF/SFMortar.h \
 headers/SF/SFPhaser.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/player/SFPlayer.cpp -o obj/SFPlayer.o
obj/SFMissile.o: src/stormfront/player/missiles/SFMissile.cpp \
 headers/SF/SFMissile.h headers/TR/LeafGeometry.h \
 headers/TR/TRSpatialEntity.h headers/TR/TRSceneEntity.h \
 headers/TR/TexturedModel.h headers/TR/RawModel.h include/GL/glew.h \
 include/GL/glu.h include/GL/gl.h headers/TR/BoundingVolume.h \
 include/glm/vec3.hpp include/glm/./ext/vector_bool3.hpp \
 include/glm/./ext/../detail/type_vec3.hpp \
 include/glm/./ext/../detail/qualifier.hpp \
 include/glm/./ext/../detail/setup.hpp \
 include/glm/./ext/../detail/../simd/platform.h \
 include/glm/./ext/../detail/type_vec3.inl \
 include/glm/./ext/../detail/compute_vector_relational.hpp \
 include/glm/./ext/vector_bool3_precision.hpp \
 include/glm/./ext/vector_float3.hpp \
 include/glm/./ext/vector_float3_precision.hpp \
 include/glm/./ext/vector_double3.hpp \
 include/glm/./ext/vector_double3_precision.hpp \
 include/glm/./ext/vector_int3.hpp \
 include/glm/./ext/vector_int3_precision.hpp \
 include/glm/./ext/vector_uint3.hpp \
 include/glm/./ext/vector_uint3_precision.hpp headers/TR/ModelSkin.h \
 headers/TR/TRTexture.h headers/TR/TRCamera.h \
 include/glm/gtx/transform.hpp include/glm/gtx/../glm.hpp \
 include/glm/gtx/../detail/_fixes.hpp include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../fwd.hpp include/glm/gtx/../vec2.hpp \
 include/glm/gtx/.././ext/vector_bool2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.hpp \
 include/glm/gtx/.././ext/../detail/type_vec2.inl \
 include/glm/gtx/.././ext/vector_bool2_precision.hpp \
 include/glm/gtx/.././ext/vector_float2.hpp \
 include/glm/gtx/.././ext/vector_float2_precision.hpp \
 include/glm/gtx/.././ext/vector_double2.hpp \
 include/glm/gtx/.././ext/vector_double2_precision.hpp \
 include/glm/gtx/.././ext/vector_int2.hpp \
 include/glm/gtx/.././ext/vector_int2_precision.hpp \
 include/glm/gtx/.././ext/vector_uint2.hpp \
 include/glm/gtx/.././ext/vector_uint2_precision.hpp \
 include/glm/gtx/../vec4.hpp include/glm/gtx/.././ext/vector_bool4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.hpp \
 include/glm/gtx/.././ext/../detail/type_vec4.inl \
 include/glm/gtx/.././ext/vector_bool4_precision.hpp \
 include/glm/gtx/.././ext/vector_float4.hpp \
 include/glm/gtx/.././ext/vector_float4_precision.hpp \
 include/glm/gtx/.././ext/vector_double4.hpp \
 include/glm/gtx/.././ext/vector_double4_precision.hpp \
 include/glm/gtx/.././ext/../detail/setup.hpp \
 include/glm/gtx/.././ext/vector_int4.hpp \
 include/glm/gtx/.././ext/vector_int4_precision.hpp \
 include/glm/gtx/.././ext/vector_uint4.hpp \
 include/glm/gtx/.././ext/vector_uint4_precision.hpp \
 include/glm/gtx/../mat2x2.hpp \
 include/glm/gtx/.././ext/matrix_double2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.hpp \
 include/glm/gtx/.././ext/../detail/type_mat2x2.inl \
 include/glm/gtx/.././ext/../detail/../matrix.hpp \
 include/glm/gtx/.././ext/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat2x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float2x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat3x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float3x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x2.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x2_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x3.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x3_precision.hpp \
 include/glm/gtx/.././ext/../detail/../mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/../detail/type_mat4x4.inl \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_double4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4.hpp \
 include/glm/gtx/.././ext/../detail/.././ext/matrix_float4x4_precision.hpp \
 include/glm/gtx/.././ext/../detail/../detail/func_matrix.inl \
 include/glm/gtx/.././ext/../detail/../detail/../geometric.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/func_geometric.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../exponential.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/type_vec1.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_exponential.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../vector_relational.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/../detail/func_vector_relational.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_vectorize.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/_fixes.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/func_common.inl \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/compute_common.hpp \
 include/glm/gtx/.././ext/../detail/../detail/../detail/../detail/setup.hpp \
 include/glm/gtx/.././ext/matrix_double2x2_precision.hpp \
 include/glm/gtx/.././ext/matrix_float2x2.hpp \
 include/glm/gtx/.././ext/matrix_float2x2_precision.hpp \
 include/glm/gtx/../trigonometric.hpp \
 include/glm/gtx/../detail/func_trigonometric.inl \
 include/glm/gtx/../packing.hpp \
 include/glm/gtx/../detail/func_packing.inl \
 include/glm/gtx/../detail/type_half.hpp \
 include/glm/gtx/../detail/setup.hpp \
 include/glm/gtx/../detail/type_half.inl include/glm/gtx/../integer.hpp \
 include/glm/gtx/../detail/func_integer.inl \
 include/glm/gtx/../gtc/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_projection.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtx/../gtc/../ext/../gtc/../ext/scalar_constants.inl \
 include/glm/gtx/../gtc/../ext/../gtc/constants.inl \
 include/glm/gtx/../gtc/../ext/matrix_projection.inl \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.hpp \
 include/glm/gtx/../gtc/../ext/matrix_clip_space.inl \
 include/glm/gtx/../gtc/../ext/matrix_transform.hpp \
 include/glm/gtx/../gtc/../ext/matrix_transform.inl \
 include/glm/gtx/../gtc/matrix_transform.inl \
 include/glm/gtx/transform.inl headers/TR/TRMath.h \
 headers/TR/DynamicBounds.h headers/TR/TRScene.h headers/TR/TRTerrain.h \
 headers/TR/TRLoader.h headers/TR/MeshData.h headers/TR/TRHeightmap.h \
 headers/TR/TRFbo.h headers/TR/GLQuery.h headers/TR/TRSkybox.h \
 headers/TR/ParticleManager.h headers/TR/TRParticle.h \
 headers/TR/TRPlasticWater.h headers/TR/FFTWater.h headers/TR/FFTCtx.h \
 headers/TR/FreqDomain.h headers/TR/FFTPreComp.h headers/TR/FreqShader.h \
 headers/TR/ShaderProgram.h include/glm/gtc/type_ptr.hpp \
 include/glm/gtc/../gtc/quaternion.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.hpp \
 include/glm/gtc/../gtc/../ext/vector_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/setup.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_common.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.hpp \
 include/glm/gtc/../gtc/../ext/../ext/quaternion_geometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_common.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float.hpp \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.hpp \
 include/glm/gtc/../gtc/../ext/../detail/../ext/quaternion_relational.inl \
 include/glm/gtc/../gtc/../ext/../detail/type_quat.inl \
 include/glm/gtc/../gtc/../ext/quaternion_float_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_double_precision.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_trigonometric.inl \
 include/glm/gtc/../gtc/../ext/quaternion_transform.hpp \
 include/glm/gtc/../gtc/../ext/quaternion_transform.inl \
 include/glm/gtc/../gtc/quaternion.inl include/glm/gtc/../gtc/epsilon.hpp \
 include/glm/gtc/../gtc/../detail/setup.hpp \
 include/glm/gtc/../gtc/epsilon.inl include/glm/gtc/../gtc/vec1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1.hpp \
 include/glm/gtc/../gtc/../ext/vector_bool1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1.hpp \
 include/glm/gtc/../gtc/../ext/vector_float1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1.hpp \
 include/glm/gtc/../gtc/../ext/vector_double1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1.hpp \
 include/glm/gtc/../gtc/../ext/vector_int1_precision.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1.hpp \
 include/glm/gtc/../gtc/../ext/vector_uint1_precision.hpp \
 include/glm/gtc/type_ptr.inl headers/TR/Butterflies.h \
 headers/TR/ButterflyShader.h headers/TR/InversionShader.h \
 headers/TR/WaterNormals.h headers/TR/TRLensFlare.h \
 headers/TR/GroupEntity.h headers/TR/TRStaticBatch.h \
 headers/SF/SFResources.h headers/TR/TRAudio.h include/AL/alc.h \
 include/AL/al.h headers/TR/TRStreamAudio.h headers/TR/TRAudioSource.h \
 include/imgui/imgui.h include/imgui/imconfig.h headers/SF/AOES.h \
 headers/TR/TRDisplayManager.h include/GLFW/glfw3.h

	g++ -std=c++17 -O2 -pthread -MMD -Wall -c -I"include" -I"headers" -I"include/imgui" src/stormfront/player/missiles/SFMissile.cpp -o obj/SFMissile.o
bin/ExecuteMe: obj/main.o obj/dragon.o obj/TRMath.o obj/TRUtil.o obj/TRRay.o obj/TRKeyboard.o obj/ThreadPool.o obj/QuadTree.o obj/BoundingVolume.o obj/DynamicBounds.o obj/TesseractEngine.o obj/TRDisplayManager.o obj/FlareRenderer.o obj/FlareShader.o obj/FlareQueryShader.o obj/CurtainRenderer.o obj/CurtainShader.o obj/DefferedRenderSystem.o obj/DefrSkyboxRenderer.o obj/DefrSkyboxShader.o obj/ParticleRenderer.o obj/ParticleShader.o obj/DefrTerrainShader.o obj/DefrTerrainRenderer.o obj/NormalCompShader.o obj/NormalCompGen.o obj/FFTWaterShader.o obj/FFTWaterRenderer.o obj/DefrEntityShader.o obj/DefrEntityRenderer.o obj/InstancedEntityShader.o obj/StaticEntityRenderer.o obj/PlasticWaterRenderer.o obj/PlasticWaterShader.o obj/SunRenderer.o obj/SunShader.o obj/TRAudioSource.o obj/TRAudio.o obj/TRStreamAudio.o obj/imgui_demo.o obj/imgui_draw.o obj/imgui.o obj/imgui_widgets.o obj/imgui_impl_opengl3.o obj/imgui_impl_glfw.o obj/FXAAShader.o obj/FXAA.o obj/BloomCombiner.o obj/BloomShader.o obj/DefferedProcessingW.o obj/DefferedShaderW.o obj/DefferedProcessing.o obj/DefferedShader.o obj/GaussianBlur.o obj/BlurShader.o obj/ShaderProgram.o obj/OBJParser.o obj/TRLoader.o obj/TRFbo.o obj/TRTexture.o obj/ModelSkin.o obj/MeshData.o obj/TexturedModel.o obj/RawModel.o obj/TRScene.o obj/TRSkybox.o obj/TRTerrain.o obj/ParticleManager.o obj/TRParticle.o obj/RogueCamera.o obj/TRCamera.o obj/TRPlasticWater.o obj/FFTCtx.o obj/FFTWater.o obj/Butterflies.o obj/ButterflyShader.o obj/WaterNormals.o obj/FFTPreComp.o obj/InversionShader.o obj/FreqShader.o obj/FreqDomain.o obj/GroupEntity.o obj/TRSceneEntity.o obj/SimpleGeometry.o obj/TRSpatialEntity.o obj/TRStaticBatch.o obj/disabled.o obj/DevMode.o obj/SFPhysics.o obj/StormFrontGame.o obj/SFResources.o obj/SFPhaser.o obj/SFMortar.o obj/PauseMenu.o obj/Settings.o obj/MainMenu.o obj/GameState.o obj/SFShop.o obj/EnemyMissile.o obj/SFPath.o obj/PathData.o obj/SFEnemy.o obj/TreborTruck.o obj/SFCamera.o obj/GunnerCamera.o obj/SFPlayer.o obj/SFMissile.o
	g++ -std=c++17 -O2 -pthread -MMD -Wall -L"lib" obj/main.o obj/dragon.o obj/TRMath.o obj/TRUtil.o obj/TRRay.o obj/TRKeyboard.o obj/ThreadPool.o obj/QuadTree.o obj/BoundingVolume.o obj/DynamicBounds.o obj/TesseractEngine.o obj/TRDisplayManager.o obj/FlareRenderer.o obj/FlareShader.o obj/FlareQueryShader.o obj/CurtainRenderer.o obj/CurtainShader.o obj/DefferedRenderSystem.o obj/DefrSkyboxRenderer.o obj/DefrSkyboxShader.o obj/ParticleRenderer.o obj/ParticleShader.o obj/DefrTerrainShader.o obj/DefrTerrainRenderer.o obj/NormalCompShader.o obj/NormalCompGen.o obj/FFTWaterShader.o obj/FFTWaterRenderer.o obj/DefrEntityShader.o obj/DefrEntityRenderer.o obj/InstancedEntityShader.o obj/StaticEntityRenderer.o obj/PlasticWaterRenderer.o obj/PlasticWaterShader.o obj/SunRenderer.o obj/SunShader.o obj/TRAudioSource.o obj/TRAudio.o obj/TRStreamAudio.o obj/imgui_demo.o obj/imgui_draw.o obj/imgui.o obj/imgui_widgets.o obj/imgui_impl_opengl3.o obj/imgui_impl_glfw.o obj/FXAAShader.o obj/FXAA.o obj/BloomCombiner.o obj/BloomShader.o obj/DefferedProcessingW.o obj/DefferedShaderW.o obj/DefferedProcessing.o obj/DefferedShader.o obj/GaussianBlur.o obj/BlurShader.o obj/ShaderProgram.o obj/OBJParser.o obj/TRLoader.o obj/TRFbo.o obj/TRTexture.o obj/ModelSkin.o obj/MeshData.o obj/TexturedModel.o obj/RawModel.o obj/TRScene.o obj/TRSkybox.o obj/TRTerrain.o obj/ParticleManager.o obj/TRParticle.o obj/RogueCamera.o obj/TRCamera.o obj/TRPlasticWater.o obj/FFTCtx.o obj/FFTWater.o obj/Butterflies.o obj/ButterflyShader.o obj/WaterNormals.o obj/FFTPreComp.o obj/InversionShader.o obj/FreqShader.o obj/FreqDomain.o obj/GroupEntity.o obj/TRSceneEntity.o obj/SimpleGeometry.o obj/TRSpatialEntity.o obj/TRStaticBatch.o obj/disabled.o obj/DevMode.o obj/SFPhysics.o obj/StormFrontGame.o obj/SFResources.o obj/SFPhaser.o obj/SFMortar.o obj/PauseMenu.o obj/Settings.o obj/MainMenu.o obj/GameState.o obj/SFShop.o obj/EnemyMissile.o obj/SFPath.o obj/PathData.o obj/SFEnemy.o obj/TreborTruck.o obj/SFCamera.o obj/GunnerCamera.o obj/SFPlayer.o obj/SFMissile.o -lGLEW -lGL -lGLU -lglfw -lopenal -o bin/ExecuteMe
