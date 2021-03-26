#include "TR/QuadTree.h"

#include <cstdio>

#define NORTH 0
#define SOUTH 1
#define EAST 2
#define WEST 3

float QuadTree::minEdgeLength = 25.f;
float QuadTree::splitDistanceMultiplier = 2.f;

QuadTree::QuadTree(QuadTree *parent, Type t, float x, float y, float z, float edgeLen)
: parent(parent), type(t), x(x), y(y), z(z), edgeLen(edgeLen), halfEdgeLen(edgeLen * 0.5f)
{

}

QuadTree::~QuadTree() {
    if (hasChildren) {
        delete childNW;
        delete childNE;
        delete childSE;
        delete childSW;
    }
}


void QuadTree::updateChildren(const glm::vec3 &camPos, std::vector<QuadTree*> &renderList) {

    float distSquared;
    {
        float dx = camPos.x - (x + halfEdgeLen);
        float dy = camPos.y - y;
        float dz = camPos.z - (z + halfEdgeLen);
        distSquared = dx * dx + dy * dy + dz * dz;
    }

    float f = splitDistanceMultiplier * edgeLen;

    if (edgeLen > QuadTree::minEdgeLength && distSquared < f * f) {
        if (!hasChildren) {
            childNW = new QuadTree(this, Type::NW, x + halfEdgeLen, y, z, halfEdgeLen);
            childNE = new QuadTree(this, Type::NE, x + halfEdgeLen, y, z + halfEdgeLen, halfEdgeLen);
            childSE = new QuadTree(this, Type::SE, x, y, z + halfEdgeLen, halfEdgeLen);
            childSW = new QuadTree(this, Type::SW, x, y, z, halfEdgeLen);
            hasChildren = true;
        }
        childNW->updateChildren(camPos, renderList);
        childNE->updateChildren(camPos, renderList);
        childSE->updateChildren(camPos, renderList);
        childSW->updateChildren(camPos, renderList);
    }
    else {
        if (hasChildren) {
            delete childNW;
            delete childNE;
            delete childSE;
            delete childSW;
            hasChildren = false;
        }
        renderList.push_back(this);
    }
}


void QuadTree::updateNeighbours() {

    switch (type) {

        case Type::NW:
            if (parent->neighbourN) {
                neighbourN = parent->neighbourN->childSW;
            }
            neighbourE = parent->childNE;
            neighbourS = parent->childSW;
            if (parent->neighbourW) {
                neighbourW = parent->neighbourW->childNE;
            }
            break;
        case Type::NE:
            if (parent->neighbourN) {
                neighbourN = parent->neighbourN->childSE;
            }
            if (parent->neighbourE) {
                neighbourE = parent->neighbourE->childNW;
            }
            neighbourS = parent->childSE;
            neighbourW = parent->childNW;
            break;
        case Type::SE:
            neighbourN = parent->childNE;
            if (parent->neighbourE) {
                neighbourE = parent->neighbourE->childSW;
            }
            if (parent->neighbourS) {
                neighbourS = parent->neighbourS->childNE;
            }
            neighbourW = parent->childSW;
            break;
        case Type::SW:
            neighbourN = parent->childNW;
            neighbourE = parent->childSE;
            if (parent->neighbourS) {
                neighbourS = parent->neighbourS->childNW;
            }
            if (parent->neighbourW) {
                neighbourW = parent->neighbourW->childSE;
            }
            break;
        case Type::ROOT: // don't try to access parents of root
            break;
    }

    if (hasChildren) {
        childNW->updateNeighbours();
        childNE->updateNeighbours();
        childSE->updateNeighbours();
        childSW->updateNeighbours();
    }
    else {
        updateTessScaling();
    }
}



void QuadTree::updateTessScaling() {
    
    switch (type) {

        case Type::NW:
            setTess(NORTH, parent->neighbourN && !parent->neighbourN->hasChildren);
            setTess(WEST, parent->neighbourW && !parent->neighbourW->hasChildren);
            break;
        case Type::NE:
            setTess(NORTH, parent->neighbourN && !parent->neighbourN->hasChildren);
            setTess(EAST, parent->neighbourE && !parent->neighbourE->hasChildren);
            break;
        case Type::SE:
            setTess(SOUTH, parent->neighbourS && !parent->neighbourS->hasChildren);
            setTess(EAST, parent->neighbourE && !parent->neighbourE->hasChildren);
            break;
        case Type::SW:
            setTess(SOUTH, parent->neighbourS && !parent->neighbourS->hasChildren);
            setTess(WEST, parent->neighbourW && !parent->neighbourW->hasChildren);
            break;
        case Type::ROOT: // don't try to access parents of root
            break;
    }

}