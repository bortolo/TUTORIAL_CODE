# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /opt/local/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE

# Include any dependencies generated for this target.
include Geometry/CMakeFiles/Geometry.dir/depend.make

# Include the progress variables for this target.
include Geometry/CMakeFiles/Geometry.dir/progress.make

# Include the compile flags for this target's objects.
include Geometry/CMakeFiles/Geometry.dir/flags.make

Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o: Geometry/CMakeFiles/Geometry.dir/flags.make
Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o: Geometry/Geometry.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Geometry.dir/Geometry.cpp.o -c /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry/Geometry.cpp

Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Geometry.dir/Geometry.cpp.i"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry/Geometry.cpp > CMakeFiles/Geometry.dir/Geometry.cpp.i

Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Geometry.dir/Geometry.cpp.s"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry/Geometry.cpp -o CMakeFiles/Geometry.dir/Geometry.cpp.s

Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o.requires:
.PHONY : Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o.requires

Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o.provides: Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o.requires
	$(MAKE) -f Geometry/CMakeFiles/Geometry.dir/build.make Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o.provides.build
.PHONY : Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o.provides

Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o.provides.build: Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o

# Object files for target Geometry
Geometry_OBJECTS = \
"CMakeFiles/Geometry.dir/Geometry.cpp.o"

# External object files for target Geometry
Geometry_EXTERNAL_OBJECTS =

Geometry/libGeometry.dylib: Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o
Geometry/libGeometry.dylib: Geometry/CMakeFiles/Geometry.dir/build.make
Geometry/libGeometry.dylib: Geometry/CMakeFiles/Geometry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libGeometry.dylib"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Geometry.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Geometry/CMakeFiles/Geometry.dir/build: Geometry/libGeometry.dylib
.PHONY : Geometry/CMakeFiles/Geometry.dir/build

Geometry/CMakeFiles/Geometry.dir/requires: Geometry/CMakeFiles/Geometry.dir/Geometry.cpp.o.requires
.PHONY : Geometry/CMakeFiles/Geometry.dir/requires

Geometry/CMakeFiles/Geometry.dir/clean:
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry && $(CMAKE_COMMAND) -P CMakeFiles/Geometry.dir/cmake_clean.cmake
.PHONY : Geometry/CMakeFiles/Geometry.dir/clean

Geometry/CMakeFiles/Geometry.dir/depend:
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Geometry/CMakeFiles/Geometry.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Geometry/CMakeFiles/Geometry.dir/depend

