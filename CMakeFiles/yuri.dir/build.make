# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /nfs/slac/g/beamphysics/gzhou/cmake/bin/cmake

# The command to remove a file.
RM = /nfs/slac/g/beamphysics/gzhou/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /nfs/slac/g/beamphysics/gzhou/Yuri

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /nfs/slac/g/beamphysics/gzhou/Yuri

# Include any dependencies generated for this target.
include CMakeFiles/yuri.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/yuri.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/yuri.dir/flags.make

CMakeFiles/yuri.dir/main.cpp.o: CMakeFiles/yuri.dir/flags.make
CMakeFiles/yuri.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/slac/g/beamphysics/gzhou/Yuri/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/yuri.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yuri.dir/main.cpp.o -c /nfs/slac/g/beamphysics/gzhou/Yuri/main.cpp

CMakeFiles/yuri.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yuri.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /nfs/slac/g/beamphysics/gzhou/Yuri/main.cpp > CMakeFiles/yuri.dir/main.cpp.i

CMakeFiles/yuri.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yuri.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /nfs/slac/g/beamphysics/gzhou/Yuri/main.cpp -o CMakeFiles/yuri.dir/main.cpp.s

CMakeFiles/yuri.dir/Readin.cpp.o: CMakeFiles/yuri.dir/flags.make
CMakeFiles/yuri.dir/Readin.cpp.o: Readin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/slac/g/beamphysics/gzhou/Yuri/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/yuri.dir/Readin.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yuri.dir/Readin.cpp.o -c /nfs/slac/g/beamphysics/gzhou/Yuri/Readin.cpp

CMakeFiles/yuri.dir/Readin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yuri.dir/Readin.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /nfs/slac/g/beamphysics/gzhou/Yuri/Readin.cpp > CMakeFiles/yuri.dir/Readin.cpp.i

CMakeFiles/yuri.dir/Readin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yuri.dir/Readin.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /nfs/slac/g/beamphysics/gzhou/Yuri/Readin.cpp -o CMakeFiles/yuri.dir/Readin.cpp.s

CMakeFiles/yuri.dir/Sdomain.cpp.o: CMakeFiles/yuri.dir/flags.make
CMakeFiles/yuri.dir/Sdomain.cpp.o: Sdomain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/slac/g/beamphysics/gzhou/Yuri/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/yuri.dir/Sdomain.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yuri.dir/Sdomain.cpp.o -c /nfs/slac/g/beamphysics/gzhou/Yuri/Sdomain.cpp

CMakeFiles/yuri.dir/Sdomain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yuri.dir/Sdomain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /nfs/slac/g/beamphysics/gzhou/Yuri/Sdomain.cpp > CMakeFiles/yuri.dir/Sdomain.cpp.i

CMakeFiles/yuri.dir/Sdomain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yuri.dir/Sdomain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /nfs/slac/g/beamphysics/gzhou/Yuri/Sdomain.cpp -o CMakeFiles/yuri.dir/Sdomain.cpp.s

CMakeFiles/yuri.dir/Writeout.cpp.o: CMakeFiles/yuri.dir/flags.make
CMakeFiles/yuri.dir/Writeout.cpp.o: Writeout.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/slac/g/beamphysics/gzhou/Yuri/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/yuri.dir/Writeout.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yuri.dir/Writeout.cpp.o -c /nfs/slac/g/beamphysics/gzhou/Yuri/Writeout.cpp

CMakeFiles/yuri.dir/Writeout.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yuri.dir/Writeout.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /nfs/slac/g/beamphysics/gzhou/Yuri/Writeout.cpp > CMakeFiles/yuri.dir/Writeout.cpp.i

CMakeFiles/yuri.dir/Writeout.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yuri.dir/Writeout.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /nfs/slac/g/beamphysics/gzhou/Yuri/Writeout.cpp -o CMakeFiles/yuri.dir/Writeout.cpp.s

# Object files for target yuri
yuri_OBJECTS = \
"CMakeFiles/yuri.dir/main.cpp.o" \
"CMakeFiles/yuri.dir/Readin.cpp.o" \
"CMakeFiles/yuri.dir/Sdomain.cpp.o" \
"CMakeFiles/yuri.dir/Writeout.cpp.o"

# External object files for target yuri
yuri_EXTERNAL_OBJECTS =

yuri: CMakeFiles/yuri.dir/main.cpp.o
yuri: CMakeFiles/yuri.dir/Readin.cpp.o
yuri: CMakeFiles/yuri.dir/Sdomain.cpp.o
yuri: CMakeFiles/yuri.dir/Writeout.cpp.o
yuri: CMakeFiles/yuri.dir/build.make
yuri: CMakeFiles/yuri.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/nfs/slac/g/beamphysics/gzhou/Yuri/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable yuri"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yuri.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/yuri.dir/build: yuri

.PHONY : CMakeFiles/yuri.dir/build

CMakeFiles/yuri.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/yuri.dir/cmake_clean.cmake
.PHONY : CMakeFiles/yuri.dir/clean

CMakeFiles/yuri.dir/depend:
	cd /nfs/slac/g/beamphysics/gzhou/Yuri && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /nfs/slac/g/beamphysics/gzhou/Yuri /nfs/slac/g/beamphysics/gzhou/Yuri /nfs/slac/g/beamphysics/gzhou/Yuri /nfs/slac/g/beamphysics/gzhou/Yuri /nfs/slac/g/beamphysics/gzhou/Yuri/CMakeFiles/yuri.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/yuri.dir/depend

