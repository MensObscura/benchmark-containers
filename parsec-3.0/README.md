## PARSEC, SPLASH2 & SPLASH2X
### Overview
Docker version of [PARSEC 3.0 and SPLASH2/SPLASH2x](http://parsec.cs.princeton.edu) benchmark suites.

This docker image contains all built benchmarks and all inputs (`test`, `simdev`, `simsmall`, `simmedium`, `simlarge`, `native`).

Each benchmark has been compiled for each available configuration (`gcc`, `gcc-hooks`, `gcc-serial`, `gcc-openmp`, `gcc-pthreads`, `gcc-tbb`).

In order to provide a lightweight image, each input has been compressed and the [source code](http://parsec.cs.princeton.edu/download.htm#parsec) has been removed from the image.
