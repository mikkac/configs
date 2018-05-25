cmake_minimum_required (VERSION 3.5)
project (mainProject)

include(ClangTools.cmake)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -O3 -Wextra -pedantic")
find_package(Boost 1.67.0 COMPONENTS system REQUIRED)

file(GLOB HDR ${PROJECT_SOURCE_DIR}/src/*.h)
file(GLOB SRC ${PROJECT_SOURCE_DIR}/src/*.cpp) #${PROJECT_SOURCE_DIR}/tests/*.cpp)

#set(SRC "${CMAKE_SOURCE_DIR/src/file_raii.cpp}" "${CMAKE_SOURCE_DIR/src/main.cpp}" "${CMAKE_SOURCE_DIR/tests/file_raii_tests.cpp}")
#set(HDR "${CMAKE_SOURCE_DIR/src/file_raii.h}" "${CMAKE_SOURCE_DIR/src/span.h}")

add_executable(${PROJECT_NAME} src/main.cpp)
target_link_libraries(${PROJECT_NAME} PUBLIC Boost::system pthread)

add_clang_tool_targets(${PROJECT_NAME} "${SRC}" "${HDR}")

