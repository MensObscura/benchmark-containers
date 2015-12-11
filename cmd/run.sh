#!/bin/bash
       
if [ "$1" = "--help" ];
	then
	if [ "$2" = "-bt" ];
	then
	 cat /Bench/cmd/bt.txt
	fi
	if [ "$2" = "-cg" ];
	then
	 cat /Bench/cmd/cg.txt
	fi
	if [ "$2" = "-dt" ];
	then
	 cat /Bench/cmd/dt.txt
	fi
	if [ "$2" = "-ep" ];
	then
	 cat /Bench/cmd/ep.txt
	fi
	if [ "$2" = "-ft" ];
	then
	 cat /Bench/cmd/ft.txt
	fi
	if [ "$2" = "-is" ];
	then
	 cat /Bench/cmd/is.txt
	fi
	if [ "$2" = "-lu" ];
	then
	 cat /Bench/cmd/lu.txt
	fi
	if [ "$2" = "-mg" ];
	then
	 cat /Bench/cmd/mg.txt
	fi
	if [ "$2" = "-sp" ];
	then
	 cat /Bench/cmd/sp.txt
	fi
	if [ ! -z "$2" ] && [ "$2" != "-bt" ] && [ "$2" != "-cg" ] && [ "$2" != "-dt" ] && [ "$2" != "-ep" ] && [ "$2" != "-ft" ] && [ "$2" != "-is" ] && [ "$2" != "-lu" ] && [ "$2" != "-mg" ] && [ "$2" != "-sp" ];
	then
	   cat /Bench/cmd/helpusage.txt
	fi	
	if [ "$2" = "" ];
	then
	   cat /Bench/cmd/help.txt
	fi
		
fi

if [ "$1" = "--count" ] || [ "$1" = "-c" ];
	then
		ls /Bench/NPB3.3-MPI/bin/ | wc -l
fi


if [ "$1" = "-np" ];
	then
		mpirun $1 $2 $3 $4
fi

if [ "$1" = "" ];
then
	cat /Bench/cmd/nasa.txt

fi



