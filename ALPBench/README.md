## ALPBench
### Overview
Docker version of [ALPBench](http://rsim.cs.uiuc.edu/alp/alpbench/download.html) benchmark suites.

This docker image contains all built benchmarks (`SpeechRec`, `FaceRec`, `RayTrace`,  `MPGenc`, `MPGdec`).

### Usage
1. Create the image from Dockerfile : "docker build -t [repository/tag]  ."

This image has to be used in a non-interactive mode—i.e., the benchmarks can be directly launched by using the command `docker run`.

For more details, use `docker run spirals/iozone3_434:linux-arm-build -h` .
