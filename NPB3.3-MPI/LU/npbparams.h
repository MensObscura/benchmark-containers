c NPROCS = 16 CLASS = E
c  
c  
c  This file is generated automatically by the setparams utility.
c  It sets the number of processors and the class of the NPB
c  in this directory. Do not modify it by hand.
c  

c number of nodes for which this version is compiled
        integer nnodes_compiled
        parameter (nnodes_compiled = 16)

c full problem size
        integer isiz01, isiz02, isiz03
        parameter (isiz01=1020, isiz02=1020, isiz03=1020)

c sub-domain array size
        integer isiz1, isiz2, isiz3
        parameter (isiz1=255, isiz2=255, isiz3=isiz03)

c number of iterations and how often to print the norm
        integer itmax_default, inorm_default
        parameter (itmax_default=300, inorm_default=300)
        double precision dt_default
        parameter (dt_default = 0.5d0)
        logical  convertdouble
        parameter (convertdouble = .false.)
        character*11 compiletime
        parameter (compiletime='04 Dec 2015')
        character*3 npbversion
        parameter (npbversion='3.3')
        character*6 cs1
        parameter (cs1='mpif77')
        character*9 cs2
        parameter (cs2='$(MPIF77)')
        character*16 cs3
        parameter (cs3='-L/usr/lib -lmpi')
        character*18 cs4
        parameter (cs4='-I/usr/include/mpi')
        character*37 cs5
        parameter (cs5='-O -fdefault-integer-8 -mcmodel=large')
        character*2 cs6
        parameter (cs6='-O')
        character*6 cs7
        parameter (cs7='randi8')
