#!/bin/Bash

#Author: Avtar Singh
#Version: 0.1

#This script checks the connection to host and stores its output

Host_name="google.com"
Output_file="/workspaces/BashScript/output/output.txt"

#check of the output folder exist
if [ ! -d output ]; then 
    mkdir output
fi


#to check if the output.txt file exist. If it does not then create file
if [[ ! -f $Output_file ]];
then
	touch output.txt
fi

#ping to the host
if ping -c 1 $Host_name &> /dev/null
then
	echo "connection established + $date" >> $Output_file
else
	echo "connection failed  + $date" >> $Output_file
fi

