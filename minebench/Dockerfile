FROM debian:latest
MAINTAINER Ouamar Sais

RUN mkdir /home/NU-MineBench-3.0.1


#Installation des librairies nécéssaires à la compilation de Parsec
RUN apt-get clean && apt-get update && apt-get install -y \
	g++ \
	make \
	wget \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* \
&& wget -nv -P /home/NU-MineBench-3.0.1 http://192.168.0.11:8888/Docker/NU-MineBench-3.0.1.tar.gz \
&& tar -C /home/ -xvzf /home/NU-MineBench-3.0.1/parsec-3.0.tar.gz 

#Lancement de la compilation de Parsec
##RUN sh build.sh


#Sauvegarde pour le devellopement
#10.201.1.167
#http://192.168.0.11:8888/Docker/parsec-3.0.tar.gz




