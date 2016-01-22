##IOZone
##Overview

Docker version of [iozone3_434](www.iozone.org/) benchmark suite.

This docker image contains a linux-AMD64 built benchmarks and published with the `spirals/iozone3_434:linux-AMD64-build` tag.

##Usage

From IOZone/ directory

1. Create the image from Dockerfile : "docker build -t [repository/tag]  ."

This image has to be used in a non-interactive mode—i.e., the benchmarks can be directly launched by using the command `docker run`.

For more details, use `docker run spirals/iozone3_434:linux-AMD64-build -h` .
