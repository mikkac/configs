# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/build

# Utility rule file for generatorTests-format.

# Include the progress variables for this target.
include tests/CMakeFiles/generatorTests-format.dir/progress.make

tests/CMakeFiles/generatorTests-format:
	cd /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/build/tests && /usr/bin/clang-format -i -style=file /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/tests/fakerandom.h /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/tests/fakerandom.cpp /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/tests/generatorTests.cpp

generatorTests-format: tests/CMakeFiles/generatorTests-format
generatorTests-format: tests/CMakeFiles/generatorTests-format.dir/build.make

.PHONY : generatorTests-format

# Rule to build all files generated by this target.
tests/CMakeFiles/generatorTests-format.dir/build: generatorTests-format

.PHONY : tests/CMakeFiles/generatorTests-format.dir/build

tests/CMakeFiles/generatorTests-format.dir/clean:
	cd /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/generatorTests-format.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/generatorTests-format.dir/clean

tests/CMakeFiles/generatorTests-format.dir/depend:
	cd /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/tests /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/build /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/build/tests /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/build/tests/CMakeFiles/generatorTests-format.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/generatorTests-format.dir/depend
