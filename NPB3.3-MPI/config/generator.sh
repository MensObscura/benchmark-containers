echo "==================Ecriture suite def=================="
class=(S W A B C D E)
bench=(bt cg dt ep ft is lu mg sp)

for (( b=0; b<9; b++ ))
do

	


     for (( c=0; c<7; c++ ))
     do
	 echo "${bench[$b]} ${class[$c]} 1" | tee -a suite.def
	if [  "${bench[$b]}" = "bt" ] || [ "${bench[$b]}" = "sp"  ]  
	then
	   for (( p=2; p<5; p++ ))
     	   do
       	   	
		echo "${bench[$b]} ${class[$c]} $(($p * $p))" | tee -a suite.def
           done
	else		
		
	   for (( p=2; p<17; p*=2 ))
     	   do
		echo "${bench[$b]} ${class[$c]} $p" | tee -a suite.def
	   done
	fi
     done 
done 
