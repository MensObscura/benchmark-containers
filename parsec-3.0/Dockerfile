FROM ubuntu:latest
MAINTAINER Ouamar Sais

WORKDIR /tmp 
RUN apt-get update && apt-get install -y \
	wget

RUN wget -nv http://10.201.1.167:8888/Docker/parsec-3.0.tar.gz && \
	tar -xvf /tmp/parsec-3.0.tar.gz && \
	mv /tmp/parsec-3.0 /home/ && \
	rm /tmp/parsec-3.0.tar.gz


#EXPOSE 8888
#ADD ressources/parsec-3.0.tar.gz /tmp/var/

#ADD http://192.168.0.11:8888/Docker/test /tmp/var/test
