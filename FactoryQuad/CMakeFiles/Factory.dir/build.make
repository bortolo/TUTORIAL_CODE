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
include Factory/CMakeFiles/Factory.dir/depend.make

# Include the progress variables for this target.
include Factory/CMakeFiles/Factory.dir/progress.make

# Include the compile flags for this target's objects.
include Factory/CMakeFiles/Factory.dir/flags.make

Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o: Factory/CMakeFiles/Factory.dir/flags.make
Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o: Factory/QuadFactory.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Factory && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Factory.dir/QuadFactory.cpp.o -c /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Factory/QuadFactory.cpp

Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Factory.dir/QuadFactory.cpp.i"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Factory && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Factory/QuadFactory.cpp > CMakeFiles/Factory.dir/QuadFactory.cpp.i

Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Factory.dir/QuadFactory.cpp.s"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Factory && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Factory/QuadFactory.cpp -o CMakeFiles/Factory.dir/QuadFactory.cpp.s

Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o.requires:
.PHONY : Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o.requires

Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o.provides: Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o.requires
	$(MAKE) -f Factory/CMakeFiles/Factory.dir/build.make Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o.provides.build
.PHONY : Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o.provides

Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o.provides.build: Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o

# Object files for target Factory
Factory_OBJECTS = \
"CMakeFiles/Factory.dir/QuadFactory.cpp.o"

# External object files for target Factory
Factory_EXTERNAL_OBJECTS =

Factory/libFactory.dylib: Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o
Factory/libFactory.dylib: Factory/CMakeFiles/Factory.dir/build.make
Factory/libFactory.dylib: Quadrature/libQuadrature.dylib
Factory/libFactory.dylib: QuadratureRules/libQuadratureRules.dylib
Factory/libFactory.dylib: Factory/CMakeFiles/Factory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libFactory.dylib"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Factory && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Factory.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Factory/CMakeFiles/Factory.dir/build: Factory/libFactory.dylib
.PHONY : Factory/CMakeFiles/Factory.dir/build

Factory/CMakeFiles/Factory.dir/requires: Factory/CMakeFiles/Factory.dir/QuadFactory.cpp.o.requires
.PHONY : Factory/CMakeFiles/Factory.dir/requires

Factory/CMakeFiles/Factory.dir/clean:
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Factory && $(CMAKE_COMMAND) -P CMakeFiles/Factory.dir/cmake_clean.cmake
.PHONY : Factory/CMakeFiles/Factory.dir/clean

Factory/CMakeFiles/Factory.dir/depend:
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Factory /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Factory /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Factory/CMakeFiles/Factory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Factory/CMakeFiles/Factory.dir/depend

