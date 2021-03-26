#include "TR/TRAudio.h"

#include <cstdio>
#include <cstdlib>

#include <cstdint>
#include <fstream>
#include <iostream>
#include <cstring>

std::int32_t convert_to_int(char* buffer, std::size_t len)
{
    std::int32_t a = 0;
    //if(std::endian::native == std::endian::little)
    if(true) // assume little endian
        std::memcpy(&a, buffer, len);
    else
        for(std::size_t i = 0; i < len; ++i)
            reinterpret_cast<char*>(&a)[3 - i] = buffer[i];
    return a;
}

bool load_wav_file_header(std::ifstream& file,
                          std::uint8_t& channels,
                          std::int32_t& sampleRate,
                          std::uint8_t& bitsPerSample,
                          ALsizei& size)
{
    char buffer[4];
    if(!file.is_open())
        return false;

    // the RIFF
    if(!file.read(buffer, 4))
    {
        std::cerr << "ERROR: could not read RIFF" << std::endl;
        return false;
    }
    if(std::strncmp(buffer, "RIFF", 4) != 0)
    {
        std::cerr << "ERROR: file is not a valid WAVE file (header doesn't begin with RIFF)" << std::endl;
        return false;
    }

    // the size of the file
    if(!file.read(buffer, 4))
    {
        std::cerr << "ERROR: could not read size of file" << std::endl;
        return false;
    }

    // the WAVE
    if(!file.read(buffer, 4))
    {
        std::cerr << "ERROR: could not read WAVE" << std::endl;
        return false;
    }
    if(std::strncmp(buffer, "WAVE", 4) != 0)
    {
        std::cerr << "ERROR: file is not a valid WAVE file (header doesn't contain WAVE)" << std::endl;
        return false;
    }

    // "fmt/0"
    if(!file.read(buffer, 4))
    {
        std::cerr << "ERROR: could not read fmt/0" << std::endl;
        return false;
    }

    // this is always 16, the size of the fmt data chunk
    if(!file.read(buffer, 4))
    {
        std::cerr << "ERROR: could not read the 16" << std::endl;
        return false;
    }

    // PCM should be 1?
    if(!file.read(buffer, 2))
    {
        std::cerr << "ERROR: could not read PCM" << std::endl;
        return false;
    }

    // the number of channels
    if(!file.read(buffer, 2))
    {
        std::cerr << "ERROR: could not read number of channels" << std::endl;
        return false;
    }
    channels = convert_to_int(buffer, 2);

    // sample rate
    if(!file.read(buffer, 4))
    {
        std::cerr << "ERROR: could not read sample rate" << std::endl;
        return false;
    }
    sampleRate = convert_to_int(buffer, 4);

    // (sampleRate * bitsPerSample * channels) / 8
    if(!file.read(buffer, 4))
    {
        std::cerr << "ERROR: could not read (sampleRate * bitsPerSample * channels) / 8" << std::endl;
        return false;
    }

    // ?? dafaq
    if(!file.read(buffer, 2))
    {
        std::cerr << "ERROR: could not read dafaq" << std::endl;
        return false;
    }

    // bitsPerSample
    if(!file.read(buffer, 2))
    {
        std::cerr << "ERROR: could not read bits per sample" << std::endl;
        return false;
    }
    bitsPerSample = convert_to_int(buffer, 2);

    // data chunk header "data"
    if(!file.read(buffer, 4))
    {
        std::cerr << "ERROR: could not read data chunk header" << std::endl;
        return false;
    }
    if(std::strncmp(buffer, "data", 4) != 0)
    {
        std::cerr << "ERROR: file is not a valid WAVE file (doesn't have 'data' tag)" << std::endl;
        return false;
    }

    // size of data
    if(!file.read(buffer, 4))
    {
        std::cerr << "ERROR: could not read data size" << std::endl;
        return false;
    }
    size = convert_to_int(buffer, 4);

    // cannot be at the end of file 
    if(file.eof())
    {
        std::cerr << "ERROR: reached EOF on the file" << std::endl;
        return false;
    }
    if(file.fail())
    {
        std::cerr << "ERROR: fail state set on the file" << std::endl;
        return false;
    }

    return true;
}

