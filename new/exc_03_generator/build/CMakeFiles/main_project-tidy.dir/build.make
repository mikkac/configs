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

# Utility rule file for main_project-tidy.

# Include the progress variables for this target.
include CMakeFiles/main_project-tidy.dir/progress.make

CMakeFiles/main_project-tidy:
	/usr/bin/clang-tidy-4.0 -p build /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/./src/generator.cpp /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/./src/main.cpp /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/./src/realrandom.cpp -header-filter="/home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/"

main_project-tidy: CMakeFiles/main_project-tidy
main_project-tidy: CMakeFiles/main_project-tidy.dir/build.make

.PHONY : main_project-tidy

# Rule to build all files generated by this target.
CMakeFiles/main_project-tidy.dir/build: main_project-tidy

.PHONY : CMakeFiles/main_project-tidy.dir/build

CMakeFiles/main_project-tidy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main_project-tidy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main_project-tidy.dir/clean

CMakeFiles/main_project-tidy.dir/depend:
	cd /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/build /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/build /home/kaczmmik/repos/incubator/cpp/kaczmmik/exc_03_generator/build/CMakeFiles/main_project-tidy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main_project-tidy.dir/depend
