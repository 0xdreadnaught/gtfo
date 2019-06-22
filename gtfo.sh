#!/bin/bash
binaries=($(cat ./binaries.txt))
gtfobins=($(curl -k -s https://gtfobins.github.io | grep "<li>" | awk '{print $2}' | sed 's@href="/gtfobins/@@g' | sed s'@</a></li>@@g' | sed s'/>/ /g' | sed 's/"//g' | sed 's@/#@:@g' | awk '{print $1}'))
for binary in "${binaries[@]}"
do
	for gtfobin in "${gtfobins[@]}"
	do
		if [[ "$gtfobin" == "$binary:"* ]]; then
			echo "$gtfobin"
		fi
	done
done
