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
include CMakeFiles/nmea2table.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nmea2table.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nmea2table.dir/flags.make

CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o: CMakeFiles/nmea2table.dir/flags.make
CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o: ../src/minmea/minmea.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salmos/SLAM/rs2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o -c /home/salmos/SLAM/rs2/src/minmea/minmea.cpp

CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/salmos/SLAM/rs2/src/minmea/minmea.cpp > CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.i

CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/salmos/SLAM/rs2/src/minmea/minmea.cpp -o CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.s

CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o.requires:

.PHONY : CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o.requires

CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o.provides: CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o.requires
	$(MAKE) -f CMakeFiles/nmea2table.dir/build.make CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o.provides.build
.PHONY : CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o.provides

CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o.provides.build: CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o


CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o: CMakeFiles/nmea2table.dir/flags.make
CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o: ../src/rtklib/rtkcmn.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salmos/SLAM/rs2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o -c /home/salmos/SLAM/rs2/src/rtklib/rtkcmn.cpp

CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/salmos/SLAM/rs2/src/rtklib/rtkcmn.cpp > CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.i

CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/salmos/SLAM/rs2/src/rtklib/rtkcmn.cpp -o CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.s

CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o.requires:

.PHONY : CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o.requires

CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o.provides: CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o.requires
	$(MAKE) -f CMakeFiles/nmea2table.dir/build.make CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o.provides.build
.PHONY : CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o.provides

CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o.provides.build: CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o


CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o: CMakeFiles/nmea2table.dir/flags.make
CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o: ../src/nmea2table.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/salmos/SLAM/rs2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o -c /home/salmos/SLAM/rs2/src/nmea2table.cpp

CMakeFiles/nmea2table.dir/src/nmea2table.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nmea2table.dir/src/nmea2table.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/salmos/SLAM/rs2/src/nmea2table.cpp > CMakeFiles/nmea2table.dir/src/nmea2table.cpp.i

CMakeFiles/nmea2table.dir/src/nmea2table.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nmea2table.dir/src/nmea2table.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/salmos/SLAM/rs2/src/nmea2table.cpp -o CMakeFiles/nmea2table.dir/src/nmea2table.cpp.s

CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o.requires:

.PHONY : CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o.requires

CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o.provides: CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o.requires
	$(MAKE) -f CMakeFiles/nmea2table.dir/build.make CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o.provides.build
.PHONY : CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o.provides

CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o.provides.build: CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o


# Object files for target nmea2table
nmea2table_OBJECTS = \
"CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o" \
"CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o" \
"CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o"

# External object files for target nmea2table
nmea2table_EXTERNAL_OBJECTS =

../bin/nmea2table: CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o
../bin/nmea2table: CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o
../bin/nmea2table: CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o
../bin/nmea2table: CMakeFiles/nmea2table.dir/build.make
../bin/nmea2table: /usr/lib/x86_64-linux-gnu/librealsense2.so.2.54.2
../bin/nmea2table: ../lib/libyaml-cpp.a
../bin/nmea2table: /usr/lib/x86_64-linux-gnu/librsutils.a
../bin/nmea2table: CMakeFiles/nmea2table.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/salmos/SLAM/rs2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../bin/nmea2table"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nmea2table.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nmea2table.dir/build: ../bin/nmea2table

.PHONY : CMakeFiles/nmea2table.dir/build

CMakeFiles/nmea2table.dir/requires: CMakeFiles/nmea2table.dir/src/minmea/minmea.cpp.o.requires
CMakeFiles/nmea2table.dir/requires: CMakeFiles/nmea2table.dir/src/rtklib/rtkcmn.cpp.o.requires
CMakeFiles/nmea2table.dir/requires: CMakeFiles/nmea2table.dir/src/nmea2table.cpp.o.requires

.PHONY : CMakeFiles/nmea2table.dir/requires

CMakeFiles/nmea2table.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nmea2table.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nmea2table.dir/clean

CMakeFiles/nmea2table.dir/depend:
	cd /home/salmos/SLAM/rs2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/salmos/SLAM/rs2 /home/salmos/SLAM/rs2 /home/salmos/SLAM/rs2/build /home/salmos/SLAM/rs2/build /home/salmos/SLAM/rs2/build/CMakeFiles/nmea2table.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nmea2table.dir/depend

