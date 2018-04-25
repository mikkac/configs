cmake_minimum_required(VERSION 3.5)
project(generatorTests)
set(CMAKE_CXX_STANDARD 14)
include(../ClangTools.cmake)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -O3 -Wno-long-long -pedantic")

file(GLOB_RECURSE PROJECT_HEADER_FILES ${PROJECT_SOURCE_DIR}/*.h)
file(GLOB_RECURSE PROJECT_SOURCE_FILES ${PROJECT_SOURCE_DIR}/*.cpp)

add_executable(generatorTests generatorTests.cpp fakerandom.cpp $<TARGET_OBJECTS:generator>)
target_link_libraries(generatorTests gtest_main gtest pthread)

add_clang_tool_targets(${PROJECT_NAME} "${PROJECT_HEADER_FILES}" "${PROJECT_SOURCE_FILES}")
