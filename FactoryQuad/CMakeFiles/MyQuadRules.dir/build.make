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
include FactoryQuad/CMakeFiles/MyQuadRules.dir/depend.make

# Include the progress variables for this target.
include FactoryQuad/CMakeFiles/MyQuadRules.dir/progress.make

# Include the compile flags for this target's objects.
include FactoryQuad/CMakeFiles/MyQuadRules.dir/flags.make

FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o: FactoryQuad/CMakeFiles/MyQuadRules.dir/flags.make
FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o: FactoryQuad/QuadFactory.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FactoryQuad && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o -c /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FactoryQuad/QuadFactory.cpp

FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.i"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FactoryQuad && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FactoryQuad/QuadFactory.cpp > CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.i

FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.s"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FactoryQuad && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FactoryQuad/QuadFactory.cpp -o CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.s

FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o.requires:
.PHONY : FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o.requires

FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o.provides: FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o.requires
	$(MAKE) -f FactoryQuad/CMakeFiles/MyQuadRules.dir/build.make FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o.provides.build
.PHONY : FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o.provides

FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o.provides.build: FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o

# Object files for target MyQuadRules
MyQuadRules_OBJECTS = \
"CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o"

# External object files for target MyQuadRules
MyQuadRules_EXTERNAL_OBJECTS =

FactoryQuad/libMyQuadRules.dylib: FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o
FactoryQuad/libMyQuadRules.dylib: FactoryQuad/CMakeFiles/MyQuadRules.dir/build.make
FactoryQuad/libMyQuadRules.dylib: QuadratureRules/libQuadratureRules.dylib
FactoryQuad/libMyQuadRules.dylib: FactoryQuad/CMakeFiles/MyQuadRules.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libMyQuadRules.dylib"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FactoryQuad && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyQuadRules.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
FactoryQuad/CMakeFiles/MyQuadRules.dir/build: FactoryQuad/libMyQuadRules.dylib
.PHONY : FactoryQuad/CMakeFiles/MyQuadRules.dir/build

FactoryQuad/CMakeFiles/MyQuadRules.dir/requires: FactoryQuad/CMakeFiles/MyQuadRules.dir/QuadFactory.cpp.o.requires
.PHONY : FactoryQuad/CMakeFiles/MyQuadRules.dir/requires

FactoryQuad/CMakeFiles/MyQuadRules.dir/clean:
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FactoryQuad && $(CMAKE_COMMAND) -P CMakeFiles/MyQuadRules.dir/cmake_clean.cmake
.PHONY : FactoryQuad/CMakeFiles/MyQuadRules.dir/clean

FactoryQuad/CMakeFiles/MyQuadRules.dir/depend:
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FactoryQuad /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FactoryQuad /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FactoryQuad/CMakeFiles/MyQuadRules.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : FactoryQuad/CMakeFiles/MyQuadRules.dir/depend

