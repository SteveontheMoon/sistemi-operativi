#!/bin/bash

var0=0
LIMITE=10

while [ "$var0" -lt "$LIMITE" ]
do
	echo -n "$var0" # -n serve per sopprimere ritorno a capo

	var0=`expr $var0 + 1`
done
echo 
exit
