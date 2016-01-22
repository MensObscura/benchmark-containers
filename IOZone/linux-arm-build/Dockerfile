FROM spirals/iozone3_434:source

WORKDIR /home/iozone3_434/src/current/


# Install needed libraries for NPB MPI build, generate the build suite, build, and remove sources
RUN make linux-arm \
&& mv iozone ../../. \
&& cd ../.. \
&& rm -rf src\
&& rm -rf docs
ENTRYPOINT ["/home/iozone3_434/./iozone"]
