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
CMAKE_SOURCE_DIR = /home/ruijie/Desktop/librealsense-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ruijie/Desktop/librealsense-master/Ruijie1_build

# Include any dependencies generated for this target.
include examples/C/distance/CMakeFiles/rs-distance.dir/depend.make

# Include the progress variables for this target.
include examples/C/distance/CMakeFiles/rs-distance.dir/progress.make

# Include the compile flags for this target's objects.
include examples/C/distance/CMakeFiles/rs-distance.dir/flags.make

examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o: examples/C/distance/CMakeFiles/rs-distance.dir/flags.make
examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o: ../examples/C/distance/rs-distance.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruijie/Desktop/librealsense-master/Ruijie1_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/distance && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rs-distance.dir/rs-distance.c.o   -c /home/ruijie/Desktop/librealsense-master/examples/C/distance/rs-distance.c

examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rs-distance.dir/rs-distance.c.i"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/distance && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ruijie/Desktop/librealsense-master/examples/C/distance/rs-distance.c > CMakeFiles/rs-distance.dir/rs-distance.c.i

examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rs-distance.dir/rs-distance.c.s"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/distance && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ruijie/Desktop/librealsense-master/examples/C/distance/rs-distance.c -o CMakeFiles/rs-distance.dir/rs-distance.c.s

examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o.requires:

.PHONY : examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o.requires

examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o.provides: examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o.requires
	$(MAKE) -f examples/C/distance/CMakeFiles/rs-distance.dir/build.make examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o.provides.build
.PHONY : examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o.provides

examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o.provides.build: examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o


# Object files for target rs-distance
rs__distance_OBJECTS = \
"CMakeFiles/rs-distance.dir/rs-distance.c.o"

# External object files for target rs-distance
rs__distance_EXTERNAL_OBJECTS =

examples/C/distance/rs-distance: examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o
examples/C/distance/rs-distance: examples/C/distance/CMakeFiles/rs-distance.dir/build.make
examples/C/distance/rs-distance: librealsense2.so.2.16.3
examples/C/distance/rs-distance: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/C/distance/rs-distance: /usr/lib/x86_64-linux-gnu/libGL.so
examples/C/distance/rs-distance: /usr/lib/x86_64-linux-gnu/libglfw.so
examples/C/distance/rs-distance: examples/C/distance/CMakeFiles/rs-distance.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ruijie/Desktop/librealsense-master/Ruijie1_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable rs-distance"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/distance && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rs-distance.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/C/distance/CMakeFiles/rs-distance.dir/build: examples/C/distance/rs-distance

.PHONY : examples/C/distance/CMakeFiles/rs-distance.dir/build

examples/C/distance/CMakeFiles/rs-distance.dir/requires: examples/C/distance/CMakeFiles/rs-distance.dir/rs-distance.c.o.requires

.PHONY : examples/C/distance/CMakeFiles/rs-distance.dir/requires

examples/C/distance/CMakeFiles/rs-distance.dir/clean:
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/distance && $(CMAKE_COMMAND) -P CMakeFiles/rs-distance.dir/cmake_clean.cmake
.PHONY : examples/C/distance/CMakeFiles/rs-distance.dir/clean

examples/C/distance/CMakeFiles/rs-distance.dir/depend:
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruijie/Desktop/librealsense-master /home/ruijie/Desktop/librealsense-master/examples/C/distance /home/ruijie/Desktop/librealsense-master/Ruijie1_build /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/distance /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/distance/CMakeFiles/rs-distance.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/C/distance/CMakeFiles/rs-distance.dir/depend

