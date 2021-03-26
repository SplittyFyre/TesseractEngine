/*
 * ShaderProgram.cpp
 *
 *  Created on: Mar. 22, 2020
 *      Author: oscar
 */

#include "TR/ShaderProgram.h"
#include <stdio.h>

GLuint ShaderProgram::loadShader(const char *file, GLenum type) {
	FILE *fin = fopen(file, "rb");

	if (fin == NULL) {
		printf("fopen returned NULL for shader file '%s'\n", file);
		exit(1);
	}

	fseek(fin, 0, SEEK_END);
	long fsize = ftell(fin);
	rewind(fin);

	char *data = new char[fsize];
	fread(data, 1, fsize, fin);
	fclose(fin);


	const GLchar* sourceStrings[1];
	GLint sourceLengths[1];
	sourceStrings[0] = data;
	sourceLengths[0] = fsize;

	GLuint shaderID = glCreateShader(type);
	glShaderSource(shaderID, 1, sourceStrings, sourceLengths);
	glCompileShader(shaderID);

	GLint status;
	glGetShaderiv(shaderID, GL_COMPILE_STATUS, &status);

	if (status == GL_FALSE) {
		GLint infoLogLen;
		glGetShaderiv(shaderID, GL_INFO_LOG_LENGTH, &infoLogLen);
		char *log = new char[infoLogLen];
		glGetShaderInfoLog(shaderID, infoLogLen, NULL, log);
		printf("error compiling shader %s:\n", file);
		printf("\n%s\n", log);
		delete[] log;
		exit(1);
	}
	
	delete[] data;

	shaders.push_back(shaderID);

	return shaderID;
}

ShaderProgram::ShaderProgram(const char *vertexFile, const char *fragmentFile) {
	vertexID = loadShader(vertexFile, GL_VERTEX_SHADER);
	fragmentID = loadShader(fragmentFile, GL_FRAGMENT_SHADER);
	programID = glCreateProgram();
}

ShaderProgram::ShaderProgram(const char *computeFile) {
	isCompute = true;
	loadShader(computeFile, GL_COMPUTE_SHADER);
	programID = glCreateProgram();
}

ShaderProgram::ShaderProgram(const char *vertexFile, const char *fragmentFile, const char *tCtrlFile, const char *tEvalFile) {
	withTess = true;

	vertexID = loadShader(vertexFile, GL_VERTEX_SHADER);
	fragmentID = loadShader(fragmentFile, GL_FRAGMENT_SHADER);
	tCtrlID = loadShader(tCtrlFile, GL_TESS_CONTROL_SHADER);
	tEvalID = loadShader(tEvalFile, GL_TESS_EVALUATION_SHADER);

	programID = glCreateProgram();
}

void ShaderProgram::setup() {
	for (GLuint shader : this->shaders) {
		glAttachShader(programID, shader);
	}
	// bindAttributes();
	glLinkProgram(programID);
	for (GLuint shader : this->shaders) {
		glDetachShader(programID, shader);
		glDeleteShader(shader);
	}
	glValidateProgram(programID);
	getAllUniformLocations();
}

void ShaderProgram::dispatchCompute(int groupsX, int groupsY, int groupsZ) {
	if (!isCompute) {
		fprintf(stderr, "attempted to dispatch compute on non-compute ShaderProgram\n");
		exit(1);
	}
	glDispatchCompute(groupsX, groupsY, groupsZ);
}

void ShaderProgram::addUniformVariable(const char *varName) {
	uniforms[varName] = glGetUniformLocation(programID, varName);
}

ShaderProgram::~ShaderProgram() {
	stop();
	glDeleteProgram(programID);
}

