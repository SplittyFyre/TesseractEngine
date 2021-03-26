#include "SF/DevMode.h"

#include "TR/TRRay.h"
#include "TR/TRKeyboard.h"
#include "TR/TRMouse.h"
#include "SF/PathData.h"

#include "TR/LeafGeometry.h"

#include <cstdio>
#include <imgui/imgui.h>

std::vector<glm::vec3> DevMode::path;

void DevMode::update(SFResources *res, TRScene *scene, TRCamera *cam, GroupEntity *treeNode) {

    ImGui::Begin("DevMode");

    static int mode = -1;

    if (ImGui::Button("Path Maker")) {
        mode = 0;
    }
    ImGui::SameLine();
    if (ImGui::Button("Tesselation")) {
        mode = 1;
    }
    ImGui::SameLine();
    if (ImGui::Button("Fog")) {
        mode = 2;
    }
    ImGui::SameLine();
    if (ImGui::Button("Trees")) {
        mode = 3;
    }

    ImGui::End();

    switch (mode) {
    case 0:
        pathMaker(res, scene, cam);
        break;
    case 1:
        terrainTess(scene);
        break;
    case 2:
        fogControl(scene);
    case 3:
        trees(scene, cam, treeNode);
        break;
    }
}


void DevMode::terrainTess(TRScene *scene) {
    ImGui::Begin("Tess Control");
    ImGui::SliderFloat("min", &scene->terrain->minTess, 1.f, 64.f);
    ImGui::SliderFloat("max", &scene->terrain->maxTess, 1.f, 64.f);
    ImGui::End();
}

void DevMode::pathMaker(SFResources *res, TRScene *scene, TRCamera *cam) {

    static bool flag = false;

    TRRay ray = cam->castRayCursor();

    glm::vec3 intersect;
    bool success = ray.intersectionTerrain(scene->terrain.get(), intersect);

    if (TRMouse::isMouseButtonDown(TRMOUSE_LEFT)) {
        if (!flag) {
            if (success) {
                path.push_back(intersect);
            }
            flag = true;
        }
    }
    else {
        flag = false;
    }

    ImGui::Begin("Path Maker");

    ImGui::Text("Current Length: %d", int(path.size()));
    if (ImGui::Button("Pop")) {
        if (!path.empty()) {
            path.pop_back();
        }
    }
    if (ImGui::Button("Drop")) {
        path.clear();
    }
    if (ImGui::Button("Export")) {
        puts("Path Export:");
        for (const glm::vec3 &pos : path) {
            printf("%f %f\n", pos.x, pos.z);
        }
    }

    if (ImGui::Button("Import")) {
        path.clear();
        PathData pd("res/paths/path3.txt");
        for (const auto v : pd.getPositions()) {
            path.emplace_back(v.x, scene->terrain->getHeightRaw(v.x, v.y), v.y);
        }
    }

    if (!success) {
        ImGui::TextColored(ImVec4(1.f, 0.f, 0.f, 1.f), "No Intersect");
    }

    ImGui::End();

    for (const glm::vec3 &pos : path) {
        scene->immediateEntity(res->markerModel.get(), pos, 0.f, 0.f, 0.f, glm::vec3(10.f));
    }
}

void DevMode::fogControl(TRScene *scene) {
    ImGui::Begin("Fog");
    ImGui::SliderFloat("Density", &scene->skyCtx.fogDensity, 0.f, 0.001f, "%.5f", 0.2f);
    ImGui::SliderFloat("Gradient", &scene->skyCtx.fogGradient, 0.f, 20.f);
    ImGui::End();
}




void DevMode::trees(TRScene *scene, TRCamera *cam, GroupEntity *treeNode) {

    static float treetime = 0.f;
    static float cooldown = 0.25f;

    TRRay ray = cam->castRayCursor();

    glm::vec3 intersect;
    bool success = ray.intersectionTerrain(scene->terrain.get(), intersect);

    treetime += TRDisplayManager::getFrameDelta();
    if (TRMouse::isMouseButtonDown(TRMOUSE_LEFT)) {
        if (treetime > cooldown) {
            if (success) {
                treeNode->addChild(std::make_shared<LeafGeometry>(
                    SFResources::sg()->treeModel, intersect, 0.f, 0.f, 0.f, glm::vec3(5.f)
                ));
                treetime = 0.f;
            }
        }
    }

    if (TRKeyboard::getCbKey(GLFW_KEY_BACKSPACE)) {
        if (!treeNode->children.empty()) {
            treeNode->children.pop_back();
        }
    }


    ImGui::Begin("Trees");
    ImGui::Text("num: %d", int(treeNode->children.size()));
    ImGui::SliderFloat("cooldown", &cooldown, 0.05f, 0.5f);
    if (ImGui::Button("Export")) {
        puts("Trees Export:");
        for (const auto &t : treeNode->children) {
            glm::vec3 &v = dynamic_cast<LeafGeometry*>(t.get())->position;
            printf("%f %f %f\n", v.x, v.y, v.z);
        }
    }
    ImGui::End();
}