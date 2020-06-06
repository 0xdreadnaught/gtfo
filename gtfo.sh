#!/bin/bash
#
# gtfo.sh
#
# Check gtfobins for privesc opportunities
# Version: 2.1

if [ $# -ne 1 ]; then
    echo "ERROR: List of binaries required"
	echo "USAGE: $0 <file>"
	exit 1
fi

binfile=$1
results=()
binaries=($(cat ${binfile}))
gtfobins=($(curl -k -s https://gtfobins.github.io | grep "<li>" | awk '{print $2}' | sed 's@href="/gtfobins/@@g' | sed s'@</a></li>@@g' | sed s'/>/ /g' | sed 's/"//g' | sed 's@/#@:@g' | awk '{print $1}'))
for binary in "${binaries[@]}"
do
	bin=$(basename ${binary})
	for gtfobin in "${gtfobins[@]}"
	do
		if [[ "$gtfobin" == "$bin:"* ]]; then
			results+=($gtfobin)
		fi
	done
done

echo "${results[*]}" | tr " " "\n" | sort
