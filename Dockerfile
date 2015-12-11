#The NBP Benchmark will run on ubuntu
FROM ubuntu:latest


#Get the NPB from my place
COPY NPB3.3-MPI /Bench/NPB3.3-MPI

#file with help inside
COPY cmd /Bench/cmd/

#To run mpirun,have command from the container and have the binary we have to set the PATH
ENV PATH /usr/bin/:/Bench/NPB3.3-MPI/bin:$PATH

#so we could install all dependencies, and make it
RUN apt-get update && apt-get install -y\
	make\
	gcc\
	g++\
	gfortran\
	fort77\
	mpich &&\
	cd /Bench/NPB3.3-MPI &&\
	make suite

#The entry point is the command mpirun, so the arguments will be "-np [NBPROC] [BENCH_EXEC]"
ENTRYPOINT ["./Bench/cmd/run.sh"]

RUN echo "========= fin ========="


RUN cat /Bench/cmd/nasa.txt


