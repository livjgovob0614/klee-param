# Install script for directory: /home/jg/klee/libcxx/libc++-60/llvm/lib/Target/AArch64

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "LLVMAArch64CodeGen")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/jg/klee/libcxx/libc++-build-60/lib/libLLVMAArch64CodeGen.a")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Target/AArch64/TargetInfo/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Target/AArch64/AsmParser/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Target/AArch64/Disassembler/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Target/AArch64/InstPrinter/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Target/AArch64/MCTargetDesc/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Target/AArch64/Utils/cmake_install.cmake")

endif()

