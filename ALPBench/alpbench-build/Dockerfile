FROM spirals/alpbench:source

WORKDIR /home/ALPBench 

RUN apt-get update && apt-get install -y\
  make\
  gcc\
  mpich \
&& cd Sphinx3 \
&&  ./configure  --prefix=/home/ALPBench \
&&  make \
&&  make install 
&& apt-get clean 

ENTRYPOINT ["./run"]




