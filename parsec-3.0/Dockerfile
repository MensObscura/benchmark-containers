FROM debian:latest
MAINTAINER Ouamar Sais

#Définition du repertoire courrant à /tmp
WORKDIR /tmp 


#Installation des librairies nécéssaires à la compilation de Parsec
RUN apt-get update && apt-get install -y \
	wget\
	xorg-dev\
	make\
	patch\
	g++ \
	m4\
	gettext\
	libtbb-dev
	

#Téléchargement, décompression et suppression de l'archive de Parsec
RUN wget -nv http://parsec.cs.princeton.edu/download/3.0/parsec-3.0.tar.gz && \
	tar -xvf /tmp/parsec-3.0.tar.gz && \
	mv /tmp/parsec-3.0 /home/ && \
	rm /tmp/parsec-3.0.tar.gz



#Copie du patch pour la documentation ssl dans son dossier src 
COPY pod.patch /home/parsec-3.0/pkgs/libs/ssl/src/

#Application du patch pour ssl
RUN cd /home/parsec-3.0/pkgs/libs/ssl/src/ && \
	patch -p1 < pod.patch


#Copie du script bash de recuperation des configurations de compilation, de build des benchmarks, d'execution et du fichier texte d'aide
COPY getCompilConf.sh build.sh run.sh help.txt /home/parsec-3.0/


WORKDIR /home/parsec-3.0

#Suppression des benchmarks qui ne compilent pas et lancement du script de compilation
RUN rm -rf pkgs/netapps pkgs/libs/uptcpip 

#Lancement de la compilation de Parsec
RUN sh /home/parsec-3.0/getCompilConf.sh &&\
	 bin/parsecmgmt -a build -p canneal


ENV PATH $PATH:bin/

#Definition du comportement par default au lancement du container
ENTRYPOINT ["./run.sh"]
CMD ["help"]

#Sauvegarde pour le devellopement
#10.201.1.167
#http://192.168.0.11:8888/Docker/parsec-3.0.tar.gz




