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
include TestQuad1D/CMakeFiles/TestQuad1D.dir/depend.make

# Include the progress variables for this target.
include TestQuad1D/CMakeFiles/TestQuad1D.dir/progress.make

# Include the compile flags for this target's objects.
include TestQuad1D/CMakeFiles/TestQuad1D.dir/flags.make

TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o: TestQuad1D/CMakeFiles/TestQuad1D.dir/flags.make
TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o: TestQuad1D/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad1D && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TestQuad1D.dir/main.cpp.o -c /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad1D/main.cpp

TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestQuad1D.dir/main.cpp.i"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad1D && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad1D/main.cpp > CMakeFiles/TestQuad1D.dir/main.cpp.i

TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestQuad1D.dir/main.cpp.s"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad1D && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad1D/main.cpp -o CMakeFiles/TestQuad1D.dir/main.cpp.s

TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o.requires:
.PHONY : TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o.requires

TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o.provides: TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o.requires
	$(MAKE) -f TestQuad1D/CMakeFiles/TestQuad1D.dir/build.make TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o.provides.build
.PHONY : TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o.provides

TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o.provides.build: TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o

# Object files for target TestQuad1D
TestQuad1D_OBJECTS = \
"CMakeFiles/TestQuad1D.dir/main.cpp.o"

# External object files for target TestQuad1D
TestQuad1D_EXTERNAL_OBJECTS =

TestQuad1D/TestQuad1D: TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o
TestQuad1D/TestQuad1D: TestQuad1D/CMakeFiles/TestQuad1D.dir/build.make
TestQuad1D/TestQuad1D: Quadrature1D/libQuadrature1D.dylib
TestQuad1D/TestQuad1D: TestQuad1D/CMakeFiles/TestQuad1D.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable TestQuad1D"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad1D && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestQuad1D.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
TestQuad1D/CMakeFiles/TestQuad1D.dir/build: TestQuad1D/TestQuad1D
.PHONY : TestQuad1D/CMakeFiles/TestQuad1D.dir/build

TestQuad1D/CMakeFiles/TestQuad1D.dir/requires: TestQuad1D/CMakeFiles/TestQuad1D.dir/main.cpp.o.requires
.PHONY : TestQuad1D/CMakeFiles/TestQuad1D.dir/requires

TestQuad1D/CMakeFiles/TestQuad1D.dir/clean:
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad1D && $(CMAKE_COMMAND) -P CMakeFiles/TestQuad1D.dir/cmake_clean.cmake
.PHONY : TestQuad1D/CMakeFiles/TestQuad1D.dir/clean

TestQuad1D/CMakeFiles/TestQuad1D.dir/depend:
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad1D /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad1D /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/TestQuad1D/CMakeFiles/TestQuad1D.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : TestQuad1D/CMakeFiles/TestQuad1D.dir/depend
