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
include Quadrature1D/CMakeFiles/Quadrature1D.dir/depend.make

# Include the progress variables for this target.
include Quadrature1D/CMakeFiles/Quadrature1D.dir/progress.make

# Include the compile flags for this target's objects.
include Quadrature1D/CMakeFiles/Quadrature1D.dir/flags.make

Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o: Quadrature1D/CMakeFiles/Quadrature1D.dir/flags.make
Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o: Quadrature1D/Quadrature1D.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o -c /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D/Quadrature1D.cpp

Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.i"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D/Quadrature1D.cpp > CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.i

Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.s"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D/Quadrature1D.cpp -o CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.s

Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o.requires:
.PHONY : Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o.requires

Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o.provides: Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o.requires
	$(MAKE) -f Quadrature1D/CMakeFiles/Quadrature1D.dir/build.make Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o.provides.build
.PHONY : Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o.provides

Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o.provides.build: Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o

Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o: Quadrature1D/CMakeFiles/Quadrature1D.dir/flags.make
Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o: Quadrature1D/NumericalQuad.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o -c /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D/NumericalQuad.cpp

Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.i"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D/NumericalQuad.cpp > CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.i

Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.s"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D/NumericalQuad.cpp -o CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.s

Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o.requires:
.PHONY : Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o.requires

Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o.provides: Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o.requires
	$(MAKE) -f Quadrature1D/CMakeFiles/Quadrature1D.dir/build.make Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o.provides.build
.PHONY : Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o.provides

Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o.provides.build: Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o

# Object files for target Quadrature1D
Quadrature1D_OBJECTS = \
"CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o" \
"CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o"

# External object files for target Quadrature1D
Quadrature1D_EXTERNAL_OBJECTS =

Quadrature1D/libQuadrature1D.dylib: Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o
Quadrature1D/libQuadrature1D.dylib: Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o
Quadrature1D/libQuadrature1D.dylib: Quadrature1D/CMakeFiles/Quadrature1D.dir/build.make
Quadrature1D/libQuadrature1D.dylib: Quadrature1D/CMakeFiles/Quadrature1D.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libQuadrature1D.dylib"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Quadrature1D.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Quadrature1D/CMakeFiles/Quadrature1D.dir/build: Quadrature1D/libQuadrature1D.dylib
.PHONY : Quadrature1D/CMakeFiles/Quadrature1D.dir/build

Quadrature1D/CMakeFiles/Quadrature1D.dir/requires: Quadrature1D/CMakeFiles/Quadrature1D.dir/Quadrature1D.cpp.o.requires
Quadrature1D/CMakeFiles/Quadrature1D.dir/requires: Quadrature1D/CMakeFiles/Quadrature1D.dir/NumericalQuad.cpp.o.requires
.PHONY : Quadrature1D/CMakeFiles/Quadrature1D.dir/requires

Quadrature1D/CMakeFiles/Quadrature1D.dir/clean:
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D && $(CMAKE_COMMAND) -P CMakeFiles/Quadrature1D.dir/cmake_clean.cmake
.PHONY : Quadrature1D/CMakeFiles/Quadrature1D.dir/clean

Quadrature1D/CMakeFiles/Quadrature1D.dir/depend:
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/Quadrature1D/CMakeFiles/Quadrature1D.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Quadrature1D/CMakeFiles/Quadrature1D.dir/depend

