# benchmark-containers
A repository of benchmarks packaged as Docker containers

##PARSEC 3.0
###Benchmarks pris en charges:
- **Parsec** : Tout les benchmarks sauf ceux du package *netapps* et "uptcpip" du package *libs*

- **Splash2X** : tout les benchmark

- **Splash2** : tout les benchmark

##Utilisation
Depuis le dossier *parsec-3.0/*

1. Creer l'image à partir du Dockerfile : "*docker build -t [repository/tag] .*"
2. Lancer l'image dans un container : "*docker run  [repository/tag] help*"
3. Suivre les instructions

