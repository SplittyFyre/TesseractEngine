#ifndef HEADERS_SF_BINARYUTIL
#define HEADERS_SF_BINARYUTIL

#include <fstream>

class BinaryUtil {
public:
    BinaryUtil(std::fstream &fst, bool read) : fst(fst), read(read) {}
    ~BinaryUtil() {}

    template <typename T>
    void operator() (T &t) {
        if (read) {
            fst.read(reinterpret_cast<char*>(&t), sizeof(T));
        }
        else {
            fst.write(reinterpret_cast<char*>(&t), sizeof(T));
        }
    }   
private:
    std::fstream &fst;
public:
    const bool read;
};

#endif /* HEADERS_SF_BINARYUTIL */
