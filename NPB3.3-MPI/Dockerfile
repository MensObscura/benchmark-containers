#The NBP Benchmark will run on ubuntu
FROM ubuntu:latest


#Get the NPB from http://www.nas.nasa.gov/publications/npb.html 
RUN apt-get update && apt-get install -y\
	wget\
	bc &&\
	wget http://www.nas.nasa.gov/assets/npb/NPB3.3.1.tar.gz &&\
	tar -zxvf NPB3.3.1.tar.gz &&\
	rm -f NPB3.3.1.tar.gz &&\
	mkdir /Bench &&\
	mv  NPB3.3.1/NPB3.3-MPI /Bench/. &&\
	rm -rf NPB3.3.1

	

#file with help inside
COPY cmd /Bench/cmd/

#config file
COPY generator.sh /Bench/NPB3.3-MPI/config/generator.sh 
COPY make.def /Bench/NPB3.3-MPI/config/make.def


#To run mpirun,have command from the container and have the binary we have to set the PATH
ENV PATH /usr/bin/:/Bench/bin:$PATH

#so we could install all dependencies, and make it
ARG PROC_NB
RUN apt-get update && apt-get install -y\
	make\
	gcc\
	g++\
	gfortran\
	fort77\
	mpich &&\
	cd /Bench/NPB3.3-MPI/config &&\
	bash generator.sh $PROC_NB &&\
	cd .. &&\
	make suite &&\
	mv bin /Bench/. &&\
	rm -rf NPB3.3-MPI

#The entry point is the command mpirun, so the arguments will be "-np [NBPROC] [BENCH_EXEC]"
ENTRYPOINT ["./Bench/cmd/run.sh"]

RUN echo "========= fin ========="


RUN cat /Bench/cmd/nasa.txt


