FROM spirals/alpbench:source

WORKDIR /home/ALPBench 

COPY run ./
RUN apt-get update && apt-get install -y\
  make\
  gcc\
  mpich \
&& cd Sphinx3 \
&& make \
&& cp execs/livepretend ../sphinx3 \
&& cd .. \
&& rm -rf Sphinx3 \
&& cd MPGenc\
&& make \
&& cp execs/mpeg2enc ../mpgenc \
&& cd .. \
&& rm -rf MPGenc \
&& cd MPGdec \
&& make \
&& cp execs/mpeg2dec ../mpgdec \
&& cd .. \
&& rm -rf MPGdec\
&& apt-get clean 

ENTRYPOINT ["./run"]




