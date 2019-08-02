# Install script for directory: /home/jg/klee/libcxx/libc++-60/llvm

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "llvm-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES
    "/home/jg/klee/libcxx/libc++-60/llvm/include/llvm"
    "/home/jg/klee/libcxx/libc++-60/llvm/include/llvm-c"
    FILES_MATCHING REGEX "/[^/]*\\.def$" REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.td$" REGEX "/[^/]*\\.inc$" REGEX "/LICENSE\\.TXT$" REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "llvm-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/jg/klee/libcxx/libc++-build-60/include/llvm" FILES_MATCHING REGEX "/[^/]*\\.def$" REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.gen$" REGEX "/[^/]*\\.inc$" REGEX "/CMakeFiles$" EXCLUDE REGEX "/config\\.h$" EXCLUDE REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Demangle/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/Support/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/TableGen/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/utils/TableGen/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/include/llvm/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/lib/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/utils/FileCheck/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/utils/PerfectShuffle/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/utils/count/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/utils/not/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/utils/yaml-bench/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/projects/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/tools/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/runtimes/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/examples/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/utils/lit/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/test/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/unittests/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/utils/unittest/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/docs/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/cmake/modules/cmake_install.cmake")
  include("/home/jg/klee/libcxx/libc++-build-60/utils/llvm-lit/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/jg/klee/libcxx/libc++-build-60/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
