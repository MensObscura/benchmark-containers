#The NBP Benchmark will run on ubuntu
FROM ubuntu:latest

#config and help files
COPY patch.sh suite.awk suite.def /home/

#Get the NPB from http://www.nas.nasa.gov/publications/npb.html 
RUN apt-get update && apt-get install -y\
	wget\
	make\
	&& wget http://iozone.org/src/current/iozone3_434.tar \
	&& tar -xpf iozone3_434.tar \
	&& rm -f iozone3_434.tar \
	&& mv  iozone3_434 /home/. \
	&& mv /home/patch.sh /home/iozone3_434/src/current/. \
	&& mv /home/suite.awk /home/iozone3_434/src/current/. \
	&& mv /home/suite.def /home/iozone3_434/src/current/. \
	&& cd /home/iozone3_434/src/current/ \
	&& bash patch.sh \
	&& make suite 

	




