#include "TR/TRSceneEntity.h"

BatchMap TRSceneEntity::batchMap, TRSceneEntity::instancedBatchMap;
std::stack<glm::mat4*> TRSceneEntity::matrixStack;
TRCamera* TRSceneEntity::camera;