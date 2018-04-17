cmake_minimum_required(VERSION 3.5)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wno-long-long -pedantic")

add_executable(RangeValueTests RangeValueTests.cpp $<TARGET_OBJECTS:RangeValue>)
target_link_libraries(RangeValueTests gtest gtest_main pthread)

