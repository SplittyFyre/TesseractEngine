#include "TR/TRAudioSource.h"

TRAudioSource::TRAudioSource(float gain, float pitch) {
    alGenSources(1, &this->srcID);
    TRAudio::sources.push_back(srcID);
    alSourcef(srcID, AL_GAIN, gain);
    alSourcef(srcID, AL_PITCH, pitch);
    alSource3f(srcID, AL_POSITION, 0.f, 0.f, 0.f);
}

void TRAudioSource::play(TRSound sound) {
    stop();
    if (sound != prev) {
        prev = sound;
        alSourcei(srcID, AL_BUFFER, sound);
    }
    alSourcePlay(srcID);
}