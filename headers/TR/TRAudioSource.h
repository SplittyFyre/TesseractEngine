#ifndef SRC_ENGINE_AUDIO_TRAUDIOSOURCE
#define SRC_ENGINE_AUDIO_TRAUDIOSOURCE

#include "TR/TRAudio.h"
#include <limits>

class TRAudioSource {
public:
    TRAudioSource(float gain = 1.f, float pitch = 1.f);
    ~TRAudioSource() {};
    void play(TRSound sound);
    inline void pause() { alSourcePause(srcID); }
    inline void resume() { alSourcePlay(srcID); }
    inline void stop() { alSourceStop(srcID); }

    inline void setPosition(float x, float y, float z) { alSource3f(srcID, AL_POSITION, x, y, z); }
    inline void setVelocity(float x, float y, float z) { alSource3f(srcID, AL_VELOCITY, x, y, z); }
    inline void setVolume(float vol) { volume = vol; alSourcef(srcID, AL_GAIN, volume * vmul); }
    inline void setVolumeMultiplier(float m) { vmul = m; setVolume(volume); }
    inline void setPitch(float pitch) { alSourcef(srcID, AL_PITCH, pitch); }

    inline void setLooping(bool b) { alSourcei(srcID, AL_LOOPING, b); }

    inline bool isPlaying() {
        ALint i;
        alGetSourcei(srcID, AL_SOURCE_STATE, &i);
        return i == AL_PLAYING;
    }

private:
    ALuint srcID;
    TRSound prev = std::numeric_limits<TRSound>::max();
    float volume = 1.f, vmul = 1.f;
};

#endif /* SRC_ENGINE_AUDIO_TRAUDIOSOURCE */
