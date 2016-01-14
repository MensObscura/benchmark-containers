FROM debian:latest

RUN mkdir /home/parsec-3.0

# Copy scripts for getting patches
COPY pod.patch uptcpip.patch netdedup-run.patch netdedup-runconf.patch /home/parsec-3.0/

# Install needed libraries for Parsec download, untar, patch and clean Parsec folder
RUN apt-get clean && apt-get update && apt-get install -y \
	patch\
	wget\
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* \
&& wget -nv -P /home/parsec-3.0 http://parsec.cs.princeton.edu/download/3.0/parsec-3.0.tar.gz \
&& tar -C /home/ -xvf /home/parsec-3.0/parsec-3.0.tar.gz \
&& rm /home/parsec-3.0/parsec-3.0.tar.gz \
&& cd /home/parsec-3.0 \
&& patch -p1 < pod.patch \
&& patch -p1 < uptcpip.patch \
&& patch -p1 < netdedup-run.patch \
&& patch -p1 < netdedup-runconf.patch \
&& rm -r pod.patch uptcpip.patch \
&& find /home/parsec-3.0/ -name \*.tar -exec xz -9 \{\} \; \


WORKDIR /home/parsec-3.0
