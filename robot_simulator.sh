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
		A) echo "advance"
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
