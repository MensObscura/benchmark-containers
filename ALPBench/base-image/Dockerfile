FROM ubuntu:latest

WORKDIR /home

# Install required libraries, download benchmark suite and untar files
RUN apt-get update && apt-get install -y \
  wget \
&& mkdir ALPBench \
&& cd ALPBench \
&& wget -nv http://rsim.cs.uiuc.edu/alp/alpbench/release/Sphinx3.tar.gz \
&& tar -xf Sphinx3.tar.gz \
&& rm Sphinx3.tar.gz \
&& wget http://rsim.cs.uiuc.edu/alp/alpbench/release/Face_Rec.tar.gz \
&& tar -xf Face_Rec.tar.gz \
&& rm Face_Rec.tar.gz \
&& wget -nv http://jedi.ks.uiuc.edu/~johns/raytracer/files/0.98.9/tachyon-0.98.9.tar.gz \
&& tar -xf tachyon-0.98.9.tar.gz \
&& rm tachyon-0.98.9.tar.gz \
&& wget -nv http://rsim.cs.uiuc.edu/alp/alpbench/release/MPGenc.tar.gz \
&& tar -xf MPGenc.tar.gz \
&& rm MPGenc.tar.gz \
&& wget -nv http://rsim.cs.uiuc.edu/alp/alpbench/release/MPGdec.tar.gz \
&& tar -xf MPGdec.tar.gz \
&& rm MPGdec.tar.gz \
&& apt-get clean 

WORKDIR /home/ALPBench

