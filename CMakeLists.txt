cmake_minimum_required(VERSION 3.10)

project (ImGuizmo)

file(GLOB_RECURSE IMGUIZMO_SRC_FILES
    "ImGuizmo.h"
    "ImGuizmo.cpp"
)

add_library(ImGuizmo ${IMGUIZMO_SRC_FILES})

target_include_directories(ImGuizmo PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(ImGuizmo ImGUI)