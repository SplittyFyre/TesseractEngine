/*
 * TRMath.cpp
 *
 *  Created on: Mar 25, 2020
 *      Author: oscar
 */

#include "TR/TRMath.h"

void TRMath::createTransformationMatrix(glm::mat4 *dest, const glm::vec3 &translation, float rotX, float rotY, float rotZ, const glm::vec3 &scale) {

	glm::mat4 rotMatrix =
		glm::rotate(glm::radians(rotY), glm::vec3(0, 1, 0)) *
		glm::rotate(glm::radians(rotX), glm::vec3(1, 0, 0)) *
		glm::rotate(glm::radians(rotZ), glm::vec3(0, 0, 1));

	glm::mat4 scaleMatrix = glm::scale(scale);

	*dest = glm::translate(translation) * rotMatrix * scaleMatrix;
}

void TRMath::createTransformationMatrix(glm::mat4 *ns, glm::mat4 *dest, const glm::vec3 &translation, float rotX, float rotY, float rotZ, const glm::vec3 &scale) {
	
	glm::mat4 rotMatrix =
		glm::rotate(glm::radians(rotY), glm::vec3(0, 1, 0)) *
		glm::rotate(glm::radians(rotX), glm::vec3(1, 0, 0)) *
		glm::rotate(glm::radians(rotZ), glm::vec3(0, 0, 1));

	*ns = glm::translate(translation) * rotMatrix;
	*dest = (*ns) * glm::scale(scale);
}

void TRMath::createTransformationMatrix(glm::mat4 *ns, const glm::vec3 &translation, float rotX, float rotY, float rotZ) {
	glm::mat4 rotMatrix =
		glm::rotate(glm::radians(rotY), glm::vec3(0, 1, 0)) *
		glm::rotate(glm::radians(rotX), glm::vec3(1, 0, 0)) *
		glm::rotate(glm::radians(rotZ), glm::vec3(0, 0, 1));

	*ns = glm::translate(translation) * rotMatrix;
}

float TRMath::baryCentric(float p1x, float p1y, float p1z, float p2x, float p2y, float p2z, float p3x, float p3y, float p3z, float posx, float posy) {
	float det = (p2z - p3z) * (p1x - p3x) + (p3x - p2x) * (p1z - p3z);
	float l1 = ((p2z - p3z) * (posx - p3x) + (p3x - p2x) * (posy - p3z)) / det;
	float l2 = ((p3z - p1z) * (posx - p3x) + (p1x - p3x) * (posy - p3z)) / det;
	float l3 = 1.f - l1 - l2;
	return l1 * p1y + l2 * p2y + l3 * p3y;
}