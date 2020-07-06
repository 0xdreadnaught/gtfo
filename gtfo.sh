#!/bin/bash
#
# gtfo.sh
#
# Check gtfobins for privesc opportunities
# Version: 2.3

GREEN='\033[0;32m'
NC='\033[0m'

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
			binary=$(echo "$gtfobin" | sed 's/:/ /g' | awk '{print $1}')
			results+="${GREEN}$gtfobin${NC} - https://gtfobins.github.io/gtfobins/$binary/\n"
		fi
	done
done

printf "${results[*]}" | sort | tail -n +2
