/*
 * TRDisplayManager.h
 *
 *  Created on: Mar. 21, 2020
 *      Author: oscar
 */

#ifndef ENGINE_RENDERENGINE_TRDISPLAYMANAGER_H_
#define ENGINE_RENDERENGINE_TRDISPLAYMANAGER_H_

#include <GL/glew.h>
#include <GLFW/glfw3.h>

class TRDisplayManager {
public:

	class Mouse {
		friend class TRDisplayManager;
	public:
		static inline int getX() { return x; }
		static inline int getY() { return y; }
		static inline int getDX() { return dx; }
		static inline int getDY() { return dy; }
		static inline double getScrollX() { return sx; }
		static inline double getScrollY() { return sy; }
	private:
		static int x, y;
		static int dx, dy;
		static int px, py;
		static double sx, sy;
	};

	TRDisplayManager() = delete;
	~TRDisplayManager() = delete;

	static void createDisplay(int width, int height, int fpsCap, const char * const title, void (*resizeCallBack)(void));
	static void updateDisplay();
	static void closeDisplay();
	static void renderImGui();
	static bool rendered;

	static void goFullScreen();
	static void exitFullScreen();

	static void grabCursor();
	static void ungrabCursor();

	static inline GLFWwindow *getWindow() { return window; };
	static inline int getWidth() { return width; };
	static inline int getHeight() { return height; };
	static inline float getAspectRatio() { return aspectRatio; };
	static inline bool isFullScreen() { return fullScreen; }

	static inline uint64_t getCurrentTime() {
		return (uint64_t) (glfwGetTime() * 1000);
	}
	static inline float getFrameDelta() {
		return delta;
	}
	static bool windowShouldClose();

	static inline void notifyWindowShouldClose() { glfwSetWindowShouldClose(window, true); }

private:
	static void resizeCallback(GLFWwindow *window, int width, int height);
	static void mousePosCallback(GLFWwindow *window, double x, double y);
	static void scrollCallback(GLFWwindow *window, double x, double y);
	static void keyCallback(GLFWwindow *window, int key, int scancode, int action, int mods);

private:
	static int width, height;
	static float aspectRatio;
	static GLFWwindow *window;

	static bool fullScreen;

	static uint64_t lastFrameTime;
	static float delta;

	static void setupCallbacks();
	static void setupImGui();

	static void (*userResizeCallBack)(void);
};


#endif /* ENGINE_RENDERENGINE_TRDISPLAYMANAGER_H_ */
