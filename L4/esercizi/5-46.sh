#!/bin/bash
#Contare le righe di un sorgente passato come argomento senza considerare i commenti (con '#')

if [[ $# == 0 || $# > 2 ]]
then
	echo "No input given..."
	exit
else
	n=$(grep -v '#' $1 | wc -l)
	echo "Totale parole $n"
fi
