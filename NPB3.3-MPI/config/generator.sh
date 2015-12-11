echo "==================Ecriture suite def=================="
#configuration
class=(S W A B C D E)
bench=(bt cg dt ep ft is lu mg sp)
proc=16
#limit for bench using square nb prc.
squareProc=`echo 'scale=0;sqrt(16)' | bc`

#bench loop 
for (( b=0; b<${#bench[*]}; b++ ))
do

     #class loop
     for (( c=0; c<${#class[*]}; c++ ))
     do
     
	
	 	 
	if [  "${bench[$b]}" = "bt" ] || [ "${bench[$b]}" = "sp"  ]  
	then
	   #Square proc loop
	   for (( p=1; p<=$squareProc; p++ ))
     	   do
       	   	
		echo "${bench[$b]} ${class[$c]} $(($p * $p))" | tee -a suite.def
           done
	else		
	   # Pow 2 proc loop
	   for (( p=1; p<= $proc ; p*=2 ))
     	   do
     	   	if  [ "${bench[$b]}" = "dt" ] && [ "${class[$c]}" = "E" ]  || [ "${bench[$b]}" = "is"  ] && [ "${class[$c]}" = "E" ]
     	   	then
     	   	  echo "=== Bench dt and is dont support class E ==="
     	   	else
     	   	  if ( [ "${bench[$b]}" = "dt" ] && [ "${class[$c]}" = "C" ] ) || ( [ "${bench[$b]}" = "dt" ] && [ "${class[$c]}" = "D" ] )
     	   	  then
     	   	   echo "=== Classes C and D are defined, but verification numbers are not provided in this release for the Bench dt ==="
     	   	  else
     	   	   if [ "${bench[$b]}" = "is"  ]  && [ "${class[$c]}" = "D" ] && ( [ "$p" = "1" ] || [ "$p" = "2" ] )
     	   		then
     	   		  echo "=== Bench is, dont support less than 4 proc, on class D. ==="
     	   		else
     	   		  #Writing the bench to build
     	   	 	  echo "${bench[$b]} ${class[$c]} $p" | tee -a suite.def
     	   	 	fi
		   fi
		fi  
	   done
	fi
     done 
done  
