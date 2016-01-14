FROM spirals/parsec-3.0:source

# Copy scripts for getting build configurations, getting patches, building parsec and running parsec  
COPY getCompilConf.sh build.sh run.sh /home/parsec-3.0/

#Install needed libraries for Parsec build, compile and clean Parsec folder
RUN apt-get clean && apt-get update && apt-get install -y \
        g++ \
        gettext\
        libtbb-dev\
        m4\
        make\
        xorg-dev\
&& sh /home/parsec-3.0/getCompilConf.sh \
&& sh /home/parsec-3.0/build.sh \
&& /home/parsec-3.0/bin/parsecmgmt -a fullclean -p all \
&& cd /home/parsec-3.0 \
&& rm -rf build.sh getCompilConf.sh compilConf.txt log man toolkit \
&& rm -rf pkgs/libs pkgs/tools \
&& rm -rf ext/splash2/README.SPLASH2 ext/splash2/SPLASH2.POSTING ext/splash2/null_macros \
&& find 'pkgs' -depth -mindepth 3 -maxdepth 3 -not -name inputs -not -name inst -not -name parsec -exec rm -rf \{\} \; \
&& find 'ext' -depth -mindepth 4 -maxdepth 4 -not -name inputs -not -name inst -not -name parsec -exec rm -rf \{\} \; \
# Create missing symbolic links for network packages
&& cd /home/parsec-3.0/pkgs/netapps/netdedup && ln -sf ../../kernels/dedup/inputs \
&& cd /home/parsec-3.0/pkgs/netapps/netferret && ln -sf ../../apps/ferret/inputs


WORKDIR /home/parsec-3.0

# Define default behavior at container launch
ENTRYPOINT ["./run.sh"]