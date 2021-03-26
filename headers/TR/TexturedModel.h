/*
 * TexturedModel.h
 *
 *  Created on: Mar. 23, 2020
 *      Author: oscar
 */

#ifndef ENGINE_RESOURCEMANAGEMENT_DATASTRUCTS_ENTITYMODEL_H_
#define ENGINE_RESOURCEMANAGEMENT_DATASTRUCTS_ENTITYMODEL_H_

#include "TR/RawModel.h"
#include "TR/ModelSkin.h"
#include <memory>

class TexturedModel {
public:
	TexturedModel(const std::shared_ptr<RawModel> &model, const std::shared_ptr<ModelSkin> &ms) :
	rawModel(model), skin(ms) {}
	~TexturedModel() {};

	inline std::shared_ptr<RawModel> getRawModel() const { return rawModel; };
	inline std::shared_ptr<ModelSkin> getSkin() const { return skin; };
	
private:
	const std::shared_ptr<RawModel> rawModel;
	const std::shared_ptr<ModelSkin> skin;
};

#endif /* ENGINE_RESOURCEMANAGEMENT_DATASTRUCTS_ENTITYMODEL_H_ */
