#!/bin/bash

#stock benchmarks names
pkgs=$(ls -d */)

for pkg in $pkgs
do
	#Go into current package directory
	cd pkg

	#Compile
	make

	cd ..

done

