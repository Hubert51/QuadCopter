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
include examples/C/color/CMakeFiles/rs-color.dir/depend.make

# Include the progress variables for this target.
include examples/C/color/CMakeFiles/rs-color.dir/progress.make

# Include the compile flags for this target's objects.
include examples/C/color/CMakeFiles/rs-color.dir/flags.make

examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o: examples/C/color/CMakeFiles/rs-color.dir/flags.make
examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o: ../examples/C/color/rs-color.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruijie/Desktop/librealsense-master/Ruijie1_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/color && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rs-color.dir/rs-color.c.o   -c /home/ruijie/Desktop/librealsense-master/examples/C/color/rs-color.c

examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rs-color.dir/rs-color.c.i"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/color && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ruijie/Desktop/librealsense-master/examples/C/color/rs-color.c > CMakeFiles/rs-color.dir/rs-color.c.i

examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rs-color.dir/rs-color.c.s"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/color && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ruijie/Desktop/librealsense-master/examples/C/color/rs-color.c -o CMakeFiles/rs-color.dir/rs-color.c.s

examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o.requires:

.PHONY : examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o.requires

examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o.provides: examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o.requires
	$(MAKE) -f examples/C/color/CMakeFiles/rs-color.dir/build.make examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o.provides.build
.PHONY : examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o.provides

examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o.provides.build: examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o


# Object files for target rs-color
rs__color_OBJECTS = \
"CMakeFiles/rs-color.dir/rs-color.c.o"

# External object files for target rs-color
rs__color_EXTERNAL_OBJECTS =

examples/C/color/rs-color: examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o
examples/C/color/rs-color: examples/C/color/CMakeFiles/rs-color.dir/build.make
examples/C/color/rs-color: librealsense2.so.2.16.3
examples/C/color/rs-color: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/C/color/rs-color: /usr/lib/x86_64-linux-gnu/libGL.so
examples/C/color/rs-color: /usr/lib/x86_64-linux-gnu/libglfw.so
examples/C/color/rs-color: examples/C/color/CMakeFiles/rs-color.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ruijie/Desktop/librealsense-master/Ruijie1_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable rs-color"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/color && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rs-color.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/C/color/CMakeFiles/rs-color.dir/build: examples/C/color/rs-color

.PHONY : examples/C/color/CMakeFiles/rs-color.dir/build

examples/C/color/CMakeFiles/rs-color.dir/requires: examples/C/color/CMakeFiles/rs-color.dir/rs-color.c.o.requires

.PHONY : examples/C/color/CMakeFiles/rs-color.dir/requires

examples/C/color/CMakeFiles/rs-color.dir/clean:
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/color && $(CMAKE_COMMAND) -P CMakeFiles/rs-color.dir/cmake_clean.cmake
.PHONY : examples/C/color/CMakeFiles/rs-color.dir/clean

examples/C/color/CMakeFiles/rs-color.dir/depend:
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruijie/Desktop/librealsense-master /home/ruijie/Desktop/librealsense-master/examples/C/color /home/ruijie/Desktop/librealsense-master/Ruijie1_build /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/color /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/C/color/CMakeFiles/rs-color.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/C/color/CMakeFiles/rs-color.dir/depend

