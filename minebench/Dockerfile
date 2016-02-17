FROM ubuntu:latest
MAINTAINER Ouamar Sais

RUN mkdir /home/NU-MineBench-3.0.1

# Copy scripts for getting patches
COPY patchSemphy.patch /home/NU-MineBench-3.0.1/

#Installation des librairies nécéssaires à la compilation de Parsec
RUN apt-get clean && apt-get update && apt-get install -y \
	g++ \
	make \
	patch \
	wget \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* 


RUN wget -nv -P /home/NU-MineBench-3.0.1 http://192.168.0.11:8888/Docker/NU-MineBench-3.0.1.tar.gz\
&& tar -C /home/ -xvf /home/NU-MineBench-3.0.1/NU-MineBench-3.0.1.tar.gz \
&& wget -nv -P /home/NU-MineBench-3.0.1 http://192.168.0.11:8888/Docker/datasets.tar.gz \
&& tar -C /home/NU-MineBench-3.0.1/ -xvf /home/NU-MineBench-3.0.1/datasets.tar.gz \ 
&& rm /home/NU-MineBench-3.0.1/datasets.tar.gz /home/NU-MineBench-3.0.1/NU-MineBench-3.0.1.tar.gz \
&& patch -d /home/NU-MineBench-3.0.1 -p1 < /home/NU-MineBench-3.0.1/patchSemphy.patch 


#Lancement de la compilation de Parsec
##RUN sh build.sh

WORKDIR /home/NU-MineBench-3.0.1


#Sauvegarde pour le devellopement
#10.201.1.167
#http://192.168.0.11:8888/Docker/parsec-3.0.tar.gz


