echo "==================Ecriture suite def=================="
class=(S W A B C D E)
bench=(bt cg dt ep ft is lu mg sp)

for (( b=0; b<9; b++ ))
do


     for (( c=0; c<7; c++ ))
     do
     
	if [ "${bench[$b]}" = "dt" ] && [ "${class[$c]}" = "E" ]  || [ "${bench[$b]}" = "is"  ] && [ "${class[$c]}" = "E" ]
     	   	then
     	   	  echo "=== Bench dt and is dont support class E ==="
     	   	else     
     	   		if [ "${bench[$b]}" = "is"  ]  && [ "${class[$c]}" = "D" ]
     	   		then
     	   		 echo "=== Bench is, dont support less than 4 proc, on class D. ==="
     	   		else
     	   		 if ( [ "${bench[$b]}" = "dt" ] && [ "${class[$c]}" = "C" ] ) || ( [ "${bench[$b]}" = "dt" ] && [ "${class[$c]}" = "D" ] ) 
     	   		 then
     	   		 echo "=== Classes C and D are defined, but verification numbers are not provided in this release for the Bench dt ==="
     	   		 else
	 		  echo "${bench[$b]} ${class[$c]} 1" | tee -a suite.def
	 		 fi
	 		
	 		fi
	 	fi
	 	 
	if [  "${bench[$b]}" = "bt" ] || [ "${bench[$b]}" = "sp"  ]  
	then
	   for (( p=2; p<5; p++ ))
     	   do
       	   	
		echo "${bench[$b]} ${class[$c]} $(($p * $p))" | tee -a suite.def
           done
	else		
		
	   for (( p=2; p<17; p*=2 ))
     	   do
     	   	if  [ "${bench[$b]}" = "dt" ] && [ "${class[$c]}" = "E" ]  || [ "${bench[$b]}" = "is"  ] && [ "${class[$c]}" = "E" ]
     	   	then
     	   	  echo "=== Bench dt and is dont support class E ==="
     	   	else
     	   	  if ( [ "${bench[$b]}" = "dt" ] && [ "${class[$c]}" = "C" ] ) || ( [ "${bench[$b]}" = "dt" ] && [ "${class[$c]}" = "D" ] )
     	   	  then
     	   	   echo "=== Classes C and D are defined, but verification numbers are not provided in this release for the Bench dt ==="
     	   	  else
     	   	   if [ "${bench[$b]}" = "is"  ]  && [ "${class[$c]}" = "D" ] && [ "$p" = "2" ]
     	   		then
     	   		  echo "=== Bench is, dont support less than 4 proc, on class D. ==="
     	   		else
     	   	 	  echo "${bench[$b]} ${class[$c]} $p" | tee -a suite.def
     	   	 	fi
		   fi
		fi  
	   done
	fi
     done 
done 
