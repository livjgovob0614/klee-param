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
CMAKE_SOURCE_DIR = /home/jg/klee

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jg/klee/build

# Include any dependencies generated for this target.
include unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/depend.make

# Include the progress variables for this target.
include unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/progress.make

# Include the compile flags for this target's objects.
include unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/flags.make

unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o: unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/flags.make
unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o: ../unittests/TreeStream/TreeStreamTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jg/klee/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o"
	cd /home/jg/klee/build/unittests/TreeStream && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o -c /home/jg/klee/unittests/TreeStream/TreeStreamTest.cpp

unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.i"
	cd /home/jg/klee/build/unittests/TreeStream && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jg/klee/unittests/TreeStream/TreeStreamTest.cpp > CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.i

unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.s"
	cd /home/jg/klee/build/unittests/TreeStream && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jg/klee/unittests/TreeStream/TreeStreamTest.cpp -o CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.s

unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o.requires:

.PHONY : unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o.requires

unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o.provides: unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o.requires
	$(MAKE) -f unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/build.make unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o.provides.build
.PHONY : unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o.provides

unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o.provides.build: unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o


# Object files for target TreeStreamTest
TreeStreamTest_OBJECTS = \
"CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o"

# External object files for target TreeStreamTest
TreeStreamTest_EXTERNAL_OBJECTS =

unittests/TreeStreamTest: unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o
unittests/TreeStreamTest: unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/build.make
unittests/TreeStreamTest: lib/libgtest_main.a
unittests/TreeStreamTest: lib/libkleeBasic.a
unittests/TreeStreamTest: lib/libgtest.a
unittests/TreeStreamTest: lib/libkleaverSolver.a
unittests/TreeStreamTest: lib/libkleeBasic.a
unittests/TreeStreamTest: lib/libkleaverSolver.a
unittests/TreeStreamTest: lib/libkleaverExpr.a
unittests/TreeStreamTest: lib/libkleeSupport.a
unittests/TreeStreamTest: /usr/lib/x86_64-linux-gnu/libz.so
unittests/TreeStreamTest: /usr/lib/libtcmalloc.so
unittests/TreeStreamTest: /usr/lib/llvm-6.0/lib/libLLVM-6.0.so
unittests/TreeStreamTest: /usr/local/lib/libstp.a
unittests/TreeStreamTest: /usr/lib/x86_64-linux-gnu/libboost_program_options.a
unittests/TreeStreamTest: /usr/local/lib/libminisat.a
unittests/TreeStreamTest: unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jg/klee/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../TreeStreamTest"
	cd /home/jg/klee/build/unittests/TreeStream && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TreeStreamTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/build: unittests/TreeStreamTest

.PHONY : unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/build

unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/requires: unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/TreeStreamTest.cpp.o.requires

.PHONY : unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/requires

unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/clean:
	cd /home/jg/klee/build/unittests/TreeStream && $(CMAKE_COMMAND) -P CMakeFiles/TreeStreamTest.dir/cmake_clean.cmake
.PHONY : unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/clean

unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/depend:
	cd /home/jg/klee/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jg/klee /home/jg/klee/unittests/TreeStream /home/jg/klee/build /home/jg/klee/build/unittests/TreeStream /home/jg/klee/build/unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittests/TreeStream/CMakeFiles/TreeStreamTest.dir/depend

