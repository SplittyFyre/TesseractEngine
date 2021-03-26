#include <GL/glew.h>

class GLQuery {
    friend class TRLoader;
public:
    inline void start() { glBeginQuery(type, queryID); inUse = true; }
    inline void stop() { glEndQuery(type); inUse = false; }
    inline int getResult() {
        GLint r; glGetQueryObjectiv(queryID, GL_QUERY_RESULT, &r);
        return r;
    }
    inline bool isResultReady() {
        GLint r; glGetQueryObjectiv(queryID, GL_QUERY_RESULT_AVAILABLE, &r);
        return r;
    }
    inline bool isInUse() const { return inUse; }
private:
    GLQuery(GLuint id, GLenum type) : queryID(id), type(type) {}
    const GLuint queryID;
    const GLenum type;
    bool inUse = false;
};