#!/bin/bash


if [ "$1" = "help" ];
	then
		cat help.txt
fi


if [ "$1" = "status" ];
	then
		bin/parsecmgmt -a status
fi


if [ "$1" = "run" ];
	then
	   bin/parsecmgmt -a $1 -p $2 -c $3 -i $4 $5 $6
fi
