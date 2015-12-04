c NPROCS = 16 CLASS = E
c  
c  
c  This file is generated automatically by the setparams utility.
c  It sets the number of processors and the class of the NPB
c  in this directory. Do not modify it by hand.
c  
        integer nx, ny, nz, maxdim, niter_default, ntdivnp, np_min
        parameter (nx=4096, ny=2048, nz=2048, maxdim=4096)
        parameter (niter_default=25)
        parameter (np_min = 16)
        parameter (ntdivnp=((nx*ny)/np_min)*nz)
        double precision ntotal_f
        parameter (ntotal_f=1.d0*nx*ny*nz)
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
        character*38 cs5
        parameter (cs5='-O -fdefault-integer-8 -mcmodel=medium')
        character*2 cs6
        parameter (cs6='-O')
        character*6 cs7
        parameter (cs7='randi8')
