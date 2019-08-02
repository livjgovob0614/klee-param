
set(CMAKE_C_COMPILER "/usr/local/bin/wllvm" CACHE STRING "Initial cache" FORCE)
set(CMAKE_CXX_COMPILER "/usr/local/bin/wllvm++" CACHE STRING "Initial cache" FORCE)
set(CMAKE_BUILD_TYPE "RELEASE" CACHE STRING "Initial cache" FORCE)
set(CMAKE_INSTALL_PREFIX "/home/jg/klee/libcxx/libc++-build-60/projects/libcxx/benchmarks/benchmark-libcxx" CACHE PATH "Initial cache" FORCE)
set(CMAKE_CXX_FLAGS "-Wno-unused-command-line-argument -nostdinc++ -isystem /home/jg/klee/libcxx/libc++-60/llvm/projects/libcxx/include -L/home/jg/klee/libcxx/libc++-build-60/./lib -Wl,-rpath,/home/jg/klee/libcxx/libc++-build-60/./lib -L -Wl,-rpath," CACHE STRING "Initial cache" FORCE)
set(BENCHMARK_USE_LIBCXX "ON" CACHE BOOL "Initial cache" FORCE)
set(BENCHMARK_ENABLE_TESTING "OFF" CACHE BOOL "Initial cache" FORCE)