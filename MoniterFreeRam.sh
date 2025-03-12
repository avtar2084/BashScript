#!/bin/bash
  
current=$(free -mt | grep "Mem"| awk '{print $4}')
#echo "$current"
Th=500

if [[ $current -lt $Th ]]
then
	echo "Momory Low Alert. Current Ram: $current"
else
	echo "Ram : $current"
fi

