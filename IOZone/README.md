##IOZone
##Overview

Docker version of [iozone3_434](www.iozone.org/) benchmark suite.

This repository contains the source code for building three different images.

The first one represents the source code (`base-image` folder) image and the others represents two built benchmarks from IOZone(`linux-***-build` folder).

The first image can be downloaded with `docker pull spirals/iozone3_434:source` and the other with `docker pull spirals/iozone3_434:linux-***-build`.


##Available benchmarks:

- **linux-AMD64 (64bit)  **        : OK
- **linux-arm (32bit) **           : OK
