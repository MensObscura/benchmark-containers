#!/bin/bash
       
if [ "$1" = "--help" ];
	then
	if [ "$2" = "-bt" ];
	then
	 cat /home/cmd/bt.txt
	fi
	if [ "$2" = "-cg" ];
	then
	 cat /home/cmd/cg.txt
	fi
	if [ "$2" = "-dt" ];
	then
	 cat /home/cmd/dt.txt
	fi
	if [ "$2" = "-ep" ];
	then
	 cat /home/cmd/ep.txt
	fi
	if [ "$2" = "-ft" ];
	then
	 cat /home/cmd/ft.txt
	fi
	if [ "$2" = "-is" ];
	then
	 cat /home/cmd/is.txt
	fi
	if [ "$2" = "-lu" ];
	then
	 cat /home/cmd/lu.txt
	fi
	if [ "$2" = "-mg" ];
	then
	 cat /home/cmd/mg.txt
	fi
	if [ "$2" = "-sp" ];
	then
	 cat /home/cmd/sp.txt
	fi
	if [ ! -z "$2" ] && [ "$2" != "-bt" ] && [ "$2" != "-cg" ] && [ "$2" != "-dt" ] && [ "$2" != "-ep" ] && [ "$2" != "-ft" ] && [ "$2" != "-is" ] && [ "$2" != "-lu" ] && [ "$2" != "-mg" ] && [ "$2" != "-sp" ];
	then
	   cat /home/cmd/helpusage.txt
	fi	
	if [ "$2" = "" ];
	then
	   cat /home/cmd/help.txt
	fi
		
fi

if [ "$1" = "--count" ] || [ "$1" = "-c" ];
	then
		ls /home/bin/ | wc -l
fi


if [ "$1" = "-np" ];
	then
		mpirun $1 $2 $3 $4
fi

if [ "$1" = "" ];
then
	cat /home/cmd/nasa.txt

fi



