# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/salmos/SLAM/rs2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/salmos/SLAM/rs2/build

# Include any dependencies generated for this target.
include ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/depend.make

# Include the progress variables for this target.
include ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/progress.make

# Include the compile flags for this target's objects.
include ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/flags.make

ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o: ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/flags.make
ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o: ../ThirdParty/yaml-cpp-0.7.0/util/read.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salmos/SLAM/rs2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o"
	cd /home/salmos/SLAM/rs2/build/ThirdParty/yaml-cpp-0.7.0/util && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yaml-cpp-read.dir/read.cpp.o -c /home/salmos/SLAM/rs2/ThirdParty/yaml-cpp-0.7.0/util/read.cpp

ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yaml-cpp-read.dir/read.cpp.i"
	cd /home/salmos/SLAM/rs2/build/ThirdParty/yaml-cpp-0.7.0/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/salmos/SLAM/rs2/ThirdParty/yaml-cpp-0.7.0/util/read.cpp > CMakeFiles/yaml-cpp-read.dir/read.cpp.i

ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yaml-cpp-read.dir/read.cpp.s"
	cd /home/salmos/SLAM/rs2/build/ThirdParty/yaml-cpp-0.7.0/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/salmos/SLAM/rs2/ThirdParty/yaml-cpp-0.7.0/util/read.cpp -o CMakeFiles/yaml-cpp-read.dir/read.cpp.s

ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o.requires:

.PHONY : ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o.requires

ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o.provides: ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o.requires
	$(MAKE) -f ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/build.make ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o.provides.build
.PHONY : ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o.provides

ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o.provides.build: ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o


# Object files for target yaml-cpp-read
yaml__cpp__read_OBJECTS = \
"CMakeFiles/yaml-cpp-read.dir/read.cpp.o"

# External object files for target yaml-cpp-read
yaml__cpp__read_EXTERNAL_OBJECTS =

../bin/read: ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o
../bin/read: ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/build.make
../bin/read: ../lib/libyaml-cpp.a
../bin/read: ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/salmos/SLAM/rs2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/read"
	cd /home/salmos/SLAM/rs2/build/ThirdParty/yaml-cpp-0.7.0/util && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yaml-cpp-read.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/build: ../bin/read

.PHONY : ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/build

ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/requires: ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/read.cpp.o.requires

.PHONY : ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/requires

ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/clean:
	cd /home/salmos/SLAM/rs2/build/ThirdParty/yaml-cpp-0.7.0/util && $(CMAKE_COMMAND) -P CMakeFiles/yaml-cpp-read.dir/cmake_clean.cmake
.PHONY : ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/clean

ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/depend:
	cd /home/salmos/SLAM/rs2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/salmos/SLAM/rs2 /home/salmos/SLAM/rs2/ThirdParty/yaml-cpp-0.7.0/util /home/salmos/SLAM/rs2/build /home/salmos/SLAM/rs2/build/ThirdParty/yaml-cpp-0.7.0/util /home/salmos/SLAM/rs2/build/ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ThirdParty/yaml-cpp-0.7.0/util/CMakeFiles/yaml-cpp-read.dir/depend

