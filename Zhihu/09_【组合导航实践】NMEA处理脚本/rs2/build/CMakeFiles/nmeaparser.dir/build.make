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
include CMakeFiles/nmeaparser.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nmeaparser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nmeaparser.dir/flags.make

CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o: CMakeFiles/nmeaparser.dir/flags.make
CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o: ../src/minmea/minmea.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salmos/SLAM/rs2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o -c /home/salmos/SLAM/rs2/src/minmea/minmea.cpp

CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/salmos/SLAM/rs2/src/minmea/minmea.cpp > CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.i

CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/salmos/SLAM/rs2/src/minmea/minmea.cpp -o CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.s

CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o.requires:

.PHONY : CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o.requires

CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o.provides: CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o.requires
	$(MAKE) -f CMakeFiles/nmeaparser.dir/build.make CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o.provides.build
.PHONY : CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o.provides

CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o.provides.build: CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o


CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o: CMakeFiles/nmeaparser.dir/flags.make
CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o: ../src/nmeaparser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salmos/SLAM/rs2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o -c /home/salmos/SLAM/rs2/src/nmeaparser.cpp

CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/salmos/SLAM/rs2/src/nmeaparser.cpp > CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.i

CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/salmos/SLAM/rs2/src/nmeaparser.cpp -o CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.s

CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o.requires:

.PHONY : CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o.requires

CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o.provides: CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o.requires
	$(MAKE) -f CMakeFiles/nmeaparser.dir/build.make CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o.provides.build
.PHONY : CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o.provides

CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o.provides.build: CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o


# Object files for target nmeaparser
nmeaparser_OBJECTS = \
"CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o" \
"CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o"

# External object files for target nmeaparser
nmeaparser_EXTERNAL_OBJECTS =

../bin/nmeaparser: CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o
../bin/nmeaparser: CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o
../bin/nmeaparser: CMakeFiles/nmeaparser.dir/build.make
../bin/nmeaparser: /usr/lib/x86_64-linux-gnu/librealsense2.so.2.54.2
../bin/nmeaparser: /usr/lib/x86_64-linux-gnu/librsutils.a
../bin/nmeaparser: CMakeFiles/nmeaparser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/salmos/SLAM/rs2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/nmeaparser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nmeaparser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nmeaparser.dir/build: ../bin/nmeaparser

.PHONY : CMakeFiles/nmeaparser.dir/build

CMakeFiles/nmeaparser.dir/requires: CMakeFiles/nmeaparser.dir/src/minmea/minmea.cpp.o.requires
CMakeFiles/nmeaparser.dir/requires: CMakeFiles/nmeaparser.dir/src/nmeaparser.cpp.o.requires

.PHONY : CMakeFiles/nmeaparser.dir/requires

CMakeFiles/nmeaparser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nmeaparser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nmeaparser.dir/clean

CMakeFiles/nmeaparser.dir/depend:
	cd /home/salmos/SLAM/rs2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/salmos/SLAM/rs2 /home/salmos/SLAM/rs2 /home/salmos/SLAM/rs2/build /home/salmos/SLAM/rs2/build /home/salmos/SLAM/rs2/build/CMakeFiles/nmeaparser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nmeaparser.dir/depend

