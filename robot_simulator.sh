#Write a robot simulator.

#A robot factory's test facility needs a program to verify robot movements.

#The robots have three possible movements:

#turn right
#turn left
#advance
#Robots are placed on a hypothetical infinite grid, facing a particular direction (north, east, south, or west) at a set of {x,y} coordinates, e.g., {3,8}, with coordinates increasing to the north and east.

#The robot then receives a number of instructions, at which point the testing facility verifies the robot's new position, and in which direction it is pointing.

#The letter-string "RAALAL" means:
#Turn right
#Advance twice
#Turn left
#Advance once
#Turn left yet again
#Say a robot starts at {7, 3} facing north. Then running this stream of instructions should leave it at {9, 4} facing west.


#!/bin/Bash

comm=$@

len=${#comm}
echo "$len"

x=0
y=0

for((i=1;i<=len;i++))
do
	#echo "$i"
	firstchar=`echo "$comm" | cut -c${i}`
	case $firstchar in
		A) 
		#echo "advance"
		((y++));;
		R) echo "right"
		((x++));;
		L) echo "left"
		((x--));;
	esac
	#echo "$firstchar"
	#cut -c${i} $comm
done

echo "$comm x : $x  y : $y"