char* load_wav(const std::string& filename,
               std::uint8_t& channels,
               std::int32_t& sampleRate,
               std::uint8_t& bitsPerSample,
               ALsizei& size)
{
    std::ifstream in(filename, std::ios::binary);
    if(!in.is_open())
    {
        std::cerr << "ERROR: Could not open \"" << filename << "\"" << std::endl;
        return nullptr;
    }
    if(!load_wav_file_header(in, channels, sampleRate, bitsPerSample, size))
    {
        std::cerr << "ERROR: Could not load wav header of \"" << filename << "\"" << std::endl;
        return nullptr;
    }

    char* data = new char[size];

    in.read(data, size);

    return data;
}







ALCdevice *TRAudio::device;
ALCcontext *TRAudio::context;

std::vector<ALuint> TRAudio::buffers;
std::vector<ALuint> TRAudio::sources;
std::vector<TRStreamAudio*> TRAudio::streams;

void TRAudio::init() {
    device = alcOpenDevice(nullptr);
    if (device == nullptr) {
        puts("ERROR: failed to initialize OpenAL");
        exit(1);
    }
    context = alcCreateContext(device, nullptr);
    if (context == nullptr) {
        puts("ERROR: failed to create OpenAL context");
        exit(1);
    }
    
    if (!alcMakeContextCurrent(context)) {
        puts("ERROR: failed to make OpenAL context current");
        exit(1);
    }

    alListener3f(AL_POSITION, 0.f, 0.f, 0.f);
    alListener3f(AL_VELOCITY, 0.f, 0.f, 0.f);
}

ALenum getFormat(int channels, int bitsPerSample) {
    if (channels == 1 && bitsPerSample == 8)
        return AL_FORMAT_MONO8;
    else if (channels == 1 && bitsPerSample == 16)
        return AL_FORMAT_MONO16;
    else if (channels == 2 && bitsPerSample == 8)
        return AL_FORMAT_STEREO8;
    else if (channels == 2 && bitsPerSample == 16)
        return AL_FORMAT_STEREO16;
    else 
        return -1;
}


TRSound TRAudio::loadSound(const char *filename) {
    ALuint buf;
    alGenBuffers(1, &buf);
    buffers.push_back(buf);

    uint8_t channels;
    int32_t sampleRate;
    uint8_t bitsPerSample;
    ALsizei size;
    char *data = load_wav(filename, channels, sampleRate, bitsPerSample, size);
    
    if (data == nullptr) {
        printf("error loading sound file %s\n", filename);
        exit(1);
    }

    ALenum format = getFormat(channels, bitsPerSample);
    if (format == -1) {
        printf("ERROR: unknown wav format in %s, with %d channels and %d bps\n", filename, channels, bitsPerSample);
    }

    alBufferData(buf, format, data, size, sampleRate);
    delete data;

    return buf;
}

TRStreamAudio* TRAudio::makeStreamAudio() {
    TRStreamAudio *sa = new TRStreamAudio();
    streams.push_back(sa);
    return sa;
}

BufferedAudio* TRAudio::loadBufferedAudio(const char *filename) {
    uint8_t channels;
    int32_t sampleRate;
    uint8_t bitsPerSample;
    ALsizei size;
    char *data = load_wav(filename, channels, sampleRate, bitsPerSample, size);
    
    if (data == nullptr) {
        printf("error loading sound file %s\n", filename);
        exit(1);
    }

    ALenum format = getFormat(channels, bitsPerSample);
    if (format == -1) {
        printf("ERROR: unknown wav format in %s, with %d channels and %d bps\n", filename, channels, bitsPerSample);
    }

    if (size <= (STREAM_NUM_BUFFERS - 1) * BUFFER_SIZE) {
        printf("ERROR: %s sound data too small to be streamed\n", filename);
        exit(1);
    }

    return new BufferedAudio(data, size, format, sampleRate);
}


void TRAudio::destroy() {

    printf("Cleaning up %lu sound buffers, %lu sources\n", buffers.size(), sources.size());

    alDeleteSources(sources.size(), sources.data());
    alDeleteBuffers(buffers.size(), buffers.data());

    for (TRStreamAudio *sa : streams) {
        delete sa;
    }

    if (!alcMakeContextCurrent(nullptr)) {
        puts("warning: failed to unbind OpenAL context");
    }
    alcDestroyContext(context);
    if (!alcCloseDevice(device)) {
        puts("warning: alcCloseDevice returned false");
    }
}