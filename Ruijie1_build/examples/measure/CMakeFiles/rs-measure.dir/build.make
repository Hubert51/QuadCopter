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
include examples/measure/CMakeFiles/rs-measure.dir/depend.make

# Include the progress variables for this target.
include examples/measure/CMakeFiles/rs-measure.dir/progress.make

# Include the compile flags for this target's objects.
include examples/measure/CMakeFiles/rs-measure.dir/flags.make

examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o: examples/measure/CMakeFiles/rs-measure.dir/flags.make
examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o: ../examples/measure/rs-measure.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruijie/Desktop/librealsense-master/Ruijie1_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/measure && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-measure.dir/rs-measure.cpp.o -c /home/ruijie/Desktop/librealsense-master/examples/measure/rs-measure.cpp

examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-measure.dir/rs-measure.cpp.i"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/measure && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruijie/Desktop/librealsense-master/examples/measure/rs-measure.cpp > CMakeFiles/rs-measure.dir/rs-measure.cpp.i

examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-measure.dir/rs-measure.cpp.s"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/measure && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruijie/Desktop/librealsense-master/examples/measure/rs-measure.cpp -o CMakeFiles/rs-measure.dir/rs-measure.cpp.s

examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o.requires:

.PHONY : examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o.requires

examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o.provides: examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o.requires
	$(MAKE) -f examples/measure/CMakeFiles/rs-measure.dir/build.make examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o.provides.build
.PHONY : examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o.provides

examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o.provides.build: examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o


# Object files for target rs-measure
rs__measure_OBJECTS = \
"CMakeFiles/rs-measure.dir/rs-measure.cpp.o"

# External object files for target rs-measure
rs__measure_EXTERNAL_OBJECTS =

examples/measure/rs-measure: examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o
examples/measure/rs-measure: examples/measure/CMakeFiles/rs-measure.dir/build.make
examples/measure/rs-measure: librealsense2.so.2.16.3
examples/measure/rs-measure: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/measure/rs-measure: /usr/lib/x86_64-linux-gnu/libGL.so
examples/measure/rs-measure: /usr/lib/x86_64-linux-gnu/libglfw.so
examples/measure/rs-measure: examples/measure/CMakeFiles/rs-measure.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ruijie/Desktop/librealsense-master/Ruijie1_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rs-measure"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/measure && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rs-measure.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/measure/CMakeFiles/rs-measure.dir/build: examples/measure/rs-measure

.PHONY : examples/measure/CMakeFiles/rs-measure.dir/build

examples/measure/CMakeFiles/rs-measure.dir/requires: examples/measure/CMakeFiles/rs-measure.dir/rs-measure.cpp.o.requires

.PHONY : examples/measure/CMakeFiles/rs-measure.dir/requires

examples/measure/CMakeFiles/rs-measure.dir/clean:
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/measure && $(CMAKE_COMMAND) -P CMakeFiles/rs-measure.dir/cmake_clean.cmake
.PHONY : examples/measure/CMakeFiles/rs-measure.dir/clean

examples/measure/CMakeFiles/rs-measure.dir/depend:
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruijie/Desktop/librealsense-master /home/ruijie/Desktop/librealsense-master/examples/measure /home/ruijie/Desktop/librealsense-master/Ruijie1_build /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/measure /home/ruijie/Desktop/librealsense-master/Ruijie1_build/examples/measure/CMakeFiles/rs-measure.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/measure/CMakeFiles/rs-measure.dir/depend

