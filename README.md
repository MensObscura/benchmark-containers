# benchmark-containers
A repository of benchmarks packaged as Docker containers



Currently only 245 benchmark pass the compilation on my computer on 263.
However the 263 bench pass the compilation on docker.

You can try to run one of them.


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
bt.S.1
```

The to run the de container just type :


docker run -t your_docker_name/contener_name -np [NBPROC] [BENCHMARK]

Example : 

```
docker run -t rosacroc/mpinpb -np 1 bt.S.1
```

Problem
=======

Currently it remains some problem when few bench are executed.
Especially for class E or S.


