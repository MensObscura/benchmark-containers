#!/bin/sh
#configuration
class=(S W A B C D E)
bench=(bt cg dt ep ft is lu mg sp)
proc=$1



if [[ ! -n ${proc//[0-9]/} ]] && [ $proc != "" ] 
then

#limit for bench using square nb prc.
cmdsub="scale=0;sqrt($proc)"
squareProc=`echo $cmdsub | bc`     

#bench loop 
for (( b=0; b<${#bench[*]}; b++ ))
do

     #class loop
     for (( c=0; c<${#class[*]}; c++ ))
     do
     
	
	 	 
	if [  "${bench[$b]}" = "bt" ] || [ "${bench[$b]}" = "sp"  ]  
	then
		
	   #Square proc loop
	   for (( p=1; p<= $squareProc; p++ ))
     	   do
       	   	if [ ! "${class[$c]}" = "S" ] || [ $p -le 4 ] 
       	   	then
			echo "${bench[$b]} ${class[$c]} $(($p * $p))" | tee -a suite.def
		else
			echo "=== Class S cannot accept more than 16 proc, for class bt and sp ==="
		fi
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

else
    echo "$proc is not an integer, PROC_NB must be an integer."
fi
