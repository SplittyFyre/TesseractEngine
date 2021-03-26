#include "TR/TRStreamAudio.h"

#include <cstdio>
#include <cstring>

#include "TR/TRAudio.h"

TRStreamAudio::TRStreamAudio() {
    alGenSources(1, &this->srcID);
    TRAudio::sources.push_back(srcID);
    alSourcef(srcID, AL_GAIN, 1.f);
    alSourcef(srcID, AL_PITCH, 1.f);
    alSource3f(srcID, AL_POSITION, 0.f, 0.f, 0.f);

    alSourcei(srcID, AL_LOOPING, false);

    alGenBuffers(STREAM_NUM_BUFFERS, buffers);
    for (int i = 0; i < STREAM_NUM_BUFFERS; i++) {
        TRAudio::buffers.push_back(buffers[i]);
    }
}


void TRStreamAudio::play() {
    if (target == nullptr) {
        puts("Tried to play stream audio with target == nullptr");
        return;
    }
    alSourcePlay(srcID);
}

void TRStreamAudio::wind(BufferedAudio *target) {
    this->target = target;
    this->stop();
    alSourcei(srcID, AL_BUFFER, 0); // silly gcc throws warning when using NULL

    for (size_t i = 0; i < STREAM_NUM_BUFFERS; i++) {
        alBufferData(buffers[i], target->format, target->data + i * BUFFER_SIZE, BUFFER_SIZE, target->sampleRate);
    }
    
    alSourceQueueBuffers(srcID, STREAM_NUM_BUFFERS, buffers);

    cursor = STREAM_NUM_BUFFERS * BUFFER_SIZE;
}

bool TRStreamAudio::update() {
    ALint state;
    alGetSourcei(srcID, AL_SOURCE_STATE, &state);
    if (state != AL_PLAYING) {
        return false;
    }

    ALint buffersProcessed = 0;
    alGetSourcei(srcID, AL_BUFFERS_PROCESSED, &buffersProcessed);

    if (buffersProcessed <= 0) {
        return true;
    }

    
    char *chunk = new char[BUFFER_SIZE];

    while (buffersProcessed--) {
        ALuint buf;
        alSourceUnqueueBuffers(srcID, 1, &buf);

        size_t tocopy = BUFFER_SIZE;
        if (cursor + BUFFER_SIZE > target->dataSize) {
            tocopy = target->dataSize - cursor;
        }

        memcpy(chunk, target->data + cursor, tocopy);
        cursor += tocopy;

        if (tocopy < BUFFER_SIZE) {
            memcpy(chunk + tocopy, target->data, BUFFER_SIZE - tocopy);
            cursor = BUFFER_SIZE - tocopy; // reset cursor
            if (stopOnEnd) {
                this->stop();
            }
        }

        alBufferData(buf, target->format, chunk, BUFFER_SIZE, target->sampleRate);
        alSourceQueueBuffers(srcID, 1, &buf);
    }

    delete chunk;

    return true;
}