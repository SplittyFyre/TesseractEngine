#ifndef HEADERS_TR_AUDIOMANAGER
#define HEADERS_TR_AUDIOMANAGER

#include "AL/alc.h"
#include "AL/al.h"

#include "TR/TRStreamAudio.h"
#include <vector>

typedef ALuint TRSound;

class TRAudio {
    friend class TRDisplayManager;
    friend class TRAudioSource;
    friend class TRStreamAudio;
public:
    static inline void setListenerPosition(float x, float y, float z) { alListener3f(AL_POSITION, x, y, z); }
    static inline void setListenerVelocity(float x, float y, float z) { alListener3f(AL_VELOCITY, x, y, z); }
    static inline void setMasterVolume(float mv) { alListenerf(AL_GAIN, mv); }
    static TRSound loadSound(const char *filename);
    static TRStreamAudio* makeStreamAudio();
    static BufferedAudio* loadBufferedAudio(const char *filename);
private:
    static void init();
    static void destroy();
private:    
    static std::vector<ALuint> buffers;
    static std::vector<ALuint> sources;
    static std::vector<TRStreamAudio*> streams;

    static ALCdevice *device;
    static ALCcontext *context;

    TRAudio() {};
    ~TRAudio() {};
};

#endif /* HEADERS_TR_AUDIOMANAGER */
