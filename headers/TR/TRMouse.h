#include "TR/TRDisplayManager.h"

#define TRMOUSE_LEFT GLFW_MOUSE_BUTTON_LEFT
#define TRMOUSE_RIGHT GLFW_MOUSE_BUTTON_RIGHT
#define TRMOUSE_MIDDLE GLFW_MOUSE_BUTTON_MIDDLE

namespace TRMouse {

inline bool isMouseButtonDown(int button) {
    return glfwGetMouseButton(TRDisplayManager::getWindow(), button) == GLFW_PRESS;
}

}