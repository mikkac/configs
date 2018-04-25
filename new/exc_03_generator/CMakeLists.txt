cmake_minimum_required(VERSION 3.5)
project(main_project)
set(CMAKE_CXX_STANDARD 14)
include(ClangTools.cmake)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wno-long-long -pedantic")
file(GLOB_RECURSE PROJECT_HEADER_FILES ./inc/*.h)
file(GLOB_RECURSE PROJECT_SOURCE_FILES ./src/*.cpp)
#set(CMAKE_BUILD_TYPE Debug)
include_directories(inc)

add_library(generator OBJECT src/generator.cpp src/realrandom.cpp)

add_executable(${PROJECT_NAME} src/main.cpp $<TARGET_OBJECTS:generator>)

add_clang_tool_targets(${PROJECT_NAME} "${PROJECT_SOURCE_FILES}" "${PROJECT_HEADER_FILES}")

add_subdirectory(tests)
