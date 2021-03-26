/*
 * TRKeyboard.cpp
 *
 *  Created on: Mar. 27, 2020
 *      Author: oscar
 */

#include "TR/TRKeyboard.h"

#include "TR/TRDisplayManager.h"

std::set<int> TRKeyboard::cbKeys;

bool TRKeyboard::isKeyDown(int glfwkey) {
	return glfwGetKey(TRDisplayManager::getWindow(), glfwkey) == GLFW_PRESS;
}