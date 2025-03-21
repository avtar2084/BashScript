#!/bin/Bash

comm=$@

len=${#comm}
echo "$len"

for((i=1;i<=len;i++))
do
	#echo "$i"
	firstchar=`echo "$comm" | cut -c${i}`
	case $firstchar in
		A) echo "advance";;
		R) echo "right";;
		L) echo "left";;
	esac
	#echo "$firstchar"
	#cut -c${i} $comm
done

echo "$comm"
