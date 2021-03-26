/*
 * TRDisplayManager.cpp
 *
 *  Created on: Mar. 21, 2020
 *      Author: oscar
 */

#include "TR/TRDisplayManager.h"

#include <stdio.h>
#include "TR/TRCamera.h"
#include "TR/TRLoader.h"
#include "TR/TRAudio.h"

#include "TR/TRKeyboard.h"

#include "imgui.h"
#include "imgui/imgui_impl_opengl3.h"
#include "imgui/imgui_impl_glfw.h"


GLFWwindow *TRDisplayManager::window = nullptr;
int TRDisplayManager::width = -1;
int TRDisplayManager::height = -1;
float TRDisplayManager::aspectRatio = -1.f;
bool TRDisplayManager::fullScreen = false;
uint64_t TRDisplayManager::lastFrameTime = 0;
float TRDisplayManager::delta = 0.f;

int TRDisplayManager::Mouse::x = 0;
int TRDisplayManager::Mouse::y = 0;
int TRDisplayManager::Mouse::dx = 0;
int TRDisplayManager::Mouse::dy = 0;
int TRDisplayManager::Mouse::px = 0;
int TRDisplayManager::Mouse::py = 0;
double TRDisplayManager::Mouse::sx = 0.0;
double TRDisplayManager::Mouse::sy = 0.0;

bool TRDisplayManager::rendered = false;

void (*TRDisplayManager::userResizeCallBack)(void) = nullptr;


void TRDisplayManager::createDisplay(int width, int height, int fpsCap, const char * const title, void (*resizeCallBack)(void)) {

	TRDisplayManager::width = width;
	TRDisplayManager::height = height;
	TRDisplayManager::aspectRatio = float(width) / float(height);

	printf("window created to %d, %d with aspect ratio %f\n", width, height, aspectRatio);

	glfwInit();

	glfwDefaultWindowHints();

	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
	//glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
	glfwWindowHint(GLFW_DEPTH_BITS, 24);
	glfwWindowHint(GLFW_RESIZABLE, GL_TRUE);
	glfwWindowHint(GLFW_VISIBLE, GL_TRUE);
	glfwWindowHint(GLFW_DECORATED, GL_TRUE);
	glfwWindowHint(GLFW_FOCUSED, GL_TRUE);

	window = glfwCreateWindow(width, height, title, nullptr, nullptr);

	glfwMakeContextCurrent(window);


	glewExperimental = GL_TRUE;
	if (glewInit() != GLEW_OK) {
		puts("Failed to initialize glew\n");
		exit(1);
	}

	glfwSwapInterval(1);
	glfwShowWindow(window);

	glEnable(GL_MULTISAMPLE);

	glViewport(0, 0, width, height);
	lastFrameTime = getCurrentTime();

	setupCallbacks();
	userResizeCallBack = resizeCallBack;

	TRLoader::init();
	setupImGui(); // imgui callbacks will chain to mine

	TRAudio::init();
}

void TRDisplayManager::setupImGui() {
	ImGui::CreateContext();
	ImGui::GetIO().IniFilename = NULL;
	ImGui_ImplGlfw_InitForOpenGL(window, true);
	ImGui_ImplOpenGL3_Init("#version 430 core");
}

void TRDisplayManager::setupCallbacks() {
	glfwSetWindowSizeCallback(window, resizeCallback);
	glfwSetCursorPosCallback(window, mousePosCallback);
	glfwSetScrollCallback(window, scrollCallback);
	glfwSetKeyCallback(window, keyCallback);
}

void TRDisplayManager::resizeCallback(GLFWwindow *window, int width, int height) {
	glViewport(0, 0, width, height);
	TRDisplayManager::width = width;
	TRDisplayManager::height = height;
	TRDisplayManager::aspectRatio = float(width) / float(height);
	printf("window resized to %d, %d with aspect ratio %f\n", width, height, aspectRatio);

	for (TRCamera *c : TRCamera::cameras) {
		c->notifyResize();
	}
	TRLoader::rebulidFbos(width, height);

	if (userResizeCallBack != nullptr) {
		(*userResizeCallBack)();
	}
}
void TRDisplayManager::mousePosCallback(GLFWwindow *window, double x, double y) {
	Mouse::x = int(x);
	Mouse::y = int(y);
}
void TRDisplayManager::scrollCallback(GLFWwindow *window, double x, double y) {
	Mouse::sx = x;
	Mouse::sy = y;
}
void TRDisplayManager::keyCallback(GLFWwindow *window, int key, int scancode, int action, int mods) {
	if (action == GLFW_PRESS) {
		TRKeyboard::notifyKey(key);
	}
}


void TRDisplayManager::goFullScreen() {
	if (fullScreen) {
		return;
	}
	GLFWmonitor *monitor = glfwGetPrimaryMonitor();
	const GLFWvidmode *mode = glfwGetVideoMode(monitor);
	glfwSetWindowMonitor(window, monitor, 0, 0, mode->width, mode->height, mode->refreshRate);
	fullScreen = true;
}

void TRDisplayManager::exitFullScreen() {
	if (!fullScreen) {
		return;
	}
	glfwSetWindowMonitor(window, nullptr, 0, 0, width, height, GLFW_DONT_CARE);
	fullScreen = false;
}


void TRDisplayManager::grabCursor() {
	glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
}

void TRDisplayManager::ungrabCursor() {
	glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
}


bool TRDisplayManager::windowShouldClose() {
	ImGui_ImplOpenGL3_NewFrame();
	ImGui_ImplGlfw_NewFrame();
	ImGui::NewFrame();

	return glfwWindowShouldClose(window);
}

void TRDisplayManager::renderImGui() {
	if (!rendered) {
		ImGui::Render();
		ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
		rendered = true;
	}
}

void TRDisplayManager::updateDisplay() {

	renderImGui(); // if not already
	rendered = false;

	Mouse::sx = 0.0; Mouse::sy = 0.0;
	TRKeyboard::clear();
	
	glfwSwapBuffers(TRDisplayManager::window);
	glfwPollEvents();

	Mouse::dx = Mouse::px - Mouse::x;
	Mouse::dy = Mouse::py - Mouse::y;
	Mouse::px = Mouse::x;
	Mouse::py = Mouse::y;

	uint64_t currentFrameTime = getCurrentTime();
	delta = (currentFrameTime - lastFrameTime) / 1000.f;
	lastFrameTime = currentFrameTime;
}

void TRDisplayManager::closeDisplay() {
	TRLoader::cleanUp();

	ImGui_ImplOpenGL3_Shutdown();
	ImGui_ImplGlfw_Shutdown();
	ImGui::DestroyContext();

	glfwHideWindow(window);
	glfwDestroyWindow(window);
	TRAudio::destroy();
}
