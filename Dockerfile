FROM ubuntu:latest
ENTRYPOINT ["mpirun"]
CMD cat nasa.txt

CMD echo "========== make/gcc/g++/gfortran/fort77/mpich =========="

COPY NPB3.3-MPI /NPB3.3-MPI

ENV PATH /usr/bin/:/NPB3.3-MPI/bin:$PATH

RUN apt-get update && apt-get install -y\
	make\
	gcc\
	g++\
	gfortran\
	fort77\
	mpich &&\
	cd NPB3.3-MPI &&\
	make suite

CMD echo "========= fin ========="

CMD echo "======welcome to the Nasa platform Benchmark, MPI version====="


