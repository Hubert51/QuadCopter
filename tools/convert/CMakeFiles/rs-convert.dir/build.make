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
CMAKE_SOURCE_DIR = /home/ruijie/Desktop/librealsense-master/tools/convert

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ruijie/Desktop/librealsense-master/tools/convert

# Include any dependencies generated for this target.
include CMakeFiles/rs-convert.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rs-convert.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rs-convert.dir/flags.make

CMakeFiles/rs-convert.dir/rs-convert.cpp.o: CMakeFiles/rs-convert.dir/flags.make
CMakeFiles/rs-convert.dir/rs-convert.cpp.o: rs-convert.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruijie/Desktop/librealsense-master/tools/convert/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rs-convert.dir/rs-convert.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-convert.dir/rs-convert.cpp.o -c /home/ruijie/Desktop/librealsense-master/tools/convert/rs-convert.cpp

CMakeFiles/rs-convert.dir/rs-convert.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-convert.dir/rs-convert.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruijie/Desktop/librealsense-master/tools/convert/rs-convert.cpp > CMakeFiles/rs-convert.dir/rs-convert.cpp.i

CMakeFiles/rs-convert.dir/rs-convert.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-convert.dir/rs-convert.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruijie/Desktop/librealsense-master/tools/convert/rs-convert.cpp -o CMakeFiles/rs-convert.dir/rs-convert.cpp.s

CMakeFiles/rs-convert.dir/rs-convert.cpp.o.requires:

.PHONY : CMakeFiles/rs-convert.dir/rs-convert.cpp.o.requires

CMakeFiles/rs-convert.dir/rs-convert.cpp.o.provides: CMakeFiles/rs-convert.dir/rs-convert.cpp.o.requires
	$(MAKE) -f CMakeFiles/rs-convert.dir/build.make CMakeFiles/rs-convert.dir/rs-convert.cpp.o.provides.build
.PHONY : CMakeFiles/rs-convert.dir/rs-convert.cpp.o.provides

CMakeFiles/rs-convert.dir/rs-convert.cpp.o.provides.build: CMakeFiles/rs-convert.dir/rs-convert.cpp.o


# Object files for target rs-convert
rs__convert_OBJECTS = \
"CMakeFiles/rs-convert.dir/rs-convert.cpp.o"

# External object files for target rs-convert
rs__convert_EXTERNAL_OBJECTS =

rs-convert: CMakeFiles/rs-convert.dir/rs-convert.cpp.o
rs-convert: CMakeFiles/rs-convert.dir/build.make
rs-convert: CMakeFiles/rs-convert.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ruijie/Desktop/librealsense-master/tools/convert/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rs-convert"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rs-convert.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rs-convert.dir/build: rs-convert

.PHONY : CMakeFiles/rs-convert.dir/build

CMakeFiles/rs-convert.dir/requires: CMakeFiles/rs-convert.dir/rs-convert.cpp.o.requires

.PHONY : CMakeFiles/rs-convert.dir/requires

CMakeFiles/rs-convert.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rs-convert.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rs-convert.dir/clean

CMakeFiles/rs-convert.dir/depend:
	cd /home/ruijie/Desktop/librealsense-master/tools/convert && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruijie/Desktop/librealsense-master/tools/convert /home/ruijie/Desktop/librealsense-master/tools/convert /home/ruijie/Desktop/librealsense-master/tools/convert /home/ruijie/Desktop/librealsense-master/tools/convert /home/ruijie/Desktop/librealsense-master/tools/convert/CMakeFiles/rs-convert.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rs-convert.dir/depend
