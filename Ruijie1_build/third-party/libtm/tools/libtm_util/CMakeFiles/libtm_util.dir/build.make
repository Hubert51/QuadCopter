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
include third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/depend.make

# Include the progress variables for this target.
include third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/progress.make

# Include the compile flags for this target's objects.
include third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/flags.make

third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o: third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/flags.make
third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o: ../third-party/libtm/tools/libtm_util/libtm_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruijie/Desktop/librealsense-master/Ruijie1_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/third-party/libtm/tools/libtm_util && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libtm_util.dir/libtm_util.cpp.o -c /home/ruijie/Desktop/librealsense-master/third-party/libtm/tools/libtm_util/libtm_util.cpp

third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libtm_util.dir/libtm_util.cpp.i"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/third-party/libtm/tools/libtm_util && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruijie/Desktop/librealsense-master/third-party/libtm/tools/libtm_util/libtm_util.cpp > CMakeFiles/libtm_util.dir/libtm_util.cpp.i

third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libtm_util.dir/libtm_util.cpp.s"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/third-party/libtm/tools/libtm_util && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruijie/Desktop/librealsense-master/third-party/libtm/tools/libtm_util/libtm_util.cpp -o CMakeFiles/libtm_util.dir/libtm_util.cpp.s

third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o.requires:

.PHONY : third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o.requires

third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o.provides: third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o.requires
	$(MAKE) -f third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/build.make third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o.provides.build
.PHONY : third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o.provides

third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o.provides.build: third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o


# Object files for target libtm_util
libtm_util_OBJECTS = \
"CMakeFiles/libtm_util.dir/libtm_util.cpp.o"

# External object files for target libtm_util
libtm_util_EXTERNAL_OBJECTS =

third-party/libtm/tools/libtm_util/libtm_util: third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o
third-party/libtm/tools/libtm_util/libtm_util: third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/build.make
third-party/libtm/tools/libtm_util/libtm_util: third-party/libtm/libtm/src/libtm.a
third-party/libtm/tools/libtm_util/libtm_util: third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ruijie/Desktop/librealsense-master/Ruijie1_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable libtm_util"
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/third-party/libtm/tools/libtm_util && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libtm_util.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/build: third-party/libtm/tools/libtm_util/libtm_util

.PHONY : third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/build

third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/requires: third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/libtm_util.cpp.o.requires

.PHONY : third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/requires

third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/clean:
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build/third-party/libtm/tools/libtm_util && $(CMAKE_COMMAND) -P CMakeFiles/libtm_util.dir/cmake_clean.cmake
.PHONY : third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/clean

third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/depend:
	cd /home/ruijie/Desktop/librealsense-master/Ruijie1_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruijie/Desktop/librealsense-master /home/ruijie/Desktop/librealsense-master/third-party/libtm/tools/libtm_util /home/ruijie/Desktop/librealsense-master/Ruijie1_build /home/ruijie/Desktop/librealsense-master/Ruijie1_build/third-party/libtm/tools/libtm_util /home/ruijie/Desktop/librealsense-master/Ruijie1_build/third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third-party/libtm/tools/libtm_util/CMakeFiles/libtm_util.dir/depend

