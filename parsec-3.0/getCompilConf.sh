#!/bin/sh  

#bin/parsecmgmt -a build -p all


#PARSEC

#On entre dans le repertoire contenant les packages de benchmarks 
cd pkgs

#On stocke les differents packages
pkgs=$(ls)

for pkg in $pkgs
do
	#On entre dans le repertoire du package courrant
	cd $pkg

	#On stocke les benchmarks de ce package
	benchs=$(ls) 

	#Pour chaque benchmark on stocke ses configurations de compilation
	for bench in $benchs
	do
		echo $bench : $(ls $bench/parsec/ | grep -v "icc" | grep '.bldconf$' | cut -d'.' -f 1) >> ../../compilConf.txt
	done

	cd ..

done 

#Retour à la racine de parsec
cd ..

#SPLASH2/SPLASH2X
cd ext/

splashdirs=$(ls)


for splashdir in $splashdirs
do
	cd $splashdir

	for pkg in $(ls -d */ | grep -v "null_macros")
	do

		benchs=$(ls $pkg/) 

		#Pour chaque benchmark on stocke ses configurations de compilation
		for bench in $benchs
		do
			echo $splashdir.$bench : $(ls $pkg/$bench/parsec/ | grep -v "icc" | grep '.bldconf$' | cut -d'.' -f 1) >> ../../compilConf.txt
		done

	done

	cd ..

done
