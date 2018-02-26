#!/bin/bash

while :
do
	if [[ -f "/tmp/ls.file" ]]; then
		cat /tmp/ls.file 2>/dev/null
		break
	fi
done
