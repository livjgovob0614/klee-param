# Install script for directory: /home/jg/klee/libcxx/libc++-60/llvm/unittests

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
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/ADT/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/Analysis/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/AsmParser/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/Bitcode/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/CodeGen/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/DebugInfo/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/ExecutionEngine/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/FuzzMutate/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/IR/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/LineEditor/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/Linker/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/MC/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/MI/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/Object/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/BinaryFormat/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/ObjectYAML/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/Option/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/ProfileData/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/Support/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/Target/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/Transforms/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/XRay/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/tools/cmake_install.cmake")

endif()

