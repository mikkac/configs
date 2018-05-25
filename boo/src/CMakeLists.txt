cmake_minimum_required (VERSION 3.5)
project (pupa)

include(${PROJECT_SOURCE_DIR}/../ClangTools.cmake)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wno-long-long -pedantic")

#set(SOURCES "${PROJECT_SOURCE_DIR}/*.cpp")
#set(HEADERS "${PROJECT_SOURCE_DIR}/*.h")

file(GLOB HEADERS ./*.h)
file(GLOB SOURCES ./*.cpp) #${PROJECT_SOURCE_DIR}/tests/*.cpp)


add_library(pupa ${SOURCES} ${HEADERS})
target_include_directories(pupa PUBLIC "${CMAKE_SOURCE_DIR}/src/")
add_clang_tool_targets(${PROJECT_NAME} "${SOURCES}" "${HEADERS}")
