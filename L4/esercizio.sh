#!/bin/bash

if echo "Il prossimo *if* e' parte del costrutto del primo *if*"
	if [[ $confronto = "intero" ]]
		then (( a < b ))
	else
		[[ $a < $b ]]
	fi
then
	echo '$a inferiore a $b'
fi
