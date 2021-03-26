/*
 * TRKeyboard.h
 *
 *  Created on: Mar. 27, 2020
 *      Author: oscar
 */

#ifndef ENGINE_UTIL_TRKEYBOARD_H_
#define ENGINE_UTIL_TRKEYBOARD_H_

#include <set>

class TRKeyboard {
    friend class TRDisplayManager;
public:
    static bool isKeyDown(int glfwkey);
    inline static bool getCbKey(int glfwkey) { return cbKeys.find(glfwkey) != cbKeys.end(); };
private:
    inline static void notifyKey(int key) { cbKeys.insert(key); };
    inline static void clear() { cbKeys.clear(); };

    static std::set<int> cbKeys;
};

#endif /* ENGINE_UTIL_TRKEYBOARD_H_ */
