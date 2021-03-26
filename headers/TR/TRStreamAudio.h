#ifndef SRC_ENGINE_AUDIO_TRSTREAMAUDIO
#define SRC_ENGINE_AUDIO_TRSTREAMAUDIO

#include "AL/al.h"
#include <cstdlib>

#define STREAM_NUM_BUFFERS 3
#define BUFFER_SIZE 65536


struct BufferedAudio {
    const char * const data;
    const size_t dataSize;
    const ALenum format;
    const int sampleRate;
    BufferedAudio(char *dat, size_t len, ALenum fmt, int rate) : data(dat), dataSize(len), format(fmt), sampleRate(rate) {}
    ~BufferedAudio() { delete data; }
};


class TRStreamAudio {
    friend class TRAudio;
public:
    void play();
    bool update();
    void wind(BufferedAudio *target);
    inline void stop() { alSourceStop(srcID); }

    inline void setPosition(float x, float y, float z) { alSource3f(srcID, AL_POSITION, x, y, z); }
    inline void setVelocity(float x, float y, float z) { alSource3f(srcID, AL_VELOCITY, x, y, z); }
    inline void setVolume(float vol) { volume = vol; alSourcef(srcID, AL_GAIN, volume * vmul); }
    inline void setVolumeMultiplier(float m) { vmul = m; setVolume(volume); }
    inline void setPitch(float pitch) { alSourcef(srcID, AL_PITCH, pitch); }

    bool stopOnEnd = true;

    inline bool isPlaying() {
        ALint i;
        alGetSourcei(srcID, AL_SOURCE_STATE, &i);
        return i == AL_PLAYING;
    }

private:
    TRStreamAudio();
    ~TRStreamAudio() {};
private:
    ALuint srcID;
    ALuint buffers[STREAM_NUM_BUFFERS];

    size_t cursor;
    BufferedAudio *target = nullptr;

    float volume = 1.f, vmul = 1.f;
};

#endif /* SRC_ENGINE_AUDIO_TRSTREAMAUDIO */
