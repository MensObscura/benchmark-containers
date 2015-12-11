FROM debian:latest
MAINTAINER Ouamar Sais

#Définition du repertoire courrant à /tmp
WORKDIR /tmp 


#Installation des librairies nécéssaires à la compilation de Parsec
RUN apt-get update && apt-get install -y \
	wget\
	make\
	g++ \
	

#Téléchargement, décompression et suppression de l'archive de Parsec
RUN wget -nv http://192.168.0.11:8888/Docker/NU-MineBench-3.0.1.tar.gz && \
	tar -xvf /tmp/NU-MineBench-3.0.1.tar.gz && \
	mv /tmp/NU-MineBench-3.0.1 /home/ && \
	rm /tmp/NU-MineBench-3.0.1





WORKDIR /home/NU-MineBench-3.0.1

#Lancement de la compilation de Parsec
RUN sh 	sh build.sh


#Definition du comportement par default au lancement du container
ENTRYPOINT ["./build.sh"]

#Sauvegarde pour le devellopement
#10.201.1.167
#http://192.168.0.11:8888/Docker/parsec-3.0.tar.gz




