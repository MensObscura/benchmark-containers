# benchmark-containers
A repository of benchmarks packaged as Docker containers



Currently only 202 benchmark pass the compilation on 301.

But you can try to run one of them.


Build
====

To build a container, you have to open a terminal in the folder 'benchmark-containers' type this command :

docker build -t your_docker_name/contener_name .

Example :

```
docker build -t rosacroc/mpinpb .
```

Run
===

Benchmarks are build ready to execute, their names respect this format :

benchmark-name.class.nbproc

Example : 

```
bt.S.16
```

The to run the de container just type :


docker run -t your_docker_name/contener_name -np [NBPROC] [BENCHMARK]

Example : 

```
docker run -t rosacroc/mpinpb -np 16 bt.S.16
```
