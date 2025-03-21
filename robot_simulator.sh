#!/bin/Bash

comm=$@

for i in ${#comm}
do
	firstchar=`echo $comm | cut -c$i`
	echo "$firstchar"
	#cut -c${i} $comm
done

echo "$comm"
