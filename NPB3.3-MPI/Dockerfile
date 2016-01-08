#The NBP homemark will run on ubuntu
FROM ubuntu:latest


#config and help file
COPY cmd  generator.sh make.def /home/cmd/

#To run mpirun,have command from the container and have the binary we have to set the PATH
ENV PATH /usr/bin/:/home/bin:$PATH

# Install all dependencies, and make it
ARG PROC_NB
RUN apt-get update && apt-get install -y\
	wget\
	make\
	gcc\
	g++\
	gfortran\
	mpich\
	bc\
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* \
	# Get the NPB from http://www.nas.nasa.gov/publications/npb.html
	&& wget http://www.nas.nasa.gov/assets/npb/NPB3.3.1.tar.gz \
	&& tar -zxvf NPB3.3.1.tar.gz \
	&& rm -f NPB3.3.1.tar.gz \
	&& mv  NPB3.3.1/NPB3.3-MPI /home/. \
	&& rm -rf NPB3.3.1 \
	&& mv /home/cmd/generator.sh /home/NPB3.3-MPI/config/. \
	&& mv /home/cmd/make.def /home/NPB3.3-MPI/config/. \
	&& cd /home/NPB3.3-MPI/config \
	# generate the suite.def
	&& bash generator.sh $PROC_NB \
	&& cd .. \
	# make all bench
	&& make suite \
	&& mv bin /home/. \
	&& rm -rf /home/NPB3.3-MPI
	



#The entry point is the command mpirun, so the arguments will be "-np [NBPROC] [BENCH_EXEC]"
ENTRYPOINT ["./home/cmd/run.sh"]

RUN cat /home/cmd/nasa.txt


