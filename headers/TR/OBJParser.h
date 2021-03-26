/*
 * OBJParser.h
 *
 *  Created on: Mar. 28, 2020
 *      Author: oscar
 */

#ifndef ENGINE_RESOURCEMANAGEMENT_OBJPARSER_H_
#define ENGINE_RESOURCEMANAGEMENT_OBJPARSER_H_

#include "TR/MeshData.h"
#include <memory>

namespace OBJParser {

std::shared_ptr<MeshData> parseObjModel(const char *fileName);

}

#endif /* ENGINE_RESOURCEMANAGEMENT_OBJPARSER_H_ */
