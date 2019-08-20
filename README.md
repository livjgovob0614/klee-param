# KLEE-ParaDySE

## Building KLEE-ParaDySE 
We recommend to build our KLEE-ParaDySE with LLVM 6.0.
See [KLEE][klee].

Build:
```sh
$ git clone https://github.com/livjgovob0614/klee-param.git
$ cd ~/KLEE-ParaDySE
$ mkdir build
$ cd build
$ cmake \
  -DENABLE_SOLVER_STP=ON \
  -DENABLE_POSIX_RUNTIME=ON \
  -DENABLE_KLEE_UCLIBC=ON \
  -DKLEE_UCLIBC_PATH=<KLEE_UCLIBC_SOURCE_DIR> \
  -DENABLE_UNIT_TESTS=OFF \
  -DLLVM_CONFIG_BINARY=<PATH_TO_llvm-config-6.0> \
  -DLLVMCC=<PATH_TO_clang-6.0> \
  -DLLVMCXX=<PATH_TO_clang++-6.0> \
  -DENABLE_KLEE_LIBCXX=ON \
  -DKLEE_LIBCXX_DIR=<LIBCXX_INSTALL_DIR>/libc++-install-60/ \
   -DKLEE_LIBCXX_INCLUDE_DIR=<LIBCXX_INSTALL_DIR>/libc++-install-60/include/c++/v1/ \
  <KLEE_SRC_DIRECTORY>
$ make
```

## Run a benchmark. 
```sh
$ cd ~/klee-ParaDySE/benchmarks/coreutils-8.31/
$ klee --libc=uclibc --posix-runtime ... --search=param --weight=./weight/ls.w ls.bc ..
``` 


## Autimatically generate a search heuristic.


	
[klee]:https://klee.github.io/build-llvm60/
