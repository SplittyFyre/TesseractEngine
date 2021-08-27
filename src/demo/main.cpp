#include "TR/TRDisplayManager.h"

void oceandemo();
void dragondemo();
void terraindemo();

int main(void) {

    TRDisplayManager::createDisplay(930, 1016, 60, "Demo", nullptr);

    terraindemo();
    
    TRDisplayManager::closeDisplay();

    return 0;
}