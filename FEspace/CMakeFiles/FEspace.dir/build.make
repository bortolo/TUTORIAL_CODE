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
include FEspace/CMakeFiles/FEspace.dir/depend.make

# Include the progress variables for this target.
include FEspace/CMakeFiles/FEspace.dir/progress.make

# Include the compile flags for this target's objects.
include FEspace/CMakeFiles/FEspace.dir/flags.make

FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o: FEspace/CMakeFiles/FEspace.dir/flags.make
FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o: FEspace/FEspace.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEspace && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/FEspace.dir/FEspace.cpp.o -c /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEspace/FEspace.cpp

FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FEspace.dir/FEspace.cpp.i"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEspace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEspace/FEspace.cpp > CMakeFiles/FEspace.dir/FEspace.cpp.i

FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FEspace.dir/FEspace.cpp.s"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEspace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEspace/FEspace.cpp -o CMakeFiles/FEspace.dir/FEspace.cpp.s

FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o.requires:
.PHONY : FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o.requires

FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o.provides: FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o.requires
	$(MAKE) -f FEspace/CMakeFiles/FEspace.dir/build.make FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o.provides.build
.PHONY : FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o.provides

FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o.provides.build: FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o

# Object files for target FEspace
FEspace_OBJECTS = \
"CMakeFiles/FEspace.dir/FEspace.cpp.o"

# External object files for target FEspace
FEspace_EXTERNAL_OBJECTS =

FEspace/libFEspace.dylib: FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o
FEspace/libFEspace.dylib: FEspace/CMakeFiles/FEspace.dir/build.make
FEspace/libFEspace.dylib: FEspace/CMakeFiles/FEspace.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libFEspace.dylib"
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEspace && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FEspace.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
FEspace/CMakeFiles/FEspace.dir/build: FEspace/libFEspace.dylib
.PHONY : FEspace/CMakeFiles/FEspace.dir/build

FEspace/CMakeFiles/FEspace.dir/requires: FEspace/CMakeFiles/FEspace.dir/FEspace.cpp.o.requires
.PHONY : FEspace/CMakeFiles/FEspace.dir/requires

FEspace/CMakeFiles/FEspace.dir/clean:
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEspace && $(CMAKE_COMMAND) -P CMakeFiles/FEspace.dir/cmake_clean.cmake
.PHONY : FEspace/CMakeFiles/FEspace.dir/clean

FEspace/CMakeFiles/FEspace.dir/depend:
	cd /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEspace /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEspace /Users/andreabortolossi/Desktop/CODICI/TUTORIAL_CODE/FEspace/CMakeFiles/FEspace.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : FEspace/CMakeFiles/FEspace.dir/depend

