/*
 * ShaderProgram.h
 *
 *  Created on: Mar. 22, 2020
 *      Author: oscar
 */

#ifndef ENGINE_RESOURCEMANAGEMENT_SHADERPROGRAM_H_
#define ENGINE_RESOURCEMANAGEMENT_SHADERPROGRAM_H_

#include <GL/glew.h>
#include <string>
#include <unordered_map>
#include <vector>
#include "glm/glm.hpp"
#include "glm/gtc/type_ptr.hpp"

class ShaderProgram {
public:
	ShaderProgram(const char *vertexFile, const char *fragmentFile);
	ShaderProgram(const char *computeFile);
	ShaderProgram(const char *vertexFile, const char *fragmentFile, const char *tCtrlFile, const char *tEvalFile);
	virtual ~ShaderProgram();

	inline void start() { glUseProgram(programID); };
	inline void stop() { glUseProgram(0); };
	void dispatchCompute(int groupsX, int groupsY, int groupsZ);

private:
	GLuint programID;
	GLuint vertexID, fragmentID;
	GLuint tCtrlID, tEvalID;

	bool isCompute = false;
	bool withTess = false;

	std::vector<GLuint> shaders;
	GLuint loadShader(const char *file, GLenum type);

protected:
	std::unordered_map<std::string, GLuint> uniforms;
	virtual void getAllUniformLocations() = 0;

	void addUniformVariable(const char *varName);

	inline GLuint getUniformLocation(const char *varName) { return glGetUniformLocation(programID, varName); };

	void setup();

	// loading

	inline void loadFloat(const char *name, float f) { glUniform1f(uniforms[name], f); };
	inline void loadInt(const char *name, int i) { glUniform1i(uniforms[name], i); };
	inline void loadBoolean(const char *name, bool b) { glUniform1i(uniforms[name], b ? 1 : 0); };

	inline void loadVec2(const char *name, const glm::vec2 &vec)
	{ glUniform2f(uniforms[name], vec.x, vec.y); };
	inline void loadVec2(const char *name, float x, float y)
	{ glUniform2f(uniforms[name], x, y); };

	inline void loadVec3(const char *name, const glm::vec3 &vec)
	{ glUniform3f(uniforms[name], vec.x, vec.y, vec.z); };
	inline void loadVec3(const char *name, float x, float y, float z)
	{ glUniform3f(uniforms[name], x, y, z); };
	inline void loadVec3(GLuint location, const glm::vec3 &vec)
	{ glUniform3f(location, vec.x, vec.y, vec.z); };

	inline void loadVec4(const char *name, const glm::vec4 &vec)
	{ glUniform4f(uniforms[name], vec.x, vec.y, vec.z, vec.w); };
	inline void loadVec4(const char *name, float x, float y, float z, float w)
	{ glUniform4f(uniforms[name], x, y, z, w); };

	inline void loadMat4(const char *name, const glm::mat4 &mat)
	{ glUniformMatrix4fv(uniforms[name], 1, false, glm::value_ptr(mat)); };

};

#endif /* ENGINE_RESOURCEMANAGEMENT_SHADERPROGRAM_H_ */
