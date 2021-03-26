#ifndef HEADERS_SF_BSUTIL
#define HEADERS_SF_BSUTIL

#include <fstream>

template <typename T>
void bwrite(std::ofstream &fout, T &t) {
    fout.write(reinterpret_cast<char*>(&t), sizeof(T));
}

#endif /* HEADERS_SF_BSUTIL */
