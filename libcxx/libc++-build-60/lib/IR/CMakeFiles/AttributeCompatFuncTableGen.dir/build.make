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
CMAKE_SOURCE_DIR = /home/jg/klee/libcxx/libc++-60/llvm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jg/klee/libcxx/libc++-build-60

# Utility rule file for AttributeCompatFuncTableGen.

# Include the progress variables for this target.
include lib/IR/CMakeFiles/AttributeCompatFuncTableGen.dir/progress.make

lib/IR/CMakeFiles/AttributeCompatFuncTableGen: lib/IR/AttributesCompatFunc.inc


lib/IR/AttributesCompatFunc.inc: lib/IR/AttributesCompatFunc.inc.tmp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jg/klee/libcxx/libc++-build-60/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Updating AttributesCompatFunc.inc..."
	cd /home/jg/klee/libcxx/libc++-build-60/lib/IR && /usr/bin/cmake -E copy_if_different /home/jg/klee/libcxx/libc++-build-60/lib/IR/AttributesCompatFunc.inc.tmp /home/jg/klee/libcxx/libc++-build-60/lib/IR/AttributesCompatFunc.inc

lib/IR/AttributesCompatFunc.inc.tmp: bin/llvm-tblgen
lib/IR/AttributesCompatFunc.inc.tmp: bin/llvm-tblgen
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/lib/IR/AttributesCompatFunc.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/Intrinsics.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/Attributes.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/IntrinsicsX86.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/IntrinsicsAArch64.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/IntrinsicsHexagon.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/IntrinsicsSystemZ.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/IntrinsicsWebAssembly.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/IntrinsicsBPF.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/IntrinsicsXCore.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/IntrinsicsMips.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/IntrinsicsPowerPC.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/IntrinsicsAMDGPU.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/IntrinsicsARM.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/IR/IntrinsicsNVVM.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/TableGen/SearchableTable.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/Target/GlobalISel/RegisterBank.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/Target/GlobalISel/SelectionDAGCompat.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/Target/GlobalISel/Target.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/Target/TargetSelectionDAG.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/Target/TargetItinerary.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/Target/TargetCallingConv.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/Target/TargetSchedule.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/Target/GenericOpcodes.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/Target/Target.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/Option/OptParser.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/CodeGen/ValueTypes.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/include/llvm/CodeGen/SDNodeProperties.td
lib/IR/AttributesCompatFunc.inc.tmp: /home/jg/klee/libcxx/libc++-60/llvm/lib/IR/AttributesCompatFunc.td
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jg/klee/libcxx/libc++-build-60/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building AttributesCompatFunc.inc..."
	cd /home/jg/klee/libcxx/libc++-build-60/lib/IR && ../../bin/llvm-tblgen -gen-attrs -I /home/jg/klee/libcxx/libc++-60/llvm/lib/IR -I /home/jg/klee/libcxx/libc++-60/llvm/include /home/jg/klee/libcxx/libc++-60/llvm/lib/IR/AttributesCompatFunc.td -o /home/jg/klee/libcxx/libc++-build-60/lib/IR/AttributesCompatFunc.inc.tmp

AttributeCompatFuncTableGen: lib/IR/CMakeFiles/AttributeCompatFuncTableGen
AttributeCompatFuncTableGen: lib/IR/AttributesCompatFunc.inc
AttributeCompatFuncTableGen: lib/IR/AttributesCompatFunc.inc.tmp
AttributeCompatFuncTableGen: lib/IR/CMakeFiles/AttributeCompatFuncTableGen.dir/build.make

.PHONY : AttributeCompatFuncTableGen

# Rule to build all files generated by this target.
lib/IR/CMakeFiles/AttributeCompatFuncTableGen.dir/build: AttributeCompatFuncTableGen

.PHONY : lib/IR/CMakeFiles/AttributeCompatFuncTableGen.dir/build

lib/IR/CMakeFiles/AttributeCompatFuncTableGen.dir/clean:
	cd /home/jg/klee/libcxx/libc++-build-60/lib/IR && $(CMAKE_COMMAND) -P CMakeFiles/AttributeCompatFuncTableGen.dir/cmake_clean.cmake
.PHONY : lib/IR/CMakeFiles/AttributeCompatFuncTableGen.dir/clean

lib/IR/CMakeFiles/AttributeCompatFuncTableGen.dir/depend:
	cd /home/jg/klee/libcxx/libc++-build-60 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jg/klee/libcxx/libc++-60/llvm /home/jg/klee/libcxx/libc++-60/llvm/lib/IR /home/jg/klee/libcxx/libc++-build-60 /home/jg/klee/libcxx/libc++-build-60/lib/IR /home/jg/klee/libcxx/libc++-build-60/lib/IR/CMakeFiles/AttributeCompatFuncTableGen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/IR/CMakeFiles/AttributeCompatFuncTableGen.dir/depend

