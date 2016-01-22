#The NBP Benchmark will run on ubuntu
FROM ubuntu:latest

WORKDIR /home

#Get the NPB from www.iozone.org/
RUN apt-get update && apt-get install -y\
	wget\
	gcc \
	make\
	&& wget http://iozone.org/src/current/iozone3_434.tar \
	&& tar -xpf iozone3_434.tar \
	&& rm -f iozone3_434.tar 
	
	
WORKDIR /home/iozone3_434/src/current/
	




