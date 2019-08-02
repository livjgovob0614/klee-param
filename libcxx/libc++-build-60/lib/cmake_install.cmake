# Install script for directory: /home/jg/klee/libcxx/libc++-60/llvm/lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jg/klee/libcxx/libc++-install-60")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/jg/klee/libcxx/libc++-build-60/lib/IR/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/FuzzMutate/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/IRReader/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/CodeGen/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/BinaryFormat/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Bitcode/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Transforms/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Linker/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Analysis/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/LTO/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/MC/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Object/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/ObjectYAML/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Option/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/DebugInfo/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/ExecutionEngine/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Target/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/AsmParser/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/LineEditor/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/ProfileData/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Passes/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/ToolDrivers/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/XRay/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Testing/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/WindowsManifest/cmake_install.cmake")

endif()

