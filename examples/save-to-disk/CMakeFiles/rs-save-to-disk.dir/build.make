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
CMAKE_SOURCE_DIR = /home/ruijie/Desktop/librealsense-master/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ruijie/Desktop/librealsense-master/examples

# Include any dependencies generated for this target.
include save-to-disk/CMakeFiles/rs-save-to-disk.dir/depend.make

# Include the progress variables for this target.
include save-to-disk/CMakeFiles/rs-save-to-disk.dir/progress.make

# Include the compile flags for this target's objects.
include save-to-disk/CMakeFiles/rs-save-to-disk.dir/flags.make

save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o: save-to-disk/CMakeFiles/rs-save-to-disk.dir/flags.make
save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o: save-to-disk/rs-save-to-disk.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruijie/Desktop/librealsense-master/examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o"
	cd /home/ruijie/Desktop/librealsense-master/examples/save-to-disk && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o -c /home/ruijie/Desktop/librealsense-master/examples/save-to-disk/rs-save-to-disk.cpp

save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.i"
	cd /home/ruijie/Desktop/librealsense-master/examples/save-to-disk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruijie/Desktop/librealsense-master/examples/save-to-disk/rs-save-to-disk.cpp > CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.i

save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.s"
	cd /home/ruijie/Desktop/librealsense-master/examples/save-to-disk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruijie/Desktop/librealsense-master/examples/save-to-disk/rs-save-to-disk.cpp -o CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.s

save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o.requires:

.PHONY : save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o.requires

save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o.provides: save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o.requires
	$(MAKE) -f save-to-disk/CMakeFiles/rs-save-to-disk.dir/build.make save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o.provides.build
.PHONY : save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o.provides

save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o.provides.build: save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o


# Object files for target rs-save-to-disk
rs__save__to__disk_OBJECTS = \
"CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o"

# External object files for target rs-save-to-disk
rs__save__to__disk_EXTERNAL_OBJECTS =

save-to-disk/rs-save-to-disk: save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o
save-to-disk/rs-save-to-disk: save-to-disk/CMakeFiles/rs-save-to-disk.dir/build.make
save-to-disk/rs-save-to-disk: save-to-disk/CMakeFiles/rs-save-to-disk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ruijie/Desktop/librealsense-master/examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rs-save-to-disk"
	cd /home/ruijie/Desktop/librealsense-master/examples/save-to-disk && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rs-save-to-disk.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
save-to-disk/CMakeFiles/rs-save-to-disk.dir/build: save-to-disk/rs-save-to-disk

.PHONY : save-to-disk/CMakeFiles/rs-save-to-disk.dir/build

save-to-disk/CMakeFiles/rs-save-to-disk.dir/requires: save-to-disk/CMakeFiles/rs-save-to-disk.dir/rs-save-to-disk.cpp.o.requires

.PHONY : save-to-disk/CMakeFiles/rs-save-to-disk.dir/requires

save-to-disk/CMakeFiles/rs-save-to-disk.dir/clean:
	cd /home/ruijie/Desktop/librealsense-master/examples/save-to-disk && $(CMAKE_COMMAND) -P CMakeFiles/rs-save-to-disk.dir/cmake_clean.cmake
.PHONY : save-to-disk/CMakeFiles/rs-save-to-disk.dir/clean

save-to-disk/CMakeFiles/rs-save-to-disk.dir/depend:
	cd /home/ruijie/Desktop/librealsense-master/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruijie/Desktop/librealsense-master/examples /home/ruijie/Desktop/librealsense-master/examples/save-to-disk /home/ruijie/Desktop/librealsense-master/examples /home/ruijie/Desktop/librealsense-master/examples/save-to-disk /home/ruijie/Desktop/librealsense-master/examples/save-to-disk/CMakeFiles/rs-save-to-disk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : save-to-disk/CMakeFiles/rs-save-to-disk.dir/depend

